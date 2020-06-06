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
	<24.284571, 34.722759, 35.253113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.167021, 34.997929, 34.987663>,  <24.096491, 35.163029, 34.828392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.167021, 34.997929, 34.987663>,  <24.284571, 34.722759, 35.253113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.167021, 34.997929, 34.987663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936671, 0.345620, -0.056516,
		0.190485, -0.638210, -0.745925,
		-0.293875, 0.687921, -0.663628,
		24.078857, 35.204304, 34.788574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832695, 35.074379, 34.921883>,  <24.284571, 34.722759, 35.253113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.832695, 35.074379, 34.921883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180071, 34.889767, 34.849434>,  <25.388496, 34.778999, 34.805965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180071, 34.889767, 34.849434>,  <24.832695, 35.074379, 34.921883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.180071, 34.889767, 34.849434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444939, 0.564338, 0.695379,
		-0.218724, -0.684482, 0.695445,
		0.868441, -0.461526, -0.181119,
		25.440603, 34.751308, 34.795097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177917, 35.004910, 35.561596>,  <24.832695, 35.074379, 34.921883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177917, 35.004910, 35.561596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441547, 35.027954, 35.261650>,  <25.599726, 35.041779, 35.081684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441547, 35.027954, 35.261650>,  <25.177917, 35.004910, 35.561596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.441547, 35.027954, 35.261650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627591, 0.507292, 0.590580,
		0.414423, -0.859847, 0.298190,
		0.659078, 0.057608, -0.749866,
		25.639271, 35.045238, 35.036690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781666, 34.577877, 35.420044>,  <25.177917, 35.004910, 35.561596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781666, 34.577877, 35.420044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834442, 34.956589, 35.302605>,  <25.866108, 35.183815, 35.232140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834442, 34.956589, 35.302605>,  <25.781666, 34.577877, 35.420044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834442, 34.956589, 35.302605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649483, 0.141187, 0.747153,
		0.748842, -0.289268, -0.596289,
		0.131940, 0.946779, -0.293602,
		25.874023, 35.240623, 35.214523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477581, 34.842438, 35.576210>,  <25.781666, 34.577877, 35.420044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477581, 34.842438, 35.576210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255377, 35.173527, 35.544521>,  <26.122055, 35.372181, 35.525509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255377, 35.173527, 35.544521>,  <26.477581, 34.842438, 35.576210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255377, 35.173527, 35.544521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584150, 0.456286, 0.671246,
		0.591757, 0.326606, -0.736989,
		-0.555511, 0.827727, -0.079223,
		26.088724, 35.421844, 35.520756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030502, 35.263790, 35.359741>,  <26.477581, 34.842438, 35.576210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030502, 35.263790, 35.359741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335392, 35.428646, 35.160080>,  <27.518326, 35.527561, 35.040283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335392, 35.428646, 35.160080>,  <27.030502, 35.263790, 35.359741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335392, 35.428646, 35.160080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438981, 0.895819, 0.069317,
		0.475720, 0.166284, 0.863736,
		0.762225, 0.412139, -0.499154,
		27.564060, 35.552288, 35.010334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933554, 35.938465, 35.524220>,  <27.030502, 35.263790, 35.359741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933554, 35.938465, 35.524220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194096, 35.980892, 35.223690>,  <27.350422, 36.006348, 35.043373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194096, 35.980892, 35.223690>,  <26.933554, 35.938465, 35.524220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194096, 35.980892, 35.223690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147274, 0.989024, 0.011950,
		0.744343, 0.102867, 0.659827,
		0.651356, 0.106070, -0.751322,
		27.389502, 36.012714, 34.998295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300312, 36.572014, 35.684795>,  <26.933554, 35.938465, 35.524220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300312, 36.572014, 35.684795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362144, 36.515888, 35.293610>,  <27.399244, 36.482212, 35.058899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362144, 36.515888, 35.293610>,  <27.300312, 36.572014, 35.684795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362144, 36.515888, 35.293610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194595, 0.966148, -0.169381,
		0.968627, 0.216490, 0.122042,
		0.154580, -0.140318, -0.977965,
		27.408518, 36.473793, 35.000221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814726, 37.070850, 35.484100>,  <27.300312, 36.572014, 35.684795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814726, 37.070850, 35.484100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626530, 36.981972, 35.142513>,  <27.513613, 36.928642, 34.937561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626530, 36.981972, 35.142513>,  <27.814726, 37.070850, 35.484100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626530, 36.981972, 35.142513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117417, 0.974935, -0.188983,
		0.874559, 0.011357, -0.484786,
		-0.470489, -0.222199, -0.853972,
		27.485384, 36.915314, 34.886322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891228, 37.624363, 35.091885>,  <27.814726, 37.070850, 35.484100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891228, 37.624363, 35.091885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618374, 37.446484, 34.859703>,  <27.454660, 37.339756, 34.720394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618374, 37.446484, 34.859703>,  <27.891228, 37.624363, 35.091885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618374, 37.446484, 34.859703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338839, 0.895679, -0.288004,
		0.647980, 0.000224, -0.761657,
		-0.682136, -0.444700, -0.580458,
		27.413733, 37.313072, 34.685566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887276, 38.035637, 34.427849>,  <27.891228, 37.624363, 35.091885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887276, 38.035637, 34.427849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540768, 37.837963, 34.457119>,  <27.332863, 37.719357, 34.474682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540768, 37.837963, 34.457119>,  <27.887276, 38.035637, 34.427849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540768, 37.837963, 34.457119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493780, 0.824732, -0.275679,
		0.075885, -0.274946, -0.958460,
		-0.866270, -0.494188, 0.073178,
		27.280888, 37.689705, 34.479073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481640, 38.315144, 33.899548>,  <27.887276, 38.035637, 34.427849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481640, 38.315144, 33.899548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223577, 38.137432, 34.148190>,  <27.068739, 38.030804, 34.297375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223577, 38.137432, 34.148190>,  <27.481640, 38.315144, 33.899548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223577, 38.137432, 34.148190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612472, 0.787104, -0.073112,
		-0.456782, -0.427882, -0.779915,
		-0.645158, -0.444280, 0.621600,
		27.030029, 38.004147, 34.334671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757484, 38.380650, 33.614742>,  <27.481640, 38.315144, 33.899548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757484, 38.380650, 33.614742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708035, 38.315937, 34.006363>,  <26.678364, 38.277111, 34.241337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708035, 38.315937, 34.006363>,  <26.757484, 38.380650, 33.614742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708035, 38.315937, 34.006363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484504, 0.870869, 0.082724,
		-0.866009, -0.464128, -0.186045,
		-0.123626, -0.161779, 0.979053,
		26.670946, 38.267403, 34.300079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027750, 38.551369, 33.780689>,  <26.757484, 38.380650, 33.614742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027750, 38.551369, 33.780689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214191, 38.570988, 34.134037>,  <26.326056, 38.582760, 34.346046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.214191, 38.570988, 34.134037>,  <26.027750, 38.551369, 33.780689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214191, 38.570988, 34.134037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534633, 0.811155, 0.237054,
		-0.704922, -0.582771, 0.404307,
		0.466103, 0.049051, 0.883369,
		26.354023, 38.585705, 34.399048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515053, 38.542244, 34.288357>,  <26.027750, 38.551369, 33.780689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515053, 38.542244, 34.288357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841200, 38.683849, 34.471596>,  <26.036888, 38.768814, 34.581539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841200, 38.683849, 34.471596>,  <25.515053, 38.542244, 34.288357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841200, 38.683849, 34.471596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501150, 0.827763, 0.252305,
		-0.289873, -0.435295, 0.852345,
		0.815367, 0.354016, 0.458094,
		26.085810, 38.790054, 34.609024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.300198, 38.837334, 34.890820>,  <25.515053, 38.542244, 34.288357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.300198, 38.837334, 34.890820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663462, 39.001255, 34.856640>,  <25.881420, 39.099609, 34.836132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663462, 39.001255, 34.856640>,  <25.300198, 38.837334, 34.890820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663462, 39.001255, 34.856640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387857, 0.900513, 0.196578,
		0.157508, -0.145382, 0.976758,
		0.908162, 0.409805, -0.085451,
		25.935911, 39.124195, 34.831005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398411, 39.143047, 35.569065>,  <25.300198, 38.837334, 34.890820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398411, 39.143047, 35.569065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617887, 39.308895, 35.278679>,  <25.749575, 39.408405, 35.104446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617887, 39.308895, 35.278679>,  <25.398411, 39.143047, 35.569065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617887, 39.308895, 35.278679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477915, 0.868040, 0.134548,
		0.685953, 0.273124, 0.674442,
		0.548694, 0.414620, -0.725965,
		25.782495, 39.433281, 35.060890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529852, 39.889065, 35.787914>,  <25.398411, 39.143047, 35.569065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529852, 39.889065, 35.787914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638117, 39.916004, 35.403790>,  <25.703075, 39.932167, 35.173313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638117, 39.916004, 35.403790>,  <25.529852, 39.889065, 35.787914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638117, 39.916004, 35.403790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227608, 0.973744, 0.004142,
		0.935380, 0.217455, 0.278886,
		0.270663, 0.067351, -0.960315,
		25.719316, 39.936211, 35.115696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007015, 40.388641, 35.705879>,  <25.529852, 39.889065, 35.787914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007015, 40.388641, 35.705879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809065, 40.367622, 35.358929>,  <25.690294, 40.355011, 35.150761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809065, 40.367622, 35.358929>,  <26.007015, 40.388641, 35.705879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809065, 40.367622, 35.358929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130581, 0.991332, 0.014450,
		0.859095, 0.120414, -0.497449,
		-0.494877, -0.052544, -0.867373,
		25.660603, 40.351860, 35.098717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405043, 40.741714, 35.302357>,  <26.007015, 40.388641, 35.705879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405043, 40.741714, 35.302357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048073, 40.734898, 35.122005>,  <25.833891, 40.730808, 35.013794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048073, 40.734898, 35.122005>,  <26.405043, 40.741714, 35.302357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048073, 40.734898, 35.122005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088301, 0.986560, 0.137489,
		0.442474, 0.162511, -0.881934,
		-0.892423, -0.017041, -0.450877,
		25.780346, 40.729786, 34.986744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407940, 41.357372, 34.810162>,  <26.405043, 40.741714, 35.302357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407940, 41.357372, 34.810162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024511, 41.269249, 34.882385>,  <25.794455, 41.216373, 34.925720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024511, 41.269249, 34.882385>,  <26.407940, 41.357372, 34.810162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024511, 41.269249, 34.882385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210759, 0.974977, 0.070719,
		-0.191621, 0.029735, -0.981018,
		-0.958573, -0.220310, 0.180559,
		25.736938, 41.203156, 34.936554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061428, 41.813526, 34.438961>,  <26.407940, 41.357372, 34.810162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061428, 41.813526, 34.438961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797535, 41.692650, 34.714188>,  <25.639198, 41.620125, 34.879322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797535, 41.692650, 34.714188>,  <26.061428, 41.813526, 34.438961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797535, 41.692650, 34.714188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252140, 0.951524, 0.176147,
		-0.707940, -0.057278, -0.703946,
		-0.659732, -0.302194, 0.688064,
		25.599615, 41.601990, 34.920609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516853, 42.141598, 34.262650>,  <26.061428, 41.813526, 34.438961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516853, 42.141598, 34.262650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462103, 42.037312, 34.644917>,  <25.429253, 41.974739, 34.874275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462103, 42.037312, 34.644917>,  <25.516853, 42.141598, 34.262650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462103, 42.037312, 34.644917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207101, 0.950956, 0.229764,
		-0.968697, -0.166470, -0.184157,
		-0.136877, -0.260711, 0.955664,
		25.421040, 41.959099, 34.931618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.853390, 42.467964, 34.567539>,  <25.516853, 42.141598, 34.262650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.853390, 42.467964, 34.567539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046982, 42.387386, 34.908169>,  <25.163137, 42.339039, 35.112549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046982, 42.387386, 34.908169>,  <24.853390, 42.467964, 34.567539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046982, 42.387386, 34.908169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188436, 0.926321, 0.326224,
		-0.854549, -0.318353, 0.410362,
		0.483981, -0.201447, 0.851576,
		25.192177, 42.326954, 35.163643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.403221, 42.728268, 35.063450>,  <24.853390, 42.467964, 34.567539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.403221, 42.728268, 35.063450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770746, 42.709846, 35.220249>,  <24.991261, 42.698795, 35.314327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770746, 42.709846, 35.220249>,  <24.403221, 42.728268, 35.063450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.770746, 42.709846, 35.220249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137536, 0.893563, 0.427352,
		-0.369956, -0.446570, 0.814682,
		0.918812, -0.046054, 0.391999,
		25.046391, 42.696030, 35.337849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.311375, 42.961384, 35.745754>,  <24.403221, 42.728268, 35.063450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.311375, 42.961384, 35.745754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693674, 43.012936, 35.639973>,  <24.923054, 43.043865, 35.576504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693674, 43.012936, 35.639973>,  <24.311375, 42.961384, 35.745754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.693674, 43.012936, 35.639973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056658, 0.962743, 0.264414,
		0.288679, -0.237730, 0.927442,
		0.955748, 0.128878, -0.264455,
		24.980398, 43.051598, 35.560635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.635448, 43.337566, 36.272350>,  <24.311375, 42.961384, 35.745754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.635448, 43.337566, 36.272350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818752, 43.393703, 35.921284>,  <24.928734, 43.427387, 35.710644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818752, 43.393703, 35.921284>,  <24.635448, 43.337566, 36.272350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818752, 43.393703, 35.921284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012362, 0.986353, 0.164180,
		0.888732, -0.086087, 0.450271,
		0.458260, 0.140345, -0.877668,
		24.956230, 43.435806, 35.657982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867247, 43.530800, 36.974022>,  <24.635448, 43.337566, 36.272350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867247, 43.530800, 36.974022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.036203, 43.887543, 36.909313>,  <25.137577, 44.101589, 36.870487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.036203, 43.887543, 36.909313>,  <24.867247, 43.530800, 36.974022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.036203, 43.887543, 36.909313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839837, -0.452218, -0.300288,
		-0.340970, -0.009021, -0.940031,
		0.422390, 0.891862, -0.161770,
		25.162920, 44.155102, 36.860783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330528, 43.374866, 36.501114>,  <24.867247, 43.530800, 36.974022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330528, 43.374866, 36.501114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434191, 43.754097, 36.574852>,  <25.496389, 43.981636, 36.619095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434191, 43.754097, 36.574852>,  <25.330528, 43.374866, 36.501114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434191, 43.754097, 36.574852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896309, -0.164975, -0.411599,
		-0.359816, 0.271898, -0.892526,
		0.259157, 0.948079, 0.184344,
		25.511938, 44.038521, 36.630154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735176, 43.737053, 35.945080>,  <25.330528, 43.374866, 36.501114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735176, 43.737053, 35.945080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836483, 43.955460, 36.264507>,  <25.897266, 44.086506, 36.456165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836483, 43.955460, 36.264507>,  <25.735176, 43.737053, 35.945080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.836483, 43.955460, 36.264507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949598, 0.017295, -0.312991,
		-0.184711, 0.837594, -0.514118,
		0.253268, 0.546019, 0.798573,
		25.912464, 44.119267, 36.504078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136732, 44.429821, 35.846447>,  <25.735176, 43.737053, 35.945080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136732, 44.429821, 35.846447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230701, 44.282578, 36.206291>,  <26.287083, 44.194233, 36.422199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230701, 44.282578, 36.206291>,  <26.136732, 44.429821, 35.846447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230701, 44.282578, 36.206291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971928, 0.101310, -0.212351,
		-0.012971, 0.924246, 0.381576,
		0.234922, -0.368110, 0.899615,
		26.301178, 44.172146, 36.476177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287788, 44.975338, 35.381683>,  <26.136732, 44.429821, 35.846447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287788, 44.975338, 35.381683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569073, 45.109734, 35.131050>,  <26.737843, 45.190372, 34.980671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569073, 45.109734, 35.131050>,  <26.287788, 44.975338, 35.381683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569073, 45.109734, 35.131050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681945, -0.568035, 0.460747,
		-0.201116, -0.751298, -0.628573,
		0.703209, 0.335989, -0.626584,
		26.780035, 45.210529, 34.943073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605009, 44.389210, 35.256329>,  <26.287788, 44.975338, 35.381683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605009, 44.389210, 35.256329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832071, 44.702610, 35.155220>,  <26.968309, 44.890652, 35.094555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832071, 44.702610, 35.155220>,  <26.605009, 44.389210, 35.256329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832071, 44.702610, 35.155220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823015, -0.532513, 0.197678,
		0.020276, -0.320248, -0.947117,
		0.567658, 0.783500, -0.252771,
		27.002369, 44.937660, 35.079388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861130, 44.518070, 34.542538>,  <26.605009, 44.389210, 35.256329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861130, 44.518070, 34.542538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111969, 44.644276, 34.827408>,  <27.262472, 44.719997, 34.998329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111969, 44.644276, 34.827408>,  <26.861130, 44.518070, 34.542538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111969, 44.644276, 34.827408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641213, -0.728204, -0.242002,
		0.442257, 0.608418, -0.658966,
		0.627100, 0.315510, 0.712179,
		27.300098, 44.738930, 35.041061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602617, 44.396057, 34.351559>,  <26.861130, 44.518070, 34.542538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602617, 44.396057, 34.351559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616104, 44.423988, 34.750355>,  <27.624197, 44.440746, 34.989632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616104, 44.423988, 34.750355>,  <27.602617, 44.396057, 34.351559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616104, 44.423988, 34.750355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621355, -0.782799, 0.033812,
		0.782804, 0.618344, -0.069780,
		0.033716, 0.069827, 0.996989,
		27.626219, 44.444935, 35.049450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342299, 44.365772, 34.546326>,  <27.602617, 44.396057, 34.351559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342299, 44.365772, 34.546326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137247, 44.217251, 34.855995>,  <28.014215, 44.128139, 35.041798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137247, 44.217251, 34.855995>,  <28.342299, 44.365772, 34.546326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137247, 44.217251, 34.855995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611845, -0.790551, 0.025987,
		0.602375, 0.486997, 0.632439,
		-0.512630, -0.371300, 0.774174,
		27.983458, 44.105862, 35.088249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830673, 44.094734, 35.009735>,  <28.342299, 44.365772, 34.546326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830673, 44.094734, 35.009735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494825, 43.905556, 35.116592>,  <28.293318, 43.792049, 35.180706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494825, 43.905556, 35.116592>,  <28.830673, 44.094734, 35.009735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494825, 43.905556, 35.116592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490697, -0.871330, -0.000351,
		0.232934, 0.130791, 0.963657,
		-0.839618, -0.472945, 0.267141,
		28.242939, 43.763672, 35.196735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028343, 43.717049, 35.479404>,  <28.830673, 44.094734, 35.009735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028343, 43.717049, 35.479404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687321, 43.548874, 35.355225>,  <28.482708, 43.447968, 35.280716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687321, 43.548874, 35.355225>,  <29.028343, 43.717049, 35.479404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687321, 43.548874, 35.355225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406462, -0.906797, 0.111837,
		-0.328535, -0.030839, 0.943988,
		-0.852557, -0.420437, -0.310450,
		28.431553, 43.422741, 35.262089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927277, 43.061970, 35.865791>,  <29.028343, 43.717049, 35.479404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927277, 43.061970, 35.865791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698820, 43.017040, 35.540539>,  <28.561747, 42.990082, 35.345387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698820, 43.017040, 35.540539>,  <28.927277, 43.061970, 35.865791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698820, 43.017040, 35.540539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316669, -0.944063, -0.092016,
		-0.757312, -0.310047, 0.574760,
		-0.571139, -0.112324, -0.813132,
		28.527479, 42.983345, 35.296600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847803, 42.327171, 35.843235>,  <28.927277, 43.061970, 35.865791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847803, 42.327171, 35.843235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709860, 42.429276, 35.481922>,  <28.627094, 42.490536, 35.265133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709860, 42.429276, 35.481922>,  <28.847803, 42.327171, 35.843235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709860, 42.429276, 35.481922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281344, -0.889963, -0.358904,
		-0.895502, -0.377901, 0.235088,
		-0.344850, 0.255259, -0.903283,
		28.606403, 42.505852, 35.210938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513340, 41.738369, 35.646423>,  <28.847803, 42.327171, 35.843235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513340, 41.738369, 35.646423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621572, 41.950653, 35.325142>,  <28.686512, 42.078022, 35.132374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621572, 41.950653, 35.325142>,  <28.513340, 41.738369, 35.646423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621572, 41.950653, 35.325142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290856, -0.840401, -0.457307,
		-0.917709, -0.109878, -0.381756,
		0.270580, 0.530710, -0.803202,
		28.702745, 42.109867, 35.084183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057562, 41.524464, 35.025928>,  <28.513340, 41.738369, 35.646423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057562, 41.524464, 35.025928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414114, 41.685635, 34.942894>,  <28.628046, 41.782337, 34.893074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414114, 41.685635, 34.942894>,  <28.057562, 41.524464, 35.025928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414114, 41.685635, 34.942894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246287, -0.815043, -0.524450,
		-0.380502, 0.416360, -0.825750,
		0.891381, 0.402926, -0.207582,
		28.681528, 41.806511, 34.880619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217827, 41.244949, 34.376972>,  <28.057562, 41.524464, 35.025928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217827, 41.244949, 34.376972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580414, 41.388714, 34.465645>,  <28.797966, 41.474972, 34.518848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580414, 41.388714, 34.465645>,  <28.217827, 41.244949, 34.376972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580414, 41.388714, 34.465645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420346, -0.818140, -0.392372,
		0.040342, 0.448855, -0.892694,
		0.906467, 0.359411, 0.221680,
		28.852354, 41.496536, 34.532150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501980, 41.080502, 33.774441>,  <28.217827, 41.244949, 34.376972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501980, 41.080502, 33.774441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796558, 41.150818, 34.035744>,  <28.973305, 41.193008, 34.192524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796558, 41.150818, 34.035744>,  <28.501980, 41.080502, 33.774441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796558, 41.150818, 34.035744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456164, -0.842125, -0.287645,
		0.499560, 0.509828, -0.700368,
		0.736447, 0.175787, 0.653257,
		29.017492, 41.203552, 34.231720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228687, 40.958237, 33.332214>,  <28.501980, 41.080502, 33.774441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228687, 40.958237, 33.332214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266354, 40.958652, 33.730438>,  <29.288954, 40.958904, 33.969372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266354, 40.958652, 33.730438>,  <29.228687, 40.958237, 33.332214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266354, 40.958652, 33.730438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729776, -0.680265, -0.068314,
		0.677171, 0.732965, -0.064820,
		0.094167, 0.001044, 0.995556,
		29.294603, 40.958965, 34.029106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857693, 40.704124, 33.251385>,  <29.228687, 40.958237, 33.332214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857693, 40.704124, 33.251385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729280, 40.622532, 33.621323>,  <29.652233, 40.573578, 33.843285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729280, 40.622532, 33.621323>,  <29.857693, 40.704124, 33.251385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729280, 40.622532, 33.621323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382691, -0.921195, -0.070338,
		0.866306, 0.331347, 0.373794,
		-0.321031, -0.203981, 0.924841,
		29.632971, 40.561337, 33.898773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364641, 40.232025, 33.370144>,  <29.857693, 40.704124, 33.251385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364641, 40.232025, 33.370144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083473, 40.213909, 33.654076>,  <29.914772, 40.203041, 33.824432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083473, 40.213909, 33.654076>,  <30.364641, 40.232025, 33.370144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083473, 40.213909, 33.654076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348786, -0.891692, 0.288502,
		0.619881, 0.450371, 0.642583,
		-0.702919, -0.045287, 0.709826,
		29.872597, 40.200325, 33.867023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659393, 40.077873, 34.095730>,  <30.364641, 40.232025, 33.370144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659393, 40.077873, 34.095730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274118, 39.970421, 34.099815>,  <30.042953, 39.905949, 34.102268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274118, 39.970421, 34.099815>,  <30.659393, 40.077873, 34.095730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274118, 39.970421, 34.099815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241048, -0.846212, 0.475206,
		-0.119010, 0.460176, 0.879815,
		-0.963189, -0.268632, 0.010217,
		29.985163, 39.889832, 34.102879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440838, 39.805660, 34.796494>,  <30.659393, 40.077873, 34.095730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440838, 39.805660, 34.796494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173214, 39.642994, 34.547661>,  <30.012640, 39.545395, 34.398361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173214, 39.642994, 34.547661>,  <30.440838, 39.805660, 34.796494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173214, 39.642994, 34.547661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144479, -0.892218, 0.427870,
		-0.729029, 0.196394, 0.655703,
		-0.669061, -0.406665, -0.622078,
		29.972496, 39.520996, 34.361038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103695, 39.147526, 35.163898>,  <30.440838, 39.805660, 34.796494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103695, 39.147526, 35.163898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015432, 39.094986, 34.777313>,  <29.962475, 39.063461, 34.545361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015432, 39.094986, 34.777313>,  <30.103695, 39.147526, 35.163898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015432, 39.094986, 34.777313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035055, -0.989183, 0.142437,
		-0.974721, 0.065309, 0.213668,
		-0.220659, -0.131346, -0.966467,
		29.949234, 39.055584, 34.487373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378153, 38.791409, 35.048862>,  <30.103695, 39.147526, 35.163898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378153, 38.791409, 35.048862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628029, 38.736866, 34.741314>,  <29.777954, 38.704140, 34.556786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628029, 38.736866, 34.741314>,  <29.378153, 38.791409, 35.048862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628029, 38.736866, 34.741314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088516, -0.990655, 0.103769,
		-0.775838, 0.003234, -0.630924,
		0.624692, -0.136355, -0.768874,
		29.815437, 38.695961, 34.510651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160593, 38.190590, 34.697254>,  <29.378153, 38.791409, 35.048862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160593, 38.190590, 34.697254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526831, 38.208939, 34.537464>,  <29.746572, 38.219948, 34.441589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526831, 38.208939, 34.537464>,  <29.160593, 38.190590, 34.697254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526831, 38.208939, 34.537464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088781, -0.992015, 0.089572,
		-0.392180, -0.117478, -0.912356,
		0.915594, 0.045872, -0.399479,
		29.801508, 38.222698, 34.417622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079947, 37.668148, 34.107758>,  <29.160593, 38.190590, 34.697254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079947, 37.668148, 34.107758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467705, 37.738007, 34.176773>,  <29.700359, 37.779922, 34.218182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467705, 37.738007, 34.176773>,  <29.079947, 37.668148, 34.107758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467705, 37.738007, 34.176773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191134, -0.977967, -0.083959,
		0.154073, 0.114367, -0.981418,
		0.969396, 0.174646, 0.172538,
		29.758524, 37.790401, 34.228535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485945, 37.266895, 33.639072>,  <29.079947, 37.668148, 34.107758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485945, 37.266895, 33.639072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777977, 37.319946, 33.907219>,  <29.953196, 37.351776, 34.068108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777977, 37.319946, 33.907219>,  <29.485945, 37.266895, 33.639072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777977, 37.319946, 33.907219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296285, -0.945421, -0.135628,
		0.615792, 0.297639, -0.729528,
		0.730079, 0.132630, 0.670369,
		29.997000, 37.359734, 34.108330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224812, 37.088699, 33.361454>,  <29.485945, 37.266895, 33.639072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224812, 37.088699, 33.361454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249105, 37.057220, 33.759472>,  <30.263681, 37.038334, 33.998283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249105, 37.057220, 33.759472>,  <30.224812, 37.088699, 33.361454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249105, 37.057220, 33.759472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425142, -0.899900, -0.097123,
		0.903086, 0.428935, -0.021196,
		0.060734, -0.078700, 0.995047,
		30.267326, 37.033611, 34.057987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899223, 36.810890, 33.545368>,  <30.224812, 37.088699, 33.361454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899223, 36.810890, 33.545368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705795, 36.755634, 33.891102>,  <30.589739, 36.722481, 34.098541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705795, 36.755634, 33.891102>,  <30.899223, 36.810890, 33.545368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705795, 36.755634, 33.891102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206445, -0.977610, -0.040738,
		0.850611, 0.158738, 0.501262,
		-0.483572, -0.138135, 0.864336,
		30.560724, 36.714195, 34.150402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340139, 36.431561, 33.965412>,  <30.899223, 36.810890, 33.545368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340139, 36.431561, 33.965412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967957, 36.348186, 34.085949>,  <30.744646, 36.298161, 34.158272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967957, 36.348186, 34.085949>,  <31.340139, 36.431561, 33.965412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967957, 36.348186, 34.085949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164342, -0.972471, -0.165206,
		0.327478, -0.104194, 0.939096,
		-0.930457, -0.208434, 0.301339,
		30.688820, 36.285656, 34.176350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349861, 35.825485, 34.533272>,  <31.340139, 36.431561, 33.965412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349861, 35.825485, 34.533272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024702, 35.837170, 34.300602>,  <30.829607, 35.844181, 34.160999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024702, 35.837170, 34.300602>,  <31.349861, 35.825485, 34.533272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024702, 35.837170, 34.300602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102578, -0.975947, -0.192366,
		-0.573303, -0.216041, 0.790348,
		-0.812897, 0.029212, -0.581675,
		30.780832, 35.845932, 34.126099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801517, 36.417278, 34.840141>,  <31.349861, 35.825485, 34.533272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801517, 36.417278, 34.840141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841402, 36.229145, 34.489407>,  <31.865334, 36.116264, 34.278965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841402, 36.229145, 34.489407>,  <31.801517, 36.417278, 34.840141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841402, 36.229145, 34.489407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806470, 0.554360, -0.205646,
		0.582806, -0.686639, 0.434584,
		0.099712, -0.470331, -0.876839,
		31.871315, 36.088047, 34.226357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442078, 36.092827, 34.813812>,  <31.801517, 36.417278, 34.840141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442078, 36.092827, 34.813812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314793, 36.202549, 34.450825>,  <32.238422, 36.268383, 34.233032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314793, 36.202549, 34.450825>,  <32.442078, 36.092827, 34.813812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314793, 36.202549, 34.450825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933558, 0.257231, -0.249605,
		0.164961, -0.926600, -0.337936,
		-0.318211, 0.274307, -0.907467,
		32.219330, 36.284840, 34.178585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872330, 35.784618, 34.314625>,  <32.442078, 36.092827, 34.813812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872330, 35.784618, 34.314625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706764, 36.103401, 34.138653>,  <32.607426, 36.294670, 34.033070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706764, 36.103401, 34.138653>,  <32.872330, 35.784618, 34.314625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706764, 36.103401, 34.138653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899493, 0.283769, -0.332246,
		-0.139946, -0.533235, -0.834311,
		-0.413917, 0.796954, -0.439929,
		32.582588, 36.342487, 34.006676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418808, 36.132423, 34.642235>,  <32.872330, 35.784618, 34.314625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418808, 36.132423, 34.642235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164497, 36.413067, 34.513531>,  <33.011913, 36.581455, 34.436306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164497, 36.413067, 34.513531>,  <33.418808, 36.132423, 34.642235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164497, 36.413067, 34.513531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286773, 0.172317, 0.942373,
		0.716626, 0.691410, 0.091649,
		-0.635774, 0.701612, -0.321765,
		32.973766, 36.623550, 34.417000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586945, 36.805824, 34.985916>,  <33.418808, 36.132423, 34.642235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586945, 36.805824, 34.985916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208858, 36.711483, 34.895634>,  <32.982006, 36.654877, 34.841465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208858, 36.711483, 34.895634>,  <33.586945, 36.805824, 34.985916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208858, 36.711483, 34.895634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241041, 0.037962, 0.969772,
		-0.220156, 0.971047, -0.092733,
		-0.945215, -0.235854, -0.225704,
		32.925293, 36.640728, 34.827923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205482, 37.242989, 35.333202>,  <33.586945, 36.805824, 34.985916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205482, 37.242989, 35.333202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997799, 36.904755, 35.283539>,  <32.873188, 36.701817, 35.253742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997799, 36.904755, 35.283539>,  <33.205482, 37.242989, 35.333202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997799, 36.904755, 35.283539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235200, 0.001709, 0.971946,
		-0.821646, 0.533846, -0.199768,
		-0.519210, -0.845580, -0.124156,
		32.842037, 36.651081, 35.246292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520184, 37.367485, 35.547138>,  <33.205482, 37.242989, 35.333202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520184, 37.367485, 35.547138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698059, 37.010731, 35.580097>,  <32.804787, 36.796677, 35.599873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698059, 37.010731, 35.580097>,  <32.520184, 37.367485, 35.547138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698059, 37.010731, 35.580097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100165, 0.041899, 0.994088,
		-0.890065, -0.450317, -0.070704,
		0.444692, -0.891885, 0.082399,
		32.831467, 36.743164, 35.604816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098972, 36.967968, 35.883030>,  <32.520184, 37.367485, 35.547138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098972, 36.967968, 35.883030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464802, 36.819767, 35.947876>,  <32.684299, 36.730846, 35.986782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464802, 36.819767, 35.947876>,  <32.098972, 36.967968, 35.883030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464802, 36.819767, 35.947876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133297, 0.102284, 0.985784,
		-0.381816, -0.923183, 0.044159,
		0.914576, -0.370502, 0.162111,
		32.739174, 36.708618, 35.996510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982327, 36.532051, 36.496029>,  <32.098972, 36.967968, 35.883030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982327, 36.532051, 36.496029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381760, 36.513977, 36.484783>,  <32.621418, 36.503132, 36.478035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381760, 36.513977, 36.484783>,  <31.982327, 36.532051, 36.496029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381760, 36.513977, 36.484783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024551, -0.077648, 0.996678,
		-0.047216, -0.995956, -0.076429,
		0.998583, -0.045182, -0.028118,
		32.681335, 36.500420, 36.476349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189541, 35.874157, 36.918678>,  <31.982327, 36.532051, 36.496029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189541, 35.874157, 36.918678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487442, 36.140629, 36.902950>,  <32.666183, 36.300510, 36.893513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487442, 36.140629, 36.902950>,  <32.189541, 35.874157, 36.918678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487442, 36.140629, 36.902950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105034, -0.058834, 0.992727,
		0.659019, -0.743469, -0.113788,
		0.744756, 0.666178, -0.039316,
		32.710869, 36.340481, 36.891155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667191, 35.599560, 37.420795>,  <32.189541, 35.874157, 36.918678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667191, 35.599560, 37.420795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788513, 35.973972, 37.349419>,  <32.861305, 36.198620, 37.306591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788513, 35.973972, 37.349419>,  <32.667191, 35.599560, 37.420795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788513, 35.973972, 37.349419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379526, 0.053105, 0.923656,
		0.874051, -0.347875, -0.339142,
		0.303307, 0.936036, -0.178444,
		32.879505, 36.254784, 37.295887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350010, 35.663754, 37.715359>,  <32.667191, 35.599560, 37.420795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350010, 35.663754, 37.715359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201439, 36.032612, 37.672127>,  <33.112297, 36.253929, 37.646187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201439, 36.032612, 37.672127>,  <33.350010, 35.663754, 37.715359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201439, 36.032612, 37.672127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207644, 0.195960, 0.958376,
		0.904944, 0.333530, -0.264264,
		-0.371432, 0.922149, -0.108077,
		33.090008, 36.309258, 37.639702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857262, 36.125244, 37.924942>,  <33.350010, 35.663754, 37.715359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857262, 36.125244, 37.924942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523460, 36.342663, 37.961060>,  <33.323177, 36.473114, 37.982731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523460, 36.342663, 37.961060>,  <33.857262, 36.125244, 37.924942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523460, 36.342663, 37.961060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259820, 0.243678, 0.934406,
		0.485892, 0.803229, -0.344576,
		-0.834508, 0.543548, 0.090294,
		33.273109, 36.505726, 37.988148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021980, 36.747742, 38.201679>,  <33.857262, 36.125244, 37.924942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021980, 36.747742, 38.201679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642124, 36.676300, 38.304657>,  <33.414211, 36.633434, 38.366444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642124, 36.676300, 38.304657>,  <34.021980, 36.747742, 38.201679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642124, 36.676300, 38.304657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242482, 0.101442, 0.964838,
		-0.198441, 0.978677, -0.053025,
		-0.949644, -0.178606, 0.257442,
		33.357231, 36.622719, 38.381889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762436, 37.319675, 38.604130>,  <34.021980, 36.747742, 38.201679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762436, 37.319675, 38.604130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544613, 36.991905, 38.675674>,  <33.413918, 36.795242, 38.718601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544613, 36.991905, 38.675674>,  <33.762436, 37.319675, 38.604130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544613, 36.991905, 38.675674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156844, 0.110007, 0.981478,
		-0.823928, 0.562524, 0.068618,
		-0.544557, -0.819430, 0.178866,
		33.381245, 36.746075, 38.729336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478600, 37.565308, 39.139675>,  <33.762436, 37.319675, 38.604130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478600, 37.565308, 39.139675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402412, 37.172665, 39.144772>,  <33.356701, 36.937077, 39.147831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402412, 37.172665, 39.144772>,  <33.478600, 37.565308, 39.139675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402412, 37.172665, 39.144772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115947, -0.009606, 0.993209,
		-0.974821, 0.190656, 0.115644,
		-0.190472, -0.981610, 0.012742,
		33.345272, 36.878181, 39.148594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920784, 37.441982, 39.714798>,  <33.478600, 37.565308, 39.139675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920784, 37.441982, 39.714798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100338, 37.091225, 39.646023>,  <33.208069, 36.880772, 39.604759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100338, 37.091225, 39.646023>,  <32.920784, 37.441982, 39.714798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100338, 37.091225, 39.646023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043171, -0.213465, 0.975996,
		-0.892548, -0.430684, -0.133676,
		0.448881, -0.876894, -0.171934,
		33.235001, 36.828156, 39.594444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523571, 36.952442, 40.080883>,  <32.920784, 37.441982, 39.714798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523571, 36.952442, 40.080883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841370, 36.724751, 39.996265>,  <33.032051, 36.588135, 39.945496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841370, 36.724751, 39.996265>,  <32.523571, 36.952442, 40.080883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841370, 36.724751, 39.996265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058230, -0.418155, 0.906507,
		-0.604468, -0.707901, -0.365370,
		0.794499, -0.569230, -0.211540,
		33.079720, 36.553982, 39.932804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313797, 36.307507, 40.361511>,  <32.523571, 36.952442, 40.080883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313797, 36.307507, 40.361511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712036, 36.299305, 40.324913>,  <32.950977, 36.294384, 40.302952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712036, 36.299305, 40.324913>,  <32.313797, 36.307507, 40.361511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712036, 36.299305, 40.324913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072234, -0.454502, 0.887812,
		-0.059786, -0.890510, -0.451019,
		0.995594, -0.020499, -0.091498,
		33.010715, 36.293156, 40.297462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677193, 35.594292, 40.321674>,  <32.313797, 36.307507, 40.361511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677193, 35.594292, 40.321674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956795, 35.832932, 40.479389>,  <33.124554, 35.976116, 40.574017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956795, 35.832932, 40.479389>,  <32.677193, 35.594292, 40.321674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956795, 35.832932, 40.479389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059918, -0.598284, 0.799041,
		0.712604, -0.534907, -0.453949,
		0.699003, 0.596600, 0.394289,
		33.166496, 36.011909, 40.597675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039124, 35.160679, 40.573124>,  <32.677193, 35.594292, 40.321674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039124, 35.160679, 40.573124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159058, 35.487507, 40.770100>,  <33.231018, 35.683605, 40.888283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159058, 35.487507, 40.770100>,  <33.039124, 35.160679, 40.573124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159058, 35.487507, 40.770100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102670, -0.485551, 0.868158,
		0.948449, -0.310866, -0.061698,
		0.299838, 0.817069, 0.492437,
		33.249008, 35.732628, 40.917831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483292, 34.895996, 41.115963>,  <33.039124, 35.160679, 40.573124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483292, 34.895996, 41.115963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365768, 35.259716, 41.233841>,  <33.295254, 35.477947, 41.304569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365768, 35.259716, 41.233841>,  <33.483292, 34.895996, 41.115963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365768, 35.259716, 41.233841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091101, -0.280265, 0.955590,
		0.951512, 0.307610, -0.000494,
		-0.293811, 0.909300, 0.294700,
		33.277626, 35.532505, 41.322250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944668, 35.124359, 41.688377>,  <33.483292, 34.895996, 41.115963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944668, 35.124359, 41.688377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615978, 35.343830, 41.749989>,  <33.418766, 35.475513, 41.786957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615978, 35.343830, 41.749989>,  <33.944668, 35.124359, 41.688377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615978, 35.343830, 41.749989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030485, -0.312214, 0.949523,
		0.569077, 0.775545, 0.273279,
		-0.821719, 0.548682, 0.154031,
		33.369461, 35.508434, 41.796196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064911, 35.424164, 42.379997>,  <33.944668, 35.124359, 41.688377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064911, 35.424164, 42.379997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670704, 35.434311, 42.312927>,  <33.434181, 35.440399, 42.272686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670704, 35.434311, 42.312927>,  <34.064911, 35.424164, 42.379997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670704, 35.434311, 42.312927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166543, -0.331199, 0.928747,
		-0.031978, 0.943220, 0.330625,
		-0.985515, 0.025364, -0.167678,
		33.375050, 35.441921, 42.262623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747795, 35.846931, 42.950249>,  <34.064911, 35.424164, 42.379997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747795, 35.846931, 42.950249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456112, 35.618477, 42.799484>,  <33.281101, 35.481403, 42.709026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456112, 35.618477, 42.799484>,  <33.747795, 35.846931, 42.950249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456112, 35.618477, 42.799484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305647, -0.220956, 0.926153,
		-0.612236, 0.790561, -0.013441,
		-0.729210, -0.571132, -0.376909,
		33.237350, 35.447136, 42.686413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305466, 36.044872, 43.341080>,  <33.747795, 35.846931, 42.950249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305466, 36.044872, 43.341080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168015, 35.696175, 43.201370>,  <33.085545, 35.486958, 43.117546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168015, 35.696175, 43.201370>,  <33.305466, 36.044872, 43.341080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168015, 35.696175, 43.201370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373147, -0.214555, 0.902623,
		-0.861790, 0.440495, -0.251560,
		-0.343628, -0.871740, -0.349270,
		33.064926, 35.434654, 43.096588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467331, 36.063965, 43.498535>,  <33.305466, 36.044872, 43.341080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467331, 36.063965, 43.498535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579308, 35.690247, 43.410236>,  <32.646496, 35.466015, 43.357258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579308, 35.690247, 43.410236>,  <32.467331, 36.063965, 43.498535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579308, 35.690247, 43.410236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265359, -0.296288, 0.917495,
		-0.922614, -0.198269, -0.330867,
		0.279943, -0.934292, -0.220747,
		32.663292, 35.409958, 43.344013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837429, 35.744862, 43.762901>,  <32.467331, 36.063965, 43.498535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837429, 35.744862, 43.762901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132832, 35.475506, 43.749290>,  <32.310074, 35.313892, 43.741123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132832, 35.475506, 43.749290>,  <31.837429, 35.744862, 43.762901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132832, 35.475506, 43.749290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295851, -0.368983, 0.881092,
		-0.605869, -0.640627, -0.471719,
		0.738508, -0.673385, -0.034025,
		32.354385, 35.273491, 43.739082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530449, 35.183651, 44.060768>,  <31.837429, 35.744862, 43.762901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530449, 35.183651, 44.060768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926718, 35.133160, 44.081314>,  <32.164478, 35.102863, 44.093643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926718, 35.133160, 44.081314>,  <31.530449, 35.183651, 44.060768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926718, 35.133160, 44.081314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103016, -0.446854, 0.888656,
		-0.089221, -0.885657, -0.455688,
		0.990670, -0.126230, 0.051368,
		32.223919, 35.095291, 44.096725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650473, 34.694443, 44.612358>,  <31.530449, 35.183651, 44.060768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650473, 34.694443, 44.612358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026608, 34.828472, 44.588718>,  <32.252289, 34.908890, 44.574535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026608, 34.828472, 44.588718>,  <31.650473, 34.694443, 44.612358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026608, 34.828472, 44.588718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121917, -0.169659, 0.977932,
		0.317650, -0.926792, -0.200388,
		0.940337, 0.335071, -0.059100,
		32.308708, 34.928993, 44.570988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091110, 34.297314, 45.055889>,  <31.650473, 34.694443, 44.612358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091110, 34.297314, 45.055889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298218, 34.638451, 45.028828>,  <32.422482, 34.843132, 45.012592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298218, 34.638451, 45.028828>,  <32.091110, 34.297314, 45.055889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298218, 34.638451, 45.028828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211960, -0.051270, 0.975933,
		0.828848, -0.519647, -0.207314,
		0.517770, 0.852842, -0.067650,
		32.453548, 34.894302, 45.008533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705620, 34.231461, 45.480419>,  <32.091110, 34.297314, 45.055889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705620, 34.231461, 45.480419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638481, 34.623753, 45.440414>,  <32.598198, 34.859127, 45.416412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638481, 34.623753, 45.440414>,  <32.705620, 34.231461, 45.480419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638481, 34.623753, 45.440414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306071, 0.148275, 0.940391,
		0.937096, 0.127229, -0.325060,
		-0.167843, 0.980728, -0.100007,
		32.588127, 34.917973, 45.410412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318802, 34.564995, 45.752201>,  <32.705620, 34.231461, 45.480419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318802, 34.564995, 45.752201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021694, 34.832195, 45.770428>,  <32.843430, 34.992516, 45.781364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021694, 34.832195, 45.770428>,  <33.318802, 34.564995, 45.752201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021694, 34.832195, 45.770428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329157, 0.305039, 0.893648,
		0.583055, 0.678771, -0.446449,
		-0.742767, 0.667998, 0.045568,
		32.798862, 35.032593, 45.784100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612190, 35.211819, 45.949242>,  <33.318802, 34.564995, 45.752201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612190, 35.211819, 45.949242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224747, 35.209476, 46.048656>,  <32.992283, 35.208073, 46.108307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224747, 35.209476, 46.048656>,  <33.612190, 35.211819, 45.949242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224747, 35.209476, 46.048656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248602, -0.017413, 0.968449,
		-0.001341, 0.999831, 0.018322,
		-0.968605, -0.005854, 0.248537,
		32.934166, 35.207722, 46.123219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588196, 35.635086, 46.592815>,  <33.612190, 35.211819, 45.949242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588196, 35.635086, 46.592815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268108, 35.399746, 46.546360>,  <33.076054, 35.258541, 46.518486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268108, 35.399746, 46.546360>,  <33.588196, 35.635086, 46.592815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268108, 35.399746, 46.546360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032854, -0.236382, 0.971105,
		-0.598802, 0.773285, 0.208488,
		-0.800223, -0.588349, -0.116141,
		33.028042, 35.223240, 46.511517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964733, 35.965889, 47.009888>,  <33.588196, 35.635086, 46.592815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964733, 35.965889, 47.009888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926743, 35.568024, 46.993790>,  <32.903950, 35.329304, 46.984131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926743, 35.568024, 46.993790>,  <32.964733, 35.965889, 47.009888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926743, 35.568024, 46.993790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024621, -0.038072, 0.998972,
		-0.995175, 0.095866, -0.020874,
		-0.094973, -0.994666, -0.040249,
		32.898251, 35.269623, 46.981716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605972, 35.824280, 47.647278>,  <32.964733, 35.965889, 47.009888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605972, 35.824280, 47.647278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705719, 35.459393, 47.517250>,  <32.765568, 35.240459, 47.439232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705719, 35.459393, 47.517250>,  <32.605972, 35.824280, 47.647278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705719, 35.459393, 47.517250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159283, -0.292469, 0.942916,
		-0.955220, -0.286911, 0.072369,
		0.249367, -0.912220, -0.325072,
		32.780529, 35.185726, 47.419727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397854, 35.386917, 48.221565>,  <32.605972, 35.824280, 47.647278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397854, 35.386917, 48.221565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615398, 35.143799, 47.990120>,  <32.745926, 34.997929, 47.851254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615398, 35.143799, 47.990120>,  <32.397854, 35.386917, 48.221565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615398, 35.143799, 47.990120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196987, -0.577774, 0.792070,
		-0.815726, -0.544757, -0.194502,
		0.543863, -0.607797, -0.578615,
		32.778557, 34.961460, 47.816536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272373, 34.701580, 48.410763>,  <32.397854, 35.386917, 48.221565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272373, 34.701580, 48.410763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635376, 34.689602, 48.243172>,  <32.853176, 34.682415, 48.142616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635376, 34.689602, 48.243172>,  <32.272373, 34.701580, 48.410763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635376, 34.689602, 48.243172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317153, -0.605145, 0.730215,
		-0.275407, -0.795552, -0.539674,
		0.907505, -0.029947, -0.418973,
		32.907627, 34.680618, 48.117481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462074, 33.977959, 48.371243>,  <32.272373, 34.701580, 48.410763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462074, 33.977959, 48.371243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777378, 34.220230, 48.414688>,  <32.966560, 34.365593, 48.440758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777378, 34.220230, 48.414688>,  <32.462074, 33.977959, 48.371243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777378, 34.220230, 48.414688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296085, -0.528068, 0.795914,
		0.539430, -0.595224, -0.595587,
		0.788257, 0.605683, 0.108619,
		33.013855, 34.401936, 48.447273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807037, 33.588150, 48.763836>,  <32.462074, 33.977959, 48.371243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807037, 33.588150, 48.763836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068748, 33.885567, 48.819054>,  <33.225777, 34.064018, 48.852184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068748, 33.885567, 48.819054>,  <32.807037, 33.588150, 48.763836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068748, 33.885567, 48.819054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310810, -0.430789, 0.847241,
		0.689429, -0.511430, -0.512959,
		0.654282, 0.743546, 0.138041,
		33.265034, 34.108631, 48.860466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405979, 33.332176, 49.015427>,  <32.807037, 33.588150, 48.763836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405979, 33.332176, 49.015427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446747, 33.712803, 49.131454>,  <33.471207, 33.941177, 49.201073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446747, 33.712803, 49.131454>,  <33.405979, 33.332176, 49.015427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446747, 33.712803, 49.131454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334185, -0.307391, 0.890972,
		0.936981, 0.006134, -0.349326,
		0.101915, 0.951564, 0.290069,
		33.477322, 33.998272, 49.218475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218994, 33.459682, 49.294884>,  <33.405979, 33.332176, 49.015427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218994, 33.459682, 49.294884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961788, 33.720818, 49.455051>,  <33.807465, 33.877499, 49.551151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961788, 33.720818, 49.455051>,  <34.218994, 33.459682, 49.294884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961788, 33.720818, 49.455051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300581, -0.265760, 0.915982,
		0.704402, 0.709349, -0.025342,
		-0.643016, 0.652836, 0.400419,
		33.768883, 33.916668, 49.575176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555935, 33.514645, 49.808784>,  <34.218994, 33.459682, 49.294884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555935, 33.514645, 49.808784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190338, 33.658199, 49.884487>,  <33.970982, 33.744331, 49.929909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190338, 33.658199, 49.884487>,  <34.555935, 33.514645, 49.808784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190338, 33.658199, 49.884487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055444, -0.351610, 0.934503,
		0.401927, 0.864621, 0.301471,
		-0.913992, 0.358887, 0.189260,
		33.916142, 33.765865, 49.941265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547939, 33.748692, 50.510162>,  <34.555935, 33.514645, 49.808784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547939, 33.748692, 50.510162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157619, 33.717392, 50.428486>,  <33.923428, 33.698612, 50.379478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157619, 33.717392, 50.428486>,  <34.547939, 33.748692, 50.510162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157619, 33.717392, 50.428486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158946, -0.387488, 0.908069,
		-0.150174, 0.918548, 0.365673,
		-0.975799, -0.078246, -0.204190,
		33.864880, 33.693916, 50.367229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195660, 34.013657, 51.164753>,  <34.547939, 33.748692, 50.510162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195660, 34.013657, 51.164753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946159, 33.768936, 50.970169>,  <33.796459, 33.622105, 50.853420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946159, 33.768936, 50.970169>,  <34.195660, 34.013657, 51.164753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946159, 33.768936, 50.970169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172417, -0.499336, 0.849079,
		-0.762371, 0.613485, 0.205975,
		-0.623748, -0.611800, -0.486455,
		33.759033, 33.585396, 50.824234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669388, 34.045467, 51.583786>,  <34.195660, 34.013657, 51.164753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669388, 34.045467, 51.583786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636917, 33.704025, 51.377964>,  <33.617435, 33.499161, 51.254471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636917, 33.704025, 51.377964>,  <33.669388, 34.045467, 51.583786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636917, 33.704025, 51.377964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195294, -0.492629, 0.848044,
		-0.977379, 0.169334, -0.126712,
		-0.081181, -0.853606, -0.514555,
		33.612564, 33.447945, 51.223598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004787, 33.756832, 51.614922>,  <33.669388, 34.045467, 51.583786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004787, 33.756832, 51.614922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254829, 33.447922, 51.569588>,  <33.404854, 33.262577, 51.542385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254829, 33.447922, 51.569588>,  <33.004787, 33.756832, 51.614922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254829, 33.447922, 51.569588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314312, -0.381960, 0.869088,
		-0.714463, -0.507644, -0.481498,
		0.625101, -0.772272, -0.113338,
		33.442360, 33.216240, 51.535587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681194, 33.173012, 51.856621>,  <33.004787, 33.756832, 51.614922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681194, 33.173012, 51.856621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077137, 33.116966, 51.865967>,  <33.314705, 33.083340, 51.871574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077137, 33.116966, 51.865967>,  <32.681194, 33.173012, 51.856621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077137, 33.116966, 51.865967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096613, -0.543455, 0.833860,
		-0.104136, -0.827662, -0.551481,
		0.989860, -0.140115, 0.023370,
		33.374096, 33.074932, 51.872978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887897, 32.408924, 51.871460>,  <32.681194, 33.173012, 51.856621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887897, 32.408924, 51.871460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118702, 32.640877, 52.101521>,  <33.257183, 32.780048, 52.239555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118702, 32.640877, 52.101521>,  <32.887897, 32.408924, 51.871460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118702, 32.640877, 52.101521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343986, -0.466161, 0.815088,
		0.740766, -0.668157, -0.069509,
		0.577009, 0.579879, 0.575153,
		33.291805, 32.814842, 52.274067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423622, 32.099895, 52.327328>,  <32.887897, 32.408924, 51.871460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423622, 32.099895, 52.327328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269642, 32.426495, 52.499443>,  <33.177254, 32.622452, 52.602711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269642, 32.426495, 52.499443>,  <33.423622, 32.099895, 52.327328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269642, 32.426495, 52.499443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396745, -0.567337, 0.721611,
		0.833311, 0.107069, 0.542337,
		-0.384949, 0.816496, 0.430289,
		33.154156, 32.671444, 52.628529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610813, 32.102898, 52.947823>,  <33.423622, 32.099895, 52.327328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610813, 32.102898, 52.947823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268227, 32.308613, 52.930069>,  <33.062675, 32.432041, 52.919415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268227, 32.308613, 52.930069>,  <33.610813, 32.102898, 52.947823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268227, 32.308613, 52.930069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388819, -0.586176, 0.710787,
		0.339528, 0.626026, 0.702006,
		-0.856470, 0.514285, -0.044388,
		33.011284, 32.462898, 52.916752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049358, 31.557325, 52.642853>,  <33.610813, 32.102898, 52.947823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049358, 31.557325, 52.642853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375996, 31.368820, 52.509533>,  <34.571976, 31.255716, 52.429539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375996, 31.368820, 52.509533>,  <34.049358, 31.557325, 52.642853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375996, 31.368820, 52.509533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440163, -0.134846, -0.887735,
		0.373414, 0.871623, -0.317547,
		0.816590, -0.471265, -0.333302,
		34.620972, 31.227440, 52.409542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484444, 31.820686, 51.963562>,  <34.049358, 31.557325, 52.642853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484444, 31.820686, 51.963562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484859, 31.423058, 52.007050>,  <34.485111, 31.184481, 52.033142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484859, 31.423058, 52.007050>,  <34.484444, 31.820686, 51.963562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484859, 31.423058, 52.007050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365048, -0.101596, -0.925429,
		0.930988, -0.038722, -0.362990,
		0.001043, -0.994072, 0.108720,
		34.485172, 31.124836, 52.039665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846489, 31.395111, 51.403034>,  <34.484444, 31.820686, 51.963562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846489, 31.395111, 51.403034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553326, 31.160772, 51.541382>,  <34.377426, 31.020170, 51.624390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553326, 31.160772, 51.541382>,  <34.846489, 31.395111, 51.403034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553326, 31.160772, 51.541382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150722, -0.355934, -0.922276,
		0.663419, -0.728077, 0.172568,
		-0.732911, -0.585846, 0.345871,
		34.333454, 30.985018, 51.645142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987473, 30.723351, 51.085876>,  <34.846489, 31.395111, 51.403034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987473, 30.723351, 51.085876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606594, 30.762802, 51.201527>,  <34.378067, 30.786472, 51.270916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606594, 30.762802, 51.201527>,  <34.987473, 30.723351, 51.085876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606594, 30.762802, 51.201527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305117, -0.260409, -0.916019,
		-0.015054, -0.960448, 0.278054,
		-0.952196, 0.098628, 0.289129,
		34.320934, 30.792391, 51.288265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551426, 30.071573, 50.911594>,  <34.987473, 30.723351, 51.085876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551426, 30.071573, 50.911594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325794, 30.401552, 50.925892>,  <34.190414, 30.599541, 50.934471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325794, 30.401552, 50.925892>,  <34.551426, 30.071573, 50.911594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325794, 30.401552, 50.925892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327148, -0.183532, -0.926979,
		-0.758151, -0.534579, 0.373407,
		-0.564075, 0.824949, 0.035741,
		34.156570, 30.649036, 50.936615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862171, 29.882748, 50.580719>,  <34.551426, 30.071573, 50.911594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862171, 29.882748, 50.580719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917210, 30.268469, 50.490219>,  <33.950233, 30.499901, 50.435917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917210, 30.268469, 50.490219>,  <33.862171, 29.882748, 50.580719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917210, 30.268469, 50.490219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072244, -0.237587, -0.968676,
		-0.987850, 0.116942, -0.102356,
		0.137598, 0.964301, -0.226252,
		33.958488, 30.557758, 50.422344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631565, 30.001583, 49.886024>,  <33.862171, 29.882748, 50.580719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631565, 30.001583, 49.886024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871975, 30.320755, 49.904240>,  <34.016220, 30.512259, 49.915169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871975, 30.320755, 49.904240>,  <33.631565, 30.001583, 49.886024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871975, 30.320755, 49.904240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137286, -0.046939, -0.989419,
		-0.787349, 0.600920, -0.137757,
		0.601027, 0.797930, 0.045540,
		34.052284, 30.560135, 49.917900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530346, 30.420910, 49.231895>,  <33.631565, 30.001583, 49.886024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530346, 30.420910, 49.231895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871696, 30.572851, 49.374699>,  <34.076508, 30.664017, 49.460381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871696, 30.572851, 49.374699>,  <33.530346, 30.420910, 49.231895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871696, 30.572851, 49.374699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294988, 0.212762, -0.931512,
		-0.429796, 0.900246, 0.069515,
		0.853380, 0.379854, 0.357006,
		34.127712, 30.686808, 49.481800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523510, 31.003428, 48.918392>,  <33.530346, 30.420910, 49.231895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523510, 31.003428, 48.918392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903656, 30.938425, 49.024525>,  <34.131744, 30.899424, 49.088203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903656, 30.938425, 49.024525>,  <33.523510, 31.003428, 48.918392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903656, 30.938425, 49.024525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284686, 0.110065, -0.952281,
		0.125548, 0.980550, 0.150865,
		0.950364, -0.162506, 0.265330,
		34.188766, 30.889673, 49.104122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862823, 31.506710, 48.623421>,  <33.523510, 31.003428, 48.918392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862823, 31.506710, 48.623421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174519, 31.272791, 48.713573>,  <34.361538, 31.132439, 48.767666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174519, 31.272791, 48.713573>,  <33.862823, 31.506710, 48.623421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174519, 31.272791, 48.713573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447475, 0.267363, -0.853395,
		0.438807, 0.765850, 0.470023,
		0.779240, -0.584800, 0.225378,
		34.408291, 31.097351, 48.781185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476105, 31.873341, 48.470329>,  <33.862823, 31.506710, 48.623421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476105, 31.873341, 48.470329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653858, 31.515469, 48.488525>,  <34.760509, 31.300745, 48.499443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653858, 31.515469, 48.488525>,  <34.476105, 31.873341, 48.470329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653858, 31.515469, 48.488525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743760, 0.340170, -0.575418,
		0.499341, 0.289541, 0.816594,
		0.444388, -0.894679, 0.045488,
		34.787174, 31.247065, 48.502171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186794, 31.851408, 48.653595>,  <34.476105, 31.873341, 48.470329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186794, 31.851408, 48.653595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142635, 31.516899, 48.438763>,  <35.116142, 31.316193, 48.309864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142635, 31.516899, 48.438763>,  <35.186794, 31.851408, 48.653595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142635, 31.516899, 48.438763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761453, 0.276131, -0.586465,
		0.638751, -0.473707, 0.606300,
		-0.110394, -0.836274, -0.537084,
		35.109516, 31.266018, 48.277637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836407, 31.486092, 48.510628>,  <35.186794, 31.851408, 48.653595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836407, 31.486092, 48.510628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591560, 31.384993, 48.210911>,  <35.444653, 31.324333, 48.031082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591560, 31.384993, 48.210911>,  <35.836407, 31.486092, 48.510628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591560, 31.384993, 48.210911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643796, 0.390935, -0.657797,
		0.459181, -0.885036, -0.076578,
		-0.612111, -0.252748, -0.749292,
		35.407928, 31.309168, 47.986122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233364, 31.613880, 48.012478>,  <35.836407, 31.486092, 48.510628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233364, 31.613880, 48.012478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884377, 31.522163, 47.839867>,  <35.674984, 31.467133, 47.736298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884377, 31.522163, 47.839867>,  <36.233364, 31.613880, 48.012478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884377, 31.522163, 47.839867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303767, 0.437250, -0.846486,
		0.382777, -0.869620, -0.311838,
		-0.872472, -0.229289, -0.431530,
		35.622635, 31.453375, 47.710407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350986, 31.180508, 47.452381>,  <36.233364, 31.613880, 48.012478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350986, 31.180508, 47.452381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998695, 31.344467, 47.357475>,  <35.787319, 31.442842, 47.300533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998695, 31.344467, 47.357475>,  <36.350986, 31.180508, 47.452381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998695, 31.344467, 47.357475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355324, 0.240648, -0.903235,
		-0.313139, -0.879813, -0.357594,
		-0.880732, 0.409900, -0.237262,
		35.734474, 31.467438, 47.286297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209965, 30.966536, 46.716965>,  <36.350986, 31.180508, 47.452381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209965, 30.966536, 46.716965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954918, 31.262873, 46.801441>,  <35.801891, 31.440674, 46.852127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954918, 31.262873, 46.801441>,  <36.209965, 30.966536, 46.716965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954918, 31.262873, 46.801441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181672, 0.411022, -0.893340,
		-0.748627, -0.531239, -0.396664,
		-0.637615, 0.740841, 0.211191,
		35.763634, 31.485125, 46.864799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728680, 31.081533, 46.189804>,  <36.209965, 30.966536, 46.716965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728680, 31.081533, 46.189804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763309, 31.435398, 46.373055>,  <35.784088, 31.647717, 46.483006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763309, 31.435398, 46.373055>,  <35.728680, 31.081533, 46.189804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763309, 31.435398, 46.373055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053088, 0.455101, -0.888856,
		-0.994830, 0.101271, -0.007565,
		0.086573, 0.884662, 0.458124,
		35.789280, 31.700796, 46.510490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212463, 31.382948, 45.905804>,  <35.728680, 31.081533, 46.189804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212463, 31.382948, 45.905804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474567, 31.652142, 46.043049>,  <35.631832, 31.813658, 46.125397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474567, 31.652142, 46.043049>,  <35.212463, 31.382948, 45.905804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474567, 31.652142, 46.043049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004910, 0.457994, -0.888942,
		-0.755385, 0.580806, 0.303411,
		0.655263, 0.672983, 0.343110,
		35.671146, 31.854036, 46.145981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002323, 32.010349, 45.700138>,  <35.212463, 31.382948, 45.905804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002323, 32.010349, 45.700138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380795, 32.105099, 45.788353>,  <35.607876, 32.161949, 45.841282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380795, 32.105099, 45.788353>,  <35.002323, 32.010349, 45.700138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380795, 32.105099, 45.788353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018940, 0.639719, -0.768376,
		-0.323086, 0.731199, 0.600803,
		0.946180, 0.236873, 0.220533,
		35.664650, 32.176159, 45.854511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052650, 32.751736, 45.730991>,  <35.002323, 32.010349, 45.700138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052650, 32.751736, 45.730991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435066, 32.644360, 45.683788>,  <35.664516, 32.579933, 45.655468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435066, 32.644360, 45.683788>,  <35.052650, 32.751736, 45.730991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435066, 32.644360, 45.683788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107130, 0.694371, -0.711598,
		0.272959, 0.667676, 0.692606,
		0.956042, -0.268436, -0.118007,
		35.721878, 32.563828, 45.648388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420494, 33.416569, 45.723778>,  <35.052650, 32.751736, 45.730991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420494, 33.416569, 45.723778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667065, 33.143978, 45.565983>,  <35.815006, 32.980423, 45.471306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667065, 33.143978, 45.565983>,  <35.420494, 33.416569, 45.723778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667065, 33.143978, 45.565983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177177, 0.608177, -0.773776,
		0.767224, 0.407079, 0.495635,
		0.616422, -0.681474, -0.394483,
		35.851990, 32.939537, 45.447639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046188, 33.735973, 45.656281>,  <35.420494, 33.416569, 45.723778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046188, 33.735973, 45.656281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027817, 33.443062, 45.384499>,  <36.016796, 33.267315, 45.221428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027817, 33.443062, 45.384499>,  <36.046188, 33.735973, 45.656281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027817, 33.443062, 45.384499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051960, 0.677500, -0.733685,
		0.997593, -0.069000, 0.006934,
		-0.045926, -0.732279, -0.679454,
		36.014038, 33.223377, 45.180664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654007, 33.791805, 45.142704>,  <36.046188, 33.735973, 45.656281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654007, 33.791805, 45.142704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359901, 33.585190, 44.967171>,  <36.183437, 33.461220, 44.861851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359901, 33.585190, 44.967171>,  <36.654007, 33.791805, 45.142704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359901, 33.585190, 44.967171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073851, 0.582543, -0.809438,
		0.673746, -0.627558, -0.390176,
		-0.735264, -0.516540, -0.438832,
		36.139320, 33.430229, 44.835522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074390, 33.577244, 44.588955>,  <36.654007, 33.791805, 45.142704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074390, 33.577244, 44.588955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683094, 33.544083, 44.512886>,  <36.448315, 33.524185, 44.467247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683094, 33.544083, 44.512886>,  <37.074390, 33.577244, 44.588955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683094, 33.544083, 44.512886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145309, 0.380438, -0.913319,
		0.148060, -0.921083, -0.360116,
		-0.978245, -0.082898, -0.190170,
		36.389622, 33.519215, 44.455833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038723, 33.397755, 43.927555>,  <37.074390, 33.577244, 44.588955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038723, 33.397755, 43.927555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657921, 33.505707, 43.985310>,  <36.429440, 33.570480, 44.019962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657921, 33.505707, 43.985310>,  <37.038723, 33.397755, 43.927555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657921, 33.505707, 43.985310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038257, 0.363111, -0.930960,
		-0.303681, -0.891803, -0.335359,
		-0.952006, 0.269885, 0.144388,
		36.372318, 33.586674, 44.028625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614342, 33.175793, 43.285366>,  <37.038723, 33.397755, 43.927555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614342, 33.175793, 43.285366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395737, 33.453857, 43.472157>,  <36.264572, 33.620697, 43.584232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395737, 33.453857, 43.472157>,  <36.614342, 33.175793, 43.285366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395737, 33.453857, 43.472157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252665, 0.394765, -0.883358,
		-0.798425, -0.600757, -0.040101,
		-0.546514, 0.695163, 0.466981,
		36.231781, 33.662407, 43.612251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997410, 33.154758, 43.064701>,  <36.614342, 33.175793, 43.285366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997410, 33.154758, 43.064701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032856, 33.533791, 43.187500>,  <36.054123, 33.761208, 43.261181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032856, 33.533791, 43.187500>,  <35.997410, 33.154758, 43.064701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032856, 33.533791, 43.187500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077675, 0.313844, -0.946292,
		-0.993032, 0.060012, 0.101415,
		0.088617, 0.947576, 0.306996,
		36.059441, 33.818062, 43.279598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784714, 33.510578, 42.568314>,  <35.997410, 33.154758, 43.064701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784714, 33.510578, 42.568314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895596, 33.830971, 42.780575>,  <35.962124, 34.023205, 42.907932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895596, 33.830971, 42.780575>,  <35.784714, 33.510578, 42.568314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895596, 33.830971, 42.780575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132894, 0.578952, -0.804459,
		-0.951576, 0.152480, 0.266933,
		0.277205, 0.800977, 0.530653,
		35.978756, 34.071262, 42.939770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317291, 34.067860, 42.497726>,  <35.784714, 33.510578, 42.568314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317291, 34.067860, 42.497726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669220, 34.238075, 42.582420>,  <35.880379, 34.340202, 42.633236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669220, 34.238075, 42.582420>,  <35.317291, 34.067860, 42.497726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669220, 34.238075, 42.582420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094138, 0.592664, -0.799930,
		-0.465887, 0.683864, 0.561498,
		0.879822, 0.425535, 0.211736,
		35.933167, 34.365734, 42.645943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278587, 34.699810, 42.310963>,  <35.317291, 34.067860, 42.497726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278587, 34.699810, 42.310963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678001, 34.703598, 42.332237>,  <35.917652, 34.705872, 42.345001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678001, 34.703598, 42.332237>,  <35.278587, 34.699810, 42.310963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678001, 34.703598, 42.332237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042031, 0.482302, -0.874996,
		-0.033938, 0.875954, 0.481199,
		0.998540, 0.009470, 0.053186,
		35.977562, 34.706440, 42.348194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561684, 35.396145, 42.132446>,  <35.278587, 34.699810, 42.310963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561684, 35.396145, 42.132446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848877, 35.125809, 42.065823>,  <36.021194, 34.963608, 42.025848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848877, 35.125809, 42.065823>,  <35.561684, 35.396145, 42.132446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848877, 35.125809, 42.065823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057371, 0.295933, -0.953484,
		0.693691, 0.675031, 0.251249,
		0.717985, -0.675837, -0.166558,
		36.064274, 34.923058, 42.015854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964451, 35.720631, 41.688740>,  <35.561684, 35.396145, 42.132446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964451, 35.720631, 41.688740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087410, 35.345909, 41.621918>,  <36.161186, 35.121078, 41.581825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087410, 35.345909, 41.621918>,  <35.964451, 35.720631, 41.688740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087410, 35.345909, 41.621918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059434, 0.194118, -0.979176,
		0.949722, 0.291071, 0.115350,
		0.307401, -0.936801, -0.167059,
		36.179630, 35.064869, 41.571800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341652, 35.771667, 41.046619>,  <35.964451, 35.720631, 41.688740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341652, 35.771667, 41.046619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329861, 35.373146, 41.078903>,  <36.322784, 35.134033, 41.098274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329861, 35.373146, 41.078903>,  <36.341652, 35.771667, 41.046619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329861, 35.373146, 41.078903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215918, -0.072492, -0.973717,
		0.975966, -0.046130, -0.212983,
		-0.029478, -0.996302, 0.080710,
		36.321018, 35.074257, 41.103115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709206, 35.526569, 40.430168>,  <36.341652, 35.771667, 41.046619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709206, 35.526569, 40.430168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473557, 35.232803, 40.564968>,  <36.332169, 35.056545, 40.645847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473557, 35.232803, 40.564968>,  <36.709206, 35.526569, 40.430168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473557, 35.232803, 40.564968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374934, -0.120999, -0.919121,
		0.715792, -0.667829, -0.204073,
		-0.589123, -0.734414, 0.337003,
		36.296818, 35.012478, 40.666069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726696, 34.996906, 39.966835>,  <36.709206, 35.526569, 40.430168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726696, 34.996906, 39.966835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380692, 34.901360, 40.143333>,  <36.173088, 34.844032, 40.249233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380692, 34.901360, 40.143333>,  <36.726696, 34.996906, 39.966835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380692, 34.901360, 40.143333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343917, -0.358075, -0.868045,
		0.365350, -0.902620, 0.227587,
		-0.865008, -0.238869, 0.441249,
		36.121189, 34.829700, 40.275707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496674, 34.303932, 39.722233>,  <36.726696, 34.996906, 39.966835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496674, 34.303932, 39.722233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151379, 34.460823, 39.849339>,  <35.944202, 34.554958, 39.925602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151379, 34.460823, 39.849339>,  <36.496674, 34.303932, 39.722233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151379, 34.460823, 39.849339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435915, -0.261796, -0.861069,
		-0.254517, -0.881841, 0.396960,
		-0.863249, 0.392198, 0.317777,
		35.892406, 34.578491, 39.944668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034767, 33.827690, 39.577690>,  <36.496674, 34.303932, 39.722233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034767, 33.827690, 39.577690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816936, 34.159187, 39.629257>,  <35.686237, 34.358086, 39.660198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816936, 34.159187, 39.629257>,  <36.034767, 33.827690, 39.577690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816936, 34.159187, 39.629257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520839, -0.213686, -0.826477,
		-0.657388, -0.517230, 0.548010,
		-0.544581, 0.828741, 0.128919,
		35.653561, 34.407810, 39.667934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321846, 33.656891, 39.493885>,  <36.034767, 33.827690, 39.577690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321846, 33.656891, 39.493885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339775, 34.051517, 39.431053>,  <35.350533, 34.288296, 39.393356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339775, 34.051517, 39.431053>,  <35.321846, 33.656891, 39.493885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339775, 34.051517, 39.431053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542181, -0.108039, -0.833287,
		-0.839066, 0.122512, 0.530057,
		0.044821, 0.986569, -0.157075,
		35.353222, 34.347488, 39.383930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674255, 33.865707, 39.148441>,  <35.321846, 33.656891, 39.493885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674255, 33.865707, 39.148441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913776, 34.170616, 39.050152>,  <35.057487, 34.353561, 38.991177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913776, 34.170616, 39.050152>,  <34.674255, 33.865707, 39.148441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913776, 34.170616, 39.050152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413190, 0.031198, -0.910110,
		-0.686086, 0.646503, 0.333645,
		0.598798, 0.762273, -0.245724,
		35.093414, 34.399300, 38.976433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300335, 34.396225, 38.766911>,  <34.674255, 33.865707, 39.148441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300335, 34.396225, 38.766911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677040, 34.480587, 38.662148>,  <34.903065, 34.531204, 38.599289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677040, 34.480587, 38.662148>,  <34.300335, 34.396225, 38.766911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677040, 34.480587, 38.662148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293188, 0.133595, -0.946675,
		-0.164672, 0.968334, 0.187651,
		0.941767, 0.210908, -0.261904,
		34.959572, 34.543858, 38.583576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278038, 34.954483, 38.287285>,  <34.300335, 34.396225, 38.766911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278038, 34.954483, 38.287285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619152, 34.763302, 38.203075>,  <34.823822, 34.648594, 38.152550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619152, 34.763302, 38.203075>,  <34.278038, 34.954483, 38.287285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619152, 34.763302, 38.203075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205912, 0.062742, -0.976557,
		0.479955, 0.876143, -0.044911,
		0.852786, -0.477951, -0.210521,
		34.874989, 34.619915, 38.139919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405506, 35.166306, 37.524612>,  <34.278038, 34.954483, 38.287285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405506, 35.166306, 37.524612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669083, 34.873173, 37.592449>,  <34.827229, 34.697292, 37.633152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669083, 34.873173, 37.592449>,  <34.405506, 35.166306, 37.524612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669083, 34.873173, 37.592449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060877, -0.172763, -0.983080,
		0.749728, 0.658115, -0.069228,
		0.658940, -0.732829, 0.169589,
		34.866764, 34.653324, 37.643326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971741, 35.312790, 37.080757>,  <34.405506, 35.166306, 37.524612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971741, 35.312790, 37.080757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991802, 34.922279, 37.165020>,  <35.003838, 34.687973, 37.215576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991802, 34.922279, 37.165020>,  <34.971741, 35.312790, 37.080757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991802, 34.922279, 37.165020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059562, -0.213468, -0.975133,
		0.996964, 0.036361, -0.068855,
		0.050155, -0.976273, 0.210654,
		35.006847, 34.629398, 37.228218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436451, 35.107418, 36.616165>,  <34.971741, 35.312790, 37.080757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436451, 35.107418, 36.616165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271473, 34.754196, 36.705696>,  <35.172485, 34.542263, 36.759415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271473, 34.754196, 36.705696>,  <35.436451, 35.107418, 36.616165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271473, 34.754196, 36.705696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064045, -0.216987, -0.974071,
		0.908730, -0.416082, 0.032938,
		-0.412440, -0.883059, 0.223830,
		35.147739, 34.489277, 36.772846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789406, 34.485600, 36.341602>,  <35.436451, 35.107418, 36.616165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789406, 34.485600, 36.341602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409657, 34.373783, 36.398952>,  <35.181808, 34.306694, 36.433361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409657, 34.373783, 36.398952>,  <35.789406, 34.485600, 36.341602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409657, 34.373783, 36.398952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087743, -0.202268, -0.975392,
		0.301662, -0.938586, 0.167499,
		-0.949369, -0.279542, 0.143371,
		35.124847, 34.289921, 36.441963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068504, 33.754379, 36.508015>,  <35.789406, 34.485600, 36.341602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068504, 33.754379, 36.508015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449612, 33.829380, 36.412445>,  <36.678276, 33.874382, 36.355103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449612, 33.829380, 36.412445>,  <36.068504, 33.754379, 36.508015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449612, 33.829380, 36.412445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283659, -0.268280, 0.920632,
		0.108524, -0.944917, -0.308794,
		0.952765, 0.187503, -0.238919,
		36.735439, 33.885632, 36.340771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431873, 33.171879, 36.622822>,  <36.068504, 33.754379, 36.508015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431873, 33.171879, 36.622822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699589, 33.467880, 36.649487>,  <36.860218, 33.645481, 36.665485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699589, 33.467880, 36.649487>,  <36.431873, 33.171879, 36.622822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699589, 33.467880, 36.649487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388850, -0.425314, 0.817254,
		0.633123, -0.521060, -0.572409,
		0.669292, 0.740003, 0.066662,
		36.900375, 33.689880, 36.669487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098858, 32.873028, 36.774452>,  <36.431873, 33.171879, 36.622822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098858, 32.873028, 36.774452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146408, 33.254341, 36.885536>,  <37.174938, 33.483128, 36.952187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146408, 33.254341, 36.885536>,  <37.098858, 32.873028, 36.774452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146408, 33.254341, 36.885536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553530, -0.295826, 0.778519,
		0.824302, 0.061178, -0.562835,
		0.118873, 0.953281, 0.277714,
		37.182072, 33.540325, 36.968849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682625, 32.852104, 36.996555>,  <37.098858, 32.873028, 36.774452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682625, 32.852104, 36.996555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547604, 33.188274, 37.166142>,  <37.466591, 33.389977, 37.267891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547604, 33.188274, 37.166142>,  <37.682625, 32.852104, 36.996555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547604, 33.188274, 37.166142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483862, -0.231421, 0.843991,
		0.807425, 0.490033, -0.328532,
		-0.337554, 0.840424, 0.423964,
		37.446339, 33.440403, 37.293331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237419, 33.203014, 37.273808>,  <37.682625, 32.852104, 36.996555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237419, 33.203014, 37.273808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928684, 33.373085, 37.462902>,  <37.743443, 33.475128, 37.576359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928684, 33.373085, 37.462902>,  <38.237419, 33.203014, 37.273808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928684, 33.373085, 37.462902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421425, -0.214631, 0.881099,
		0.476090, 0.879293, -0.013521,
		-0.771842, 0.425181, 0.472739,
		37.697132, 33.500641, 37.604725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515404, 33.692108, 37.790783>,  <38.237419, 33.203014, 37.273808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515404, 33.692108, 37.790783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150623, 33.571770, 37.902382>,  <37.931755, 33.499565, 37.969341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150623, 33.571770, 37.902382>,  <38.515404, 33.692108, 37.790783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150623, 33.571770, 37.902382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346960, -0.202454, 0.915768,
		-0.219024, 0.931934, 0.289010,
		-0.911947, -0.300850, 0.279002,
		37.877041, 33.481514, 37.986084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489445, 33.792995, 38.453823>,  <38.515404, 33.692108, 37.790783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489445, 33.792995, 38.453823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141365, 33.596104, 38.462494>,  <37.932518, 33.477970, 38.467697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141365, 33.596104, 38.462494>,  <38.489445, 33.792995, 38.453823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141365, 33.596104, 38.462494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258819, -0.419247, 0.870198,
		-0.419247, 0.762854, 0.492225,
		-0.870198, -0.492225, 0.021673,
		37.880306, 33.448437, 38.468994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982826, 33.923218, 39.122372>,  <38.489445, 33.792995, 38.453823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982826, 33.923218, 39.122372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879414, 33.570583, 38.964401>,  <37.817368, 33.359001, 38.869617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879414, 33.570583, 38.964401>,  <37.982826, 33.923218, 39.122372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879414, 33.570583, 38.964401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090862, -0.429206, 0.898625,
		-0.961721, 0.196436, 0.191064,
		-0.258528, -0.881587, -0.394928,
		37.801857, 33.306107, 38.845924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487583, 33.591709, 39.632656>,  <37.982826, 33.923218, 39.122372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487583, 33.591709, 39.632656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621513, 33.281761, 39.418194>,  <37.701870, 33.095791, 39.289516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621513, 33.281761, 39.418194>,  <37.487583, 33.591709, 39.632656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621513, 33.281761, 39.418194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016465, -0.573721, 0.818885,
		-0.942136, -0.265356, -0.204855,
		0.334826, -0.774874, -0.536155,
		37.721962, 33.049297, 39.257347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014511, 33.049408, 39.744762>,  <37.487583, 33.591709, 39.632656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014511, 33.049408, 39.744762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377949, 32.914982, 39.645557>,  <37.596012, 32.834328, 39.586033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377949, 32.914982, 39.645557>,  <37.014511, 33.049408, 39.744762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377949, 32.914982, 39.645557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037523, -0.525718, 0.849831,
		-0.415981, -0.781461, -0.465056,
		0.908598, -0.336064, -0.248012,
		37.650528, 32.814163, 39.571156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088428, 32.329369, 40.060417>,  <37.014511, 33.049408, 39.744762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088428, 32.329369, 40.060417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449982, 32.474773, 39.970207>,  <37.666912, 32.562016, 39.916080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449982, 32.474773, 39.970207>,  <37.088428, 32.329369, 40.060417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449982, 32.474773, 39.970207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358718, -0.356838, 0.862547,
		0.233075, -0.860537, -0.452938,
		0.903879, 0.363515, -0.225520,
		37.721146, 32.583828, 39.902550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397972, 31.838682, 40.411263>,  <37.088428, 32.329369, 40.060417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397972, 31.838682, 40.411263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683487, 32.102165, 40.316093>,  <37.854797, 32.260254, 40.258991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683487, 32.102165, 40.316093>,  <37.397972, 31.838682, 40.411263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683487, 32.102165, 40.316093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541978, -0.304359, 0.783343,
		0.443580, -0.688091, -0.574254,
		0.713791, 0.658708, -0.237923,
		37.897625, 32.299778, 40.244717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906052, 31.519602, 40.560734>,  <37.397972, 31.838682, 40.411263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906052, 31.519602, 40.560734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021938, 31.901968, 40.579853>,  <38.091473, 32.131390, 40.591324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021938, 31.901968, 40.579853>,  <37.906052, 31.519602, 40.560734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021938, 31.901968, 40.579853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381699, -0.161195, 0.910122,
		0.877707, -0.245434, -0.411574,
		0.289719, 0.955917, 0.047800,
		38.108852, 32.188744, 40.594193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605251, 31.526186, 40.792477>,  <37.906052, 31.519602, 40.560734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605251, 31.526186, 40.792477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474190, 31.888885, 40.898643>,  <38.395554, 32.106506, 40.962345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474190, 31.888885, 40.898643>,  <38.605251, 31.526186, 40.792477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474190, 31.888885, 40.898643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363537, -0.138299, 0.921257,
		0.872056, 0.398346, -0.284322,
		-0.327658, 0.906749, 0.265418,
		38.375893, 32.160912, 40.978268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045616, 31.673256, 41.310631>,  <38.605251, 31.526186, 40.792477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045616, 31.673256, 41.310631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721817, 31.905836, 41.343212>,  <38.527538, 32.045383, 41.362762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721817, 31.905836, 41.343212>,  <39.045616, 31.673256, 41.310631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721817, 31.905836, 41.343212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159147, 0.083762, 0.983695,
		0.565147, 0.809259, -0.160342,
		-0.809494, 0.581450, 0.081453,
		38.478970, 32.080273, 41.367649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237785, 32.365162, 41.753658>,  <39.045616, 31.673256, 41.310631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237785, 32.365162, 41.753658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844078, 32.298412, 41.776859>,  <38.607853, 32.258362, 41.790779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844078, 32.298412, 41.776859>,  <39.237785, 32.365162, 41.753658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844078, 32.298412, 41.776859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044662, 0.082605, 0.995581,
		-0.170924, 0.982513, -0.073853,
		-0.984271, -0.166870, 0.058000,
		38.548798, 32.248352, 41.794258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157707, 32.769627, 42.264606>,  <39.237785, 32.365162, 41.753658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157707, 32.769627, 42.264606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803967, 32.582924, 42.267742>,  <38.591721, 32.470901, 42.269623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803967, 32.582924, 42.267742>,  <39.157707, 32.769627, 42.264606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803967, 32.582924, 42.267742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042784, -0.064308, 0.997013,
		-0.464855, 0.882046, 0.076840,
		-0.884353, -0.466753, 0.007844,
		38.538662, 32.442898, 42.270096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703880, 33.235298, 42.631809>,  <39.157707, 32.769627, 42.264606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703880, 33.235298, 42.631809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527706, 32.876465, 42.645992>,  <38.422001, 32.661163, 42.654503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527706, 32.876465, 42.645992>,  <38.703880, 33.235298, 42.631809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527706, 32.876465, 42.645992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024784, 0.027330, 0.999319,
		-0.897444, 0.441011, 0.010196,
		-0.440432, -0.897086, 0.035457,
		38.395576, 32.607338, 42.656628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044456, 33.275597, 42.959312>,  <38.703880, 33.235298, 42.631809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044456, 33.275597, 42.959312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187229, 32.903931, 42.997772>,  <38.272892, 32.680931, 43.020847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187229, 32.903931, 42.997772>,  <38.044456, 33.275597, 42.959312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187229, 32.903931, 42.997772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000314, 0.102806, 0.994701,
		-0.934129, -0.355073, 0.036403,
		0.356934, -0.929168, 0.096146,
		38.294308, 32.625179, 43.026615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632538, 33.047516, 43.531918>,  <38.044456, 33.275597, 42.959312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632538, 33.047516, 43.531918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929592, 32.788834, 43.462318>,  <38.107822, 32.633625, 43.420559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929592, 32.788834, 43.462318>,  <37.632538, 33.047516, 43.531918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929592, 32.788834, 43.462318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048229, -0.310785, 0.949256,
		-0.667962, -0.696556, -0.261988,
		0.742631, -0.646702, -0.173998,
		38.152382, 32.594822, 43.410118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373169, 32.465614, 43.931950>,  <37.632538, 33.047516, 43.531918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373169, 32.465614, 43.931950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763897, 32.402973, 43.873581>,  <37.998333, 32.365391, 43.838558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763897, 32.402973, 43.873581>,  <37.373169, 32.465614, 43.931950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763897, 32.402973, 43.873581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078600, -0.371674, 0.925030,
		-0.199093, -0.915060, -0.350751,
		0.976823, -0.156598, -0.145922,
		38.056946, 32.355995, 43.829803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492985, 31.900330, 44.281933>,  <37.373169, 32.465614, 43.931950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492985, 31.900330, 44.281933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846718, 32.084011, 44.248272>,  <38.058960, 32.194221, 44.228077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846718, 32.084011, 44.248272>,  <37.492985, 31.900330, 44.281933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846718, 32.084011, 44.248272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189335, -0.188018, 0.963743,
		0.426735, -0.868205, -0.253215,
		0.884335, 0.459206, -0.084148,
		38.112019, 32.221771, 44.223026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962048, 31.554136, 44.654110>,  <37.492985, 31.900330, 44.281933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962048, 31.554136, 44.654110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104481, 31.927071, 44.628952>,  <38.189941, 32.150829, 44.613857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104481, 31.927071, 44.628952>,  <37.962048, 31.554136, 44.654110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104481, 31.927071, 44.628952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340796, -0.066898, 0.937754,
		0.870093, -0.355354, -0.341557,
		0.356084, 0.932335, -0.062896,
		38.211308, 32.206772, 44.610085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561596, 31.524261, 45.094437>,  <37.962048, 31.554136, 44.654110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561596, 31.524261, 45.094437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479691, 31.912430, 45.043270>,  <38.430550, 32.145329, 45.012569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479691, 31.912430, 45.043270>,  <38.561596, 31.524261, 45.094437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479691, 31.912430, 45.043270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036469, 0.138154, 0.989739,
		0.978133, 0.197994, -0.063678,
		-0.204760, 0.970418, -0.127912,
		38.418262, 32.203556, 45.004898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053200, 31.841452, 45.447636>,  <38.561596, 31.524261, 45.094437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053200, 31.841452, 45.447636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748547, 32.096840, 45.403332>,  <38.565754, 32.250072, 45.376747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748547, 32.096840, 45.403332>,  <39.053200, 31.841452, 45.447636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748547, 32.096840, 45.403332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054052, 0.232924, 0.970992,
		0.645751, 0.733552, -0.211913,
		-0.761633, 0.638473, -0.110762,
		38.520058, 32.288383, 45.370102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242165, 32.379253, 45.810101>,  <39.053200, 31.841452, 45.447636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242165, 32.379253, 45.810101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849842, 32.455761, 45.794964>,  <38.614449, 32.501667, 45.785881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849842, 32.455761, 45.794964>,  <39.242165, 32.379253, 45.810101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849842, 32.455761, 45.794964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000851, 0.189864, 0.981810,
		0.194978, 0.962999, -0.186057,
		-0.980807, 0.191273, -0.037838,
		38.555599, 32.513142, 45.783611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123169, 32.958656, 46.286224>,  <39.242165, 32.379253, 45.810101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123169, 32.958656, 46.286224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774887, 32.768143, 46.237186>,  <38.565918, 32.653835, 46.207764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774887, 32.768143, 46.237186>,  <39.123169, 32.958656, 46.286224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774887, 32.768143, 46.237186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243396, 0.200704, 0.948934,
		-0.427358, 0.856078, -0.290680,
		-0.870703, -0.476285, -0.122593,
		38.513676, 32.625256, 46.200409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670895, 33.351734, 46.585167>,  <39.123169, 32.958656, 46.286224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670895, 33.351734, 46.585167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503922, 32.988541, 46.599659>,  <38.403736, 32.770626, 46.608356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503922, 32.988541, 46.599659>,  <38.670895, 33.351734, 46.585167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503922, 32.988541, 46.599659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170962, 0.117633, 0.978230,
		-0.892480, 0.402153, -0.204335,
		-0.417435, -0.907984, 0.036232,
		38.378693, 32.716145, 46.610527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303852, 33.427788, 47.116665>,  <38.670895, 33.351734, 46.585167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303852, 33.427788, 47.116665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269306, 33.034534, 47.052174>,  <38.248581, 32.798584, 47.013477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269306, 33.034534, 47.052174>,  <38.303852, 33.427788, 47.116665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269306, 33.034534, 47.052174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277210, -0.131728, 0.951736,
		-0.956920, 0.126887, -0.261158,
		-0.086361, -0.983132, -0.161228,
		38.243397, 32.739594, 47.003807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576805, 33.186825, 47.213196>,  <38.303852, 33.427788, 47.116665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576805, 33.186825, 47.213196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811924, 32.872028, 47.288177>,  <37.952995, 32.683151, 47.333168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811924, 32.872028, 47.288177>,  <37.576805, 33.186825, 47.213196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811924, 32.872028, 47.288177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549022, -0.217863, 0.806914,
		-0.594192, -0.577223, -0.560134,
		0.587802, -0.786988, 0.187456,
		37.988266, 32.635933, 47.344414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100250, 32.856991, 47.662834>,  <37.576805, 33.186825, 47.213196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100250, 32.856991, 47.662834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458893, 32.680775, 47.680836>,  <37.674076, 32.575043, 47.691635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458893, 32.680775, 47.680836>,  <37.100250, 32.856991, 47.662834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458893, 32.680775, 47.680836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172535, -0.253933, 0.951709,
		-0.407843, -0.861069, -0.303686,
		0.896603, -0.440544, 0.044999,
		37.727875, 32.548611, 47.694336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003933, 32.203438, 47.903114>,  <37.100250, 32.856991, 47.662834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003933, 32.203438, 47.903114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380718, 32.297733, 47.998718>,  <37.606789, 32.354313, 48.056080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380718, 32.297733, 47.998718>,  <37.003933, 32.203438, 47.903114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380718, 32.297733, 47.998718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190008, -0.212544, 0.958500,
		0.276759, -0.948288, -0.155416,
		0.941967, 0.235743, 0.239005,
		37.663307, 32.368458, 48.070419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194302, 31.699364, 48.486057>,  <37.003933, 32.203438, 47.903114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194302, 31.699364, 48.486057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451294, 32.005184, 48.506748>,  <37.605492, 32.188675, 48.519165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451294, 32.005184, 48.506748>,  <37.194302, 31.699364, 48.486057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451294, 32.005184, 48.506748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051438, -0.024327, 0.998380,
		0.764570, -0.644105, 0.023697,
		0.642485, 0.764550, 0.051731,
		37.644039, 32.234550, 48.522266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518776, 31.436342, 49.132786>,  <37.194302, 31.699364, 48.486057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518776, 31.436342, 49.132786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644485, 31.808527, 49.057453>,  <37.719910, 32.031837, 49.012253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644485, 31.808527, 49.057453>,  <37.518776, 31.436342, 49.132786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644485, 31.808527, 49.057453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073945, 0.221773, 0.972290,
		0.946448, -0.291640, 0.138501,
		0.314275, 0.930464, -0.188331,
		37.738770, 32.087666, 49.000954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078747, 31.622978, 49.591499>,  <37.518776, 31.436342, 49.132786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078747, 31.622978, 49.591499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938564, 31.985518, 49.497089>,  <37.854454, 32.203041, 49.440441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938564, 31.985518, 49.497089>,  <38.078747, 31.622978, 49.591499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938564, 31.985518, 49.497089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251668, 0.151610, 0.955865,
		0.902133, 0.394390, 0.174967,
		-0.350457, 0.906350, -0.236028,
		37.833427, 32.257423, 49.426281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296364, 32.227539, 50.182102>,  <38.078747, 31.622978, 49.591499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296364, 32.227539, 50.182102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970356, 32.364773, 49.995323>,  <37.774754, 32.447113, 49.883255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970356, 32.364773, 49.995323>,  <38.296364, 32.227539, 50.182102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970356, 32.364773, 49.995323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298448, 0.442195, 0.845809,
		0.496668, 0.828707, -0.258002,
		-0.815015, 0.343086, -0.466950,
		37.725853, 32.467697, 49.855240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275139, 32.874023, 50.500835>,  <38.296364, 32.227539, 50.182102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275139, 32.874023, 50.500835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910465, 32.847095, 50.338699>,  <37.691662, 32.830936, 50.241417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910465, 32.847095, 50.338699>,  <38.275139, 32.874023, 50.500835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910465, 32.847095, 50.338699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404171, 0.324598, 0.855150,
		0.074001, 0.943453, -0.323141,
		-0.911685, -0.067323, -0.405336,
		37.636959, 32.826900, 50.217098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924057, 33.521717, 50.542484>,  <38.275139, 32.874023, 50.500835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924057, 33.521717, 50.542484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626343, 33.258484, 50.496929>,  <37.447716, 33.100544, 50.469597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626343, 33.258484, 50.496929>,  <37.924057, 33.521717, 50.542484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626343, 33.258484, 50.496929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514322, 0.456002, 0.726316,
		-0.426041, 0.599162, -0.677860,
		-0.744287, -0.658079, -0.113887,
		37.403057, 33.061062, 50.462765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381962, 34.062923, 50.147335>,  <37.924057, 33.521717, 50.542484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381962, 34.062923, 50.147335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600605, 34.393314, 50.202442>,  <38.731792, 34.591549, 50.235508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600605, 34.393314, 50.202442>,  <38.381962, 34.062923, 50.147335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600605, 34.393314, 50.202442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070922, 0.118268, -0.990446,
		-0.834379, 0.551157, 0.006066,
		0.546609, 0.825977, 0.137769,
		38.764587, 34.641109, 50.243774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148933, 34.555634, 49.732452>,  <38.381962, 34.062923, 50.147335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148933, 34.555634, 49.732452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509655, 34.706665, 49.816536>,  <38.726089, 34.797283, 49.866985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509655, 34.706665, 49.816536>,  <38.148933, 34.555634, 49.732452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509655, 34.706665, 49.816536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086514, 0.318837, -0.943853,
		-0.423396, 0.869357, 0.254863,
		0.901805, 0.377574, 0.210206,
		38.780197, 34.819939, 49.879597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054585, 35.275650, 49.509014>,  <38.148933, 34.555634, 49.732452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054585, 35.275650, 49.509014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443604, 35.182899, 49.516766>,  <38.677017, 35.127251, 49.521416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443604, 35.182899, 49.516766>,  <38.054585, 35.275650, 49.509014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443604, 35.182899, 49.516766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076303, 0.239138, -0.967983,
		0.219819, 0.942892, 0.250267,
		0.972552, -0.231878, 0.019379,
		38.735371, 35.113335, 49.522579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341091, 35.770386, 49.067543>,  <38.054585, 35.275650, 49.509014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341091, 35.770386, 49.067543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606819, 35.473782, 49.105148>,  <38.766254, 35.295818, 49.127712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606819, 35.473782, 49.105148>,  <38.341091, 35.770386, 49.067543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606819, 35.473782, 49.105148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206992, 0.061655, -0.976398,
		0.718215, 0.668100, 0.194446,
		0.664320, -0.741513, 0.094010,
		38.806114, 35.251328, 49.133350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949577, 36.023762, 48.813042>,  <38.341091, 35.770386, 49.067543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949577, 36.023762, 48.813042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951527, 35.626610, 48.765450>,  <38.952698, 35.388317, 48.736893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951527, 35.626610, 48.765450>,  <38.949577, 36.023762, 48.813042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951527, 35.626610, 48.765450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267230, 0.115949, -0.956631,
		0.963620, -0.027131, 0.265894,
		0.004876, -0.992884, -0.118981,
		38.952988, 35.328743, 48.729755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539707, 35.901051, 48.337353>,  <38.949577, 36.023762, 48.813042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539707, 35.901051, 48.337353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374279, 35.536865, 48.335510>,  <39.275021, 35.318356, 48.334404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374279, 35.536865, 48.335510>,  <39.539707, 35.901051, 48.337353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374279, 35.536865, 48.335510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211591, -0.091195, -0.973095,
		0.885545, -0.403415, 0.230360,
		-0.413569, -0.910461, -0.004602,
		39.250210, 35.263725, 48.334129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021717, 35.516201, 48.011265>,  <39.539707, 35.901051, 48.337353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021717, 35.516201, 48.011265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683212, 35.305977, 47.976322>,  <39.480110, 35.179844, 47.955357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683212, 35.305977, 47.976322>,  <40.021717, 35.516201, 48.011265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683212, 35.305977, 47.976322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170993, -0.112648, -0.978811,
		0.504586, -0.843265, 0.185197,
		-0.846259, -0.525562, -0.087352,
		39.429333, 35.148308, 47.950115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090340, 35.063072, 47.480038>,  <40.021717, 35.516201, 48.011265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090340, 35.063072, 47.480038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692471, 35.061565, 47.521244>,  <39.453751, 35.060661, 47.545967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692471, 35.061565, 47.521244>,  <40.090340, 35.063072, 47.480038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692471, 35.061565, 47.521244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102781, -0.040860, -0.993864,
		0.007962, -0.999158, 0.040255,
		-0.994672, -0.003776, 0.103020,
		39.394070, 35.060436, 47.552151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889076, 34.554832, 47.100822>,  <40.090340, 35.063072, 47.480038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889076, 34.554832, 47.100822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573055, 34.796715, 47.141106>,  <39.383442, 34.941845, 47.165276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573055, 34.796715, 47.141106>,  <39.889076, 34.554832, 47.100822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573055, 34.796715, 47.141106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103716, 0.030061, -0.994153,
		-0.604197, -0.795881, 0.038968,
		-0.790056, 0.604706, 0.100709,
		39.336037, 34.978127, 47.171318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417427, 34.348099, 46.608253>,  <39.889076, 34.554832, 47.100822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417427, 34.348099, 46.608253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272537, 34.708179, 46.704945>,  <39.185604, 34.924229, 46.762959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272537, 34.708179, 46.704945>,  <39.417427, 34.348099, 46.608253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272537, 34.708179, 46.704945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163953, 0.193766, -0.967251,
		-0.917559, -0.389992, 0.077404,
		-0.362221, 0.900201, 0.241732,
		39.163872, 34.978241, 46.777466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789906, 34.281208, 46.316963>,  <39.417427, 34.348099, 46.608253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789906, 34.281208, 46.316963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906170, 34.662159, 46.353825>,  <38.975929, 34.890728, 46.375942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906170, 34.662159, 46.353825>,  <38.789906, 34.281208, 46.316963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906170, 34.662159, 46.353825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252263, 0.169177, -0.952755,
		-0.922973, 0.253684, 0.289423,
		0.290663, 0.952378, 0.092151,
		38.993370, 34.947872, 46.381470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201740, 34.694820, 46.042294>,  <38.789906, 34.281208, 46.316963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201740, 34.694820, 46.042294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512352, 34.945488, 46.016087>,  <38.698719, 35.095890, 46.000362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512352, 34.945488, 46.016087>,  <38.201740, 34.694820, 46.042294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512352, 34.945488, 46.016087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240706, 0.198944, -0.949990,
		-0.582296, 0.753462, 0.305329,
		0.776526, 0.626670, -0.065519,
		38.745308, 35.133488, 45.996429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985348, 35.368481, 45.686794>,  <38.201740, 34.694820, 46.042294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985348, 35.368481, 45.686794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382607, 35.380760, 45.641678>,  <38.620960, 35.388130, 45.614609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382607, 35.380760, 45.641678>,  <37.985348, 35.368481, 45.686794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382607, 35.380760, 45.641678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115943, 0.135808, -0.983927,
		-0.014891, 0.990259, 0.138437,
		0.993144, 0.030702, -0.112791,
		38.680550, 35.389973, 45.607841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139851, 35.986454, 45.370872>,  <37.985348, 35.368481, 45.686794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139851, 35.986454, 45.370872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452370, 35.747097, 45.299870>,  <38.639881, 35.603485, 45.257267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452370, 35.747097, 45.299870>,  <38.139851, 35.986454, 45.370872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452370, 35.747097, 45.299870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075636, 0.191523, -0.978569,
		0.619560, 0.777978, 0.104377,
		0.781296, -0.598388, -0.177504,
		38.686760, 35.567581, 45.246620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502937, 36.354950, 44.881161>,  <38.139851, 35.986454, 45.370872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502937, 36.354950, 44.881161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608326, 35.970051, 44.853840>,  <38.671558, 35.739113, 44.837448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608326, 35.970051, 44.853840>,  <38.502937, 36.354950, 44.881161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608326, 35.970051, 44.853840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101034, 0.042887, -0.993958,
		0.959360, 0.268785, -0.085920,
		0.263476, -0.962245, -0.068301,
		38.687370, 35.681377, 44.833351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574806, 36.379383, 44.104595>,  <38.502937, 36.354950, 44.881161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574806, 36.379383, 44.104595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632206, 35.992199, 44.187019>,  <38.666645, 35.759888, 44.236473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632206, 35.992199, 44.187019>,  <38.574806, 36.379383, 44.104595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632206, 35.992199, 44.187019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089108, -0.194730, -0.976801,
		0.985630, 0.158535, 0.058309,
		0.143502, -0.967960, 0.206059,
		38.675255, 35.701813, 44.248837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261009, 36.076195, 43.751686>,  <38.574806, 36.379383, 44.104595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261009, 36.076195, 43.751686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030025, 35.757168, 43.821457>,  <38.891434, 35.565750, 43.863319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030025, 35.757168, 43.821457>,  <39.261009, 36.076195, 43.751686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030025, 35.757168, 43.821457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054191, -0.250622, -0.966567,
		0.814620, -0.548700, 0.187945,
		-0.577458, -0.797570, 0.174428,
		38.856789, 35.517899, 43.873787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586243, 35.600006, 43.417793>,  <39.261009, 36.076195, 43.751686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586243, 35.600006, 43.417793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221188, 35.442989, 43.463402>,  <39.002155, 35.348778, 43.490765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221188, 35.442989, 43.463402>,  <39.586243, 35.600006, 43.417793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221188, 35.442989, 43.463402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053528, -0.391298, -0.918706,
		0.405249, -0.832343, 0.378125,
		-0.912638, -0.392545, 0.114020,
		38.947395, 35.325226, 43.497608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611790, 34.800369, 43.260540>,  <39.586243, 35.600006, 43.417793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611790, 34.800369, 43.260540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242657, 34.945137, 43.207787>,  <39.021175, 35.031998, 43.176132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242657, 34.945137, 43.207787>,  <39.611790, 34.800369, 43.260540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242657, 34.945137, 43.207787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049409, -0.450769, -0.891272,
		-0.382016, -0.815980, 0.433866,
		-0.922834, 0.361917, -0.131884,
		38.965805, 35.053711, 43.168221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375702, 34.341980, 42.713207>,  <39.611790, 34.800369, 43.260540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375702, 34.341980, 42.713207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113346, 34.641914, 42.748001>,  <38.955933, 34.821873, 42.768879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113346, 34.641914, 42.748001>,  <39.375702, 34.341980, 42.713207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113346, 34.641914, 42.748001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174351, -0.038364, -0.983936,
		-0.734449, -0.660516, 0.155897,
		-0.655886, 0.749832, 0.086985,
		38.916580, 34.866863, 42.774097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767155, 34.084297, 42.291378>,  <39.375702, 34.341980, 42.713207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767155, 34.084297, 42.291378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717194, 34.477970, 42.341644>,  <38.687218, 34.714172, 42.371803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717194, 34.477970, 42.341644>,  <38.767155, 34.084297, 42.291378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717194, 34.477970, 42.341644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127125, 0.109737, -0.985798,
		-0.983992, -0.139100, 0.111408,
		-0.124899, 0.984179, 0.125664,
		38.679726, 34.773224, 42.379345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093632, 34.262009, 41.882965>,  <38.767155, 34.084297, 42.291378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093632, 34.262009, 41.882965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310326, 34.596333, 41.918613>,  <38.440342, 34.796928, 41.940002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310326, 34.596333, 41.918613>,  <38.093632, 34.262009, 41.882965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310326, 34.596333, 41.918613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017076, 0.116953, -0.992991,
		-0.840376, 0.536415, 0.077630,
		0.541734, 0.835811, 0.089125,
		38.472847, 34.847076, 41.945351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756104, 34.868813, 41.582321>,  <38.093632, 34.262009, 41.882965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756104, 34.868813, 41.582321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142017, 34.973957, 41.578342>,  <38.373566, 35.037045, 41.575954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142017, 34.973957, 41.578342>,  <37.756104, 34.868813, 41.582321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142017, 34.973957, 41.578342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058966, 0.179276, -0.982030,
		-0.256359, 0.948031, 0.188462,
		0.964782, 0.262865, -0.009942,
		38.431454, 35.052818, 41.575359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893738, 35.409180, 41.138588>,  <37.756104, 34.868813, 41.582321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893738, 35.409180, 41.138588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237003, 35.209072, 41.184677>,  <38.442963, 35.089008, 41.212330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237003, 35.209072, 41.184677>,  <37.893738, 35.409180, 41.138588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237003, 35.209072, 41.184677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171322, 0.067507, -0.982900,
		0.483939, 0.863233, 0.143640,
		0.858168, -0.500272, 0.115222,
		38.494453, 35.058990, 41.219242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190392, 35.610123, 40.544785>,  <37.893738, 35.409180, 41.138588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190392, 35.610123, 40.544785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441872, 35.320271, 40.657669>,  <38.592762, 35.146358, 40.725399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441872, 35.320271, 40.657669>,  <38.190392, 35.610123, 40.544785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441872, 35.320271, 40.657669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379266, -0.031093, -0.924765,
		0.678889, 0.688435, 0.255279,
		0.628703, -0.724631, 0.282209,
		38.630482, 35.102882, 40.742332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688145, 35.740105, 40.154678>,  <38.190392, 35.610123, 40.544785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688145, 35.740105, 40.154678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833008, 35.387936, 40.277122>,  <38.919926, 35.176636, 40.350590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833008, 35.387936, 40.277122>,  <38.688145, 35.740105, 40.154678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833008, 35.387936, 40.277122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505485, -0.090415, -0.858085,
		0.783151, 0.465498, 0.412294,
		0.362159, -0.880419, 0.306111,
		38.941654, 35.123810, 40.368958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408836, 35.757622, 40.181206>,  <38.688145, 35.740105, 40.154678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408836, 35.757622, 40.181206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312775, 35.371605, 40.139214>,  <39.255138, 35.139996, 40.114017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312775, 35.371605, 40.139214>,  <39.408836, 35.757622, 40.181206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312775, 35.371605, 40.139214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538475, -0.042452, -0.841572,
		0.807695, -0.258634, 0.529846,
		-0.240152, -0.965042, -0.104980,
		39.240730, 35.082092, 40.107719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052200, 35.390038, 40.112282>,  <39.408836, 35.757622, 40.181206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052200, 35.390038, 40.112282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764023, 35.162575, 39.953484>,  <39.591118, 35.026096, 39.858204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764023, 35.162575, 39.953484>,  <40.052200, 35.390038, 40.112282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764023, 35.162575, 39.953484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492190, -0.015960, -0.870341,
		0.488586, -0.822423, 0.291383,
		-0.720439, -0.568652, -0.396991,
		39.547890, 34.991978, 39.834385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475597, 34.921192, 39.795101>,  <40.052200, 35.390038, 40.112282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475597, 34.921192, 39.795101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108429, 34.907417, 39.636997>,  <39.888126, 34.899151, 39.542133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108429, 34.907417, 39.636997>,  <40.475597, 34.921192, 39.795101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108429, 34.907417, 39.636997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396138, -0.135341, -0.908162,
		-0.022217, -0.990200, 0.137876,
		-0.917922, -0.034441, -0.395263,
		39.833054, 34.897087, 39.518417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373600, 34.239052, 39.399593>,  <40.475597, 34.921192, 39.795101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373600, 34.239052, 39.399593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077690, 34.473293, 39.267048>,  <39.900146, 34.613838, 39.187523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077690, 34.473293, 39.267048>,  <40.373600, 34.239052, 39.399593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077690, 34.473293, 39.267048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274310, -0.187203, -0.943244,
		-0.614402, -0.788682, -0.022150,
		-0.739773, 0.585607, -0.331361,
		39.855759, 34.648975, 39.167641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172146, 33.887337, 38.823242>,  <40.373600, 34.239052, 39.399593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172146, 33.887337, 38.823242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036236, 34.259197, 38.766258>,  <39.954689, 34.482315, 38.732067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036236, 34.259197, 38.766258>,  <40.172146, 33.887337, 38.823242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036236, 34.259197, 38.766258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196972, -0.077773, -0.977319,
		-0.919648, -0.360132, -0.156690,
		-0.339778, 0.929654, -0.142460,
		39.934303, 34.538094, 38.723518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860394, 33.757015, 38.190323>,  <40.172146, 33.887337, 38.823242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860394, 33.757015, 38.190323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929649, 34.150043, 38.217403>,  <39.971203, 34.385860, 38.233654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929649, 34.150043, 38.217403>,  <39.860394, 33.757015, 38.190323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929649, 34.150043, 38.217403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234880, 0.025565, -0.971688,
		-0.956479, 0.184145, -0.226358,
		0.173144, 0.982567, 0.067704,
		39.981594, 34.444813, 38.237713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483742, 33.972923, 37.615128>,  <39.860394, 33.757015, 38.190323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483742, 33.972923, 37.615128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734482, 34.265816, 37.721626>,  <39.884926, 34.441551, 37.785526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734482, 34.265816, 37.721626>,  <39.483742, 33.972923, 37.615128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734482, 34.265816, 37.721626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196644, 0.181966, -0.963441,
		-0.753913, 0.656292, -0.029924,
		0.626854, 0.732236, 0.266243,
		39.922539, 34.485485, 37.801498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314739, 34.503841, 37.278072>,  <39.483742, 33.972923, 37.615128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314739, 34.503841, 37.278072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689198, 34.621651, 37.354904>,  <39.913872, 34.692337, 37.401005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689198, 34.621651, 37.354904>,  <39.314739, 34.503841, 37.278072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689198, 34.621651, 37.354904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109855, 0.273950, -0.955449,
		-0.334018, 0.915538, 0.224102,
		0.936143, 0.294519, 0.192081,
		39.970039, 34.710007, 37.412529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423538, 34.844883, 36.708359>,  <39.314739, 34.503841, 37.278072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423538, 34.844883, 36.708359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780586, 34.768604, 36.871758>,  <39.994816, 34.722839, 36.969799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780586, 34.768604, 36.871758>,  <39.423538, 34.844883, 36.708359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780586, 34.768604, 36.871758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445623, 0.236049, -0.863540,
		0.068245, 0.952847, 0.295679,
		0.892616, -0.190694, 0.408502,
		40.048370, 34.711395, 36.994308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788734, 35.466778, 36.589310>,  <39.423538, 34.844883, 36.708359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788734, 35.466778, 36.589310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043503, 35.160892, 36.628403>,  <40.196362, 34.977360, 36.651859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043503, 35.160892, 36.628403>,  <39.788734, 35.466778, 36.589310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043503, 35.160892, 36.628403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453384, 0.269013, -0.849750,
		0.623522, 0.585532, 0.518047,
		0.636917, -0.764712, 0.097736,
		40.234577, 34.931480, 36.657722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392742, 35.721848, 36.226128>,  <39.788734, 35.466778, 36.589310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392742, 35.721848, 36.226128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413898, 35.323456, 36.255028>,  <40.426590, 35.084419, 36.272369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413898, 35.323456, 36.255028>,  <40.392742, 35.721848, 36.226128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413898, 35.323456, 36.255028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237755, -0.057714, -0.969609,
		0.969884, 0.068457, 0.233748,
		0.052886, -0.995983, 0.072252,
		40.429764, 35.024662, 36.276703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095520, 35.429016, 35.994011>,  <40.392742, 35.721848, 36.226128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095520, 35.429016, 35.994011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831245, 35.133286, 35.942036>,  <40.672680, 34.955845, 35.910851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831245, 35.133286, 35.942036>,  <41.095520, 35.429016, 35.994011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831245, 35.133286, 35.942036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384770, -0.184908, -0.904301,
		0.644549, -0.647458, 0.406638,
		-0.660688, -0.739329, -0.129940,
		40.633038, 34.911488, 35.903053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453072, 34.898815, 35.704651>,  <41.095520, 35.429016, 35.994011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453072, 34.898815, 35.704651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071251, 34.829449, 35.607697>,  <40.842159, 34.787830, 35.549522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071251, 34.829449, 35.607697>,  <41.453072, 34.898815, 35.704651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071251, 34.829449, 35.607697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243324, 0.016165, -0.969810,
		0.172097, -0.984716, 0.026765,
		-0.954556, -0.173414, -0.242387,
		40.784885, 34.777424, 35.534981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875591, 34.285084, 35.641384>,  <41.453072, 34.898815, 35.704651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875591, 34.285084, 35.641384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131451, 34.456249, 35.896801>,  <42.284966, 34.558949, 36.050053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131451, 34.456249, 35.896801>,  <41.875591, 34.285084, 35.641384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131451, 34.456249, 35.896801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246953, -0.901078, 0.356472,
		0.727920, -0.070325, -0.682046,
		0.639646, 0.427917, 0.638546,
		42.323345, 34.584625, 36.088364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557880, 33.903225, 35.514252>,  <41.875591, 34.285084, 35.641384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557880, 33.903225, 35.514252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549934, 34.084682, 35.870636>,  <42.545166, 34.193558, 36.084469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549934, 34.084682, 35.870636>,  <42.557880, 33.903225, 35.514252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549934, 34.084682, 35.870636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418504, -0.805539, 0.419478,
		0.907997, 0.381207, -0.173844,
		-0.019870, 0.453640, 0.890964,
		42.543972, 34.220776, 36.137924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144085, 34.003033, 35.984512>,  <42.557880, 33.903225, 35.514252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144085, 34.003033, 35.984512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.813953, 33.923069, 36.195747>,  <42.615875, 33.875092, 36.322487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.813953, 33.923069, 36.195747>,  <43.144085, 34.003033, 35.984512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813953, 33.923069, 36.195747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426532, -0.833561, 0.351064,
		0.370014, 0.514989, 0.773225,
		-0.825324, -0.199907, 0.528088,
		42.566357, 33.863098, 36.354176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390400, 33.860458, 36.654526>,  <43.144085, 34.003033, 35.984512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390400, 33.860458, 36.654526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045551, 33.663151, 36.608170>,  <42.838642, 33.544765, 36.580357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045551, 33.663151, 36.608170>,  <43.390400, 33.860458, 36.654526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045551, 33.663151, 36.608170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433437, -0.836387, 0.335543,
		-0.262442, 0.239048, 0.934869,
		-0.862123, -0.493267, -0.115890,
		42.786915, 33.515171, 36.573402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491489, 33.356121, 37.117237>,  <43.390400, 33.860458, 36.654526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491489, 33.356121, 37.117237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270439, 33.267231, 36.795937>,  <43.137810, 33.213898, 36.603157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270439, 33.267231, 36.795937>,  <43.491489, 33.356121, 37.117237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270439, 33.267231, 36.795937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273875, -0.958693, 0.076810,
		-0.787143, -0.177544, 0.590664,
		-0.552628, -0.222229, -0.803254,
		43.104652, 33.200562, 36.554962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287331, 32.718174, 37.309914>,  <43.491489, 33.356121, 37.117237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287331, 32.718174, 37.309914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250633, 32.765781, 36.914455>,  <43.228615, 32.794346, 36.677181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250633, 32.765781, 36.914455>,  <43.287331, 32.718174, 37.309914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250633, 32.765781, 36.914455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153467, -0.979280, -0.132129,
		-0.983885, -0.163846, 0.071582,
		-0.091747, 0.119015, -0.988644,
		43.223110, 32.801487, 36.617863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891285, 32.229450, 37.161320>,  <43.287331, 32.718174, 37.309914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891285, 32.229450, 37.161320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049568, 32.318996, 36.805050>,  <43.144539, 32.372723, 36.591290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049568, 32.318996, 36.805050>,  <42.891285, 32.229450, 37.161320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049568, 32.318996, 36.805050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231335, -0.962860, -0.139230,
		-0.888763, -0.150949, -0.432799,
		0.395708, 0.223864, -0.890674,
		43.168282, 32.386154, 36.537849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700336, 31.711231, 36.765697>,  <42.891285, 32.229450, 37.161320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700336, 31.711231, 36.765697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000954, 31.865318, 36.551487>,  <43.181324, 31.957771, 36.422962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000954, 31.865318, 36.551487>,  <42.700336, 31.711231, 36.765697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000954, 31.865318, 36.551487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176899, -0.899746, -0.398953,
		-0.635523, 0.205096, -0.744343,
		0.751544, 0.385218, -0.535527,
		43.226418, 31.980885, 36.390827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705318, 31.407156, 36.126667>,  <42.700336, 31.711231, 36.765697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705318, 31.407156, 36.126667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089058, 31.516243, 36.155724>,  <43.319302, 31.581696, 36.173157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089058, 31.516243, 36.155724>,  <42.705318, 31.407156, 36.126667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089058, 31.516243, 36.155724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282154, -0.921064, -0.268385,
		-0.006288, 0.277970, -0.960569,
		0.959348, 0.272716, 0.072638,
		43.376862, 31.598059, 36.177517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988842, 31.059916, 35.618336>,  <42.705318, 31.407156, 36.126667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988842, 31.059916, 35.618336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308125, 31.143873, 35.844193>,  <43.499695, 31.194248, 35.979706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308125, 31.143873, 35.844193>,  <42.988842, 31.059916, 35.618336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308125, 31.143873, 35.844193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401643, -0.884014, -0.239169,
		0.448951, 0.417689, -0.789923,
		0.798202, 0.209892, 0.564641,
		43.547585, 31.206841, 36.013584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578629, 30.942394, 35.176460>,  <42.988842, 31.059916, 35.618336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578629, 30.942394, 35.176460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686176, 30.915848, 35.560814>,  <43.750706, 30.899920, 35.791428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686176, 30.915848, 35.560814>,  <43.578629, 30.942394, 35.176460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686176, 30.915848, 35.560814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451260, -0.872677, -0.186544,
		0.850924, 0.483766, -0.204692,
		0.268874, -0.066365, 0.960886,
		43.766838, 30.895939, 35.849079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171551, 30.811520, 35.069046>,  <43.578629, 30.942394, 35.176460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171551, 30.811520, 35.069046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110294, 30.695093, 35.446793>,  <44.073540, 30.625238, 35.673439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110294, 30.695093, 35.446793>,  <44.171551, 30.811520, 35.069046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110294, 30.695093, 35.446793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598448, -0.787791, -0.145762,
		0.786390, 0.542832, 0.294829,
		-0.153139, -0.291065, 0.944367,
		44.064354, 30.607773, 35.730103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868351, 30.477325, 35.308281>,  <44.171551, 30.811520, 35.069046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868351, 30.477325, 35.308281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574768, 30.353762, 35.550232>,  <44.398617, 30.279623, 35.695404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574768, 30.353762, 35.550232>,  <44.868351, 30.477325, 35.308281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574768, 30.353762, 35.550232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261099, -0.950477, -0.168588,
		0.627001, 0.034196, 0.778268,
		-0.733960, -0.308910, 0.604878,
		44.354580, 30.261089, 35.731697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157776, 30.066475, 35.848938>,  <44.868351, 30.477325, 35.308281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157776, 30.066475, 35.848938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.776920, 29.953745, 35.801594>,  <44.548409, 29.886106, 35.773186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.776920, 29.953745, 35.801594>,  <45.157776, 30.066475, 35.848938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.776920, 29.953745, 35.801594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302585, -0.923883, -0.234270,
		-0.043329, -0.258872, 0.964939,
		-0.952137, -0.281825, -0.118362,
		44.491280, 29.869198, 35.766087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285282, 29.320299, 35.910244>,  <45.157776, 30.066475, 35.848938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285282, 29.320299, 35.910244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913166, 29.355583, 35.767822>,  <44.689896, 29.376753, 35.682369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913166, 29.355583, 35.767822>,  <45.285282, 29.320299, 35.910244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913166, 29.355583, 35.767822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091563, -0.884090, -0.458259,
		-0.355205, -0.458917, 0.814386,
		-0.930293, 0.088208, -0.356053,
		44.634079, 29.382046, 35.661007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249928, 28.686153, 35.847889>,  <45.285282, 29.320299, 35.910244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249928, 28.686153, 35.847889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915596, 28.826523, 35.679012>,  <44.714996, 28.910744, 35.577686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915596, 28.826523, 35.679012>,  <45.249928, 28.686153, 35.847889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915596, 28.826523, 35.679012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114689, -0.863675, -0.490828,
		-0.536881, -0.361825, 0.762129,
		-0.835826, 0.350924, -0.422194,
		44.664848, 28.931801, 35.552353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705002, 28.296236, 35.906830>,  <45.249928, 28.686153, 35.847889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705002, 28.296236, 35.906830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636086, 28.494068, 35.566074>,  <44.594734, 28.612766, 35.361622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636086, 28.494068, 35.566074>,  <44.705002, 28.296236, 35.906830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636086, 28.494068, 35.566074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104856, -0.850695, -0.515096,
		-0.979449, -0.178072, 0.094708,
		-0.172292, 0.494579, -0.851884,
		44.584396, 28.642443, 35.310509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.153183, 27.990088, 35.505413>,  <44.705002, 28.296236, 35.906830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.153183, 27.990088, 35.505413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370232, 28.181707, 35.229420>,  <44.500462, 28.296680, 35.063824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370232, 28.181707, 35.229420>,  <44.153183, 27.990088, 35.505413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370232, 28.181707, 35.229420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121575, -0.857568, -0.499797,
		-0.831134, 0.187316, -0.523573,
		0.542620, 0.479052, -0.689981,
		44.533016, 28.325422, 35.022427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877728, 27.817204, 34.767200>,  <44.153183, 27.990088, 35.505413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877728, 27.817204, 34.767200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237511, 27.969866, 34.682056>,  <44.453381, 28.061462, 34.630970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237511, 27.969866, 34.682056>,  <43.877728, 27.817204, 34.767200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237511, 27.969866, 34.682056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196141, -0.787851, -0.583798,
		-0.390511, 0.483353, -0.783499,
		0.899461, 0.381656, -0.212859,
		44.507347, 28.084362, 34.618198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924633, 27.692347, 33.998955>,  <43.877728, 27.817204, 34.767200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.924633, 27.692347, 33.998955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292953, 27.765898, 34.136539>,  <44.513947, 27.810028, 34.219090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.292953, 27.765898, 34.136539>,  <43.924633, 27.692347, 33.998955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292953, 27.765898, 34.136539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358676, -0.745637, -0.561584,
		0.153208, 0.640480, -0.752538,
		0.920804, 0.183878, 0.343962,
		44.569195, 27.821060, 34.239727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283161, 27.698727, 33.412483>,  <43.924633, 27.692347, 33.998955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283161, 27.698727, 33.412483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538960, 27.641134, 33.714561>,  <44.692440, 27.606579, 33.895809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538960, 27.641134, 33.714561>,  <44.283161, 27.698727, 33.412483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538960, 27.641134, 33.714561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537030, -0.619255, -0.572820,
		0.550132, 0.771876, -0.318689,
		0.639495, -0.143981, 0.755192,
		44.730808, 27.597940, 33.941120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888691, 27.761765, 33.188221>,  <44.283161, 27.698727, 33.412483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888691, 27.761765, 33.188221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.949615, 27.538071, 33.514179>,  <44.986172, 27.403854, 33.709755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.949615, 27.538071, 33.514179>,  <44.888691, 27.761765, 33.188221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.949615, 27.538071, 33.514179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630872, -0.579676, -0.515729,
		0.760790, 0.592648, 0.264513,
		0.152314, -0.559235, 0.814897,
		44.995308, 27.370300, 33.758648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.617943, 27.800922, 33.248524>,  <44.888691, 27.761765, 33.188221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.617943, 27.800922, 33.248524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494835, 27.467951, 33.432842>,  <45.420971, 27.268167, 33.543434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494835, 27.467951, 33.432842>,  <45.617943, 27.800922, 33.248524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.494835, 27.467951, 33.432842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616202, -0.543407, -0.570091,
		0.724962, 0.108488, 0.680191,
		-0.307773, -0.832430, 0.460800,
		45.402504, 27.218222, 33.571083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.271736, 27.370575, 33.422268>,  <45.617943, 27.800922, 33.248524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.271736, 27.370575, 33.422268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958946, 27.122993, 33.392860>,  <45.771271, 26.974443, 33.375217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958946, 27.122993, 33.392860>,  <46.271736, 27.370575, 33.422268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.958946, 27.122993, 33.392860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523026, -0.587431, -0.617550,
		0.339049, -0.521362, 0.783088,
		-0.781978, -0.618955, -0.073518,
		45.724354, 26.937307, 33.370804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.542206, 26.786545, 33.501354>,  <46.271736, 27.370575, 33.422268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.542206, 26.786545, 33.501354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187138, 26.663340, 33.364437>,  <45.974094, 26.589417, 33.282288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187138, 26.663340, 33.364437>,  <46.542206, 26.786545, 33.501354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.187138, 26.663340, 33.364437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458582, -0.658671, -0.596536,
		-0.041716, -0.686498, 0.725934,
		-0.887673, -0.308015, -0.342292,
		45.920837, 26.570934, 33.261749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.594307, 26.117996, 33.529415>,  <46.542206, 26.786545, 33.501354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.594307, 26.117996, 33.529415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.283401, 26.192312, 33.288967>,  <46.096859, 26.236902, 33.144699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.283401, 26.192312, 33.288967>,  <46.594307, 26.117996, 33.529415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.283401, 26.192312, 33.288967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367065, -0.642065, -0.673064,
		-0.511007, -0.743798, 0.430856,
		-0.777262, 0.185788, -0.601122,
		46.050224, 26.248049, 33.108631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.331497, 25.421291, 33.533710>,  <46.594307, 26.117996, 33.529415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.331497, 25.421291, 33.533710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170628, 25.611959, 33.221035>,  <46.074104, 25.726360, 33.033428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170628, 25.611959, 33.221035>,  <46.331497, 25.421291, 33.533710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.170628, 25.611959, 33.221035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348947, -0.709537, -0.612203,
		-0.846458, -0.518982, 0.119025,
		-0.402175, 0.476671, -0.781691,
		46.049976, 25.754961, 32.986526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040218, 24.883818, 33.097042>,  <46.331497, 25.421291, 33.533710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.040218, 24.883818, 33.097042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095455, 25.205505, 32.865814>,  <46.128597, 25.398518, 32.727077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095455, 25.205505, 32.865814>,  <46.040218, 24.883818, 33.097042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.095455, 25.205505, 32.865814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566915, -0.542767, -0.619687,
		-0.812120, -0.242144, -0.530874,
		0.138088, 0.804221, -0.578067,
		46.136883, 25.446772, 32.692394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948643, 24.631086, 32.452885>,  <46.040218, 24.883818, 33.097042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948643, 24.631086, 32.452885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.168571, 24.964994, 32.441162>,  <46.300529, 25.165339, 32.434128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.168571, 24.964994, 32.441162>,  <45.948643, 24.631086, 32.452885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168571, 24.964994, 32.441162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618644, -0.430544, -0.657200,
		-0.561228, 0.343211, -0.753146,
		0.549821, 0.834768, -0.029308,
		46.333519, 25.215425, 32.432369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046429, 24.850594, 31.712152>,  <45.948643, 24.631086, 32.452885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046429, 24.850594, 31.712152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.359638, 24.954161, 31.938370>,  <46.547562, 25.016300, 32.074100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.359638, 24.954161, 31.938370>,  <46.046429, 24.850594, 31.712152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.359638, 24.954161, 31.938370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617051, -0.437768, -0.653917,
		0.078267, 0.861000, -0.502546,
		0.783022, 0.258917, 0.565543,
		46.594543, 25.031836, 32.108032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.629280, 25.162811, 31.411642>,  <46.046429, 24.850594, 31.712152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.629280, 25.162811, 31.411642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787350, 24.934507, 31.699549>,  <46.882191, 24.797525, 31.872293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787350, 24.934507, 31.699549>,  <46.629280, 25.162811, 31.411642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.787350, 24.934507, 31.699549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456890, -0.557630, -0.693037,
		0.796923, 0.602728, 0.040411,
		0.395179, -0.570760, 0.719769,
		46.905903, 24.763279, 31.915480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.329731, 25.143934, 31.351088>,  <46.629280, 25.162811, 31.411642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.329731, 25.143934, 31.351088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192650, 24.815470, 31.533625>,  <47.110401, 24.618391, 31.643147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192650, 24.815470, 31.533625>,  <47.329731, 25.143934, 31.351088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.192650, 24.815470, 31.533625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565010, -0.568244, -0.598216,
		0.750547, 0.052830, 0.658702,
		-0.342700, -0.821163, 0.456343,
		47.089840, 24.569120, 31.670528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.407383, 25.848207, 31.574018>,  <47.329731, 25.143934, 31.351088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.407383, 25.848207, 31.574018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.357147, 26.211983, 31.415451>,  <47.327003, 26.430248, 31.320311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.357147, 26.211983, 31.415451>,  <47.407383, 25.848207, 31.574018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.357147, 26.211983, 31.415451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316126, -0.415438, -0.852922,
		-0.940367, 0.018196, 0.339674,
		-0.125594, 0.909439, -0.396417,
		47.319469, 26.484814, 31.296526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.708241, 25.997725, 31.311705>,  <47.407383, 25.848207, 31.574018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.708241, 25.997725, 31.311705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.004032, 26.177042, 31.110826>,  <47.181507, 26.284632, 30.990299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.004032, 26.177042, 31.110826>,  <46.708241, 25.997725, 31.311705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.004032, 26.177042, 31.110826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411587, -0.289240, -0.864255,
		-0.532694, 0.845798, -0.029376,
		0.739481, 0.448293, -0.502196,
		47.225876, 26.311529, 30.960167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.442081, 26.048059, 30.671772>,  <46.708241, 25.997725, 31.311705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.442081, 26.048059, 30.671772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.830116, 26.111938, 30.598633>,  <47.062935, 26.150267, 30.554749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.830116, 26.111938, 30.598633>,  <46.442081, 26.048059, 30.671772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.830116, 26.111938, 30.598633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102222, -0.414455, -0.904311,
		-0.220200, 0.895948, -0.385731,
		0.970084, 0.159699, -0.182848,
		47.121140, 26.159849, 30.543777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282974, 25.749012, 30.050180>,  <46.442081, 26.048059, 30.671772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282974, 25.749012, 30.050180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548832, 26.025414, 29.936510>,  <46.708347, 26.191254, 29.868307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548832, 26.025414, 29.936510>,  <46.282974, 25.749012, 30.050180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548832, 26.025414, 29.936510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737141, -0.544390, 0.400329,
		0.121925, -0.475557, -0.871194,
		0.664649, 0.691003, -0.284178,
		46.748226, 26.232714, 29.851257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.335701, 26.517323, 29.799986>,  <46.282974, 25.749012, 30.050180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.335701, 26.517323, 29.799986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.316288, 26.781036, 29.499857>,  <46.304638, 26.939264, 29.319778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.316288, 26.781036, 29.499857>,  <46.335701, 26.517323, 29.799986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.316288, 26.781036, 29.499857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170261, 0.734754, 0.656619,
		0.984203, 0.159621, 0.076588,
		-0.048537, 0.659286, -0.750324,
		46.301727, 26.978823, 29.274759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.939854, 26.936262, 29.991226>,  <46.335701, 26.517323, 29.799986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.939854, 26.936262, 29.991226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.653309, 27.128769, 29.789156>,  <46.481380, 27.244274, 29.667913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.653309, 27.128769, 29.789156>,  <46.939854, 26.936262, 29.991226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.653309, 27.128769, 29.789156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253170, 0.853981, 0.454557,
		0.650175, 0.197732, -0.733603,
		-0.716364, 0.481268, -0.505177,
		46.438400, 27.273149, 29.637602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.275784, 27.666330, 29.759130>,  <46.939854, 26.936262, 29.991226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.275784, 27.666330, 29.759130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.884727, 27.645157, 29.840528>,  <46.650093, 27.632452, 29.889368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.884727, 27.645157, 29.840528>,  <47.275784, 27.666330, 29.759130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.884727, 27.645157, 29.840528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084560, 0.787112, 0.610987,
		-0.192517, 0.614535, -0.765039,
		-0.977643, -0.052934, 0.203497,
		46.591434, 27.629276, 29.901577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.971298, 28.378693, 29.712202>,  <47.275784, 27.666330, 29.759130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.971298, 28.378693, 29.712202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.723946, 28.179056, 29.955023>,  <46.575535, 28.059273, 30.100716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.723946, 28.179056, 29.955023>,  <46.971298, 28.378693, 29.712202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.723946, 28.179056, 29.955023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115398, 0.821743, 0.558051,
		-0.777362, 0.275034, -0.565743,
		-0.618379, -0.499094, 0.607053,
		46.538433, 28.029327, 30.137138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346184, 28.740524, 29.605156>,  <46.971298, 28.378693, 29.712202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346184, 28.740524, 29.605156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337315, 28.525114, 29.942083>,  <46.331993, 28.395868, 30.144239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337315, 28.525114, 29.942083>,  <46.346184, 28.740524, 29.605156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.337315, 28.525114, 29.942083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034523, 0.842435, 0.537691,
		-0.999158, -0.017157, -0.037272,
		-0.022174, -0.538525, 0.842317,
		46.330662, 28.363556, 30.194778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.671268, 28.893131, 30.010717>,  <46.346184, 28.740524, 29.605156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.671268, 28.893131, 30.010717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927475, 28.752293, 30.283707>,  <46.081200, 28.667789, 30.447500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927475, 28.752293, 30.283707>,  <45.671268, 28.893131, 30.010717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927475, 28.752293, 30.283707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228574, 0.761012, 0.607136,
		-0.733139, -0.544876, 0.406960,
		0.640516, -0.352095, 0.682473,
		46.119629, 28.646664, 30.488449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355972, 28.965117, 30.616894>,  <45.671268, 28.893131, 30.010717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355972, 28.965117, 30.616894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742474, 28.961994, 30.719881>,  <45.974377, 28.960121, 30.781673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742474, 28.961994, 30.719881>,  <45.355972, 28.965117, 30.616894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742474, 28.961994, 30.719881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190677, 0.650347, 0.735317,
		-0.173182, -0.759597, 0.626913,
		0.966256, -0.007805, 0.257466,
		46.032349, 28.959652, 30.797121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294270, 28.888895, 31.307783>,  <45.355972, 28.965117, 30.616894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294270, 28.888895, 31.307783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.668640, 29.024330, 31.269016>,  <45.893265, 29.105591, 31.245756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.668640, 29.024330, 31.269016>,  <45.294270, 28.888895, 31.307783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.668640, 29.024330, 31.269016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129941, 0.587755, 0.798536,
		0.327338, -0.734781, 0.594094,
		0.935930, 0.338588, -0.096916,
		45.949421, 29.125906, 31.239941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556149, 28.888937, 31.993914>,  <45.294270, 28.888895, 31.307783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556149, 28.888937, 31.993914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784161, 29.139067, 31.780735>,  <45.920967, 29.289145, 31.652828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784161, 29.139067, 31.780735>,  <45.556149, 28.888937, 31.993914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.784161, 29.139067, 31.780735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112652, 0.702012, 0.703199,
		0.813864, -0.340808, 0.470613,
		0.570032, 0.625324, -0.532949,
		45.955170, 29.326664, 31.620850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.072754, 29.041897, 32.427029>,  <45.556149, 28.888937, 31.993914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.072754, 29.041897, 32.427029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049908, 29.334827, 32.155605>,  <46.036201, 29.510586, 31.992752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049908, 29.334827, 32.155605>,  <46.072754, 29.041897, 32.427029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049908, 29.334827, 32.155605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130173, 0.679326, 0.722198,
		0.989845, -0.047083, -0.134128,
		-0.057113, 0.732325, -0.678556,
		46.032772, 29.554525, 31.952038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.715683, 29.387238, 32.597126>,  <46.072754, 29.041897, 32.427029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.715683, 29.387238, 32.597126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.504765, 29.631704, 32.361012>,  <46.378216, 29.778385, 32.219341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.504765, 29.631704, 32.361012>,  <46.715683, 29.387238, 32.597126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.504765, 29.631704, 32.361012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202549, 0.765097, 0.611229,
		0.825190, 0.202734, -0.527220,
		-0.527292, 0.611167, -0.590286,
		46.346577, 29.815054, 32.183926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.068546, 30.056637, 32.659233>,  <46.715683, 29.387238, 32.597126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.068546, 30.056637, 32.659233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.706627, 30.126904, 32.504063>,  <46.489475, 30.169064, 32.410961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.706627, 30.126904, 32.504063>,  <47.068546, 30.056637, 32.659233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.706627, 30.126904, 32.504063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098694, 0.799645, 0.592307,
		0.414248, 0.574203, -0.706180,
		-0.904797, 0.175667, -0.387922,
		46.435188, 30.179604, 32.387688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.079479, 30.709524, 32.669819>,  <47.068546, 30.056637, 32.659233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.079479, 30.709524, 32.669819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691761, 30.631659, 32.609722>,  <46.459129, 30.584938, 32.573662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691761, 30.631659, 32.609722>,  <47.079479, 30.709524, 32.669819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691761, 30.631659, 32.609722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243400, 0.846479, 0.473528,
		0.035001, 0.495558, -0.867869,
		-0.969294, -0.194666, -0.150246,
		46.400974, 30.573259, 32.564648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.737637, 31.387184, 32.421021>,  <47.079479, 30.709524, 32.669819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.737637, 31.387184, 32.421021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477776, 31.146261, 32.606567>,  <46.321857, 31.001707, 32.717896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477776, 31.146261, 32.606567>,  <46.737637, 31.387184, 32.421021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.477776, 31.146261, 32.606567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281430, 0.757358, 0.589242,
		-0.706221, 0.252255, -0.661527,
		-0.649653, -0.602308, 0.463870,
		46.282879, 30.965569, 32.745728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.192394, 31.742689, 32.450867>,  <46.737637, 31.387184, 32.421021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.192394, 31.742689, 32.450867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.114883, 31.485058, 32.746868>,  <46.068375, 31.330479, 32.924469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.114883, 31.485058, 32.746868>,  <46.192394, 31.742689, 32.450867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114883, 31.485058, 32.746868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310476, 0.755796, 0.576521,
		-0.930620, -0.118036, -0.346430,
		-0.193780, -0.644080, 0.740007,
		46.056751, 31.291834, 32.968872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531162, 31.931158, 32.772785>,  <46.192394, 31.742689, 32.450867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531162, 31.931158, 32.772785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703945, 31.720322, 33.065521>,  <45.807613, 31.593821, 33.241161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.703945, 31.720322, 33.065521>,  <45.531162, 31.931158, 32.772785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.703945, 31.720322, 33.065521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139553, 0.762612, 0.631623,
		-0.891031, -0.374965, 0.255859,
		0.431958, -0.527090, 0.731839,
		45.833534, 31.562195, 33.285072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132744, 31.964193, 33.464367>,  <45.531162, 31.931158, 32.772785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132744, 31.964193, 33.464367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475288, 31.828350, 33.619965>,  <45.680813, 31.746843, 33.713326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475288, 31.828350, 33.619965>,  <45.132744, 31.964193, 33.464367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.475288, 31.828350, 33.619965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175209, 0.517531, 0.837534,
		-0.485752, -0.785384, 0.383689,
		0.856357, -0.339608, 0.388998,
		45.732197, 31.726467, 33.736664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975731, 31.660061, 34.222980>,  <45.132744, 31.964193, 33.464367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975731, 31.660061, 34.222980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361172, 31.766251, 34.210419>,  <45.592438, 31.829964, 34.202881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361172, 31.766251, 34.210419>,  <44.975731, 31.660061, 34.222980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361172, 31.766251, 34.210419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100362, 0.468153, 0.877930,
		0.247771, -0.842826, 0.477759,
		0.963606, 0.265474, -0.031407,
		45.650253, 31.845894, 34.200996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200359, 31.504354, 34.863808>,  <44.975731, 31.660061, 34.222980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200359, 31.504354, 34.863808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.473244, 31.762018, 34.725449>,  <45.636974, 31.916616, 34.642433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.473244, 31.762018, 34.725449>,  <45.200359, 31.504354, 34.863808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.473244, 31.762018, 34.725449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022294, 0.454540, 0.890447,
		0.730815, -0.615184, 0.295732,
		0.682211, 0.644160, -0.345900,
		45.677906, 31.955265, 34.621677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.588661, 31.638680, 35.424892>,  <45.200359, 31.504354, 34.863808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.588661, 31.638680, 35.424892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682030, 31.941292, 35.180542>,  <45.738049, 32.122860, 35.033932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682030, 31.941292, 35.180542>,  <45.588661, 31.638680, 35.424892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.682030, 31.941292, 35.180542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178481, 0.584227, 0.791722,
		0.955856, -0.293832, 0.001341,
		0.233417, 0.756533, -0.610880,
		45.752056, 32.168251, 34.997276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.171783, 31.885553, 35.765926>,  <45.588661, 31.638680, 35.424892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.171783, 31.885553, 35.765926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050777, 32.168633, 35.510536>,  <45.978172, 32.338478, 35.357304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050777, 32.168633, 35.510536>,  <46.171783, 31.885553, 35.765926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.050777, 32.168633, 35.510536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190503, 0.701239, 0.687003,
		0.933913, 0.086197, -0.346953,
		-0.302514, 0.707696, -0.638476,
		45.960022, 32.380939, 35.318993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.685341, 32.447285, 35.829044>,  <46.171783, 31.885553, 35.765926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.685341, 32.447285, 35.829044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.362331, 32.610992, 35.659149>,  <46.168526, 32.709217, 35.557213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.362331, 32.610992, 35.659149>,  <46.685341, 32.447285, 35.829044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.362331, 32.610992, 35.659149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082527, 0.791413, 0.605686,
		0.584028, 0.454056, -0.672863,
		-0.807527, 0.409267, -0.424736,
		46.120071, 32.733772, 35.531727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.821133, 33.238686, 35.649975>,  <46.685341, 32.447285, 35.829044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.821133, 33.238686, 35.649975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.431831, 33.162766, 35.701740>,  <46.198250, 33.117214, 35.732800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.431831, 33.162766, 35.701740>,  <46.821133, 33.238686, 35.649975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.431831, 33.162766, 35.701740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032450, 0.671296, 0.740479,
		-0.227413, 0.716477, -0.659503,
		-0.973258, -0.189796, 0.129412,
		46.139854, 33.105827, 35.740562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.400024, 33.900082, 35.710918>,  <46.821133, 33.238686, 35.649975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.400024, 33.900082, 35.710918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158092, 33.630230, 35.880177>,  <46.012932, 33.468319, 35.981731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158092, 33.630230, 35.880177>,  <46.400024, 33.900082, 35.710918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158092, 33.630230, 35.880177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206313, 0.645961, 0.734962,
		-0.769165, 0.357226, -0.529882,
		-0.604831, -0.674629, 0.423150,
		45.976643, 33.427841, 36.007122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110264, 34.268711, 36.313763>,  <46.400024, 33.900082, 35.710918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110264, 34.268711, 36.313763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505489, 34.313881, 36.271843>,  <46.742622, 34.340984, 36.246689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505489, 34.313881, 36.271843>,  <46.110264, 34.268711, 36.313763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.505489, 34.313881, 36.271843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072765, -0.257546, -0.963522,
		-0.135799, 0.959644, -0.246254,
		0.988061, 0.112927, -0.104803,
		46.801907, 34.347759, 36.240402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338684, 34.951946, 36.032345>,  <46.110264, 34.268711, 36.313763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338684, 34.951946, 36.032345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560989, 34.627460, 35.959610>,  <46.694370, 34.432770, 35.915970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560989, 34.627460, 35.959610>,  <46.338684, 34.951946, 36.032345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.560989, 34.627460, 35.959610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239822, 0.052985, -0.969370,
		0.796000, 0.582346, -0.165099,
		0.555761, -0.811212, -0.181835,
		46.727718, 34.384098, 35.905060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.998775, 35.127453, 35.575714>,  <46.338684, 34.951946, 36.032345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.998775, 35.127453, 35.575714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807285, 34.776817, 35.556046>,  <46.692390, 34.566437, 35.544243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807285, 34.776817, 35.556046>,  <46.998775, 35.127453, 35.575714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.807285, 34.776817, 35.556046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387282, 0.261107, -0.884215,
		0.787928, -0.404256, -0.464485,
		-0.478729, -0.876584, -0.049173,
		46.663666, 34.513844, 35.541294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.713078, 34.955933, 35.376060>,  <46.998775, 35.127453, 35.575714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.713078, 34.955933, 35.376060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.791111, 35.133133, 35.026043>,  <47.837933, 35.239452, 34.816032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.791111, 35.133133, 35.026043>,  <47.713078, 34.955933, 35.376060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.791111, 35.133133, 35.026043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979777, 0.128507, -0.153375,
		0.044504, 0.887264, 0.459110,
		0.195083, 0.442999, -0.875040,
		47.849636, 35.266033, 34.763531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.027225, 38.414505, 44.473713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.765804, 38.112663, 44.497166>,  <35.608952, 37.931557, 44.511238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.765804, 38.112663, 44.497166>,  <36.027225, 38.414505, 44.473713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765804, 38.112663, 44.497166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188817, 0.087537, -0.978103,
		0.732952, -0.650310, -0.199693,
		-0.653551, -0.754608, 0.058629,
		35.569740, 37.886280, 44.514755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267727, 37.908291, 43.985790>,  <36.027225, 38.414505, 44.473713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267727, 37.908291, 43.985790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.886887, 37.804222, 44.050064>,  <35.658382, 37.741779, 44.088627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.886887, 37.804222, 44.050064>,  <36.267727, 37.908291, 43.985790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886887, 37.804222, 44.050064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208488, 0.167906, -0.963504,
		0.223705, -0.950849, -0.214107,
		-0.952097, -0.260179, 0.160679,
		35.601257, 37.726170, 44.098267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051491, 37.326538, 43.462032>,  <36.267727, 37.908291, 43.985790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051491, 37.326538, 43.462032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.712376, 37.490627, 43.596474>,  <35.508907, 37.589081, 43.677139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.712376, 37.490627, 43.596474>,  <36.051491, 37.326538, 43.462032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712376, 37.490627, 43.596474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380199, -0.028303, -0.924471,
		-0.369731, -0.911544, 0.179963,
		-0.847790, 0.410227, 0.336104,
		35.458038, 37.613693, 43.697304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523361, 36.885857, 43.184380>,  <36.051491, 37.326538, 43.462032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523361, 36.885857, 43.184380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339939, 37.229103, 43.276787>,  <35.229885, 37.435051, 43.332233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339939, 37.229103, 43.276787>,  <35.523361, 36.885857, 43.184380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339939, 37.229103, 43.276787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337251, 0.072478, -0.938621,
		-0.822186, -0.508320, 0.256165,
		-0.458554, 0.858113, 0.231022,
		35.202374, 37.486538, 43.346092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869125, 36.926670, 42.837185>,  <35.523361, 36.885857, 43.184380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869125, 36.926670, 42.837185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928379, 37.314194, 42.916641>,  <34.963932, 37.546707, 42.964314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.928379, 37.314194, 42.916641>,  <34.869125, 36.926670, 42.837185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928379, 37.314194, 42.916641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477239, 0.245946, -0.843655,
		-0.866199, 0.030174, 0.498788,
		0.148132, 0.968814, 0.198638,
		34.972820, 37.604839, 42.976234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355770, 37.289631, 42.663574>,  <34.869125, 36.926670, 42.837185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355770, 37.289631, 42.663574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.630394, 37.580227, 42.651974>,  <34.795170, 37.754585, 42.645016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.630394, 37.580227, 42.651974>,  <34.355770, 37.289631, 42.663574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630394, 37.580227, 42.651974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268672, 0.216440, -0.938600,
		-0.675610, 0.652198, 0.343788,
		0.686562, 0.726493, -0.028998,
		34.836361, 37.798176, 42.643276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039764, 37.770172, 42.277275>,  <34.355770, 37.289631, 42.663574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039764, 37.770172, 42.277275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.428539, 37.859421, 42.247459>,  <34.661804, 37.912968, 42.229568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.428539, 37.859421, 42.247459>,  <34.039764, 37.770172, 42.277275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428539, 37.859421, 42.247459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087630, 0.049337, -0.994931,
		-0.218311, 0.973542, 0.067504,
		0.971937, 0.223119, -0.074541,
		34.720119, 37.926357, 42.225098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052952, 38.269062, 41.710632>,  <34.039764, 37.770172, 42.277275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052952, 38.269062, 41.710632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435719, 38.162563, 41.756969>,  <34.665379, 38.098663, 41.784771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435719, 38.162563, 41.756969>,  <34.052952, 38.269062, 41.710632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435719, 38.162563, 41.756969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124344, 0.015226, -0.992122,
		0.262383, 0.963785, 0.047676,
		0.956919, -0.266245, 0.115845,
		34.722794, 38.082691, 41.791721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490677, 38.692333, 41.270985>,  <34.052952, 38.269062, 41.710632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490677, 38.692333, 41.270985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.717175, 38.369148, 41.336170>,  <34.853073, 38.175236, 41.375282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.717175, 38.369148, 41.336170>,  <34.490677, 38.692333, 41.270985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717175, 38.369148, 41.336170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211735, -0.048494, -0.976123,
		0.796575, 0.587233, 0.143614,
		0.566248, -0.807964, 0.162967,
		34.887051, 38.126759, 41.385059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081924, 38.921986, 40.914326>,  <34.490677, 38.692333, 41.270985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081924, 38.921986, 40.914326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.070755, 38.523388, 40.945858>,  <35.064053, 38.284229, 40.964779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.070755, 38.523388, 40.945858>,  <35.081924, 38.921986, 40.914326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070755, 38.523388, 40.945858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172475, -0.082481, -0.981555,
		0.984618, -0.013812, 0.174174,
		-0.027923, -0.996497, 0.078830,
		35.062378, 38.224438, 40.969505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593376, 38.688465, 40.584873>,  <35.081924, 38.921986, 40.914326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593376, 38.688465, 40.584873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.385132, 38.347111, 40.595398>,  <35.260185, 38.142296, 40.601711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.385132, 38.347111, 40.595398>,  <35.593376, 38.688465, 40.584873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385132, 38.347111, 40.595398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268496, -0.192892, -0.943771,
		0.810480, -0.484270, 0.329553,
		-0.520608, -0.853390, 0.026310,
		35.228951, 38.091095, 40.603291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008934, 38.073078, 40.469524>,  <35.593376, 38.688465, 40.584873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008934, 38.073078, 40.469524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.644119, 37.989475, 40.328381>,  <35.425232, 37.939312, 40.243694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.644119, 37.989475, 40.328381>,  <36.008934, 38.073078, 40.469524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644119, 37.989475, 40.328381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384803, -0.138546, -0.912542,
		0.141846, -0.968049, 0.206788,
		-0.912035, -0.209013, -0.352856,
		35.370510, 37.926773, 40.222523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101177, 37.488758, 40.065117>,  <36.008934, 38.073078, 40.469524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101177, 37.488758, 40.065117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.743259, 37.597599, 39.923523>,  <35.528507, 37.662903, 39.838566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.743259, 37.597599, 39.923523>,  <36.101177, 37.488758, 40.065117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743259, 37.597599, 39.923523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247753, -0.356957, -0.900666,
		-0.371446, -0.893607, 0.251983,
		-0.894789, 0.272119, -0.353984,
		35.474823, 37.679230, 39.817329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866234, 36.899471, 39.790916>,  <36.101177, 37.488758, 40.065117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866234, 36.899471, 39.790916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649418, 37.188889, 39.619953>,  <35.519329, 37.362541, 39.517376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649418, 37.188889, 39.619953>,  <35.866234, 36.899471, 39.790916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649418, 37.188889, 39.619953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167811, -0.405162, -0.898711,
		-0.823427, -0.558860, 0.098195,
		-0.542039, 0.723546, -0.427405,
		35.486805, 37.405952, 39.491734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629082, 36.468227, 39.336971>,  <35.866234, 36.899471, 39.790916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629082, 36.468227, 39.336971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.560654, 36.851017, 39.243210>,  <35.519596, 37.080688, 39.186954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.560654, 36.851017, 39.243210>,  <35.629082, 36.468227, 39.336971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560654, 36.851017, 39.243210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360001, -0.160745, -0.919000,
		-0.917134, -0.241596, -0.317012,
		-0.171069, 0.956970, -0.234400,
		35.509335, 37.138107, 39.172890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237858, 36.496429, 38.702690>,  <35.629082, 36.468227, 39.336971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237858, 36.496429, 38.702690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.398590, 36.861908, 38.727001>,  <35.495029, 37.081196, 38.741589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.398590, 36.861908, 38.727001>,  <35.237858, 36.496429, 38.702690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398590, 36.861908, 38.727001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417619, -0.123787, -0.900151,
		-0.814941, 0.387087, -0.431318,
		0.401828, 0.913696, 0.060776,
		35.519138, 37.136017, 38.745235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072639, 36.762253, 38.105968>,  <35.237858, 36.496429, 38.702690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072639, 36.762253, 38.105968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.387077, 36.981819, 38.219631>,  <35.575741, 37.113560, 38.287830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.387077, 36.981819, 38.219631>,  <35.072639, 36.762253, 38.105968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387077, 36.981819, 38.219631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472580, -0.237422, -0.848704,
		-0.398406, 0.801447, -0.446044,
		0.786092, 0.548920, 0.284157,
		35.622906, 37.146496, 38.304878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309338, 37.038841, 37.482151>,  <35.072639, 36.762253, 38.105968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309338, 37.038841, 37.482151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605061, 37.076321, 37.748878>,  <35.782494, 37.098808, 37.908916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605061, 37.076321, 37.748878>,  <35.309338, 37.038841, 37.482151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605061, 37.076321, 37.748878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669977, -0.201627, -0.714477,
		0.067506, 0.974971, -0.211837,
		0.739306, 0.093694, 0.666820,
		35.826851, 37.104427, 37.948925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757496, 37.394402, 37.129578>,  <35.309338, 37.038841, 37.482151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757496, 37.394402, 37.129578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.966805, 37.200813, 37.410137>,  <36.092388, 37.084660, 37.578472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.966805, 37.200813, 37.410137>,  <35.757496, 37.394402, 37.129578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966805, 37.200813, 37.410137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616168, -0.353688, -0.703734,
		0.588662, 0.800424, 0.113132,
		0.523272, -0.483970, 0.701398,
		36.123787, 37.055622, 37.620556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378468, 37.488926, 36.984333>,  <35.757496, 37.394402, 37.129578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378468, 37.488926, 36.984333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.364189, 37.155334, 37.204594>,  <36.355621, 36.955181, 37.336750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.364189, 37.155334, 37.204594>,  <36.378468, 37.488926, 36.984333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364189, 37.155334, 37.204594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603996, -0.456983, -0.652959,
		0.796188, 0.309280, 0.520030,
		-0.035698, -0.833974, 0.550648,
		36.353481, 36.905144, 37.369789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994099, 37.121716, 36.875164>,  <36.378468, 37.488926, 36.984333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994099, 37.121716, 36.875164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758526, 36.838951, 37.031845>,  <36.617180, 36.669292, 37.125854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758526, 36.838951, 37.031845>,  <36.994099, 37.121716, 36.875164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758526, 36.838951, 37.031845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450011, -0.689424, -0.567613,
		0.671300, -0.158019, 0.724146,
		-0.588937, -0.706912, 0.391700,
		36.581844, 36.626877, 37.149357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291237, 36.577976, 37.247486>,  <36.994099, 37.121716, 36.875164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291237, 36.577976, 37.247486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960529, 36.441975, 37.068222>,  <36.762104, 36.360374, 36.960663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960529, 36.441975, 37.068222>,  <37.291237, 36.577976, 37.247486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960529, 36.441975, 37.068222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553674, -0.632701, -0.541419,
		-0.099466, -0.695764, 0.711350,
		-0.826772, -0.340004, -0.448158,
		36.712498, 36.339973, 36.933773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989384, 36.208828, 37.243824>,  <37.291237, 36.577976, 37.247486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989384, 36.208828, 37.243824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.292744, 36.386951, 37.053444>,  <38.474762, 36.493824, 36.939217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.292744, 36.386951, 37.053444>,  <37.989384, 36.208828, 37.243824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292744, 36.386951, 37.053444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397895, 0.262051, 0.879209,
		0.516241, -0.856172, 0.021555,
		0.758403, 0.445307, -0.475948,
		38.520264, 36.520542, 36.910660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594376, 36.090023, 37.580936>,  <37.989384, 36.208828, 37.243824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594376, 36.090023, 37.580936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.694492, 36.408741, 37.360943>,  <38.754562, 36.599972, 37.228947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.694492, 36.408741, 37.360943>,  <38.594376, 36.090023, 37.580936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694492, 36.408741, 37.360943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395047, 0.434569, 0.809375,
		0.883906, -0.419851, -0.205999,
		0.250295, 0.796791, -0.549979,
		38.769581, 36.647778, 37.195950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331383, 36.320446, 37.693157>,  <38.594376, 36.090023, 37.580936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331383, 36.320446, 37.693157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.125938, 36.634182, 37.554008>,  <39.002670, 36.822422, 37.470520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.125938, 36.634182, 37.554008>,  <39.331383, 36.320446, 37.693157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125938, 36.634182, 37.554008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397542, 0.576821, 0.713609,
		0.760371, 0.228225, -0.608070,
		-0.513611, 0.784341, -0.347868,
		38.971855, 36.869484, 37.449650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816383, 36.857708, 37.881691>,  <39.331383, 36.320446, 37.693157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816383, 36.857708, 37.881691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.481506, 37.061527, 37.802223>,  <39.280582, 37.183819, 37.754543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.481506, 37.061527, 37.802223>,  <39.816383, 36.857708, 37.881691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481506, 37.061527, 37.802223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166321, 0.583262, 0.795074,
		0.521010, 0.632584, -0.573050,
		-0.837190, 0.509551, -0.198673,
		39.230350, 37.214394, 37.742622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015663, 37.517914, 37.902039>,  <39.816383, 36.857708, 37.881691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015663, 37.517914, 37.902039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.622574, 37.532139, 37.974693>,  <39.386719, 37.540672, 38.018288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.622574, 37.532139, 37.974693>,  <40.015663, 37.517914, 37.902039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622574, 37.532139, 37.974693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176702, 0.472273, 0.863559,
		-0.055071, 0.880735, -0.470398,
		-0.982723, 0.035563, 0.181636,
		39.327759, 37.542809, 38.029182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892288, 38.171928, 38.182240>,  <40.015663, 37.517914, 37.902039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892288, 38.171928, 38.182240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.554718, 37.985168, 38.287918>,  <39.352177, 37.873112, 38.351326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.554718, 37.985168, 38.287918>,  <39.892288, 38.171928, 38.182240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554718, 37.985168, 38.287918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053548, 0.563324, 0.824499,
		-0.533788, 0.681666, -0.500403,
		-0.843921, -0.466903, 0.264193,
		39.301540, 37.845097, 38.367176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444992, 38.820625, 38.389576>,  <39.892288, 38.171928, 38.182240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444992, 38.820625, 38.389576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.347263, 38.476170, 38.567902>,  <39.288624, 38.269497, 38.674896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.347263, 38.476170, 38.567902>,  <39.444992, 38.820625, 38.389576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347263, 38.476170, 38.567902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020044, 0.455167, 0.890180,
		-0.969486, 0.226428, -0.093948,
		-0.244324, -0.861135, 0.445817,
		39.273968, 38.217831, 38.701645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906822, 38.972294, 38.838905>,  <39.444992, 38.820625, 38.389576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906822, 38.972294, 38.838905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012486, 38.610611, 38.973148>,  <39.075886, 38.393600, 39.053692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012486, 38.610611, 38.973148>,  <38.906822, 38.972294, 38.838905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012486, 38.610611, 38.973148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007617, 0.345999, 0.938204,
		-0.964448, -0.250394, 0.084513,
		0.264162, -0.904205, 0.335606,
		39.091736, 38.339348, 39.073830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579594, 39.021008, 39.427937>,  <38.906822, 38.972294, 38.838905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579594, 39.021008, 39.427937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.831299, 38.718716, 39.500484>,  <38.982323, 38.537338, 39.544014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.831299, 38.718716, 39.500484>,  <38.579594, 39.021008, 39.427937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831299, 38.718716, 39.500484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005354, 0.237579, 0.971353,
		-0.777175, -0.610264, 0.153546,
		0.629262, -0.755733, 0.181373,
		39.020077, 38.491997, 39.554897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300274, 38.636215, 39.959072>,  <38.579594, 39.021008, 39.427937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300274, 38.636215, 39.959072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685802, 38.530224, 39.970581>,  <38.917122, 38.466629, 39.977486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685802, 38.530224, 39.970581>,  <38.300274, 38.636215, 39.959072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685802, 38.530224, 39.970581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012739, 0.062014, 0.997994,
		-0.266231, -0.962258, 0.056395,
		0.963825, -0.264979, 0.028768,
		38.974949, 38.450729, 39.979210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332844, 38.083279, 40.421581>,  <38.300274, 38.636215, 39.959072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332844, 38.083279, 40.421581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.695930, 38.251083, 40.418301>,  <38.913780, 38.351765, 40.416332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.695930, 38.251083, 40.418301>,  <38.332844, 38.083279, 40.421581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695930, 38.251083, 40.418301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006054, 0.032636, 0.999449,
		0.419546, -0.907164, 0.032164,
		0.907714, 0.419509, -0.008200,
		38.968246, 38.376938, 40.415840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736206, 37.696777, 40.887356>,  <38.332844, 38.083279, 40.421581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736206, 37.696777, 40.887356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916260, 38.052200, 40.851910>,  <39.024292, 38.265453, 40.830643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916260, 38.052200, 40.851910>,  <38.736206, 37.696777, 40.887356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916260, 38.052200, 40.851910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019591, 0.109038, 0.993845,
		0.892746, -0.445628, 0.066489,
		0.450135, 0.888553, -0.088613,
		39.051300, 38.318768, 40.825325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347946, 37.712189, 41.414948>,  <38.736206, 37.696777, 40.887356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347946, 37.712189, 41.414948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.233940, 38.089725, 41.348091>,  <39.165539, 38.316246, 41.307976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.233940, 38.089725, 41.348091>,  <39.347946, 37.712189, 41.414948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233940, 38.089725, 41.348091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019295, 0.168691, 0.985480,
		0.958330, 0.284099, -0.029867,
		-0.285013, 0.943838, -0.167143,
		39.148438, 38.372875, 41.297947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759686, 38.080292, 41.828171>,  <39.347946, 37.712189, 41.414948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759686, 38.080292, 41.828171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448456, 38.317780, 41.746105>,  <39.261719, 38.460274, 41.696865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448456, 38.317780, 41.746105>,  <39.759686, 38.080292, 41.828171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448456, 38.317780, 41.746105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189338, 0.089752, 0.977802,
		0.598954, 0.799651, 0.042580,
		-0.778078, 0.593720, -0.205162,
		39.215031, 38.495895, 41.684555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599232, 38.401684, 42.478519>,  <39.759686, 38.080292, 41.828171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599232, 38.401684, 42.478519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300396, 38.548340, 42.256737>,  <39.121094, 38.636333, 42.123665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300396, 38.548340, 42.256737>,  <39.599232, 38.401684, 42.478519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300396, 38.548340, 42.256737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447788, 0.338868, 0.827438,
		0.491264, 0.866453, -0.088987,
		-0.747091, 0.366644, -0.554461,
		39.076267, 38.658333, 42.090397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523647, 39.126076, 42.655136>,  <39.599232, 38.401684, 42.478519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523647, 39.126076, 42.655136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.186470, 38.964119, 42.513432>,  <38.984161, 38.866947, 42.428410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.186470, 38.964119, 42.513432>,  <39.523647, 39.126076, 42.655136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186470, 38.964119, 42.513432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410325, 0.057959, 0.910096,
		-0.347956, 0.912526, -0.214992,
		-0.842947, -0.404890, -0.354265,
		38.933586, 38.842651, 42.407150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034241, 39.460171, 43.000999>,  <39.523647, 39.126076, 42.655136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034241, 39.460171, 43.000999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828270, 39.144184, 42.867847>,  <38.704689, 38.954594, 42.787956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828270, 39.144184, 42.867847>,  <39.034241, 39.460171, 43.000999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828270, 39.144184, 42.867847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408966, -0.114896, 0.905288,
		-0.753392, 0.602290, -0.263906,
		-0.514924, -0.789965, -0.332878,
		38.673794, 38.907196, 42.767982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553310, 39.558117, 43.451748>,  <39.034241, 39.460171, 43.000999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553310, 39.558117, 43.451748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478813, 39.193520, 43.305058>,  <38.434113, 38.974762, 43.217045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478813, 39.193520, 43.305058>,  <38.553310, 39.558117, 43.451748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478813, 39.193520, 43.305058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427673, -0.260828, 0.865485,
		-0.884538, 0.318034, -0.341243,
		-0.186248, -0.911495, -0.366727,
		38.422939, 38.920071, 43.195038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.471725, 39.128105, 43.374771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.744827, 38.835865, 43.371311>,  <37.908688, 38.660522, 43.369236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.744827, 38.835865, 43.371311>,  <37.471725, 39.128105, 43.374771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744827, 38.835865, 43.371311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253506, -0.247976, 0.935009,
		-0.685261, -0.636187, -0.354518,
		0.682753, -0.730598, -0.008651,
		37.949654, 38.616684, 43.368717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098503, 38.522480, 43.615341>,  <37.471725, 39.128105, 43.374771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098503, 38.522480, 43.615341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486515, 38.516949, 43.712383>,  <37.719322, 38.513630, 43.770607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486515, 38.516949, 43.712383>,  <37.098503, 38.522480, 43.615341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486515, 38.516949, 43.712383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238052, -0.254533, 0.937307,
		0.048789, -0.966965, -0.250196,
		0.970026, -0.013830, 0.242607,
		37.777523, 38.512798, 43.785164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126812, 38.010647, 44.117321>,  <37.098503, 38.522480, 43.615341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126812, 38.010647, 44.117321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483158, 38.185329, 44.167362>,  <37.696964, 38.290138, 44.197388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483158, 38.185329, 44.167362>,  <37.126812, 38.010647, 44.117321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483158, 38.185329, 44.167362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055452, -0.168798, 0.984089,
		0.450873, -0.883627, -0.126159,
		0.890864, 0.436704, 0.125106,
		37.750416, 38.316341, 44.204895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410187, 37.661598, 44.671329>,  <37.126812, 38.010647, 44.117321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410187, 37.661598, 44.671329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652531, 37.979710, 44.679867>,  <37.797939, 38.170578, 44.684990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652531, 37.979710, 44.679867>,  <37.410187, 37.661598, 44.671329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652531, 37.979710, 44.679867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069316, -0.079498, 0.994422,
		0.792543, -0.601004, -0.103291,
		0.605863, 0.795282, 0.021347,
		37.834290, 38.218296, 44.686272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040211, 37.479084, 44.979877>,  <37.410187, 37.661598, 44.671329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040211, 37.479084, 44.979877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.966591, 37.869942, 45.022419>,  <37.922417, 38.104458, 45.047943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.966591, 37.869942, 45.022419>,  <38.040211, 37.479084, 44.979877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966591, 37.869942, 45.022419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093410, -0.090319, 0.991523,
		0.978468, 0.192427, -0.074652,
		-0.184053, 0.977146, 0.106349,
		37.911373, 38.163086, 45.054325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492439, 37.732159, 45.477798>,  <38.040211, 37.479084, 44.979877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492439, 37.732159, 45.477798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.218037, 38.022945, 45.489883>,  <38.053394, 38.197418, 45.497135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.218037, 38.022945, 45.489883>,  <38.492439, 37.732159, 45.477798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218037, 38.022945, 45.489883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152773, 0.103316, 0.982846,
		0.711375, 0.678855, -0.181937,
		-0.686007, 0.726967, 0.030215,
		38.012234, 38.241035, 45.498947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753613, 38.227028, 45.952217>,  <38.492439, 37.732159, 45.477798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753613, 38.227028, 45.952217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.361004, 38.301243, 45.933521>,  <38.125439, 38.345772, 45.922302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.361004, 38.301243, 45.933521>,  <38.753613, 38.227028, 45.952217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361004, 38.301243, 45.933521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017493, 0.156258, 0.987561,
		0.190534, 0.970134, -0.150126,
		-0.981525, 0.185538, -0.046743,
		38.066547, 38.356903, 45.919498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644596, 38.633678, 46.493584>,  <38.753613, 38.227028, 45.952217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644596, 38.633678, 46.493584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261322, 38.541241, 46.426079>,  <38.031357, 38.485779, 46.385578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261322, 38.541241, 46.426079>,  <38.644596, 38.633678, 46.493584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261322, 38.541241, 46.426079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207860, 0.156761, 0.965516,
		-0.196674, 0.960219, -0.198241,
		-0.958183, -0.231098, -0.168761,
		37.973866, 38.471912, 46.375450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162720, 39.093590, 46.833920>,  <38.644596, 38.633678, 46.493584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162720, 39.093590, 46.833920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.939400, 38.766670, 46.776901>,  <37.805408, 38.570518, 46.742691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.939400, 38.766670, 46.776901>,  <38.162720, 39.093590, 46.833920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939400, 38.766670, 46.776901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290024, 0.031292, 0.956508,
		-0.777297, 0.575357, -0.254508,
		-0.558298, -0.817304, -0.142544,
		37.771912, 38.521481, 46.734138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630486, 39.103413, 47.294872>,  <38.162720, 39.093590, 46.833920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630486, 39.103413, 47.294872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571239, 38.718815, 47.202271>,  <37.535694, 38.488056, 47.146709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571239, 38.718815, 47.202271>,  <37.630486, 39.103413, 47.294872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571239, 38.718815, 47.202271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388749, -0.158640, 0.907584,
		-0.909361, 0.224420, -0.350283,
		-0.148111, -0.961493, -0.231504,
		37.526806, 38.430367, 47.132820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920666, 38.908619, 47.402004>,  <37.630486, 39.103413, 47.294872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920666, 38.908619, 47.402004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.147995, 38.584686, 47.460217>,  <37.284393, 38.390327, 47.495144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.147995, 38.584686, 47.460217>,  <36.920666, 38.908619, 47.402004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147995, 38.584686, 47.460217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400771, -0.117985, 0.908550,
		-0.718606, -0.574669, -0.391612,
		0.568320, -0.809836, 0.145526,
		37.318493, 38.341736, 47.503876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506302, 38.477589, 47.800823>,  <36.920666, 38.908619, 47.402004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506302, 38.477589, 47.800823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.860806, 38.309444, 47.878628>,  <37.073509, 38.208557, 47.925312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.860806, 38.309444, 47.878628>,  <36.506302, 38.477589, 47.800823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860806, 38.309444, 47.878628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323299, -0.260686, 0.909682,
		-0.331692, -0.869100, -0.366939,
		0.886261, -0.420366, 0.194512,
		37.126686, 38.183334, 47.936981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354954, 37.955318, 48.233921>,  <36.506302, 38.477589, 47.800823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354954, 37.955318, 48.233921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.752396, 37.924656, 48.267071>,  <36.990860, 37.906258, 48.286961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.752396, 37.924656, 48.267071>,  <36.354954, 37.955318, 48.233921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752396, 37.924656, 48.267071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110272, -0.501804, 0.857924,
		-0.024175, -0.861578, -0.507049,
		0.993607, -0.076654, 0.082877,
		37.050476, 37.901661, 48.291935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486641, 37.255470, 48.507538>,  <36.354954, 37.955318, 48.233921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486641, 37.255470, 48.507538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.772320, 37.520779, 48.596966>,  <36.943729, 37.679966, 48.650623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.772320, 37.520779, 48.596966>,  <36.486641, 37.255470, 48.507538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772320, 37.520779, 48.596966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146907, -0.454350, 0.878626,
		0.684350, -0.594671, -0.421937,
		0.714201, 0.663274, 0.223574,
		36.986580, 37.719761, 48.664040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061153, 36.866497, 48.823322>,  <36.486641, 37.255470, 48.507538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061153, 36.866497, 48.823322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102070, 37.244198, 48.948490>,  <37.126621, 37.470818, 49.023590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102070, 37.244198, 48.948490>,  <37.061153, 36.866497, 48.823322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102070, 37.244198, 48.948490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121987, -0.324102, 0.938124,
		0.987247, -0.057789, -0.148339,
		0.102290, 0.944255, 0.312919,
		37.132755, 37.527473, 49.042366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574158, 36.861153, 49.218704>,  <37.061153, 36.866497, 48.823322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574158, 36.861153, 49.218704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.401917, 37.196812, 49.351620>,  <37.298573, 37.398209, 49.431370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.401917, 37.196812, 49.351620>,  <37.574158, 36.861153, 49.218704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401917, 37.196812, 49.351620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009555, -0.372385, 0.928029,
		0.902492, 0.396435, 0.168367,
		-0.430601, 0.839148, 0.332286,
		37.272736, 37.448555, 49.451305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060703, 37.143417, 49.721451>,  <37.574158, 36.861153, 49.218704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060703, 37.143417, 49.721451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695011, 37.284378, 49.801441>,  <37.475594, 37.368954, 49.849434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695011, 37.284378, 49.801441>,  <38.060703, 37.143417, 49.721451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695011, 37.284378, 49.801441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124751, -0.224753, 0.966397,
		0.385505, 0.908460, 0.161514,
		-0.914234, 0.352402, 0.199974,
		37.420742, 37.390099, 49.861435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117397, 37.320797, 50.360332>,  <38.060703, 37.143417, 49.721451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117397, 37.320797, 50.360332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.723419, 37.370766, 50.312538>,  <37.487034, 37.400749, 50.283859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.723419, 37.370766, 50.312538>,  <38.117397, 37.320797, 50.360332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723419, 37.370766, 50.312538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145898, -0.229959, 0.962202,
		0.092725, 0.965149, 0.244723,
		-0.984945, 0.124924, -0.119490,
		37.427937, 37.408241, 50.276691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886959, 37.679546, 50.982471>,  <38.117397, 37.320797, 50.360332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886959, 37.679546, 50.982471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577354, 37.482105, 50.823849>,  <37.391590, 37.363640, 50.728676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577354, 37.482105, 50.823849>,  <37.886959, 37.679546, 50.982471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577354, 37.482105, 50.823849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304842, -0.258419, 0.916674,
		-0.554953, 0.830405, 0.049548,
		-0.774015, -0.493606, -0.396553,
		37.345150, 37.334023, 50.704884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262814, 37.830463, 51.372650>,  <37.886959, 37.679546, 50.982471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262814, 37.830463, 51.372650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.200802, 37.470001, 51.210716>,  <37.163593, 37.253723, 51.113556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.200802, 37.470001, 51.210716>,  <37.262814, 37.830463, 51.372650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200802, 37.470001, 51.210716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470510, -0.292974, 0.832337,
		-0.868669, 0.319515, -0.378582,
		-0.155030, -0.901153, -0.404833,
		37.154293, 37.199654, 51.089268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639416, 37.498531, 51.665623>,  <37.262814, 37.830463, 51.372650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639416, 37.498531, 51.665623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.814110, 37.174595, 51.508945>,  <36.918926, 36.980232, 51.414940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.814110, 37.174595, 51.508945>,  <36.639416, 37.498531, 51.665623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814110, 37.174595, 51.508945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334246, -0.550325, 0.765129,
		-0.835188, -0.203240, -0.511033,
		0.436739, -0.809837, -0.391693,
		36.945133, 36.931644, 51.391438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167229, 36.983692, 51.983250>,  <36.639416, 37.498531, 51.665623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167229, 36.983692, 51.983250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470890, 36.756962, 51.855251>,  <36.653088, 36.620922, 51.778450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470890, 36.756962, 51.855251>,  <36.167229, 36.983692, 51.983250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470890, 36.756962, 51.855251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005163, -0.496840, 0.867827,
		-0.650895, -0.657159, -0.380102,
		0.759150, -0.566827, -0.319998,
		36.698635, 36.586914, 51.759251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983971, 36.302345, 52.173603>,  <36.167229, 36.983692, 51.983250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983971, 36.302345, 52.173603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.382732, 36.307293, 52.142548>,  <36.621990, 36.310261, 52.123913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.382732, 36.307293, 52.142548>,  <35.983971, 36.302345, 52.173603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382732, 36.307293, 52.142548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075168, -0.439301, 0.895190,
		-0.023035, -0.898255, -0.438871,
		0.996905, 0.012368, -0.077639,
		36.681805, 36.311005, 52.119255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754288, 35.594193, 52.409725>,  <35.983971, 36.302345, 52.173603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754288, 35.594193, 52.409725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.126637, 35.734264, 52.451405>,  <36.350044, 35.818306, 52.476410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.126637, 35.734264, 52.451405>,  <35.754288, 35.594193, 52.409725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126637, 35.734264, 52.451405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338543, 0.719520, 0.606366,
		0.137364, -0.599723, 0.788329,
		0.930870, 0.350177, 0.104196,
		36.405899, 35.839317, 52.482662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063854, 35.946495, 52.329586>,  <35.754288, 35.594193, 52.409725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063854, 35.946495, 52.329586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.693382, 35.795811, 52.322918>,  <34.471100, 35.705399, 52.318916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.693382, 35.795811, 52.322918>,  <35.063854, 35.946495, 52.329586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693382, 35.795811, 52.322918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079811, -0.152633, -0.985055,
		0.368539, -0.913669, 0.171432,
		-0.926180, -0.376713, -0.016669,
		34.415527, 35.682796, 52.317917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017151, 35.256618, 51.999222>,  <35.063854, 35.946495, 52.329586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017151, 35.256618, 51.999222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673920, 35.457539, 51.956520>,  <34.467979, 35.578091, 51.930901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673920, 35.457539, 51.956520>,  <35.017151, 35.256618, 51.999222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673920, 35.457539, 51.956520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048238, -0.128120, -0.990585,
		-0.511244, -0.855151, 0.085708,
		-0.858081, 0.502296, -0.106751,
		34.416496, 35.608227, 51.924496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674664, 34.843548, 51.529755>,  <35.017151, 35.256618, 51.999222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674664, 34.843548, 51.529755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555443, 35.225349, 51.526176>,  <34.483910, 35.454430, 51.524029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555443, 35.225349, 51.526176>,  <34.674664, 34.843548, 51.529755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555443, 35.225349, 51.526176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055870, 0.008084, -0.998405,
		-0.952913, -0.298077, -0.055737,
		-0.298053, 0.954507, -0.008950,
		34.466026, 35.511703, 51.523491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248447, 34.922455, 50.907074>,  <34.674664, 34.843548, 51.529755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248447, 34.922455, 50.907074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320820, 35.305138, 50.998272>,  <34.364243, 35.534748, 51.052990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320820, 35.305138, 50.998272>,  <34.248447, 34.922455, 50.907074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320820, 35.305138, 50.998272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001099, 0.231626, -0.972804,
		-0.983495, 0.176264, 0.040857,
		0.180934, 0.956703, 0.227997,
		34.375099, 35.592148, 51.066669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848236, 35.298023, 50.398613>,  <34.248447, 34.922455, 50.907074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848236, 35.298023, 50.398613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.138222, 35.538334, 50.533371>,  <34.312214, 35.682522, 50.614227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.138222, 35.538334, 50.533371>,  <33.848236, 35.298023, 50.398613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138222, 35.538334, 50.533371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245986, 0.231036, -0.941336,
		-0.643369, 0.765302, 0.019708,
		0.724960, 0.600778, 0.336895,
		34.355709, 35.718567, 50.634441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713970, 35.865952, 49.947147>,  <33.848236, 35.298023, 50.398613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713970, 35.865952, 49.947147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087875, 35.894299, 50.086403>,  <34.312218, 35.911308, 50.169956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087875, 35.894299, 50.086403>,  <33.713970, 35.865952, 49.947147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087875, 35.894299, 50.086403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306911, 0.332525, -0.891759,
		-0.178963, 0.940428, 0.289080,
		0.934761, 0.070870, 0.348137,
		34.368305, 35.915558, 50.190845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889652, 36.571884, 49.873753>,  <33.713970, 35.865952, 49.947147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889652, 36.571884, 49.873753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224083, 36.352459, 49.877014>,  <34.424740, 36.220806, 49.878971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224083, 36.352459, 49.877014>,  <33.889652, 36.571884, 49.873753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224083, 36.352459, 49.877014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249375, 0.366764, -0.896268,
		0.488666, 0.751378, 0.443438,
		0.836073, -0.548558, 0.008150,
		34.474903, 36.187893, 49.879459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291798, 37.025734, 49.438507>,  <33.889652, 36.571884, 49.873753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291798, 37.025734, 49.438507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.504658, 36.687225, 49.448689>,  <34.632374, 36.484119, 49.454796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.504658, 36.687225, 49.448689>,  <34.291798, 37.025734, 49.438507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504658, 36.687225, 49.448689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432450, 0.245842, -0.867496,
		0.727879, 0.472641, 0.496793,
		0.532146, -0.846270, 0.025450,
		34.664303, 36.433346, 49.456322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064529, 37.192593, 49.186028>,  <34.291798, 37.025734, 49.438507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064529, 37.192593, 49.186028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984753, 36.802670, 49.146088>,  <34.936886, 36.568714, 49.122124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984753, 36.802670, 49.146088>,  <35.064529, 37.192593, 49.186028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984753, 36.802670, 49.146088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453139, -0.001403, -0.891439,
		0.868842, -0.223039, 0.442003,
		-0.199445, -0.974809, -0.099849,
		34.924919, 36.510227, 49.116135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646000, 37.077225, 49.134567>,  <35.064529, 37.192593, 49.186028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646000, 37.077225, 49.134567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.421219, 36.782574, 48.984047>,  <35.286350, 36.605785, 48.893734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.421219, 36.782574, 48.984047>,  <35.646000, 37.077225, 49.134567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421219, 36.782574, 48.984047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306564, 0.237055, -0.921859,
		0.768266, -0.633396, 0.092609,
		-0.561948, -0.736623, -0.376298,
		35.252636, 36.561588, 48.871159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115105, 36.655464, 48.741749>,  <35.646000, 37.077225, 49.134567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115105, 36.655464, 48.741749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744350, 36.619576, 48.595966>,  <35.521896, 36.598042, 48.508495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744350, 36.619576, 48.595966>,  <36.115105, 36.655464, 48.741749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744350, 36.619576, 48.595966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362864, 0.034046, -0.931220,
		0.095959, -0.995385, 0.001000,
		-0.926888, -0.089722, -0.364457,
		35.466286, 36.592659, 48.486629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231068, 36.384899, 48.118900>,  <36.115105, 36.655464, 48.741749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231068, 36.384899, 48.118900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839146, 36.451080, 48.073994>,  <35.603992, 36.490788, 48.047050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839146, 36.451080, 48.073994>,  <36.231068, 36.384899, 48.118900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839146, 36.451080, 48.073994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125463, 0.071575, -0.989513,
		-0.155682, -0.983617, -0.090888,
		-0.979807, 0.165452, -0.112265,
		35.545204, 36.500717, 48.040314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041496, 35.993603, 47.554497>,  <36.231068, 36.384899, 48.118900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041496, 35.993603, 47.554497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.740841, 36.256580, 47.575714>,  <35.560448, 36.414368, 47.588444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.740841, 36.256580, 47.575714>,  <36.041496, 35.993603, 47.554497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740841, 36.256580, 47.575714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092054, -0.024932, -0.995442,
		-0.653124, -0.753092, 0.079260,
		-0.751635, 0.657443, 0.053041,
		35.515350, 36.453812, 47.591625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654625, 35.867191, 46.946205>,  <36.041496, 35.993603, 47.554497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654625, 35.867191, 46.946205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.529179, 36.229141, 47.061344>,  <35.453911, 36.446312, 47.130428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.529179, 36.229141, 47.061344>,  <35.654625, 35.867191, 46.946205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529179, 36.229141, 47.061344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244283, 0.216055, -0.945328,
		-0.917591, -0.366783, 0.153287,
		-0.313612, 0.904870, 0.287849,
		35.435097, 36.500603, 47.147697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910789, 36.046249, 46.652462>,  <35.654625, 35.867191, 46.946205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910789, 36.046249, 46.652462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147472, 36.359589, 46.728615>,  <35.289482, 36.547592, 46.774307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147472, 36.359589, 46.728615>,  <34.910789, 36.046249, 46.652462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147472, 36.359589, 46.728615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169845, 0.351993, -0.920464,
		-0.788058, 0.512311, 0.341325,
		0.591708, 0.783351, 0.190378,
		35.324986, 36.594593, 46.785728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803398, 36.456852, 46.159161>,  <34.910789, 36.046249, 46.652462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803398, 36.456852, 46.159161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.093792, 36.690998, 46.303547>,  <35.268028, 36.831486, 46.390179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.093792, 36.690998, 46.303547>,  <34.803398, 36.456852, 46.159161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093792, 36.690998, 46.303547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075243, 0.454122, -0.887756,
		-0.683582, 0.671658, 0.285642,
		0.725985, 0.585361, 0.360967,
		35.311588, 36.866608, 46.411839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562519, 37.168106, 46.187588>,  <34.803398, 36.456852, 46.159161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562519, 37.168106, 46.187588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959564, 37.165142, 46.139153>,  <35.197792, 37.163364, 46.110092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959564, 37.165142, 46.139153>,  <34.562519, 37.168106, 46.187588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959564, 37.165142, 46.139153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104289, 0.457834, -0.882900,
		0.061985, 0.889007, 0.453679,
		0.992613, -0.007412, -0.121093,
		35.257347, 37.162918, 46.102825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651367, 37.783501, 45.930996>,  <34.562519, 37.168106, 46.187588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651367, 37.783501, 45.930996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.998482, 37.601387, 45.851337>,  <35.206753, 37.492119, 45.803543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.998482, 37.601387, 45.851337>,  <34.651367, 37.783501, 45.930996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998482, 37.601387, 45.851337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010294, 0.384190, -0.923197,
		0.496823, 0.803192, 0.328710,
		0.867791, -0.455282, -0.199142,
		35.258820, 37.464802, 45.791595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035645, 38.284462, 45.658676>,  <34.651367, 37.783501, 45.930996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035645, 38.284462, 45.658676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.196087, 37.950371, 45.508205>,  <35.292355, 37.749916, 45.417923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.196087, 37.950371, 45.508205>,  <35.035645, 38.284462, 45.658676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196087, 37.950371, 45.508205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034887, 0.424292, -0.904853,
		0.915366, 0.349821, 0.199326,
		0.401109, -0.835225, -0.376178,
		35.316422, 37.699802, 45.395351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465267, 38.547516, 45.143330>,  <35.035645, 38.284462, 45.658676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465267, 38.547516, 45.143330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439014, 38.160889, 45.044178>,  <35.423264, 37.928913, 44.984688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439014, 38.160889, 45.044178>,  <35.465267, 38.547516, 45.143330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439014, 38.160889, 45.044178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000383, 0.248439, -0.968648,
		0.997844, -0.063476, -0.016675,
		-0.065629, -0.966565, -0.247879,
		35.419327, 37.870918, 44.969814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.923367, 26.295076, 32.046097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.740841, 25.956970, 32.157310>,  <46.631325, 25.754107, 32.224041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.740841, 25.956970, 32.157310>,  <46.923367, 26.295076, 32.046097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.740841, 25.956970, 32.157310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738664, 0.534056, 0.411290,
		-0.496136, -0.017697, -0.868064,
		-0.456316, -0.845264, 0.278037,
		46.603947, 25.703390, 32.240723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.193562, 26.371468, 31.838732>,  <46.923367, 26.295076, 32.046097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.193562, 26.371468, 31.838732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.182606, 26.088255, 32.120991>,  <46.176033, 25.918327, 32.290348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.182606, 26.088255, 32.120991>,  <46.193562, 26.371468, 31.838732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182606, 26.088255, 32.120991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765781, 0.468596, 0.440451,
		-0.642517, -0.528307, -0.555035,
		-0.027394, -0.708033, 0.705648,
		46.174389, 25.875845, 32.332684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.505241, 26.110615, 31.926992>,  <46.193562, 26.371468, 31.838732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.505241, 26.110615, 31.926992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.712315, 26.072653, 32.267109>,  <45.836559, 26.049875, 32.471180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.712315, 26.072653, 32.267109>,  <45.505241, 26.110615, 31.926992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.712315, 26.072653, 32.267109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656303, 0.593530, 0.465820,
		-0.548883, -0.799196, 0.244973,
		0.517681, -0.094904, 0.850294,
		45.867619, 26.044182, 32.522198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.004795, 26.340456, 32.359444>,  <45.505241, 26.110615, 31.926992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.004795, 26.340456, 32.359444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322186, 26.316544, 32.601707>,  <45.512619, 26.302197, 32.747066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322186, 26.316544, 32.601707>,  <45.004795, 26.340456, 32.359444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322186, 26.316544, 32.601707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507214, 0.485026, 0.712379,
		-0.336346, -0.872454, 0.354535,
		0.793476, -0.059780, 0.605658,
		45.560230, 26.298609, 32.783405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840317, 25.965931, 32.966644>,  <45.004795, 26.340456, 32.359444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840317, 25.965931, 32.966644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.160717, 26.176336, 33.080978>,  <45.352959, 26.302580, 33.149578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.160717, 26.176336, 33.080978>,  <44.840317, 25.965931, 32.966644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.160717, 26.176336, 33.080978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569149, 0.521047, 0.636065,
		0.185645, -0.672174, 0.716741,
		0.801003, 0.526015, 0.285837,
		45.401016, 26.334141, 33.166729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713608, 26.053505, 33.553246>,  <44.840317, 25.965931, 32.966644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713608, 26.053505, 33.553246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.007595, 26.318817, 33.496845>,  <45.183987, 26.478004, 33.463005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.007595, 26.318817, 33.496845>,  <44.713608, 26.053505, 33.553246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007595, 26.318817, 33.496845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345121, 0.544881, 0.764196,
		0.583711, -0.512992, 0.629381,
		0.734965, 0.663282, -0.141009,
		45.228085, 26.517801, 33.454544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.983097, 26.121822, 34.190311>,  <44.713608, 26.053505, 33.553246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.983097, 26.121822, 34.190311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.092411, 26.454786, 33.997475>,  <45.157997, 26.654564, 33.881771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.092411, 26.454786, 33.997475>,  <44.983097, 26.121822, 34.190311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.092411, 26.454786, 33.997475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350633, 0.552888, 0.755891,
		0.895753, -0.037534, 0.442965,
		0.273281, 0.832410, -0.482091,
		45.174397, 26.704510, 33.852848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096142, 26.589243, 34.755653>,  <44.983097, 26.121822, 34.190311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096142, 26.589243, 34.755653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.093094, 26.826143, 34.433365>,  <45.091267, 26.968285, 34.239994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.093094, 26.826143, 34.433365>,  <45.096142, 26.589243, 34.755653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093094, 26.826143, 34.433365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348315, 0.753709, 0.557315,
		0.937347, 0.284887, 0.200550,
		-0.007616, 0.592252, -0.805717,
		45.090809, 27.003819, 34.191650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537846, 27.227867, 34.899307>,  <45.096142, 26.589243, 34.755653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537846, 27.227867, 34.899307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.277309, 27.336161, 34.615768>,  <45.120987, 27.401136, 34.445644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.277309, 27.336161, 34.615768>,  <45.537846, 27.227867, 34.899307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.277309, 27.336161, 34.615768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157119, 0.865813, 0.475059,
		0.742343, 0.420797, -0.521399,
		-0.651337, 0.270735, -0.708846,
		45.081909, 27.417381, 34.403114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.791775, 27.967348, 34.650276>,  <45.537846, 27.227867, 34.899307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.791775, 27.967348, 34.650276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413403, 27.928570, 34.526459>,  <45.186378, 27.905302, 34.452168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413403, 27.928570, 34.526459>,  <45.791775, 27.967348, 34.650276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413403, 27.928570, 34.526459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203379, 0.920677, 0.333154,
		0.252687, 0.378095, -0.890614,
		-0.945931, -0.096948, -0.309540,
		45.129623, 27.899485, 34.433598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631783, 28.608850, 34.319073>,  <45.791775, 27.967348, 34.650276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631783, 28.608850, 34.319073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.287895, 28.447433, 34.444317>,  <45.081562, 28.350584, 34.519463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.287895, 28.447433, 34.444317>,  <45.631783, 28.608850, 34.319073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287895, 28.447433, 34.444317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309196, 0.899113, 0.309828,
		-0.406550, 0.169553, -0.897758,
		-0.859718, -0.403543, 0.313109,
		45.029980, 28.326370, 34.538250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061211, 29.105871, 34.169617>,  <45.631783, 28.608850, 34.319073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061211, 29.105871, 34.169617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933228, 28.848989, 34.448242>,  <44.856438, 28.694860, 34.615417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933228, 28.848989, 34.448242>,  <45.061211, 29.105871, 34.169617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933228, 28.848989, 34.448242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431440, 0.753319, 0.496358,
		-0.843497, -0.141711, -0.518104,
		-0.319958, -0.642207, 0.696561,
		44.837238, 28.656328, 34.657211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455185, 29.359615, 34.278275>,  <45.061211, 29.105871, 34.169617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455185, 29.359615, 34.278275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.496708, 29.121393, 34.596905>,  <44.521622, 28.978460, 34.788082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.496708, 29.121393, 34.596905>,  <44.455185, 29.359615, 34.278275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496708, 29.121393, 34.596905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539003, 0.639415, 0.548292,
		-0.835883, -0.486276, -0.254628,
		0.103808, -0.595554, 0.796580,
		44.527851, 28.942728, 34.835880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830631, 29.292562, 34.618320>,  <44.455185, 29.359615, 34.278275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830631, 29.292562, 34.618320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.079365, 29.200983, 34.917896>,  <44.228603, 29.146036, 35.097641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.079365, 29.200983, 34.917896>,  <43.830631, 29.292562, 34.618320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079365, 29.200983, 34.917896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396897, 0.732277, 0.553392,
		-0.675129, -0.641368, 0.364483,
		0.621830, -0.228949, 0.748939,
		44.265915, 29.132298, 35.142578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437740, 29.496567, 35.192902>,  <43.830631, 29.292562, 34.618320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437740, 29.496567, 35.192902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.802757, 29.453888, 35.350830>,  <44.021767, 29.428280, 35.445587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.802757, 29.453888, 35.350830>,  <43.437740, 29.496567, 35.192902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802757, 29.453888, 35.350830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200001, 0.725652, 0.658353,
		-0.356750, -0.679739, 0.640847,
		0.912540, -0.106697, 0.394824,
		44.076519, 29.421879, 35.469276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274990, 29.462082, 35.857822>,  <43.437740, 29.496567, 35.192902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274990, 29.462082, 35.857822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.650074, 29.586306, 35.795521>,  <43.875122, 29.660839, 35.758141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.650074, 29.586306, 35.795521>,  <43.274990, 29.462082, 35.857822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650074, 29.586306, 35.795521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208651, 0.861844, 0.462265,
		0.277793, -0.400972, 0.872956,
		0.937708, 0.310557, -0.155751,
		43.931385, 29.679472, 35.748795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537460, 29.680904, 36.531437>,  <43.274990, 29.462082, 35.857822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537460, 29.680904, 36.531437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.787666, 29.868988, 36.282398>,  <43.937790, 29.981838, 36.132973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.787666, 29.868988, 36.282398>,  <43.537460, 29.680904, 36.531437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787666, 29.868988, 36.282398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340786, 0.882504, 0.324118,
		0.701852, 0.009433, 0.712261,
		0.625515, 0.470211, -0.622601,
		43.975323, 30.010052, 36.095619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750992, 30.311638, 36.929363>,  <43.537460, 29.680904, 36.531437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750992, 30.311638, 36.929363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.859451, 30.390835, 36.552582>,  <43.924526, 30.438353, 36.326511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.859451, 30.390835, 36.552582>,  <43.750992, 30.311638, 36.929363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859451, 30.390835, 36.552582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044918, 0.980152, 0.193090,
		0.961488, -0.010046, 0.274663,
		0.271151, 0.197991, -0.941954,
		43.940796, 30.450232, 36.269997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228039, 30.809164, 37.022312>,  <43.750992, 30.311638, 36.929363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228039, 30.809164, 37.022312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.110542, 30.844749, 36.641617>,  <44.040043, 30.866100, 36.413200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.110542, 30.844749, 36.641617>,  <44.228039, 30.809164, 37.022312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110542, 30.844749, 36.641617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112642, 0.985501, 0.126887,
		0.949224, 0.144478, -0.279465,
		-0.293745, 0.088964, -0.951735,
		44.022419, 30.871439, 36.356098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542347, 31.369205, 36.843807>,  <44.228039, 30.809164, 37.022312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542347, 31.369205, 36.843807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.237080, 31.320574, 36.589943>,  <44.053921, 31.291395, 36.437622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.237080, 31.320574, 36.589943>,  <44.542347, 31.369205, 36.843807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237080, 31.320574, 36.589943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204273, 0.977168, 0.058441,
		0.613069, 0.174245, -0.770575,
		-0.763164, -0.121579, -0.634665,
		44.008129, 31.284100, 36.399544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.627731, 31.880699, 36.428314>,  <44.542347, 31.369205, 36.843807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.627731, 31.880699, 36.428314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.240158, 31.796940, 36.375660>,  <44.007614, 31.746685, 36.344067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.240158, 31.796940, 36.375660>,  <44.627731, 31.880699, 36.428314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.240158, 31.796940, 36.375660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223187, 0.969584, 0.100471,
		0.106590, 0.126728, -0.986194,
		-0.968931, -0.209397, -0.131632,
		43.949478, 31.734121, 36.336170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307991, 32.363480, 35.939423>,  <44.627731, 31.880699, 36.428314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307991, 32.363480, 35.939423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.012405, 32.238636, 36.178261>,  <43.835056, 32.163731, 36.321564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.012405, 32.238636, 36.178261>,  <44.307991, 32.363480, 35.939423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012405, 32.238636, 36.178261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307191, 0.944832, 0.113690,
		-0.599642, -0.099411, -0.794070,
		-0.738961, -0.312105, 0.597099,
		43.790718, 32.145004, 36.357391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.905903, 32.761227, 35.691154>,  <44.307991, 32.363480, 35.939423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.905903, 32.761227, 35.691154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.280472, 32.900272, 35.710262>,  <45.505211, 32.983700, 35.721725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.280472, 32.900272, 35.710262>,  <44.905903, 32.761227, 35.691154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280472, 32.900272, 35.710262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197673, -0.410151, -0.890338,
		-0.289906, 0.843171, -0.452788,
		0.936419, 0.347618, 0.047767,
		45.561398, 33.004559, 35.724594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979156, 33.169838, 35.035999>,  <44.905903, 32.761227, 35.691154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979156, 33.169838, 35.035999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.317093, 33.026661, 35.195057>,  <45.519855, 32.940754, 35.290489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.317093, 33.026661, 35.195057>,  <44.979156, 33.169838, 35.035999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.317093, 33.026661, 35.195057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231033, -0.426280, -0.874591,
		0.482562, 0.830759, -0.277442,
		0.844842, -0.357946, 0.397639,
		45.570545, 32.919277, 35.314350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472980, 33.435581, 34.627785>,  <44.979156, 33.169838, 35.035999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472980, 33.435581, 34.627785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.616127, 33.109474, 34.809895>,  <45.702015, 32.913811, 34.919159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.616127, 33.109474, 34.809895>,  <45.472980, 33.435581, 34.627785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.616127, 33.109474, 34.809895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176448, -0.419741, -0.890328,
		0.916950, 0.398951, -0.006360,
		0.357867, -0.815264, 0.455276,
		45.723488, 32.864895, 34.946476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.072403, 33.224712, 34.305954>,  <45.472980, 33.435581, 34.627785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.072403, 33.224712, 34.305954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.977085, 32.892559, 34.507420>,  <45.919895, 32.693268, 34.628300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.977085, 32.892559, 34.507420>,  <46.072403, 33.224712, 34.305954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977085, 32.892559, 34.507420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240768, -0.552928, -0.797685,
		0.940875, -0.068817, 0.331689,
		-0.238294, -0.830382, 0.503667,
		45.905598, 32.643444, 34.658520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.652786, 32.763329, 34.241695>,  <46.072403, 33.224712, 34.305954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.652786, 32.763329, 34.241695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.348400, 32.528965, 34.353153>,  <46.165768, 32.388348, 34.420029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.348400, 32.528965, 34.353153>,  <46.652786, 32.763329, 34.241695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.348400, 32.528965, 34.353153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168243, -0.593001, -0.787429,
		0.626596, -0.552327, 0.549829,
		-0.760967, -0.585905, 0.278647,
		46.120110, 32.353195, 34.436749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.904797, 32.094334, 34.158085>,  <46.652786, 32.763329, 34.241695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.904797, 32.094334, 34.158085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.515125, 32.007099, 34.181458>,  <46.281322, 31.954760, 34.195480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.515125, 32.007099, 34.181458>,  <46.904797, 32.094334, 34.158085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.515125, 32.007099, 34.181458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135059, -0.770299, -0.623216,
		0.180923, -0.599232, 0.779864,
		-0.974179, -0.218082, 0.058433,
		46.222870, 31.941675, 34.198986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.918774, 31.396803, 34.060444>,  <46.904797, 32.094334, 34.158085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.918774, 31.396803, 34.060444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.531437, 31.474659, 33.997921>,  <46.299034, 31.521372, 33.960407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.531437, 31.474659, 33.997921>,  <46.918774, 31.396803, 34.060444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.531437, 31.474659, 33.997921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069250, -0.811015, -0.580912,
		-0.239834, -0.551697, 0.798818,
		-0.968341, 0.194641, -0.156304,
		46.240936, 31.533051, 33.951031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.511303, 30.825571, 34.043182>,  <46.918774, 31.396803, 34.060444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.511303, 30.825571, 34.043182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.281540, 31.064892, 33.819721>,  <46.143684, 31.208485, 33.685646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.281540, 31.064892, 33.819721>,  <46.511303, 30.825571, 34.043182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.281540, 31.064892, 33.819721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051524, -0.707547, -0.704786,
		-0.816950, -0.376046, 0.437243,
		-0.574402, 0.598304, -0.558655,
		46.109219, 31.244383, 33.652126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.905968, 30.451571, 33.922836>,  <46.511303, 30.825571, 34.043182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.905968, 30.451571, 33.922836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.936554, 30.715647, 33.623959>,  <45.954906, 30.874092, 33.444630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.936554, 30.715647, 33.623959>,  <45.905968, 30.451571, 33.922836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.936554, 30.715647, 33.623959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158374, -0.731835, -0.662823,
		-0.984414, 0.169016, 0.048600,
		0.076461, 0.660190, -0.747197,
		45.959492, 30.913704, 33.399799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381268, 30.213011, 33.311543>,  <45.905968, 30.451571, 33.922836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381268, 30.213011, 33.311543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.666409, 30.448549, 33.159176>,  <45.837494, 30.589872, 33.067757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.666409, 30.448549, 33.159176>,  <45.381268, 30.213011, 33.311543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.666409, 30.448549, 33.159176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094506, -0.618857, -0.779798,
		-0.694915, 0.519883, -0.496804,
		0.712855, 0.588844, -0.380921,
		45.880264, 30.625202, 33.044899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.197754, 30.174322, 32.617847>,  <45.381268, 30.213011, 33.311543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.197754, 30.174322, 32.617847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.567612, 30.326359, 32.627335>,  <45.789528, 30.417582, 32.633026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.567612, 30.326359, 32.627335>,  <45.197754, 30.174322, 32.617847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.567612, 30.326359, 32.627335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202123, -0.437010, -0.876452,
		-0.322767, 0.815201, -0.480904,
		0.924645, 0.380092, 0.023718,
		45.845005, 30.440386, 32.634449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291470, 30.625511, 32.030407>,  <45.197754, 30.174322, 32.617847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291470, 30.625511, 32.030407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.639309, 30.465136, 32.145683>,  <45.848011, 30.368910, 32.214848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.639309, 30.465136, 32.145683>,  <45.291470, 30.625511, 32.030407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639309, 30.465136, 32.145683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087581, -0.449161, -0.889148,
		0.485936, 0.798439, -0.355473,
		0.869595, -0.400937, 0.288192,
		45.900188, 30.344854, 32.232140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641399, 30.686792, 31.478203>,  <45.291470, 30.625511, 32.030407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641399, 30.686792, 31.478203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.834530, 30.407051, 31.689024>,  <45.950409, 30.239206, 31.815516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.834530, 30.407051, 31.689024>,  <45.641399, 30.686792, 31.478203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.834530, 30.407051, 31.689024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262034, -0.458900, -0.848969,
		0.835594, 0.548010, -0.038314,
		0.482826, -0.699354, 0.527051,
		45.979378, 30.197245, 31.847139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.117100, 30.436304, 30.963409>,  <45.641399, 30.686792, 31.478203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.117100, 30.436304, 30.963409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.091724, 30.185293, 31.273811>,  <46.076500, 30.034687, 31.460052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.091724, 30.185293, 31.273811>,  <46.117100, 30.436304, 30.963409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091724, 30.185293, 31.273811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145820, -0.775054, -0.614839,
		0.987275, 0.074154, 0.140673,
		-0.063436, -0.627529, 0.776005,
		46.072693, 29.997034, 31.506613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.779469, 30.115229, 31.055902>,  <46.117100, 30.436304, 30.963409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.779469, 30.115229, 31.055902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.493561, 29.883142, 31.212088>,  <46.322018, 29.743891, 31.305798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.493561, 29.883142, 31.212088>,  <46.779469, 30.115229, 31.055902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.493561, 29.883142, 31.212088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271113, -0.744530, -0.610059,
		0.644676, -0.330190, 0.689469,
		-0.714766, -0.580215, 0.390462,
		46.279129, 29.709078, 31.329226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.158501, 29.598272, 31.107782>,  <46.779469, 30.115229, 31.055902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.158501, 29.598272, 31.107782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.778664, 29.474112, 31.125324>,  <46.550762, 29.399616, 31.135849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.778664, 29.474112, 31.125324>,  <47.158501, 29.598272, 31.107782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.778664, 29.474112, 31.125324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267815, -0.875991, -0.401142,
		0.162933, -0.369176, 0.914965,
		-0.949594, -0.310401, 0.043857,
		46.493786, 29.380991, 31.138481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.233490, 28.965736, 31.309753>,  <47.158501, 29.598272, 31.107782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.233490, 28.965736, 31.309753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.869846, 28.977400, 31.143539>,  <46.651661, 28.984398, 31.043810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.869846, 28.977400, 31.143539>,  <47.233490, 28.965736, 31.309753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.869846, 28.977400, 31.143539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208351, -0.831975, -0.514206,
		-0.360708, -0.554046, 0.750281,
		-0.909109, 0.029156, -0.415536,
		46.597115, 28.986147, 31.018879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.930378, 28.206228, 31.347544>,  <47.233490, 28.965736, 31.309753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.930378, 28.206228, 31.347544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.661797, 28.334198, 31.080172>,  <46.500648, 28.410980, 30.919748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.661797, 28.334198, 31.080172>,  <46.930378, 28.206228, 31.347544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.661797, 28.334198, 31.080172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135629, -0.939826, -0.313578,
		-0.728529, -0.119895, 0.674441,
		-0.671454, 0.319924, -0.668429,
		46.460361, 28.430176, 30.879642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263809, 27.764151, 31.403006>,  <46.930378, 28.206228, 31.347544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263809, 27.764151, 31.403006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.302982, 27.938734, 31.045254>,  <46.326485, 28.043484, 30.830603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.302982, 27.938734, 31.045254>,  <46.263809, 27.764151, 31.403006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.302982, 27.938734, 31.045254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139727, -0.883766, -0.446581,
		-0.985335, 0.168703, -0.025565,
		0.097933, 0.436460, -0.894378,
		46.332363, 28.069672, 30.776941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.698593, 27.462574, 30.920616>,  <46.263809, 27.764151, 31.403006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.698593, 27.462574, 30.920616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.989910, 27.630787, 30.704191>,  <46.164700, 27.731714, 30.574337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.989910, 27.630787, 30.704191>,  <45.698593, 27.462574, 30.920616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.989910, 27.630787, 30.704191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109625, -0.850888, -0.513783,
		-0.676444, 0.314869, -0.665794,
		0.728290, 0.420533, -0.541060,
		46.208397, 27.756947, 30.541874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.820927, 39.350639, 40.749695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570580, 39.038780, 40.758030>,  <39.420372, 38.851665, 40.763031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570580, 39.038780, 40.758030>,  <39.820927, 39.350639, 40.749695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570580, 39.038780, 40.758030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376883, -0.325723, -0.867101,
		0.682820, -0.534841, 0.497697,
		-0.625872, -0.779647, 0.020837,
		39.382816, 38.804886, 40.764282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209637, 38.714035, 40.447323>,  <39.820927, 39.350639, 40.749695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209637, 38.714035, 40.447323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818714, 38.635326, 40.415966>,  <39.584160, 38.588100, 40.397152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818714, 38.635326, 40.415966>,  <40.209637, 38.714035, 40.447323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818714, 38.635326, 40.415966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160836, -0.448572, -0.879156,
		0.137828, -0.871817, 0.470042,
		-0.977311, -0.196772, -0.078394,
		39.525520, 38.576294, 40.392448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242752, 38.157642, 39.999695>,  <40.209637, 38.714035, 40.447323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242752, 38.157642, 39.999695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852570, 38.241852, 39.973896>,  <39.618458, 38.292377, 39.958416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852570, 38.241852, 39.973896>,  <40.242752, 38.157642, 39.999695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852570, 38.241852, 39.973896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073141, -0.586115, -0.806919,
		-0.207683, -0.782398, 0.587129,
		-0.975458, 0.210527, -0.064500,
		39.559933, 38.305012, 39.954544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974548, 37.702656, 39.628994>,  <40.242752, 38.157642, 39.999695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974548, 37.702656, 39.628994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628689, 37.902309, 39.651783>,  <39.421173, 38.022102, 39.665459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628689, 37.902309, 39.651783>,  <39.974548, 37.702656, 39.628994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628689, 37.902309, 39.651783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325230, -0.469709, -0.820731,
		-0.382892, -0.728175, 0.568467,
		-0.864650, 0.499134, 0.056977,
		39.369293, 38.052052, 39.668877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386669, 37.233955, 39.610622>,  <39.974548, 37.702656, 39.628994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386669, 37.233955, 39.610622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295860, 37.587875, 39.447849>,  <39.241375, 37.800228, 39.350185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295860, 37.587875, 39.447849>,  <39.386669, 37.233955, 39.610622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295860, 37.587875, 39.447849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405510, -0.465781, -0.786518,
		-0.885450, -0.013544, 0.464538,
		-0.227025, 0.884797, -0.406933,
		39.227753, 37.853313, 39.325768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749447, 37.058479, 39.221611>,  <39.386669, 37.233955, 39.610622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749447, 37.058479, 39.221611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888390, 37.407959, 39.085384>,  <38.971756, 37.617649, 39.003647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888390, 37.407959, 39.085384>,  <38.749447, 37.058479, 39.221611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888390, 37.407959, 39.085384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299725, -0.240687, -0.923166,
		-0.888543, 0.422745, 0.178266,
		0.347357, 0.873703, -0.340568,
		38.992596, 37.670071, 38.983215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265011, 37.249290, 38.791229>,  <38.749447, 37.058479, 39.221611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265011, 37.249290, 38.791229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596397, 37.432514, 38.662346>,  <38.795231, 37.542450, 38.585018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596397, 37.432514, 38.662346>,  <38.265011, 37.249290, 38.791229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596397, 37.432514, 38.662346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178383, -0.329528, -0.927141,
		-0.530864, 0.825585, -0.191294,
		0.828470, 0.458062, -0.322205,
		38.844940, 37.569931, 38.565685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055710, 37.499588, 38.112160>,  <38.265011, 37.249290, 38.791229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055710, 37.499588, 38.112160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454483, 37.527630, 38.098228>,  <38.693748, 37.544453, 38.089870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454483, 37.527630, 38.098228>,  <38.055710, 37.499588, 38.112160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454483, 37.527630, 38.098228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016714, -0.243988, -0.969634,
		-0.076468, 0.967241, -0.242067,
		0.996932, 0.070100, -0.034824,
		38.753563, 37.548660, 38.087780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188419, 37.922882, 37.556293>,  <38.055710, 37.499588, 38.112160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188419, 37.922882, 37.556293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503021, 37.682171, 37.611820>,  <38.691784, 37.537743, 37.645138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503021, 37.682171, 37.611820>,  <38.188419, 37.922882, 37.556293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503021, 37.682171, 37.611820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149472, -0.403578, -0.902653,
		0.599223, 0.689192, -0.407365,
		0.786505, -0.601780, 0.138819,
		38.738972, 37.501637, 37.653465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557346, 37.974590, 36.916679>,  <38.188419, 37.922882, 37.556293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557346, 37.974590, 36.916679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670979, 37.633865, 37.092735>,  <38.739159, 37.429432, 37.198368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670979, 37.633865, 37.092735>,  <38.557346, 37.974590, 36.916679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670979, 37.633865, 37.092735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045498, -0.470510, -0.881221,
		0.957721, 0.230311, -0.172418,
		0.284079, -0.851808, 0.440139,
		38.756203, 37.378323, 37.224777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842175, 37.676105, 36.362717>,  <38.557346, 37.974590, 36.916679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842175, 37.676105, 36.362717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844536, 37.377319, 36.628651>,  <38.845951, 37.198048, 36.788212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844536, 37.377319, 36.628651>,  <38.842175, 37.676105, 36.362717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844536, 37.377319, 36.628651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050667, -0.664216, -0.745822,
		0.998698, -0.029284, -0.041766,
		0.005901, -0.746967, 0.664835,
		38.846306, 37.153229, 36.828102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437492, 37.154945, 36.209816>,  <38.842175, 37.676105, 36.362717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437492, 37.154945, 36.209816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157013, 36.967213, 36.424500>,  <38.988728, 36.854572, 36.553310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157013, 36.967213, 36.424500>,  <39.437492, 37.154945, 36.209816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157013, 36.967213, 36.424500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148898, -0.639781, -0.753996,
		0.697248, -0.608613, 0.378730,
		-0.701196, -0.469330, 0.536707,
		38.946655, 36.826412, 36.585510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485409, 36.461761, 35.986378>,  <39.437492, 37.154945, 36.209816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485409, 36.461761, 35.986378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112617, 36.471676, 35.841713>,  <38.888943, 36.477627, 35.754913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112617, 36.471676, 35.841713>,  <39.485409, 36.461761, 35.986378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112617, 36.471676, 35.841713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347751, -0.220609, -0.911263,
		-0.102375, -0.975047, 0.196982,
		-0.931981, 0.024790, -0.361658,
		38.833023, 36.479115, 35.733215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471497, 35.774803, 35.699116>,  <39.485409, 36.461761, 35.986378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471497, 35.774803, 35.699116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260956, 36.073864, 35.537140>,  <39.134632, 36.253300, 35.439957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260956, 36.073864, 35.537140>,  <39.471497, 35.774803, 35.699116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260956, 36.073864, 35.537140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456717, -0.153105, -0.876338,
		-0.717195, -0.646200, -0.260879,
		-0.526347, 0.747653, -0.404936,
		39.103050, 36.298161, 35.415657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747814, 35.117958, 35.271992>,  <39.471497, 35.774803, 35.699116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747814, 35.117958, 35.271992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077644, 34.930161, 35.145718>,  <40.275543, 34.817482, 35.069954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077644, 34.930161, 35.145718>,  <39.747814, 35.117958, 35.271992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077644, 34.930161, 35.145718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124417, -0.393843, 0.910719,
		-0.551907, -0.790229, -0.266339,
		0.824572, -0.469495, -0.315683,
		40.325016, 34.789310, 35.051014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645950, 34.344894, 35.375774>,  <39.747814, 35.117958, 35.271992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645950, 34.344894, 35.375774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025257, 34.464844, 35.417461>,  <40.252842, 34.536816, 35.442474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025257, 34.464844, 35.417461>,  <39.645950, 34.344894, 35.375774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025257, 34.464844, 35.417461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010249, -0.357030, 0.934037,
		0.317306, -0.884649, -0.341633,
		0.948268, 0.299876, 0.104221,
		40.309738, 34.554806, 35.448727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893311, 33.854683, 35.761143>,  <39.645950, 34.344894, 35.375774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893311, 33.854683, 35.761143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128315, 34.175674, 35.802834>,  <40.269318, 34.368267, 35.827847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128315, 34.175674, 35.802834>,  <39.893311, 33.854683, 35.761143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128315, 34.175674, 35.802834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117382, -0.211949, 0.970206,
		0.800657, -0.557773, -0.218719,
		0.587511, 0.802475, 0.104226,
		40.304569, 34.416416, 35.834103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465122, 33.689659, 36.264835>,  <39.893311, 33.854683, 35.761143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465122, 33.689659, 36.264835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466530, 34.089554, 36.273960>,  <40.467373, 34.329491, 36.279434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466530, 34.089554, 36.273960>,  <40.465122, 33.689659, 36.264835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466530, 34.089554, 36.273960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035501, -0.022920, 0.999107,
		0.999363, -0.002707, -0.035572,
		0.003519, 0.999734, 0.022810,
		40.467587, 34.389473, 36.280804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028831, 33.907990, 36.798073>,  <40.465122, 33.689659, 36.264835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028831, 33.907990, 36.798073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767788, 34.205940, 36.742558>,  <40.611164, 34.384712, 36.709248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767788, 34.205940, 36.742558>,  <41.028831, 33.907990, 36.798073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767788, 34.205940, 36.742558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122890, 0.076693, 0.989452,
		0.747664, 0.662780, 0.041488,
		-0.652607, 0.744877, -0.138789,
		40.572006, 34.429401, 36.700920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223091, 34.301014, 37.322651>,  <41.028831, 33.907990, 36.798073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223091, 34.301014, 37.322651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851715, 34.414112, 37.226269>,  <40.628891, 34.481972, 37.168438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851715, 34.414112, 37.226269>,  <41.223091, 34.301014, 37.322651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851715, 34.414112, 37.226269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242530, 0.029988, 0.969680,
		0.281398, 0.958726, 0.040732,
		-0.928437, 0.282745, -0.240958,
		40.573185, 34.498936, 37.153980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164452, 34.829586, 37.764847>,  <41.223091, 34.301014, 37.322651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164452, 34.829586, 37.764847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790894, 34.756790, 37.641743>,  <40.566757, 34.713112, 37.567879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790894, 34.756790, 37.641743>,  <41.164452, 34.829586, 37.764847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790894, 34.756790, 37.641743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334569, 0.141227, 0.931729,
		-0.126099, 0.973106, -0.192779,
		-0.933896, -0.181988, -0.307763,
		40.510723, 34.702194, 37.549416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820908, 35.405262, 37.976238>,  <41.164452, 34.829586, 37.764847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820908, 35.405262, 37.976238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543404, 35.119938, 37.936455>,  <40.376904, 34.948742, 37.912582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543404, 35.119938, 37.936455>,  <40.820908, 35.405262, 37.976238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543404, 35.119938, 37.936455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305012, 0.165890, 0.937789,
		-0.652434, 0.680933, -0.332655,
		-0.693756, -0.713309, -0.099461,
		40.335278, 34.905945, 37.906616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148071, 35.717934, 38.214619>,  <40.820908, 35.405262, 37.976238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148071, 35.717934, 38.214619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106308, 35.320187, 38.221928>,  <40.081249, 35.081539, 38.226315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106308, 35.320187, 38.221928>,  <40.148071, 35.717934, 38.214619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106308, 35.320187, 38.221928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506790, 0.069008, 0.859303,
		-0.855723, 0.080457, -0.511140,
		-0.104410, -0.994367, 0.018277,
		40.074986, 35.021877, 38.227409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521591, 35.787727, 38.556133>,  <40.148071, 35.717934, 38.214619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521591, 35.787727, 38.556133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630310, 35.405048, 38.597816>,  <39.695541, 35.175442, 38.622826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630310, 35.405048, 38.597816>,  <39.521591, 35.787727, 38.556133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630310, 35.405048, 38.597816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546105, -0.064172, 0.835255,
		-0.792398, -0.283926, -0.539899,
		0.271797, -0.956696, 0.104204,
		39.711849, 35.118038, 38.629078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924683, 35.426495, 38.586769>,  <39.521591, 35.787727, 38.556133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924683, 35.426495, 38.586769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205158, 35.200508, 38.760735>,  <39.373444, 35.064919, 38.865112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205158, 35.200508, 38.760735>,  <38.924683, 35.426495, 38.586769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205158, 35.200508, 38.760735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554657, -0.048969, 0.830637,
		-0.447982, -0.823662, -0.347697,
		0.701190, -0.564963, 0.434913,
		39.415516, 35.031021, 38.891209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582176, 34.834389, 38.910557>,  <38.924683, 35.426495, 38.586769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582176, 34.834389, 38.910557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940506, 34.849491, 39.087681>,  <39.155502, 34.858555, 39.193954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940506, 34.849491, 39.087681>,  <38.582176, 34.834389, 38.910557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940506, 34.849491, 39.087681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428898, -0.187535, 0.883673,
		0.116411, -0.981532, -0.151802,
		0.895821, 0.037762, 0.442808,
		39.209251, 34.860821, 39.220524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749500, 34.161209, 39.264496>,  <38.582176, 34.834389, 38.910557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749500, 34.161209, 39.264496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969036, 34.445824, 39.439991>,  <39.100758, 34.616592, 39.545288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969036, 34.445824, 39.439991>,  <38.749500, 34.161209, 39.264496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969036, 34.445824, 39.439991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346585, -0.283924, 0.894017,
		0.760694, -0.642732, 0.090779,
		0.548838, 0.711536, 0.438740,
		39.133686, 34.659283, 39.571613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837730, 33.866135, 39.897720>,  <38.749500, 34.161209, 39.264496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837730, 33.866135, 39.897720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934067, 34.250832, 39.949955>,  <38.991867, 34.481647, 39.981297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934067, 34.250832, 39.949955>,  <38.837730, 33.866135, 39.897720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934067, 34.250832, 39.949955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162686, -0.092641, 0.982319,
		0.956834, -0.257824, 0.134150,
		0.240838, 0.961740, 0.130586,
		39.006317, 34.539352, 39.989132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821667, 33.206902, 40.157898>,  <38.837730, 33.866135, 39.897720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821667, 33.206902, 40.157898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539783, 32.923920, 40.179394>,  <38.370655, 32.754131, 40.192291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539783, 32.923920, 40.179394>,  <38.821667, 33.206902, 40.157898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539783, 32.923920, 40.179394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196864, 0.122211, -0.972784,
		0.681639, -0.696108, -0.225396,
		-0.704708, -0.707460, 0.053735,
		38.328369, 32.711681, 40.195515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964935, 32.739223, 39.587120>,  <38.821667, 33.206902, 40.157898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964935, 32.739223, 39.587120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580963, 32.694168, 39.689762>,  <38.350578, 32.667133, 39.751347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580963, 32.694168, 39.689762>,  <38.964935, 32.739223, 39.587120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580963, 32.694168, 39.689762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265234, 0.069589, -0.961670,
		0.090480, -0.991194, -0.096680,
		-0.959929, -0.112654, 0.256602,
		38.292984, 32.660374, 39.766743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714798, 32.214630, 39.138092>,  <38.964935, 32.739223, 39.587120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714798, 32.214630, 39.138092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399464, 32.420792, 39.272488>,  <38.210262, 32.544491, 39.353127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399464, 32.420792, 39.272488>,  <38.714798, 32.214630, 39.138092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399464, 32.420792, 39.272488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280172, 0.185458, -0.941865,
		-0.547757, -0.836636, -0.001799,
		-0.788332, 0.515409, 0.335988,
		38.162964, 32.575413, 39.373283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272953, 32.048878, 38.629562>,  <38.714798, 32.214630, 39.138092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272953, 32.048878, 38.629562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091152, 32.347847, 38.823383>,  <37.982071, 32.527229, 38.939674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091152, 32.347847, 38.823383>,  <38.272953, 32.048878, 38.629562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091152, 32.347847, 38.823383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448691, 0.277824, -0.849406,
		-0.769484, -0.603470, 0.209090,
		-0.454501, 0.747421, 0.484553,
		37.954803, 32.572075, 38.968750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551723, 32.154404, 38.334732>,  <38.272953, 32.048878, 38.629562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551723, 32.154404, 38.334732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635654, 32.509117, 38.499458>,  <37.686012, 32.721943, 38.598293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635654, 32.509117, 38.499458>,  <37.551723, 32.154404, 38.334732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635654, 32.509117, 38.499458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413574, 0.462158, -0.784453,
		-0.885962, -0.005715, 0.463723,
		0.209830, 0.886779, 0.411818,
		37.698605, 32.775150, 38.623005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935669, 32.619316, 38.288460>,  <37.551723, 32.154404, 38.334732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935669, 32.619316, 38.288460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227367, 32.885769, 38.351036>,  <37.402386, 33.045639, 38.388584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227367, 32.885769, 38.351036>,  <36.935669, 32.619316, 38.288460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227367, 32.885769, 38.351036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371937, 0.577801, -0.726505,
		-0.574339, 0.471612, 0.669116,
		0.729244, 0.666130, 0.156444,
		37.446140, 33.085609, 38.397968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570591, 33.311924, 38.222488>,  <36.935669, 32.619316, 38.288460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570591, 33.311924, 38.222488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964138, 33.352367, 38.163452>,  <37.200268, 33.376633, 38.128033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964138, 33.352367, 38.163452>,  <36.570591, 33.311924, 38.222488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964138, 33.352367, 38.163452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177641, 0.649810, -0.739047,
		0.021183, 0.753342, 0.657287,
		0.983867, 0.101106, -0.147589,
		37.259296, 33.382698, 38.119175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708694, 34.031601, 38.178993>,  <36.570591, 33.311924, 38.222488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708694, 34.031601, 38.178993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020920, 33.865810, 37.991837>,  <37.208256, 33.766335, 37.879543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020920, 33.865810, 37.991837>,  <36.708694, 34.031601, 38.178993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020920, 33.865810, 37.991837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208039, 0.533606, -0.819746,
		0.589437, 0.737207, 0.330288,
		0.780566, -0.414476, -0.467895,
		37.255089, 33.741467, 37.851467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988144, 34.605377, 37.794670>,  <36.708694, 34.031601, 38.178993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988144, 34.605377, 37.794670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140114, 34.269871, 37.638653>,  <37.231297, 34.068569, 37.545040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140114, 34.269871, 37.638653>,  <36.988144, 34.605377, 37.794670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140114, 34.269871, 37.638653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160504, 0.355493, -0.920795,
		0.910986, 0.412437, 0.000436,
		0.379925, -0.838761, -0.390047,
		37.254093, 34.018242, 37.521637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341476, 34.785545, 37.271023>,  <36.988144, 34.605377, 37.794670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341476, 34.785545, 37.271023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283955, 34.404160, 37.165020>,  <37.249443, 34.175327, 37.101418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283955, 34.404160, 37.165020>,  <37.341476, 34.785545, 37.271023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283955, 34.404160, 37.165020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062886, 0.276049, -0.959084,
		0.987606, -0.121252, -0.099656,
		-0.143801, -0.953464, -0.265003,
		37.240814, 34.118118, 37.085518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697575, 34.711060, 36.703171>,  <37.341476, 34.785545, 37.271023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697575, 34.711060, 36.703171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445580, 34.400623, 36.691883>,  <37.294384, 34.214359, 36.685108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445580, 34.400623, 36.691883>,  <37.697575, 34.711060, 36.703171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445580, 34.400623, 36.691883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183809, 0.184317, -0.965526,
		0.754540, -0.603081, -0.258770,
		-0.629987, -0.776093, -0.028223,
		37.256584, 34.167797, 36.683414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945583, 34.372585, 36.166973>,  <37.697575, 34.711060, 36.703171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945583, 34.372585, 36.166973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573868, 34.238323, 36.228642>,  <37.350838, 34.157768, 36.265644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573868, 34.238323, 36.228642>,  <37.945583, 34.372585, 36.166973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573868, 34.238323, 36.228642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219513, 0.166175, -0.961353,
		0.297058, -0.927214, -0.228103,
		-0.929285, -0.335650, 0.154172,
		37.295082, 34.137627, 36.274895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.347565, 32.315163, 43.637848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.954376, 32.297821, 43.709270>,  <38.718464, 32.287418, 43.752125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.954376, 32.297821, 43.709270>,  <39.347565, 32.315163, 43.637848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954376, 32.297821, 43.709270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152977, -0.345217, -0.925971,
		0.101783, -0.937521, 0.332708,
		-0.982974, -0.043352, 0.178557,
		38.659485, 32.284817, 43.762836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107265, 31.769150, 43.255810>,  <39.347565, 32.315163, 43.637848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107265, 31.769150, 43.255810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.787193, 32.002167, 43.312874>,  <38.595150, 32.141975, 43.347111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.787193, 32.002167, 43.312874>,  <39.107265, 31.769150, 43.255810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787193, 32.002167, 43.312874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318347, -0.210954, -0.924205,
		-0.508294, -0.784948, 0.354252,
		-0.800183, 0.582543, 0.142659,
		38.547138, 32.176929, 43.355671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454006, 31.328581, 43.122158>,  <39.107265, 31.769150, 43.255810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454006, 31.328581, 43.122158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.425232, 31.724279, 43.071228>,  <38.407967, 31.961699, 43.040668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.425232, 31.724279, 43.071228>,  <38.454006, 31.328581, 43.122158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425232, 31.724279, 43.071228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403904, -0.145615, -0.903138,
		-0.911969, -0.013541, 0.410036,
		-0.071937, 0.989249, -0.127327,
		38.403652, 32.021053, 43.033031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092735, 31.333918, 42.582554>,  <38.454006, 31.328581, 43.122158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092735, 31.333918, 42.582554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.161854, 31.727613, 42.597614>,  <38.203323, 31.963831, 42.606651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.161854, 31.727613, 42.597614>,  <38.092735, 31.333918, 42.582554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161854, 31.727613, 42.597614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148135, 0.063764, -0.986909,
		-0.973755, 0.164953, 0.156819,
		0.172793, 0.984238, 0.037655,
		38.213692, 32.022884, 42.608910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482563, 31.682507, 42.268391>,  <38.092735, 31.333918, 42.582554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482563, 31.682507, 42.268391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.807701, 31.915468, 42.271988>,  <38.002785, 32.055244, 42.274147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.807701, 31.915468, 42.271988>,  <37.482563, 31.682507, 42.268391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807701, 31.915468, 42.271988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157379, 0.234471, -0.959299,
		-0.560810, 0.778350, 0.282248,
		0.812850, 0.582404, 0.008998,
		38.051556, 32.090191, 42.274689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297314, 32.290745, 41.925354>,  <37.482563, 31.682507, 42.268391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297314, 32.290745, 41.925354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694374, 32.288597, 41.877007>,  <37.932610, 32.287308, 41.848000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694374, 32.288597, 41.877007>,  <37.297314, 32.290745, 41.925354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694374, 32.288597, 41.877007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116723, 0.220377, -0.968406,
		0.031841, 0.975400, 0.218131,
		0.992654, -0.005374, -0.120868,
		37.992168, 32.286983, 41.840748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485954, 32.947998, 41.489441>,  <37.297314, 32.290745, 41.925354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485954, 32.947998, 41.489441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803391, 32.706444, 41.459671>,  <37.993851, 32.561512, 41.441807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803391, 32.706444, 41.459671>,  <37.485954, 32.947998, 41.489441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803391, 32.706444, 41.459671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138855, 0.298839, -0.944148,
		0.592397, 0.738932, 0.321008,
		0.793590, -0.603884, -0.074427,
		38.041466, 32.525280, 41.437344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021248, 33.359646, 41.309814>,  <37.485954, 32.947998, 41.489441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021248, 33.359646, 41.309814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122658, 32.988277, 41.201180>,  <38.183506, 32.765457, 41.135998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122658, 32.988277, 41.201180>,  <38.021248, 33.359646, 41.309814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122658, 32.988277, 41.201180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027447, 0.273742, -0.961411,
		0.966939, 0.251197, 0.043919,
		0.253527, -0.928420, -0.271587,
		38.198715, 32.709751, 41.119705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506424, 33.471905, 40.790787>,  <38.021248, 33.359646, 41.309814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506424, 33.471905, 40.790787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362755, 33.099506, 40.764713>,  <38.276554, 32.876068, 40.749069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362755, 33.099506, 40.764713>,  <38.506424, 33.471905, 40.790787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362755, 33.099506, 40.764713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382385, 0.210517, -0.899703,
		0.851340, -0.298218, -0.431608,
		-0.359168, -0.930993, -0.065187,
		38.255005, 32.820210, 40.745155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166294, 33.856812, 40.579254>,  <38.506424, 33.471905, 40.790787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166294, 33.856812, 40.579254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097458, 34.246147, 40.518597>,  <39.056156, 34.479748, 40.482201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097458, 34.246147, 40.518597>,  <39.166294, 33.856812, 40.579254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097458, 34.246147, 40.518597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059863, 0.163991, 0.984644,
		0.983261, 0.160368, -0.086488,
		-0.172089, 0.973339, -0.151645,
		39.045830, 34.538151, 40.473103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543198, 34.206814, 41.092949>,  <39.166294, 33.856812, 40.579254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543198, 34.206814, 41.092949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.270168, 34.472794, 40.971668>,  <39.106350, 34.632381, 40.898899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.270168, 34.472794, 40.971668>,  <39.543198, 34.206814, 41.092949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270168, 34.472794, 40.971668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003830, 0.418138, 0.908376,
		0.730803, 0.618876, -0.287958,
		-0.682578, 0.664946, -0.303206,
		39.065395, 34.672279, 40.880707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738811, 34.773373, 41.425800>,  <39.543198, 34.206814, 41.092949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738811, 34.773373, 41.425800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.367786, 34.875633, 41.316788>,  <39.145172, 34.936989, 41.251381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.367786, 34.875633, 41.316788>,  <39.738811, 34.773373, 41.425800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367786, 34.875633, 41.316788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172831, 0.353114, 0.919478,
		0.331297, 0.899975, -0.283351,
		-0.927562, 0.255649, -0.272529,
		39.089520, 34.952328, 41.235027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629547, 35.485302, 41.495110>,  <39.738811, 34.773373, 41.425800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629547, 35.485302, 41.495110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.256851, 35.345886, 41.535870>,  <39.033234, 35.262238, 41.560326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.256851, 35.345886, 41.535870>,  <39.629547, 35.485302, 41.495110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256851, 35.345886, 41.535870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017674, 0.236743, 0.971411,
		-0.362703, 0.906901, -0.214422,
		-0.931737, -0.348544, 0.101895,
		38.977329, 35.241322, 41.566437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269634, 35.936314, 41.951466>,  <39.629547, 35.485302, 41.495110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269634, 35.936314, 41.951466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.047066, 35.604000, 41.957020>,  <38.913525, 35.404613, 41.960354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.047066, 35.604000, 41.957020>,  <39.269634, 35.936314, 41.951466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047066, 35.604000, 41.957020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100896, 0.084148, 0.991332,
		-0.824749, 0.550201, -0.130644,
		-0.556426, -0.830781, 0.013888,
		38.880138, 35.354767, 41.961185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630741, 36.064728, 42.402119>,  <39.269634, 35.936314, 41.951466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630741, 36.064728, 42.402119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.643646, 35.664982, 42.396095>,  <38.651390, 35.425133, 42.392483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.643646, 35.664982, 42.396095>,  <38.630741, 36.064728, 42.402119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643646, 35.664982, 42.396095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225471, -0.021953, 0.974003,
		-0.973716, -0.028032, -0.226036,
		0.032266, -0.999366, -0.015055,
		38.653324, 35.365173, 42.391579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022408, 35.823223, 42.670746>,  <38.630741, 36.064728, 42.402119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022408, 35.823223, 42.670746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288960, 35.529762, 42.723969>,  <38.448891, 35.353687, 42.755901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288960, 35.529762, 42.723969>,  <38.022408, 35.823223, 42.670746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288960, 35.529762, 42.723969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342629, -0.142810, 0.928553,
		-0.662230, -0.664354, -0.346534,
		0.666376, -0.733648, 0.133053,
		38.488873, 35.309669, 42.763885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725990, 35.360153, 43.035950>,  <38.022408, 35.823223, 42.670746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725990, 35.360153, 43.035950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108368, 35.252911, 43.083771>,  <38.337795, 35.188564, 43.112461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108368, 35.252911, 43.083771>,  <37.725990, 35.360153, 43.035950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108368, 35.252911, 43.083771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140416, -0.059978, 0.988274,
		-0.257798, -0.961519, -0.094983,
		0.955941, -0.268112, 0.119550,
		38.395149, 35.172478, 43.119637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704479, 34.853851, 43.578583>,  <37.725990, 35.360153, 43.035950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704479, 34.853851, 43.578583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.089409, 34.961174, 43.560917>,  <38.320366, 35.025566, 43.550316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.089409, 34.961174, 43.560917>,  <37.704479, 34.853851, 43.578583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089409, 34.961174, 43.560917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014855, 0.110316, 0.993786,
		0.271511, -0.956996, 0.102174,
		0.962320, 0.268306, -0.044168,
		38.378105, 35.041664, 43.547665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129879, 34.461193, 44.113510>,  <37.704479, 34.853851, 43.578583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129879, 34.461193, 44.113510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.326427, 34.802597, 44.044136>,  <38.444359, 35.007439, 44.002510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.326427, 34.802597, 44.044136>,  <38.129879, 34.461193, 44.113510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326427, 34.802597, 44.044136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091773, 0.147287, 0.984827,
		0.866100, -0.499835, -0.005956,
		0.491374, 0.853505, -0.173437,
		38.473839, 35.058647, 43.992104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608486, 34.499901, 44.714195>,  <38.129879, 34.461193, 44.113510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608486, 34.499901, 44.714195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.656898, 34.866882, 44.562599>,  <38.685947, 35.087070, 44.471642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.656898, 34.866882, 44.562599>,  <38.608486, 34.499901, 44.714195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656898, 34.866882, 44.562599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367568, 0.313231, 0.875660,
		0.922087, -0.245288, -0.299314,
		0.121034, 0.917453, -0.378986,
		38.693211, 35.142117, 44.448902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376099, 34.637424, 44.590946>,  <38.608486, 34.499901, 44.714195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376099, 34.637424, 44.590946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.140148, 34.948639, 44.677395>,  <38.998577, 35.135368, 44.729263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.140148, 34.948639, 44.677395>,  <39.376099, 34.637424, 44.590946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140148, 34.948639, 44.677395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505180, 0.146771, 0.850442,
		0.629956, 0.610831, -0.479626,
		-0.589872, 0.778038, 0.216121,
		38.963188, 35.182049, 44.742229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769745, 34.939194, 45.050922>,  <39.376099, 34.637424, 44.590946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769745, 34.939194, 45.050922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.430859, 35.140934, 45.117687>,  <39.227528, 35.261978, 45.157745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.430859, 35.140934, 45.117687>,  <39.769745, 34.939194, 45.050922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430859, 35.140934, 45.117687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308180, 0.210670, 0.927709,
		0.432729, 0.837405, -0.333914,
		-0.847213, 0.504352, 0.166909,
		39.176693, 35.292240, 45.167759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990784, 35.397274, 45.469025>,  <39.769745, 34.939194, 45.050922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990784, 35.397274, 45.469025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593922, 35.404648, 45.518490>,  <39.355804, 35.409073, 45.548168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593922, 35.404648, 45.518490>,  <39.990784, 35.397274, 45.469025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593922, 35.404648, 45.518490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125004, 0.165847, 0.978197,
		-0.002478, 0.985979, -0.166850,
		-0.992153, 0.018433, 0.123662,
		39.296276, 35.410179, 45.555588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.880020, 35.897316, 45.878841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.152111, 35.608269, 45.829678>,  <32.315365, 35.434841, 45.800179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.152111, 35.608269, 45.829678>,  <31.880020, 35.897316, 45.878841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152111, 35.608269, 45.829678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076868, 0.096432, -0.992367,
		0.728958, 0.684484, 0.010049,
		0.680228, -0.722622, -0.122910,
		32.356178, 35.391483, 45.792805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412998, 36.166409, 45.388306>,  <31.880020, 35.897316, 45.878841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412998, 36.166409, 45.388306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.489811, 35.773861, 45.386112>,  <32.535900, 35.538330, 45.384796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.489811, 35.773861, 45.386112>,  <32.412998, 36.166409, 45.388306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489811, 35.773861, 45.386112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177497, 0.040222, -0.983299,
		0.965204, 0.187853, 0.181914,
		0.192033, -0.981373, -0.005479,
		32.547421, 35.479450, 45.384468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071911, 36.034573, 45.023968>,  <32.412998, 36.166409, 45.388306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071911, 36.034573, 45.023968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867565, 35.690811, 45.015606>,  <32.744957, 35.484554, 45.010590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867565, 35.690811, 45.015606>,  <33.071911, 36.034573, 45.023968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867565, 35.690811, 45.015606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148199, -0.064086, -0.986879,
		0.846791, -0.507259, 0.160103,
		-0.510864, -0.859408, -0.020908,
		32.714306, 35.432987, 45.009335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461281, 35.522476, 44.649406>,  <33.071911, 36.034573, 45.023968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461281, 35.522476, 44.649406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.113087, 35.329449, 44.610657>,  <32.904171, 35.213631, 44.587406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.113087, 35.329449, 44.610657>,  <33.461281, 35.522476, 44.649406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113087, 35.329449, 44.610657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204278, -0.175144, -0.963118,
		0.447802, -0.858169, 0.251038,
		-0.870485, -0.482568, -0.096875,
		32.851940, 35.184677, 44.581593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527382, 34.922943, 44.211205>,  <33.461281, 35.522476, 44.649406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527382, 34.922943, 44.211205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.133472, 34.989151, 44.189926>,  <32.897129, 35.028873, 44.177158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.133472, 34.989151, 44.189926>,  <33.527382, 34.922943, 44.211205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133472, 34.989151, 44.189926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038968, -0.088079, -0.995351,
		-0.169434, -0.982266, 0.080288,
		-0.984771, 0.165517, -0.053200,
		32.838039, 35.038807, 44.173965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335091, 34.479630, 43.707275>,  <33.527382, 34.922943, 44.211205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335091, 34.479630, 43.707275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.031239, 34.739742, 43.711323>,  <32.848927, 34.895809, 43.713753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.031239, 34.739742, 43.711323>,  <33.335091, 34.479630, 43.707275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031239, 34.739742, 43.711323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028213, -0.017405, -0.999451,
		-0.649747, -0.759495, 0.031567,
		-0.759627, 0.650281, 0.010118,
		32.803352, 34.934826, 43.714359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997097, 34.211712, 43.138096>,  <33.335091, 34.479630, 43.707275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997097, 34.211712, 43.138096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887184, 34.589661, 43.209324>,  <32.821236, 34.816429, 43.252060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887184, 34.589661, 43.209324>,  <32.997097, 34.211712, 43.138096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887184, 34.589661, 43.209324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012327, 0.181725, -0.983272,
		-0.961426, -0.272384, -0.038288,
		-0.274786, 0.944872, 0.178073,
		32.804749, 34.873123, 43.262745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522259, 34.329052, 42.588345>,  <32.997097, 34.211712, 43.138096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522259, 34.329052, 42.588345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.636841, 34.675308, 42.752590>,  <32.705589, 34.883060, 42.851139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.636841, 34.675308, 42.752590>,  <32.522259, 34.329052, 42.588345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636841, 34.675308, 42.752590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044903, 0.440235, -0.896759,
		-0.957040, 0.238447, 0.164979,
		0.286459, 0.865642, 0.410616,
		32.722778, 34.935001, 42.875774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212994, 34.819073, 42.157848>,  <32.522259, 34.329052, 42.588345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212994, 34.819073, 42.157848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.508278, 35.026466, 42.330456>,  <32.685448, 35.150902, 42.434021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.508278, 35.026466, 42.330456>,  <32.212994, 34.819073, 42.157848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508278, 35.026466, 42.330456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049882, 0.595994, -0.801438,
		-0.672720, 0.613158, 0.414108,
		0.738214, 0.518487, 0.431522,
		32.729744, 35.182011, 42.459911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108662, 35.520763, 41.809341>,  <32.212994, 34.819073, 42.157848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108662, 35.520763, 41.809341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.470551, 35.490856, 41.977097>,  <32.687683, 35.472912, 42.077751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.470551, 35.490856, 41.977097>,  <32.108662, 35.520763, 41.809341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470551, 35.490856, 41.977097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374450, 0.609023, -0.699198,
		-0.203142, 0.789621, 0.578992,
		0.904721, -0.074767, 0.419392,
		32.741966, 35.468426, 42.102913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332981, 36.225330, 41.955730>,  <32.108662, 35.520763, 41.809341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332981, 36.225330, 41.955730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.650139, 35.985832, 41.910446>,  <32.840435, 35.842133, 41.883274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.650139, 35.985832, 41.910446>,  <32.332981, 36.225330, 41.955730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650139, 35.985832, 41.910446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353718, 0.603526, -0.714591,
		0.496187, 0.526551, 0.690321,
		0.792895, -0.598750, -0.113211,
		32.888008, 35.806206, 41.876484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922245, 36.668236, 41.813721>,  <32.332981, 36.225330, 41.955730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922245, 36.668236, 41.813721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.054638, 36.319881, 41.668392>,  <33.134075, 36.110867, 41.581196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.054638, 36.319881, 41.668392>,  <32.922245, 36.668236, 41.813721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054638, 36.319881, 41.668392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355237, 0.471695, -0.807038,
		0.874219, 0.138048, 0.465494,
		0.330981, -0.870888, -0.363325,
		33.153931, 36.058617, 41.559395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629456, 36.762947, 41.659985>,  <32.922245, 36.668236, 41.813721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629456, 36.762947, 41.659985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.533894, 36.450504, 41.429230>,  <33.476555, 36.263039, 41.290775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.533894, 36.450504, 41.429230>,  <33.629456, 36.762947, 41.659985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533894, 36.450504, 41.429230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280055, 0.513426, -0.811149,
		0.929782, -0.355348, 0.096092,
		-0.238904, -0.781103, -0.576891,
		33.462223, 36.216175, 41.256161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082199, 36.770844, 41.096195>,  <33.629456, 36.762947, 41.659985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082199, 36.770844, 41.096195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804066, 36.527649, 40.942905>,  <33.637184, 36.381733, 40.850933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804066, 36.527649, 40.942905>,  <34.082199, 36.770844, 41.096195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804066, 36.527649, 40.942905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150990, 0.397745, -0.904987,
		0.702648, -0.687130, -0.184765,
		-0.695333, -0.607989, -0.383225,
		33.595467, 36.345253, 40.827938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810619, 36.983910, 41.156242>,  <34.082199, 36.770844, 41.096195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810619, 36.983910, 41.156242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.904076, 37.366119, 41.084270>,  <34.960152, 37.595448, 41.041088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.904076, 37.366119, 41.084270>,  <34.810619, 36.983910, 41.156242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904076, 37.366119, 41.084270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134285, 0.151566, 0.979283,
		0.963005, -0.252966, -0.092901,
		0.233645, 0.955529, -0.179928,
		34.974171, 37.652779, 41.030293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544022, 37.067619, 41.440598>,  <34.810619, 36.983910, 41.156242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544022, 37.067619, 41.440598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.338642, 37.410652, 41.428474>,  <35.215412, 37.616470, 41.421200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.338642, 37.410652, 41.428474>,  <35.544022, 37.067619, 41.440598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338642, 37.410652, 41.428474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044298, 0.008787, 0.998980,
		0.856974, 0.514272, 0.033477,
		-0.513453, 0.857582, -0.030311,
		35.184605, 37.667927, 41.419380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910267, 37.533897, 41.842911>,  <35.544022, 37.067619, 41.440598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910267, 37.533897, 41.842911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.543602, 37.693020, 41.827492>,  <35.323605, 37.788494, 41.818241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.543602, 37.693020, 41.827492>,  <35.910267, 37.533897, 41.842911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543602, 37.693020, 41.827492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073089, 0.261674, 0.962385,
		0.392931, 0.879362, -0.268941,
		-0.916659, 0.397807, -0.038548,
		35.268604, 37.812363, 41.815926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996567, 38.175472, 42.122364>,  <35.910267, 37.533897, 41.842911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996567, 38.175472, 42.122364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.600929, 38.126198, 42.154652>,  <35.363544, 38.096634, 42.174023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.600929, 38.126198, 42.154652>,  <35.996567, 38.175472, 42.122364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600929, 38.126198, 42.154652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053437, 0.210544, 0.976123,
		-0.137238, 0.969792, -0.201665,
		-0.989096, -0.123185, 0.080717,
		35.304199, 38.089241, 42.178867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695160, 38.710255, 42.675785>,  <35.996567, 38.175472, 42.122364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695160, 38.710255, 42.675785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.431332, 38.409996, 42.660347>,  <35.273033, 38.229839, 42.651085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.431332, 38.409996, 42.660347>,  <35.695160, 38.710255, 42.675785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431332, 38.409996, 42.660347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012053, -0.061910, 0.998009,
		-0.751544, 0.657794, 0.049881,
		-0.659573, -0.750649, -0.038600,
		35.233459, 38.184803, 42.648766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217354, 38.849876, 43.152870>,  <35.695160, 38.710255, 42.675785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217354, 38.849876, 43.152870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.158245, 38.457977, 43.098831>,  <35.122780, 38.222836, 43.066406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.158245, 38.457977, 43.098831>,  <35.217354, 38.849876, 43.152870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158245, 38.457977, 43.098831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004641, -0.137286, 0.990521,
		-0.989011, 0.145740, 0.024834,
		-0.147768, -0.979751, -0.135101,
		35.113914, 38.164051, 43.058300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590908, 38.589165, 43.602650>,  <35.217354, 38.849876, 43.152870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590908, 38.589165, 43.602650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.811008, 38.265305, 43.520977>,  <34.943069, 38.070988, 43.471973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.811008, 38.265305, 43.520977>,  <34.590908, 38.589165, 43.602650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811008, 38.265305, 43.520977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012892, -0.236263, 0.971604,
		-0.834897, -0.537262, -0.119566,
		0.550255, -0.809648, -0.204182,
		34.976086, 38.022411, 43.459724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312626, 38.102352, 44.057755>,  <34.590908, 38.589165, 43.602650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312626, 38.102352, 44.057755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.671638, 37.961300, 43.951859>,  <34.887047, 37.876667, 43.888321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.671638, 37.961300, 43.951859>,  <34.312626, 38.102352, 44.057755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671638, 37.961300, 43.951859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205858, -0.195850, 0.958783,
		-0.389946, -0.915038, -0.103190,
		0.897533, -0.352631, -0.264739,
		34.940899, 37.855511, 43.872437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309757, 37.456577, 44.302742>,  <34.312626, 38.102352, 44.057755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309757, 37.456577, 44.302742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.689083, 37.577217, 44.263264>,  <34.916679, 37.649601, 44.239578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.689083, 37.577217, 44.263264>,  <34.309757, 37.456577, 44.302742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689083, 37.577217, 44.263264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197529, -0.317601, 0.927422,
		0.248361, -0.898982, -0.360759,
		0.948314, 0.301596, -0.098695,
		34.973576, 37.667694, 44.233654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698761, 36.929726, 44.600193>,  <34.309757, 37.456577, 44.302742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698761, 36.929726, 44.600193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975845, 37.214592, 44.554630>,  <35.142097, 37.385509, 44.527294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975845, 37.214592, 44.554630>,  <34.698761, 36.929726, 44.600193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975845, 37.214592, 44.554630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462802, -0.317805, 0.827535,
		0.553140, -0.625959, -0.549738,
		0.692712, 0.712162, -0.113905,
		35.183659, 37.428242, 44.520458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352741, 36.634598, 44.602951>,  <34.698761, 36.929726, 44.600193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352741, 36.634598, 44.602951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.376858, 37.016106, 44.720722>,  <35.391327, 37.245010, 44.791386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.376858, 37.016106, 44.720722>,  <35.352741, 36.634598, 44.602951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376858, 37.016106, 44.720722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347306, -0.296575, 0.889619,
		0.935812, 0.048621, -0.349130,
		0.060289, 0.953771, 0.294425,
		35.394943, 37.302238, 44.809048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816292, 36.512657, 45.160889>,  <35.352741, 36.634598, 44.602951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816292, 36.512657, 45.160889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.688744, 36.883324, 45.240494>,  <35.612213, 37.105724, 45.288258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.688744, 36.883324, 45.240494>,  <35.816292, 36.512657, 45.160889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688744, 36.883324, 45.240494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484552, -0.021072, 0.874509,
		0.814573, 0.375290, -0.442299,
		-0.318874, 0.926668, 0.199012,
		35.593082, 37.161324, 45.300198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421307, 36.900913, 45.435131>,  <35.816292, 36.512657, 45.160889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421307, 36.900913, 45.435131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.078552, 37.072693, 45.549202>,  <35.872902, 37.175762, 45.617645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.078552, 37.072693, 45.549202>,  <36.421307, 36.900913, 45.435131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078552, 37.072693, 45.549202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249727, -0.138160, 0.958409,
		0.450989, 0.892460, 0.011142,
		-0.856881, 0.429449, 0.285180,
		35.821487, 37.201527, 45.634754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515694, 37.347137, 45.935600>,  <36.421307, 36.900913, 45.435131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515694, 37.347137, 45.935600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.126080, 37.273441, 45.988228>,  <35.892311, 37.229225, 46.019806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.126080, 37.273441, 45.988228>,  <36.515694, 37.347137, 45.935600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126080, 37.273441, 45.988228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186739, -0.325236, 0.927011,
		-0.128002, 0.927511, 0.351196,
		-0.974035, -0.184241, 0.131572,
		35.833870, 37.218170, 46.027699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787605, 38.066006, 46.102730>,  <36.515694, 37.347137, 45.935600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787605, 38.066006, 46.102730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.164940, 38.179405, 46.171722>,  <37.391342, 38.247444, 46.213116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.164940, 38.179405, 46.171722>,  <36.787605, 38.066006, 46.102730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164940, 38.179405, 46.171722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013174, 0.487354, -0.873105,
		-0.331581, 0.825903, 0.456003,
		0.943335, 0.283498, 0.172477,
		37.447941, 38.264454, 46.223465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856476, 38.670666, 45.720928>,  <36.787605, 38.066006, 46.102730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856476, 38.670666, 45.720928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.235100, 38.564629, 45.794418>,  <37.462273, 38.501007, 45.838512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.235100, 38.564629, 45.794418>,  <36.856476, 38.670666, 45.720928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235100, 38.564629, 45.794418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207474, 0.064319, -0.976124,
		0.246946, 0.962075, 0.115881,
		0.946558, -0.265092, 0.183722,
		37.519066, 38.485100, 45.849537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276802, 39.260643, 45.575432>,  <36.856476, 38.670666, 45.720928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276802, 39.260643, 45.575432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.494690, 38.926277, 45.548512>,  <37.625423, 38.725658, 45.532360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.494690, 38.926277, 45.548512>,  <37.276802, 39.260643, 45.575432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494690, 38.926277, 45.548512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182900, 0.196738, -0.963245,
		0.818431, 0.512388, 0.260055,
		0.544718, -0.835914, -0.067301,
		37.658104, 38.675503, 45.528320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711884, 39.399693, 45.082554>,  <37.276802, 39.260643, 45.575432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711884, 39.399693, 45.082554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.782768, 39.006084, 45.089581>,  <37.825298, 38.769920, 45.093796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.782768, 39.006084, 45.089581>,  <37.711884, 39.399693, 45.082554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782768, 39.006084, 45.089581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328121, 0.042243, -0.943691,
		0.927865, 0.172998, 0.330362,
		0.177212, -0.984016, 0.017569,
		37.835930, 38.710880, 45.094852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430984, 39.315807, 44.732731>,  <37.711884, 39.399693, 45.082554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430984, 39.315807, 44.732731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.263363, 38.954155, 44.699425>,  <38.162788, 38.737164, 44.679440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.263363, 38.954155, 44.699425>,  <38.430984, 39.315807, 44.732731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263363, 38.954155, 44.699425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246475, -0.025011, -0.968826,
		0.873865, -0.426518, 0.233328,
		-0.419057, -0.904133, -0.083270,
		38.137646, 38.682915, 44.674442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878937, 38.898514, 44.436123>,  <38.430984, 39.315807, 44.732731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878937, 38.898514, 44.436123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527100, 38.721962, 44.365139>,  <38.315998, 38.616032, 44.322548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527100, 38.721962, 44.365139>,  <38.878937, 38.898514, 44.436123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527100, 38.721962, 44.365139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189071, 0.017943, -0.981800,
		0.436533, -0.897139, 0.067670,
		-0.879597, -0.441383, -0.177455,
		38.263222, 38.589546, 44.311901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060272, 38.328007, 44.049305>,  <38.878937, 38.898514, 44.436123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060272, 38.328007, 44.049305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.674599, 38.381523, 43.957706>,  <38.443195, 38.413635, 43.902748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.674599, 38.381523, 43.957706>,  <39.060272, 38.328007, 44.049305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674599, 38.381523, 43.957706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248467, 0.153687, -0.956371,
		-0.092763, -0.979020, -0.181427,
		-0.964189, 0.133795, -0.228997,
		38.385342, 38.421661, 43.889008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919876, 37.853580, 43.468075>,  <39.060272, 38.328007, 44.049305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919876, 37.853580, 43.468075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.624165, 38.122311, 43.449661>,  <38.446739, 38.283546, 43.438614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.624165, 38.122311, 43.449661>,  <38.919876, 37.853580, 43.468075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624165, 38.122311, 43.449661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166150, 0.115729, -0.979286,
		-0.652580, -0.731614, -0.197179,
		-0.739279, 0.671824, -0.046036,
		38.402382, 38.323856, 43.435852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482811, 37.641468, 42.762718>,  <38.919876, 37.853580, 43.468075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482811, 37.641468, 42.762718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.466225, 38.019230, 42.893185>,  <38.456272, 38.245888, 42.971466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.466225, 38.019230, 42.893185>,  <38.482811, 37.641468, 42.762718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466225, 38.019230, 42.893185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207598, 0.327465, -0.921775,
		-0.977335, 0.029492, -0.209633,
		-0.041463, 0.944403, 0.326166,
		38.453785, 38.302551, 42.991035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890800, 37.987576, 42.304707>,  <38.482811, 37.641468, 42.762718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890800, 37.987576, 42.304707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.134453, 38.265751, 42.457195>,  <38.280643, 38.432655, 42.548687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.134453, 38.265751, 42.457195>,  <37.890800, 37.987576, 42.304707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134453, 38.265751, 42.457195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261356, 0.277812, -0.924399,
		-0.748767, 0.662715, -0.012532,
		0.609132, 0.695435, 0.381221,
		38.317192, 38.474380, 42.571560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744175, 38.435543, 41.907654>,  <37.890800, 37.987576, 42.304707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744175, 38.435543, 41.907654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.082298, 38.593964, 42.051102>,  <38.285172, 38.689014, 42.137169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.082298, 38.593964, 42.051102>,  <37.744175, 38.435543, 41.907654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082298, 38.593964, 42.051102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269864, 0.262809, -0.926340,
		-0.461122, 0.879817, 0.115275,
		0.845305, 0.396047, 0.358618,
		38.335888, 38.712776, 42.158688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937138, 39.026787, 41.576031>,  <37.744175, 38.435543, 41.907654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937138, 39.026787, 41.576031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296299, 38.931576, 41.724144>,  <38.511795, 38.874451, 41.813011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296299, 38.931576, 41.724144>,  <37.937138, 39.026787, 41.576031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296299, 38.931576, 41.724144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417933, 0.196866, -0.886891,
		0.138207, 0.951098, 0.276246,
		0.897904, -0.238027, 0.370287,
		38.565670, 38.860168, 41.835232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345764, 39.443954, 41.287930>,  <37.937138, 39.026787, 41.576031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345764, 39.443954, 41.287930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601971, 39.165638, 41.417915>,  <38.755695, 38.998646, 41.495907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601971, 39.165638, 41.417915>,  <38.345764, 39.443954, 41.287930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601971, 39.165638, 41.417915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402112, -0.056637, -0.913837,
		0.654247, 0.716006, 0.243509,
		0.640521, -0.695793, 0.324969,
		38.794128, 38.956902, 41.515408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994011, 39.637539, 40.991924>,  <38.345764, 39.443954, 41.287930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994011, 39.637539, 40.991924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.025829, 39.245975, 41.067192>,  <39.044918, 39.011036, 41.112354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.025829, 39.245975, 41.067192>,  <38.994011, 39.637539, 40.991924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025829, 39.245975, 41.067192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498671, -0.124375, -0.857822,
		0.863134, 0.162070, 0.478261,
		0.079544, -0.978910, 0.188172,
		39.049694, 38.952301, 41.123642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.165676, 42.705257, 35.997414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.826269, 42.701046, 35.785789>,  <25.622625, 42.698517, 35.658813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.826269, 42.701046, 35.785789>,  <26.165676, 42.705257, 35.997414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826269, 42.701046, 35.785789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096247, -0.986197, -0.134730,
		-0.520338, -0.165241, 0.837821,
		-0.848520, -0.010533, -0.529059,
		25.571712, 42.697887, 35.627071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863119, 42.125751, 36.244888>,  <26.165676, 42.705257, 35.997414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863119, 42.125751, 36.244888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.659479, 42.200588, 35.908836>,  <25.537294, 42.245491, 35.707207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.659479, 42.200588, 35.908836>,  <25.863119, 42.125751, 36.244888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.659479, 42.200588, 35.908836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055001, -0.967023, -0.248678,
		-0.858947, -0.172810, 0.482024,
		-0.509102, 0.187089, -0.840127,
		25.506748, 42.256714, 35.656799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364939, 41.568920, 36.184986>,  <25.863119, 42.125751, 36.244888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364939, 41.568920, 36.184986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.365412, 41.707672, 35.809822>,  <25.365696, 41.790924, 35.584724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.365412, 41.707672, 35.809822>,  <25.364939, 41.568920, 36.184986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.365412, 41.707672, 35.809822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044769, -0.936986, -0.346487,
		-0.998997, -0.041579, -0.016638,
		0.001183, 0.346884, -0.937907,
		25.365767, 41.811737, 35.528450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.702246, 41.218502, 35.797344>,  <25.364939, 41.568920, 36.184986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.702246, 41.218502, 35.797344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.969416, 41.339912, 35.525536>,  <25.129717, 41.412758, 35.362450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.969416, 41.339912, 35.525536>,  <24.702246, 41.218502, 35.797344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.969416, 41.339912, 35.525536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043525, -0.927423, -0.371473,
		-0.742957, 0.218539, -0.632658,
		0.667923, 0.303525, -0.679524,
		25.169792, 41.430969, 35.321678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.539368, 40.875515, 35.136539>,  <24.702246, 41.218502, 35.797344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.539368, 40.875515, 35.136539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.924255, 40.970299, 35.082897>,  <25.155188, 41.027168, 35.050713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.924255, 40.970299, 35.082897>,  <24.539368, 40.875515, 35.136539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924255, 40.970299, 35.082897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157294, -0.885794, -0.436609,
		-0.222247, 0.399020, -0.889601,
		0.962219, 0.236964, -0.134102,
		25.212921, 41.041389, 35.042667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.650183, 40.687130, 34.352806>,  <24.539368, 40.875515, 35.136539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.650183, 40.687130, 34.352806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.985296, 40.686531, 34.571205>,  <25.186365, 40.686172, 34.702244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.985296, 40.686531, 34.571205>,  <24.650183, 40.687130, 34.352806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985296, 40.686531, 34.571205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239493, -0.897655, -0.369943,
		0.490675, 0.440696, -0.751682,
		0.837783, -0.001499, 0.546001,
		25.236631, 40.686081, 34.735004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.114870, 40.390385, 33.939686>,  <24.650183, 40.687130, 34.352806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.114870, 40.390385, 33.939686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.299747, 40.371571, 34.293900>,  <25.410675, 40.360283, 34.506428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.299747, 40.371571, 34.293900>,  <25.114870, 40.390385, 33.939686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.299747, 40.371571, 34.293900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408402, -0.875096, -0.259643,
		0.787136, 0.481658, -0.385256,
		0.462195, -0.047035, 0.885530,
		25.438406, 40.357460, 34.559559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830856, 39.932156, 33.870064>,  <25.114870, 40.390385, 33.939686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830856, 39.932156, 33.870064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.806517, 39.931797, 34.269321>,  <25.791912, 39.931583, 34.508877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.806517, 39.931797, 34.269321>,  <25.830856, 39.932156, 33.870064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806517, 39.931797, 34.269321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631654, -0.774328, 0.037815,
		0.772859, 0.632784, 0.047683,
		-0.060851, -0.000894, 0.998146,
		25.788261, 39.931530, 34.568764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521997, 40.004818, 34.125725>,  <25.830856, 39.932156, 33.870064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521997, 40.004818, 34.125725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.299503, 39.813709, 34.397705>,  <26.166008, 39.699043, 34.560894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.299503, 39.813709, 34.397705>,  <26.521997, 40.004818, 34.125725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299503, 39.813709, 34.397705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715822, -0.691089, 0.099975,
		0.422141, 0.542333, 0.726410,
		-0.556234, -0.477776, 0.679951,
		26.132633, 39.670376, 34.601692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017067, 39.811287, 34.691536>,  <26.521997, 40.004818, 34.125725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017067, 39.811287, 34.691536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.689280, 39.584995, 34.728241>,  <26.492607, 39.449219, 34.750263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.689280, 39.584995, 34.728241>,  <27.017067, 39.811287, 34.691536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689280, 39.584995, 34.728241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572496, -0.815498, 0.084917,
		0.026796, 0.122123, 0.992153,
		-0.819470, -0.565728, 0.091767,
		26.443439, 39.415276, 34.755772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160534, 39.237350, 35.159679>,  <27.017067, 39.811287, 34.691536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160534, 39.237350, 35.159679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823160, 39.106930, 34.988888>,  <26.620735, 39.028679, 34.886414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823160, 39.106930, 34.988888>,  <27.160534, 39.237350, 35.159679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823160, 39.106930, 34.988888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337436, -0.939955, 0.051210,
		-0.418034, -0.100884, 0.902812,
		-0.843436, -0.326049, -0.426974,
		26.570129, 39.009113, 34.860794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973907, 38.640984, 35.519337>,  <27.160534, 39.237350, 35.159679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973907, 38.640984, 35.519337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.780684, 38.619991, 35.169731>,  <26.664749, 38.607395, 34.959969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.780684, 38.619991, 35.169731>,  <26.973907, 38.640984, 35.519337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780684, 38.619991, 35.169731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311027, -0.943386, -0.115258,
		-0.818482, -0.327518, 0.472037,
		-0.483062, -0.052479, -0.874012,
		26.635765, 38.604248, 34.907528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529282, 38.067223, 35.550613>,  <26.973907, 38.640984, 35.519337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529282, 38.067223, 35.550613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.586216, 38.135315, 35.160587>,  <26.620377, 38.176170, 34.926571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.586216, 38.135315, 35.160587>,  <26.529282, 38.067223, 35.550613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586216, 38.135315, 35.160587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259900, -0.956962, -0.129131,
		-0.955087, -0.235041, -0.180455,
		0.142337, 0.170231, -0.975070,
		26.628918, 38.186386, 34.868065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249453, 37.483719, 35.203339>,  <26.529282, 38.067223, 35.550613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249453, 37.483719, 35.203339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494953, 37.635174, 34.926224>,  <26.642254, 37.726048, 34.759956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494953, 37.635174, 34.926224>,  <26.249453, 37.483719, 35.203339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494953, 37.635174, 34.926224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312497, -0.922337, -0.227246,
		-0.725022, -0.077020, -0.684406,
		0.613750, 0.378633, -0.692783,
		26.679077, 37.748764, 34.718388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130617, 37.101799, 34.572815>,  <26.249453, 37.483719, 35.203339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130617, 37.101799, 34.572815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.497618, 37.255257, 34.530834>,  <26.717817, 37.347332, 34.505646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.497618, 37.255257, 34.530834>,  <26.130617, 37.101799, 34.572815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497618, 37.255257, 34.530834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358072, -0.911592, -0.201951,
		-0.173146, 0.147711, -0.973757,
		0.917499, 0.383642, -0.104947,
		26.772867, 37.370350, 34.499352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464685, 36.727009, 34.045166>,  <26.130617, 37.101799, 34.572815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464685, 36.727009, 34.045166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.768663, 36.900555, 34.238762>,  <26.951050, 37.004681, 34.354919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.768663, 36.900555, 34.238762>,  <26.464685, 36.727009, 34.045166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768663, 36.900555, 34.238762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513564, -0.857211, -0.037951,
		0.398415, 0.277400, -0.874251,
		0.759945, 0.433864, 0.483989,
		26.996647, 37.030712, 34.383957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002628, 36.387959, 33.819126>,  <26.464685, 36.727009, 34.045166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002628, 36.387959, 33.819126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.162113, 36.578396, 34.132652>,  <27.257805, 36.692657, 34.320766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.162113, 36.578396, 34.132652>,  <27.002628, 36.387959, 33.819126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162113, 36.578396, 34.132652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657368, -0.744319, 0.117710,
		0.639448, 0.468321, -0.609739,
		0.398714, 0.476093, 0.783813,
		27.281727, 36.721222, 34.367798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736557, 36.444530, 33.736866>,  <27.002628, 36.387959, 33.819126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736557, 36.444530, 33.736866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.611338, 36.430195, 34.116489>,  <27.536205, 36.421593, 34.344265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.611338, 36.430195, 34.116489>,  <27.736557, 36.444530, 33.736866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611338, 36.430195, 34.116489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642623, -0.743790, 0.183882,
		0.699310, 0.667452, 0.255876,
		-0.313050, -0.035842, 0.949060,
		27.517422, 36.419441, 34.401207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266176, 36.030220, 33.976650>,  <27.736557, 36.444530, 33.736866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266176, 36.030220, 33.976650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024956, 36.059803, 34.294357>,  <27.880222, 36.077553, 34.484982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024956, 36.059803, 34.294357>,  <28.266176, 36.030220, 33.976650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024956, 36.059803, 34.294357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451685, -0.789037, 0.416415,
		0.657501, 0.609878, 0.442426,
		-0.603053, 0.073955, 0.794266,
		27.844040, 36.081989, 34.532639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758154, 35.988976, 34.496681>,  <28.266176, 36.030220, 33.976650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758154, 35.988976, 34.496681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.403044, 35.853264, 34.621098>,  <28.189978, 35.771835, 34.695747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.403044, 35.853264, 34.621098>,  <28.758154, 35.988976, 34.496681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403044, 35.853264, 34.621098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431450, -0.848799, 0.305599,
		0.160325, 0.405501, 0.899925,
		-0.887776, -0.339278, 0.311037,
		28.136711, 35.751480, 34.714409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522585, 36.123798, 34.629993>,  <28.758154, 35.988976, 34.496681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522585, 36.123798, 34.629993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.903320, 36.166225, 34.514923>,  <30.131762, 36.191681, 34.445881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.903320, 36.166225, 34.514923>,  <29.522585, 36.123798, 34.629993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903320, 36.166225, 34.514923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036398, 0.970710, 0.237481,
		0.304439, -0.215572, 0.927818,
		0.951836, 0.106069, -0.287676,
		30.188871, 36.198048, 34.428619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839289, 36.484783, 35.206871>,  <29.522585, 36.123798, 34.629993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839289, 36.484783, 35.206871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.042217, 36.550350, 34.868462>,  <30.163975, 36.589691, 34.665417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.042217, 36.550350, 34.868462>,  <29.839289, 36.484783, 35.206871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042217, 36.550350, 34.868462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118676, 0.959099, 0.256992,
		0.853546, -0.230780, 0.467119,
		0.507322, 0.163918, -0.846023,
		30.194414, 36.599525, 34.614655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358849, 36.896618, 35.348469>,  <29.839289, 36.484783, 35.206871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358849, 36.896618, 35.348469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.336678, 36.938828, 34.951321>,  <30.323376, 36.964153, 34.713032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.336678, 36.938828, 34.951321>,  <30.358849, 36.896618, 35.348469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336678, 36.938828, 34.951321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041556, 0.993294, 0.107888,
		0.997597, 0.047240, -0.050671,
		-0.055428, 0.105523, -0.992871,
		30.320049, 36.970486, 34.653458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830952, 37.526516, 35.097504>,  <30.358849, 36.896618, 35.348469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830952, 37.526516, 35.097504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.562872, 37.481747, 34.804028>,  <30.402023, 37.454884, 34.627941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.562872, 37.481747, 34.804028>,  <30.830952, 37.526516, 35.097504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562872, 37.481747, 34.804028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132136, 0.990764, -0.030444,
		0.730323, 0.076544, -0.678800,
		-0.670200, -0.111928, -0.733692,
		30.361813, 37.448170, 34.583920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036366, 38.072796, 34.558098>,  <30.830952, 37.526516, 35.097504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036366, 38.072796, 34.558098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.652765, 37.999893, 34.471291>,  <30.422606, 37.956150, 34.419209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.652765, 37.999893, 34.471291>,  <31.036366, 38.072796, 34.558098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652765, 37.999893, 34.471291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146094, 0.974112, -0.172515,
		0.242840, -0.133738, -0.960803,
		-0.959002, -0.182261, -0.217015,
		30.365065, 37.945213, 34.406185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940533, 38.379910, 33.855087>,  <31.036366, 38.072796, 34.558098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940533, 38.379910, 33.855087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.573561, 38.332516, 34.007027>,  <30.353378, 38.304081, 34.098190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.573561, 38.332516, 34.007027>,  <30.940533, 38.379910, 33.855087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573561, 38.332516, 34.007027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139957, 0.989724, -0.029311,
		-0.372475, -0.080054, -0.924583,
		-0.917428, -0.118484, 0.379851,
		30.298332, 38.296970, 34.120983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422207, 38.558956, 33.387825>,  <30.940533, 38.379910, 33.855087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422207, 38.558956, 33.387825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.250299, 38.595192, 33.747177>,  <30.147156, 38.616932, 33.962788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.250299, 38.595192, 33.747177>,  <30.422207, 38.558956, 33.387825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250299, 38.595192, 33.747177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315362, 0.917240, -0.243348,
		-0.846077, -0.387899, -0.365632,
		-0.429767, 0.090585, 0.898384,
		30.121368, 38.622368, 34.016693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698030, 38.724449, 33.275043>,  <30.422207, 38.558956, 33.387825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698030, 38.724449, 33.275043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.759909, 38.818111, 33.658970>,  <29.797035, 38.874310, 33.889324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.759909, 38.818111, 33.658970>,  <29.698030, 38.724449, 33.275043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759909, 38.818111, 33.658970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349829, 0.921546, -0.168440,
		-0.923953, -0.309713, 0.224474,
		0.154696, 0.234158, 0.959812,
		29.806318, 38.888359, 33.946915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023581, 39.009529, 33.678478>,  <29.698030, 38.724449, 33.275043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023581, 39.009529, 33.678478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.342472, 39.165207, 33.863068>,  <29.533808, 39.258614, 33.973820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.342472, 39.165207, 33.863068>,  <29.023581, 39.009529, 33.678478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342472, 39.165207, 33.863068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396321, 0.914056, -0.086212,
		-0.455363, -0.114160, 0.882957,
		0.797230, 0.389192, 0.461470,
		29.581640, 39.281963, 34.001511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732607, 39.522202, 34.113060>,  <29.023581, 39.009529, 33.678478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732607, 39.522202, 34.113060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.115505, 39.637146, 34.099804>,  <29.345245, 39.706112, 34.091850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.115505, 39.637146, 34.099804>,  <28.732607, 39.522202, 34.113060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115505, 39.637146, 34.099804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287015, 0.957810, 0.014915,
		0.036029, -0.004765, 0.999339,
		0.957248, 0.287363, -0.033142,
		29.402679, 39.723354, 34.089863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871536, 39.942307, 34.693710>,  <28.732607, 39.522202, 34.113060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871536, 39.942307, 34.693710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.208057, 40.038200, 34.499912>,  <29.409969, 40.095737, 34.383633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.208057, 40.038200, 34.499912>,  <28.871536, 39.942307, 34.693710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208057, 40.038200, 34.499912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132471, 0.960385, 0.245179,
		0.524084, -0.142088, 0.839730,
		0.841301, 0.239734, -0.484500,
		29.460447, 40.110119, 34.354561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234253, 40.381699, 35.125313>,  <28.871536, 39.942307, 34.693710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234253, 40.381699, 35.125313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375671, 40.459602, 34.759346>,  <29.460522, 40.506344, 34.539764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375671, 40.459602, 34.759346>,  <29.234253, 40.381699, 35.125313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375671, 40.459602, 34.759346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270110, 0.957676, 0.099487,
		0.895571, 0.211956, 0.391188,
		0.353544, 0.194761, -0.914917,
		29.481735, 40.518032, 34.484871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715616, 40.844021, 35.278580>,  <29.234253, 40.381699, 35.125313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715616, 40.844021, 35.278580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.613501, 40.909058, 34.897343>,  <29.552231, 40.948078, 34.668598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.613501, 40.909058, 34.897343>,  <29.715616, 40.844021, 35.278580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613501, 40.909058, 34.897343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274268, 0.933089, 0.232641,
		0.927149, 0.320794, -0.193615,
		-0.255290, 0.162591, -0.953096,
		29.536913, 40.957836, 34.611412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976471, 41.418839, 35.072060>,  <29.715616, 40.844021, 35.278580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976471, 41.418839, 35.072060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695307, 41.366352, 34.792431>,  <29.526608, 41.334862, 34.624653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695307, 41.366352, 34.792431>,  <29.976471, 41.418839, 35.072060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695307, 41.366352, 34.792431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363992, 0.910750, 0.195048,
		0.611084, 0.391557, -0.687938,
		-0.702913, -0.131213, -0.699069,
		29.484432, 41.326988, 34.582710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051081, 41.972202, 34.561741>,  <29.976471, 41.418839, 35.072060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051081, 41.972202, 34.561741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.678352, 41.827957, 34.578068>,  <29.454716, 41.741409, 34.587864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.678352, 41.827957, 34.578068>,  <30.051081, 41.972202, 34.561741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678352, 41.827957, 34.578068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360421, 0.932709, 0.012242,
		-0.042488, -0.003305, -0.999092,
		-0.931821, -0.360614, 0.040820,
		29.398806, 41.719772, 34.590313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671568, 42.344410, 34.120354>,  <30.051081, 41.972202, 34.561741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671568, 42.344410, 34.120354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.381811, 42.194172, 34.351585>,  <29.207956, 42.104027, 34.490326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.381811, 42.194172, 34.351585>,  <29.671568, 42.344410, 34.120354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381811, 42.194172, 34.351585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384791, 0.916059, 0.113011,
		-0.572005, -0.140577, -0.808114,
		-0.724393, -0.375598, 0.578083,
		29.164494, 42.081493, 34.525009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138029, 42.748436, 33.931946>,  <29.671568, 42.344410, 34.120354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138029, 42.748436, 33.931946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002964, 42.568287, 34.262558>,  <28.921925, 42.460197, 34.460926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002964, 42.568287, 34.262558>,  <29.138029, 42.748436, 33.931946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002964, 42.568287, 34.262558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548298, 0.807853, 0.216200,
		-0.765083, -0.380180, -0.519723,
		-0.337665, -0.450374, 0.826526,
		28.901665, 42.433174, 34.510517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446665, 42.932434, 33.963360>,  <29.138029, 42.748436, 33.931946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446665, 42.932434, 33.963360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515421, 42.808125, 34.337284>,  <28.556675, 42.733540, 34.561638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515421, 42.808125, 34.337284>,  <28.446665, 42.932434, 33.963360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515421, 42.808125, 34.337284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607198, 0.713822, 0.348953,
		-0.775734, -0.627599, -0.065999,
		0.171891, -0.310769, 0.934813,
		28.566988, 42.714893, 34.617729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739628, 42.831387, 34.295723>,  <28.446665, 42.932434, 33.963360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739628, 42.831387, 34.295723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.972195, 42.861488, 34.619770>,  <28.111734, 42.879547, 34.814198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.972195, 42.861488, 34.619770>,  <27.739628, 42.831387, 34.295723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972195, 42.861488, 34.619770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555857, 0.763839, 0.327982,
		-0.594120, -0.641004, 0.485937,
		0.581416, 0.075251, 0.810119,
		28.146620, 42.884064, 34.862804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279457, 42.872833, 34.862270>,  <27.739628, 42.831387, 34.295723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279457, 42.872833, 34.862270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.613951, 43.043671, 34.999851>,  <27.814646, 43.146172, 35.082401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.613951, 43.043671, 34.999851>,  <27.279457, 42.872833, 34.862270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613951, 43.043671, 34.999851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525162, 0.804277, 0.278106,
		-0.157859, -0.413195, 0.896856,
		0.836233, 0.427093, 0.343957,
		27.864820, 43.171799, 35.103039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155403, 43.133457, 35.496403>,  <27.279457, 42.872833, 34.862270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155403, 43.133457, 35.496403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.492716, 43.325382, 35.399529>,  <27.695105, 43.440536, 35.341404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.492716, 43.325382, 35.399529>,  <27.155403, 43.133457, 35.496403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492716, 43.325382, 35.399529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457167, 0.877282, 0.146204,
		0.282615, -0.012573, 0.959151,
		0.843284, 0.479811, -0.242185,
		27.745701, 43.469326, 35.326874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159325, 43.643711, 35.945961>,  <27.155403, 43.133457, 35.496403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159325, 43.643711, 35.945961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.418043, 43.786598, 35.676426>,  <27.573275, 43.872330, 35.514706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.418043, 43.786598, 35.676426>,  <27.159325, 43.643711, 35.945961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418043, 43.786598, 35.676426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205375, 0.932469, 0.297190,
		0.734492, -0.053832, 0.676479,
		0.646794, 0.357216, -0.673835,
		27.612082, 43.893764, 35.474274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.750278, 35.966618, 46.041042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.432434, 35.723797, 46.037357>,  <39.241730, 35.578102, 46.035145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.432434, 35.723797, 46.037357>,  <39.750278, 35.966618, 46.041042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432434, 35.723797, 46.037357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044813, 0.043511, 0.998047,
		-0.605468, 0.793468, -0.061778,
		-0.794607, -0.607054, -0.009213,
		39.194054, 35.541679, 46.034592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285408, 36.228260, 46.436996>,  <39.750278, 35.966618, 46.041042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285408, 36.228260, 46.436996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.184052, 35.841427, 46.427597>,  <39.123238, 35.609329, 46.421955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.184052, 35.841427, 46.427597>,  <39.285408, 36.228260, 46.436996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184052, 35.841427, 46.427597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033331, -0.015551, 0.999323,
		-0.966790, 0.254001, -0.028293,
		-0.253389, -0.967079, -0.023501,
		39.108036, 35.551304, 46.420547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727684, 36.171028, 46.964725>,  <39.285408, 36.228260, 46.436996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727684, 36.171028, 46.964725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.864880, 35.800579, 46.901913>,  <38.947197, 35.578312, 46.864227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.864880, 35.800579, 46.901913>,  <38.727684, 36.171028, 46.964725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864880, 35.800579, 46.901913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092372, -0.199613, 0.975511,
		-0.934785, -0.320089, -0.154013,
		0.342993, -0.926120, -0.157028,
		38.967777, 35.522743, 46.854805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255970, 35.693554, 47.289963>,  <38.727684, 36.171028, 46.964725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255970, 35.693554, 47.289963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.594078, 35.482643, 47.255322>,  <38.796944, 35.356098, 47.234535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.594078, 35.482643, 47.255322>,  <38.255970, 35.693554, 47.289963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594078, 35.482643, 47.255322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083258, -0.290066, 0.953378,
		-0.527815, -0.798650, -0.289084,
		0.845268, -0.527276, -0.086607,
		38.847660, 35.324459, 47.229340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067860, 35.013634, 47.524590>,  <38.255970, 35.693554, 47.289963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067860, 35.013634, 47.524590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465889, 35.045219, 47.548546>,  <38.704708, 35.064171, 47.562920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465889, 35.045219, 47.548546>,  <38.067860, 35.013634, 47.524590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465889, 35.045219, 47.548546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027797, -0.357677, 0.933431,
		0.095129, -0.930501, -0.353721,
		0.995077, 0.078964, 0.059890,
		38.764412, 35.068909, 47.566513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322834, 34.464081, 47.909409>,  <38.067860, 35.013634, 47.524590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322834, 34.464081, 47.909409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.667648, 34.666737, 47.915260>,  <38.874538, 34.788330, 47.918770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.667648, 34.666737, 47.915260>,  <38.322834, 34.464081, 47.909409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667648, 34.666737, 47.915260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093428, -0.187204, 0.977868,
		0.498164, -0.841590, -0.208711,
		0.862035, 0.506638, 0.014630,
		38.926258, 34.818729, 47.919651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698048, 34.072071, 48.314415>,  <38.322834, 34.464081, 47.909409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698048, 34.072071, 48.314415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.872425, 34.432030, 48.309612>,  <38.977051, 34.648003, 48.306732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.872425, 34.432030, 48.309612>,  <38.698048, 34.072071, 48.314415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872425, 34.432030, 48.309612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143344, -0.056258, 0.988073,
		0.888484, -0.432467, -0.153520,
		0.435946, 0.899893, -0.012008,
		39.003208, 34.701996, 48.306011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247936, 33.966507, 48.767189>,  <38.698048, 34.072071, 48.314415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247936, 33.966507, 48.767189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.165108, 34.357468, 48.750134>,  <39.115410, 34.592045, 48.739902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.165108, 34.357468, 48.750134>,  <39.247936, 33.966507, 48.767189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165108, 34.357468, 48.750134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057910, 0.031257, 0.997832,
		0.976611, 0.209089, 0.050129,
		-0.207068, 0.977397, -0.042634,
		39.102985, 34.650688, 48.737343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580753, 34.203537, 49.254238>,  <39.247936, 33.966507, 48.767189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580753, 34.203537, 49.254238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346592, 34.525974, 49.219563>,  <39.206097, 34.719437, 49.198757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346592, 34.525974, 49.219563>,  <39.580753, 34.203537, 49.254238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346592, 34.525974, 49.219563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030450, 0.128706, 0.991215,
		0.810171, 0.577620, -0.099890,
		-0.585402, 0.806095, -0.086686,
		39.170971, 34.767803, 49.193558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906155, 34.639862, 49.719147>,  <39.580753, 34.203537, 49.254238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906155, 34.639862, 49.719147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.548294, 34.804604, 49.649899>,  <39.333576, 34.903446, 49.608349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.548294, 34.804604, 49.649899>,  <39.906155, 34.639862, 49.719147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548294, 34.804604, 49.649899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069257, 0.254976, 0.964464,
		0.441357, 0.874852, -0.199592,
		-0.894655, 0.411850, -0.173125,
		39.279896, 34.928158, 49.597961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935616, 35.370647, 50.062054>,  <39.906155, 34.639862, 49.719147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935616, 35.370647, 50.062054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.576275, 35.203781, 50.007000>,  <39.360672, 35.103661, 49.973969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.576275, 35.203781, 50.007000>,  <39.935616, 35.370647, 50.062054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576275, 35.203781, 50.007000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183132, 0.070863, 0.980531,
		-0.399288, 0.906065, -0.140056,
		-0.898349, -0.417163, -0.137634,
		39.306770, 35.078632, 49.965710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429756, 35.777390, 50.347523>,  <39.935616, 35.370647, 50.062054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429756, 35.777390, 50.347523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.255646, 35.417377, 50.338657>,  <39.151180, 35.201370, 50.333340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.255646, 35.417377, 50.338657>,  <39.429756, 35.777390, 50.347523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255646, 35.417377, 50.338657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316451, 0.129907, 0.939672,
		-0.842850, 0.416027, -0.341359,
		-0.435273, -0.900026, -0.022160,
		39.125065, 35.147369, 50.332008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732796, 35.867668, 50.452648>,  <39.429756, 35.777390, 50.347523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732796, 35.867668, 50.452648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.872124, 35.524845, 50.604500>,  <38.955719, 35.319149, 50.695610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.872124, 35.524845, 50.604500>,  <38.732796, 35.867668, 50.452648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872124, 35.524845, 50.604500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528313, 0.155045, 0.834773,
		-0.774313, -0.491330, -0.398792,
		0.348318, -0.857062, 0.379630,
		38.976620, 35.267727, 50.718388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138237, 35.571159, 50.746483>,  <38.732796, 35.867668, 50.452648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138237, 35.571159, 50.746483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.455975, 35.483921, 50.973274>,  <38.646618, 35.431580, 51.109348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.455975, 35.483921, 50.973274>,  <38.138237, 35.571159, 50.746483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455975, 35.483921, 50.973274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552088, 0.130184, 0.823560,
		-0.253423, -0.967206, -0.016996,
		0.794340, -0.218093, 0.566974,
		38.694275, 35.418495, 51.143368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826027, 36.110920, 51.256504>,  <38.138237, 35.571159, 50.746483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826027, 36.110920, 51.256504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.471210, 36.219296, 51.406040>,  <37.258320, 36.284321, 51.495762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.471210, 36.219296, 51.406040>,  <37.826027, 36.110920, 51.256504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471210, 36.219296, 51.406040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202519, 0.499315, -0.842419,
		-0.414909, -0.822967, -0.388041,
		-0.887038, 0.270942, 0.373837,
		37.205097, 36.300579, 51.518192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357632, 35.863140, 50.862217>,  <37.826027, 36.110920, 51.256504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357632, 35.863140, 50.862217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.208153, 36.197056, 51.023949>,  <37.118465, 36.397404, 51.120987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.208153, 36.197056, 51.023949>,  <37.357632, 35.863140, 50.862217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208153, 36.197056, 51.023949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099489, 0.469466, -0.877328,
		-0.922200, -0.287629, -0.258491,
		-0.373697, 0.834788, 0.404325,
		37.096043, 36.447491, 51.145245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815495, 36.152267, 50.387192>,  <37.357632, 35.863140, 50.862217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815495, 36.152267, 50.387192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.930958, 36.463692, 50.610088>,  <37.000237, 36.650547, 50.743828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.930958, 36.463692, 50.610088>,  <36.815495, 36.152267, 50.387192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930958, 36.463692, 50.610088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157397, 0.535512, -0.829731,
		-0.944405, 0.327219, 0.032038,
		0.288660, 0.778559, 0.557244,
		37.017555, 36.697258, 50.777260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348530, 36.593422, 50.234306>,  <36.815495, 36.152267, 50.387192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348530, 36.593422, 50.234306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.658855, 36.803970, 50.373478>,  <36.845051, 36.930298, 50.456982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.658855, 36.803970, 50.373478>,  <36.348530, 36.593422, 50.234306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658855, 36.803970, 50.373478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130617, 0.673456, -0.727596,
		-0.617300, 0.519031, 0.591226,
		0.775810, 0.526369, 0.347930,
		36.891598, 36.961880, 50.477856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200275, 37.258053, 49.952339>,  <36.348530, 36.593422, 50.234306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200275, 37.258053, 49.952339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578434, 37.285404, 50.079807>,  <36.805328, 37.301815, 50.156288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578434, 37.285404, 50.079807>,  <36.200275, 37.258053, 49.952339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578434, 37.285404, 50.079807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155190, 0.765354, -0.624620,
		-0.286602, 0.639968, 0.712952,
		0.945397, 0.068375, 0.318669,
		36.862053, 37.305916, 50.175407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316479, 38.016163, 50.075386>,  <36.200275, 37.258053, 49.952339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316479, 38.016163, 50.075386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665436, 37.835762, 50.000000>,  <36.874809, 37.727520, 49.954769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665436, 37.835762, 50.000000>,  <36.316479, 38.016163, 50.075386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665436, 37.835762, 50.000000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151165, 0.615602, -0.773423,
		0.464839, 0.646241, 0.605225,
		0.872395, -0.451006, -0.188467,
		36.927155, 37.700459, 49.943459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631599, 38.502140, 49.711109>,  <36.316479, 38.016163, 50.075386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631599, 38.502140, 49.711109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.849316, 38.174583, 49.638268>,  <36.979946, 37.978050, 49.594563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.849316, 38.174583, 49.638268>,  <36.631599, 38.502140, 49.711109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849316, 38.174583, 49.638268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298580, 0.391965, -0.870180,
		0.783962, 0.419259, 0.457848,
		0.544292, -0.818892, -0.182104,
		37.012604, 37.928917, 49.583637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267250, 38.755775, 49.517807>,  <36.631599, 38.502140, 49.711109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267250, 38.755775, 49.517807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.207981, 38.386524, 49.375889>,  <37.172421, 38.164974, 49.290737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.207981, 38.386524, 49.375889>,  <37.267250, 38.755775, 49.517807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207981, 38.386524, 49.375889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316319, 0.295669, -0.901400,
		0.937010, -0.245787, 0.248194,
		-0.148169, -0.923130, -0.354792,
		37.163528, 38.109585, 49.269451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842056, 38.625557, 49.015308>,  <37.267250, 38.755775, 49.517807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842056, 38.625557, 49.015308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.591290, 38.329044, 48.919415>,  <37.440830, 38.151138, 48.861877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.591290, 38.329044, 48.919415>,  <37.842056, 38.625557, 49.015308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591290, 38.329044, 48.919415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359830, -0.002574, -0.933014,
		0.691010, -0.671188, 0.268349,
		-0.626919, -0.741283, -0.239735,
		37.403214, 38.106659, 48.847492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268044, 38.178818, 48.595428>,  <37.842056, 38.625557, 49.015308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268044, 38.178818, 48.595428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885983, 38.095959, 48.510784>,  <37.656746, 38.046242, 48.459999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885983, 38.095959, 48.510784>,  <38.268044, 38.178818, 48.595428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885983, 38.095959, 48.510784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213250, 0.014634, -0.976888,
		0.205459, -0.978200, 0.030197,
		-0.955150, -0.207150, -0.211607,
		37.599438, 38.033813, 48.447304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338371, 37.675365, 48.052532>,  <38.268044, 38.178818, 48.595428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338371, 37.675365, 48.052532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.956154, 37.786999, 48.014500>,  <37.726822, 37.853981, 47.991680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.956154, 37.786999, 48.014500>,  <38.338371, 37.675365, 48.052532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956154, 37.786999, 48.014500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088442, -0.036328, -0.995419,
		-0.281262, -0.959579, 0.010030,
		-0.955547, 0.279086, -0.095084,
		37.669491, 37.870724, 47.985973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091969, 37.263443, 47.555588>,  <38.338371, 37.675365, 48.052532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091969, 37.263443, 47.555588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.857883, 37.587482, 47.541367>,  <37.717434, 37.781906, 47.532833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.857883, 37.587482, 47.541367>,  <38.091969, 37.263443, 47.555588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857883, 37.587482, 47.541367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031853, -0.020842, -0.999275,
		-0.810257, -0.585916, -0.013607,
		-0.585208, 0.810103, -0.035551,
		37.682320, 37.830513, 47.530701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644852, 37.151283, 46.958385>,  <38.091969, 37.263443, 47.555588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644852, 37.151283, 46.958385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632774, 37.549149, 46.997860>,  <37.625530, 37.787868, 47.021545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632774, 37.549149, 46.997860>,  <37.644852, 37.151283, 46.958385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632774, 37.549149, 46.997860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056722, 0.100281, -0.993341,
		-0.997934, -0.024390, -0.059446,
		-0.030189, 0.994660, 0.098691,
		37.623718, 37.847546, 47.027466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095043, 37.462994, 46.470436>,  <37.644852, 37.151283, 46.958385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095043, 37.462994, 46.470436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.330154, 37.775486, 46.554531>,  <37.471222, 37.962982, 46.604988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.330154, 37.775486, 46.554531>,  <37.095043, 37.462994, 46.470436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330154, 37.775486, 46.554531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111619, 0.335691, -0.935336,
		-0.801285, 0.526304, 0.284512,
		0.587779, 0.781227, 0.210239,
		37.506489, 38.009853, 46.617603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306492, 37.616051, 46.715519>,  <37.095043, 37.462994, 46.470436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306492, 37.616051, 46.715519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.001350, 37.369572, 46.637180>,  <35.818264, 37.221684, 46.590176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.001350, 37.369572, 46.637180>,  <36.306492, 37.616051, 46.715519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001350, 37.369572, 46.637180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145434, -0.131612, 0.980575,
		-0.630000, 0.776520, 0.010785,
		-0.762856, -0.616193, -0.195848,
		35.772495, 37.184715, 46.578426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739891, 37.838333, 47.075756>,  <36.306492, 37.616051, 46.715519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739891, 37.838333, 47.075756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.655331, 37.456001, 46.994076>,  <35.604595, 37.226601, 46.945068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.655331, 37.456001, 46.994076>,  <35.739891, 37.838333, 47.075756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655331, 37.456001, 46.994076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262554, -0.145709, 0.953852,
		-0.941475, 0.255259, -0.220154,
		-0.211401, -0.955830, -0.204200,
		35.591911, 37.169250, 46.932816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078255, 37.730793, 47.283016>,  <35.739891, 37.838333, 47.075756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078255, 37.730793, 47.283016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201839, 37.350609, 47.269367>,  <35.275990, 37.122498, 47.261177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201839, 37.350609, 47.269367>,  <35.078255, 37.730793, 47.283016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201839, 37.350609, 47.269367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287826, -0.127637, 0.949139,
		-0.906476, -0.283427, -0.313003,
		0.308963, -0.950462, -0.034122,
		35.294529, 37.065472, 47.259132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632317, 37.515915, 47.683987>,  <35.078255, 37.730793, 47.283016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632317, 37.515915, 47.683987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.905048, 37.224945, 47.653122>,  <35.068687, 37.050362, 47.634605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.905048, 37.224945, 47.653122>,  <34.632317, 37.515915, 47.683987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905048, 37.224945, 47.653122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089185, -0.187356, 0.978235,
		-0.726051, -0.660111, -0.192621,
		0.681833, -0.727428, -0.077158,
		35.109600, 37.006718, 47.629974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329590, 36.844109, 47.850708>,  <34.632317, 37.515915, 47.683987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329590, 36.844109, 47.850708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715469, 36.769241, 47.924820>,  <34.946995, 36.724319, 47.969288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.715469, 36.769241, 47.924820>,  <34.329590, 36.844109, 47.850708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715469, 36.769241, 47.924820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236991, -0.310081, 0.920698,
		-0.114878, -0.932103, -0.343492,
		0.964696, -0.187172, 0.185278,
		35.004879, 36.713089, 47.980404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239288, 36.247475, 48.095707>,  <34.329590, 36.844109, 47.850708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239288, 36.247475, 48.095707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605881, 36.362965, 48.206482>,  <34.825836, 36.432259, 48.272945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605881, 36.362965, 48.206482>,  <34.239288, 36.247475, 48.095707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605881, 36.362965, 48.206482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049247, -0.605535, 0.794294,
		0.397029, -0.741596, -0.540744,
		0.916484, 0.288727, 0.276936,
		34.880825, 36.449581, 48.289562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456692, 35.656048, 48.458870>,  <34.239288, 36.247475, 48.095707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456692, 35.656048, 48.458870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703556, 35.951084, 48.568466>,  <34.851673, 36.128105, 48.634224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703556, 35.951084, 48.568466>,  <34.456692, 35.656048, 48.458870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703556, 35.951084, 48.568466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024449, -0.366024, 0.930284,
		0.786457, -0.567436, -0.243929,
		0.617160, 0.737593, 0.273989,
		34.888702, 36.172363, 48.650661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141682, 34.958298, 48.549889>,  <34.456692, 35.656048, 48.458870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141682, 34.958298, 48.549889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.785038, 34.780834, 48.513641>,  <33.571053, 34.674358, 48.491894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.785038, 34.780834, 48.513641>,  <34.141682, 34.958298, 48.549889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785038, 34.780834, 48.513641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076389, 0.344618, -0.935630,
		0.446326, -0.827289, -0.341154,
		-0.891604, -0.443656, -0.090617,
		33.517555, 34.647739, 48.486458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129360, 34.636093, 47.865253>,  <34.141682, 34.958298, 48.549889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129360, 34.636093, 47.865253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741745, 34.672401, 47.957104>,  <33.509178, 34.694187, 48.012215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741745, 34.672401, 47.957104>,  <34.129360, 34.636093, 47.865253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741745, 34.672401, 47.957104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191991, 0.307796, -0.931880,
		-0.155271, -0.947112, -0.280837,
		-0.969036, 0.090776, 0.229629,
		33.451035, 34.699635, 48.025993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788651, 34.415497, 47.235146>,  <34.129360, 34.636093, 47.865253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788651, 34.415497, 47.235146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466736, 34.570686, 47.414829>,  <33.273586, 34.663799, 47.522640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466736, 34.570686, 47.414829>,  <33.788651, 34.415497, 47.235146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466736, 34.570686, 47.414829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451832, 0.090351, -0.887516,
		-0.384921, -0.917231, 0.102586,
		-0.804788, 0.387975, 0.449212,
		33.225300, 34.687080, 47.549591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214092, 34.025677, 47.036499>,  <33.788651, 34.415497, 47.235146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214092, 34.025677, 47.036499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.077808, 34.382042, 47.156624>,  <32.996037, 34.595860, 47.228699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.077808, 34.382042, 47.156624>,  <33.214092, 34.025677, 47.036499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077808, 34.382042, 47.156624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426508, 0.138203, -0.893863,
		-0.837859, -0.432635, 0.332895,
		-0.340709, 0.890913, 0.300317,
		32.975597, 34.649315, 47.246719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445717, 34.047215, 46.988518>,  <33.214092, 34.025677, 47.036499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445717, 34.047215, 46.988518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.631866, 34.399189, 46.950283>,  <32.743557, 34.610374, 46.927341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.631866, 34.399189, 46.950283>,  <32.445717, 34.047215, 46.988518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631866, 34.399189, 46.950283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301758, 0.056208, -0.951726,
		-0.832090, 0.471748, 0.291686,
		0.465370, 0.879940, -0.095584,
		32.771477, 34.663170, 46.921608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892179, 34.482994, 46.659351>,  <32.445717, 34.047215, 46.988518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892179, 34.482994, 46.659351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.217957, 34.706421, 46.596508>,  <32.413422, 34.840477, 46.558804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.217957, 34.706421, 46.596508>,  <31.892179, 34.482994, 46.659351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217957, 34.706421, 46.596508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406668, 0.356361, -0.841206,
		-0.413885, 0.749005, 0.517387,
		0.814445, 0.558568, -0.157104,
		32.462292, 34.873993, 46.549377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671272, 35.133415, 46.355602>,  <31.892179, 34.482994, 46.659351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671272, 35.133415, 46.355602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062920, 35.126072, 46.274620>,  <32.297909, 35.121666, 46.226032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062920, 35.126072, 46.274620>,  <31.671272, 35.133415, 46.355602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062920, 35.126072, 46.274620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177861, 0.404926, -0.896884,
		0.098444, 0.914165, 0.393205,
		0.979119, -0.018357, -0.202457,
		32.356655, 35.120564, 46.213882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.668747, 32.095325, 50.301449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.856064, 32.443848, 50.360146>,  <36.968452, 32.652962, 50.395363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.856064, 32.443848, 50.360146>,  <36.668747, 32.095325, 50.301449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856064, 32.443848, 50.360146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437308, -0.084244, -0.895357,
		-0.767767, 0.483458, -0.420479,
		0.468290, 0.871305, 0.146740,
		36.996552, 32.705238, 50.404167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403481, 32.636646, 49.782688>,  <36.668747, 32.095325, 50.301449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403481, 32.636646, 49.782688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.773762, 32.677105, 49.928474>,  <36.995930, 32.701382, 50.015945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.773762, 32.677105, 49.928474>,  <36.403481, 32.636646, 49.782688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773762, 32.677105, 49.928474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361517, 0.046738, -0.931193,
		-0.111225, 0.993773, 0.006699,
		0.925708, 0.101150, 0.364464,
		37.051476, 32.707451, 50.037815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769943, 33.019913, 49.256233>,  <36.403481, 32.636646, 49.782688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769943, 33.019913, 49.256233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.078182, 32.848480, 49.444916>,  <37.263126, 32.745621, 49.558125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.078182, 32.848480, 49.444916>,  <36.769943, 33.019913, 49.256233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078182, 32.848480, 49.444916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499541, -0.053456, -0.864639,
		0.395779, 0.901923, 0.172899,
		0.770596, -0.428576, 0.471704,
		37.309361, 32.719906, 49.586426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320652, 33.424999, 49.062313>,  <36.769943, 33.019913, 49.256233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320652, 33.424999, 49.062313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.470257, 33.067818, 49.162506>,  <37.560020, 32.853508, 49.222622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.470257, 33.067818, 49.162506>,  <37.320652, 33.424999, 49.062313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470257, 33.067818, 49.162506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450596, -0.061098, -0.890635,
		0.810602, 0.445977, 0.379511,
		0.374015, -0.892957, 0.250482,
		37.582462, 32.799931, 49.237652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005375, 33.357975, 48.913010>,  <37.320652, 33.424999, 49.062313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005375, 33.357975, 48.913010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.894737, 32.973625, 48.918766>,  <37.828354, 32.743015, 48.922218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.894737, 32.973625, 48.918766>,  <38.005375, 33.357975, 48.913010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894737, 32.973625, 48.918766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465628, -0.147103, -0.872669,
		0.840645, -0.234678, 0.488101,
		-0.276597, -0.960878, 0.014389,
		37.811756, 32.685360, 48.923084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577343, 33.040977, 48.732788>,  <38.005375, 33.357975, 48.913010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577343, 33.040977, 48.732788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.282810, 32.777184, 48.672276>,  <38.106091, 32.618908, 48.635967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.282810, 32.777184, 48.672276>,  <38.577343, 33.040977, 48.732788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282810, 32.777184, 48.672276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366241, -0.200472, -0.908668,
		0.568926, -0.724492, 0.389146,
		-0.736336, -0.659487, -0.151285,
		38.061909, 32.579338, 48.626888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937744, 32.570404, 48.373917>,  <38.577343, 33.040977, 48.732788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937744, 32.570404, 48.373917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.555550, 32.517345, 48.268497>,  <38.326233, 32.485512, 48.205246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.555550, 32.517345, 48.268497>,  <38.937744, 32.570404, 48.373917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555550, 32.517345, 48.268497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281466, -0.141932, -0.949017,
		0.088480, -0.980948, 0.172950,
		-0.955483, -0.132649, -0.263545,
		38.268906, 32.477551, 48.189434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838474, 31.879364, 48.063240>,  <38.937744, 32.570404, 48.373917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838474, 31.879364, 48.063240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.530094, 32.092117, 47.923103>,  <38.345066, 32.219769, 47.839020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.530094, 32.092117, 47.923103>,  <38.838474, 31.879364, 48.063240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530094, 32.092117, 47.923103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332759, -0.132647, -0.933636,
		-0.543057, -0.836364, -0.074725,
		-0.770948, 0.531883, -0.350342,
		38.298809, 32.251682, 47.818001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755009, 31.598598, 47.419662>,  <38.838474, 31.879364, 48.063240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755009, 31.598598, 47.419662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.499878, 31.905046, 47.388069>,  <38.346802, 32.088917, 47.369114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.499878, 31.905046, 47.388069>,  <38.755009, 31.598598, 47.419662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499878, 31.905046, 47.388069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081362, -0.034957, -0.996071,
		-0.765873, -0.641744, -0.040037,
		-0.637823, 0.766122, -0.078986,
		38.308533, 32.134884, 47.364372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302948, 31.454512, 46.901783>,  <38.755009, 31.598598, 47.419662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302948, 31.454512, 46.901783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.251720, 31.850319, 46.928486>,  <38.220985, 32.087803, 46.944508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.251720, 31.850319, 46.928486>,  <38.302948, 31.454512, 46.901783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251720, 31.850319, 46.928486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054982, 0.074293, -0.995719,
		-0.990240, -0.123849, -0.063920,
		-0.128068, 0.989516, 0.066759,
		38.213299, 32.147175, 46.948513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732361, 31.637030, 46.412418>,  <38.302948, 31.454512, 46.901783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732361, 31.637030, 46.412418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.910961, 31.989561, 46.474251>,  <38.018120, 32.201080, 46.511349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.910961, 31.989561, 46.474251>,  <37.732361, 31.637030, 46.412418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910961, 31.989561, 46.474251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202651, 0.267869, -0.941902,
		-0.871532, 0.389236, 0.298206,
		0.446502, 0.881330, 0.154577,
		38.044910, 32.253960, 46.520622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350502, 32.018555, 46.018330>,  <37.732361, 31.637030, 46.412418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350502, 32.018555, 46.018330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.691269, 32.214970, 46.091114>,  <37.895729, 32.332821, 46.134785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.691269, 32.214970, 46.091114>,  <37.350502, 32.018555, 46.018330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691269, 32.214970, 46.091114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073756, 0.231506, -0.970034,
		-0.518452, 0.839812, 0.161007,
		0.851920, 0.491041, 0.181965,
		37.946846, 32.362282, 46.145702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882256, 32.467545, 46.285332>,  <37.350502, 32.018555, 46.018330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882256, 32.467545, 46.285332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.519833, 32.381130, 46.139786>,  <36.302380, 32.329281, 46.052460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.519833, 32.381130, 46.139786>,  <36.882256, 32.467545, 46.285332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519833, 32.381130, 46.139786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311754, -0.240663, 0.919179,
		-0.286140, 0.946262, 0.150705,
		-0.906053, -0.216031, -0.363865,
		36.248016, 32.316322, 46.030628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454926, 32.774788, 46.693932>,  <36.882256, 32.467545, 46.285332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454926, 32.774788, 46.693932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.233311, 32.487057, 46.526310>,  <36.100342, 32.314419, 46.425735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.233311, 32.487057, 46.526310>,  <36.454926, 32.774788, 46.693932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233311, 32.487057, 46.526310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266966, -0.323268, 0.907869,
		-0.788524, 0.614868, -0.012934,
		-0.554038, -0.719330, -0.419054,
		36.067101, 32.271259, 46.400593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763077, 32.826126, 47.125801>,  <36.454926, 32.774788, 46.693932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763077, 32.826126, 47.125801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.776016, 32.477287, 46.930496>,  <35.783779, 32.267982, 46.813313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.776016, 32.477287, 46.930496>,  <35.763077, 32.826126, 47.125801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776016, 32.477287, 46.930496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490885, -0.439402, 0.752301,
		-0.870623, 0.215347, -0.442313,
		0.032347, -0.872096, -0.488264,
		35.785721, 32.215660, 46.784016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202324, 32.530048, 47.284912>,  <35.763077, 32.826126, 47.125801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202324, 32.530048, 47.284912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.367847, 32.204132, 47.122490>,  <35.467159, 32.008583, 47.025036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.367847, 32.204132, 47.122490>,  <35.202324, 32.530048, 47.284912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367847, 32.204132, 47.122490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485606, -0.574838, 0.658595,
		-0.770033, -0.075348, -0.633539,
		0.413806, -0.814791, -0.406055,
		35.491989, 31.959694, 47.000675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607758, 32.011406, 47.103600>,  <35.202324, 32.530048, 47.284912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607758, 32.011406, 47.103600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.963524, 31.837980, 47.161514>,  <35.176983, 31.733925, 47.196262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.963524, 31.837980, 47.161514>,  <34.607758, 32.011406, 47.103600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963524, 31.837980, 47.161514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359398, -0.467594, 0.807582,
		-0.282436, -0.770313, -0.571707,
		0.889417, -0.433560, 0.144783,
		35.230350, 31.707912, 47.204948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453007, 31.265711, 47.132618>,  <34.607758, 32.011406, 47.103600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453007, 31.265711, 47.132618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.816555, 31.314535, 47.292145>,  <35.034683, 31.343830, 47.387859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.816555, 31.314535, 47.292145>,  <34.453007, 31.265711, 47.132618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816555, 31.314535, 47.292145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254936, -0.594204, 0.762843,
		0.330088, -0.794999, -0.508939,
		0.908873, 0.122059, 0.398813,
		35.089218, 31.351152, 47.411789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790272, 30.580706, 47.170059>,  <34.453007, 31.265711, 47.132618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790272, 30.580706, 47.170059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.942112, 30.829855, 47.443680>,  <35.033218, 30.979345, 47.607853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.942112, 30.829855, 47.443680>,  <34.790272, 30.580706, 47.170059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942112, 30.829855, 47.443680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169056, -0.680246, 0.713221,
		0.909572, -0.386386, -0.152924,
		0.379605, 0.622873, 0.684053,
		35.055992, 31.016716, 47.648895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801991, 30.136387, 47.784679>,  <34.790272, 30.580706, 47.170059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801991, 30.136387, 47.784679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.912758, 30.492073, 47.930344>,  <34.979218, 30.705484, 48.017742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.912758, 30.492073, 47.930344>,  <34.801991, 30.136387, 47.784679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912758, 30.492073, 47.930344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208475, -0.314358, 0.926130,
		0.938005, -0.332384, 0.098326,
		0.276921, 0.889213, 0.364163,
		34.995834, 30.758837, 48.039593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131001, 29.975723, 48.379768>,  <34.801991, 30.136387, 47.784679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131001, 29.975723, 48.379768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.025455, 30.359083, 48.423317>,  <34.962128, 30.589098, 48.449448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.025455, 30.359083, 48.423317>,  <35.131001, 29.975723, 48.379768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025455, 30.359083, 48.423317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258357, -0.178970, 0.949327,
		0.929317, 0.222360, 0.294832,
		-0.263858, 0.958398, 0.108871,
		34.946297, 30.646603, 48.455978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419315, 30.222397, 49.060677>,  <35.131001, 29.975723, 48.379768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419315, 30.222397, 49.060677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.125706, 30.476257, 48.963989>,  <34.949539, 30.628572, 48.905975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.125706, 30.476257, 48.963989>,  <35.419315, 30.222397, 49.060677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125706, 30.476257, 48.963989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226028, 0.107335, 0.968189,
		0.640406, 0.765310, 0.064662,
		-0.734024, 0.634650, -0.241720,
		34.905499, 30.666653, 48.891472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444675, 30.703665, 49.519127>,  <35.419315, 30.222397, 49.060677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444675, 30.703665, 49.519127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.072769, 30.754951, 49.381084>,  <34.849625, 30.785723, 49.298260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.072769, 30.754951, 49.381084>,  <35.444675, 30.703665, 49.519127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072769, 30.754951, 49.381084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319082, 0.186928, 0.929110,
		0.183636, 0.973971, -0.132888,
		-0.929766, 0.128216, -0.345103,
		34.793839, 30.793417, 49.277554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191055, 31.312204, 49.773643>,  <35.444675, 30.703665, 49.519127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191055, 31.312204, 49.773643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.858234, 31.105223, 49.693707>,  <34.658543, 30.981033, 49.645744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.858234, 31.105223, 49.693707>,  <35.191055, 31.312204, 49.773643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858234, 31.105223, 49.693707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325944, 0.164570, 0.930955,
		-0.448837, 0.839738, -0.305591,
		-0.832050, -0.517452, -0.199842,
		34.608620, 30.949987, 49.633755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677158, 31.702042, 50.106995>,  <35.191055, 31.312204, 49.773643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677158, 31.702042, 50.106995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.504826, 31.347107, 50.041245>,  <34.401428, 31.134146, 50.001793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.504826, 31.347107, 50.041245>,  <34.677158, 31.702042, 50.106995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504826, 31.347107, 50.041245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394918, 0.021602, 0.918463,
		-0.811435, 0.460615, -0.359732,
		-0.430829, -0.887337, -0.164377,
		34.375576, 31.080906, 49.991932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974075, 31.805758, 50.315777>,  <34.677158, 31.702042, 50.106995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974075, 31.805758, 50.315777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028873, 31.410149, 50.337917>,  <34.061752, 31.172783, 50.351204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028873, 31.410149, 50.337917>,  <33.974075, 31.805758, 50.315777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028873, 31.410149, 50.337917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334067, 0.006480, 0.942527,
		-0.932541, -0.147611, -0.329513,
		0.136992, -0.989024, 0.055354,
		34.069969, 31.113441, 50.354523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604519, 32.431465, 50.404549>,  <33.974075, 31.805758, 50.315777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604519, 32.431465, 50.404549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.552402, 32.727619, 50.668324>,  <33.521133, 32.905312, 50.826588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.552402, 32.727619, 50.668324>,  <33.604519, 32.431465, 50.404549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552402, 32.727619, 50.668324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005331, 0.664573, -0.747204,
		-0.991462, -0.100867, -0.082638,
		-0.130288, 0.740384, 0.659437,
		33.513317, 32.949734, 50.866154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000889, 32.779324, 50.140816>,  <33.604519, 32.431465, 50.404549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000889, 32.779324, 50.140816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.232792, 33.019039, 50.361626>,  <33.371933, 33.162868, 50.494110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.232792, 33.019039, 50.361626>,  <33.000889, 32.779324, 50.140816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232792, 33.019039, 50.361626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056289, 0.646426, -0.760898,
		-0.812842, 0.472209, 0.341037,
		0.579758, 0.599293, 0.552022,
		33.406719, 33.198826, 50.527233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623745, 33.419010, 50.225723>,  <33.000889, 32.779324, 50.140816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623745, 33.419010, 50.225723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015030, 33.498653, 50.249226>,  <33.249802, 33.546440, 50.263325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015030, 33.498653, 50.249226>,  <32.623745, 33.419010, 50.225723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015030, 33.498653, 50.249226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101866, 0.706987, -0.699852,
		-0.180881, 0.678621, 0.711868,
		0.978215, 0.199105, 0.058752,
		33.308495, 33.558384, 50.266850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692543, 34.091209, 50.151546>,  <32.623745, 33.419010, 50.225723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692543, 34.091209, 50.151546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.072475, 33.989143, 50.079193>,  <33.300434, 33.927906, 50.035782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.072475, 33.989143, 50.079193>,  <32.692543, 34.091209, 50.151546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072475, 33.989143, 50.079193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055747, 0.707171, -0.704841,
		0.307765, 0.659394, 0.685916,
		0.949828, -0.255163, -0.180883,
		33.357426, 33.912594, 50.024929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942356, 34.715569, 50.067703>,  <32.692543, 34.091209, 50.151546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942356, 34.715569, 50.067703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.236897, 34.497219, 49.907795>,  <33.413620, 34.366211, 49.811852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.236897, 34.497219, 49.907795>,  <32.942356, 34.715569, 50.067703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236897, 34.497219, 49.907795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019335, 0.607585, -0.794019,
		0.676328, 0.576944, 0.457948,
		0.736347, -0.545872, -0.399772,
		33.457802, 34.333458, 49.787865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469257, 35.168839, 49.743774>,  <32.942356, 34.715569, 50.067703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469257, 35.168839, 49.743774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.489532, 34.811481, 49.565212>,  <33.501698, 34.597069, 49.458076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.489532, 34.811481, 49.565212>,  <33.469257, 35.168839, 49.743774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489532, 34.811481, 49.565212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073002, 0.449099, -0.890494,
		0.996043, 0.012545, 0.087981,
		0.050683, -0.893394, -0.446406,
		33.504738, 34.543465, 49.431290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889538, 35.207382, 49.241783>,  <33.469257, 35.168839, 49.743774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889538, 35.207382, 49.241783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.688229, 34.894588, 49.094696>,  <33.567444, 34.706913, 49.006443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.688229, 34.894588, 49.094696>,  <33.889538, 35.207382, 49.241783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688229, 34.894588, 49.094696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141929, 0.344952, -0.927828,
		0.852391, -0.519142, -0.062619,
		-0.503275, -0.781985, -0.367715,
		33.537247, 34.659992, 48.984383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633755, 35.296089, 49.062309>,  <33.889538, 35.207382, 49.241783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633755, 35.296089, 49.062309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.760761, 35.674915, 49.081295>,  <34.836967, 35.902210, 49.092686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.760761, 35.674915, 49.081295>,  <34.633755, 35.296089, 49.062309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760761, 35.674915, 49.081295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007216, -0.047645, 0.998838,
		0.948225, -0.317492, -0.008294,
		0.317518, 0.947063, 0.047469,
		34.856018, 35.959034, 49.095535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286888, 35.272854, 49.462696>,  <34.633755, 35.296089, 49.062309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286888, 35.272854, 49.462696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.073215, 35.610046, 49.488087>,  <34.945011, 35.812363, 49.503319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.073215, 35.610046, 49.488087>,  <35.286888, 35.272854, 49.462696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073215, 35.610046, 49.488087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033724, -0.096273, 0.994784,
		0.844696, 0.529256, 0.079856,
		-0.534183, 0.842983, 0.063473,
		34.912960, 35.862942, 49.507130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670677, 35.668770, 50.036896>,  <35.286888, 35.272854, 49.462696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670677, 35.668770, 50.036896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.291431, 35.770348, 49.960377>,  <35.063885, 35.831295, 49.914463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.291431, 35.770348, 49.960377>,  <35.670677, 35.668770, 50.036896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291431, 35.770348, 49.960377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190303, 0.028723, 0.981305,
		0.254694, 0.966791, 0.021094,
		-0.948111, 0.253947, -0.191299,
		35.006996, 35.846531, 49.902988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577675, 36.230476, 50.462467>,  <35.670677, 35.668770, 50.036896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577675, 36.230476, 50.462467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.203720, 36.106903, 50.392559>,  <34.979347, 36.032761, 50.350613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.203720, 36.106903, 50.392559>,  <35.577675, 36.230476, 50.462467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203720, 36.106903, 50.392559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198239, 0.046030, 0.979072,
		-0.294422, 0.949970, -0.104275,
		-0.934889, -0.308932, -0.174769,
		34.923252, 36.014225, 50.340130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266140, 36.658623, 50.867531>,  <35.577675, 36.230476, 50.462467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266140, 36.658623, 50.867531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.006222, 36.358253, 50.820404>,  <34.850273, 36.178032, 50.792126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.006222, 36.358253, 50.820404>,  <35.266140, 36.658623, 50.867531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006222, 36.358253, 50.820404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452919, 0.258022, 0.853399,
		-0.610438, 0.607895, -0.507769,
		-0.649792, -0.750925, -0.117821,
		34.811283, 36.132977, 50.785057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653973, 36.817463, 51.324886>,  <35.266140, 36.658623, 50.867531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653973, 36.817463, 51.324886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.562492, 36.433849, 51.258015>,  <34.507607, 36.203682, 51.217892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.562492, 36.433849, 51.258015>,  <34.653973, 36.817463, 51.324886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562492, 36.433849, 51.258015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413294, -0.059836, 0.908629,
		-0.881411, 0.276897, -0.382679,
		-0.228699, -0.959035, -0.167180,
		34.493881, 36.146137, 51.207859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966194, 36.773727, 51.529041>,  <34.653973, 36.817463, 51.324886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966194, 36.773727, 51.529041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.112030, 36.401260, 51.529259>,  <34.199532, 36.177780, 51.529388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.112030, 36.401260, 51.529259>,  <33.966194, 36.773727, 51.529041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112030, 36.401260, 51.529259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419513, -0.163734, 0.892860,
		-0.831315, -0.325752, -0.450333,
		0.364587, -0.931170, 0.000542,
		34.221405, 36.121910, 51.529423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369427, 36.380955, 51.683502>,  <33.966194, 36.773727, 51.529041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369427, 36.380955, 51.683502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.681068, 36.150288, 51.781853>,  <33.868053, 36.011887, 51.840862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.681068, 36.150288, 51.781853>,  <33.369427, 36.380955, 51.683502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681068, 36.150288, 51.781853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294838, 0.009058, 0.955504,
		-0.553239, -0.816926, -0.162968,
		0.779100, -0.576671, 0.245872,
		33.914799, 35.977287, 51.855614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138050, 35.812778, 52.112514>,  <33.369427, 36.380955, 51.683502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138050, 35.812778, 52.112514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.528347, 35.884602, 52.162624>,  <33.762524, 35.927696, 52.192692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.528347, 35.884602, 52.162624>,  <33.138050, 35.812778, 52.112514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528347, 35.884602, 52.162624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112583, -0.079256, 0.990476,
		0.187778, -0.980549, -0.057118,
		0.975738, 0.179559, 0.125276,
		33.821068, 35.938469, 52.200207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.583149, 35.983246, 36.965199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981514, 35.967628, 36.997780>,  <36.220531, 35.958260, 37.017330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981514, 35.967628, 36.997780>,  <35.583149, 35.983246, 36.965199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981514, 35.967628, 36.997780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039833, 0.619509, 0.783978,
		-0.081071, -0.784018, 0.615421,
		0.995912, -0.039044, 0.081454,
		36.280289, 35.955914, 37.022217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868797, 35.636143, 37.664642>,  <35.583149, 35.983246, 36.965199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868797, 35.636143, 37.664642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079216, 35.936619, 37.505146>,  <36.205467, 36.116905, 37.409447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079216, 35.936619, 37.505146>,  <35.868797, 35.636143, 37.664642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079216, 35.936619, 37.505146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135473, 0.536885, 0.832707,
		0.839597, -0.384024, 0.384192,
		0.526047, 0.751186, -0.398742,
		36.237030, 36.161976, 37.385525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322121, 35.847187, 38.152203>,  <35.868797, 35.636143, 37.664642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322121, 35.847187, 38.152203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312336, 36.158409, 37.901112>,  <36.306465, 36.345142, 37.750458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312336, 36.158409, 37.901112>,  <36.322121, 35.847187, 38.152203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312336, 36.158409, 37.901112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093214, 0.623401, 0.776326,
		0.995346, 0.077507, 0.057272,
		-0.024467, 0.778051, -0.627724,
		36.304996, 36.391823, 37.712795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729843, 36.357216, 38.521168>,  <36.322121, 35.847187, 38.152203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729843, 36.357216, 38.521168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529999, 36.571587, 38.248940>,  <36.410091, 36.700207, 38.085602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529999, 36.571587, 38.248940>,  <36.729843, 36.357216, 38.521168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529999, 36.571587, 38.248940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153731, 0.718324, 0.678511,
		0.852498, 0.443617, -0.276497,
		-0.499614, 0.535924, -0.680567,
		36.380116, 36.732365, 38.044769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977364, 37.109966, 38.544479>,  <36.729843, 36.357216, 38.521168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977364, 37.109966, 38.544479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616428, 37.097683, 38.372505>,  <36.399868, 37.090313, 38.269321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616428, 37.097683, 38.372505>,  <36.977364, 37.109966, 38.544479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616428, 37.097683, 38.372505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366854, 0.578383, 0.728623,
		0.226295, 0.815187, -0.533161,
		-0.902335, -0.030708, -0.429940,
		36.345726, 37.088470, 38.243523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692360, 37.773838, 38.596256>,  <36.977364, 37.109966, 38.544479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692360, 37.773838, 38.596256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355560, 37.571182, 38.522121>,  <36.153481, 37.449589, 38.477642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355560, 37.571182, 38.522121>,  <36.692360, 37.773838, 38.596256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355560, 37.571182, 38.522121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461828, 0.499371, 0.733037,
		-0.278837, 0.702810, -0.654453,
		-0.842000, -0.506642, -0.185334,
		36.102959, 37.419189, 38.466522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140793, 38.245743, 38.749054>,  <36.692360, 37.773838, 38.596256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140793, 38.245743, 38.749054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947453, 37.895599, 38.753342>,  <35.831448, 37.685513, 38.755917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947453, 37.895599, 38.753342>,  <36.140793, 38.245743, 38.749054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947453, 37.895599, 38.753342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628654, 0.355597, 0.691626,
		-0.609235, 0.327558, -0.722177,
		-0.483351, -0.875361, 0.010721,
		35.802448, 37.632992, 38.756557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374905, 38.359665, 38.679516>,  <36.140793, 38.245743, 38.749054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374905, 38.359665, 38.679516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424480, 37.992916, 38.831295>,  <35.454224, 37.772865, 38.922363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424480, 37.992916, 38.831295>,  <35.374905, 38.359665, 38.679516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424480, 37.992916, 38.831295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503478, 0.271415, 0.820271,
		-0.855073, -0.292708, -0.427987,
		0.123937, -0.916873, 0.379451,
		35.461662, 37.717854, 38.945129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820896, 38.403790, 38.960251>,  <35.374905, 38.359665, 38.679516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820896, 38.403790, 38.960251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006046, 38.089088, 39.123600>,  <35.117134, 37.900269, 39.221611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006046, 38.089088, 39.123600>,  <34.820896, 38.403790, 38.960251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006046, 38.089088, 39.123600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403808, 0.222968, 0.887257,
		-0.789105, -0.575592, -0.214491,
		0.462873, -0.786752, 0.408374,
		35.144909, 37.853062, 39.246113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290520, 37.892273, 39.408493>,  <34.820896, 38.403790, 38.960251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290520, 37.892273, 39.408493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663509, 37.812057, 39.528683>,  <34.887302, 37.763927, 39.600796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663509, 37.812057, 39.528683>,  <34.290520, 37.892273, 39.408493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663509, 37.812057, 39.528683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277011, 0.136942, 0.951058,
		-0.231874, -0.970067, 0.072142,
		0.932470, -0.200541, 0.300472,
		34.943249, 37.751896, 39.618824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216839, 37.454121, 40.021759>,  <34.290520, 37.892273, 39.408493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216839, 37.454121, 40.021759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583935, 37.591133, 40.102188>,  <34.804192, 37.673340, 40.150444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583935, 37.591133, 40.102188>,  <34.216839, 37.454121, 40.021759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583935, 37.591133, 40.102188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261050, 0.138643, 0.955317,
		0.299347, -0.929221, 0.216656,
		0.917738, 0.342529, 0.201071,
		34.859257, 37.693893, 40.162510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439159, 37.082104, 40.556423>,  <34.216839, 37.454121, 40.021759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439159, 37.082104, 40.556423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656960, 37.417610, 40.556957>,  <34.787640, 37.618912, 40.557278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656960, 37.417610, 40.556957>,  <34.439159, 37.082104, 40.556423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656960, 37.417610, 40.556957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118368, 0.075264, 0.990113,
		0.830369, -0.539272, 0.140264,
		0.544497, 0.838762, 0.001336,
		34.820309, 37.669239, 40.557358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325348, 36.361450, 40.312042>,  <34.439159, 37.082104, 40.556423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325348, 36.361450, 40.312042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926704, 36.332737, 40.328144>,  <33.687519, 36.315510, 40.337803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926704, 36.332737, 40.328144>,  <34.325348, 36.361450, 40.312042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926704, 36.332737, 40.328144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062759, 0.346490, -0.935952,
		0.053244, -0.935303, -0.349820,
		-0.996608, -0.071788, 0.040250,
		33.627724, 36.311199, 40.340218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285435, 36.104610, 39.732845>,  <34.325348, 36.361450, 40.312042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285435, 36.104610, 39.732845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908588, 36.222645, 39.796528>,  <33.682480, 36.293465, 39.834736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908588, 36.222645, 39.796528>,  <34.285435, 36.104610, 39.732845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908588, 36.222645, 39.796528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112414, 0.169348, -0.979124,
		-0.315888, -0.940343, -0.126373,
		-0.942113, 0.295088, 0.159203,
		33.625954, 36.311172, 39.844288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790600, 35.691845, 39.431114>,  <34.285435, 36.104610, 39.732845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790600, 35.691845, 39.431114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600327, 36.041584, 39.469555>,  <33.486160, 36.251427, 39.492619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600327, 36.041584, 39.469555>,  <33.790600, 35.691845, 39.431114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600327, 36.041584, 39.469555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344976, -0.084936, -0.934761,
		-0.809145, -0.477806, 0.342032,
		-0.475685, 0.874350, 0.096106,
		33.457623, 36.303890, 39.498386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011097, 35.592018, 39.255997>,  <33.790600, 35.691845, 39.431114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011097, 35.592018, 39.255997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124760, 35.974312, 39.225475>,  <33.192955, 36.203690, 39.207161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124760, 35.974312, 39.225475>,  <33.011097, 35.592018, 39.255997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124760, 35.974312, 39.225475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538222, 0.093145, -0.837640,
		-0.793457, 0.279086, 0.540866,
		0.284153, 0.955738, -0.076303,
		33.210007, 36.261032, 39.202583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408848, 35.932640, 38.943737>,  <33.011097, 35.592018, 39.255997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408848, 35.932640, 38.943737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697079, 36.206036, 38.897060>,  <32.870018, 36.370071, 38.869053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697079, 36.206036, 38.897060>,  <32.408848, 35.932640, 38.943737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697079, 36.206036, 38.897060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365036, 0.230860, -0.901916,
		-0.589510, 0.692493, 0.415850,
		0.720574, 0.683488, -0.116691,
		32.913250, 36.411083, 38.862053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101772, 36.604137, 38.703945>,  <32.408848, 35.932640, 38.943737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101772, 36.604137, 38.703945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483727, 36.594566, 38.585541>,  <32.712898, 36.588821, 38.514496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483727, 36.594566, 38.585541>,  <32.101772, 36.604137, 38.703945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483727, 36.594566, 38.585541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286911, 0.182989, -0.940317,
		0.076670, 0.982823, 0.167868,
		0.954884, -0.023931, -0.296013,
		32.770191, 36.587387, 38.496738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119328, 37.082108, 38.166161>,  <32.101772, 36.604137, 38.703945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119328, 37.082108, 38.166161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476254, 36.905949, 38.126511>,  <32.690407, 36.800251, 38.102718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476254, 36.905949, 38.126511>,  <32.119328, 37.082108, 38.166161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476254, 36.905949, 38.126511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150254, -0.082680, -0.985184,
		0.425680, 0.893986, -0.139948,
		0.892312, -0.440401, -0.099129,
		32.743946, 36.773827, 38.096771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420380, 37.396336, 37.663944>,  <32.119328, 37.082108, 38.166161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420380, 37.396336, 37.663944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651443, 37.069885, 37.657635>,  <32.790081, 36.874016, 37.653851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651443, 37.069885, 37.657635>,  <32.420380, 37.396336, 37.663944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651443, 37.069885, 37.657635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075575, 0.072711, -0.994486,
		0.812770, 0.573285, 0.103681,
		0.577663, -0.816123, -0.015771,
		32.824741, 36.825047, 37.652905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041142, 37.509171, 37.224503>,  <32.420380, 37.396336, 37.663944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041142, 37.509171, 37.224503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993042, 37.112530, 37.243568>,  <32.964184, 36.874546, 37.255009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993042, 37.112530, 37.243568>,  <33.041142, 37.509171, 37.224503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993042, 37.112530, 37.243568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343668, -0.086625, -0.935088,
		0.931361, -0.096060, 0.351197,
		-0.120247, -0.991599, 0.047666,
		32.956966, 36.815048, 37.257870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621708, 37.305969, 36.772511>,  <33.041142, 37.509171, 37.224503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621708, 37.305969, 36.772511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371929, 36.997078, 36.819378>,  <33.222061, 36.811745, 36.847500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371929, 36.997078, 36.819378>,  <33.621708, 37.305969, 36.772511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371929, 36.997078, 36.819378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120344, -0.243342, -0.962446,
		0.771739, -0.586897, 0.244888,
		-0.624448, -0.772228, 0.117167,
		33.184593, 36.765411, 36.854527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913948, 36.676788, 36.607983>,  <33.621708, 37.305969, 36.772511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913948, 36.676788, 36.607983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526501, 36.593643, 36.553467>,  <33.294033, 36.543758, 36.520756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526501, 36.593643, 36.553467>,  <33.913948, 36.676788, 36.607983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526501, 36.593643, 36.553467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165746, -0.131524, -0.977359,
		0.185229, -0.969276, 0.161848,
		-0.968616, -0.207861, -0.136291,
		33.235916, 36.531284, 36.512581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875050, 36.114582, 36.140560>,  <33.913948, 36.676788, 36.607983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875050, 36.114582, 36.140560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518539, 36.291576, 36.100891>,  <33.304634, 36.397774, 36.077091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518539, 36.291576, 36.100891>,  <33.875050, 36.114582, 36.140560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518539, 36.291576, 36.100891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030043, -0.275832, -0.960736,
		-0.452471, -0.853299, 0.259135,
		-0.891273, 0.442490, -0.099170,
		33.251156, 36.424324, 36.071140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408058, 35.635769, 35.771435>,  <33.875050, 36.114582, 36.140560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408058, 35.635769, 35.771435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282578, 36.007565, 35.693829>,  <33.207291, 36.230640, 35.647263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282578, 36.007565, 35.693829>,  <33.408058, 35.635769, 35.771435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282578, 36.007565, 35.693829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006804, -0.206527, -0.978417,
		-0.949499, -0.305607, 0.071111,
		-0.313698, 0.929490, -0.194018,
		33.188469, 36.286411, 35.635624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403889, 34.898579, 35.578480>,  <33.408058, 35.635769, 35.771435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403889, 34.898579, 35.578480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562401, 35.085381, 35.262283>,  <33.657509, 35.197464, 35.072567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562401, 35.085381, 35.262283>,  <33.403889, 34.898579, 35.578480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562401, 35.085381, 35.262283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186483, 0.883968, 0.428748,
		0.898993, -0.022491, 0.437386,
		0.396278, 0.467007, -0.790486,
		33.681282, 35.225483, 35.025139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168213, 34.353760, 36.109673>,  <33.403889, 34.898579, 35.578480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168213, 34.353760, 36.109673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880260, 34.237198, 36.361656>,  <32.707489, 34.167259, 36.512848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880260, 34.237198, 36.361656>,  <33.168213, 34.353760, 36.109673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880260, 34.237198, 36.361656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693011, -0.251125, 0.675775,
		-0.038727, 0.923048, 0.382730,
		-0.719886, -0.291407, 0.629958,
		32.664295, 34.149776, 36.550644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957783, 34.407608, 36.377445>,  <33.168213, 34.353760, 36.109673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957783, 34.407608, 36.377445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305237, 34.246059, 36.262653>,  <34.513710, 34.149132, 36.193779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305237, 34.246059, 36.262653>,  <33.957783, 34.407608, 36.377445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305237, 34.246059, 36.262653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277644, -0.082937, 0.957097,
		-0.410343, -0.911050, 0.040090,
		0.868638, -0.403869, -0.286980,
		34.565830, 34.124901, 36.176559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013088, 33.771400, 36.831429>,  <33.957783, 34.407608, 36.377445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013088, 33.771400, 36.831429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362720, 33.901539, 36.687130>,  <34.572498, 33.979622, 36.600552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362720, 33.901539, 36.687130>,  <34.013088, 33.771400, 36.831429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362720, 33.901539, 36.687130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387074, -0.017726, 0.921878,
		0.293532, -0.945430, -0.141426,
		0.874078, 0.325343, -0.360748,
		34.624943, 33.999142, 36.578907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504501, 33.380367, 37.043453>,  <34.013088, 33.771400, 36.831429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504501, 33.380367, 37.043453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709908, 33.714779, 36.966137>,  <34.833149, 33.915424, 36.919746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709908, 33.714779, 36.966137>,  <34.504501, 33.380367, 37.043453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709908, 33.714779, 36.966137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291915, 0.041618, 0.955538,
		0.806902, -0.547105, -0.222678,
		0.513512, 0.836029, -0.193290,
		34.863960, 33.965588, 36.908150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974674, 33.305256, 37.498989>,  <34.504501, 33.380367, 37.043453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974674, 33.305256, 37.498989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000916, 33.696705, 37.421013>,  <35.016659, 33.931572, 37.374226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000916, 33.696705, 37.421013>,  <34.974674, 33.305256, 37.498989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000916, 33.696705, 37.421013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238923, 0.174276, 0.955272,
		0.968820, -0.109242, -0.222382,
		0.065600, 0.978618, -0.194943,
		35.020596, 33.990292, 37.362530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477398, 33.551453, 37.889549>,  <34.974674, 33.305256, 37.498989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477398, 33.551453, 37.889549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315201, 33.905499, 37.798214>,  <35.217880, 34.117928, 37.743412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315201, 33.905499, 37.798214>,  <35.477398, 33.551453, 37.889549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315201, 33.905499, 37.798214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377962, 0.389794, 0.839765,
		0.832296, 0.254219, -0.492601,
		-0.405497, 0.885118, -0.228339,
		35.193550, 34.171036, 37.729713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040581, 34.079720, 37.849911>,  <35.477398, 33.551453, 37.889549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040581, 34.079720, 37.849911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686054, 34.233814, 37.952702>,  <35.473339, 34.326271, 38.014378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686054, 34.233814, 37.952702>,  <36.040581, 34.079720, 37.849911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686054, 34.233814, 37.952702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371817, 0.261226, 0.890794,
		0.276033, 0.885075, -0.374765,
		-0.886317, 0.385232, 0.256978,
		35.420158, 34.349384, 38.029797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127804, 34.728367, 38.143349>,  <36.040581, 34.079720, 37.849911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127804, 34.728367, 38.143349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771240, 34.621082, 38.289471>,  <35.557301, 34.556709, 38.377144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771240, 34.621082, 38.289471>,  <36.127804, 34.728367, 38.143349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771240, 34.621082, 38.289471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315163, 0.212360, 0.924973,
		-0.325668, 0.939662, -0.104768,
		-0.891410, -0.268215, 0.365305,
		35.503819, 34.540619, 38.399063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911160, 35.308609, 38.608181>,  <36.127804, 34.728367, 38.143349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911160, 35.308609, 38.608181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658730, 35.020859, 38.724274>,  <35.507271, 34.848209, 38.793930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658730, 35.020859, 38.724274>,  <35.911160, 35.308609, 38.608181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658730, 35.020859, 38.724274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066169, 0.322856, 0.944132,
		-0.772892, 0.615025, -0.156147,
		-0.631078, -0.719380, 0.290228,
		35.469406, 34.805046, 38.811340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542141, 35.647846, 39.181637>,  <35.911160, 35.308609, 38.608181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542141, 35.647846, 39.181637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478100, 35.256557, 39.234463>,  <35.439674, 35.021782, 39.266159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478100, 35.256557, 39.234463>,  <35.542141, 35.647846, 39.181637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478100, 35.256557, 39.234463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086168, 0.119429, 0.989096,
		-0.983332, 0.169740, 0.065170,
		-0.160106, -0.978226, 0.132065,
		35.430069, 34.963089, 39.274082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070709, 35.574181, 39.811565>,  <35.542141, 35.647846, 39.181637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070709, 35.574181, 39.811565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244499, 35.217762, 39.758999>,  <35.348774, 35.003910, 39.727459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244499, 35.217762, 39.758999>,  <35.070709, 35.574181, 39.811565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244499, 35.217762, 39.758999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136906, -0.078876, 0.987439,
		-0.890217, -0.447012, 0.087720,
		0.434478, -0.891044, -0.131415,
		35.374844, 34.950447, 39.719574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770847, 35.132278, 40.265251>,  <35.070709, 35.574181, 39.811565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770847, 35.132278, 40.265251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129292, 34.973473, 40.185890>,  <35.344360, 34.878189, 40.138275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129292, 34.973473, 40.185890>,  <34.770847, 35.132278, 40.265251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129292, 34.973473, 40.185890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156197, -0.136315, 0.978274,
		-0.415430, -0.907635, -0.060141,
		0.896114, -0.397010, -0.198399,
		35.398125, 34.854370, 40.126369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965332, 34.658501, 40.779987>,  <34.770847, 35.132278, 40.265251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965332, 34.658501, 40.779987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328197, 34.722656, 40.624382>,  <35.545918, 34.761150, 40.531017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328197, 34.722656, 40.624382>,  <34.965332, 34.658501, 40.779987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328197, 34.722656, 40.624382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396269, -0.014709, 0.918017,
		0.141519, -0.986944, -0.076901,
		0.907163, 0.160390, -0.389013,
		35.600346, 34.770775, 40.507679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395203, 34.094864, 40.967388>,  <34.965332, 34.658501, 40.779987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395203, 34.094864, 40.967388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677456, 34.366623, 40.886898>,  <35.846809, 34.529678, 40.838604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677456, 34.366623, 40.886898>,  <35.395203, 34.094864, 40.967388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677456, 34.366623, 40.886898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420559, -0.173016, 0.890615,
		0.570268, -0.713080, -0.407814,
		0.705638, 0.679399, -0.201227,
		35.889149, 34.570442, 40.826530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026211, 33.820011, 41.131939>,  <35.395203, 34.094864, 40.967388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026211, 33.820011, 41.131939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111568, 34.210785, 41.135281>,  <36.162781, 34.445248, 41.137287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111568, 34.210785, 41.135281>,  <36.026211, 33.820011, 41.131939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111568, 34.210785, 41.135281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445421, -0.104901, 0.889155,
		0.869520, -0.186014, -0.457530,
		0.213391, 0.976931, 0.008358,
		36.175587, 34.503864, 41.137787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689507, 33.863899, 41.333717>,  <36.026211, 33.820011, 41.131939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689507, 33.863899, 41.333717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539494, 34.222439, 41.428295>,  <36.449486, 34.437561, 41.485043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539494, 34.222439, 41.428295>,  <36.689507, 33.863899, 41.333717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539494, 34.222439, 41.428295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275593, -0.135722, 0.951645,
		0.885097, 0.422063, -0.196127,
		-0.375035, 0.896350, 0.236444,
		36.426983, 34.491344, 41.499229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966625, 33.966400, 41.938206>,  <36.689507, 33.863899, 41.333717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966625, 33.966400, 41.938206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729446, 34.288467, 41.933846>,  <36.587139, 34.481709, 41.931229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729446, 34.288467, 41.933846>,  <36.966625, 33.966400, 41.938206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729446, 34.288467, 41.933846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099673, -0.059949, 0.993213,
		0.799052, 0.590006, 0.115801,
		-0.592943, 0.805170, -0.010905,
		36.551563, 34.530018, 41.930573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228165, 34.441498, 42.435547>,  <36.966625, 33.966400, 41.938206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228165, 34.441498, 42.435547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840508, 34.532547, 42.397697>,  <36.607914, 34.587177, 42.374989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840508, 34.532547, 42.397697>,  <37.228165, 34.441498, 42.435547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840508, 34.532547, 42.397697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116165, -0.083145, 0.989744,
		0.217419, 0.970194, 0.107020,
		-0.969141, 0.227621, -0.094625,
		36.549767, 34.600834, 42.369308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097771, 34.943966, 42.990108>,  <37.228165, 34.441498, 42.435547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097771, 34.943966, 42.990108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736774, 34.798767, 42.897373>,  <36.520176, 34.711647, 42.841732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736774, 34.798767, 42.897373>,  <37.097771, 34.943966, 42.990108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736774, 34.798767, 42.897373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161782, -0.213158, 0.963530,
		-0.399176, 0.907082, 0.133646,
		-0.902488, -0.362996, -0.231837,
		36.466026, 34.689869, 42.827824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679157, 35.076153, 43.528755>,  <37.097771, 34.943966, 42.990108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679157, 35.076153, 43.528755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446030, 34.794823, 43.365955>,  <36.306152, 34.626026, 43.268276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446030, 34.794823, 43.365955>,  <36.679157, 35.076153, 43.528755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446030, 34.794823, 43.365955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285371, -0.291810, 0.912913,
		-0.760843, 0.648213, -0.030635,
		-0.582823, -0.703325, -0.407003,
		36.271183, 34.583824, 43.243855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984646, 34.996754, 43.869991>,  <36.679157, 35.076153, 43.528755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984646, 34.996754, 43.869991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011330, 34.652054, 43.668816>,  <36.027340, 34.445236, 43.548111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011330, 34.652054, 43.668816>,  <35.984646, 34.996754, 43.869991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011330, 34.652054, 43.668816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245119, -0.502764, 0.828942,
		-0.967195, 0.067983, -0.244768,
		0.066707, -0.861746, -0.502935,
		36.031342, 34.393532, 43.517937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481049, 34.576717, 44.101730>,  <35.984646, 34.996754, 43.869991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481049, 34.576717, 44.101730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715992, 34.287617, 43.956051>,  <35.856956, 34.114155, 43.868645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715992, 34.287617, 43.956051>,  <35.481049, 34.576717, 44.101730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715992, 34.287617, 43.956051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179474, -0.555116, 0.812179,
		-0.789178, -0.411674, -0.455766,
		0.587357, -0.722752, -0.364201,
		35.892200, 34.070789, 43.846790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102745, 33.945583, 44.135509>,  <35.481049, 34.576717, 44.101730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102745, 33.945583, 44.135509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492336, 33.856304, 44.119755>,  <35.726089, 33.802738, 44.110302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492336, 33.856304, 44.119755>,  <35.102745, 33.945583, 44.135509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492336, 33.856304, 44.119755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098063, -0.571669, 0.814603,
		-0.204331, -0.789543, -0.578680,
		0.973978, -0.223196, -0.039385,
		35.784531, 33.789345, 44.107941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096603, 33.181934, 44.227604>,  <35.102745, 33.945583, 44.135509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096603, 33.181934, 44.227604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470295, 33.310715, 44.289001>,  <35.694511, 33.387981, 44.325840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470295, 33.310715, 44.289001>,  <35.096603, 33.181934, 44.227604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470295, 33.310715, 44.289001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081548, -0.611769, 0.786822,
		0.347225, -0.722555, -0.597787,
		0.934229, 0.321952, 0.153498,
		35.750565, 33.407299, 44.335052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434952, 32.592514, 44.255322>,  <35.096603, 33.181934, 44.227604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434952, 32.592514, 44.255322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666882, 32.867111, 44.430832>,  <35.806042, 33.031868, 44.536137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666882, 32.867111, 44.430832>,  <35.434952, 32.592514, 44.255322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666882, 32.867111, 44.430832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105397, -0.597226, 0.795118,
		0.807892, -0.414787, -0.418643,
		0.579829, 0.686493, 0.438777,
		35.840832, 33.073059, 44.562466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019588, 32.180164, 44.396873>,  <35.434952, 32.592514, 44.255322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019588, 32.180164, 44.396873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993729, 32.496738, 44.640007>,  <35.978210, 32.686684, 44.785885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993729, 32.496738, 44.640007>,  <36.019588, 32.180164, 44.396873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993729, 32.496738, 44.640007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085774, -0.602443, 0.793540,
		0.994215, 0.103440, -0.028934,
		-0.064653, 0.791431, 0.607830,
		35.974335, 32.734169, 44.822357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643570, 32.091347, 44.828991>,  <36.019588, 32.180164, 44.396873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643570, 32.091347, 44.828991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393936, 32.344421, 45.012394>,  <36.244156, 32.496265, 45.122437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393936, 32.344421, 45.012394>,  <36.643570, 32.091347, 44.828991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393936, 32.344421, 45.012394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082301, -0.530313, 0.843798,
		0.777008, 0.564340, 0.278891,
		-0.624088, 0.632684, 0.458503,
		36.206711, 32.534225, 45.149944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934242, 32.151409, 45.436928>,  <36.643570, 32.091347, 44.828991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934242, 32.151409, 45.436928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545280, 32.239017, 45.469051>,  <36.311901, 32.291584, 45.488327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545280, 32.239017, 45.469051>,  <36.934242, 32.151409, 45.436928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545280, 32.239017, 45.469051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022009, -0.428856, 0.903105,
		0.232242, 0.876420, 0.421844,
		-0.972409, 0.219023, 0.080309,
		36.253559, 32.304726, 45.493145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291008, 32.740894, 45.695805>,  <36.934242, 32.151409, 45.436928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291008, 32.740894, 45.695805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681225, 32.659576, 45.729237>,  <37.915356, 32.610786, 45.749294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681225, 32.659576, 45.729237>,  <37.291008, 32.740894, 45.695805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681225, 32.659576, 45.729237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104927, 0.096599, -0.989777,
		0.193147, 0.974340, 0.115568,
		0.975543, -0.203298, 0.083577,
		37.973888, 32.598587, 45.754311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706432, 33.264160, 45.286747>,  <37.291008, 32.740894, 45.695805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706432, 33.264160, 45.286747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934185, 32.936127, 45.309624>,  <38.070839, 32.739307, 45.323349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934185, 32.936127, 45.309624>,  <37.706432, 33.264160, 45.286747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934185, 32.936127, 45.309624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297833, 0.140948, -0.944155,
		0.766221, 0.554621, 0.324501,
		0.569386, -0.820079, 0.057187,
		38.105000, 32.690102, 45.326778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131195, 33.447933, 44.803940>,  <37.706432, 33.264160, 45.286747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131195, 33.447933, 44.803940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228710, 33.066113, 44.872520>,  <38.287220, 32.837021, 44.913670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228710, 33.066113, 44.872520>,  <38.131195, 33.447933, 44.803940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228710, 33.066113, 44.872520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250650, -0.108768, -0.961948,
		0.936878, 0.277490, 0.212741,
		0.243792, -0.954552, 0.171455,
		38.301849, 32.779747, 44.923958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793297, 33.345375, 44.515373>,  <38.131195, 33.447933, 44.803940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793297, 33.345375, 44.515373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589123, 33.002033, 44.536118>,  <38.466618, 32.796028, 44.548565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589123, 33.002033, 44.536118>,  <38.793297, 33.345375, 44.515373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589123, 33.002033, 44.536118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160202, -0.154172, -0.974970,
		0.844864, -0.489347, 0.216205,
		-0.510432, -0.858353, 0.051860,
		38.435993, 32.744526, 44.551674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199406, 32.951797, 44.055023>,  <38.793297, 33.345375, 44.515373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199406, 32.951797, 44.055023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871571, 32.725464, 44.091053>,  <38.674870, 32.589664, 44.112671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871571, 32.725464, 44.091053>,  <39.199406, 32.951797, 44.055023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871571, 32.725464, 44.091053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099115, -0.294847, -0.950390,
		0.564321, -0.769997, 0.297735,
		-0.819584, -0.565835, 0.090070,
		38.625694, 32.555714, 44.118073>
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
