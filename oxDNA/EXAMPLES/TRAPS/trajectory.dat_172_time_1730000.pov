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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<37.244019, 53.663288, 49.597630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237259, 53.460415, 49.942299>,  <37.233204, 53.338692, 50.149101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237259, 53.460415, 49.942299>,  <37.244019, 53.663288, 49.597630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237259, 53.460415, 49.942299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671486, 0.632774, 0.385620,
		-0.740824, 0.585117, 0.329875,
		-0.016897, -0.507183, 0.861673,
		37.232189, 53.308258, 50.200802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120544, 54.138744, 50.247822>,  <37.244019, 53.663288, 49.597630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120544, 54.138744, 50.247822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336182, 53.804962, 50.293526>,  <37.465565, 53.604691, 50.320950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336182, 53.804962, 50.293526>,  <37.120544, 54.138744, 50.247822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336182, 53.804962, 50.293526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766798, 0.542388, 0.343274,
		-0.348423, -0.097441, 0.932259,
		0.539095, -0.834458, 0.114262,
		37.497910, 53.554626, 50.327805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239727, 54.055351, 50.912956>,  <37.120544, 54.138744, 50.247822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239727, 54.055351, 50.912956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525539, 53.903915, 50.677628>,  <37.697025, 53.813053, 50.536430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525539, 53.903915, 50.677628>,  <37.239727, 54.055351, 50.912956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525539, 53.903915, 50.677628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663110, 0.634552, 0.397025,
		0.223013, -0.673808, 0.704449,
		0.714528, -0.378586, -0.588322,
		37.739899, 53.790340, 50.501133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885841, 53.881809, 51.313484>,  <37.239727, 54.055351, 50.912956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885841, 53.881809, 51.313484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989319, 53.965271, 50.936222>,  <38.051407, 54.015347, 50.709866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989319, 53.965271, 50.936222>,  <37.885841, 53.881809, 51.313484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989319, 53.965271, 50.936222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593767, 0.735799, 0.325639,
		0.761918, -0.644255, 0.066454,
		0.258691, 0.208652, -0.943156,
		38.066925, 54.027866, 50.653275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438030, 54.270771, 51.395607>,  <37.885841, 53.881809, 51.313484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438030, 54.270771, 51.395607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331036, 54.392078, 51.029770>,  <38.266838, 54.464863, 50.810268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331036, 54.392078, 51.029770>,  <38.438030, 54.270771, 51.395607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331036, 54.392078, 51.029770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487322, 0.861416, 0.143109,
		0.831246, -0.407421, -0.378205,
		-0.267486, 0.303266, -0.914593,
		38.250790, 54.483059, 50.755390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812778, 54.950516, 51.186226>,  <38.438030, 54.270771, 51.395607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812778, 54.950516, 51.186226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840591, 55.176769, 51.514915>,  <38.857281, 55.312519, 51.712128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840591, 55.176769, 51.514915>,  <38.812778, 54.950516, 51.186226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840591, 55.176769, 51.514915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388964, -0.743150, 0.544459,
		0.918625, -0.357479, 0.168335,
		0.069534, 0.565630, 0.821723,
		38.861450, 55.346458, 51.761433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356461, 54.699875, 51.692944>,  <38.812778, 54.950516, 51.186226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356461, 54.699875, 51.692944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021481, 54.866264, 51.834724>,  <38.820492, 54.966099, 51.919792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021481, 54.866264, 51.834724>,  <39.356461, 54.699875, 51.692944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021481, 54.866264, 51.834724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216979, -0.848348, 0.482934,
		0.501587, 0.327526, 0.800710,
		-0.837455, 0.415971, 0.354455,
		38.770245, 54.991055, 51.941059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404148, 54.634354, 52.438931>,  <39.356461, 54.699875, 51.692944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404148, 54.634354, 52.438931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037811, 54.606049, 52.280830>,  <38.818008, 54.589066, 52.185970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037811, 54.606049, 52.280830>,  <39.404148, 54.634354, 52.438931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037811, 54.606049, 52.280830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181638, -0.804871, 0.564970,
		-0.358105, 0.589216, 0.724283,
		-0.915843, -0.070761, -0.395252,
		38.763058, 54.584820, 52.162254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131828, 54.624386, 52.107864>,  <39.404148, 54.634354, 52.438931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131828, 54.624386, 52.107864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013897, 54.757702, 51.749649>,  <39.943138, 54.837692, 51.534718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013897, 54.757702, 51.749649>,  <40.131828, 54.624386, 52.107864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013897, 54.757702, 51.749649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126004, -0.915455, -0.382185,
		-0.947205, -0.225522, 0.227909,
		-0.294832, 0.333290, -0.895540,
		39.925446, 54.857689, 51.480988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699966, 55.031311, 52.461105>,  <40.131828, 54.624386, 52.107864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699966, 55.031311, 52.461105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583599, 54.859673, 52.803154>,  <40.513779, 54.756687, 53.008385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583599, 54.859673, 52.803154>,  <40.699966, 55.031311, 52.461105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583599, 54.859673, 52.803154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910418, 0.150603, 0.385302,
		-0.294118, 0.890613, 0.346848,
		-0.290919, -0.429101, 0.855125,
		40.496323, 54.730942, 53.059692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953651, 55.091389, 51.697708>,  <40.699966, 55.031311, 52.461105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953651, 55.091389, 51.697708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857632, 55.384193, 51.442665>,  <40.800022, 55.559875, 51.289639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857632, 55.384193, 51.442665>,  <40.953651, 55.091389, 51.697708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857632, 55.384193, 51.442665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829310, 0.496043, 0.257267,
		0.504602, -0.467017, -0.726135,
		-0.240046, 0.732009, -0.637606,
		40.785618, 55.603798, 51.251385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414238, 55.070778, 51.145954>,  <40.953651, 55.091389, 51.697708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414238, 55.070778, 51.145954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270966, 55.437946, 51.214226>,  <41.185001, 55.658249, 51.255188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270966, 55.437946, 51.214226>,  <41.414238, 55.070778, 51.145954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270966, 55.437946, 51.214226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931992, 0.362418, 0.006721,
		-0.055688, 0.161478, -0.985304,
		-0.358177, 0.917921, 0.170678,
		41.163513, 55.713322, 51.265430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995319, 54.781582, 51.326988>,  <41.414238, 55.070778, 51.145954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995319, 54.781582, 51.326988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914589, 54.691631, 50.945686>,  <41.866150, 54.637661, 50.716904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914589, 54.691631, 50.945686>,  <41.995319, 54.781582, 51.326988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914589, 54.691631, 50.945686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519097, 0.849901, -0.090587,
		0.830545, 0.476550, -0.288262,
		-0.201825, -0.224873, -0.953257,
		41.854042, 54.624168, 50.659710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191940, 55.257854, 50.878597>,  <41.995319, 54.781582, 51.326988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191940, 55.257854, 50.878597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876637, 55.109241, 50.682392>,  <41.687454, 55.020073, 50.564671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876637, 55.109241, 50.682392>,  <42.191940, 55.257854, 50.878597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876637, 55.109241, 50.682392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367335, 0.923645, -0.109293,
		0.493666, 0.094031, -0.864553,
		-0.788263, -0.371535, -0.490513,
		41.640156, 54.997780, 50.535236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785381, 54.743092, 50.932186>,  <42.191940, 55.257854, 50.878597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785381, 54.743092, 50.932186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901569, 54.406326, 51.114090>,  <42.971283, 54.204266, 51.223232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901569, 54.406326, 51.114090>,  <42.785381, 54.743092, 50.932186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901569, 54.406326, 51.114090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397257, -0.326257, -0.857755,
		0.870526, 0.429808, 0.239689,
		0.290469, -0.841915, 0.454759,
		42.988708, 54.153751, 51.250519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534698, 54.631824, 51.077320>,  <42.785381, 54.743092, 50.932186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534698, 54.631824, 51.077320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417931, 54.250027, 51.052887>,  <43.347870, 54.020950, 51.038227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417931, 54.250027, 51.052887>,  <43.534698, 54.631824, 51.077320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417931, 54.250027, 51.052887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583888, -0.127262, -0.801798,
		0.757534, -0.269727, 0.594465,
		-0.291919, -0.954490, -0.061085,
		43.330357, 53.963680, 51.034561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.180912, 54.230469, 51.026741>,  <43.534698, 54.631824, 51.077320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.180912, 54.230469, 51.026741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866253, 54.045475, 50.863136>,  <43.677456, 53.934479, 50.764973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866253, 54.045475, 50.863136>,  <44.180912, 54.230469, 51.026741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866253, 54.045475, 50.863136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552053, -0.230267, -0.801383,
		0.276442, -0.856206, 0.436454,
		-0.786649, -0.462482, -0.409016,
		43.630257, 53.906731, 50.740433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261822, 53.836250, 51.686886>,  <44.180912, 54.230469, 51.026741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261822, 53.836250, 51.686886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659039, 53.870979, 51.655083>,  <44.897369, 53.891819, 51.636002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659039, 53.870979, 51.655083>,  <44.261822, 53.836250, 51.686886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659039, 53.870979, 51.655083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104209, -0.334012, 0.936790,
		0.054780, -0.938561, -0.340737,
		0.993046, 0.086825, -0.079510,
		44.956951, 53.897026, 51.631229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657063, 53.328423, 52.168011>,  <44.261822, 53.836250, 51.686886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657063, 53.328423, 52.168011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.921337, 53.620518, 52.098442>,  <45.079903, 53.795776, 52.056702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.921337, 53.620518, 52.098442>,  <44.657063, 53.328423, 52.168011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921337, 53.620518, 52.098442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343568, -0.088161, 0.934981,
		0.667426, -0.677481, -0.309133,
		0.660685, 0.730238, -0.173920,
		45.119541, 53.839588, 52.046265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208179, 53.225796, 52.630890>,  <44.657063, 53.328423, 52.168011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208179, 53.225796, 52.630890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239624, 53.612354, 52.532990>,  <45.258492, 53.844288, 52.474247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239624, 53.612354, 52.532990>,  <45.208179, 53.225796, 52.630890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239624, 53.612354, 52.532990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372460, 0.199263, 0.906404,
		0.924713, -0.162417, -0.344278,
		0.078613, 0.966393, -0.244755,
		45.263206, 53.902271, 52.459564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961636, 53.408180, 52.640911>,  <45.208179, 53.225796, 52.630890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961636, 53.408180, 52.640911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698540, 53.698235, 52.722454>,  <45.540684, 53.872269, 52.771381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698540, 53.698235, 52.722454>,  <45.961636, 53.408180, 52.640911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698540, 53.698235, 52.722454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461665, 0.174238, 0.869774,
		0.595184, 0.666198, -0.449373,
		-0.657739, 0.725136, 0.203857,
		45.501217, 53.915775, 52.783611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268829, 54.152946, 52.665661>,  <45.961636, 53.408180, 52.640911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.268829, 54.152946, 52.665661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961220, 54.070587, 52.907719>,  <45.776653, 54.021172, 53.052956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961220, 54.070587, 52.907719>,  <46.268829, 54.152946, 52.665661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.961220, 54.070587, 52.907719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591753, 0.128678, 0.795783,
		-0.241721, 0.970076, 0.022885,
		-0.769025, -0.205900, 0.605149,
		45.730511, 54.008816, 53.089264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.294498, 54.726231, 53.150867>,  <46.268829, 54.152946, 52.665661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.294498, 54.726231, 53.150867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121891, 54.395809, 53.295876>,  <46.018326, 54.197556, 53.382881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121891, 54.395809, 53.295876>,  <46.294498, 54.726231, 53.150867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.121891, 54.395809, 53.295876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670413, -0.024770, 0.741575,
		-0.603601, 0.563046, 0.564486,
		-0.431523, -0.826054, 0.362522,
		45.992435, 54.147991, 53.404633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.136040, 54.908699, 53.881523>,  <46.294498, 54.726231, 53.150867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.136040, 54.908699, 53.881523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174004, 54.517143, 53.809113>,  <46.196781, 54.282211, 53.765667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174004, 54.517143, 53.809113>,  <46.136040, 54.908699, 53.881523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.174004, 54.517143, 53.809113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756837, -0.047179, 0.651898,
		-0.646676, -0.198882, 0.736381,
		0.094909, -0.978887, -0.181030,
		46.202477, 54.223476, 53.754803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124165, 54.526352, 54.600124>,  <46.136040, 54.908699, 53.881523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124165, 54.526352, 54.600124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308811, 54.304031, 54.323574>,  <46.419598, 54.170639, 54.157646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308811, 54.304031, 54.323574>,  <46.124165, 54.526352, 54.600124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308811, 54.304031, 54.323574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798990, -0.078098, 0.596251,
		-0.385394, -0.827636, 0.408032,
		0.461612, -0.555805, -0.691372,
		46.447296, 54.137291, 54.116161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.439308, 54.700424, 55.309082>,  <46.124165, 54.526352, 54.600124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.439308, 54.700424, 55.309082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087593, 54.890808, 55.316139>,  <45.876564, 55.005039, 55.320374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087593, 54.890808, 55.316139>,  <46.439308, 54.700424, 55.309082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.087593, 54.890808, 55.316139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326990, -0.576324, -0.748951,
		-0.346299, -0.664317, 0.662390,
		-0.879292, 0.475956, 0.017645,
		45.823807, 55.033596, 55.321434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.411972, 53.951199, 55.523224>,  <46.439308, 54.700424, 55.309082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.411972, 53.951199, 55.523224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586216, 53.612499, 55.401070>,  <46.690762, 53.409279, 55.327778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586216, 53.612499, 55.401070>,  <46.411972, 53.951199, 55.523224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.586216, 53.612499, 55.401070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900052, 0.414339, 0.135020,
		0.012206, -0.333680, 0.942607,
		0.435612, -0.846747, -0.305387,
		46.716900, 53.358475, 55.309452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.847195, 53.609318, 56.052189>,  <46.411972, 53.951199, 55.523224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.847195, 53.609318, 56.052189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.962322, 53.519775, 55.679726>,  <47.031399, 53.466049, 55.456249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.962322, 53.519775, 55.679726>,  <46.847195, 53.609318, 56.052189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.962322, 53.519775, 55.679726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904642, 0.382644, 0.187635,
		0.314298, -0.896366, 0.312640,
		0.287819, -0.223854, -0.931155,
		47.048668, 53.452618, 55.400379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.261375, 53.478012, 56.654133>,  <46.847195, 53.609318, 56.052189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.261375, 53.478012, 56.654133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.399689, 53.222023, 56.379654>,  <47.482677, 53.068432, 56.214966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.399689, 53.222023, 56.379654>,  <47.261375, 53.478012, 56.654133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.399689, 53.222023, 56.379654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932643, 0.154134, 0.326221,
		-0.103005, -0.752782, 0.650161,
		0.345786, -0.639970, -0.686200,
		47.503426, 53.030033, 56.173794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.723774, 52.953148, 56.963158>,  <47.261375, 53.478012, 56.654133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.723774, 52.953148, 56.963158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.801743, 53.057156, 56.584869>,  <47.848526, 53.119560, 56.357895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.801743, 53.057156, 56.584869>,  <47.723774, 52.953148, 56.963158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.801743, 53.057156, 56.584869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953795, 0.174523, 0.244573,
		0.228645, -0.949700, -0.213989,
		0.194925, 0.260022, -0.945723,
		47.860222, 53.135162, 56.301151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.523819, 52.905716, 57.041443>,  <47.723774, 52.953148, 56.963158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.523819, 52.905716, 57.041443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.659870, 52.765396, 56.692444>,  <48.741501, 52.681202, 56.483044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.659870, 52.765396, 56.692444>,  <48.523819, 52.905716, 57.041443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.659870, 52.765396, 56.692444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821703, 0.562053, 0.094342,
		0.457295, -0.749022, 0.479424,
		0.340127, -0.350802, -0.872497,
		48.761909, 52.660156, 56.430695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.281620, 52.570400, 57.079544>,  <48.523819, 52.905716, 57.041443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.281620, 52.570400, 57.079544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.181046, 52.740891, 56.731956>,  <49.120701, 52.843185, 56.523403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.181046, 52.740891, 56.731956>,  <49.281620, 52.570400, 57.079544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.181046, 52.740891, 56.731956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780924, 0.619734, 0.078015,
		0.571783, -0.658984, -0.488676,
		-0.251438, 0.426227, -0.868971,
		49.105614, 52.868759, 56.471264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.920769, 52.480598, 56.649704>,  <49.281620, 52.570400, 57.079544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.920769, 52.480598, 56.649704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.669151, 52.789860, 56.617355>,  <49.518181, 52.975418, 56.597946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.669151, 52.789860, 56.617355>,  <49.920769, 52.480598, 56.649704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.669151, 52.789860, 56.617355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769382, 0.634077, 0.077437,
		0.111150, -0.013511, -0.993712,
		-0.629044, 0.773152, -0.080873,
		49.480438, 53.021805, 56.593094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.167141, 53.114300, 56.266426>,  <49.920769, 52.480598, 56.649704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.167141, 53.114300, 56.266426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.872124, 53.267509, 56.488892>,  <49.695114, 53.359436, 56.622372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.872124, 53.267509, 56.488892>,  <50.167141, 53.114300, 56.266426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.872124, 53.267509, 56.488892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662102, 0.572193, 0.483958,
		-0.132866, 0.725179, -0.675620,
		-0.737541, 0.383028, 0.556168,
		49.650860, 53.382420, 56.655743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.343536, 53.859421, 56.375168>,  <50.167141, 53.114300, 56.266426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.343536, 53.859421, 56.375168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.139847, 53.697472, 56.678947>,  <50.017632, 53.600300, 56.861214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.139847, 53.697472, 56.678947>,  <50.343536, 53.859421, 56.375168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.139847, 53.697472, 56.678947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639834, 0.412067, 0.648701,
		-0.575589, 0.816257, 0.049219,
		-0.509225, -0.404877, 0.759450,
		49.987080, 53.576008, 56.906784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.044689, 54.359112, 56.797592>,  <50.343536, 53.859421, 56.375168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.044689, 54.359112, 56.797592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.108845, 54.048141, 57.040863>,  <50.147339, 53.861557, 57.186825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.108845, 54.048141, 57.040863>,  <50.044689, 54.359112, 56.797592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.108845, 54.048141, 57.040863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585906, 0.570847, 0.575193,
		-0.794348, 0.264080, 0.547058,
		0.160390, -0.777429, 0.608178,
		50.156963, 53.814915, 57.223316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.289379, 54.233551, 57.556557>,  <50.044689, 54.359112, 56.797592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.289379, 54.233551, 57.556557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.986923, 54.345360, 57.793243>,  <49.805450, 54.412445, 57.935253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.986923, 54.345360, 57.793243>,  <50.289379, 54.233551, 57.556557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.986923, 54.345360, 57.793243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648050, 0.445608, 0.617628,
		-0.091035, 0.850472, -0.518082,
		-0.756137, 0.279518, 0.591715,
		49.760082, 54.429214, 57.970757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.410187, 55.090992, 57.696201>,  <50.289379, 54.233551, 57.556557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.410187, 55.090992, 57.696201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.249706, 54.832939, 57.956306>,  <50.153419, 54.678108, 58.112370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.249706, 54.832939, 57.956306>,  <50.410187, 55.090992, 57.696201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.249706, 54.832939, 57.956306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622265, 0.328993, 0.710317,
		-0.672181, 0.689614, 0.269452,
		-0.401197, -0.645132, 0.650266,
		50.129349, 54.639400, 58.151386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.057041, 55.492023, 58.229679>,  <50.410187, 55.090992, 57.696201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.057041, 55.492023, 58.229679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.242508, 55.138424, 58.253525>,  <50.353786, 54.926262, 58.267830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.242508, 55.138424, 58.253525>,  <50.057041, 55.492023, 58.229679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.242508, 55.138424, 58.253525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741596, 0.424025, 0.519845,
		-0.484821, -0.196827, 0.852178,
		0.463665, -0.884003, 0.059610,
		50.381607, 54.873222, 58.271408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.395412, 55.437229, 58.864979>,  <50.057041, 55.492023, 58.229679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.395412, 55.437229, 58.864979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.592144, 55.170235, 58.641350>,  <50.710182, 55.010036, 58.507172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.592144, 55.170235, 58.641350>,  <50.395412, 55.437229, 58.864979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.592144, 55.170235, 58.641350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845647, 0.213301, 0.489270,
		-0.207330, -0.713418, 0.669365,
		0.491830, -0.667486, -0.559076,
		50.739693, 54.969990, 58.473629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.879051, 54.907768, 59.280609>,  <50.395412, 55.437229, 58.864979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.879051, 54.907768, 59.280609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.023773, 54.949959, 58.910103>,  <51.110607, 54.975273, 58.687798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.023773, 54.949959, 58.910103>,  <50.879051, 54.907768, 59.280609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.023773, 54.949959, 58.910103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847025, 0.377843, 0.373876,
		0.389420, -0.919841, 0.047360,
		0.361801, 0.105480, -0.926269,
		51.132313, 54.981602, 58.632221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.670773, 54.659077, 59.180546>,  <50.879051, 54.907768, 59.280609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.670773, 54.659077, 59.180546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.555073, 54.960407, 58.944298>,  <51.485653, 55.141205, 58.802547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.555073, 54.960407, 58.944298>,  <51.670773, 54.659077, 59.180546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.555073, 54.960407, 58.944298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674178, 0.598332, 0.432993,
		0.679572, -0.272938, -0.680946,
		-0.289251, 0.753328, -0.590618,
		51.468296, 55.186405, 58.767113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.224876, 54.748772, 58.738934>,  <51.670773, 54.659077, 59.180546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.224876, 54.748772, 58.738934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.003181, 55.075016, 58.805374>,  <51.870163, 55.270763, 58.845238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.003181, 55.075016, 58.805374>,  <52.224876, 54.748772, 58.738934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.003181, 55.075016, 58.805374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779254, 0.438309, 0.447938,
		0.292542, 0.377699, -0.878500,
		-0.554240, 0.815615, 0.166100,
		51.836910, 55.319702, 58.855206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.812855, 54.430550, 58.820744>,  <52.224876, 54.748772, 58.738934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.812855, 54.430550, 58.820744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.769413, 54.822884, 58.756035>,  <52.743347, 55.058285, 58.717209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.769413, 54.822884, 58.756035>,  <52.812855, 54.430550, 58.820744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.769413, 54.822884, 58.756035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144994, 0.176627, 0.973540,
		0.983454, 0.082274, -0.161397,
		-0.108604, 0.980833, -0.161775,
		52.736832, 55.117134, 58.707500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.393753, 54.688782, 59.177521>,  <52.812855, 54.430550, 58.820744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.393753, 54.688782, 59.177521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.619949, 54.635738, 58.851913>,  <53.755669, 54.603912, 58.656548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.619949, 54.635738, 58.851913>,  <53.393753, 54.688782, 59.177521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.619949, 54.635738, 58.851913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692318, -0.460082, 0.555895,
		-0.448226, -0.877919, -0.168377,
		0.565498, -0.132597, -0.814021,
		53.789597, 54.595959, 58.607708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.501492, 53.983311, 59.066872>,  <53.393753, 54.688782, 59.177521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.501492, 53.983311, 59.066872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.827610, 54.175236, 58.937210>,  <54.023281, 54.290390, 58.859413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.827610, 54.175236, 58.937210>,  <53.501492, 53.983311, 59.066872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.827610, 54.175236, 58.937210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560249, -0.512183, 0.650991,
		0.146328, -0.712356, -0.686394,
		0.815297, 0.479810, -0.324150,
		54.072201, 54.319180, 58.839966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.046516, 53.543682, 59.061100>,  <53.501492, 53.983311, 59.066872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.046516, 53.543682, 59.061100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.199356, 53.912411, 59.087158>,  <54.291061, 54.133648, 59.102795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.199356, 53.912411, 59.087158>,  <54.046516, 53.543682, 59.061100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.199356, 53.912411, 59.087158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628442, -0.310888, 0.713028,
		0.677538, -0.231507, -0.698102,
		0.382102, 0.921821, 0.065149,
		54.313988, 54.188957, 59.106705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.637512, 53.451874, 59.176537>,  <54.046516, 53.543682, 59.061100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.637512, 53.451874, 59.176537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.583412, 53.825230, 59.309502>,  <54.550953, 54.049244, 59.389278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.583412, 53.825230, 59.309502>,  <54.637512, 53.451874, 59.176537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.583412, 53.825230, 59.309502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564032, -0.203295, 0.800337,
		0.814601, 0.295738, -0.498964,
		-0.135253, 0.933387, 0.332410,
		54.542835, 54.105247, 59.409225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.370342, 52.792904, 59.081059>,  <54.637512, 53.451874, 59.176537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.370342, 52.792904, 59.081059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.652122, 52.693550, 59.347008>,  <54.821190, 52.633938, 59.506577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.652122, 52.693550, 59.347008>,  <54.370342, 52.792904, 59.081059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.652122, 52.693550, 59.347008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412757, -0.618700, -0.668463,
		0.577391, 0.745329, -0.333323,
		0.704452, -0.248383, 0.664871,
		54.863457, 52.619034, 59.546471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.936581, 52.869030, 58.689194>,  <54.370342, 52.792904, 59.081059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.936581, 52.869030, 58.689194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.033554, 52.614441, 58.982079>,  <55.091740, 52.461689, 59.157810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.033554, 52.614441, 58.982079>,  <54.936581, 52.869030, 58.689194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.033554, 52.614441, 58.982079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433236, -0.604269, -0.668705,
		0.868063, 0.479335, 0.129248,
		0.242433, -0.636472, 0.732208,
		55.106285, 52.423500, 59.201740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.629333, 52.663227, 58.778820>,  <54.936581, 52.869030, 58.689194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.629333, 52.663227, 58.778820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.457176, 52.338631, 58.936935>,  <55.353882, 52.143875, 59.031803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.457176, 52.338631, 58.936935>,  <55.629333, 52.663227, 58.778820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.457176, 52.338631, 58.936935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547921, -0.582883, -0.600026,
		0.717319, -0.041659, 0.695498,
		-0.430390, -0.811488, 0.395287,
		55.328060, 52.095184, 59.055523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.184414, 53.058754, 58.352673>,  <55.629333, 52.663227, 58.778820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.184414, 53.058754, 58.352673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.249184, 52.726898, 58.566391>,  <56.288048, 52.527782, 58.694622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.249184, 52.726898, 58.566391>,  <56.184414, 53.058754, 58.352673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.249184, 52.726898, 58.566391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983823, 0.177768, -0.022132,
		-0.076619, 0.529236, 0.845008,
		0.161929, -0.829643, 0.534295,
		56.297764, 52.478004, 58.726681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.589539, 53.058052, 59.049084>,  <56.184414, 53.058754, 58.352673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.589539, 53.058052, 59.049084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.654007, 52.711658, 58.859726>,  <56.692688, 52.503822, 58.746113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.654007, 52.711658, 58.859726>,  <56.589539, 53.058052, 59.049084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.654007, 52.711658, 58.859726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985427, 0.167633, 0.028848,
		0.054375, -0.471145, 0.880378,
		0.161172, -0.865980, -0.473395,
		56.702358, 52.451866, 58.717709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.989819, 52.597504, 59.423103>,  <56.589539, 53.058052, 59.049084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.989819, 52.597504, 59.423103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.319923, 52.823353, 59.418327>,  <57.517986, 52.958862, 59.415462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.319923, 52.823353, 59.418327>,  <56.989819, 52.597504, 59.423103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.319923, 52.823353, 59.418327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563956, -0.822793, 0.070458,
		0.029960, -0.064879, -0.997443,
		0.825261, 0.564626, -0.011938,
		57.567501, 52.992741, 59.414745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.527264, 52.358643, 58.857693>,  <56.989819, 52.597504, 59.423103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.527264, 52.358643, 58.857693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.712471, 52.548752, 59.156952>,  <57.823597, 52.662819, 59.336510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.712471, 52.548752, 59.156952>,  <57.527264, 52.358643, 58.857693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.712471, 52.548752, 59.156952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744783, -0.666241, -0.037699,
		0.480531, 0.574665, -0.662457,
		0.463020, 0.475272, 0.748150,
		57.851376, 52.691334, 59.381397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.226219, 52.134624, 58.641491>,  <57.527264, 52.358643, 58.857693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.226219, 52.134624, 58.641491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.245155, 52.238598, 59.027275>,  <58.256516, 52.300983, 59.258747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.245155, 52.238598, 59.027275>,  <58.226219, 52.134624, 58.641491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.245155, 52.238598, 59.027275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771835, -0.622419, 0.129867,
		0.634058, 0.738260, -0.230093,
		0.047338, 0.259937, 0.964465,
		58.259357, 52.316578, 59.316616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.828304, 51.766933, 58.854546>,  <58.226219, 52.134624, 58.641491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.828304, 51.766933, 58.854546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.714668, 51.970413, 59.179634>,  <58.646488, 52.092499, 59.374687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.714668, 51.970413, 59.179634>,  <58.828304, 51.766933, 58.854546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.714668, 51.970413, 59.179634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741715, -0.420546, 0.522494,
		0.607579, 0.751245, -0.257834,
		-0.284090, 0.508696, 0.812724,
		58.629440, 52.123020, 59.423450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.555805, 51.907906, 59.024666>,  <58.828304, 51.766933, 58.854546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.555805, 51.907906, 59.024666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.742546, 51.989700, 59.368813>,  <59.854591, 52.038776, 59.575302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.742546, 51.989700, 59.368813>,  <59.555805, 51.907906, 59.024666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.742546, 51.989700, 59.368813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734553, 0.452075, -0.506024,
		-0.492428, 0.868224, 0.060844,
		0.466848, 0.204487, 0.860371,
		59.882599, 52.051048, 59.626923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.677784, 52.625225, 59.190102>,  <59.555805, 51.907906, 59.024666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.677784, 52.625225, 59.190102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.962349, 52.427559, 59.389984>,  <60.133087, 52.308960, 59.509914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.962349, 52.427559, 59.389984>,  <59.677784, 52.625225, 59.190102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.962349, 52.427559, 59.389984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701780, 0.461614, -0.542602,
		0.037463, 0.736693, 0.675189,
		0.711408, -0.494162, 0.499703,
		60.175770, 52.279308, 59.539894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.191387, 53.034058, 59.348545>,  <59.677784, 52.625225, 59.190102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.191387, 53.034058, 59.348545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.343193, 52.664032, 59.342468>,  <60.434277, 52.442017, 59.338821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.343193, 52.664032, 59.342468>,  <60.191387, 53.034058, 59.348545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.343193, 52.664032, 59.342468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769577, 0.324752, -0.549806,
		0.513539, 0.196966, 0.835154,
		0.379511, -0.925062, -0.015192,
		60.457047, 52.386513, 59.337910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.926819, 52.914696, 59.602127>,  <60.191387, 53.034058, 59.348545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.926819, 52.914696, 59.602127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.817467, 52.664211, 59.310066>,  <60.751854, 52.513920, 59.134830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.817467, 52.664211, 59.310066>,  <60.926819, 52.914696, 59.602127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.817467, 52.664211, 59.310066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687445, 0.403749, -0.603661,
		0.672818, -0.666968, 0.320109,
		-0.273379, -0.626211, -0.730154,
		60.735455, 52.476349, 59.091019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.473171, 52.364876, 59.323746>,  <60.926819, 52.914696, 59.602127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.473171, 52.364876, 59.323746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.219879, 52.518211, 59.054802>,  <61.067902, 52.610214, 58.893436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.219879, 52.518211, 59.054802>,  <61.473171, 52.364876, 59.323746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.219879, 52.518211, 59.054802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768236, 0.416785, -0.485905,
		0.093964, -0.824222, -0.558416,
		-0.633233, 0.383337, -0.672360,
		61.029911, 52.633213, 58.853092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.858761, 52.347271, 58.697388>,  <61.473171, 52.364876, 59.323746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.858761, 52.347271, 58.697388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.582726, 52.633942, 58.657082>,  <61.417103, 52.805943, 58.632896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.582726, 52.633942, 58.657082>,  <61.858761, 52.347271, 58.697388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.582726, 52.633942, 58.657082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650058, 0.552615, -0.521575,
		-0.318115, -0.425437, -0.847234,
		-0.690092, 0.716673, -0.100764,
		61.375698, 52.848942, 58.626854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.912533, 52.698193, 57.960190>,  <61.858761, 52.347271, 58.697388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.912533, 52.698193, 57.960190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.758171, 52.982395, 58.195564>,  <61.665554, 53.152916, 58.336788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.758171, 52.982395, 58.195564>,  <61.912533, 52.698193, 57.960190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.758171, 52.982395, 58.195564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531280, 0.692617, -0.487876,
		-0.754200, 0.124351, -0.644763,
		-0.385906, 0.710506, 0.588437,
		61.642399, 53.195545, 58.372097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.623436, 53.263748, 57.507710>,  <61.912533, 52.698193, 57.960190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.623436, 53.263748, 57.507710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.753616, 53.345676, 57.876953>,  <61.831726, 53.394833, 58.098499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.753616, 53.345676, 57.876953>,  <61.623436, 53.263748, 57.507710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.753616, 53.345676, 57.876953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488861, 0.799210, -0.349682,
		-0.809379, 0.565078, 0.159979,
		0.325455, 0.204817, 0.923108,
		61.851254, 53.407120, 58.153885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.529175, 53.932629, 57.633022>,  <61.623436, 53.263748, 57.507710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.529175, 53.932629, 57.633022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.824043, 53.828445, 57.882416>,  <62.000965, 53.765938, 58.032051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.824043, 53.828445, 57.882416>,  <61.529175, 53.932629, 57.633022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.824043, 53.828445, 57.882416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531052, 0.793861, -0.296257,
		-0.417800, 0.549497, 0.723530,
		0.737175, -0.260456, 0.623487,
		62.045197, 53.750309, 58.069462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.280888, 54.229820, 57.409603>,  <61.529175, 53.932629, 57.633022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.280888, 54.229820, 57.409603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.608490, 54.036537, 57.285835>,  <62.805050, 53.920567, 57.211575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.608490, 54.036537, 57.285835>,  <62.280888, 54.229820, 57.409603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.608490, 54.036537, 57.285835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038308, -0.584099, 0.810778,
		-0.572502, -0.652180, -0.496893,
		0.819008, -0.483207, -0.309414,
		62.854191, 53.891575, 57.193008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.751320, 54.573498, 56.948128>,  <62.280888, 54.229820, 57.409603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.751320, 54.573498, 56.948128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.052498, 54.326546, 57.039261>,  <63.233204, 54.178375, 57.093941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.052498, 54.326546, 57.039261>,  <62.751320, 54.573498, 56.948128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.052498, 54.326546, 57.039261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235650, -0.070304, -0.969292,
		0.614440, 0.783517, 0.092550,
		0.752949, -0.617381, 0.227834,
		63.278381, 54.141331, 57.107613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.446365, 54.883087, 56.832520>,  <62.751320, 54.573498, 56.948128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.446365, 54.883087, 56.832520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.487808, 54.492569, 56.756500>,  <63.512672, 54.258259, 56.710888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.487808, 54.492569, 56.756500>,  <63.446365, 54.883087, 56.832520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.487808, 54.492569, 56.756500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576814, 0.214637, -0.788173,
		0.810279, -0.027964, 0.585377,
		0.103603, -0.976293, -0.190046,
		63.518890, 54.199680, 56.699486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.974033, 54.322369, 56.861671>,  <63.446365, 54.883087, 56.832520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.974033, 54.322369, 56.861671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.865883, 54.597298, 57.131332>,  <63.800991, 54.762257, 57.293129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.865883, 54.597298, 57.131332>,  <63.974033, 54.322369, 56.861671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.865883, 54.597298, 57.131332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897707, -0.073032, 0.434498,
		0.347875, 0.722670, -0.597270,
		-0.270378, 0.687325, 0.674152,
		63.784771, 54.803493, 57.333576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.592506, 54.725739, 57.121086>,  <63.974033, 54.322369, 56.861671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.592506, 54.725739, 57.121086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.317787, 54.687016, 57.409233>,  <64.152954, 54.663784, 57.582119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.317787, 54.687016, 57.409233>,  <64.592506, 54.725739, 57.121086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.317787, 54.687016, 57.409233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721235, -0.213613, 0.658930,
		0.090092, 0.972110, 0.216530,
		-0.686807, -0.096805, 0.720365,
		64.111748, 54.657974, 57.625343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.731476, 55.127987, 57.799561>,  <64.592506, 54.725739, 57.121086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.731476, 55.127987, 57.799561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.528122, 54.788597, 57.858398>,  <64.406113, 54.584961, 57.893703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.528122, 54.788597, 57.858398>,  <64.731476, 55.127987, 57.799561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.528122, 54.788597, 57.858398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603339, -0.229071, 0.763878,
		-0.614437, 0.477089, 0.628374,
		-0.508379, -0.848477, 0.147096,
		64.375610, 54.534054, 57.902527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.353218, 55.119949, 58.442558>,  <64.731476, 55.127987, 57.799561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.353218, 55.119949, 58.442558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.464424, 54.751793, 58.332581>,  <64.531151, 54.530899, 58.266594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.464424, 54.751793, 58.332581>,  <64.353218, 55.119949, 58.442558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.464424, 54.751793, 58.332581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567683, -0.073466, 0.819963,
		-0.774882, -0.384046, 0.502064,
		0.278019, -0.920387, -0.274943,
		64.547829, 54.475677, 58.250099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.385841, 54.897121, 59.028687>,  <64.353218, 55.119949, 58.442558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.385841, 54.897121, 59.028687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.636414, 54.678535, 58.806351>,  <64.786758, 54.547382, 58.672951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.636414, 54.678535, 58.806351>,  <64.385841, 54.897121, 59.028687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.636414, 54.678535, 58.806351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608930, -0.102078, 0.786628,
		-0.486603, -0.831238, 0.268813,
		0.626436, -0.546464, -0.555838,
		64.824341, 54.514595, 58.639599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.382469, 54.258999, 59.298466>,  <64.385841, 54.897121, 59.028687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.382469, 54.258999, 59.298466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.723549, 54.349182, 59.109970>,  <64.928200, 54.403294, 58.996872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.723549, 54.349182, 59.109970>,  <64.382469, 54.258999, 59.298466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.723549, 54.349182, 59.109970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496751, -0.070782, 0.865002,
		0.161667, -0.971678, -0.172353,
		0.852703, 0.225458, -0.471239,
		64.979362, 54.416821, 58.968597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.049469, 53.952831, 59.639271>,  <64.382469, 54.258999, 59.298466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.049469, 53.952831, 59.639271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.269867, 54.244244, 59.476471>,  <65.402107, 54.419090, 59.378792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.269867, 54.244244, 59.476471>,  <65.049469, 53.952831, 59.639271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.269867, 54.244244, 59.476471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507235, 0.094899, 0.856567,
		0.662659, -0.678408, -0.317246,
		0.550996, 0.728530, -0.406998,
		65.435165, 54.462803, 59.354370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.756699, 53.883835, 59.924683>,  <65.049469, 53.952831, 59.639271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.756699, 53.883835, 59.924683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.701836, 54.252693, 59.779991>,  <65.668922, 54.474007, 59.693176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.701836, 54.252693, 59.779991>,  <65.756699, 53.883835, 59.924683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.701836, 54.252693, 59.779991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601563, 0.367659, 0.709189,
		0.786964, -0.120335, -0.605150,
		-0.137149, 0.922142, -0.361724,
		65.660690, 54.529335, 59.671474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.383080, 54.206711, 59.770565>,  <65.756699, 53.883835, 59.924683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.383080, 54.206711, 59.770565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.104233, 54.471439, 59.880859>,  <65.936928, 54.630276, 59.947037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.104233, 54.471439, 59.880859>,  <66.383080, 54.206711, 59.770565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.104233, 54.471439, 59.880859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543100, 0.236371, 0.805711,
		0.468061, 0.711422, -0.524212,
		-0.697109, 0.661822, 0.275737,
		65.895103, 54.669987, 59.963581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.663567, 54.910984, 59.862698>,  <66.383080, 54.206711, 59.770565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.663567, 54.910984, 59.862698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.366676, 54.813198, 60.112289>,  <66.188545, 54.754528, 60.262043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.366676, 54.813198, 60.112289>,  <66.663567, 54.910984, 59.862698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.366676, 54.813198, 60.112289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543491, 0.325161, 0.773878,
		-0.392078, 0.913514, -0.108477,
		-0.742221, -0.244464, 0.623975,
		66.144012, 54.739861, 60.299480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.593796, 55.396206, 60.190262>,  <66.663567, 54.910984, 59.862698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.593796, 55.396206, 60.190262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.496117, 55.064346, 60.391083>,  <66.437508, 54.865231, 60.511574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.496117, 55.064346, 60.391083>,  <66.593796, 55.396206, 60.190262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.496117, 55.064346, 60.391083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785229, 0.134625, 0.604393,
		-0.569022, 0.541812, 0.618590,
		-0.244190, -0.829648, 0.502051,
		66.422859, 54.815453, 60.541698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.632355, 55.999756, 60.750977>,  <66.593796, 55.396206, 60.190262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.632355, 55.999756, 60.750977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.464027, 56.269650, 60.993507>,  <66.363029, 56.431587, 61.139027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.464027, 56.269650, 60.993507>,  <66.632355, 55.999756, 60.750977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.464027, 56.269650, 60.993507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742231, 0.640385, -0.197484,
		-0.521535, 0.366932, -0.770300,
		-0.420826, 0.674735, 0.606331,
		66.337776, 56.472069, 61.175407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.602516, 56.649273, 60.351952>,  <66.632355, 55.999756, 60.750977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.602516, 56.649273, 60.351952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.618263, 56.763626, 60.734932>,  <66.627708, 56.832237, 60.964722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.618263, 56.763626, 60.734932>,  <66.602516, 56.649273, 60.351952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.618263, 56.763626, 60.734932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735998, 0.639794, -0.221291,
		-0.675838, 0.713395, -0.185229,
		0.039360, 0.285885, 0.957455,
		66.630074, 56.849392, 61.022167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.338844, 57.443581, 60.536552>,  <66.602516, 56.649273, 60.351952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.338844, 57.443581, 60.536552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.642853, 57.239208, 60.697205>,  <66.825256, 57.116585, 60.793594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.642853, 57.239208, 60.697205>,  <66.338844, 57.443581, 60.536552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.642853, 57.239208, 60.697205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649641, 0.580264, -0.491182,
		0.017910, 0.634227, 0.772939,
		0.760030, -0.510930, 0.401628,
		66.870865, 57.085930, 60.817692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.848816, 57.847706, 61.062958>,  <66.338844, 57.443581, 60.536552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.848816, 57.847706, 61.062958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.062927, 57.548210, 60.906570>,  <67.191399, 57.368511, 60.812737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.062927, 57.548210, 60.906570>,  <66.848816, 57.847706, 61.062958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.062927, 57.548210, 60.906570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707226, 0.650367, -0.277227,
		0.461844, -0.128108, 0.877661,
		0.535286, -0.748740, -0.390969,
		67.223511, 57.323589, 60.789280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.545067, 57.683079, 61.307510>,  <66.848816, 57.847706, 61.062958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.545067, 57.683079, 61.307510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.526863, 57.602810, 60.916069>,  <67.515938, 57.554649, 60.681206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.526863, 57.602810, 60.916069>,  <67.545067, 57.683079, 61.307510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.526863, 57.602810, 60.916069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816861, 0.556424, -0.152088,
		0.575037, -0.806303, 0.138595,
		-0.045511, -0.200669, -0.978601,
		67.513206, 57.542610, 60.622490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.250175, 57.486053, 61.168388>,  <67.545067, 57.683079, 61.307510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.250175, 57.486053, 61.168388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.040909, 57.635197, 60.861855>,  <67.915344, 57.724682, 60.677933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.040909, 57.635197, 60.861855>,  <68.250175, 57.486053, 61.168388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.040909, 57.635197, 60.861855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747434, 0.632751, -0.202409,
		0.409429, -0.678679, -0.609723,
		-0.523173, 0.372856, -0.766334,
		67.883957, 57.747055, 60.631954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.268616, 56.717888, 61.061672>,  <68.250175, 57.486053, 61.168388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.268616, 56.717888, 61.061672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.265114, 56.402447, 60.815735>,  <68.263008, 56.213184, 60.668171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.265114, 56.402447, 60.815735>,  <68.268616, 56.717888, 61.061672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.265114, 56.402447, 60.815735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919593, 0.235162, -0.314719,
		0.392776, -0.568164, 0.723130,
		-0.008760, -0.788599, -0.614845,
		68.262489, 56.165867, 60.631283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.892464, 56.250980, 61.157982>,  <68.268616, 56.717888, 61.061672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.892464, 56.250980, 61.157982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.754295, 56.255653, 60.782631>,  <68.671394, 56.258457, 60.557419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.754295, 56.255653, 60.782631>,  <68.892464, 56.250980, 61.157982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.754295, 56.255653, 60.782631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783997, 0.553170, -0.281696,
		0.515791, -0.832987, -0.200233,
		-0.345412, 0.011685, -0.938378,
		68.650673, 56.259159, 60.501118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.510292, 56.081280, 60.865326>,  <68.892464, 56.250980, 61.157982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.510292, 56.081280, 60.865326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.272545, 56.256317, 60.595436>,  <69.129898, 56.361340, 60.433502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.272545, 56.256317, 60.595436>,  <69.510292, 56.081280, 60.865326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.272545, 56.256317, 60.595436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794003, 0.452476, -0.405985,
		0.127639, -0.777032, -0.616384,
		-0.594363, 0.437591, -0.674720,
		69.094238, 56.387596, 60.393021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.877640, 56.405502, 60.292553>,  <69.510292, 56.081280, 60.865326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.877640, 56.405502, 60.292553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.706406, 56.642570, 60.565460>,  <69.603668, 56.784809, 60.729206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.706406, 56.642570, 60.565460>,  <69.877640, 56.405502, 60.292553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.706406, 56.642570, 60.565460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876392, 0.456555, 0.153279,
		-0.220652, 0.663553, -0.714850,
		-0.428077, 0.592667, 0.682272,
		69.577980, 56.820370, 60.770142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.057159, 57.175415, 60.120533>,  <69.877640, 56.405502, 60.292553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.057159, 57.175415, 60.120533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.995445, 57.187119, 60.515572>,  <69.958420, 57.194141, 60.752594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.995445, 57.187119, 60.515572>,  <70.057159, 57.175415, 60.120533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.995445, 57.187119, 60.515572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801835, 0.587733, 0.107846,
		-0.577286, 0.808526, -0.114138,
		-0.154279, 0.029261, 0.987594,
		69.949165, 57.195896, 60.811852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.060753, 57.912971, 60.274784>,  <70.057159, 57.175415, 60.120533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.060753, 57.912971, 60.274784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.192490, 57.686291, 60.576881>,  <70.271530, 57.550282, 60.758141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.192490, 57.686291, 60.576881>,  <70.060753, 57.912971, 60.274784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.192490, 57.686291, 60.576881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857335, 0.514612, 0.012282,
		-0.395617, 0.643450, 0.655332,
		0.329339, -0.566698, 0.755241,
		70.291290, 57.516281, 60.803455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.302765, 58.251968, 60.882244>,  <70.060753, 57.912971, 60.274784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.302765, 58.251968, 60.882244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.528542, 57.922905, 60.854980>,  <70.664009, 57.725468, 60.838623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.528542, 57.922905, 60.854980>,  <70.302765, 58.251968, 60.882244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.528542, 57.922905, 60.854980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814159, 0.568429, -0.118466,
		0.136199, 0.011377, 0.990616,
		0.564442, -0.822654, -0.068157,
		70.697876, 57.676109, 60.834534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.852890, 58.385025, 61.370815>,  <70.302765, 58.251968, 60.882244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.852890, 58.385025, 61.370815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.006775, 58.177788, 61.065247>,  <71.099106, 58.053448, 60.881905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.006775, 58.177788, 61.065247>,  <70.852890, 58.385025, 61.370815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.006775, 58.177788, 61.065247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644846, 0.743016, -0.179163,
		0.660428, -0.423684, 0.619941,
		0.384717, -0.518091, -0.763920,
		71.122192, 58.022362, 60.836071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.445183, 58.325096, 61.013924>,  <70.852890, 58.385025, 61.370815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.445183, 58.325096, 61.013924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.102013, 58.351093, 60.810066>,  <70.896111, 58.366692, 60.687752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.102013, 58.351093, 60.810066>,  <71.445183, 58.325096, 61.013924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.102013, 58.351093, 60.810066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513261, -0.064048, 0.855839,
		0.022984, 0.995828, 0.088308,
		-0.857925, 0.064996, -0.509648,
		70.844635, 58.370594, 60.657173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.582962, 57.715099, 61.234135>,  <71.445183, 58.325096, 61.013924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.582962, 57.715099, 61.234135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.663994, 57.893536, 61.582840>,  <71.712608, 58.000599, 61.792061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.663994, 57.893536, 61.582840>,  <71.582962, 57.715099, 61.234135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.663994, 57.893536, 61.582840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710316, 0.679739, -0.182773,
		-0.674103, -0.582199, 0.454565,
		0.202575, 0.446092, 0.871760,
		71.724770, 58.027363, 61.844368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.141609, 57.296913, 60.930843>,  <71.582962, 57.715099, 61.234135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.141609, 57.296913, 60.930843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.169785, 57.098038, 61.276756>,  <72.186691, 56.978714, 61.484303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.169785, 57.098038, 61.276756>,  <72.141609, 57.296913, 60.930843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.169785, 57.098038, 61.276756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965137, 0.253057, 0.066875,
		-0.252088, 0.829919, 0.497681,
		0.070441, -0.497189, 0.864778,
		72.190918, 56.948879, 61.536190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.510666, 57.664246, 61.484722>,  <72.141609, 57.296913, 60.930843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.510666, 57.664246, 61.484722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.574165, 57.277817, 61.566208>,  <72.612267, 57.045959, 61.615101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.574165, 57.277817, 61.566208>,  <72.510666, 57.664246, 61.484722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.574165, 57.277817, 61.566208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968826, 0.112687, -0.220629,
		0.190188, 0.232390, 0.953847,
		0.158758, -0.966073, 0.203714,
		72.621796, 56.987995, 61.627323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.998253, 57.854980, 60.995026>,  <72.510666, 57.664246, 61.484722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.998253, 57.854980, 60.995026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.948174, 58.182953, 60.771584>,  <72.918129, 58.379738, 60.637520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.948174, 58.182953, 60.771584>,  <72.998253, 57.854980, 60.995026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.948174, 58.182953, 60.771584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973227, -0.007898, -0.229710,
		-0.192759, -0.572406, -0.796992,
		-0.125193, 0.819932, -0.558603,
		72.910614, 58.428932, 60.604004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.435364, 57.820251, 60.399899>,  <72.998253, 57.854980, 60.995026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.435364, 57.820251, 60.399899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.350273, 58.210739, 60.416588>,  <73.299217, 58.445034, 60.426601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.350273, 58.210739, 60.416588>,  <73.435364, 57.820251, 60.399899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.350273, 58.210739, 60.416588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923839, 0.214843, -0.316803,
		-0.318234, -0.028845, -0.947573,
		-0.212718, 0.976222, 0.041722,
		73.286461, 58.503605, 60.429104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
