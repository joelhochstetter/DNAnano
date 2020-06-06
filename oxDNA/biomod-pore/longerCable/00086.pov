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
	<24.449223, 34.593414, 34.836056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335943, 34.961010, 34.945793>,  <24.267977, 35.181568, 35.011635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335943, 34.961010, 34.945793>,  <24.449223, 34.593414, 34.836056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.335943, 34.961010, 34.945793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482697, 0.110608, -0.868775,
		-0.828736, -0.378461, 0.412267,
		-0.283197, 0.918985, 0.274347,
		24.250984, 35.236706, 35.028099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162333, 34.790100, 34.603146>,  <24.449223, 34.593414, 34.836056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.162333, 34.790100, 34.603146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857475, 34.688507, 34.364941>,  <24.674561, 34.627552, 34.222019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857475, 34.688507, 34.364941>,  <25.162333, 34.790100, 34.603146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.857475, 34.688507, 34.364941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604398, 0.050543, -0.795078,
		0.232033, -0.965888, 0.114985,
		-0.762145, -0.253981, -0.595508,
		24.628832, 34.612312, 34.186287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224102, 34.197388, 34.216038>,  <25.162333, 34.790100, 34.603146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224102, 34.197388, 34.216038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.988205, 34.442135, 34.005203>,  <24.846666, 34.588982, 33.878704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.988205, 34.442135, 34.005203>,  <25.224102, 34.197388, 34.216038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.988205, 34.442135, 34.005203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564027, -0.155052, -0.811068,
		-0.577992, -0.775614, -0.253669,
		-0.589744, 0.611867, -0.527087,
		24.811281, 34.625694, 33.847076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.106890, 33.818619, 33.594395>,  <25.224102, 34.197388, 34.216038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.106890, 33.818619, 33.594395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074366, 34.216087, 33.563381>,  <25.054852, 34.454567, 33.544773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074366, 34.216087, 33.563381>,  <25.106890, 33.818619, 33.594395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.074366, 34.216087, 33.563381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487257, -0.028234, -0.872802,
		-0.869465, -0.108745, -0.481876,
		-0.081308, 0.993668, -0.077535,
		25.049973, 34.514187, 33.540119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999212, 34.000660, 32.836895>,  <25.106890, 33.818619, 33.594395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.999212, 34.000660, 32.836895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176439, 34.326698, 32.986187>,  <25.282776, 34.522324, 33.075764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176439, 34.326698, 32.986187>,  <24.999212, 34.000660, 32.836895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.176439, 34.326698, 32.986187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559593, 0.073805, -0.825475,
		-0.700391, 0.574601, -0.423423,
		0.443068, 0.815099, 0.373234,
		25.309361, 34.571228, 33.098156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.932585, 34.527206, 32.291348>,  <24.999212, 34.000660, 32.836895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.932585, 34.527206, 32.291348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254105, 34.546349, 32.528538>,  <25.447016, 34.557835, 32.670853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254105, 34.546349, 32.528538>,  <24.932585, 34.527206, 32.291348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254105, 34.546349, 32.528538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592292, -0.157665, -0.790147,
		0.055682, 0.986333, -0.155072,
		0.803797, 0.047851, 0.592975,
		25.495243, 34.560703, 32.706429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369658, 34.943157, 31.875889>,  <24.932585, 34.527206, 32.291348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.369658, 34.943157, 31.875889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568329, 34.709114, 32.132313>,  <25.687531, 34.568687, 32.286167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568329, 34.709114, 32.132313>,  <25.369658, 34.943157, 31.875889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.568329, 34.709114, 32.132313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684408, -0.190195, -0.703854,
		0.533758, 0.788336, 0.305988,
		0.496677, -0.585109, 0.641062,
		25.717331, 34.533581, 32.324631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034784, 35.087032, 32.111809>,  <25.369658, 34.943157, 31.875889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034784, 35.087032, 32.111809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344435, 34.849365, 32.024456>,  <26.530224, 34.706764, 31.972044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344435, 34.849365, 32.024456>,  <26.034784, 35.087032, 32.111809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344435, 34.849365, 32.024456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254390, 0.023912, -0.966806,
		0.579669, 0.803984, -0.132640,
		0.774125, -0.594170, -0.218386,
		26.576672, 34.671116, 31.958941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432951, 35.421528, 31.526464>,  <26.034784, 35.087032, 32.111809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432951, 35.421528, 31.526464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581181, 35.050007, 31.527391>,  <26.670118, 34.827095, 31.527948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581181, 35.050007, 31.527391>,  <26.432951, 35.421528, 31.526464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581181, 35.050007, 31.527391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085413, 0.031594, -0.995845,
		0.924867, 0.369232, 0.091039,
		0.370574, -0.928800, 0.002317,
		26.692352, 34.771366, 31.528086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100027, 35.392204, 31.086416>,  <26.432951, 35.421528, 31.526464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100027, 35.392204, 31.086416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961502, 35.017128, 31.097708>,  <26.878387, 34.792080, 31.104483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961502, 35.017128, 31.097708>,  <27.100027, 35.392204, 31.086416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961502, 35.017128, 31.097708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080941, -0.059844, -0.994921,
		0.934622, -0.342266, 0.096623,
		-0.346310, -0.937695, 0.028228,
		26.857609, 34.735821, 31.106176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531088, 35.026218, 30.697622>,  <27.100027, 35.392204, 31.086416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531088, 35.026218, 30.697622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179268, 34.836071, 30.705830>,  <26.968176, 34.721985, 30.710754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179268, 34.836071, 30.705830>,  <27.531088, 35.026218, 30.697622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179268, 34.836071, 30.705830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009817, -0.061244, -0.998075,
		0.475707, -0.877654, 0.058534,
		-0.879549, -0.475365, 0.020518,
		26.915403, 34.693462, 30.711985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579670, 34.553085, 30.195560>,  <27.531088, 35.026218, 30.697622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579670, 34.553085, 30.195560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186527, 34.609612, 30.242933>,  <26.950642, 34.643528, 30.271357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186527, 34.609612, 30.242933>,  <27.579670, 34.553085, 30.195560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186527, 34.609612, 30.242933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112937, 0.046324, -0.992522,
		-0.145747, -0.988880, -0.029570,
		-0.982855, 0.141318, 0.118433,
		26.891670, 34.652008, 30.278463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508026, 34.395229, 29.499672>,  <27.579670, 34.553085, 30.195560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508026, 34.395229, 29.499672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238804, 34.104488, 29.445009>,  <27.077271, 33.930042, 29.412212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238804, 34.104488, 29.445009>,  <27.508026, 34.395229, 29.499672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238804, 34.104488, 29.445009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621537, 0.455738, 0.637177,
		-0.400858, 0.513792, -0.758506,
		-0.673056, -0.726857, -0.136655,
		27.036886, 33.886433, 29.404013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893990, 34.729362, 29.547400>,  <27.508026, 34.395229, 29.499672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893990, 34.729362, 29.547400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791807, 34.345940, 29.597845>,  <26.730497, 34.115887, 29.628113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791807, 34.345940, 29.597845>,  <26.893990, 34.729362, 29.547400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791807, 34.345940, 29.597845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568085, 0.254370, 0.782672,
		-0.782318, 0.128295, -0.609523,
		-0.255457, -0.958560, 0.126116,
		26.715170, 34.058372, 29.635679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178883, 34.899914, 29.802776>,  <26.893990, 34.729362, 29.547400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178883, 34.899914, 29.802776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419180, 34.593456, 29.894100>,  <26.563358, 34.409580, 29.948895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419180, 34.593456, 29.894100>,  <26.178883, 34.899914, 29.802776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419180, 34.593456, 29.894100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273264, 0.071590, 0.959271,
		-0.751289, -0.638664, -0.166353,
		0.600743, -0.766148, 0.228309,
		26.599403, 34.363613, 29.962593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795237, 34.526703, 30.249220>,  <26.178883, 34.899914, 29.802776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.795237, 34.526703, 30.249220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188122, 34.461449, 30.286409>,  <26.423853, 34.422298, 30.308723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188122, 34.461449, 30.286409>,  <25.795237, 34.526703, 30.249220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188122, 34.461449, 30.286409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103841, -0.059384, 0.992819,
		-0.156441, -0.984815, -0.075268,
		0.982213, -0.163133, 0.092974,
		26.482786, 34.412510, 30.314302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856667, 33.952076, 30.672594>,  <25.795237, 34.526703, 30.249220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856667, 33.952076, 30.672594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182188, 34.184040, 30.687717>,  <26.377501, 34.323219, 30.696791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182188, 34.184040, 30.687717>,  <25.856667, 33.952076, 30.672594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182188, 34.184040, 30.687717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054759, -0.141288, 0.988453,
		0.578554, -0.802337, -0.146736,
		0.813804, 0.579908, 0.037808,
		26.426329, 34.358013, 30.699060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333931, 33.591171, 31.154921>,  <25.856667, 33.952076, 30.672594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333931, 33.591171, 31.154921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489927, 33.958965, 31.135073>,  <26.583525, 34.179642, 31.123165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489927, 33.958965, 31.135073>,  <26.333931, 33.591171, 31.154921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489927, 33.958965, 31.135073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269721, -0.062547, 0.960905,
		0.880431, -0.388125, -0.272396,
		0.389989, 0.919482, -0.049618,
		26.606924, 34.234810, 31.120188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885477, 33.487541, 31.501038>,  <26.333931, 33.591171, 31.154921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885477, 33.487541, 31.501038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818174, 33.881229, 31.522951>,  <26.777792, 34.117443, 31.536100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818174, 33.881229, 31.522951>,  <26.885477, 33.487541, 31.501038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818174, 33.881229, 31.522951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480868, 0.033437, 0.876155,
		0.860497, 0.173766, -0.478906,
		-0.168259, 0.984219, 0.054786,
		26.767696, 34.176495, 31.539387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571074, 33.839603, 31.743990>,  <26.885477, 33.487541, 31.501038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571074, 33.839603, 31.743990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260601, 34.082649, 31.811335>,  <27.074318, 34.228477, 31.851742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260601, 34.082649, 31.811335>,  <27.571074, 33.839603, 31.743990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260601, 34.082649, 31.811335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284077, 0.098624, 0.953716,
		0.562888, 0.788084, -0.249160,
		-0.776181, 0.607616, 0.168363,
		27.027746, 34.264935, 31.861843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854239, 34.339645, 32.320930>,  <27.571074, 33.839603, 31.743990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854239, 34.339645, 32.320930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716465, 34.038460, 32.545219>,  <27.633801, 33.857750, 32.679794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716465, 34.038460, 32.545219>,  <27.854239, 34.339645, 32.320930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716465, 34.038460, 32.545219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059181, 0.578672, 0.813410,
		-0.936943, 0.313352, -0.154754,
		-0.344435, -0.752961, 0.560727,
		27.613134, 33.812572, 32.713436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283720, 34.527073, 32.809010>,  <27.854239, 34.339645, 32.320930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283720, 34.527073, 32.809010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476023, 34.226810, 32.990292>,  <27.591404, 34.046654, 33.099060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476023, 34.226810, 32.990292>,  <27.283720, 34.527073, 32.809010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476023, 34.226810, 32.990292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082150, 0.476020, 0.875589,
		-0.872996, -0.458178, 0.167184,
		0.480759, -0.750652, 0.453203,
		27.620251, 34.001614, 33.126251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048815, 34.556267, 33.487568>,  <27.283720, 34.527073, 32.809010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048815, 34.556267, 33.487568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406948, 34.380447, 33.458794>,  <27.621828, 34.274956, 33.441528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406948, 34.380447, 33.458794>,  <27.048815, 34.556267, 33.487568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406948, 34.380447, 33.458794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270656, 0.408659, 0.871633,
		-0.353732, -0.799870, 0.484853,
		0.895332, -0.439552, -0.071934,
		27.675549, 34.248581, 33.437214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577150, 35.052502, 33.377357>,  <27.048815, 34.556267, 33.487568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577150, 35.052502, 33.377357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706699, 35.126053, 33.748581>,  <27.784428, 35.170181, 33.971317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706699, 35.126053, 33.748581>,  <27.577150, 35.052502, 33.377357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706699, 35.126053, 33.748581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924191, 0.148395, -0.351922,
		-0.202430, 0.971683, -0.121876,
		0.323871, 0.183876, 0.928061,
		27.803862, 35.181217, 34.027000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838703, 35.730213, 33.387882>,  <27.577150, 35.052502, 33.377357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838703, 35.730213, 33.387882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037014, 35.481236, 33.630131>,  <28.156000, 35.331848, 33.775478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037014, 35.481236, 33.630131>,  <27.838703, 35.730213, 33.387882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037014, 35.481236, 33.630131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842486, 0.175470, -0.509339,
		0.210765, 0.762744, 0.611391,
		0.495777, -0.622440, 0.605619,
		28.185747, 35.294502, 33.811817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990540, 36.447636, 33.231953>,  <27.838703, 35.730213, 33.387882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990540, 36.447636, 33.231953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254356, 36.285137, 33.484924>,  <28.412645, 36.187637, 33.636707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254356, 36.285137, 33.484924>,  <27.990540, 36.447636, 33.231953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254356, 36.285137, 33.484924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063311, -0.808354, -0.585282,
		0.748998, 0.426057, -0.507423,
		0.659541, -0.406249, 0.632430,
		28.452219, 36.163261, 33.674652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495232, 36.019650, 32.885098>,  <27.990540, 36.447636, 33.231953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495232, 36.019650, 32.885098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543692, 35.881676, 33.257408>,  <28.572767, 35.798889, 33.480793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543692, 35.881676, 33.257408>,  <28.495232, 36.019650, 32.885098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543692, 35.881676, 33.257408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241970, -0.899133, -0.364706,
		0.962691, 0.269404, -0.025465,
		0.121150, -0.344937, 0.930775,
		28.580036, 35.778194, 33.536640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151815, 35.673546, 32.896290>,  <28.495232, 36.019650, 32.885098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151815, 35.673546, 32.896290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870804, 35.541016, 33.148220>,  <28.702196, 35.461498, 33.299377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870804, 35.541016, 33.148220>,  <29.151815, 35.673546, 32.896290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870804, 35.541016, 33.148220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157210, -0.935402, -0.316715,
		0.694072, -0.123488, 0.709236,
		-0.702531, -0.331322, 0.629823,
		28.660044, 35.441620, 33.337166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931221, 35.310417, 32.212677>,  <29.151815, 35.673546, 32.896290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931221, 35.310417, 32.212677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978260, 35.543114, 31.890745>,  <29.006483, 35.682732, 31.697586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978260, 35.543114, 31.890745>,  <28.931221, 35.310417, 32.212677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978260, 35.543114, 31.890745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881466, -0.434417, -0.185204,
		-0.457371, -0.687650, -0.563869,
		0.117599, 0.581739, -0.804830,
		29.013540, 35.717636, 31.649296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064501, 34.962551, 31.592627>,  <28.931221, 35.310417, 32.212677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064501, 34.962551, 31.592627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244879, 35.318336, 31.562941>,  <29.353106, 35.531807, 31.545130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244879, 35.318336, 31.562941>,  <29.064501, 34.962551, 31.592627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244879, 35.318336, 31.562941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812807, -0.443589, -0.377589,
		-0.368771, 0.109951, -0.922994,
		0.450947, 0.889460, -0.074214,
		29.380163, 35.585175, 31.540676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323256, 35.034237, 31.034658>,  <29.064501, 34.962551, 31.592627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323256, 35.034237, 31.034658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565891, 35.300003, 31.209290>,  <29.711472, 35.459465, 31.314068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565891, 35.300003, 31.209290>,  <29.323256, 35.034237, 31.034658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565891, 35.300003, 31.209290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786607, -0.421915, -0.450819,
		-0.115334, 0.616876, -0.778564,
		0.606587, 0.664419, 0.436577,
		29.747868, 35.499329, 31.340263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138941, 34.590317, 30.523632>,  <29.323256, 35.034237, 31.034658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138941, 34.590317, 30.523632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503092, 34.429131, 30.486046>,  <29.721582, 34.332420, 30.463493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503092, 34.429131, 30.486046>,  <29.138941, 34.590317, 30.523632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503092, 34.429131, 30.486046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397015, -0.914660, 0.075998,
		-0.116572, -0.031881, -0.992670,
		0.910379, -0.402964, -0.093967,
		29.776205, 34.308243, 30.457855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182783, 34.139992, 29.942013>,  <29.138941, 34.590317, 30.523632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182783, 34.139992, 29.942013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468412, 34.012489, 30.191330>,  <29.639790, 33.935989, 30.340919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468412, 34.012489, 30.191330>,  <29.182783, 34.139992, 29.942013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468412, 34.012489, 30.191330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398853, -0.916937, -0.011986,
		0.575341, -0.240043, -0.781897,
		0.714073, -0.318758, 0.623293,
		29.682634, 33.916862, 30.378317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355051, 33.380005, 29.757389>,  <29.182783, 34.139992, 29.942013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355051, 33.380005, 29.757389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544983, 33.390770, 30.109255>,  <29.658941, 33.397228, 30.320375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544983, 33.390770, 30.109255>,  <29.355051, 33.380005, 29.757389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544983, 33.390770, 30.109255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231512, -0.960509, 0.154349,
		0.849082, -0.276943, -0.449848,
		0.474829, 0.026910, 0.879666,
		29.687431, 33.398842, 30.373156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544510, 32.669018, 29.848116>,  <29.355051, 33.380005, 29.757389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544510, 32.669018, 29.848116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616333, 32.868748, 30.187157>,  <29.659428, 32.988586, 30.390581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616333, 32.868748, 30.187157>,  <29.544510, 32.669018, 29.848116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616333, 32.868748, 30.187157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426902, -0.736700, 0.524430,
		0.886292, -0.456009, 0.080883,
		0.179558, 0.499328, 0.847603,
		29.670200, 33.018547, 30.441437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482607, 32.188755, 30.363737>,  <29.544510, 32.669018, 29.848116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482607, 32.188755, 30.363737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454479, 32.523579, 30.580770>,  <29.437603, 32.724472, 30.710991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454479, 32.523579, 30.580770>,  <29.482607, 32.188755, 30.363737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454479, 32.523579, 30.580770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618401, -0.463376, 0.634715,
		0.782710, -0.290900, 0.550220,
		-0.070321, 0.837055, 0.542582,
		29.433384, 32.774696, 30.743546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051369, 32.336449, 30.952662>,  <29.482607, 32.188755, 30.363737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051369, 32.336449, 30.952662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444395, 32.334061, 31.026991>,  <29.680210, 32.332626, 31.071589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444395, 32.334061, 31.026991>,  <29.051369, 32.336449, 30.952662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444395, 32.334061, 31.026991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006694, 0.997699, 0.067467,
		-0.185801, -0.067535, 0.980264,
		0.982565, -0.005974, 0.185825,
		29.739164, 32.332268, 31.082739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250626, 32.819122, 31.555151>,  <29.051369, 32.336449, 30.952662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250626, 32.819122, 31.555151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541697, 32.767094, 31.285763>,  <29.716339, 32.735874, 31.124130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541697, 32.767094, 31.285763>,  <29.250626, 32.819122, 31.555151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541697, 32.767094, 31.285763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134240, 0.989874, -0.046141,
		0.672653, -0.056831, 0.737772,
		0.727679, -0.130075, -0.673471,
		29.760000, 32.728069, 31.083721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635984, 33.375706, 31.686176>,  <29.250626, 32.819122, 31.555151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635984, 33.375706, 31.686176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727804, 33.232933, 31.323982>,  <29.782896, 33.147270, 31.106667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727804, 33.232933, 31.323982>,  <29.635984, 33.375706, 31.686176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727804, 33.232933, 31.323982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176881, 0.930135, -0.321811,
		0.957090, -0.086292, 0.276646,
		0.229548, -0.356936, -0.905486,
		29.796669, 33.125851, 31.052336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351648, 33.541252, 31.512583>,  <29.635984, 33.375706, 31.686176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351648, 33.541252, 31.512583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155666, 33.473248, 31.170580>,  <30.038076, 33.432446, 30.965378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155666, 33.473248, 31.170580>,  <30.351648, 33.541252, 31.512583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155666, 33.473248, 31.170580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274166, 0.900978, -0.336262,
		0.827512, -0.399167, -0.394828,
		-0.489956, -0.170013, -0.855008,
		30.008680, 33.422245, 30.914078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806566, 33.679729, 31.020258>,  <30.351648, 33.541252, 31.512583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806566, 33.679729, 31.020258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438467, 33.740707, 30.876087>,  <30.217607, 33.777294, 30.789585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438467, 33.740707, 30.876087>,  <30.806566, 33.679729, 31.020258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438467, 33.740707, 30.876087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279779, 0.900257, -0.333558,
		0.273625, -0.407795, -0.871110,
		-0.920246, 0.152449, -0.360425,
		30.162394, 33.786442, 30.767960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933924, 33.820534, 30.294153>,  <30.806566, 33.679729, 31.020258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933924, 33.820534, 30.294153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581915, 33.971989, 30.408833>,  <30.370710, 34.062862, 30.477640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581915, 33.971989, 30.408833>,  <30.933924, 33.820534, 30.294153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581915, 33.971989, 30.408833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311370, 0.915791, -0.253723,
		-0.358627, -0.134012, -0.923811,
		-0.880020, 0.378639, 0.286700,
		30.317909, 34.085579, 30.494843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736835, 34.253777, 29.755655>,  <30.933924, 33.820534, 30.294153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736835, 34.253777, 29.755655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621113, 34.335640, 30.129696>,  <30.551680, 34.384758, 30.354120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621113, 34.335640, 30.129696>,  <30.736835, 34.253777, 29.755655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621113, 34.335640, 30.129696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200458, 0.968171, -0.149875,
		-0.936012, 0.144089, -0.321124,
		-0.289307, 0.204657, 0.935103,
		30.534321, 34.397038, 30.410227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416441, 34.884716, 29.734648>,  <30.736835, 34.253777, 29.755655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416441, 34.884716, 29.734648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529669, 34.841984, 30.115900>,  <30.597607, 34.816345, 30.344652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529669, 34.841984, 30.115900>,  <30.416441, 34.884716, 29.734648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529669, 34.841984, 30.115900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213778, 0.975804, 0.045883,
		-0.934970, 0.190770, 0.299061,
		0.283071, -0.106832, 0.953130,
		30.614590, 34.809933, 30.401838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964190, 35.333492, 30.132458>,  <30.416441, 34.884716, 29.734648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964190, 35.333492, 30.132458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314390, 35.280125, 30.318232>,  <30.524511, 35.248104, 30.429695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314390, 35.280125, 30.318232>,  <29.964190, 35.333492, 30.132458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314390, 35.280125, 30.318232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137731, 0.990159, 0.024808,
		-0.463172, 0.042248, 0.885261,
		0.875501, -0.133418, 0.464432,
		30.577040, 35.240101, 30.457561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015852, 35.590263, 30.777533>,  <29.964190, 35.333492, 30.132458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015852, 35.590263, 30.777533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386814, 35.597485, 30.628082>,  <30.609390, 35.601818, 30.538412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386814, 35.597485, 30.628082>,  <30.015852, 35.590263, 30.777533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386814, 35.597485, 30.628082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160638, 0.882815, 0.441398,
		0.337813, -0.469373, 0.815825,
		0.927404, 0.018058, -0.373626,
		30.665035, 35.602901, 30.515995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550623, 35.694775, 31.327408>,  <30.015852, 35.590263, 30.777533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550623, 35.694775, 31.327408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680666, 35.816128, 30.969131>,  <30.758692, 35.888939, 30.754166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680666, 35.816128, 30.969131>,  <30.550623, 35.694775, 31.327408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680666, 35.816128, 30.969131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143164, 0.920436, 0.363732,
		0.934778, -0.246483, 0.255806,
		0.325107, 0.303387, -0.895691,
		30.778198, 35.907143, 30.700424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215998, 35.995121, 31.406765>,  <30.550623, 35.694775, 31.327408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215998, 35.995121, 31.406765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958973, 36.140411, 31.136896>,  <30.804758, 36.227585, 30.974976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958973, 36.140411, 31.136896>,  <31.215998, 35.995121, 31.406765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958973, 36.140411, 31.136896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137236, 0.811712, 0.567706,
		0.753842, 0.457377, -0.471729,
		-0.642563, 0.363222, -0.674672,
		30.766205, 36.249378, 30.934494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298594, 36.743465, 31.138056>,  <31.215998, 35.995121, 31.406765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298594, 36.743465, 31.138056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915400, 36.633640, 31.171242>,  <30.685484, 36.567745, 31.191154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915400, 36.633640, 31.171242>,  <31.298594, 36.743465, 31.138056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915400, 36.633640, 31.171242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140199, 0.700598, 0.699648,
		-0.250221, 0.658620, -0.709655,
		-0.957984, -0.274559, 0.082966,
		30.628004, 36.551273, 31.196131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828987, 37.353996, 31.454588>,  <31.298594, 36.743465, 31.138056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828987, 37.353996, 31.454588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206081, 37.417068, 31.572151>,  <32.432339, 37.454914, 31.642689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206081, 37.417068, 31.572151>,  <31.828987, 37.353996, 31.454588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206081, 37.417068, 31.572151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271477, -0.149176, 0.950814,
		0.193772, -0.976157, -0.097826,
		0.942737, 0.157684, 0.293910,
		32.488903, 37.464375, 31.660324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976168, 36.789913, 31.860514>,  <31.828987, 37.353996, 31.454588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976168, 36.789913, 31.860514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220222, 37.092865, 31.953558>,  <32.366653, 37.274635, 32.009384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220222, 37.092865, 31.953558>,  <31.976168, 36.789913, 31.860514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220222, 37.092865, 31.953558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248006, -0.096265, 0.963964,
		0.752481, -0.645837, 0.129101,
		0.610135, 0.757382, 0.232609,
		32.403263, 37.320080, 32.023342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393574, 36.498760, 32.465687>,  <31.976168, 36.789913, 31.860514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393574, 36.498760, 32.465687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406452, 36.898540, 32.468697>,  <32.414181, 37.138409, 32.470501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406452, 36.898540, 32.468697>,  <32.393574, 36.498760, 32.465687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406452, 36.898540, 32.468697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155811, -0.002414, 0.987784,
		0.987262, -0.032974, 0.155648,
		0.032195, 0.999453, 0.007521,
		32.416111, 37.198376, 32.470951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953362, 36.830185, 32.905190>,  <32.393574, 36.498760, 32.465687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953362, 36.830185, 32.905190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648136, 37.088692, 32.902084>,  <32.465000, 37.243797, 32.900223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648136, 37.088692, 32.902084>,  <32.953362, 36.830185, 32.905190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648136, 37.088692, 32.902084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055082, 0.076991, 0.995509,
		0.643967, 0.759214, -0.094347,
		-0.763068, 0.646272, -0.007761,
		32.419216, 37.282574, 32.899757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143261, 37.551575, 33.172085>,  <32.953362, 36.830185, 32.905190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143261, 37.551575, 33.172085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769211, 37.456867, 33.277523>,  <32.544781, 37.400043, 33.340786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769211, 37.456867, 33.277523>,  <33.143261, 37.551575, 33.172085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769211, 37.456867, 33.277523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196171, 0.273547, 0.941642,
		-0.295058, 0.932262, -0.209353,
		-0.935124, -0.236770, 0.263595,
		32.488674, 37.385838, 33.356602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768627, 38.074837, 33.432411>,  <33.143261, 37.551575, 33.172085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768627, 38.074837, 33.432411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649193, 37.730770, 33.597805>,  <32.577534, 37.524330, 33.697041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649193, 37.730770, 33.597805>,  <32.768627, 38.074837, 33.432411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649193, 37.730770, 33.597805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444672, 0.257962, 0.857743,
		-0.844461, 0.439974, 0.305467,
		-0.298585, -0.860162, 0.413483,
		32.559616, 37.472721, 33.721851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878368, 38.158737, 34.133953>,  <32.768627, 38.074837, 33.432411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878368, 38.158737, 34.133953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784550, 37.770718, 34.159222>,  <32.728256, 37.537907, 34.174381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784550, 37.770718, 34.159222>,  <32.878368, 38.158737, 34.133953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784550, 37.770718, 34.159222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429591, -0.045141, 0.901894,
		-0.872031, 0.238677, 0.427313,
		-0.234551, -0.970049, 0.063169,
		32.714184, 37.479702, 34.178173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272942, 38.578716, 34.158367>,  <32.878368, 38.158737, 34.133953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272942, 38.578716, 34.158367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253426, 38.883507, 33.900063>,  <32.241718, 39.066383, 33.745079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253426, 38.883507, 33.900063>,  <32.272942, 38.578716, 34.158367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253426, 38.883507, 33.900063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602954, -0.537902, -0.589159,
		-0.796283, 0.360621, 0.485681,
		-0.048785, 0.761981, -0.645760,
		32.238789, 39.112103, 33.706333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885048, 38.213730, 34.623634>,  <32.272942, 38.578716, 34.158367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885048, 38.213730, 34.623634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609640, 38.177639, 34.335800>,  <31.444395, 38.155983, 34.163101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609640, 38.177639, 34.335800>,  <31.885048, 38.213730, 34.623634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609640, 38.177639, 34.335800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725004, -0.109803, -0.679935,
		-0.017663, -0.989850, 0.141018,
		-0.688518, -0.090228, -0.719584,
		31.403086, 38.150570, 34.119926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066208, 37.627846, 34.322048>,  <31.885048, 38.213730, 34.623634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066208, 37.627846, 34.322048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878323, 37.879471, 34.074287>,  <31.765591, 38.030445, 33.925632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878323, 37.879471, 34.074287>,  <32.066208, 37.627846, 34.322048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878323, 37.879471, 34.074287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737960, -0.105310, -0.666577,
		-0.484545, -0.770191, -0.414755,
		-0.469714, 0.629059, -0.619398,
		31.737408, 38.068188, 33.888470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819435, 37.332447, 33.562363>,  <32.066208, 37.627846, 34.322048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819435, 37.332447, 33.562363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916386, 37.720501, 33.558468>,  <31.974556, 37.953335, 33.556129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916386, 37.720501, 33.558468>,  <31.819435, 37.332447, 33.562363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916386, 37.720501, 33.558468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495293, -0.132361, -0.858583,
		-0.834229, 0.203276, -0.512582,
		0.242375, 0.970134, -0.009738,
		31.989098, 38.011539, 33.555546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615358, 37.570381, 32.919170>,  <31.819435, 37.332447, 33.562363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615358, 37.570381, 32.919170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882927, 37.823082, 33.075855>,  <32.043468, 37.974701, 33.169865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882927, 37.823082, 33.075855>,  <31.615358, 37.570381, 32.919170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882927, 37.823082, 33.075855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596248, -0.141334, -0.790261,
		-0.443885, 0.762179, -0.471221,
		0.668920, 0.631750, 0.391712,
		32.083603, 38.012608, 33.193367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682850, 38.137970, 32.499428>,  <31.615358, 37.570381, 32.919170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682850, 38.137970, 32.499428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004593, 38.036762, 32.714458>,  <32.197639, 37.976040, 32.843479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004593, 38.036762, 32.714458>,  <31.682850, 38.137970, 32.499428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004593, 38.036762, 32.714458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517901, -0.144850, -0.843088,
		0.291182, 0.956557, 0.014526,
		0.804358, -0.253015, 0.537579,
		32.245899, 37.960857, 32.875732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295040, 38.508942, 32.379795>,  <31.682850, 38.137970, 32.499428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295040, 38.508942, 32.379795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399651, 38.126144, 32.430027>,  <32.462418, 37.896465, 32.460167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399651, 38.126144, 32.430027>,  <32.295040, 38.508942, 32.379795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399651, 38.126144, 32.430027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406410, -0.008827, -0.913648,
		0.875462, 0.289980, 0.386622,
		0.261527, -0.956992, 0.125579,
		32.478107, 37.839046, 32.467701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036072, 38.480633, 32.217430>,  <32.295040, 38.508942, 32.379795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036072, 38.480633, 32.217430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872749, 38.116764, 32.187008>,  <32.774757, 37.898441, 32.168755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872749, 38.116764, 32.187008>,  <33.036072, 38.480633, 32.217430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872749, 38.116764, 32.187008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464823, -0.135476, -0.874977,
		0.785638, -0.392611, 0.478152,
		-0.408304, -0.909672, -0.076059,
		32.750259, 37.843861, 32.164188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606686, 37.917480, 32.165607>,  <33.036072, 38.480633, 32.217430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606686, 37.917480, 32.165607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269791, 37.771797, 32.006618>,  <33.067654, 37.684387, 31.911224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269791, 37.771797, 32.006618>,  <33.606686, 37.917480, 32.165607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269791, 37.771797, 32.006618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393866, 0.087720, -0.914972,
		0.368110, -0.927176, 0.069570,
		-0.842238, -0.364211, -0.397474,
		33.017120, 37.662533, 31.887377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814304, 37.701000, 31.598560>,  <33.606686, 37.917480, 32.165607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814304, 37.701000, 31.598560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419697, 37.669434, 31.541224>,  <33.182930, 37.650494, 31.506823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419697, 37.669434, 31.541224>,  <33.814304, 37.701000, 31.598560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419697, 37.669434, 31.541224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145336, -0.020117, -0.989178,
		0.075185, -0.996678, 0.031316,
		-0.986522, -0.078922, -0.143340,
		33.123741, 37.645756, 31.498222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602604, 37.077080, 31.198235>,  <33.814304, 37.701000, 31.598560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602604, 37.077080, 31.198235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395531, 37.418182, 31.170488>,  <33.271286, 37.622845, 31.153841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395531, 37.418182, 31.170488>,  <33.602604, 37.077080, 31.198235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395531, 37.418182, 31.170488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224269, 0.057011, -0.972858,
		-0.825657, -0.519188, -0.220760,
		-0.517682, 0.852757, -0.069366,
		33.240227, 37.674011, 31.149679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943920, 37.010399, 30.788694>,  <33.602604, 37.077080, 31.198235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943920, 37.010399, 30.788694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067223, 37.390610, 30.773319>,  <33.141205, 37.618736, 30.764093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067223, 37.390610, 30.773319>,  <32.943920, 37.010399, 30.788694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067223, 37.390610, 30.773319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106537, -0.005660, -0.994293,
		-0.945320, 0.310590, 0.099522,
		0.308254, 0.950527, -0.038440,
		33.159698, 37.675770, 30.761787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505592, 37.353477, 30.273468>,  <32.943920, 37.010399, 30.788694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505592, 37.353477, 30.273468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819054, 37.601234, 30.292404>,  <33.007130, 37.749889, 30.303766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819054, 37.601234, 30.292404>,  <32.505592, 37.353477, 30.273468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819054, 37.601234, 30.292404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080758, 0.177147, -0.980866,
		-0.615924, 0.764838, 0.188843,
		0.783655, 0.619389, 0.047342,
		33.054150, 37.787052, 30.306606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348404, 37.855087, 29.734200>,  <32.505592, 37.353477, 30.273468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348404, 37.855087, 29.734200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733273, 37.864426, 29.842779>,  <32.964191, 37.870029, 29.907927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733273, 37.864426, 29.842779>,  <32.348404, 37.855087, 29.734200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733273, 37.864426, 29.842779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267796, 0.102342, -0.958025,
		-0.050147, 0.994475, 0.092219,
		0.962170, 0.023347, 0.271449,
		33.021923, 37.871429, 29.924213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612103, 38.371258, 29.313225>,  <32.348404, 37.855087, 29.734200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612103, 38.371258, 29.313225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940384, 38.163166, 29.407724>,  <33.137352, 38.038311, 29.464424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940384, 38.163166, 29.407724>,  <32.612103, 38.371258, 29.313225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940384, 38.163166, 29.407724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364487, 0.158278, -0.917659,
		0.439999, 0.839232, 0.319515,
		0.820701, -0.520228, 0.236247,
		33.186596, 38.007099, 29.478598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185837, 38.781475, 29.138084>,  <32.612103, 38.371258, 29.313225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185837, 38.781475, 29.138084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294811, 38.396824, 29.151030>,  <33.360195, 38.166031, 29.158796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294811, 38.396824, 29.151030>,  <33.185837, 38.781475, 29.138084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294811, 38.396824, 29.151030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464863, 0.102098, -0.879476,
		0.842427, 0.254642, 0.474841,
		0.272432, -0.961630, 0.032364,
		33.376541, 38.108334, 29.160738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824375, 38.908245, 28.900034>,  <33.185837, 38.781475, 29.138084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824375, 38.908245, 28.900034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778538, 38.511593, 28.876234>,  <33.751034, 38.273602, 28.861954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778538, 38.511593, 28.876234>,  <33.824375, 38.908245, 28.900034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778538, 38.511593, 28.876234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384753, 0.010914, -0.922955,
		0.915878, -0.128661, 0.380282,
		-0.114597, -0.991629, -0.059499,
		33.744160, 38.214104, 28.858385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372646, 38.726444, 28.590752>,  <33.824375, 38.908245, 28.900034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372646, 38.726444, 28.590752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144722, 38.402439, 28.535320>,  <34.007969, 38.208038, 28.502062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144722, 38.402439, 28.535320>,  <34.372646, 38.726444, 28.590752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144722, 38.402439, 28.535320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350312, -0.086881, -0.932595,
		0.743370, -0.579946, 0.333261,
		-0.569809, -0.810009, -0.138577,
		33.973778, 38.159435, 28.493748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816071, 38.184692, 28.220114>,  <34.372646, 38.726444, 28.590752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816071, 38.184692, 28.220114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429394, 38.123859, 28.137775>,  <34.197388, 38.087360, 28.088373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429394, 38.123859, 28.137775>,  <34.816071, 38.184692, 28.220114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429394, 38.123859, 28.137775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229807, -0.161789, -0.959694,
		0.112648, -0.975036, 0.191350,
		-0.966695, -0.152081, -0.205845,
		34.139385, 38.078236, 28.076021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847717, 37.631973, 27.682564>,  <34.816071, 38.184692, 28.220114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847717, 37.631973, 27.682564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479248, 37.785862, 27.659138>,  <34.258167, 37.878193, 27.645082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479248, 37.785862, 27.659138>,  <34.847717, 37.631973, 27.682564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479248, 37.785862, 27.659138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018044, -0.108108, -0.993975,
		-0.388733, -0.916681, 0.092645,
		-0.921174, 0.384719, -0.058566,
		34.202896, 37.901279, 27.641567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487846, 37.155373, 27.263582>,  <34.847717, 37.631973, 27.682564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487846, 37.155373, 27.263582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327385, 37.521381, 27.246576>,  <34.231110, 37.740986, 27.236372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327385, 37.521381, 27.246576>,  <34.487846, 37.155373, 27.263582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327385, 37.521381, 27.246576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144041, 0.017177, -0.989423,
		-0.904616, -0.403031, -0.138691,
		-0.401150, 0.915025, -0.042514,
		34.207039, 37.795891, 27.233822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191559, 37.096653, 26.681765>,  <34.487846, 37.155373, 27.263582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191559, 37.096653, 26.681765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174953, 37.491425, 26.744057>,  <34.164989, 37.728287, 26.781431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174953, 37.491425, 26.744057>,  <34.191559, 37.096653, 26.681765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174953, 37.491425, 26.744057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051722, 0.157778, -0.986119,
		-0.997799, -0.032879, -0.057596,
		-0.041510, 0.986927, 0.155730,
		34.162498, 37.787502, 26.790775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699097, 37.374470, 26.211035>,  <34.191559, 37.096653, 26.681765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699097, 37.374470, 26.211035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944229, 37.673538, 26.313351>,  <34.091309, 37.852978, 26.374741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944229, 37.673538, 26.313351>,  <33.699097, 37.374470, 26.211035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944229, 37.673538, 26.313351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049954, 0.286393, -0.956809,
		-0.788632, 0.599142, 0.138162,
		0.612833, 0.747668, 0.255788,
		34.128078, 37.897839, 26.390087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457287, 37.982941, 25.924673>,  <33.699097, 37.374470, 26.211035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457287, 37.982941, 25.924673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836010, 38.085728, 26.002163>,  <34.063244, 38.147400, 26.048656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836010, 38.085728, 26.002163>,  <33.457287, 37.982941, 25.924673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836010, 38.085728, 26.002163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099557, 0.338567, -0.935661,
		-0.306025, 0.905174, 0.294973,
		0.946804, 0.256969, 0.193726,
		34.120052, 38.162819, 26.060280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579472, 38.667927, 25.790199>,  <33.457287, 37.982941, 25.924673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579472, 38.667927, 25.790199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959648, 38.543640, 25.794527>,  <34.187756, 38.469070, 25.797123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959648, 38.543640, 25.794527>,  <33.579472, 38.667927, 25.790199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959648, 38.543640, 25.794527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206667, 0.605412, -0.768613,
		0.232267, 0.732758, 0.639623,
		0.950443, -0.310712, 0.010820,
		34.244781, 38.450428, 25.797773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909332, 39.216496, 25.682642>,  <33.579472, 38.667927, 25.790199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909332, 39.216496, 25.682642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171246, 38.928051, 25.592085>,  <34.328392, 38.754982, 25.537750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171246, 38.928051, 25.592085>,  <33.909332, 39.216496, 25.682642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171246, 38.928051, 25.592085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293296, 0.518486, -0.803212,
		0.696590, 0.459529, 0.550995,
		0.654783, -0.721114, -0.226394,
		34.367680, 38.711716, 25.524166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656540, 39.565701, 25.595417>,  <33.909332, 39.216496, 25.682642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656540, 39.565701, 25.595417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667850, 39.211071, 25.410730>,  <34.674637, 38.998291, 25.299917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667850, 39.211071, 25.410730>,  <34.656540, 39.565701, 25.595417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667850, 39.211071, 25.410730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369431, 0.438469, -0.819308,
		0.928828, -0.147404, 0.339928,
		0.028279, -0.886576, -0.461718,
		34.676334, 38.945099, 25.272215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345428, 39.594666, 25.299053>,  <34.656540, 39.565701, 25.595417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345428, 39.594666, 25.299053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103363, 39.328827, 25.123745>,  <34.958122, 39.169323, 25.018560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103363, 39.328827, 25.123745>,  <35.345428, 39.594666, 25.299053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103363, 39.328827, 25.123745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164992, 0.433868, -0.885740,
		0.778814, -0.608332, -0.152909,
		-0.605166, -0.664598, -0.438273,
		34.921814, 39.129448, 24.992264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696869, 39.341442, 24.673550>,  <35.345428, 39.594666, 25.299053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696869, 39.341442, 24.673550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335884, 39.179909, 24.613583>,  <35.119293, 39.082989, 24.577602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335884, 39.179909, 24.613583>,  <35.696869, 39.341442, 24.673550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335884, 39.179909, 24.613583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044112, 0.259560, -0.964719,
		0.428501, -0.877237, -0.216429,
		-0.902464, -0.403836, -0.149919,
		35.065144, 39.058758, 24.568607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780735, 38.820927, 24.223570>,  <35.696869, 39.341442, 24.673550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780735, 38.820927, 24.223570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394741, 38.914062, 24.175241>,  <35.163147, 38.969944, 24.146244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394741, 38.914062, 24.175241>,  <35.780735, 38.820927, 24.223570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394741, 38.914062, 24.175241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145145, 0.090280, -0.985283,
		-0.218506, -0.968315, -0.120914,
		-0.964981, 0.232840, -0.120820,
		35.105247, 38.983913, 24.138996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488834, 38.543213, 23.515976>,  <35.780735, 38.820927, 24.223570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488834, 38.543213, 23.515976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223827, 38.828571, 23.607313>,  <35.064823, 38.999786, 23.662115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223827, 38.828571, 23.607313>,  <35.488834, 38.543213, 23.515976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223827, 38.828571, 23.607313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059294, 0.253942, -0.965400,
		-0.746697, -0.653133, -0.125940,
		-0.662517, 0.713394, 0.228345,
		35.025074, 39.042591, 23.675816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067818, 38.620022, 22.907213>,  <35.488834, 38.543213, 23.515976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067818, 38.620022, 22.907213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021961, 38.970779, 23.093939>,  <34.994446, 39.181232, 23.205975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021961, 38.970779, 23.093939>,  <35.067818, 38.620022, 22.907213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021961, 38.970779, 23.093939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115550, 0.478493, -0.870456,
		-0.986663, -0.045854, -0.156183,
		-0.114646, 0.876894, 0.466813,
		34.987568, 39.233849, 23.233982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704269, 39.019424, 22.439198>,  <35.067818, 38.620022, 22.907213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704269, 39.019424, 22.439198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846046, 39.303093, 22.682983>,  <34.931114, 39.473293, 22.829254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846046, 39.303093, 22.682983>,  <34.704269, 39.019424, 22.439198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846046, 39.303093, 22.682983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145339, 0.602077, -0.785099,
		-0.923713, 0.366853, 0.110333,
		0.354445, 0.709170, 0.609464,
		34.952381, 39.515842, 22.865822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347450, 39.766655, 22.345730>,  <34.704269, 39.019424, 22.439198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347450, 39.766655, 22.345730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702744, 39.845535, 22.511694>,  <34.915920, 39.892864, 22.611273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702744, 39.845535, 22.511694>,  <34.347450, 39.766655, 22.345730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702744, 39.845535, 22.511694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186235, 0.671060, -0.717632,
		-0.419946, 0.714696, 0.559334,
		0.888235, 0.197199, 0.414910,
		34.969215, 39.904694, 22.636168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373615, 40.493252, 22.403372>,  <34.347450, 39.766655, 22.345730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373615, 40.493252, 22.403372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757874, 40.382515, 22.412500>,  <34.988430, 40.316074, 22.417976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757874, 40.382515, 22.412500>,  <34.373615, 40.493252, 22.403372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757874, 40.382515, 22.412500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224176, 0.724144, -0.652197,
		0.164028, 0.631646, 0.757706,
		0.960645, -0.276839, 0.022820,
		35.046066, 40.299465, 22.419346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774990, 41.131065, 22.507866>,  <34.373615, 40.493252, 22.403372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774990, 41.131065, 22.507866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998703, 40.842144, 22.345152>,  <35.132931, 40.668789, 22.247522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998703, 40.842144, 22.345152>,  <34.774990, 41.131065, 22.507866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998703, 40.842144, 22.345152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350919, 0.650862, -0.673227,
		0.751038, 0.233776, 0.617487,
		0.559283, -0.722307, -0.406786,
		35.166489, 40.625450, 22.223116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457542, 41.427849, 22.404362>,  <34.774990, 41.131065, 22.507866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457542, 41.427849, 22.404362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438862, 41.108021, 22.164862>,  <35.427654, 40.916122, 22.021162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438862, 41.108021, 22.164862>,  <35.457542, 41.427849, 22.404362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438862, 41.108021, 22.164862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471135, 0.510914, -0.719026,
		0.880823, -0.315674, 0.352845,
		-0.046704, -0.799573, -0.598750,
		35.424850, 40.868149, 21.985237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170635, 41.314713, 22.195330>,  <35.457542, 41.427849, 22.404362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170635, 41.314713, 22.195330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924366, 41.139580, 21.933260>,  <35.776604, 41.034500, 21.776018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924366, 41.139580, 21.933260>,  <36.170635, 41.314713, 22.195330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924366, 41.139580, 21.933260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464586, 0.469883, -0.750580,
		0.636481, -0.766496, -0.085884,
		-0.615672, -0.437830, -0.655174,
		35.739666, 41.008232, 21.736708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612656, 41.138317, 21.646786>,  <36.170635, 41.314713, 22.195330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612656, 41.138317, 21.646786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256016, 41.067501, 21.480070>,  <36.042034, 41.025013, 21.380041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256016, 41.067501, 21.480070>,  <36.612656, 41.138317, 21.646786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256016, 41.067501, 21.480070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370415, 0.244295, -0.896165,
		0.260473, -0.953403, -0.152236,
		-0.891598, -0.177037, -0.416788,
		35.988537, 41.014389, 21.355034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587055, 40.741451, 20.919071>,  <36.612656, 41.138317, 21.646786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587055, 40.741451, 20.919071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252682, 40.959896, 20.940931>,  <36.052059, 41.090961, 20.954046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252682, 40.959896, 20.940931>,  <36.587055, 40.741451, 20.919071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252682, 40.959896, 20.940931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259049, 0.480379, -0.837932,
		-0.483853, -0.686296, -0.543033,
		-0.835931, 0.546108, 0.054649,
		36.001904, 41.123730, 20.957325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285000, 40.610466, 20.265280>,  <36.587055, 40.741451, 20.919071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285000, 40.610466, 20.265280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104748, 40.938713, 20.405861>,  <35.996597, 41.135662, 20.490210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104748, 40.938713, 20.405861>,  <36.285000, 40.610466, 20.265280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104748, 40.938713, 20.405861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147690, 0.456801, -0.877223,
		-0.880407, -0.343400, -0.327046,
		-0.450634, 0.820615, 0.351454,
		35.969559, 41.184898, 20.511297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809689, 40.806873, 19.729610>,  <36.285000, 40.610466, 20.265280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809689, 40.806873, 19.729610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864338, 41.126118, 19.964338>,  <35.897129, 41.317665, 20.105175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864338, 41.126118, 19.964338>,  <35.809689, 40.806873, 19.729610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864338, 41.126118, 19.964338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077319, 0.581975, -0.809522,
		-0.987601, 0.155971, 0.017802,
		0.136622, 0.798109, 0.586819,
		35.905323, 41.365551, 20.140385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271114, 41.257889, 19.470402>,  <35.809689, 40.806873, 19.729610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271114, 41.257889, 19.470402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558529, 41.462677, 19.658695>,  <35.730980, 41.585548, 19.771671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558529, 41.462677, 19.658695>,  <35.271114, 41.257889, 19.470402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558529, 41.462677, 19.658695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236494, 0.456647, -0.857639,
		-0.654044, 0.727571, 0.207041,
		0.718538, 0.511970, 0.470733,
		35.774090, 41.616268, 19.799915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188026, 41.863071, 19.208744>,  <35.271114, 41.257889, 19.470402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188026, 41.863071, 19.208744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557026, 41.850559, 19.362637>,  <35.778427, 41.843052, 19.454971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557026, 41.850559, 19.362637>,  <35.188026, 41.863071, 19.208744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557026, 41.850559, 19.362637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354779, 0.461402, -0.813166,
		-0.152076, 0.886639, 0.436742,
		0.922499, -0.031284, 0.384729,
		35.833775, 41.841175, 19.478056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416187, 42.492035, 19.245453>,  <35.188026, 41.863071, 19.208744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416187, 42.492035, 19.245453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752125, 42.275768, 19.264828>,  <35.953686, 42.146008, 19.276453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752125, 42.275768, 19.264828>,  <35.416187, 42.492035, 19.245453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752125, 42.275768, 19.264828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403872, 0.562735, -0.721261,
		0.362706, 0.625306, 0.690968,
		0.839840, -0.540668, 0.048437,
		36.004078, 42.113567, 19.279358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860516, 43.000999, 19.125057>,  <35.416187, 42.492035, 19.245453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860516, 43.000999, 19.125057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069817, 42.669518, 19.045605>,  <36.195396, 42.470631, 18.997932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069817, 42.669518, 19.045605>,  <35.860516, 43.000999, 19.125057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069817, 42.669518, 19.045605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437771, 0.461379, -0.771678,
		0.731136, 0.316831, 0.604201,
		0.523257, -0.828703, -0.198631,
		36.226795, 42.420906, 18.986015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486950, 43.215336, 19.084463>,  <35.860516, 43.000999, 19.125057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486950, 43.215336, 19.084463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494686, 42.867657, 18.886829>,  <36.499329, 42.659050, 18.768250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494686, 42.867657, 18.886829>,  <36.486950, 43.215336, 19.084463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494686, 42.867657, 18.886829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566234, 0.416809, -0.711090,
		0.824017, -0.266011, 0.500234,
		0.019344, -0.869200, -0.494082,
		36.500488, 42.606895, 18.738605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234398, 42.900822, 18.999975>,  <36.486950, 43.215336, 19.084463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234398, 42.900822, 18.999975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994808, 42.776863, 18.704626>,  <36.851055, 42.702488, 18.527416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994808, 42.776863, 18.704626>,  <37.234398, 42.900822, 18.999975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994808, 42.776863, 18.704626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453393, 0.628801, -0.631700,
		0.660050, -0.713145, -0.236132,
		-0.598973, -0.309893, -0.738375,
		36.815117, 42.683895, 18.483114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685791, 42.939449, 18.457916>,  <37.234398, 42.900822, 18.999975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685791, 42.939449, 18.457916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337105, 42.908142, 18.264427>,  <37.127892, 42.889359, 18.148335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337105, 42.908142, 18.264427>,  <37.685791, 42.939449, 18.457916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337105, 42.908142, 18.264427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252670, 0.774009, -0.580576,
		0.419848, -0.628318, -0.654938,
		-0.871714, -0.078271, -0.483723,
		37.075592, 42.884663, 18.119310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885765, 42.892906, 17.781277>,  <37.685791, 42.939449, 18.457916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885765, 42.892906, 17.781277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505180, 43.015785, 17.773825>,  <37.276829, 43.089512, 17.769354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505180, 43.015785, 17.773825>,  <37.885765, 42.892906, 17.781277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505180, 43.015785, 17.773825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251088, 0.739817, -0.624200,
		-0.177973, -0.598581, -0.781042,
		-0.951463, 0.307201, -0.018629,
		37.219742, 43.107944, 17.768236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806526, 43.142658, 17.058132>,  <37.885765, 42.892906, 17.781277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806526, 43.142658, 17.058132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502747, 43.300358, 17.265135>,  <37.320480, 43.394978, 17.389338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502747, 43.300358, 17.265135>,  <37.806526, 43.142658, 17.058132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502747, 43.300358, 17.265135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022579, 0.779014, -0.626600,
		-0.650180, -0.487552, -0.582716,
		-0.759444, 0.394246, 0.517508,
		37.274914, 43.418633, 17.420387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330315, 43.570961, 16.594646>,  <37.806526, 43.142658, 17.058132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330315, 43.570961, 16.594646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158764, 43.658718, 16.945173>,  <37.055832, 43.711372, 17.155489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158764, 43.658718, 16.945173>,  <37.330315, 43.570961, 16.594646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158764, 43.658718, 16.945173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432795, 0.801584, -0.412494,
		-0.792940, -0.556175, -0.248828,
		-0.428875, 0.219392, 0.876318,
		37.030102, 43.724537, 17.208069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572899, 43.420322, 16.663095>,  <37.330315, 43.570961, 16.594646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572899, 43.420322, 16.663095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647221, 43.714668, 16.923552>,  <36.691814, 43.891273, 17.079826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647221, 43.714668, 16.923552>,  <36.572899, 43.420322, 16.663095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647221, 43.714668, 16.923552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740633, 0.540366, -0.399333,
		-0.645708, -0.408060, 0.645405,
		0.185804, 0.735861, 0.651142,
		36.702961, 43.935425, 17.118895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922596, 43.596077, 16.952675>,  <36.572899, 43.420322, 16.663095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922596, 43.596077, 16.952675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186623, 43.894596, 16.986967>,  <36.345039, 44.073708, 17.007544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186623, 43.894596, 16.986967>,  <35.922596, 43.596077, 16.952675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186623, 43.894596, 16.986967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706046, 0.655311, -0.268454,
		-0.256527, 0.116667, 0.959470,
		0.660071, 0.746295, 0.085732,
		36.384644, 44.118484, 17.012688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462448, 44.055145, 17.007328>,  <35.922596, 43.596077, 16.952675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462448, 44.055145, 17.007328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796204, 44.268208, 16.950642>,  <35.996456, 44.396042, 16.916630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796204, 44.268208, 16.950642>,  <35.462448, 44.055145, 17.007328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796204, 44.268208, 16.950642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539169, 0.735380, -0.410503,
		-0.114441, 0.418926, 0.900780,
		0.834386, 0.532651, -0.141714,
		36.046520, 44.428001, 16.908127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332104, 44.654636, 17.201054>,  <35.462448, 44.055145, 17.007328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332104, 44.654636, 17.201054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621635, 44.692390, 16.927658>,  <35.795357, 44.715042, 16.763620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621635, 44.692390, 16.927658>,  <35.332104, 44.654636, 17.201054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621635, 44.692390, 16.927658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498947, 0.755813, -0.424026,
		0.476567, 0.647949, 0.594177,
		0.723834, 0.094386, -0.683488,
		35.838787, 44.720707, 16.722612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619652, 45.315662, 17.205172>,  <35.332104, 44.654636, 17.201054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619652, 45.315662, 17.205172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665440, 45.140251, 16.848612>,  <35.692913, 45.035004, 16.634676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665440, 45.140251, 16.848612>,  <35.619652, 45.315662, 17.205172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665440, 45.140251, 16.848612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704931, 0.596386, -0.383922,
		0.699977, 0.672323, -0.240860,
		0.114474, -0.438527, -0.891398,
		35.699783, 45.008694, 16.581192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581886, 46.085003, 17.229921>,  <35.619652, 45.315662, 17.205172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581886, 46.085003, 17.229921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769917, 46.434711, 17.278376>,  <35.882732, 46.644539, 17.307447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769917, 46.434711, 17.278376>,  <35.581886, 46.085003, 17.229921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769917, 46.434711, 17.278376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351046, 0.311114, -0.883162,
		-0.809813, 0.372627, 0.453157,
		0.470073, 0.874275, 0.121135,
		35.910938, 46.696995, 17.314716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167751, 46.647896, 17.011595>,  <35.581886, 46.085003, 17.229921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167751, 46.647896, 17.011595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527195, 46.821728, 16.987459>,  <35.742863, 46.926029, 16.972977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527195, 46.821728, 16.987459>,  <35.167751, 46.647896, 17.011595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527195, 46.821728, 16.987459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148500, 0.171844, -0.973867,
		-0.412856, 0.884086, 0.218957,
		0.898609, 0.434581, -0.060340,
		35.796776, 46.952103, 16.969357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745537, 46.515564, 16.553965>,  <35.167751, 46.647896, 17.011595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745537, 46.515564, 16.553965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624073, 46.605103, 16.183519>,  <35.551193, 46.658825, 15.961252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624073, 46.605103, 16.183519>,  <35.745537, 46.515564, 16.553965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624073, 46.605103, 16.183519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391315, -0.856946, -0.335434,
		-0.868714, -0.464259, 0.172625,
		-0.303659, 0.223846, -0.926113,
		35.532974, 46.672256, 15.905685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361771, 46.595757, 16.024948>,  <35.745537, 46.515564, 16.553965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361771, 46.595757, 16.024948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295979, 46.979763, 16.115561>,  <36.256504, 47.210167, 16.169928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295979, 46.979763, 16.115561>,  <36.361771, 46.595757, 16.024948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295979, 46.979763, 16.115561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194751, -0.193532, 0.961570,
		0.966963, 0.202278, -0.155131,
		-0.164482, 0.960015, 0.226533,
		36.246635, 47.267769, 16.183519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950245, 46.941334, 16.237457>,  <36.361771, 46.595757, 16.024948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950245, 46.941334, 16.237457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607239, 47.069538, 16.398422>,  <36.401436, 47.146461, 16.495001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607239, 47.069538, 16.398422>,  <36.950245, 46.941334, 16.237457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607239, 47.069538, 16.398422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326661, -0.265070, 0.907210,
		0.397437, 0.909402, 0.122604,
		-0.857518, 0.320509, 0.402415,
		36.349983, 47.165691, 16.519146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007019, 47.423561, 16.902029>,  <36.950245, 46.941334, 16.237457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007019, 47.423561, 16.902029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640179, 47.265148, 16.920292>,  <36.420074, 47.170101, 16.931250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640179, 47.265148, 16.920292>,  <37.007019, 47.423561, 16.902029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640179, 47.265148, 16.920292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134874, -0.200455, 0.970375,
		-0.375145, 0.896090, 0.237251,
		-0.917102, -0.396030, 0.045660,
		36.365047, 47.146339, 16.933990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675831, 47.721886, 17.504587>,  <37.007019, 47.423561, 16.902029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675831, 47.721886, 17.504587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544769, 47.356575, 17.407785>,  <36.466133, 47.137386, 17.349705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544769, 47.356575, 17.407785>,  <36.675831, 47.721886, 17.504587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544769, 47.356575, 17.407785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171087, -0.309261, 0.935461,
		-0.929180, 0.265101, 0.257580,
		-0.327650, -0.913280, -0.242003,
		36.446476, 47.082592, 17.335184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257923, 47.604454, 18.115503>,  <36.675831, 47.721886, 17.504587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257923, 47.604454, 18.115503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326103, 47.254284, 17.934582>,  <36.367012, 47.044182, 17.826029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326103, 47.254284, 17.934582>,  <36.257923, 47.604454, 18.115503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326103, 47.254284, 17.934582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159332, -0.428494, 0.889385,
		-0.972398, -0.223667, 0.066444,
		0.170455, -0.875424, -0.452304,
		36.377239, 46.991657, 17.798891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808479, 47.147102, 18.452171>,  <36.257923, 47.604454, 18.115503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808479, 47.147102, 18.452171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119438, 46.938065, 18.312145>,  <36.306015, 46.812641, 18.228130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119438, 46.938065, 18.312145>,  <35.808479, 47.147102, 18.452171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119438, 46.938065, 18.312145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095330, -0.452223, 0.886796,
		-0.621739, -0.722768, -0.301740,
		0.777401, -0.522591, -0.350066,
		36.352657, 46.781288, 18.207125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609581, 46.420826, 18.458462>,  <35.808479, 47.147102, 18.452171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609581, 46.420826, 18.458462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009491, 46.427284, 18.452944>,  <36.249435, 46.431160, 18.449633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009491, 46.427284, 18.452944>,  <35.609581, 46.420826, 18.458462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009491, 46.427284, 18.452944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021083, -0.677615, 0.735115,
		0.002520, -0.735240, -0.677802,
		0.999775, 0.016143, -0.013793,
		36.309422, 46.432125, 18.448807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739140, 45.765545, 18.569822>,  <35.609581, 46.420826, 18.458462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739140, 45.765545, 18.569822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083408, 45.947056, 18.662199>,  <36.289970, 46.055962, 18.717625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083408, 45.947056, 18.662199>,  <35.739140, 45.765545, 18.569822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083408, 45.947056, 18.662199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154116, -0.664461, 0.731259,
		0.485282, -0.593780, -0.641815,
		0.860668, 0.453781, 0.230940,
		36.341610, 46.083191, 18.731482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341084, 45.236885, 18.676817>,  <35.739140, 45.765545, 18.569822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341084, 45.236885, 18.676817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469688, 45.570774, 18.855640>,  <36.546852, 45.771107, 18.962934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469688, 45.570774, 18.855640>,  <36.341084, 45.236885, 18.676817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469688, 45.570774, 18.855640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282112, -0.535128, 0.796273,
		0.903903, -0.129892, -0.407538,
		0.321515, 0.834725, 0.447060,
		36.566143, 45.821190, 18.989758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019684, 45.047523, 18.913799>,  <36.341084, 45.236885, 18.676817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019684, 45.047523, 18.913799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930714, 45.376575, 19.123108>,  <36.877331, 45.574005, 19.248693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930714, 45.376575, 19.123108>,  <37.019684, 45.047523, 18.913799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930714, 45.376575, 19.123108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372539, -0.424274, 0.825352,
		0.900967, 0.378517, -0.212092,
		-0.222425, 0.822627, 0.523270,
		36.863987, 45.623363, 19.280088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515533, 45.037075, 19.372683>,  <37.019684, 45.047523, 18.913799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515533, 45.037075, 19.372683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260307, 45.293648, 19.543062>,  <37.107170, 45.447594, 19.645290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260307, 45.293648, 19.543062>,  <37.515533, 45.037075, 19.372683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260307, 45.293648, 19.543062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175240, -0.417702, 0.891525,
		0.749776, 0.643494, 0.154115,
		-0.638065, 0.641436, 0.425949,
		37.068890, 45.486080, 19.670847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846535, 45.275600, 20.046587>,  <37.515533, 45.037075, 19.372683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846535, 45.275600, 20.046587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454353, 45.337227, 20.095526>,  <37.219044, 45.374203, 20.124889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454353, 45.337227, 20.095526>,  <37.846535, 45.275600, 20.046587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454353, 45.337227, 20.095526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047734, -0.417015, 0.907645,
		0.190856, 0.895747, 0.401511,
		-0.980457, 0.154064, 0.122348,
		37.160217, 45.383446, 20.132231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727741, 45.344162, 20.784992>,  <37.846535, 45.275600, 20.046587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727741, 45.344162, 20.784992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369869, 45.286934, 20.615717>,  <37.155148, 45.252598, 20.514153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369869, 45.286934, 20.615717>,  <37.727741, 45.344162, 20.784992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369869, 45.286934, 20.615717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274619, -0.571030, 0.773634,
		-0.352333, 0.808367, 0.471598,
		-0.894676, -0.143067, -0.423186,
		37.101467, 45.244015, 20.488762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243950, 45.542789, 21.281013>,  <37.727741, 45.344162, 20.784992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243950, 45.542789, 21.281013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053402, 45.288338, 21.038225>,  <36.939075, 45.135666, 20.892551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053402, 45.288338, 21.038225>,  <37.243950, 45.542789, 21.281013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053402, 45.288338, 21.038225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283421, -0.542386, 0.790879,
		-0.832314, 0.548778, 0.078083,
		-0.476368, -0.636129, -0.606970,
		36.910492, 45.097500, 20.856134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618919, 45.499985, 21.552057>,  <37.243950, 45.542789, 21.281013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618919, 45.499985, 21.552057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647423, 45.161510, 21.340818>,  <36.664524, 44.958424, 21.214075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647423, 45.161510, 21.340818>,  <36.618919, 45.499985, 21.552057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647423, 45.161510, 21.340818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274510, -0.525635, 0.805203,
		-0.958940, 0.087587, -0.269746,
		0.071263, -0.846189, -0.528096,
		36.668800, 44.907654, 21.182390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070686, 45.257000, 21.783983>,  <36.618919, 45.499985, 21.552057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070686, 45.257000, 21.783983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225815, 44.935486, 21.603525>,  <36.318890, 44.742577, 21.495251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225815, 44.935486, 21.603525>,  <36.070686, 45.257000, 21.783983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225815, 44.935486, 21.603525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251118, -0.563073, 0.787330,
		-0.886869, -0.192051, -0.420214,
		0.387819, -0.803782, -0.451144,
		36.342159, 44.694351, 21.468182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609753, 44.682907, 21.862932>,  <36.070686, 45.257000, 21.783983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609753, 44.682907, 21.862932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941845, 44.485603, 21.759081>,  <36.141102, 44.367222, 21.696770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941845, 44.485603, 21.759081>,  <35.609753, 44.682907, 21.862932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941845, 44.485603, 21.759081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286362, -0.777035, 0.560547,
		-0.478237, -0.391037, -0.786371,
		0.830233, -0.493262, -0.259629,
		36.190914, 44.337624, 21.681192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518440, 44.018181, 21.566257>,  <35.609753, 44.682907, 21.862932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518440, 44.018181, 21.566257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884041, 43.980221, 21.724043>,  <36.103401, 43.957443, 21.818714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884041, 43.980221, 21.724043>,  <35.518440, 44.018181, 21.566257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884041, 43.980221, 21.724043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364494, -0.619087, 0.695612,
		0.178190, -0.779567, -0.600436,
		0.913998, -0.094904, 0.394462,
		36.158241, 43.951748, 21.842382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406414, 43.379368, 21.805901>,  <35.518440, 44.018181, 21.566257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406414, 43.379368, 21.805901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729359, 43.531235, 21.986578>,  <35.923126, 43.622356, 22.094984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729359, 43.531235, 21.986578>,  <35.406414, 43.379368, 21.805901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729359, 43.531235, 21.986578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152075, -0.605753, 0.780984,
		0.570128, -0.699225, -0.431322,
		0.807358, 0.379667, 0.451691,
		35.971565, 43.645134, 22.122086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752323, 42.842178, 22.136497>,  <35.406414, 43.379368, 21.805901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752323, 42.842178, 22.136497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910625, 43.161587, 22.317932>,  <36.005608, 43.353233, 22.426792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910625, 43.161587, 22.317932>,  <35.752323, 42.842178, 22.136497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910625, 43.161587, 22.317932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069909, -0.466283, 0.881869,
		0.915692, -0.380713, -0.128709,
		0.395754, 0.798522, 0.453587,
		36.029350, 43.401142, 22.454008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265060, 42.607155, 22.682390>,  <35.752323, 42.842178, 22.136497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265060, 42.607155, 22.682390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161327, 42.979866, 22.784012>,  <36.099087, 43.203491, 22.844986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161327, 42.979866, 22.784012>,  <36.265060, 42.607155, 22.682390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161327, 42.979866, 22.784012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233861, -0.315811, 0.919550,
		0.937047, 0.179053, 0.299805,
		-0.259330, 0.931774, 0.254056,
		36.083527, 43.259399, 22.860229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618511, 42.629063, 23.275606>,  <36.265060, 42.607155, 22.682390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618511, 42.629063, 23.275606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349300, 42.924847, 23.281778>,  <36.187775, 43.102318, 23.285482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349300, 42.924847, 23.281778>,  <36.618511, 42.629063, 23.275606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349300, 42.924847, 23.281778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216782, -0.217169, 0.951758,
		0.707138, 0.637210, 0.306462,
		-0.673024, 0.739460, 0.015433,
		36.147392, 43.146683, 23.286407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795818, 43.037094, 23.819225>,  <36.618511, 42.629063, 23.275606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795818, 43.037094, 23.819225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409073, 43.108955, 23.746679>,  <36.177025, 43.152073, 23.703152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409073, 43.108955, 23.746679>,  <36.795818, 43.037094, 23.819225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409073, 43.108955, 23.746679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203883, -0.115894, 0.972111,
		0.153622, 0.976880, 0.148682,
		-0.966867, 0.179651, -0.181366,
		36.119011, 43.162849, 23.692270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626957, 43.452396, 24.346325>,  <36.795818, 43.037094, 23.819225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626957, 43.452396, 24.346325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278790, 43.297760, 24.224390>,  <36.069889, 43.204979, 24.151230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278790, 43.297760, 24.224390>,  <36.626957, 43.452396, 24.346325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278790, 43.297760, 24.224390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282206, -0.115570, 0.952367,
		-0.403410, 0.914980, -0.008505,
		-0.870414, -0.386594, -0.304835,
		36.017666, 43.181782, 24.132940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117996, 43.741982, 24.806847>,  <36.626957, 43.452396, 24.346325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117996, 43.741982, 24.806847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967091, 43.402203, 24.659275>,  <35.876545, 43.198334, 24.570732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967091, 43.402203, 24.659275>,  <36.117996, 43.741982, 24.806847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967091, 43.402203, 24.659275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294574, -0.267611, 0.917393,
		-0.878006, 0.454780, -0.149264,
		-0.377268, -0.849447, -0.368930,
		35.853909, 43.147369, 24.548595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614803, 43.592293, 25.275114>,  <36.117996, 43.741982, 24.806847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614803, 43.592293, 25.275114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624538, 43.248478, 25.070915>,  <35.630379, 43.042191, 24.948395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624538, 43.248478, 25.070915>,  <35.614803, 43.592293, 25.275114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624538, 43.248478, 25.070915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290379, -0.494713, 0.819109,
		-0.956602, 0.128300, -0.261633,
		0.024342, -0.859534, -0.510499,
		35.631840, 42.990620, 24.917765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035477, 43.225220, 25.541101>,  <35.614803, 43.592293, 25.275114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035477, 43.225220, 25.541101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243103, 42.923405, 25.380478>,  <35.367680, 42.742317, 25.284103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243103, 42.923405, 25.380478>,  <35.035477, 43.225220, 25.541101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243103, 42.923405, 25.380478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304591, -0.602251, 0.737914,
		-0.798620, -0.260715, -0.542433,
		0.519066, -0.754534, -0.401559,
		35.398823, 42.697044, 25.260010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610092, 42.689804, 25.472980>,  <35.035477, 43.225220, 25.541101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610092, 42.689804, 25.472980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973732, 42.523933, 25.488871>,  <35.191917, 42.424412, 25.498405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973732, 42.523933, 25.488871>,  <34.610092, 42.689804, 25.472980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973732, 42.523933, 25.488871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360008, -0.734086, 0.575771,
		-0.209596, -0.537736, -0.816645,
		0.909101, -0.414678, 0.039728,
		35.246464, 42.399529, 25.500790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663490, 41.903976, 25.307619>,  <34.610092, 42.689804, 25.472980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663490, 41.903976, 25.307619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988777, 41.973946, 25.529640>,  <35.183949, 42.015926, 25.662853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988777, 41.973946, 25.529640>,  <34.663490, 41.903976, 25.307619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988777, 41.973946, 25.529640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213536, -0.797549, 0.564197,
		0.541374, -0.577337, -0.611225,
		0.813214, 0.174923, 0.555054,
		35.232742, 42.026424, 25.696156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872345, 41.207027, 25.459604>,  <34.663490, 41.903976, 25.307619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872345, 41.207027, 25.459604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070625, 41.447975, 25.709862>,  <35.189594, 41.592545, 25.860016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070625, 41.447975, 25.709862>,  <34.872345, 41.207027, 25.459604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070625, 41.447975, 25.709862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048204, -0.738349, 0.672694,
		0.867154, -0.303297, -0.395037,
		0.495701, 0.602372, 0.625642,
		35.219337, 41.628685, 25.897554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456722, 40.818230, 25.816130>,  <34.872345, 41.207027, 25.459604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456722, 40.818230, 25.816130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378258, 41.123642, 26.062231>,  <35.331177, 41.306889, 26.209892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378258, 41.123642, 26.062231>,  <35.456722, 40.818230, 25.816130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378258, 41.123642, 26.062231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226258, -0.645759, 0.729248,
		0.954110, 0.003847, 0.299431,
		-0.196165, 0.763532, 0.615255,
		35.319408, 41.352703, 26.246807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742577, 40.596310, 26.471746>,  <35.456722, 40.818230, 25.816130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742577, 40.596310, 26.471746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479927, 40.889751, 26.541798>,  <35.322338, 41.065815, 26.583828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479927, 40.889751, 26.541798>,  <35.742577, 40.596310, 26.471746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479927, 40.889751, 26.541798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319075, -0.480592, 0.816837,
		0.683398, 0.480477, 0.549644,
		-0.656626, 0.733603, 0.175127,
		35.282940, 41.109833, 26.594336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772289, 40.746117, 27.168756>,  <35.742577, 40.596310, 26.471746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772289, 40.746117, 27.168756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428173, 40.922138, 27.065802>,  <35.221703, 41.027752, 27.004028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428173, 40.922138, 27.065802>,  <35.772289, 40.746117, 27.168756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428173, 40.922138, 27.065802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401581, -0.273937, 0.873894,
		0.314051, 0.855168, 0.412382,
		-0.860294, 0.440052, -0.257389,
		35.170086, 41.054153, 26.988585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606899, 41.225193, 27.726616>,  <35.772289, 40.746117, 27.168756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606899, 41.225193, 27.726616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255089, 41.174023, 27.543285>,  <35.044003, 41.143322, 27.433287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255089, 41.174023, 27.543285>,  <35.606899, 41.225193, 27.726616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255089, 41.174023, 27.543285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444711, -0.121707, 0.887367,
		-0.169299, 0.984288, 0.050155,
		-0.879528, -0.127926, -0.458328,
		34.991230, 41.135647, 27.405787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071838, 41.629787, 28.104712>,  <35.606899, 41.225193, 27.726616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071838, 41.629787, 28.104712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862919, 41.359035, 27.897236>,  <34.737568, 41.196587, 27.772751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862919, 41.359035, 27.897236>,  <35.071838, 41.629787, 28.104712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862919, 41.359035, 27.897236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423012, -0.322485, 0.846797,
		-0.740447, 0.661695, -0.117892,
		-0.522303, -0.676878, -0.518688,
		34.706226, 41.155972, 27.741629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386967, 41.691498, 28.335316>,  <35.071838, 41.629787, 28.104712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386967, 41.691498, 28.335316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432362, 41.334858, 28.159969>,  <34.459599, 41.120872, 28.054762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432362, 41.334858, 28.159969>,  <34.386967, 41.691498, 28.335316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432362, 41.334858, 28.159969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431148, -0.441705, 0.786771,
		-0.895116, 0.099711, -0.434541,
		0.113489, -0.891602, -0.438367,
		34.466408, 41.067379, 28.028460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717922, 41.382469, 28.330610>,  <34.386967, 41.691498, 28.335316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717922, 41.382469, 28.330610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996937, 41.096413, 28.312647>,  <34.164345, 40.924778, 28.301868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996937, 41.096413, 28.312647>,  <33.717922, 41.382469, 28.330610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996937, 41.096413, 28.312647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383995, -0.425981, 0.819200,
		-0.604976, -0.554174, -0.571747,
		0.697533, -0.715144, -0.044909,
		34.206196, 40.881870, 28.299175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468826, 40.698395, 28.483706>,  <33.717922, 41.382469, 28.330610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468826, 40.698395, 28.483706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859413, 40.676884, 28.567244>,  <34.093765, 40.663975, 28.617367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859413, 40.676884, 28.567244>,  <33.468826, 40.698395, 28.483706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859413, 40.676884, 28.567244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215418, -0.289091, 0.932750,
		0.010213, -0.955790, -0.293873,
		0.976468, -0.053780, 0.208847,
		34.152355, 40.660751, 28.629898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529869, 40.188133, 29.048931>,  <33.468826, 40.698395, 28.483706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529869, 40.188133, 29.048931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910004, 40.309963, 29.074547>,  <34.138084, 40.383060, 29.089916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910004, 40.309963, 29.074547>,  <33.529869, 40.188133, 29.048931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910004, 40.309963, 29.074547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031236, -0.298052, 0.954038,
		0.309662, -0.904654, -0.292763,
		0.950333, 0.304575, 0.064037,
		34.195103, 40.401337, 29.093758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817593, 39.672482, 29.358503>,  <33.529869, 40.188133, 29.048931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817593, 39.672482, 29.358503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067036, 39.982780, 29.397131>,  <34.216702, 40.168961, 29.420307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067036, 39.982780, 29.397131>,  <33.817593, 39.672482, 29.358503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067036, 39.982780, 29.397131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181321, -0.263699, 0.947410,
		0.760418, -0.573303, -0.305104,
		0.623608, 0.775749, 0.096570,
		34.254120, 40.215504, 29.426102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406406, 39.400444, 29.559195>,  <33.817593, 39.672482, 29.358503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406406, 39.400444, 29.559195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395367, 39.777428, 29.692465>,  <34.388744, 40.003620, 29.772427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395367, 39.777428, 29.692465>,  <34.406406, 39.400444, 29.559195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395367, 39.777428, 29.692465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290837, -0.311313, 0.904709,
		0.956375, 0.121865, -0.265511,
		-0.027596, 0.942461, 0.333174,
		34.387089, 40.060165, 29.792418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088100, 39.599487, 29.935143>,  <34.406406, 39.400444, 29.559195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088100, 39.599487, 29.935143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820892, 39.861370, 30.076624>,  <34.660568, 40.018501, 30.161512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820892, 39.861370, 30.076624>,  <35.088100, 39.599487, 29.935143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820892, 39.861370, 30.076624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398930, -0.086159, 0.912925,
		0.628173, 0.750956, -0.203627,
		-0.668022, 0.654708, 0.353702,
		34.620487, 40.057781, 30.182734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415314, 39.877819, 30.437637>,  <35.088100, 39.599487, 29.935143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415314, 39.877819, 30.437637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060356, 40.033855, 30.535910>,  <34.847382, 40.127476, 30.594873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060356, 40.033855, 30.535910>,  <35.415314, 39.877819, 30.437637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060356, 40.033855, 30.535910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301450, 0.087801, 0.949431,
		0.348794, 0.916580, -0.195507,
		-0.887395, 0.390092, 0.245679,
		34.794136, 40.150883, 30.609613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100182, 40.046223, 30.489861>,  <35.415314, 39.877819, 30.437637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100182, 40.046223, 30.489861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439190, 39.876434, 30.617315>,  <36.642593, 39.774559, 30.693789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439190, 39.876434, 30.617315>,  <36.100182, 40.046223, 30.489861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439190, 39.876434, 30.617315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518606, 0.534531, -0.667326,
		0.112942, 0.730820, 0.673161,
		0.847521, -0.424474, 0.318637,
		36.693447, 39.749092, 30.712906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592014, 40.605030, 30.581900>,  <36.100182, 40.046223, 30.489861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592014, 40.605030, 30.581900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818043, 40.276169, 30.554319>,  <36.953659, 40.078850, 30.537771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818043, 40.276169, 30.554319>,  <36.592014, 40.605030, 30.581900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818043, 40.276169, 30.554319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509826, 0.413666, -0.754293,
		0.648668, 0.391077, 0.652907,
		0.565073, -0.822155, -0.068951,
		36.987564, 40.029522, 30.533634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193123, 40.923561, 30.507580>,  <36.592014, 40.605030, 30.581900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193123, 40.923561, 30.507580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310230, 40.553276, 30.411800>,  <37.380497, 40.331104, 30.354332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310230, 40.553276, 30.411800>,  <37.193123, 40.923561, 30.507580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310230, 40.553276, 30.411800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556635, 0.368618, -0.744498,
		0.777459, 0.084682, 0.623207,
		0.292770, -0.925716, -0.239448,
		37.398060, 40.275562, 30.339966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883514, 40.869476, 30.412743>,  <37.193123, 40.923561, 30.507580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883514, 40.869476, 30.412743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763371, 40.567249, 30.179882>,  <37.691284, 40.385914, 30.040165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763371, 40.567249, 30.179882>,  <37.883514, 40.869476, 30.412743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763371, 40.567249, 30.179882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479688, 0.407879, -0.776875,
		0.824429, -0.512595, 0.239925,
		-0.300362, -0.755567, -0.582152,
		37.673264, 40.340580, 30.005236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448120, 40.759289, 30.063307>,  <37.883514, 40.869476, 30.412743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448120, 40.759289, 30.063307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157909, 40.595631, 29.841963>,  <37.983784, 40.497437, 29.709156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157909, 40.595631, 29.841963>,  <38.448120, 40.759289, 30.063307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157909, 40.595631, 29.841963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374867, 0.439359, -0.816357,
		0.577135, -0.799726, -0.165390,
		-0.725527, -0.409149, -0.553360,
		37.940250, 40.472885, 29.675955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784790, 40.267563, 29.460348>,  <38.448120, 40.759289, 30.063307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784790, 40.267563, 29.460348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426510, 40.329762, 29.293713>,  <38.211544, 40.367081, 29.193731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426510, 40.329762, 29.293713>,  <38.784790, 40.267563, 29.460348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426510, 40.329762, 29.293713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444388, 0.346056, -0.826296,
		0.015673, -0.925238, -0.379063,
		-0.895697, 0.155501, -0.416588,
		38.157799, 40.376411, 29.168736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861938, 39.976318, 28.855373>,  <38.784790, 40.267563, 29.460348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861938, 39.976318, 28.855373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552540, 40.225552, 28.808935>,  <38.366901, 40.375092, 28.781073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552540, 40.225552, 28.808935>,  <38.861938, 39.976318, 28.855373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552540, 40.225552, 28.808935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333931, 0.244946, -0.910215,
		-0.538699, -0.742814, -0.397530,
		-0.773494, 0.623080, -0.116096,
		38.320492, 40.412476, 28.774107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573643, 39.862720, 28.227163>,  <38.861938, 39.976318, 28.855373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573643, 39.862720, 28.227163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433331, 40.230705, 28.297155>,  <38.349144, 40.451496, 28.339149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433331, 40.230705, 28.297155>,  <38.573643, 39.862720, 28.227163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433331, 40.230705, 28.297155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300571, 0.287570, -0.909374,
		-0.886912, -0.266394, -0.377388,
		-0.350777, 0.919966, 0.174979,
		38.328098, 40.506695, 28.349649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361252, 40.114281, 27.508907>,  <38.573643, 39.862720, 28.227163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361252, 40.114281, 27.508907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346889, 40.433430, 27.749611>,  <38.338272, 40.624920, 27.894033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346889, 40.433430, 27.749611>,  <38.361252, 40.114281, 27.508907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346889, 40.433430, 27.749611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279099, 0.586192, -0.760581,
		-0.959591, 0.140643, -0.243731,
		-0.035903, 0.797871, 0.601757,
		38.336117, 40.672791, 27.930138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909184, 40.529560, 27.277035>,  <38.361252, 40.114281, 27.508907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909184, 40.529560, 27.277035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151108, 40.766872, 27.489532>,  <38.296261, 40.909260, 27.617031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151108, 40.766872, 27.489532>,  <37.909184, 40.529560, 27.277035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151108, 40.766872, 27.489532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236837, 0.502903, -0.831262,
		-0.760337, 0.628575, 0.163650,
		0.604811, 0.593281, 0.531245,
		38.332550, 40.944859, 27.648907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777435, 41.171612, 27.027704>,  <37.909184, 40.529560, 27.277035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777435, 41.171612, 27.027704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134491, 41.200680, 27.205658>,  <38.348724, 41.218121, 27.312431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134491, 41.200680, 27.205658>,  <37.777435, 41.171612, 27.027704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134491, 41.200680, 27.205658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327137, 0.574575, -0.750231,
		-0.310137, 0.815220, 0.489113,
		0.892635, 0.072668, 0.444885,
		38.402283, 41.222481, 27.339123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006657, 41.914967, 27.016718>,  <37.777435, 41.171612, 27.027704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006657, 41.914967, 27.016718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355679, 41.732475, 27.086578>,  <38.565090, 41.622978, 27.128494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355679, 41.732475, 27.086578>,  <38.006657, 41.914967, 27.016718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355679, 41.732475, 27.086578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438872, 0.575049, -0.690442,
		0.214569, 0.679097, 0.701988,
		0.872554, -0.456231, 0.174649,
		38.617443, 41.595608, 27.138973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486557, 42.501896, 27.075119>,  <38.006657, 41.914967, 27.016718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486557, 42.501896, 27.075119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673027, 42.161491, 26.978413>,  <38.784908, 41.957249, 26.920389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673027, 42.161491, 26.978413>,  <38.486557, 42.501896, 27.075119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673027, 42.161491, 26.978413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433026, 0.457799, -0.776472,
		0.771470, 0.257283, 0.581928,
		0.466179, -0.851014, -0.241768,
		38.812881, 41.906189, 26.905882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314587, 42.610081, 27.052851>,  <38.486557, 42.501896, 27.075119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314587, 42.610081, 27.052851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139145, 42.341148, 26.814322>,  <39.033878, 42.179790, 26.671204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139145, 42.341148, 26.814322>,  <39.314587, 42.610081, 27.052851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139145, 42.341148, 26.814322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294581, 0.519332, -0.802195,
		0.849027, -0.527512, -0.029726,
		-0.438605, -0.672328, -0.596322,
		39.007565, 42.139450, 26.635426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566345, 42.763260, 26.382702>,  <39.314587, 42.610081, 27.052851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566345, 42.763260, 26.382702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308922, 42.484543, 26.256012>,  <39.154469, 42.317310, 26.179998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308922, 42.484543, 26.256012>,  <39.566345, 42.763260, 26.382702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308922, 42.484543, 26.256012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135572, 0.303485, -0.943142,
		0.753298, -0.649902, -0.100843,
		-0.643555, -0.696796, -0.316723,
		39.115856, 42.275505, 26.160995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810814, 42.572899, 25.768824>,  <39.566345, 42.763260, 26.382702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810814, 42.572899, 25.768824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444458, 42.414040, 25.745449>,  <39.224644, 42.318726, 25.731424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444458, 42.414040, 25.745449>,  <39.810814, 42.572899, 25.768824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444458, 42.414040, 25.745449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041327, 0.051510, -0.997817,
		0.399287, -0.916310, -0.030765,
		-0.915894, -0.397144, -0.058435,
		39.169689, 42.294895, 25.727919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909046, 42.032578, 25.296865>,  <39.810814, 42.572899, 25.768824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909046, 42.032578, 25.296865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523258, 42.132999, 25.329769>,  <39.291786, 42.193253, 25.349512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523258, 42.132999, 25.329769>,  <39.909046, 42.032578, 25.296865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523258, 42.132999, 25.329769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026001, 0.219657, -0.975231,
		-0.262903, -0.942721, -0.205325,
		-0.964472, 0.251052, 0.082260,
		39.233917, 42.208317, 25.354446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468376, 41.599632, 24.779560>,  <39.909046, 42.032578, 25.296865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468376, 41.599632, 24.779560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266335, 41.935757, 24.858297>,  <39.145107, 42.137432, 24.905540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266335, 41.935757, 24.858297>,  <39.468376, 41.599632, 24.779560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266335, 41.935757, 24.858297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073633, 0.185289, -0.979921,
		-0.859909, -0.509461, -0.031717,
		-0.505108, 0.840308, 0.196845,
		39.114803, 42.187851, 24.917351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042408, 41.607155, 24.244057>,  <39.468376, 41.599632, 24.779560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042408, 41.607155, 24.244057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024208, 41.981133, 24.384802>,  <39.013287, 42.205521, 24.469250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024208, 41.981133, 24.384802>,  <39.042408, 41.607155, 24.244057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024208, 41.981133, 24.384802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035074, 0.350515, -0.935900,
		-0.998348, -0.054928, 0.016842,
		-0.045503, 0.934945, 0.351863,
		39.010555, 42.261616, 24.490360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577957, 41.996914, 23.854683>,  <39.042408, 41.607155, 24.244057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577957, 41.996914, 23.854683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793552, 42.295387, 24.010994>,  <38.922909, 42.474472, 24.104780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793552, 42.295387, 24.010994>,  <38.577957, 41.996914, 23.854683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793552, 42.295387, 24.010994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113693, 0.524132, -0.844014,
		-0.834608, 0.410481, 0.367335,
		0.538984, 0.746184, 0.390776,
		38.955246, 42.519241, 24.128227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114803, 42.565151, 23.862696>,  <38.577957, 41.996914, 23.854683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114803, 42.565151, 23.862696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485714, 42.714722, 23.855276>,  <38.708260, 42.804462, 23.850824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485714, 42.714722, 23.855276>,  <38.114803, 42.565151, 23.862696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485714, 42.714722, 23.855276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221418, 0.507787, -0.832542,
		-0.301891, 0.776101, 0.553651,
		0.927273, 0.373925, -0.018547,
		38.763897, 42.826900, 23.849712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988480, 43.265636, 23.818279>,  <38.114803, 42.565151, 23.862696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988480, 43.265636, 23.818279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351334, 43.158382, 23.688530>,  <38.569046, 43.094032, 23.610682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351334, 43.158382, 23.688530>,  <37.988480, 43.265636, 23.818279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351334, 43.158382, 23.688530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151900, 0.510195, -0.846538,
		0.392476, 0.817195, 0.422085,
		0.907132, -0.268131, -0.324372,
		38.623474, 43.077942, 23.591219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276592, 43.863438, 23.564655>,  <37.988480, 43.265636, 23.818279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276592, 43.863438, 23.564655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503788, 43.580151, 23.396936>,  <38.640106, 43.410179, 23.296305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503788, 43.580151, 23.396936>,  <38.276592, 43.863438, 23.564655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503788, 43.580151, 23.396936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054323, 0.476083, -0.877721,
		0.821242, 0.521313, 0.231937,
		0.567988, -0.708222, -0.419299,
		38.674183, 43.367683, 23.271147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751106, 44.286827, 23.279308>,  <38.276592, 43.863438, 23.564655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751106, 44.286827, 23.279308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771595, 43.943317, 23.075394>,  <38.783890, 43.737209, 22.953045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771595, 43.943317, 23.075394>,  <38.751106, 44.286827, 23.279308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771595, 43.943317, 23.075394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057345, 0.507083, -0.859987,
		0.997039, 0.073284, -0.023272,
		0.051222, -0.858776, -0.509785,
		38.786961, 43.685684, 22.922459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299141, 44.385151, 22.807837>,  <38.751106, 44.286827, 23.279308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299141, 44.385151, 22.807837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134193, 44.060059, 22.643198>,  <39.035225, 43.865002, 22.544415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134193, 44.060059, 22.643198>,  <39.299141, 44.385151, 22.807837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134193, 44.060059, 22.643198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078500, 0.418418, -0.904856,
		0.907627, -0.405448, -0.108745,
		-0.412373, -0.812735, -0.411595,
		39.010483, 43.816238, 22.519720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752785, 44.135315, 22.230152>,  <39.299141, 44.385151, 22.807837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752785, 44.135315, 22.230152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389626, 43.977543, 22.173389>,  <39.171730, 43.882877, 22.139332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389626, 43.977543, 22.173389>,  <39.752785, 44.135315, 22.230152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389626, 43.977543, 22.173389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068623, 0.194104, -0.978578,
		0.413530, -0.898190, -0.149160,
		-0.907901, -0.394435, -0.141905,
		39.117256, 43.859211, 22.130817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853428, 43.629742, 21.761681>,  <39.752785, 44.135315, 22.230152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853428, 43.629742, 21.761681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459118, 43.691235, 21.734503>,  <39.222530, 43.728130, 21.718197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459118, 43.691235, 21.734503>,  <39.853428, 43.629742, 21.761681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459118, 43.691235, 21.734503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099893, 0.210777, -0.972417,
		-0.135171, -0.965370, -0.223136,
		-0.985774, 0.153732, -0.067942,
		39.163387, 43.737354, 21.714121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632317, 43.262127, 21.226254>,  <39.853428, 43.629742, 21.761681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632317, 43.262127, 21.226254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362301, 43.552357, 21.279728>,  <39.200291, 43.726494, 21.311811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362301, 43.552357, 21.279728>,  <39.632317, 43.262127, 21.226254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362301, 43.552357, 21.279728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126187, 0.064983, -0.989876,
		-0.726913, -0.685071, 0.047692,
		-0.675036, 0.725572, 0.133684,
		39.159790, 43.770027, 21.319834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172859, 43.131771, 20.695726>,  <39.632317, 43.262127, 21.226254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172859, 43.131771, 20.695726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094925, 43.505306, 20.815718>,  <39.048164, 43.729427, 20.887712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094925, 43.505306, 20.815718>,  <39.172859, 43.131771, 20.695726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094925, 43.505306, 20.815718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043836, 0.297243, -0.953795,
		-0.979856, -0.198980, -0.016977,
		-0.194833, 0.933838, 0.299978,
		39.036476, 43.785458, 20.905710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568298, 43.299938, 20.359289>,  <39.172859, 43.131771, 20.695726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568298, 43.299938, 20.359289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759872, 43.638844, 20.451172>,  <38.874817, 43.842186, 20.506302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759872, 43.638844, 20.451172>,  <38.568298, 43.299938, 20.359289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759872, 43.638844, 20.451172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054195, 0.289708, -0.955580,
		-0.876174, 0.445215, 0.184670,
		0.478938, 0.847262, 0.229706,
		38.903553, 43.893021, 20.520084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191383, 43.825340, 19.840343>,  <38.568298, 43.299938, 20.359289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191383, 43.825340, 19.840343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519543, 44.001774, 19.985889>,  <38.716438, 44.107635, 20.073217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519543, 44.001774, 19.985889>,  <38.191383, 43.825340, 19.840343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519543, 44.001774, 19.985889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095833, 0.521284, -0.847985,
		-0.563710, 0.730553, 0.385388,
		0.820394, 0.441085, 0.363864,
		38.765659, 44.134098, 20.095049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219234, 44.487888, 19.535818>,  <38.191383, 43.825340, 19.840343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219234, 44.487888, 19.535818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598907, 44.457615, 19.658010>,  <38.826714, 44.439449, 19.731325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598907, 44.457615, 19.658010>,  <38.219234, 44.487888, 19.535818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598907, 44.457615, 19.658010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291540, 0.577040, -0.762908,
		-0.118533, 0.813201, 0.569784,
		0.949186, -0.075685, 0.305479,
		38.883663, 44.434910, 19.749655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542694, 45.157780, 19.506699>,  <38.219234, 44.487888, 19.535818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542694, 45.157780, 19.506699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850384, 44.902817, 19.488804>,  <39.035000, 44.749840, 19.478067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850384, 44.902817, 19.488804>,  <38.542694, 45.157780, 19.506699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850384, 44.902817, 19.488804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373084, 0.504873, -0.778403,
		0.518744, 0.582080, 0.626168,
		0.769229, -0.637406, -0.044735,
		39.081154, 44.711594, 19.475384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121723, 45.593651, 19.294048>,  <38.542694, 45.157780, 19.506699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121723, 45.593651, 19.294048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256668, 45.223537, 19.224720>,  <39.337635, 45.001469, 19.183123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256668, 45.223537, 19.224720>,  <39.121723, 45.593651, 19.294048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256668, 45.223537, 19.224720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505464, 0.333366, -0.795847,
		0.794163, 0.180879, 0.580162,
		0.337358, -0.925284, -0.173320,
		39.357876, 44.945953, 19.172724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913742, 45.625496, 19.204067>,  <39.121723, 45.593651, 19.294048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913742, 45.625496, 19.204067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761024, 45.310066, 19.011246>,  <39.669392, 45.120808, 18.895552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761024, 45.310066, 19.011246>,  <39.913742, 45.625496, 19.204067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761024, 45.310066, 19.011246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422299, 0.315097, -0.849928,
		0.822127, -0.528072, 0.212712,
		-0.381798, -0.788577, -0.482055,
		39.646484, 45.073494, 18.866629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439701, 45.335918, 18.934568>,  <39.913742, 45.625496, 19.204067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439701, 45.335918, 18.934568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157642, 45.169556, 18.704859>,  <39.988407, 45.069740, 18.567032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157642, 45.169556, 18.704859>,  <40.439701, 45.335918, 18.934568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157642, 45.169556, 18.704859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465668, 0.339134, -0.817399,
		0.534714, -0.843809, -0.045467,
		-0.705148, -0.415902, -0.574275,
		39.946098, 45.044785, 18.532576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764458, 44.973225, 18.412474>,  <40.439701, 45.335918, 18.934568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764458, 44.973225, 18.412474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404610, 45.022224, 18.244814>,  <40.188702, 45.051624, 18.144218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404610, 45.022224, 18.244814>,  <40.764458, 44.973225, 18.412474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404610, 45.022224, 18.244814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436495, 0.280465, -0.854875,
		0.012831, -0.952015, -0.305783,
		-0.899615, 0.122504, -0.419148,
		40.134724, 45.058975, 18.119070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906643, 44.648426, 17.780823>,  <40.764458, 44.973225, 18.412474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906643, 44.648426, 17.780823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158611, 44.348564, 17.699619>,  <41.309792, 44.168648, 17.650898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158611, 44.348564, 17.699619>,  <40.906643, 44.648426, 17.780823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158611, 44.348564, 17.699619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075916, -0.200704, 0.976706,
		-0.772942, -0.630657, -0.069516,
		0.629919, -0.749659, -0.203009,
		41.347588, 44.123665, 17.638716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610035, 44.070004, 18.100204>,  <40.906643, 44.648426, 17.780823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610035, 44.070004, 18.100204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000477, 44.000027, 18.048651>,  <41.234741, 43.958042, 18.017719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000477, 44.000027, 18.048651>,  <40.610035, 44.070004, 18.100204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000477, 44.000027, 18.048651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071194, -0.302917, 0.950354,
		-0.205292, -0.936824, -0.283226,
		0.976108, -0.174936, -0.128882,
		41.293308, 43.947544, 18.009985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758080, 43.346260, 18.383160>,  <40.610035, 44.070004, 18.100204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758080, 43.346260, 18.383160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110794, 43.533367, 18.359020>,  <41.322422, 43.645630, 18.344536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110794, 43.533367, 18.359020>,  <40.758080, 43.346260, 18.383160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110794, 43.533367, 18.359020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203498, -0.261899, 0.943397,
		0.425484, -0.844158, -0.326129,
		0.881789, 0.467767, -0.060351,
		41.375332, 43.673698, 18.340916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253590, 42.898407, 18.605778>,  <40.758080, 43.346260, 18.383160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253590, 42.898407, 18.605778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460995, 43.236050, 18.660383>,  <41.585438, 43.438633, 18.693146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460995, 43.236050, 18.660383>,  <41.253590, 42.898407, 18.605778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460995, 43.236050, 18.660383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323812, -0.341601, 0.882301,
		0.791386, -0.413278, -0.450455,
		0.518511, 0.844103, 0.136514,
		41.616547, 43.489281, 18.701338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820122, 42.709747, 18.799963>,  <41.253590, 42.898407, 18.605778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820122, 42.709747, 18.799963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836777, 43.087521, 18.930384>,  <41.846771, 43.314186, 19.008636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836777, 43.087521, 18.930384>,  <41.820122, 42.709747, 18.799963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836777, 43.087521, 18.930384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212328, -0.327243, 0.920776,
		0.976311, 0.030889, -0.214156,
		0.041640, 0.944435, 0.326050,
		41.849270, 43.370850, 19.028198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466530, 42.684605, 19.201921>,  <41.820122, 42.709747, 18.799963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466530, 42.684605, 19.201921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262455, 43.006729, 19.322708>,  <42.140011, 43.200005, 19.395180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262455, 43.006729, 19.322708>,  <42.466530, 42.684605, 19.201921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262455, 43.006729, 19.322708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153943, -0.259921, 0.953280,
		0.846176, 0.532834, 0.008635,
		-0.510184, 0.805313, 0.301965,
		42.109402, 43.248322, 19.413298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850071, 43.054958, 19.672617>,  <42.466530, 42.684605, 19.201921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850071, 43.054958, 19.672617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470207, 43.137676, 19.766754>,  <42.242290, 43.187305, 19.823236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470207, 43.137676, 19.766754>,  <42.850071, 43.054958, 19.672617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470207, 43.137676, 19.766754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176659, -0.266916, 0.947390,
		0.258730, 0.941272, 0.216947,
		-0.949658, 0.206793, 0.235344,
		42.185310, 43.199715, 19.837357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918743, 43.354870, 20.285789>,  <42.850071, 43.054958, 19.672617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918743, 43.354870, 20.285789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528191, 43.272305, 20.260284>,  <42.293858, 43.222763, 20.244982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528191, 43.272305, 20.260284>,  <42.918743, 43.354870, 20.285789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528191, 43.272305, 20.260284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032444, -0.431898, 0.901338,
		-0.213592, 0.877984, 0.428396,
		-0.976384, -0.206417, -0.063765,
		42.235275, 43.210381, 20.241156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645470, 43.522297, 21.014223>,  <42.918743, 43.354870, 20.285789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645470, 43.522297, 21.014223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351227, 43.301113, 20.857706>,  <42.174679, 43.168404, 20.763796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351227, 43.301113, 20.857706>,  <42.645470, 43.522297, 21.014223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351227, 43.301113, 20.857706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141086, -0.439905, 0.886893,
		-0.662549, 0.707614, 0.245584,
		-0.735611, -0.552962, -0.391293,
		42.130543, 43.135223, 20.740318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991386, 43.589935, 21.591349>,  <42.645470, 43.522297, 21.014223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991386, 43.589935, 21.591349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959030, 43.265617, 21.359463>,  <41.939617, 43.071026, 21.220331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959030, 43.265617, 21.359463>,  <41.991386, 43.589935, 21.591349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959030, 43.265617, 21.359463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065659, -0.576023, 0.814792,
		-0.994558, 0.103976, -0.006639,
		-0.080895, -0.810794, -0.579715,
		41.934761, 43.022381, 21.185549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493595, 43.130199, 21.927353>,  <41.991386, 43.589935, 21.591349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493595, 43.130199, 21.927353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696125, 42.889992, 21.679802>,  <41.817642, 42.745869, 21.531271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696125, 42.889992, 21.679802>,  <41.493595, 43.130199, 21.927353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696125, 42.889992, 21.679802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116459, -0.663478, 0.739076,
		-0.854443, -0.446287, -0.265999,
		0.506325, -0.600521, -0.618879,
		41.848022, 42.709835, 21.494139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141243, 42.465755, 21.789795>,  <41.493595, 43.130199, 21.927353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141243, 42.465755, 21.789795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534794, 42.397415, 21.768663>,  <41.770924, 42.356411, 21.755983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534794, 42.397415, 21.768663>,  <41.141243, 42.465755, 21.789795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534794, 42.397415, 21.768663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076009, -0.666906, 0.741255,
		-0.161880, -0.725290, -0.669141,
		0.983879, -0.170855, -0.052830,
		41.829956, 42.346157, 21.752813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121407, 41.838291, 21.905884>,  <41.141243, 42.465755, 21.789795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121407, 41.838291, 21.905884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515213, 41.905106, 21.884594>,  <41.751495, 41.945194, 21.871820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515213, 41.905106, 21.884594>,  <41.121407, 41.838291, 21.905884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515213, 41.905106, 21.884594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156379, -0.699534, 0.697278,
		0.079238, -0.694803, -0.714822,
		0.984513, 0.167034, -0.053223,
		41.810566, 41.955215, 21.868628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445549, 41.175423, 21.894184>,  <41.121407, 41.838291, 21.905884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445549, 41.175423, 21.894184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689075, 41.446529, 22.059095>,  <41.835190, 41.609196, 22.158043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689075, 41.446529, 22.059095>,  <41.445549, 41.175423, 21.894184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689075, 41.446529, 22.059095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127886, -0.596745, 0.792175,
		0.782936, -0.429564, -0.449985,
		0.608816, 0.677769, 0.412278,
		41.871719, 41.649860, 22.182779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975349, 40.809780, 22.213736>,  <41.445549, 41.175423, 21.894184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975349, 40.809780, 22.213736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029530, 41.160835, 22.397652>,  <42.062038, 41.371468, 22.508001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029530, 41.160835, 22.397652>,  <41.975349, 40.809780, 22.213736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029530, 41.160835, 22.397652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065278, -0.470966, 0.879733,
		0.988632, -0.089144, -0.121083,
		0.135449, 0.877636, 0.459792,
		42.070164, 41.424126, 22.535589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432785, 40.742516, 22.677282>,  <41.975349, 40.809780, 22.213736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432785, 40.742516, 22.677282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296249, 41.087769, 22.826141>,  <42.214329, 41.294918, 22.915457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296249, 41.087769, 22.826141>,  <42.432785, 40.742516, 22.677282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296249, 41.087769, 22.826141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074565, -0.419547, 0.904666,
		0.936977, 0.281050, 0.207568,
		-0.341341, 0.863129, 0.372149,
		42.193848, 41.346706, 22.937786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745411, 40.699203, 23.301249>,  <42.432785, 40.742516, 22.677282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745411, 40.699203, 23.301249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496773, 41.011005, 23.332211>,  <42.347588, 41.198086, 23.350788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496773, 41.011005, 23.332211>,  <42.745411, 40.699203, 23.301249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496773, 41.011005, 23.332211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268812, -0.305078, 0.913602,
		0.735769, 0.547087, 0.399175,
		-0.621599, 0.779502, 0.077404,
		42.310291, 41.244858, 23.355433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904057, 41.051163, 23.917263>,  <42.745411, 40.699203, 23.301249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904057, 41.051163, 23.917263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516136, 41.117252, 23.845507>,  <42.283382, 41.156906, 23.802452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516136, 41.117252, 23.845507>,  <42.904057, 41.051163, 23.917263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516136, 41.117252, 23.845507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236155, -0.452489, 0.859933,
		0.060907, 0.876331, 0.477844,
		-0.969805, 0.165221, -0.179390,
		42.225193, 41.166821, 23.791689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547478, 41.300957, 24.490137>,  <42.904057, 41.051163, 23.917263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547478, 41.300957, 24.490137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243095, 41.163864, 24.269777>,  <42.060467, 41.081608, 24.137562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243095, 41.163864, 24.269777>,  <42.547478, 41.300957, 24.490137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243095, 41.163864, 24.269777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436720, -0.357370, 0.825568,
		-0.479822, 0.868805, 0.122263,
		-0.760951, -0.342730, -0.550898,
		42.014809, 41.061047, 24.104507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095390, 41.425720, 24.905844>,  <42.547478, 41.300957, 24.490137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095390, 41.425720, 24.905844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925236, 41.150150, 24.671093>,  <41.823143, 40.984806, 24.530243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925236, 41.150150, 24.671093>,  <42.095390, 41.425720, 24.905844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925236, 41.150150, 24.671093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556169, -0.312570, 0.770049,
		-0.713949, 0.653970, -0.250199,
		-0.425384, -0.688929, -0.586877,
		41.797619, 40.943470, 24.495029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384628, 41.515606, 25.071869>,  <42.095390, 41.425720, 24.905844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384628, 41.515606, 25.071869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429943, 41.154110, 24.906746>,  <41.457130, 40.937210, 24.807673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429943, 41.154110, 24.906746>,  <41.384628, 41.515606, 25.071869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429943, 41.154110, 24.906746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563581, -0.400627, 0.722409,
		-0.818256, 0.150811, -0.554719,
		0.113288, -0.903745, -0.412810,
		41.463928, 40.882988, 24.782904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705856, 41.204922, 25.040375>,  <41.384628, 41.515606, 25.071869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705856, 41.204922, 25.040375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947563, 40.890762, 24.986689>,  <41.092587, 40.702267, 24.954477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947563, 40.890762, 24.986689>,  <40.705856, 41.204922, 25.040375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947563, 40.890762, 24.986689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524003, -0.518609, 0.675623,
		-0.600241, -0.337922, -0.724927,
		0.604261, -0.785401, -0.134218,
		41.128841, 40.655144, 24.946424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298019, 40.690056, 24.833521>,  <40.705856, 41.204922, 25.040375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298019, 40.690056, 24.833521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639347, 40.573818, 25.006680>,  <40.844143, 40.504074, 25.110575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639347, 40.573818, 25.006680>,  <40.298019, 40.690056, 24.833521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639347, 40.573818, 25.006680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508633, -0.281432, 0.813688,
		-0.114619, -0.914523, -0.387956,
		0.853320, -0.290591, 0.432899,
		40.895344, 40.486641, 25.136549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086910, 40.305500, 25.252371>,  <40.298019, 40.690056, 24.833521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086910, 40.305500, 25.252371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453026, 40.300919, 25.413422>,  <40.672695, 40.298168, 25.510052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453026, 40.300919, 25.413422>,  <40.086910, 40.305500, 25.252371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453026, 40.300919, 25.413422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384741, -0.320729, 0.865510,
		0.119218, -0.947102, -0.297969,
		0.915293, -0.011456, 0.402626,
		40.727615, 40.297482, 25.534210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190880, 39.616333, 25.699522>,  <40.086910, 40.305500, 25.252371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190880, 39.616333, 25.699522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469265, 39.873463, 25.827530>,  <40.636295, 40.027740, 25.904335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469265, 39.873463, 25.827530>,  <40.190880, 39.616333, 25.699522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469265, 39.873463, 25.827530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246641, -0.204553, 0.947273,
		0.674388, -0.738200, 0.016184,
		0.695967, 0.642820, 0.320019,
		40.678055, 40.066307, 25.923536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681309, 39.262756, 26.067169>,  <40.190880, 39.616333, 25.699522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681309, 39.262756, 26.067169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736755, 39.638393, 26.192959>,  <40.770023, 39.863777, 26.268433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736755, 39.638393, 26.192959>,  <40.681309, 39.262756, 26.067169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736755, 39.638393, 26.192959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102634, -0.302206, 0.947702,
		0.985014, -0.163639, 0.054493,
		0.138613, 0.939092, 0.314472,
		40.778339, 39.920120, 26.287300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272896, 39.298595, 26.690138>,  <40.681309, 39.262756, 26.067169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272896, 39.298595, 26.690138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014030, 39.603268, 26.702927>,  <40.858711, 39.786072, 26.710600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014030, 39.603268, 26.702927>,  <41.272896, 39.298595, 26.690138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014030, 39.603268, 26.702927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145982, -0.164978, 0.975434,
		0.748244, 0.626598, 0.217959,
		-0.647163, 0.761681, 0.031972,
		40.819881, 39.831772, 26.712519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540649, 39.603127, 27.179245>,  <41.272896, 39.298595, 26.690138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540649, 39.603127, 27.179245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163120, 39.724651, 27.127258>,  <40.936604, 39.797565, 27.096067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163120, 39.724651, 27.127258>,  <41.540649, 39.603127, 27.179245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163120, 39.724651, 27.127258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179557, -0.141353, 0.973539,
		0.277402, 0.942188, 0.187965,
		-0.943826, 0.303812, -0.129965,
		40.879974, 39.815796, 27.088268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385998, 39.995438, 27.819736>,  <41.540649, 39.603127, 27.179245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385998, 39.995438, 27.819736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030506, 39.869499, 27.686449>,  <40.817211, 39.793938, 27.606476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030506, 39.869499, 27.686449>,  <41.385998, 39.995438, 27.819736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030506, 39.869499, 27.686449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159092, -0.469874, 0.868279,
		-0.429946, 0.824676, 0.367500,
		-0.888727, -0.314847, -0.333219,
		40.763889, 39.775043, 27.586483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879436, 39.989952, 28.358578>,  <41.385998, 39.995438, 27.819736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879436, 39.989952, 28.358578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654831, 39.760155, 28.120363>,  <40.520065, 39.622276, 27.977434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654831, 39.760155, 28.120363>,  <40.879436, 39.989952, 28.358578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654831, 39.760155, 28.120363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303503, -0.526558, 0.794117,
		-0.769795, 0.626657, 0.121312,
		-0.561517, -0.574489, -0.595534,
		40.486378, 39.587807, 27.941704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126110, 40.105606, 28.487274>,  <40.879436, 39.989952, 28.358578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126110, 40.105606, 28.487274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140202, 39.755741, 28.293892>,  <40.148655, 39.545822, 28.177862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140202, 39.755741, 28.293892>,  <40.126110, 40.105606, 28.487274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140202, 39.755741, 28.293892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420631, -0.451795, 0.786735,
		-0.906548, 0.175643, -0.383824,
		0.035225, -0.874661, -0.483454,
		40.150768, 39.493343, 28.148855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460251, 39.874969, 28.494898>,  <40.126110, 40.105606, 28.487274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460251, 39.874969, 28.494898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664253, 39.538258, 28.424126>,  <39.786655, 39.336231, 28.381662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664253, 39.538258, 28.424126>,  <39.460251, 39.874969, 28.494898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664253, 39.538258, 28.424126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496182, -0.455923, 0.738876,
		-0.702638, -0.289039, -0.650197,
		0.510004, -0.841778, -0.176932,
		39.817253, 39.285725, 28.371046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036739, 39.325382, 28.524652>,  <39.460251, 39.874969, 28.494898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036739, 39.325382, 28.524652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387287, 39.143635, 28.588558>,  <39.597618, 39.034588, 28.626902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387287, 39.143635, 28.588558>,  <39.036739, 39.325382, 28.524652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387287, 39.143635, 28.588558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425948, -0.576327, 0.697435,
		-0.224813, -0.679264, -0.698613,
		0.876372, -0.454365, 0.159765,
		39.650200, 39.007324, 28.636488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867847, 38.639870, 28.592663>,  <39.036739, 39.325382, 28.524652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867847, 38.639870, 28.592663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217419, 38.681408, 28.782597>,  <39.427162, 38.706333, 28.896557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217419, 38.681408, 28.782597>,  <38.867847, 38.639870, 28.592663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217419, 38.681408, 28.782597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380399, -0.461993, 0.801161,
		0.302568, -0.880783, -0.364245,
		0.873927, 0.103847, 0.474833,
		39.479595, 38.712563, 28.925047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936249, 37.983025, 28.964071>,  <38.867847, 38.639870, 28.592663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936249, 37.983025, 28.964071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201199, 38.242691, 29.113657>,  <39.360168, 38.398491, 29.203409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201199, 38.242691, 29.113657>,  <38.936249, 37.983025, 28.964071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201199, 38.242691, 29.113657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027803, -0.520125, 0.853637,
		0.748658, -0.555029, -0.362566,
		0.662373, 0.649163, 0.373964,
		39.399910, 38.437439, 29.225845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493267, 37.595573, 29.320066>,  <38.936249, 37.983025, 28.964071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493267, 37.595573, 29.320066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526943, 37.968517, 29.460703>,  <39.547150, 38.192284, 29.545086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526943, 37.968517, 29.460703>,  <39.493267, 37.595573, 29.320066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526943, 37.968517, 29.460703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031481, -0.355158, 0.934276,
		0.995952, -0.067593, -0.059254,
		0.084195, 0.932360, 0.351593,
		39.552200, 38.248226, 29.566181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059208, 37.559822, 29.912649>,  <39.493267, 37.595573, 29.320066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059208, 37.559822, 29.912649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870182, 37.905331, 29.982609>,  <39.756767, 38.112637, 30.024584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870182, 37.905331, 29.982609>,  <40.059208, 37.559822, 29.912649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870182, 37.905331, 29.982609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053871, -0.169771, 0.984010,
		0.879649, 0.474429, 0.033696,
		-0.472563, 0.863768, 0.174897,
		39.728413, 38.164459, 30.035078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482582, 37.905579, 30.451292>,  <40.059208, 37.559822, 29.912649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482582, 37.905579, 30.451292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106243, 38.041107, 30.451752>,  <39.880440, 38.122425, 30.452026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106243, 38.041107, 30.451752>,  <40.482582, 37.905579, 30.451292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106243, 38.041107, 30.451752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057343, -0.162570, 0.985029,
		0.333933, 0.926700, 0.172383,
		-0.940851, 0.338819, 0.001148,
		39.823986, 38.142754, 30.452097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423904, 38.457630, 30.962029>,  <40.482582, 37.905579, 30.451292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423904, 38.457630, 30.962029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061794, 38.305840, 30.885628>,  <39.844528, 38.214767, 30.839787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061794, 38.305840, 30.885628>,  <40.423904, 38.457630, 30.962029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061794, 38.305840, 30.885628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197504, -0.022132, 0.980052,
		-0.376131, 0.924938, -0.054912,
		-0.905272, -0.379473, -0.191003,
		39.790211, 38.191998, 30.828327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996811, 38.758858, 31.372463>,  <40.423904, 38.457630, 30.962029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996811, 38.758858, 31.372463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757156, 38.453842, 31.274832>,  <39.613365, 38.270832, 31.216253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757156, 38.453842, 31.274832>,  <39.996811, 38.758858, 31.372463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757156, 38.453842, 31.274832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181166, -0.167829, 0.969026,
		-0.779881, 0.624798, -0.037593,
		-0.599136, -0.762536, -0.244079,
		39.577415, 38.225082, 31.201609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477451, 38.861423, 31.754658>,  <39.996811, 38.758858, 31.372463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477451, 38.861423, 31.754658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426037, 38.473793, 31.670404>,  <39.395187, 38.241215, 31.619852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426037, 38.473793, 31.670404>,  <39.477451, 38.861423, 31.754658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426037, 38.473793, 31.670404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187204, -0.184867, 0.964769,
		-0.973875, 0.163442, -0.157652,
		-0.128539, -0.969078, -0.210634,
		39.387474, 38.183071, 31.607214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810452, 38.568439, 32.038971>,  <39.477451, 38.861423, 31.754658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810452, 38.568439, 32.038971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061134, 38.262703, 31.978285>,  <39.211544, 38.079262, 31.941874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061134, 38.262703, 31.978285>,  <38.810452, 38.568439, 32.038971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061134, 38.262703, 31.978285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104718, -0.275532, 0.955571,
		-0.772189, -0.582974, -0.252719,
		0.626705, -0.764345, -0.151715,
		39.249146, 38.033398, 31.932770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569374, 37.951035, 32.456989>,  <38.810452, 38.568439, 32.038971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569374, 37.951035, 32.456989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947784, 37.845074, 32.382301>,  <39.174831, 37.781498, 32.337486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947784, 37.845074, 32.382301>,  <38.569374, 37.951035, 32.456989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947784, 37.845074, 32.382301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062896, -0.415128, 0.907586,
		-0.317933, -0.870343, -0.376060,
		0.946025, -0.264899, -0.186723,
		39.231590, 37.765602, 32.326283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689709, 37.279026, 32.764099>,  <38.569374, 37.951035, 32.456989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689709, 37.279026, 32.764099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064686, 37.409412, 32.715187>,  <39.289673, 37.487644, 32.685841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064686, 37.409412, 32.715187>,  <38.689709, 37.279026, 32.764099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064686, 37.409412, 32.715187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211670, -0.254772, 0.943550,
		0.276412, -0.910405, -0.307831,
		0.937439, 0.325967, -0.122283,
		39.345917, 37.507202, 32.678501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103760, 36.744190, 33.169094>,  <38.689709, 37.279026, 32.764099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103760, 36.744190, 33.169094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352402, 37.050045, 33.101055>,  <39.501587, 37.233559, 33.060234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352402, 37.050045, 33.101055>,  <39.103760, 36.744190, 33.169094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352402, 37.050045, 33.101055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556950, -0.278727, 0.782380,
		0.550829, -0.581066, -0.599124,
		0.621607, 0.764639, -0.170094,
		39.538883, 37.279438, 33.050026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723198, 36.417191, 33.124958>,  <39.103760, 36.744190, 33.169094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723198, 36.417191, 33.124958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801529, 36.793636, 33.235195>,  <39.848526, 37.019505, 33.301338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801529, 36.793636, 33.235195>,  <39.723198, 36.417191, 33.124958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801529, 36.793636, 33.235195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544514, -0.338080, 0.767597,
		0.815571, -0.000251, -0.578657,
		0.195825, 0.941117, 0.275592,
		39.860275, 37.075970, 33.317871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440720, 36.312160, 33.415043>,  <39.723198, 36.417191, 33.124958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440720, 36.312160, 33.415043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290184, 36.666763, 33.522720>,  <40.199860, 36.879524, 33.587326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290184, 36.666763, 33.522720>,  <40.440720, 36.312160, 33.415043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290184, 36.666763, 33.522720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486978, -0.057905, 0.871493,
		0.788174, 0.459074, -0.409919,
		-0.376344, 0.886509, 0.269198,
		40.177280, 36.932716, 33.603481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992317, 36.540855, 33.707771>,  <40.440720, 36.312160, 33.415043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992317, 36.540855, 33.707771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673153, 36.737389, 33.847446>,  <40.481655, 36.855309, 33.931252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673153, 36.737389, 33.847446>,  <40.992317, 36.540855, 33.707771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673153, 36.737389, 33.847446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346116, -0.100832, 0.932758,
		0.493502, 0.865117, -0.089603,
		-0.797910, 0.491331, 0.349191,
		40.433781, 36.884789, 33.952206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187042, 37.139732, 34.061344>,  <40.992317, 36.540855, 33.707771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187042, 37.139732, 34.061344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838974, 37.039028, 34.230778>,  <40.630135, 36.978603, 34.332436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838974, 37.039028, 34.230778>,  <41.187042, 37.139732, 34.061344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838974, 37.039028, 34.230778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473266, -0.187655, 0.860700,
		-0.137207, 0.949421, 0.282444,
		-0.870169, -0.251765, 0.423581,
		40.577923, 36.963497, 34.357853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208778, 37.303688, 34.780060>,  <41.187042, 37.139732, 34.061344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208778, 37.303688, 34.780060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926231, 37.020889, 34.766197>,  <40.756702, 36.851212, 34.757877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926231, 37.020889, 34.766197>,  <41.208778, 37.303688, 34.780060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926231, 37.020889, 34.766197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245525, -0.290646, 0.924793,
		-0.663898, 0.644735, 0.378888,
		-0.706369, -0.706995, -0.034661,
		40.714321, 36.808792, 34.755798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966957, 37.289158, 35.525452>,  <41.208778, 37.303688, 34.780060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966957, 37.289158, 35.525452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918240, 36.930714, 35.354733>,  <40.889008, 36.715649, 35.252300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918240, 36.930714, 35.354733>,  <40.966957, 37.289158, 35.525452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918240, 36.930714, 35.354733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248194, -0.443834, 0.861052,
		-0.961023, -0.001057, 0.276465,
		-0.121794, -0.896108, -0.426797,
		40.881702, 36.661880, 35.226692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414062, 36.981438, 35.900608>,  <40.966957, 37.289158, 35.525452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414062, 36.981438, 35.900608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679974, 36.732677, 35.735050>,  <40.839520, 36.583420, 35.635715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679974, 36.732677, 35.735050>,  <40.414062, 36.981438, 35.900608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679974, 36.732677, 35.735050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344266, -0.236673, 0.908552,
		-0.662991, -0.746472, 0.056767,
		0.664773, -0.621905, -0.413897,
		40.879406, 36.546104, 35.610882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559322, 36.622517, 36.509853>,  <40.414062, 36.981438, 35.900608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559322, 36.622517, 36.509853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846146, 36.571465, 36.235760>,  <41.018238, 36.540833, 36.071304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846146, 36.571465, 36.235760>,  <40.559322, 36.622517, 36.509853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846146, 36.571465, 36.235760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605618, -0.372591, 0.703138,
		-0.345053, -0.919177, -0.189873,
		0.717053, -0.127630, -0.685234,
		41.061260, 36.533176, 36.030190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817333, 35.960686, 36.514942>,  <40.559322, 36.622517, 36.509853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817333, 35.960686, 36.514942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118874, 36.159767, 36.343361>,  <41.299797, 36.279217, 36.240414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118874, 36.159767, 36.343361>,  <40.817333, 35.960686, 36.514942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118874, 36.159767, 36.343361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656992, -0.579575, 0.482136,
		-0.008646, -0.645275, -0.763902,
		0.753848, 0.497708, -0.428951,
		41.345028, 36.309078, 36.214676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165421, 35.493618, 36.168190>,  <40.817333, 35.960686, 36.514942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165421, 35.493618, 36.168190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411346, 35.800049, 36.243168>,  <41.558903, 35.983906, 36.288155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411346, 35.800049, 36.243168>,  <41.165421, 35.493618, 36.168190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411346, 35.800049, 36.243168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485812, -0.555093, 0.675173,
		0.621281, -0.324043, -0.713447,
		0.614814, 0.766073, 0.187445,
		41.595791, 36.029869, 36.299400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774548, 35.193703, 36.132767>,  <41.165421, 35.493618, 36.168190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774548, 35.193703, 36.132767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865154, 35.525291, 36.337315>,  <41.919518, 35.724243, 36.460045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865154, 35.525291, 36.337315>,  <41.774548, 35.193703, 36.132767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865154, 35.525291, 36.337315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636629, -0.523356, 0.566394,
		0.737151, 0.197252, -0.646297,
		0.226521, 0.828970, 0.511368,
		41.933109, 35.773983, 36.490726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550797, 35.130962, 36.179684>,  <41.774548, 35.193703, 36.132767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550797, 35.130962, 36.179684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392567, 35.383785, 36.446224>,  <42.297630, 35.535480, 36.606148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392567, 35.383785, 36.446224>,  <42.550797, 35.130962, 36.179684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392567, 35.383785, 36.446224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588649, -0.382434, 0.712206,
		0.704992, 0.673976, -0.220780,
		-0.395575, 0.632061, 0.666348,
		42.273895, 35.573402, 36.646130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082863, 35.424438, 36.441647>,  <42.550797, 35.130962, 36.179684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082863, 35.424438, 36.441647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808109, 35.489601, 36.724953>,  <42.643257, 35.528698, 36.894936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808109, 35.489601, 36.724953>,  <43.082863, 35.424438, 36.441647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808109, 35.489601, 36.724953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573283, -0.477534, 0.665814,
		0.446690, 0.863378, 0.234619,
		-0.686888, 0.162909, 0.708269,
		42.602043, 35.538475, 36.937435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478161, 35.662735, 37.014359>,  <43.082863, 35.424438, 36.441647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478161, 35.662735, 37.014359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123924, 35.525276, 37.139343>,  <42.911381, 35.442799, 37.214333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123924, 35.525276, 37.139343>,  <43.478161, 35.662735, 37.014359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123924, 35.525276, 37.139343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463718, -0.616063, 0.636736,
		-0.026319, 0.708781, 0.704937,
		-0.885592, -0.343650, 0.312461,
		42.858246, 35.422180, 37.233082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447201, 35.842514, 37.662319>,  <43.478161, 35.662735, 37.014359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447201, 35.842514, 37.662319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190701, 35.539619, 37.612698>,  <43.036800, 35.357883, 37.582924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190701, 35.539619, 37.612698>,  <43.447201, 35.842514, 37.662319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190701, 35.539619, 37.612698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463996, -0.511417, 0.723298,
		-0.611149, 0.406259, 0.679302,
		-0.641253, -0.757236, -0.124050,
		42.998325, 35.312450, 37.575481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139561, 35.667088, 38.363567>,  <43.447201, 35.842514, 37.662319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139561, 35.667088, 38.363567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138580, 35.344265, 38.127377>,  <43.137993, 35.150574, 37.985664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138580, 35.344265, 38.127377>,  <43.139561, 35.667088, 38.363567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138580, 35.344265, 38.127377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593071, -0.476593, 0.648942,
		-0.805147, -0.348601, 0.479809,
		-0.002452, -0.807054, -0.590473,
		43.137844, 35.102150, 37.950233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851433, 35.055153, 38.704777>,  <43.139561, 35.667088, 38.363567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851433, 35.055153, 38.704777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129765, 34.966835, 38.431408>,  <43.296764, 34.913845, 38.267387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129765, 34.966835, 38.431408>,  <42.851433, 35.055153, 38.704777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129765, 34.966835, 38.431408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653442, -0.200255, 0.730008,
		-0.298044, -0.954539, 0.004936,
		0.695833, -0.220800, -0.683421,
		43.338516, 34.900597, 38.226383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267330, 34.411884, 38.839493>,  <42.851433, 35.055153, 38.704777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267330, 34.411884, 38.839493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458195, 34.684479, 38.617538>,  <43.572712, 34.848034, 38.484367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458195, 34.684479, 38.617538>,  <43.267330, 34.411884, 38.839493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458195, 34.684479, 38.617538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856104, -0.217826, 0.468656,
		0.198514, -0.698662, -0.687360,
		0.477157, 0.681486, -0.554885,
		43.601341, 34.888924, 38.451073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967506, 34.203369, 38.589161>,  <43.267330, 34.411884, 38.839493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967506, 34.203369, 38.589161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975281, 34.603001, 38.604507>,  <43.979946, 34.842777, 38.613716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975281, 34.603001, 38.604507>,  <43.967506, 34.203369, 38.589161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975281, 34.603001, 38.604507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771558, -0.039393, 0.634939,
		0.635863, 0.017259, -0.771609,
		0.019438, 0.999075, 0.038365,
		43.981113, 34.902721, 38.616016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809982, 34.354965, 37.813560>,  <43.967506, 34.203369, 38.589161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809982, 34.354965, 37.813560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501484, 34.312824, 38.064667>,  <43.316387, 34.287540, 38.215328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501484, 34.312824, 38.064667>,  <43.809982, 34.354965, 37.813560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501484, 34.312824, 38.064667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449967, 0.787800, -0.420597,
		-0.450239, -0.606854, -0.654991,
		-0.771243, -0.105355, 0.627762,
		43.270111, 34.281219, 38.252995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316498, 34.260544, 37.263916>,  <43.809982, 34.354965, 37.813560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316498, 34.260544, 37.263916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186474, 34.389423, 37.619560>,  <43.108459, 34.466751, 37.832947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186474, 34.389423, 37.619560>,  <43.316498, 34.260544, 37.263916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186474, 34.389423, 37.619560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720472, 0.524629, -0.453524,
		-0.612580, -0.788004, 0.061600,
		-0.325062, 0.322201, 0.889113,
		43.088955, 34.486084, 37.886295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587589, 34.119446, 37.402542>,  <43.316498, 34.260544, 37.263916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587589, 34.119446, 37.402542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695885, 34.428001, 37.632900>,  <42.760860, 34.613136, 37.771114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695885, 34.428001, 37.632900>,  <42.587589, 34.119446, 37.402542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695885, 34.428001, 37.632900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555981, 0.613672, -0.560617,
		-0.785866, -0.168406, 0.595024,
		0.270739, 0.771392, 0.575895,
		42.777107, 34.659420, 37.805668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038342, 34.452164, 37.472824>,  <42.587589, 34.119446, 37.402542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038342, 34.452164, 37.472824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340927, 34.708630, 37.524475>,  <42.522476, 34.862511, 37.555466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340927, 34.708630, 37.524475>,  <42.038342, 34.452164, 37.472824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340927, 34.708630, 37.524475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508700, 0.700875, -0.499998,
		-0.411084, 0.312542, 0.856346,
		0.756462, 0.641165, 0.129128,
		42.567867, 34.900978, 37.563213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706394, 35.046684, 37.651318>,  <42.038342, 34.452164, 37.472824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706394, 35.046684, 37.651318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070236, 35.172462, 37.542690>,  <42.288540, 35.247929, 37.477516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070236, 35.172462, 37.542690>,  <41.706394, 35.046684, 37.651318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070236, 35.172462, 37.542690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409625, 0.788026, -0.459589,
		0.069486, 0.529283, 0.845595,
		0.909604, 0.314442, -0.271565,
		42.343117, 35.266796, 37.461220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784401, 35.647896, 37.926689>,  <41.706394, 35.046684, 37.651318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784401, 35.647896, 37.926689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038918, 35.633324, 37.618454>,  <42.191628, 35.624580, 37.433514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038918, 35.633324, 37.618454>,  <41.784401, 35.647896, 37.926689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038918, 35.633324, 37.618454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472971, 0.770703, -0.426984,
		0.609450, 0.636152, 0.473161,
		0.636293, -0.036434, -0.770587,
		42.229805, 35.622395, 37.387280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919579, 36.304253, 37.723095>,  <41.784401, 35.647896, 37.926689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919579, 36.304253, 37.723095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036503, 36.092583, 37.404465>,  <42.106659, 35.965580, 37.213287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036503, 36.092583, 37.404465>,  <41.919579, 36.304253, 37.723095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036503, 36.092583, 37.404465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385231, 0.697226, -0.604543,
		0.875301, 0.483580, -0.000047,
		0.292312, -0.529175, -0.796572,
		42.124195, 35.933830, 37.165493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130955, 36.815651, 37.244442>,  <41.919579, 36.304253, 37.723095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130955, 36.815651, 37.244442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049469, 36.493038, 37.022446>,  <42.000580, 36.299473, 36.889248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049469, 36.493038, 37.022446>,  <42.130955, 36.815651, 37.244442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049469, 36.493038, 37.022446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389576, 0.586841, -0.709823,
		0.898183, 0.071612, -0.433750,
		-0.203710, -0.806530, -0.554989,
		41.988358, 36.251080, 36.855949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421574, 37.034588, 36.568398>,  <42.130955, 36.815651, 37.244442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421574, 37.034588, 36.568398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172295, 36.736389, 36.473854>,  <42.022728, 36.557472, 36.417130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172295, 36.736389, 36.473854>,  <42.421574, 37.034588, 36.568398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172295, 36.736389, 36.473854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496513, 0.610650, -0.616913,
		0.604223, -0.267120, -0.750707,
		-0.623209, -0.745489, -0.236341,
		41.985336, 36.512741, 36.402946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261211, 36.835899, 35.820351>,  <42.421574, 37.034588, 36.568398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261211, 36.835899, 35.820351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926704, 36.755093, 36.024246>,  <41.725998, 36.706608, 36.146584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926704, 36.755093, 36.024246>,  <42.261211, 36.835899, 35.820351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926704, 36.755093, 36.024246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485020, 0.706149, -0.515858,
		-0.255743, -0.678633, -0.688515,
		-0.836272, -0.202017, 0.509743,
		41.675823, 36.694489, 36.177170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833858, 36.874722, 35.352158>,  <42.261211, 36.835899, 35.820351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833858, 36.874722, 35.352158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620762, 36.894699, 35.690079>,  <41.492905, 36.906685, 35.892834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620762, 36.894699, 35.690079>,  <41.833858, 36.874722, 35.352158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620762, 36.894699, 35.690079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485964, 0.799211, -0.353696,
		-0.692843, -0.598972, -0.401499,
		-0.532737, 0.049942, 0.844806,
		41.460941, 36.909683, 35.943520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467815, 36.220413, 34.975952>,  <41.833858, 36.874722, 35.352158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467815, 36.220413, 34.975952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149330, 36.201881, 35.217247>,  <40.958237, 36.190762, 35.362022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149330, 36.201881, 35.217247>,  <41.467815, 36.220413, 34.975952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149330, 36.201881, 35.217247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598823, -0.081927, -0.796680,
		0.086332, -0.995561, 0.037488,
		-0.796215, -0.046330, 0.603237,
		40.910465, 36.187984, 35.398220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026340, 35.682552, 34.658649>,  <41.467815, 36.220413, 34.975952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026340, 35.682552, 34.658649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875526, 35.979988, 34.879524>,  <40.785038, 36.158451, 35.012051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875526, 35.979988, 34.879524>,  <41.026340, 35.682552, 34.658649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875526, 35.979988, 34.879524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599339, 0.258663, -0.757553,
		-0.706140, -0.616576, 0.348137,
		-0.377039, 0.743590, 0.552191,
		40.762413, 36.203064, 35.045181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334332, 35.623890, 34.660965>,  <41.026340, 35.682552, 34.658649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334332, 35.623890, 34.660965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444294, 36.008350, 34.651123>,  <40.510273, 36.239029, 34.645218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444294, 36.008350, 34.651123>,  <40.334332, 35.623890, 34.660965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444294, 36.008350, 34.651123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329262, 0.070065, -0.941636,
		-0.903334, 0.266966, 0.335734,
		0.274908, 0.961156, -0.024610,
		40.526768, 36.296696, 34.643742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962288, 36.218212, 34.812836>,  <40.334332, 35.623890, 34.660965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962288, 36.218212, 34.812836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174202, 36.180836, 34.475651>,  <40.301350, 36.158409, 34.273338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174202, 36.180836, 34.475651>,  <39.962288, 36.218212, 34.812836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174202, 36.180836, 34.475651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847631, -0.092389, -0.522481,
		-0.029062, 0.991329, -0.128147,
		0.529790, -0.093437, -0.842966,
		40.333138, 36.152805, 34.222759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387478, 36.693989, 34.772285>,  <39.962288, 36.218212, 34.812836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387478, 36.693989, 34.772285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749561, 36.811676, 34.649632>,  <39.966812, 36.882290, 34.576038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749561, 36.811676, 34.649632>,  <39.387478, 36.693989, 34.772285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749561, 36.811676, 34.649632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404754, 0.377083, -0.833056,
		-0.129477, 0.878204, 0.460427,
		0.905213, 0.294221, -0.306634,
		40.021126, 36.899944, 34.557640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382996, 37.392597, 34.553799>,  <39.387478, 36.693989, 34.772285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382996, 37.392597, 34.553799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699245, 37.241020, 34.361416>,  <39.888996, 37.150074, 34.245987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699245, 37.241020, 34.361416>,  <39.382996, 37.392597, 34.553799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699245, 37.241020, 34.361416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324062, 0.407494, -0.853775,
		0.519519, 0.830873, 0.199373,
		0.790622, -0.378943, -0.480956,
		39.936432, 37.127338, 34.217129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672165, 37.978928, 34.252563>,  <39.382996, 37.392597, 34.553799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672165, 37.978928, 34.252563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815777, 37.681572, 34.026829>,  <39.901943, 37.503159, 33.891388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815777, 37.681572, 34.026829>,  <39.672165, 37.978928, 34.252563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815777, 37.681572, 34.026829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351986, 0.452156, -0.819549,
		0.864408, 0.492883, -0.099322,
		0.359033, -0.743384, -0.564336,
		39.923489, 37.458557, 33.857529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975918, 38.327480, 33.652149>,  <39.672165, 37.978928, 34.252563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975918, 38.327480, 33.652149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962952, 37.942245, 33.545254>,  <39.955170, 37.711105, 33.481117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962952, 37.942245, 33.545254>,  <39.975918, 38.327480, 33.652149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962952, 37.942245, 33.545254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322230, 0.263171, -0.909345,
		0.946106, 0.056632, -0.318866,
		-0.032418, -0.963085, -0.267237,
		39.953228, 37.653320, 33.465084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350010, 38.319180, 33.087753>,  <39.975918, 38.327480, 33.652149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350010, 38.319180, 33.087753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097740, 38.009392, 33.067966>,  <39.946377, 37.823521, 33.056095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097740, 38.009392, 33.067966>,  <40.350010, 38.319180, 33.087753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097740, 38.009392, 33.067966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182517, 0.209974, -0.960520,
		0.754280, -0.596747, -0.273779,
		-0.630674, -0.774470, -0.049463,
		39.908539, 37.777050, 33.053127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579884, 37.938931, 32.571781>,  <40.350010, 38.319180, 33.087753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579884, 37.938931, 32.571781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198696, 37.819504, 32.592579>,  <39.969982, 37.747849, 32.605057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198696, 37.819504, 32.592579>,  <40.579884, 37.938931, 32.571781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198696, 37.819504, 32.592579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131027, 0.251216, -0.959022,
		0.273262, -0.920735, -0.278521,
		-0.952974, -0.298558, 0.051993,
		39.912804, 37.729935, 32.608177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454151, 37.462173, 32.095963>,  <40.579884, 37.938931, 32.571781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454151, 37.462173, 32.095963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080013, 37.585972, 32.164478>,  <39.855530, 37.660252, 32.205589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080013, 37.585972, 32.164478>,  <40.454151, 37.462173, 32.095963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080013, 37.585972, 32.164478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152872, 0.083002, -0.984754,
		-0.318997, -0.947271, -0.030322,
		-0.935346, 0.309498, 0.171289,
		39.799408, 37.678822, 32.215866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100475, 37.039394, 31.664417>,  <40.454151, 37.462173, 32.095963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100475, 37.039394, 31.664417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874886, 37.361942, 31.735632>,  <39.739532, 37.555470, 31.778360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874886, 37.361942, 31.735632>,  <40.100475, 37.039394, 31.664417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874886, 37.361942, 31.735632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302263, -0.000943, -0.953224,
		-0.768483, -0.591411, 0.244268,
		-0.563978, 0.806370, 0.178037,
		39.705692, 37.603851, 31.789043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669422, 36.481407, 31.851923>,  <40.100475, 37.039394, 31.664417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669422, 36.481407, 31.851923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827118, 36.235027, 32.124741>,  <40.921738, 36.087200, 32.288429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827118, 36.235027, 32.124741>,  <40.669422, 36.481407, 31.851923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827118, 36.235027, 32.124741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828204, 0.559785, 0.026806,
		-0.398309, 0.554302, 0.730821,
		0.394244, -0.615946, 0.682043,
		40.945393, 36.050243, 32.329353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923019, 36.830688, 32.390327>,  <40.669422, 36.481407, 31.851923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923019, 36.830688, 32.390327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137001, 36.492825, 32.398094>,  <41.265388, 36.290108, 32.402756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137001, 36.492825, 32.398094>,  <40.923019, 36.830688, 32.390327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137001, 36.492825, 32.398094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844728, 0.535153, 0.006779,
		-0.016116, 0.012774, 0.999788,
		0.534953, -0.844658, 0.019415,
		41.297485, 36.239426, 32.403919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376732, 36.787201, 33.013027>,  <40.923019, 36.830688, 32.390327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376732, 36.787201, 33.013027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526581, 36.547192, 32.730289>,  <41.616489, 36.403187, 32.560646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526581, 36.547192, 32.730289>,  <41.376732, 36.787201, 33.013027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526581, 36.547192, 32.730289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888056, 0.451324, 0.087538,
		0.266491, -0.660510, 0.701933,
		0.374619, -0.600028, -0.706843,
		41.638966, 36.367184, 32.518238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989529, 36.576988, 33.354588>,  <41.376732, 36.787201, 33.013027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989529, 36.576988, 33.354588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997414, 36.609688, 32.956005>,  <42.002144, 36.629307, 32.716854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997414, 36.609688, 32.956005>,  <41.989529, 36.576988, 33.354588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997414, 36.609688, 32.956005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892025, 0.448694, 0.054456,
		0.451557, -0.889938, -0.064083,
		0.019709, 0.081754, -0.996458,
		42.003326, 36.634212, 32.657066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581741, 36.219830, 33.161457>,  <41.989529, 36.576988, 33.354588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581741, 36.219830, 33.161457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472866, 36.527405, 32.930065>,  <42.407539, 36.711952, 32.791229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472866, 36.527405, 32.930065>,  <42.581741, 36.219830, 33.161457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472866, 36.527405, 32.930065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858113, 0.465985, 0.215639,
		0.435378, -0.437708, -0.786675,
		-0.272192, 0.768941, -0.578482,
		42.391209, 36.758087, 32.756519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121464, 36.478416, 32.803173>,  <42.581741, 36.219830, 33.161457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121464, 36.478416, 32.803173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876354, 36.790081, 32.855965>,  <42.729290, 36.977081, 32.887638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876354, 36.790081, 32.855965>,  <43.121464, 36.478416, 32.803173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876354, 36.790081, 32.855965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771564, 0.553764, 0.313103,
		0.170873, 0.293691, -0.940504,
		-0.612773, 0.779160, 0.131979,
		42.692524, 37.023830, 32.895557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512432, 37.065990, 32.480854>,  <43.121464, 36.478416, 32.803173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512432, 37.065990, 32.480854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270275, 37.171040, 32.781395>,  <43.124981, 37.234070, 32.961720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270275, 37.171040, 32.781395>,  <43.512432, 37.065990, 32.480854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270275, 37.171040, 32.781395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779373, 0.387140, 0.492646,
		-0.161501, 0.883828, -0.439050,
		-0.605388, 0.262621, 0.751356,
		43.088657, 37.249825, 33.006802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443947, 37.740341, 32.883518>,  <43.512432, 37.065990, 32.480854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443947, 37.740341, 32.883518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.386688, 37.473598, 33.176041>,  <43.352333, 37.313553, 33.351555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.386688, 37.473598, 33.176041>,  <43.443947, 37.740341, 32.883518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386688, 37.473598, 33.176041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643342, 0.498805, 0.580779,
		-0.752076, 0.553619, 0.357613,
		-0.143151, -0.666858, 0.731306,
		43.343742, 37.273540, 33.395432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132320, 38.090794, 33.508869>,  <43.443947, 37.740341, 32.883518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132320, 38.090794, 33.508869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380138, 37.780094, 33.554180>,  <43.528828, 37.593674, 33.581367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380138, 37.780094, 33.554180>,  <43.132320, 38.090794, 33.508869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380138, 37.780094, 33.554180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583782, 0.552405, 0.595018,
		-0.524751, -0.302513, 0.795690,
		0.619544, -0.776746, 0.113273,
		43.566002, 37.547070, 33.588161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303478, 37.857750, 34.232975>,  <43.132320, 38.090794, 33.508869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303478, 37.857750, 34.232975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595974, 37.811226, 33.964123>,  <43.771473, 37.783314, 33.802811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595974, 37.811226, 33.964123>,  <43.303478, 37.857750, 34.232975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595974, 37.811226, 33.964123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665649, 0.336878, 0.665902,
		0.148976, -0.934337, 0.323759,
		0.731244, -0.116307, -0.672127,
		43.815346, 37.776333, 33.762486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818047, 37.433067, 34.557045>,  <43.303478, 37.857750, 34.232975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818047, 37.433067, 34.557045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971508, 37.679569, 34.281933>,  <44.063587, 37.827469, 34.116867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971508, 37.679569, 34.281933>,  <43.818047, 37.433067, 34.557045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.971508, 37.679569, 34.281933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677939, 0.317766, 0.662890,
		0.627061, -0.720595, -0.295868,
		0.383658, 0.616253, -0.687778,
		44.086605, 37.864445, 34.075600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553509, 37.293400, 34.442528>,  <43.818047, 37.433067, 34.557045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553509, 37.293400, 34.442528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.490578, 37.669186, 34.320766>,  <44.452820, 37.894657, 34.247711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.490578, 37.669186, 34.320766>,  <44.553509, 37.293400, 34.442528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490578, 37.669186, 34.320766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838041, 0.290074, 0.462107,
		0.522431, -0.182396, -0.832945,
		-0.157329, 0.939462, -0.304399,
		44.443378, 37.951023, 34.229446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.852573, 37.472599, 33.718758>,  <44.553509, 37.293400, 34.442528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.852573, 37.472599, 33.718758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252460, 37.477318, 33.727055>,  <45.492393, 37.480148, 33.732033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252460, 37.477318, 33.727055>,  <44.852573, 37.472599, 33.718758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252460, 37.477318, 33.727055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005956, -0.965135, 0.261685,
		0.023103, -0.261486, -0.964931,
		0.999715, 0.011793, 0.020740,
		45.552376, 37.480854, 33.733276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047054, 36.777702, 33.566257>,  <44.852573, 37.472599, 33.718758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.047054, 36.777702, 33.566257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325512, 36.981201, 33.768864>,  <45.492588, 37.103302, 33.890427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325512, 36.981201, 33.768864>,  <45.047054, 36.777702, 33.566257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325512, 36.981201, 33.768864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349137, -0.856415, 0.380337,
		0.627283, -0.087927, -0.773812,
		0.696146, 0.508746, 0.506516,
		45.534355, 37.133823, 33.920818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630966, 36.358521, 33.475311>,  <45.047054, 36.777702, 33.566257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630966, 36.358521, 33.475311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753254, 36.602348, 33.767876>,  <45.826626, 36.748646, 33.943413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753254, 36.602348, 33.767876>,  <45.630966, 36.358521, 33.475311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753254, 36.602348, 33.767876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562659, -0.735370, 0.377684,
		0.768083, 0.296071, -0.567795,
		0.305718, 0.609568, 0.731412,
		45.844971, 36.785217, 33.987301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.512501, 36.436069, 33.635876>,  <45.630966, 36.358521, 33.475311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.512501, 36.436069, 33.635876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.288174, 36.470764, 33.965229>,  <46.153576, 36.491581, 34.162842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.288174, 36.470764, 33.965229>,  <46.512501, 36.436069, 33.635876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.288174, 36.470764, 33.965229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638698, -0.587483, 0.496919,
		0.526824, 0.804575, 0.274073,
		-0.560822, 0.086740, 0.823380,
		46.119926, 36.496784, 34.212242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.971516, 36.450348, 34.165302>,  <46.512501, 36.436069, 33.635876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.971516, 36.450348, 34.165302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.665482, 36.296143, 34.371613>,  <46.481861, 36.203621, 34.495399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.665482, 36.296143, 34.371613>,  <46.971516, 36.450348, 34.165302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.665482, 36.296143, 34.371613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609852, -0.690917, 0.388219,
		0.206696, 0.611569, 0.763715,
		-0.765086, -0.385510, 0.515776,
		46.435955, 36.180489, 34.526344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.305336, 36.339291, 34.750965>,  <46.971516, 36.450348, 34.165302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.305336, 36.339291, 34.750965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979576, 36.109909, 34.715408>,  <46.784119, 35.972282, 34.694073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979576, 36.109909, 34.715408>,  <47.305336, 36.339291, 34.750965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.979576, 36.109909, 34.715408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513861, -0.783822, 0.348668,
		-0.269621, 0.238277, 0.933021,
		-0.814402, -0.573452, -0.088894,
		46.735256, 35.937874, 34.688740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.203995, 35.937069, 35.400955>,  <47.305336, 36.339291, 34.750965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.203995, 35.937069, 35.400955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030708, 35.750626, 35.092392>,  <46.926739, 35.638760, 34.907253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030708, 35.750626, 35.092392>,  <47.203995, 35.937069, 35.400955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.030708, 35.750626, 35.092392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625924, -0.771418, 0.114605,
		-0.648494, -0.433193, 0.625938,
		-0.433214, -0.466110, -0.771406,
		46.900745, 35.610794, 34.860970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.544319, 35.433121, 34.931858>,  <47.203995, 35.937069, 35.400955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.544319, 35.433121, 34.931858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.713974, 35.465118, 35.292683>,  <47.815765, 35.484318, 35.509178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.713974, 35.465118, 35.292683>,  <47.544319, 35.433121, 34.931858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.713974, 35.465118, 35.292683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694643, -0.610338, 0.380734,
		0.581017, -0.788092, -0.203299,
		0.424134, 0.079993, 0.902059,
		47.841213, 35.489117, 35.563301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.901085, 34.889206, 34.994846>,  <47.544319, 35.433121, 34.931858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.901085, 34.889206, 34.994846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.728329, 35.055370, 35.315075>,  <47.624676, 35.155067, 35.507210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.728329, 35.055370, 35.315075>,  <47.901085, 34.889206, 34.994846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.728329, 35.055370, 35.315075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729793, -0.682523, -0.039549,
		0.529978, -0.601330, 0.597935,
		-0.431886, 0.415409, 0.800569,
		47.598763, 35.179993, 35.555244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.408325, 37.883293, 22.048384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.019588, 37.977520, 22.046177>,  <37.786346, 38.034058, 22.044853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.019588, 37.977520, 22.046177>,  <38.408325, 37.883293, 22.048384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019588, 37.977520, 22.046177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143777, -0.574285, 0.805932,
		0.186683, 0.784032, 0.591983,
		-0.971842, 0.235568, -0.005516,
		37.728035, 38.048191, 22.044521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294041, 38.172066, 22.727123>,  <38.408325, 37.883293, 22.048384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294041, 38.172066, 22.727123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941570, 38.064617, 22.571493>,  <37.730087, 38.000149, 22.478115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941570, 38.064617, 22.571493>,  <38.294041, 38.172066, 22.727123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941570, 38.064617, 22.571493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227554, -0.480392, 0.847020,
		-0.414433, 0.834906, 0.362183,
		-0.881172, -0.268617, -0.389077,
		37.677219, 37.984032, 22.454769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837254, 38.340343, 23.205177>,  <38.294041, 38.172066, 22.727123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837254, 38.340343, 23.205177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627804, 38.060429, 23.010809>,  <37.502136, 37.892479, 22.894188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627804, 38.060429, 23.010809>,  <37.837254, 38.340343, 23.205177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627804, 38.060429, 23.010809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401379, -0.300466, 0.865226,
		-0.751477, 0.648088, -0.123550,
		-0.523620, -0.699787, -0.485922,
		37.470718, 37.850491, 22.865032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141663, 38.385479, 23.374857>,  <37.837254, 38.340343, 23.205177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141663, 38.385479, 23.374857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.169964, 37.999786, 23.272678>,  <37.186947, 37.768372, 23.211370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.169964, 37.999786, 23.272678>,  <37.141663, 38.385479, 23.374857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169964, 37.999786, 23.272678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586039, -0.247414, 0.771586,
		-0.807188, 0.095108, -0.582582,
		0.070755, -0.964230, -0.255447,
		37.191189, 37.710518, 23.196045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422012, 38.141235, 23.356266>,  <37.141663, 38.385479, 23.374857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422012, 38.141235, 23.356266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.672489, 37.834454, 23.412359>,  <36.822777, 37.650383, 23.446014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.672489, 37.834454, 23.412359>,  <36.422012, 38.141235, 23.356266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672489, 37.834454, 23.412359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556008, -0.313190, 0.769914,
		-0.546570, -0.560083, -0.622550,
		0.626192, -0.766954, 0.140231,
		36.860348, 37.604366, 23.454428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023624, 37.635021, 23.574821>,  <36.422012, 38.141235, 23.356266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023624, 37.635021, 23.574821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391541, 37.532398, 23.693594>,  <36.612289, 37.470825, 23.764858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391541, 37.532398, 23.693594>,  <36.023624, 37.635021, 23.574821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391541, 37.532398, 23.693594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387143, -0.469625, 0.793456,
		-0.064120, -0.844767, -0.531279,
		0.919788, -0.256558, 0.296933,
		36.667477, 37.455429, 23.782675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839230, 37.039825, 23.901897>,  <36.023624, 37.635021, 23.574821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839230, 37.039825, 23.901897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218281, 37.110420, 24.008373>,  <36.445709, 37.152779, 24.072260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218281, 37.110420, 24.008373>,  <35.839230, 37.039825, 23.901897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218281, 37.110420, 24.008373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094649, -0.640829, 0.761827,
		0.305039, -0.747121, -0.590561,
		0.947625, 0.176491, 0.266192,
		36.502567, 37.163368, 24.088230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062096, 36.438580, 24.048159>,  <35.839230, 37.039825, 23.901897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062096, 36.438580, 24.048159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.316021, 36.685474, 24.234077>,  <36.468376, 36.833611, 24.345629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.316021, 36.685474, 24.234077>,  <36.062096, 36.438580, 24.048159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316021, 36.685474, 24.234077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210743, -0.440424, 0.872705,
		0.743374, -0.651954, -0.149507,
		0.634809, 0.617238, 0.464795,
		36.506462, 36.870647, 24.373516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275330, 36.014103, 24.564039>,  <36.062096, 36.438580, 24.048159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275330, 36.014103, 24.564039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391167, 36.379616, 24.677971>,  <36.460670, 36.598923, 24.746330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391167, 36.379616, 24.677971>,  <36.275330, 36.014103, 24.564039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391167, 36.379616, 24.677971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033098, -0.287843, 0.957105,
		0.956577, -0.286601, -0.053114,
		0.289596, 0.913787, 0.284830,
		36.478046, 36.653751, 24.763420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572918, 35.861977, 25.078394>,  <36.275330, 36.014103, 24.564039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572918, 35.861977, 25.078394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526371, 36.253075, 25.148209>,  <36.498444, 36.487736, 25.190098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526371, 36.253075, 25.148209>,  <36.572918, 35.861977, 25.078394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526371, 36.253075, 25.148209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041681, -0.170769, 0.984429,
		0.992331, 0.121833, -0.020881,
		-0.116370, 0.977750, 0.174538,
		36.491459, 36.546398, 25.200569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116039, 35.986378, 25.439756>,  <36.572918, 35.861977, 25.078394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116039, 35.986378, 25.439756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836609, 36.258575, 25.528233>,  <36.668949, 36.421894, 25.581318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836609, 36.258575, 25.528233>,  <37.116039, 35.986378, 25.439756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836609, 36.258575, 25.528233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162441, -0.150233, 0.975214,
		0.696854, 0.717191, -0.005591,
		-0.698575, 0.680490, 0.221192,
		36.627037, 36.462723, 25.594591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370041, 36.356777, 26.059723>,  <37.116039, 35.986378, 25.439756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370041, 36.356777, 26.059723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975182, 36.420662, 26.062153>,  <36.738266, 36.458992, 26.063610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975182, 36.420662, 26.062153>,  <37.370041, 36.356777, 26.059723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975182, 36.420662, 26.062153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005487, -0.071854, 0.997400,
		0.159734, 0.984545, 0.071806,
		-0.987145, 0.159712, 0.006076,
		36.679039, 36.468575, 26.063976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143406, 36.850895, 26.628395>,  <37.370041, 36.356777, 26.059723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143406, 36.850895, 26.628395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.803947, 36.654613, 26.549389>,  <36.600273, 36.536846, 26.501986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.803947, 36.654613, 26.549389>,  <37.143406, 36.850895, 26.628395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803947, 36.654613, 26.549389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109984, -0.201552, 0.973283,
		-0.517402, 0.847696, 0.117077,
		-0.848645, -0.490702, -0.197516,
		36.549355, 36.507404, 26.490133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747265, 37.102264, 27.160843>,  <37.143406, 36.850895, 26.628395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747265, 37.102264, 27.160843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564880, 36.776489, 27.017298>,  <36.455448, 36.581024, 26.931171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564880, 36.776489, 27.017298>,  <36.747265, 37.102264, 27.160843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564880, 36.776489, 27.017298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328315, -0.220856, 0.918385,
		-0.827228, 0.536570, -0.166692,
		-0.455963, -0.814442, -0.358862,
		36.428093, 36.532158, 26.909639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051689, 37.151730, 27.410522>,  <36.747265, 37.102264, 27.160843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051689, 37.151730, 27.410522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.156826, 36.775177, 27.325937>,  <36.219910, 36.549248, 27.275187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.156826, 36.775177, 27.325937>,  <36.051689, 37.151730, 27.410522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156826, 36.775177, 27.325937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311833, -0.290293, 0.904705,
		-0.913056, -0.171857, -0.369856,
		0.262846, -0.941380, -0.211463,
		36.235680, 36.492764, 27.262499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642056, 36.776276, 27.781895>,  <36.051689, 37.151730, 27.410522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642056, 36.776276, 27.781895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919731, 36.501968, 27.694416>,  <36.086334, 36.337383, 27.641928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919731, 36.501968, 27.694416>,  <35.642056, 36.776276, 27.781895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919731, 36.501968, 27.694416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163673, -0.446262, 0.879808,
		-0.700941, -0.574954, -0.422030,
		0.694185, -0.685768, -0.218698,
		36.127987, 36.296238, 27.628807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401184, 36.223560, 28.085192>,  <35.642056, 36.776276, 27.781895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401184, 36.223560, 28.085192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.789066, 36.134575, 28.044821>,  <36.021793, 36.081184, 28.020599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.789066, 36.134575, 28.044821>,  <35.401184, 36.223560, 28.085192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789066, 36.134575, 28.044821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037922, -0.545222, 0.837433,
		-0.241324, -0.808234, -0.537140,
		0.969703, -0.222462, -0.100925,
		36.079979, 36.067837, 28.014544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455635, 35.543407, 28.384485>,  <35.401184, 36.223560, 28.085192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455635, 35.543407, 28.384485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816723, 35.715256, 28.375364>,  <36.033375, 35.818367, 28.369892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816723, 35.715256, 28.375364>,  <35.455635, 35.543407, 28.384485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816723, 35.715256, 28.375364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228727, -0.434357, 0.871216,
		0.364391, -0.791680, -0.490369,
		0.902720, 0.429624, -0.022802,
		36.087540, 35.844143, 28.368525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968174, 35.049278, 28.376698>,  <35.455635, 35.543407, 28.384485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968174, 35.049278, 28.376698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108002, 35.377964, 28.556736>,  <36.191898, 35.575176, 28.664759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108002, 35.377964, 28.556736>,  <35.968174, 35.049278, 28.376698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108002, 35.377964, 28.556736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208765, -0.536638, 0.817580,
		0.913357, -0.191833, -0.359136,
		0.349565, 0.821718, 0.450094,
		36.212872, 35.624481, 28.691765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537136, 34.785610, 28.711994>,  <35.968174, 35.049278, 28.376698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537136, 34.785610, 28.711994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.510143, 35.153038, 28.867773>,  <36.493946, 35.373497, 28.961241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.510143, 35.153038, 28.867773>,  <36.537136, 34.785610, 28.711994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510143, 35.153038, 28.867773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358811, -0.341879, 0.868547,
		0.930967, 0.198352, -0.306522,
		-0.067484, 0.918572, 0.389449,
		36.489899, 35.428608, 28.984608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227600, 34.828205, 29.091906>,  <36.537136, 34.785610, 28.711994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227600, 34.828205, 29.091906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.992733, 35.117878, 29.236570>,  <36.851814, 35.291683, 29.323368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.992733, 35.117878, 29.236570>,  <37.227600, 34.828205, 29.091906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992733, 35.117878, 29.236570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103703, -0.375808, 0.920877,
		0.802798, 0.578211, 0.145560,
		-0.587163, 0.724183, 0.361660,
		36.816586, 35.335133, 29.345068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605194, 35.096615, 29.655329>,  <37.227600, 34.828205, 29.091906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605194, 35.096615, 29.655329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.215153, 35.164509, 29.712404>,  <36.981129, 35.205246, 29.746649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.215153, 35.164509, 29.712404>,  <37.605194, 35.096615, 29.655329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215153, 35.164509, 29.712404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106340, -0.206715, 0.972605,
		0.194578, 0.963566, 0.183520,
		-0.975106, 0.169732, 0.142688,
		36.922623, 35.215427, 29.755211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328751, 35.149723, 29.904167>,  <37.605194, 35.096615, 29.655329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328751, 35.149723, 29.904167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.591774, 35.282467, 30.174717>,  <38.749588, 35.362114, 30.337048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.591774, 35.282467, 30.174717>,  <38.328751, 35.149723, 29.904167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591774, 35.282467, 30.174717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587649, 0.335886, -0.736104,
		-0.471467, 0.881505, 0.025849,
		0.657562, 0.331858, 0.676374,
		38.789043, 35.382023, 30.377630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388527, 35.864281, 29.907665>,  <38.328751, 35.149723, 29.904167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388527, 35.864281, 29.907665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.737259, 35.715599, 30.035257>,  <38.946499, 35.626392, 30.111813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.737259, 35.715599, 30.035257>,  <38.388527, 35.864281, 29.907665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737259, 35.715599, 30.035257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409794, 0.196818, -0.890692,
		0.268289, 0.907250, 0.323912,
		0.871831, -0.371700, 0.318981,
		38.998810, 35.604088, 30.130951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891270, 36.345543, 29.642845>,  <38.388527, 35.864281, 29.907665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891270, 36.345543, 29.642845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.092716, 36.009624, 29.723955>,  <39.213585, 35.808075, 29.772621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.092716, 36.009624, 29.723955>,  <38.891270, 36.345543, 29.642845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092716, 36.009624, 29.723955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544572, 0.126373, -0.829139,
		0.670681, 0.527992, 0.520972,
		0.503615, -0.839794, 0.202774,
		39.243801, 35.757687, 29.784788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577175, 36.572834, 29.532225>,  <38.891270, 36.345543, 29.642845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577175, 36.572834, 29.532225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558430, 36.174801, 29.497341>,  <39.547184, 35.935982, 29.476412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558430, 36.174801, 29.497341>,  <39.577175, 36.572834, 29.532225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558430, 36.174801, 29.497341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344115, 0.065877, -0.936613,
		0.937757, -0.073904, 0.339338,
		-0.046865, -0.995087, -0.087208,
		39.544369, 35.876274, 29.471178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231258, 36.443069, 29.562878>,  <39.577175, 36.572834, 29.532225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231258, 36.443069, 29.562878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.042007, 36.142647, 29.378674>,  <39.928455, 35.962395, 29.268152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.042007, 36.142647, 29.378674>,  <40.231258, 36.443069, 29.562878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042007, 36.142647, 29.378674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402522, 0.280679, -0.871318,
		0.783662, -0.597610, 0.169519,
		-0.473128, -0.751054, -0.460508,
		39.900070, 35.917332, 29.240520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674095, 36.360600, 29.046095>,  <40.231258, 36.443069, 29.562878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674095, 36.360600, 29.046095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.346355, 36.160877, 28.933414>,  <40.149712, 36.041042, 28.865807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.346355, 36.160877, 28.933414>,  <40.674095, 36.360600, 29.046095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346355, 36.160877, 28.933414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272008, 0.093958, -0.957697,
		0.504652, -0.861316, 0.058830,
		-0.819352, -0.499306, -0.281701,
		40.100548, 36.011086, 28.848904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932865, 35.922638, 28.505856>,  <40.674095, 36.360600, 29.046095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932865, 35.922638, 28.505856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.537918, 35.967617, 28.461206>,  <40.300949, 35.994602, 28.434416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.537918, 35.967617, 28.461206>,  <40.932865, 35.922638, 28.505856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537918, 35.967617, 28.461206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130440, 0.176966, -0.975535,
		-0.089941, -0.977772, -0.189398,
		-0.987368, 0.112445, -0.111624,
		40.241707, 36.001350, 28.427719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823738, 35.691746, 27.829042>,  <40.932865, 35.922638, 28.505856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823738, 35.691746, 27.829042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.508209, 35.922695, 27.913334>,  <40.318893, 36.061264, 27.963909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.508209, 35.922695, 27.913334>,  <40.823738, 35.691746, 27.829042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508209, 35.922695, 27.913334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002437, 0.339919, -0.940452,
		-0.614619, -0.742360, -0.266728,
		-0.788820, 0.577370, 0.210730,
		40.271564, 36.095905, 27.976553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341534, 35.568676, 27.277180>,  <40.823738, 35.691746, 27.829042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341534, 35.568676, 27.277180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.267319, 35.923874, 27.445486>,  <40.222790, 36.136993, 27.546469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.267319, 35.923874, 27.445486>,  <40.341534, 35.568676, 27.277180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267319, 35.923874, 27.445486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200897, 0.453434, -0.868354,
		-0.961882, -0.076581, -0.262524,
		-0.185537, 0.887994, 0.420764,
		40.211658, 36.190273, 27.571716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794384, 35.801723, 26.888897>,  <40.341534, 35.568676, 27.277180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794384, 35.801723, 26.888897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959126, 36.132645, 27.041706>,  <40.057972, 36.331196, 27.133392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959126, 36.132645, 27.041706>,  <39.794384, 35.801723, 26.888897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959126, 36.132645, 27.041706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021699, 0.428016, -0.903511,
		-0.910990, 0.363828, 0.194233,
		0.411857, 0.827304, 0.382024,
		40.082684, 36.380836, 27.156313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297489, 36.361458, 26.694683>,  <39.794384, 35.801723, 26.888897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297489, 36.361458, 26.694683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.643753, 36.546482, 26.771280>,  <39.851513, 36.657497, 26.817240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.643753, 36.546482, 26.771280>,  <39.297489, 36.361458, 26.694683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643753, 36.546482, 26.771280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009474, 0.397572, -0.917522,
		-0.500545, 0.792447, 0.348544,
		0.865659, 0.462563, 0.191495,
		39.903450, 36.685249, 26.828730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253765, 37.002647, 26.590637>,  <39.297489, 36.361458, 26.694683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253765, 37.002647, 26.590637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.651253, 36.979256, 26.552471>,  <39.889744, 36.965221, 26.529572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.651253, 36.979256, 26.552471>,  <39.253765, 37.002647, 26.590637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651253, 36.979256, 26.552471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047819, 0.548980, -0.834466,
		0.101180, 0.833787, 0.542736,
		0.993718, -0.058478, -0.095417,
		39.949368, 36.961712, 26.523846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513931, 37.643543, 26.434067>,  <39.253765, 37.002647, 26.590637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513931, 37.643543, 26.434067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.798714, 37.396534, 26.300335>,  <39.969585, 37.248329, 26.220097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.798714, 37.396534, 26.300335>,  <39.513931, 37.643543, 26.434067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798714, 37.396534, 26.300335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063935, 0.531127, -0.844877,
		0.699304, 0.580143, 0.417622,
		0.711959, -0.617527, -0.334327,
		40.012302, 37.211277, 26.200037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075535, 38.071781, 26.106726>,  <39.513931, 37.643543, 26.434067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075535, 38.071781, 26.106726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.121082, 37.703850, 25.956553>,  <40.148411, 37.483089, 25.866449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.121082, 37.703850, 25.956553>,  <40.075535, 38.071781, 26.106726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121082, 37.703850, 25.956553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195422, 0.391244, -0.899299,
		0.974086, 0.029036, 0.224306,
		0.113871, -0.919829, -0.375431,
		40.155243, 37.427902, 25.843924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542629, 38.204369, 25.650671>,  <40.075535, 38.071781, 26.106726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542629, 38.204369, 25.650671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404743, 37.847145, 25.535009>,  <40.322010, 37.632809, 25.465612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404743, 37.847145, 25.535009>,  <40.542629, 38.204369, 25.650671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404743, 37.847145, 25.535009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211386, 0.226272, -0.950851,
		0.914595, -0.388900, 0.110780,
		-0.344719, -0.893061, -0.289155,
		40.301327, 37.579227, 25.448263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094582, 37.903641, 25.146908>,  <40.542629, 38.204369, 25.650671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094582, 37.903641, 25.146908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.720070, 37.770206, 25.102919>,  <40.495361, 37.690147, 25.076525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.720070, 37.770206, 25.102919>,  <41.094582, 37.903641, 25.146908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720070, 37.770206, 25.102919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040417, 0.413334, -0.909682,
		0.348910, -0.847277, -0.400481,
		-0.936285, -0.333583, -0.109972,
		40.439186, 37.670132, 25.069927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096504, 37.593010, 24.562691>,  <41.094582, 37.903641, 25.146908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096504, 37.593010, 24.562691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.699680, 37.633385, 24.592716>,  <40.461586, 37.657608, 24.610731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.699680, 37.633385, 24.592716>,  <41.096504, 37.593010, 24.562691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699680, 37.633385, 24.592716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035576, 0.347250, -0.937098,
		-0.120654, -0.932325, -0.340900,
		-0.992057, 0.100937, 0.075066,
		40.402061, 37.663666, 24.615236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914024, 37.301800, 23.945564>,  <41.096504, 37.593010, 24.562691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914024, 37.301800, 23.945564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.586914, 37.491844, 24.075497>,  <40.390648, 37.605873, 24.153456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.586914, 37.491844, 24.075497>,  <40.914024, 37.301800, 23.945564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586914, 37.491844, 24.075497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129911, 0.397449, -0.908382,
		-0.560689, -0.785048, -0.263300,
		-0.817772, 0.475115, 0.324831,
		40.341583, 37.634380, 24.172947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.149055, 37.094139, 23.364937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.057175, 37.427368, 23.566225>,  <40.002048, 37.627304, 23.686998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.057175, 37.427368, 23.566225>,  <40.149055, 37.094139, 23.364937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057175, 37.427368, 23.566225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202780, 0.464732, -0.861919,
		-0.951903, -0.300025, 0.062182,
		-0.229699, 0.833072, 0.503219,
		39.988266, 37.677288, 23.717192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507080, 37.272221, 23.062716>,  <40.149055, 37.094139, 23.364937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507080, 37.272221, 23.062716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686653, 37.591820, 23.222746>,  <39.794395, 37.783581, 23.318764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686653, 37.591820, 23.222746>,  <39.507080, 37.272221, 23.062716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686653, 37.591820, 23.222746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309318, 0.559008, -0.769307,
		-0.838320, 0.221617, 0.498102,
		0.448934, 0.798997, 0.400078,
		39.821335, 37.831520, 23.342770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047867, 37.821220, 22.985752>,  <39.507080, 37.272221, 23.062716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047867, 37.821220, 22.985752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.397327, 38.005886, 23.047211>,  <39.607002, 38.116684, 23.084085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.397327, 38.005886, 23.047211>,  <39.047867, 37.821220, 22.985752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397327, 38.005886, 23.047211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227199, 0.666319, -0.710211,
		-0.430253, 0.585568, 0.687018,
		0.873649, 0.461660, 0.153645,
		39.659424, 38.144382, 23.093304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854416, 38.637733, 22.881561>,  <39.047867, 37.821220, 22.985752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854416, 38.637733, 22.881561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.245205, 38.568272, 22.831959>,  <39.479679, 38.526596, 22.802197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.245205, 38.568272, 22.831959>,  <38.854416, 38.637733, 22.881561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245205, 38.568272, 22.831959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018997, 0.649620, -0.760021,
		0.212536, 0.740161, 0.637958,
		0.976969, -0.173651, -0.124006,
		39.538296, 38.516178, 22.794756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171738, 39.239326, 22.843391>,  <38.854416, 38.637733, 22.881561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171738, 39.239326, 22.843391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.440437, 39.009430, 22.656448>,  <39.601658, 38.871490, 22.544283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.440437, 39.009430, 22.656448>,  <39.171738, 39.239326, 22.843391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440437, 39.009430, 22.656448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069489, 0.677012, -0.732684,
		0.737511, 0.459705, 0.494722,
		0.671751, -0.574740, -0.467359,
		39.641964, 38.837009, 22.516241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713341, 39.725372, 22.586748>,  <39.171738, 39.239326, 22.843391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713341, 39.725372, 22.586748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.760735, 39.386898, 22.378927>,  <39.789169, 39.183815, 22.254234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.760735, 39.386898, 22.378927>,  <39.713341, 39.725372, 22.586748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760735, 39.386898, 22.378927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154994, 0.532582, -0.832066,
		0.980785, 0.018056, 0.194254,
		0.118480, -0.846186, -0.519550,
		39.796280, 39.133041, 22.223063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257690, 39.850563, 22.225483>,  <39.713341, 39.725372, 22.586748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257690, 39.850563, 22.225483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.117458, 39.533985, 22.025200>,  <40.033318, 39.344040, 21.905031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.117458, 39.533985, 22.025200>,  <40.257690, 39.850563, 22.225483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117458, 39.533985, 22.025200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194663, 0.461380, -0.865583,
		0.916077, -0.400928, -0.007687,
		-0.350583, -0.791445, -0.500706,
		40.012283, 39.296551, 21.874989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681210, 39.887955, 21.717264>,  <40.257690, 39.850563, 22.225483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681210, 39.887955, 21.717264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.428612, 39.634247, 21.538862>,  <40.277054, 39.482021, 21.431822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.428612, 39.634247, 21.538862>,  <40.681210, 39.887955, 21.717264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428612, 39.634247, 21.538862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219538, 0.405413, -0.887380,
		0.743651, -0.658292, -0.116770,
		-0.631495, -0.634265, -0.446006,
		40.239162, 39.443966, 21.405060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856575, 39.915737, 21.151829>,  <40.681210, 39.887955, 21.717264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856575, 39.915737, 21.151829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.563496, 39.666901, 21.041441>,  <40.387650, 39.517597, 20.975208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.563496, 39.666901, 21.041441>,  <40.856575, 39.915737, 21.151829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563496, 39.666901, 21.041441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235079, 0.149199, -0.960457,
		0.638666, -0.768598, 0.036923,
		-0.732696, -0.622091, -0.275970,
		40.343685, 39.480274, 20.958651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190453, 39.360680, 20.662348>,  <40.856575, 39.915737, 21.151829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190453, 39.360680, 20.662348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.797989, 39.427681, 20.623823>,  <40.562511, 39.467880, 20.600708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.797989, 39.427681, 20.623823>,  <41.190453, 39.360680, 20.662348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797989, 39.427681, 20.623823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143890, 0.300765, -0.942781,
		-0.128950, -0.938874, -0.319199,
		-0.981156, 0.167501, -0.096311,
		40.503643, 39.477932, 20.594931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035122, 39.024208, 20.107985>,  <41.190453, 39.360680, 20.662348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035122, 39.024208, 20.107985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.736866, 39.289635, 20.132334>,  <40.557915, 39.448891, 20.146944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.736866, 39.289635, 20.132334>,  <41.035122, 39.024208, 20.107985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736866, 39.289635, 20.132334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171872, 0.279780, -0.944554,
		-0.643808, -0.693830, -0.322663,
		-0.745635, 0.663568, 0.060874,
		40.513176, 39.488705, 20.150597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570869, 38.914536, 19.479158>,  <41.035122, 39.024208, 20.107985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570869, 38.914536, 19.479158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.484455, 39.278709, 19.620256>,  <40.432606, 39.497215, 19.704916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.484455, 39.278709, 19.620256>,  <40.570869, 38.914536, 19.479158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484455, 39.278709, 19.620256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004300, 0.362161, -0.932106,
		-0.976375, -0.199854, -0.082155,
		-0.216038, 0.910439, 0.352746,
		40.419643, 39.551842, 19.726080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105244, 39.173519, 18.996246>,  <40.570869, 38.914536, 19.479158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105244, 39.173519, 18.996246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.237038, 39.495789, 19.193157>,  <40.316113, 39.689148, 19.311304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.237038, 39.495789, 19.193157>,  <40.105244, 39.173519, 18.996246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237038, 39.495789, 19.193157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135120, 0.475788, -0.869119,
		-0.934443, 0.352875, 0.047901,
		0.329481, 0.805670, 0.492277,
		40.335880, 39.737492, 19.340841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697151, 39.704136, 18.674295>,  <40.105244, 39.173519, 18.996246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697151, 39.704136, 18.674295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.004871, 39.873497, 18.865667>,  <40.189507, 39.975113, 18.980492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.004871, 39.873497, 18.865667>,  <39.697151, 39.704136, 18.674295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004871, 39.873497, 18.865667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015692, 0.736110, -0.676680,
		-0.638689, 0.528081, 0.559649,
		0.769305, 0.423406, 0.478432,
		40.235664, 40.000519, 19.009197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518745, 40.407658, 18.760807>,  <39.697151, 39.704136, 18.674295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518745, 40.407658, 18.760807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.914330, 40.391788, 18.817926>,  <40.151680, 40.382267, 18.852198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.914330, 40.391788, 18.817926>,  <39.518745, 40.407658, 18.760807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914330, 40.391788, 18.817926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121295, 0.770330, -0.626002,
		-0.085163, 0.636410, 0.766636,
		0.988956, -0.039677, 0.142796,
		40.211018, 40.379887, 18.860765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691406, 41.104538, 18.930096>,  <39.518745, 40.407658, 18.760807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691406, 41.104538, 18.930096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022133, 40.914654, 18.809414>,  <40.220570, 40.800724, 18.737005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022133, 40.914654, 18.809414>,  <39.691406, 41.104538, 18.930096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022133, 40.914654, 18.809414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251636, 0.791898, -0.556396,
		0.503045, 0.384118, 0.774209,
		0.826816, -0.474711, -0.301702,
		40.270176, 40.772240, 18.718903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310627, 41.624432, 18.911234>,  <39.691406, 41.104538, 18.930096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310627, 41.624432, 18.911234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.441868, 41.329292, 18.675295>,  <40.520615, 41.152206, 18.533731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.441868, 41.329292, 18.675295>,  <40.310627, 41.624432, 18.911234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441868, 41.329292, 18.675295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324050, 0.674440, -0.663417,
		0.887321, 0.026529, 0.460388,
		0.328104, -0.737853, -0.589848,
		40.540298, 41.107937, 18.498341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967369, 41.812386, 18.736118>,  <40.310627, 41.624432, 18.911234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967369, 41.812386, 18.736118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.875755, 41.544010, 18.454016>,  <40.820786, 41.382984, 18.284754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.875755, 41.544010, 18.454016>,  <40.967369, 41.812386, 18.736118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875755, 41.544010, 18.454016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368492, 0.610833, -0.700783,
		0.900974, -0.420387, 0.107330,
		-0.229039, -0.670937, -0.705254,
		40.807045, 41.342728, 18.242439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569302, 41.759384, 18.343767>,  <40.967369, 41.812386, 18.736118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569302, 41.759384, 18.343767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.270958, 41.626972, 18.112556>,  <41.091953, 41.547523, 17.973829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.270958, 41.626972, 18.112556>,  <41.569302, 41.759384, 18.343767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270958, 41.626972, 18.112556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395371, 0.478370, -0.784120,
		0.536079, -0.813377, -0.225915,
		-0.745856, -0.331030, -0.578030,
		41.047199, 41.527664, 17.939148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886990, 41.503365, 17.789495>,  <41.569302, 41.759384, 18.343767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886990, 41.503365, 17.789495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.511395, 41.600784, 17.692356>,  <41.286037, 41.659237, 17.634071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.511395, 41.600784, 17.692356>,  <41.886990, 41.503365, 17.789495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511395, 41.600784, 17.692356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324787, 0.395571, -0.859091,
		-0.113170, -0.885554, -0.450541,
		-0.938992, 0.243553, -0.242849,
		41.229698, 41.673851, 17.619501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956455, 41.446690, 17.091713>,  <41.886990, 41.503365, 17.789495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956455, 41.446690, 17.091713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.608688, 41.638245, 17.140343>,  <41.400028, 41.753178, 17.169521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.608688, 41.638245, 17.140343>,  <41.956455, 41.446690, 17.091713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608688, 41.638245, 17.140343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165582, 0.514250, -0.841504,
		-0.465504, -0.711489, -0.526393,
		-0.869419, 0.478885, 0.121576,
		41.347862, 41.781910, 17.176815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576336, 41.374958, 16.434275>,  <41.956455, 41.446690, 17.091713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576336, 41.374958, 16.434275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.413113, 41.692455, 16.614702>,  <41.315178, 41.882954, 16.722960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.413113, 41.692455, 16.614702>,  <41.576336, 41.374958, 16.434275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413113, 41.692455, 16.614702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083177, 0.524343, -0.847435,
		-0.909160, -0.308281, -0.279982,
		-0.408055, 0.793742, 0.451070,
		41.290695, 41.930576, 16.750023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937786, 41.665775, 16.076742>,  <41.576336, 41.374958, 16.434275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937786, 41.665775, 16.076742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158039, 41.926460, 16.285383>,  <41.290192, 42.082870, 16.410568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158039, 41.926460, 16.285383>,  <40.937786, 41.665775, 16.076742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158039, 41.926460, 16.285383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067897, 0.587826, -0.806133,
		-0.831982, 0.479298, 0.279426,
		0.550632, 0.651717, 0.521604,
		41.323227, 42.121975, 16.441864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690006, 42.284393, 15.949105>,  <40.937786, 41.665775, 16.076742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690006, 42.284393, 15.949105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083195, 42.329975, 16.006765>,  <41.319107, 42.357327, 16.041361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083195, 42.329975, 16.006765>,  <40.690006, 42.284393, 15.949105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083195, 42.329975, 16.006765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045932, 0.607189, -0.793229,
		-0.177921, 0.786343, 0.591615,
		0.982972, 0.113958, 0.144150,
		41.378086, 42.364162, 16.050011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031376, 42.306549, 15.716052>,  <40.690006, 42.284393, 15.949105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031376, 42.306549, 15.716052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686848, 42.268002, 15.516516>,  <39.480129, 42.244873, 15.396793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686848, 42.268002, 15.516516>,  <40.031376, 42.306549, 15.716052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686848, 42.268002, 15.516516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353582, -0.591370, 0.724750,
		-0.364841, 0.800622, 0.475284,
		-0.861319, -0.096367, -0.498842,
		39.428452, 42.239090, 15.366863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485298, 42.534142, 16.202063>,  <40.031376, 42.306549, 15.716052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485298, 42.534142, 16.202063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313160, 42.303837, 15.923985>,  <39.209877, 42.165653, 15.757139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313160, 42.303837, 15.923985>,  <39.485298, 42.534142, 16.202063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313160, 42.303837, 15.923985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461607, -0.521463, 0.717632,
		-0.775705, 0.629738, -0.041367,
		-0.430348, -0.575766, -0.695193,
		39.184055, 42.131107, 15.715427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727085, 42.534389, 16.403955>,  <39.485298, 42.534142, 16.202063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727085, 42.534389, 16.403955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.761147, 42.216396, 16.163708>,  <38.781586, 42.025600, 16.019558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.761147, 42.216396, 16.163708>,  <38.727085, 42.534389, 16.403955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761147, 42.216396, 16.163708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613909, -0.516656, 0.596810,
		-0.784770, 0.317904, -0.532046,
		0.085156, -0.794987, -0.600620,
		38.786694, 41.977901, 15.983521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094849, 42.307137, 16.299469>,  <38.727085, 42.534389, 16.403955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094849, 42.307137, 16.299469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.301971, 41.981911, 16.193037>,  <38.426243, 41.786774, 16.129177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.301971, 41.981911, 16.193037>,  <38.094849, 42.307137, 16.299469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301971, 41.981911, 16.193037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508023, -0.542483, 0.669048,
		-0.688327, -0.211259, -0.693957,
		0.517802, -0.813070, -0.266082,
		38.457314, 41.737991, 16.113213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606144, 41.776817, 16.221291>,  <38.094849, 42.307137, 16.299469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606144, 41.776817, 16.221291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.951836, 41.582352, 16.273066>,  <38.159252, 41.465672, 16.304131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.951836, 41.582352, 16.273066>,  <37.606144, 41.776817, 16.221291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951836, 41.582352, 16.273066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442825, -0.612977, 0.654343,
		-0.238774, -0.622821, -0.745037,
		0.864230, -0.486161, 0.129438,
		38.211105, 41.436504, 16.311897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461079, 40.926323, 16.184053>,  <37.606144, 41.776817, 16.221291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461079, 40.926323, 16.184053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.775421, 40.997120, 16.421068>,  <37.964027, 41.039597, 16.563276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.775421, 40.997120, 16.421068>,  <37.461079, 40.926323, 16.184053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775421, 40.997120, 16.421068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395581, -0.592610, 0.701661,
		0.475332, -0.785803, -0.395693,
		0.785859, 0.176994, 0.592536,
		38.011177, 41.050217, 16.598829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460941, 40.342640, 16.579950>,  <37.461079, 40.926323, 16.184053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460941, 40.342640, 16.579950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746449, 40.530884, 16.787434>,  <37.917751, 40.643829, 16.911924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746449, 40.530884, 16.787434>,  <37.460941, 40.342640, 16.579950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746449, 40.530884, 16.787434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270426, -0.497994, 0.823936,
		0.646070, -0.728371, -0.228186,
		0.713767, 0.470613, 0.518710,
		37.960579, 40.672070, 16.943047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856926, 39.883827, 16.963455>,  <37.460941, 40.342640, 16.579950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856926, 39.883827, 16.963455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.907547, 40.221867, 17.171223>,  <37.937920, 40.424690, 17.295883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.907547, 40.221867, 17.171223>,  <37.856926, 39.883827, 16.963455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907547, 40.221867, 17.171223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221044, -0.486439, 0.845290,
		0.967018, -0.221787, 0.125245,
		0.126550, 0.845096, 0.519421,
		37.945511, 40.475395, 17.327049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429863, 39.789997, 17.426296>,  <37.856926, 39.883827, 16.963455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429863, 39.789997, 17.426296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215473, 40.097076, 17.566793>,  <38.086838, 40.281322, 17.651093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215473, 40.097076, 17.566793>,  <38.429863, 39.789997, 17.426296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215473, 40.097076, 17.566793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173889, -0.507519, 0.843912,
		0.826131, 0.391239, 0.405512,
		-0.535976, 0.767696, 0.351245,
		38.054680, 40.327385, 17.672167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711952, 39.948952, 18.020912>,  <38.429863, 39.789997, 17.426296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711952, 39.948952, 18.020912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.350189, 40.115604, 18.057699>,  <38.133129, 40.215595, 18.079771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.350189, 40.115604, 18.057699>,  <38.711952, 39.948952, 18.020912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350189, 40.115604, 18.057699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062375, -0.342348, 0.937500,
		0.422076, 0.842150, 0.335611,
		-0.904412, 0.416630, 0.091967,
		38.078865, 40.240593, 18.085289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706032, 40.190044, 18.689877>,  <38.711952, 39.948952, 18.020912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706032, 40.190044, 18.689877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.317570, 40.203243, 18.595409>,  <38.084492, 40.211163, 18.538729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.317570, 40.203243, 18.595409>,  <38.706032, 40.190044, 18.689877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317570, 40.203243, 18.595409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226429, -0.438231, 0.869876,
		-0.074796, 0.898257, 0.433059,
		-0.971152, 0.032994, -0.236169,
		38.026226, 40.213142, 18.524559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455318, 40.513073, 19.239513>,  <38.706032, 40.190044, 18.689877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455318, 40.513073, 19.239513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163467, 40.297192, 19.071531>,  <37.988358, 40.167664, 18.970741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163467, 40.297192, 19.071531>,  <38.455318, 40.513073, 19.239513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163467, 40.297192, 19.071531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215387, -0.401484, 0.890179,
		-0.649041, 0.739951, 0.176687,
		-0.729626, -0.539706, -0.419956,
		37.944580, 40.135281, 18.945545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995872, 40.526985, 19.715120>,  <38.455318, 40.513073, 19.239513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995872, 40.526985, 19.715120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.878380, 40.219730, 19.487547>,  <37.807884, 40.035378, 19.351004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.878380, 40.219730, 19.487547>,  <37.995872, 40.526985, 19.715120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878380, 40.219730, 19.487547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303393, -0.489494, 0.817526,
		-0.906461, 0.412746, -0.089266,
		-0.293736, -0.768138, -0.568932,
		37.790260, 39.989288, 19.316868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353928, 40.405857, 19.927334>,  <37.995872, 40.526985, 19.715120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353928, 40.405857, 19.927334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.448952, 40.068493, 19.734577>,  <37.505966, 39.866074, 19.618923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.448952, 40.068493, 19.734577>,  <37.353928, 40.405857, 19.927334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448952, 40.068493, 19.734577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239261, -0.531616, 0.812489,
		-0.941446, -0.077714, -0.328085,
		0.237557, -0.843413, -0.481894,
		37.520218, 39.815468, 19.590010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832539, 39.998623, 19.997793>,  <37.353928, 40.405857, 19.927334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832539, 39.998623, 19.997793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.137947, 39.744396, 19.952042>,  <37.321194, 39.591862, 19.924591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.137947, 39.744396, 19.952042>,  <36.832539, 39.998623, 19.997793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137947, 39.744396, 19.952042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302858, -0.508852, 0.805821,
		-0.570358, -0.580622, -0.581008,
		0.763524, -0.635569, -0.114381,
		37.367004, 39.553726, 19.917727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491253, 39.343327, 20.082706>,  <36.832539, 39.998623, 19.997793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491253, 39.343327, 20.082706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.885834, 39.320816, 20.144348>,  <37.122581, 39.307308, 20.181334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.885834, 39.320816, 20.144348>,  <36.491253, 39.343327, 20.082706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885834, 39.320816, 20.144348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160569, -0.523884, 0.836518,
		0.033656, -0.849928, -0.525822,
		0.986451, -0.056277, 0.154104,
		37.181770, 39.303932, 20.190578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647751, 38.523335, 20.243540>,  <36.491253, 39.343327, 20.082706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647751, 38.523335, 20.243540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.979431, 38.692326, 20.389933>,  <37.178440, 38.793720, 20.477768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.979431, 38.692326, 20.389933>,  <36.647751, 38.523335, 20.243540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979431, 38.692326, 20.389933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024237, -0.681322, 0.731583,
		0.558430, -0.597756, -0.575190,
		0.829197, 0.422479, 0.365983,
		37.228191, 38.819069, 20.499727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123032, 37.931473, 20.418791>,  <36.647751, 38.523335, 20.243540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123032, 37.931473, 20.418791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267265, 38.238792, 20.630333>,  <37.353806, 38.423183, 20.757257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267265, 38.238792, 20.630333>,  <37.123032, 37.931473, 20.418791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267265, 38.238792, 20.630333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000408, -0.567129, 0.823629,
		0.932725, -0.296775, -0.204813,
		0.360588, 0.768303, 0.528854,
		37.375443, 38.469284, 20.788990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586529, 37.637463, 20.889814>,  <37.123032, 37.931473, 20.418791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586529, 37.637463, 20.889814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.507652, 37.994747, 21.051449>,  <37.460327, 38.209118, 21.148430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.507652, 37.994747, 21.051449>,  <37.586529, 37.637463, 20.889814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507652, 37.994747, 21.051449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025877, -0.407294, 0.912930,
		0.980023, 0.190480, 0.057202,
		-0.197193, 0.893213, 0.404087,
		37.448494, 38.262711, 21.172674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914833, 37.529877, 21.506422>,  <37.586529, 37.637463, 20.889814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914833, 37.529877, 21.506422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.703529, 37.865871, 21.556000>,  <37.576748, 38.067471, 21.585747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.703529, 37.865871, 21.556000>,  <37.914833, 37.529877, 21.506422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703529, 37.865871, 21.556000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040946, -0.171004, 0.984419,
		0.848097, 0.514950, 0.124728,
		-0.528256, 0.839990, 0.123943,
		37.545052, 38.117870, 21.593184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.250034, 36.957535, 26.538113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.850807, 36.980663, 26.529089>,  <40.611271, 36.994541, 26.523674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.850807, 36.980663, 26.529089>,  <41.250034, 36.957535, 26.538113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850807, 36.980663, 26.529089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036233, -0.247708, 0.968157,
		0.050391, 0.967108, 0.249325,
		-0.998072, 0.057820, -0.022559,
		40.551384, 36.998009, 26.522322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021221, 37.350380, 27.139717>,  <41.250034, 36.957535, 26.538113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021221, 37.350380, 27.139717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.705933, 37.127666, 27.034878>,  <40.516758, 36.994038, 26.971975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.705933, 37.127666, 27.034878>,  <41.021221, 37.350380, 27.139717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705933, 37.127666, 27.034878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195949, -0.176656, 0.964571,
		-0.583356, 0.811657, 0.030144,
		-0.788226, -0.556781, -0.262097,
		40.469463, 36.960632, 26.956249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538799, 37.505337, 27.735691>,  <41.021221, 37.350380, 27.139717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538799, 37.505337, 27.735691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.388451, 37.178673, 27.560514>,  <40.298241, 36.982674, 27.455408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.388451, 37.178673, 27.560514>,  <40.538799, 37.505337, 27.735691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388451, 37.178673, 27.560514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509771, -0.212440, 0.833668,
		-0.773858, 0.536600, -0.336459,
		-0.375869, -0.816658, -0.437942,
		40.275688, 36.933674, 27.429132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824741, 37.380318, 28.031103>,  <40.538799, 37.505337, 27.735691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824741, 37.380318, 28.031103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.936230, 37.021976, 27.892681>,  <40.003124, 36.806973, 27.809628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.936230, 37.021976, 27.892681>,  <39.824741, 37.380318, 28.031103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936230, 37.021976, 27.892681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372158, -0.432931, 0.821017,
		-0.885332, -0.100049, -0.454069,
		0.278722, -0.895858, -0.346054,
		40.019848, 36.753220, 27.788864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247955, 36.865273, 28.164999>,  <39.824741, 37.380318, 28.031103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247955, 36.865273, 28.164999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.571125, 36.631870, 28.132051>,  <39.765026, 36.491829, 28.112284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.571125, 36.631870, 28.132051>,  <39.247955, 36.865273, 28.164999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571125, 36.631870, 28.132051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272878, -0.494336, 0.825330,
		-0.522302, -0.644325, -0.558611,
		0.807923, -0.583503, -0.082371,
		39.813503, 36.456818, 28.107340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969803, 36.237835, 28.281689>,  <39.247955, 36.865273, 28.164999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969803, 36.237835, 28.281689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.361477, 36.181244, 28.339890>,  <39.596481, 36.147289, 28.374809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.361477, 36.181244, 28.339890>,  <38.969803, 36.237835, 28.281689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361477, 36.181244, 28.339890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202905, -0.696952, 0.687814,
		0.004096, -0.703023, -0.711155,
		0.979190, -0.141480, 0.145502,
		39.655235, 36.138802, 28.383539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003593, 35.491871, 28.505953>,  <38.969803, 36.237835, 28.281689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003593, 35.491871, 28.505953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.368568, 35.631458, 28.591436>,  <39.587555, 35.715210, 28.642727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.368568, 35.631458, 28.591436>,  <39.003593, 35.491871, 28.505953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368568, 35.631458, 28.591436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018666, -0.486215, 0.873640,
		0.408780, -0.801135, -0.437129,
		0.912442, 0.348967, 0.213709,
		39.642300, 35.736149, 28.655548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305607, 34.894726, 28.779644>,  <39.003593, 35.491871, 28.505953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305607, 34.894726, 28.779644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460510, 35.235867, 28.919746>,  <39.553452, 35.440552, 29.003809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460510, 35.235867, 28.919746>,  <39.305607, 34.894726, 28.779644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460510, 35.235867, 28.919746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209241, -0.288689, 0.934279,
		0.897914, -0.435094, 0.066654,
		0.387257, 0.852849, 0.350258,
		39.576687, 35.491722, 29.024824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766182, 34.625301, 29.309254>,  <39.305607, 34.894726, 28.779644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766182, 34.625301, 29.309254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.646183, 35.003342, 29.361088>,  <39.574184, 35.230164, 29.392187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.646183, 35.003342, 29.361088>,  <39.766182, 34.625301, 29.309254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646183, 35.003342, 29.361088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308060, -0.224546, 0.924488,
		0.902828, 0.237428, 0.358510,
		-0.300001, 0.945096, 0.129584,
		39.556183, 35.286869, 29.399963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969982, 34.715477, 29.933418>,  <39.766182, 34.625301, 29.309254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969982, 34.715477, 29.933418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.727139, 35.029667, 29.885326>,  <39.581432, 35.218182, 29.856470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.727139, 35.029667, 29.885326>,  <39.969982, 34.715477, 29.933418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727139, 35.029667, 29.885326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152812, 0.033075, 0.987702,
		0.779787, 0.618015, 0.099949,
		-0.607109, 0.785470, -0.120231,
		39.545006, 35.265308, 29.849257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074505, 34.982834, 30.491661>,  <39.969982, 34.715477, 29.933418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074505, 34.982834, 30.491661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730446, 35.155762, 30.383408>,  <39.524010, 35.259518, 30.318457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730446, 35.155762, 30.383408>,  <40.074505, 34.982834, 30.491661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730446, 35.155762, 30.383408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219804, 0.164608, 0.961556,
		0.460251, 0.886567, -0.046560,
		-0.860148, 0.432323, -0.270632,
		39.472401, 35.285458, 30.302217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964748, 35.714401, 30.844368>,  <40.074505, 34.982834, 30.491661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964748, 35.714401, 30.844368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.613659, 35.547062, 30.750914>,  <39.403008, 35.446659, 30.694841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.613659, 35.547062, 30.750914>,  <39.964748, 35.714401, 30.844368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613659, 35.547062, 30.750914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359113, 0.251500, 0.898769,
		-0.317242, 0.872771, -0.370982,
		-0.877722, -0.418352, -0.233637,
		39.350342, 35.421555, 30.680822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355881, 36.200974, 30.852999>,  <39.964748, 35.714401, 30.844368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355881, 36.200974, 30.852999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.309841, 35.818531, 30.960783>,  <39.282219, 35.589066, 31.025454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.309841, 35.818531, 30.960783>,  <39.355881, 36.200974, 30.852999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309841, 35.818531, 30.960783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305576, 0.292190, 0.906228,
		-0.945186, 0.021962, -0.325794,
		-0.115096, -0.956108, 0.269462,
		39.275311, 35.531700, 31.041622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962593, 36.283600, 31.454014>,  <39.355881, 36.200974, 30.852999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962593, 36.283600, 31.454014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.007412, 35.887585, 31.488123>,  <39.034302, 35.649975, 31.508589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.007412, 35.887585, 31.488123>,  <38.962593, 36.283600, 31.454014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007412, 35.887585, 31.488123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214950, 0.059632, 0.974803,
		-0.970176, -0.127554, -0.206127,
		0.112048, -0.990037, 0.085271,
		39.041027, 35.590572, 31.513704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395550, 36.906048, 31.240088>,  <38.962593, 36.283600, 31.454014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395550, 36.906048, 31.240088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.401142, 37.292889, 31.341684>,  <39.404499, 37.524994, 31.402641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.401142, 37.292889, 31.341684>,  <39.395550, 36.906048, 31.240088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401142, 37.292889, 31.341684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310984, 0.245623, -0.918127,
		-0.950312, -0.066151, 0.304188,
		0.013981, 0.967105, 0.253991,
		39.405334, 37.583019, 31.417881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843719, 37.202644, 30.881271>,  <39.395550, 36.906048, 31.240088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843719, 37.202644, 30.881271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.051971, 37.524876, 30.994396>,  <39.176922, 37.718216, 31.062271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.051971, 37.524876, 30.994396>,  <38.843719, 37.202644, 30.881271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051971, 37.524876, 30.994396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216291, 0.444888, -0.869076,
		-0.825929, 0.391300, 0.405864,
		0.520634, 0.805580, 0.282811,
		39.208160, 37.766548, 31.079239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485249, 37.981514, 30.637926>,  <38.843719, 37.202644, 30.881271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485249, 37.981514, 30.637926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.877880, 38.027874, 30.698692>,  <39.113457, 38.055691, 30.735151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.877880, 38.027874, 30.698692>,  <38.485249, 37.981514, 30.637926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877880, 38.027874, 30.698692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089055, 0.425932, -0.900362,
		-0.169057, 0.897301, 0.407763,
		0.981575, 0.115899, 0.151916,
		39.172352, 38.062645, 30.744267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653618, 38.617821, 30.561447>,  <38.485249, 37.981514, 30.637926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653618, 38.617821, 30.561447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.019066, 38.464966, 30.505924>,  <39.238335, 38.373253, 30.472610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.019066, 38.464966, 30.505924>,  <38.653618, 38.617821, 30.561447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019066, 38.464966, 30.505924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123976, 0.587013, -0.800028,
		0.387199, 0.713715, 0.583684,
		0.913623, -0.382134, -0.138807,
		39.293152, 38.350327, 30.464281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983089, 39.216919, 30.290525>,  <38.653618, 38.617821, 30.561447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983089, 39.216919, 30.290525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.220093, 38.901985, 30.222359>,  <39.362293, 38.713024, 30.181459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.220093, 38.901985, 30.222359>,  <38.983089, 39.216919, 30.290525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220093, 38.901985, 30.222359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234861, 0.371195, -0.898362,
		0.770568, 0.492262, 0.404850,
		0.592508, -0.787333, -0.170417,
		39.397846, 38.665787, 30.171234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632801, 39.430252, 30.097670>,  <38.983089, 39.216919, 30.290525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632801, 39.430252, 30.097670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.586006, 39.069141, 29.932112>,  <39.557930, 38.852474, 29.832777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.586006, 39.069141, 29.932112>,  <39.632801, 39.430252, 30.097670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586006, 39.069141, 29.932112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336121, 0.356169, -0.871875,
		0.934525, -0.241114, 0.261776,
		-0.116985, -0.902778, -0.413893,
		39.550911, 38.798309, 29.807943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266388, 39.248844, 29.788790>,  <39.632801, 39.430252, 30.097670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266388, 39.248844, 29.788790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.000298, 39.003414, 29.618616>,  <39.840645, 38.856155, 29.516512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.000298, 39.003414, 29.618616>,  <40.266388, 39.248844, 29.788790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000298, 39.003414, 29.618616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501661, 0.054718, -0.863332,
		0.553001, -0.787736, 0.271408,
		-0.665226, -0.613578, -0.425436,
		39.800728, 38.819340, 29.490986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670872, 38.734699, 29.430729>,  <40.266388, 39.248844, 29.788790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670872, 38.734699, 29.430729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.306850, 38.724113, 29.265270>,  <40.088436, 38.717762, 29.165995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.306850, 38.724113, 29.265270>,  <40.670872, 38.734699, 29.430729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306850, 38.724113, 29.265270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409647, 0.094762, -0.907309,
		0.063208, -0.995148, -0.075398,
		-0.910052, -0.026462, -0.413649,
		40.033836, 38.716175, 29.141176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766674, 38.406048, 28.728130>,  <40.670872, 38.734699, 29.430729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766674, 38.406048, 28.728130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.434967, 38.628517, 28.706291>,  <40.235943, 38.762001, 28.693188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.434967, 38.628517, 28.706291>,  <40.766674, 38.406048, 28.728130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434967, 38.628517, 28.706291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223017, 0.239765, -0.944869,
		-0.512423, -0.795726, -0.322866,
		-0.829268, 0.556177, -0.054599,
		40.186188, 38.795372, 28.689911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559071, 38.133434, 28.101288>,  <40.766674, 38.406048, 28.728130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559071, 38.133434, 28.101288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.348610, 38.467281, 28.166498>,  <40.222332, 38.667591, 28.205624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.348610, 38.467281, 28.166498>,  <40.559071, 38.133434, 28.101288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348610, 38.467281, 28.166498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112386, 0.258269, -0.959514,
		-0.842932, -0.486527, -0.229687,
		-0.526151, 0.834619, 0.163024,
		40.190765, 38.717667, 28.215405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197784, 38.340714, 27.519468>,  <40.559071, 38.133434, 28.101288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197784, 38.340714, 27.519468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.205158, 38.682404, 27.727297>,  <40.209583, 38.887417, 27.851994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.205158, 38.682404, 27.727297>,  <40.197784, 38.340714, 27.519468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205158, 38.682404, 27.727297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398660, 0.470284, -0.787339,
		-0.916913, 0.221646, -0.331878,
		0.018434, 0.854228, 0.519571,
		40.210690, 38.938671, 27.883167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826099, 38.842113, 27.141943>,  <40.197784, 38.340714, 27.519468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826099, 38.842113, 27.141943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.037979, 39.088108, 27.375593>,  <40.165108, 39.235706, 27.515783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.037979, 39.088108, 27.375593>,  <39.826099, 38.842113, 27.141943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037979, 39.088108, 27.375593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140541, 0.615522, -0.775488,
		-0.836460, 0.492870, 0.239611,
		0.529701, 0.614989, 0.584128,
		40.196888, 39.272606, 27.550831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559673, 39.518730, 26.999285>,  <39.826099, 38.842113, 27.141943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559673, 39.518730, 26.999285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.918503, 39.576626, 27.166286>,  <40.133801, 39.611362, 27.266487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.918503, 39.576626, 27.166286>,  <39.559673, 39.518730, 26.999285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918503, 39.576626, 27.166286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256295, 0.599245, -0.758432,
		-0.359961, 0.787373, 0.500471,
		0.897074, 0.144738, 0.417504,
		40.187626, 39.620049, 27.291538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692528, 40.226845, 26.999485>,  <39.559673, 39.518730, 26.999285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692528, 40.226845, 26.999485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.056763, 40.062630, 27.018641>,  <40.275303, 39.964100, 27.030134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.056763, 40.062630, 27.018641>,  <39.692528, 40.226845, 26.999485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056763, 40.062630, 27.018641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290943, 0.554362, -0.779766,
		0.293575, 0.723977, 0.624237,
		0.910586, -0.410536, 0.047889,
		40.329937, 39.939468, 27.033007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702049, 41.008659, 27.333021>,  <39.692528, 40.226845, 26.999485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702049, 41.008659, 27.333021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.351711, 41.182041, 27.248150>,  <39.141510, 41.286072, 27.197227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.351711, 41.182041, 27.248150>,  <39.702049, 41.008659, 27.333021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351711, 41.182041, 27.248150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362601, -0.300926, 0.882023,
		0.318467, 0.849448, 0.420735,
		-0.875842, 0.433454, -0.212176,
		39.088959, 41.312077, 27.184498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569420, 41.325737, 27.859884>,  <39.702049, 41.008659, 27.333021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569420, 41.325737, 27.859884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.207184, 41.298641, 27.692402>,  <38.989841, 41.282383, 27.591913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.207184, 41.298641, 27.692402>,  <39.569420, 41.325737, 27.859884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207184, 41.298641, 27.692402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402054, -0.177367, 0.898272,
		-0.135113, 0.981811, 0.133388,
		-0.905592, -0.067739, -0.418706,
		38.935505, 41.278320, 27.566790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208347, 41.654152, 28.358480>,  <39.569420, 41.325737, 27.859884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208347, 41.654152, 28.358480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946392, 41.446297, 28.138988>,  <38.789219, 41.321583, 28.007294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946392, 41.446297, 28.138988>,  <39.208347, 41.654152, 28.358480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946392, 41.446297, 28.138988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522902, -0.212655, 0.825440,
		-0.545619, 0.827500, -0.132454,
		-0.654885, -0.519636, -0.548730,
		38.749928, 41.290405, 27.974369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487556, 41.766579, 28.657867>,  <39.208347, 41.654152, 28.358480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487556, 41.766579, 28.657867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.426311, 41.444851, 28.428215>,  <38.389565, 41.251816, 28.290422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.426311, 41.444851, 28.428215>,  <38.487556, 41.766579, 28.657867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426311, 41.444851, 28.428215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672739, -0.340732, 0.656752,
		-0.723863, 0.486800, -0.488925,
		-0.153115, -0.804318, -0.574133,
		38.380379, 41.203556, 28.255976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767399, 41.712292, 28.571566>,  <38.487556, 41.766579, 28.657867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767399, 41.712292, 28.571566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.944096, 41.358025, 28.514353>,  <38.050114, 41.145466, 28.480026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.944096, 41.358025, 28.514353>,  <37.767399, 41.712292, 28.571566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944096, 41.358025, 28.514353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503705, -0.376778, 0.777380,
		-0.742389, -0.271359, -0.612554,
		0.441746, -0.885665, -0.143031,
		38.076618, 41.092323, 28.471443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233082, 41.278347, 28.611616>,  <37.767399, 41.712292, 28.571566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233082, 41.278347, 28.611616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527969, 41.009224, 28.636381>,  <37.704903, 40.847752, 28.651239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527969, 41.009224, 28.636381>,  <37.233082, 41.278347, 28.611616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527969, 41.009224, 28.636381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488190, -0.467090, 0.737223,
		-0.467090, -0.573722, -0.672807,
		-0.737223, 0.672807, -0.061912,
		37.749138, 40.807381, 28.654955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923145, 40.645500, 28.878963>,  <37.233082, 41.278347, 28.611616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923145, 40.645500, 28.878963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302307, 40.555332, 28.969002>,  <37.529804, 40.501232, 29.023024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302307, 40.555332, 28.969002>,  <36.923145, 40.645500, 28.878963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302307, 40.555332, 28.969002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315135, -0.560135, 0.766120,
		-0.046618, -0.797141, -0.601991,
		0.947902, -0.225424, 0.225094,
		37.586678, 40.487705, 29.036530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949284, 39.924625, 28.969889>,  <36.923145, 40.645500, 28.878963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949284, 39.924625, 28.969889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.248619, 40.085735, 29.180702>,  <37.428219, 40.182400, 29.307190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.248619, 40.085735, 29.180702>,  <36.949284, 39.924625, 28.969889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248619, 40.085735, 29.180702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201152, -0.619329, 0.758926,
		0.632083, -0.673947, -0.382448,
		0.748337, 0.402775, 0.527034,
		37.473122, 40.206566, 29.338812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081093, 39.380596, 29.323250>,  <36.949284, 39.924625, 28.969889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081093, 39.380596, 29.323250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.314896, 39.637016, 29.522209>,  <37.455177, 39.790867, 29.641584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.314896, 39.637016, 29.522209>,  <37.081093, 39.380596, 29.323250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314896, 39.637016, 29.522209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202719, -0.478204, 0.854533,
		0.785655, -0.600314, -0.149562,
		0.584510, 0.641049, 0.497398,
		37.490250, 39.829330, 29.671429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586147, 39.065220, 29.782730>,  <37.081093, 39.380596, 29.323250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586147, 39.065220, 29.782730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.520084, 39.425026, 29.944515>,  <37.480446, 39.640911, 30.041586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.520084, 39.425026, 29.944515>,  <37.586147, 39.065220, 29.782730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520084, 39.425026, 29.944515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326357, -0.436836, 0.838251,
		0.930707, 0.006441, 0.365709,
		-0.165154, 0.899518, 0.404464,
		37.470539, 39.694881, 30.065855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928516, 39.167721, 30.539425>,  <37.586147, 39.065220, 29.782730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928516, 39.167721, 30.539425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.624729, 39.427914, 30.535625>,  <37.442459, 39.584030, 30.533346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.624729, 39.427914, 30.535625>,  <37.928516, 39.167721, 30.539425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624729, 39.427914, 30.535625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415826, -0.474166, 0.776051,
		0.500300, 0.593334, 0.630599,
		-0.759466, 0.650477, -0.009499,
		37.396889, 39.623058, 30.532776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682571, 39.102467, 31.174459>,  <37.928516, 39.167721, 30.539425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682571, 39.102467, 31.174459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.376560, 39.288582, 30.996365>,  <37.192951, 39.400249, 30.889507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.376560, 39.288582, 30.996365>,  <37.682571, 39.102467, 31.174459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376560, 39.288582, 30.996365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637592, -0.450005, 0.625277,
		0.090573, 0.762236, 0.640931,
		-0.765031, 0.465286, -0.445238,
		37.147053, 39.428169, 30.862793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.968445, 43.323116, 23.905682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601318, 43.167320, 23.874920>,  <39.381042, 43.073841, 23.856462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601318, 43.167320, 23.874920>,  <39.968445, 43.323116, 23.905682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601318, 43.167320, 23.874920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033851, -0.269774, 0.962329,
		-0.395564, 0.880636, 0.260787,
		-0.917815, -0.389490, -0.076902,
		39.325974, 43.050472, 23.851849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607483, 43.469662, 24.614313>,  <39.968445, 43.323116, 23.905682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607483, 43.469662, 24.614313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374535, 43.179783, 24.466984>,  <39.234768, 43.005856, 24.378586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374535, 43.179783, 24.466984>,  <39.607483, 43.469662, 24.614313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374535, 43.179783, 24.466984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083142, -0.397608, 0.913781,
		-0.808662, 0.562780, 0.171301,
		-0.582368, -0.724698, -0.368321,
		39.199825, 42.962372, 24.356487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924263, 43.477924, 24.916882>,  <39.607483, 43.469662, 24.614313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924263, 43.477924, 24.916882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962887, 43.096619, 24.802370>,  <38.986061, 42.867836, 24.733664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962887, 43.096619, 24.802370>,  <38.924263, 43.477924, 24.916882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962887, 43.096619, 24.802370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372096, -0.301342, 0.877917,
		-0.923158, 0.021748, -0.383806,
		0.096563, -0.953268, -0.286278,
		38.991856, 42.810638, 24.716486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316509, 43.183018, 25.139975>,  <38.924263, 43.477924, 24.916882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316509, 43.183018, 25.139975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564976, 42.877422, 25.070150>,  <38.714054, 42.694065, 25.028255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564976, 42.877422, 25.070150>,  <38.316509, 43.183018, 25.139975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564976, 42.877422, 25.070150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167022, -0.346691, 0.922989,
		-0.765674, -0.544174, -0.342956,
		0.621166, -0.763990, -0.174563,
		38.751328, 42.648224, 25.017782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983562, 42.596207, 25.377176>,  <38.316509, 43.183018, 25.139975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983562, 42.596207, 25.377176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363052, 42.471718, 25.355068>,  <38.590748, 42.397026, 25.341803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363052, 42.471718, 25.355068>,  <37.983562, 42.596207, 25.377176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363052, 42.471718, 25.355068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093005, -0.441964, 0.892198,
		-0.302098, -0.841314, -0.448249,
		0.948729, -0.311221, -0.055270,
		38.647671, 42.378353, 25.338488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926079, 42.036018, 25.647783>,  <37.983562, 42.596207, 25.377176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926079, 42.036018, 25.647783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321472, 42.085365, 25.682819>,  <38.558708, 42.114971, 25.703840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321472, 42.085365, 25.682819>,  <37.926079, 42.036018, 25.647783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321472, 42.085365, 25.682819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025266, -0.436204, 0.899493,
		0.149174, -0.891352, -0.428065,
		0.988488, 0.123366, 0.087591,
		38.618019, 42.122375, 25.709097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149029, 41.437477, 25.881962>,  <37.926079, 42.036018, 25.647783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149029, 41.437477, 25.881962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455513, 41.683537, 25.956282>,  <38.639404, 41.831173, 26.000874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455513, 41.683537, 25.956282>,  <38.149029, 41.437477, 25.881962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455513, 41.683537, 25.956282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223023, -0.525731, 0.820894,
		0.602652, -0.587537, -0.540011,
		0.766206, 0.615148, 0.185798,
		38.685375, 41.868080, 26.012022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793079, 41.040436, 25.928291>,  <38.149029, 41.437477, 25.881962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793079, 41.040436, 25.928291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868439, 41.372833, 26.137653>,  <38.913654, 41.572273, 26.263269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868439, 41.372833, 26.137653>,  <38.793079, 41.040436, 25.928291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868439, 41.372833, 26.137653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266180, -0.556205, 0.787264,
		0.945333, -0.008999, -0.325982,
		0.188397, 0.830996, 0.523404,
		38.924957, 41.622131, 26.294674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325226, 40.769348, 26.413944>,  <38.793079, 41.040436, 25.928291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325226, 40.769348, 26.413944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177525, 41.115528, 26.549383>,  <39.088905, 41.323235, 26.630646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177525, 41.115528, 26.549383>,  <39.325226, 40.769348, 26.413944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177525, 41.115528, 26.549383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006647, -0.361876, 0.932203,
		0.929305, 0.346470, 0.127871,
		-0.369253, 0.865451, 0.338596,
		39.066750, 41.375164, 26.650963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036312, 40.869617, 26.728792>,  <39.325226, 40.769348, 26.413944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036312, 40.869617, 26.728792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299763, 40.568691, 26.722771>,  <40.457832, 40.388134, 26.719158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299763, 40.568691, 26.722771>,  <40.036312, 40.869617, 26.728792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299763, 40.568691, 26.722771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499706, 0.452257, -0.738754,
		0.562589, 0.479039, 0.673807,
		0.658626, -0.752320, -0.015056,
		40.497349, 40.342995, 26.718254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807133, 41.127445, 26.681347>,  <40.036312, 40.869617, 26.728792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807133, 41.127445, 26.681347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793556, 40.749058, 26.552359>,  <40.785412, 40.522026, 26.474966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793556, 40.749058, 26.552359>,  <40.807133, 41.127445, 26.681347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793556, 40.749058, 26.552359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486860, 0.266134, -0.831950,
		0.872820, -0.185237, 0.451522,
		-0.033942, -0.945970, -0.322471,
		40.783375, 40.465267, 26.455618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529873, 40.884346, 26.437225>,  <40.807133, 41.127445, 26.681347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529873, 40.884346, 26.437225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257069, 40.642746, 26.272280>,  <41.093384, 40.497787, 26.173313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257069, 40.642746, 26.272280>,  <41.529873, 40.884346, 26.437225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257069, 40.642746, 26.272280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458075, 0.086744, -0.884671,
		0.570109, -0.792252, 0.217515,
		-0.682014, -0.603997, -0.412364,
		41.052464, 40.461548, 26.148571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913685, 40.345501, 26.073126>,  <41.529873, 40.884346, 26.437225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913685, 40.345501, 26.073126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549137, 40.321953, 25.910187>,  <41.330406, 40.307823, 25.812424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549137, 40.321953, 25.910187>,  <41.913685, 40.345501, 26.073126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549137, 40.321953, 25.910187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402599, 0.078124, -0.912036,
		0.085531, -0.995203, -0.047492,
		-0.911372, -0.058887, -0.407350,
		41.275726, 40.304291, 25.787981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993900, 39.854595, 25.607920>,  <41.913685, 40.345501, 26.073126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993900, 39.854595, 25.607920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687107, 40.080429, 25.485943>,  <41.503033, 40.215927, 25.412756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687107, 40.080429, 25.485943>,  <41.993900, 39.854595, 25.607920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687107, 40.080429, 25.485943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475953, 0.181821, -0.860471,
		-0.430361, -0.805102, -0.408168,
		-0.766980, 0.564581, -0.304942,
		41.457012, 40.249802, 25.394461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019390, 39.734230, 24.933323>,  <41.993900, 39.854595, 25.607920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019390, 39.734230, 24.933323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743130, 40.023403, 24.925667>,  <41.577374, 40.196907, 24.921074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743130, 40.023403, 24.925667>,  <42.019390, 39.734230, 24.933323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743130, 40.023403, 24.925667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326655, 0.288242, -0.900119,
		-0.645208, -0.627922, -0.435225,
		-0.690654, 0.722932, -0.019138,
		41.535934, 40.240284, 24.919926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540897, 39.724709, 24.300959>,  <42.019390, 39.734230, 24.933323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540897, 39.724709, 24.300959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541988, 40.099724, 24.440111>,  <41.542645, 40.324734, 24.523603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541988, 40.099724, 24.440111>,  <41.540897, 39.724709, 24.300959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541988, 40.099724, 24.440111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220404, 0.338766, -0.914691,
		-0.975405, 0.079170, -0.205712,
		0.002728, 0.937534, 0.347883,
		41.542809, 40.380985, 24.544476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258427, 40.037979, 23.754007>,  <41.540897, 39.724709, 24.300959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258427, 40.037979, 23.754007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430641, 40.319202, 23.980406>,  <41.533970, 40.487938, 24.116245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430641, 40.319202, 23.980406>,  <41.258427, 40.037979, 23.754007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430641, 40.319202, 23.980406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201889, 0.536186, -0.819601,
		-0.879705, 0.467135, 0.088907,
		0.430535, 0.703058, 0.565994,
		41.559803, 40.530121, 24.150204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876431, 40.714367, 23.599079>,  <41.258427, 40.037979, 23.754007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876431, 40.714367, 23.599079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236320, 40.809490, 23.745472>,  <41.452255, 40.866566, 23.833307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236320, 40.809490, 23.745472>,  <40.876431, 40.714367, 23.599079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236320, 40.809490, 23.745472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171002, 0.579418, -0.796889,
		-0.401565, 0.779564, 0.480651,
		0.899724, 0.237811, 0.365981,
		41.506237, 40.880833, 23.855267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951866, 41.412571, 23.432236>,  <40.876431, 40.714367, 23.599079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951866, 41.412571, 23.432236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328487, 41.342831, 23.547533>,  <41.554459, 41.300987, 23.616713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328487, 41.342831, 23.547533>,  <40.951866, 41.412571, 23.432236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328487, 41.342831, 23.547533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334413, 0.586962, -0.737322,
		-0.040636, 0.790619, 0.610959,
		0.941550, -0.174351, 0.288245,
		41.610954, 41.290527, 23.634007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304684, 42.035099, 23.653910>,  <40.951866, 41.412571, 23.432236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304684, 42.035099, 23.653910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591068, 41.782864, 23.534073>,  <41.762897, 41.631523, 23.462172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591068, 41.782864, 23.534073>,  <41.304684, 42.035099, 23.653910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591068, 41.782864, 23.534073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231176, 0.619054, -0.750553,
		0.658755, 0.468108, 0.588996,
		0.715960, -0.630592, -0.299590,
		41.805855, 41.593685, 23.444197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646351, 42.459023, 23.286310>,  <41.304684, 42.035099, 23.653910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646351, 42.459023, 23.286310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840313, 42.122196, 23.191830>,  <41.956692, 41.920101, 23.135141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840313, 42.122196, 23.191830>,  <41.646351, 42.459023, 23.286310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840313, 42.122196, 23.191830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263183, 0.398058, -0.878797,
		0.834027, 0.363969, 0.414638,
		0.484905, -0.842066, -0.236201,
		41.985783, 41.869576, 23.120970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378349, 42.618343, 23.140938>,  <41.646351, 42.459023, 23.286310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378349, 42.618343, 23.140938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269169, 42.283958, 22.950499>,  <42.203659, 42.083328, 22.836235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269169, 42.283958, 22.950499>,  <42.378349, 42.618343, 23.140938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269169, 42.283958, 22.950499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349216, 0.375037, -0.858717,
		0.896407, -0.400648, 0.189564,
		-0.272950, -0.835959, -0.476099,
		42.187283, 42.033169, 22.807669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723610, 42.521755, 22.571501>,  <42.378349, 42.618343, 23.140938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723610, 42.521755, 22.571501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462715, 42.241703, 22.455299>,  <42.306175, 42.073669, 22.385578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462715, 42.241703, 22.455299>,  <42.723610, 42.521755, 22.571501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462715, 42.241703, 22.455299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289572, 0.124036, -0.949085,
		0.700520, -0.703155, 0.121838,
		-0.652242, -0.700134, -0.290504,
		42.267044, 42.031662, 22.368149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.776867, 40.991280, 20.777731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.129807, 40.999817, 20.965775>,  <35.341572, 41.004940, 21.078602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.129807, 40.999817, 20.965775>,  <34.776867, 40.991280, 20.777731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129807, 40.999817, 20.965775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317262, -0.710837, 0.627738,
		0.347570, -0.703032, -0.620435,
		0.882349, 0.021343, 0.470111,
		35.394512, 41.006218, 21.106808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916866, 40.251961, 20.981543>,  <34.776867, 40.991280, 20.777731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916866, 40.251961, 20.981543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.183903, 40.461720, 21.192949>,  <35.344124, 40.587574, 21.319794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.183903, 40.461720, 21.192949>,  <34.916866, 40.251961, 20.981543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183903, 40.461720, 21.192949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172121, -0.581933, 0.794813,
		0.724359, -0.621580, -0.298234,
		0.667592, 0.524398, 0.528515,
		35.384182, 40.619038, 21.351503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386604, 39.762928, 21.322123>,  <34.916866, 40.251961, 20.981543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386604, 39.762928, 21.322123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.430431, 40.104420, 21.525747>,  <35.456726, 40.309315, 21.647923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.430431, 40.104420, 21.525747>,  <35.386604, 39.762928, 21.322123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430431, 40.104420, 21.525747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119037, -0.497187, 0.859439,
		0.986826, -0.154763, 0.047150,
		0.109567, 0.853729, 0.509060,
		35.463303, 40.360538, 21.678465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063389, 39.743347, 21.863071>,  <35.386604, 39.762928, 21.322123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063389, 39.743347, 21.863071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.783150, 40.011848, 21.959888>,  <35.615005, 40.172951, 22.017979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.783150, 40.011848, 21.959888>,  <36.063389, 39.743347, 21.863071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783150, 40.011848, 21.959888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136936, -0.459378, 0.877622,
		0.700297, 0.581712, 0.413757,
		-0.700594, 0.671254, 0.242044,
		35.572971, 40.213226, 22.032501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245937, 40.015804, 22.615633>,  <36.063389, 39.743347, 21.863071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245937, 40.015804, 22.615633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860039, 40.081955, 22.533745>,  <35.628498, 40.121647, 22.484612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860039, 40.081955, 22.533745>,  <36.245937, 40.015804, 22.615633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860039, 40.081955, 22.533745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250150, -0.334575, 0.908562,
		0.081759, 0.927745, 0.364150,
		-0.964749, 0.165375, -0.204721,
		35.570614, 40.131569, 22.472328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032898, 40.225040, 23.241268>,  <36.245937, 40.015804, 22.615633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032898, 40.225040, 23.241268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.708370, 40.104897, 23.040653>,  <35.513653, 40.032810, 22.920284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.708370, 40.104897, 23.040653>,  <36.032898, 40.225040, 23.241268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708370, 40.104897, 23.040653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352593, -0.432893, 0.829628,
		-0.466298, 0.849935, 0.245311,
		-0.811323, -0.300359, -0.501538,
		35.464973, 40.014790, 22.890192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615414, 40.267368, 23.712791>,  <36.032898, 40.225040, 23.241268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615414, 40.267368, 23.712791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.408234, 40.047516, 23.450605>,  <35.283924, 39.915604, 23.293293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.408234, 40.047516, 23.450605>,  <35.615414, 40.267368, 23.712791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408234, 40.047516, 23.450605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485089, -0.442411, 0.754296,
		-0.704567, 0.708647, -0.037471,
		-0.517952, -0.549629, -0.655465,
		35.252850, 39.882626, 23.253965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883949, 40.347118, 23.836937>,  <35.615414, 40.267368, 23.712791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883949, 40.347118, 23.836937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.943325, 39.989819, 23.667194>,  <34.978951, 39.775440, 23.565350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.943325, 39.989819, 23.667194>,  <34.883949, 40.347118, 23.836937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943325, 39.989819, 23.667194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527778, -0.434443, 0.729870,
		-0.836312, 0.115626, -0.535923,
		0.148436, -0.893247, -0.424355,
		34.987854, 39.721844, 23.539888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194595, 40.030273, 23.939539>,  <34.883949, 40.347118, 23.836937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194595, 40.030273, 23.939539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.459095, 39.737446, 23.874020>,  <34.617794, 39.561749, 23.834709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.459095, 39.737446, 23.874020>,  <34.194595, 40.030273, 23.939539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459095, 39.737446, 23.874020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268070, -0.434521, 0.859843,
		-0.700637, -0.524658, -0.483571,
		0.661245, -0.732069, -0.163796,
		34.657467, 39.517826, 23.824881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866348, 39.387367, 24.005653>,  <34.194595, 40.030273, 23.939539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866348, 39.387367, 24.005653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.247456, 39.277069, 24.056568>,  <34.476120, 39.210892, 24.087116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.247456, 39.277069, 24.056568>,  <33.866348, 39.387367, 24.005653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247456, 39.277069, 24.056568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257085, -0.509131, 0.821397,
		-0.161689, -0.815323, -0.555972,
		0.952766, -0.275743, 0.127287,
		34.533287, 39.194347, 24.094753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850002, 38.704220, 24.245945>,  <33.866348, 39.387367, 24.005653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850002, 38.704220, 24.245945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.223747, 38.803555, 24.348162>,  <34.447994, 38.863155, 24.409491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.223747, 38.803555, 24.348162>,  <33.850002, 38.704220, 24.245945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223747, 38.803555, 24.348162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069340, -0.576715, 0.813998,
		0.349520, -0.778286, -0.521639,
		0.934360, 0.248338, 0.255540,
		34.504055, 38.878056, 24.424824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332890, 38.184887, 24.366978>,  <33.850002, 38.704220, 24.245945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332890, 38.184887, 24.366978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.496681, 38.481087, 24.580137>,  <34.594955, 38.658806, 24.708033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.496681, 38.481087, 24.580137>,  <34.332890, 38.184887, 24.366978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496681, 38.481087, 24.580137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007000, -0.586647, 0.809812,
		0.912293, -0.327870, -0.245403,
		0.409478, 0.740504, 0.532899,
		34.619526, 38.703239, 24.740007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684013, 37.806702, 24.716000>,  <34.332890, 38.184887, 24.366978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684013, 37.806702, 24.716000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.708954, 38.165981, 24.890060>,  <34.723919, 38.381550, 24.994497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.708954, 38.165981, 24.890060>,  <34.684013, 37.806702, 24.716000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708954, 38.165981, 24.890060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060700, -0.431780, 0.899934,
		0.996207, -0.082528, 0.027597,
		0.062354, 0.898195, 0.435152,
		34.727661, 38.435440, 25.020605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177036, 37.733929, 25.261806>,  <34.684013, 37.806702, 24.716000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177036, 37.733929, 25.261806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.950581, 38.050892, 25.352650>,  <34.814709, 38.241070, 25.407156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.950581, 38.050892, 25.352650>,  <35.177036, 37.733929, 25.261806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950581, 38.050892, 25.352650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154218, -0.372464, 0.915144,
		0.809757, 0.483073, 0.333069,
		-0.566137, 0.792409, 0.227107,
		34.780739, 38.288616, 25.420782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941795, 37.677052, 25.312160>,  <35.177036, 37.733929, 25.261806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941795, 37.677052, 25.312160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.194927, 37.367340, 25.310757>,  <36.346806, 37.181511, 25.309916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.194927, 37.367340, 25.310757>,  <35.941795, 37.677052, 25.312160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194927, 37.367340, 25.310757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345253, 0.286229, -0.893797,
		0.693056, 0.564410, 0.448458,
		0.632830, -0.774283, -0.003508,
		36.384777, 37.135056, 25.309704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635731, 37.844135, 25.212570>,  <35.941795, 37.677052, 25.312160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635731, 37.844135, 25.212570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.618229, 37.468842, 25.075277>,  <36.607727, 37.243668, 24.992901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.618229, 37.468842, 25.075277>,  <36.635731, 37.844135, 25.212570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618229, 37.468842, 25.075277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449528, 0.288329, -0.845453,
		0.892194, -0.191288, 0.409144,
		-0.043757, -0.938230, -0.343234,
		36.605103, 37.187374, 24.972307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280430, 37.730137, 24.970032>,  <36.635731, 37.844135, 25.212570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280430, 37.730137, 24.970032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.050980, 37.457497, 24.788317>,  <36.913311, 37.293915, 24.679287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.050980, 37.457497, 24.788317>,  <37.280430, 37.730137, 24.970032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050980, 37.457497, 24.788317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445470, 0.205833, -0.871315,
		0.687393, -0.702181, 0.185560,
		-0.573626, -0.681597, -0.454289,
		36.878891, 37.253017, 24.652031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710518, 37.373245, 24.545795>,  <37.280430, 37.730137, 24.970032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710518, 37.373245, 24.545795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.349564, 37.273556, 24.405176>,  <37.132992, 37.213741, 24.320805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.349564, 37.273556, 24.405176>,  <37.710518, 37.373245, 24.545795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349564, 37.273556, 24.405176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322345, 0.151031, -0.934496,
		0.285992, -0.956597, -0.055953,
		-0.902387, -0.249222, -0.351548,
		37.078846, 37.198788, 24.299711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749031, 36.837780, 24.035858>,  <37.710518, 37.373245, 24.545795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749031, 36.837780, 24.035858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.403706, 37.025528, 23.961691>,  <37.196510, 37.138176, 23.917191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.403706, 37.025528, 23.961691>,  <37.749031, 36.837780, 24.035858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403706, 37.025528, 23.961691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313544, 0.210960, -0.925843,
		-0.395445, -0.857432, -0.329293,
		-0.863315, 0.469367, -0.185420,
		37.144711, 37.166340, 23.906065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523499, 36.515392, 23.374754>,  <37.749031, 36.837780, 24.035858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523499, 36.515392, 23.374754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.342625, 36.870636, 23.407734>,  <37.234100, 37.083782, 23.427521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.342625, 36.870636, 23.407734>,  <37.523499, 36.515392, 23.374754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342625, 36.870636, 23.407734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156280, 0.169899, -0.972991,
		-0.878125, -0.427088, -0.215619,
		-0.452186, 0.888105, 0.082448,
		37.206970, 37.137066, 23.432468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254871, 36.512959, 22.754381>,  <37.523499, 36.515392, 23.374754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254871, 36.512959, 22.754381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.205299, 36.888149, 22.883900>,  <37.175556, 37.113262, 22.961611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.205299, 36.888149, 22.883900>,  <37.254871, 36.512959, 22.754381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205299, 36.888149, 22.883900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264301, 0.345728, -0.900343,
		-0.956444, -0.026001, -0.290755,
		-0.123932, 0.937974, 0.323797,
		37.168121, 37.169540, 22.981039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934269, 36.921478, 22.210257>,  <37.254871, 36.512959, 22.754381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934269, 36.921478, 22.210257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.110641, 37.211040, 22.422497>,  <37.216465, 37.384777, 22.549841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.110641, 37.211040, 22.422497>,  <36.934269, 36.921478, 22.210257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110641, 37.211040, 22.422497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235449, 0.477177, -0.846679,
		-0.866107, 0.498258, 0.039961,
		0.440933, 0.723906, 0.530601,
		37.242920, 37.428211, 22.581676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553726, 37.464817, 21.979948>,  <36.934269, 36.921478, 22.210257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553726, 37.464817, 21.979948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.881062, 37.632149, 22.137590>,  <37.077465, 37.732548, 22.232176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.881062, 37.632149, 22.137590>,  <36.553726, 37.464817, 21.979948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881062, 37.632149, 22.137590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041107, 0.641366, -0.766133,
		-0.573260, 0.643159, 0.507660,
		0.818341, 0.418325, 0.394108,
		37.126564, 37.757645, 22.255823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416840, 38.233700, 21.887171>,  <36.553726, 37.464817, 21.979948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416840, 38.233700, 21.887171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.812595, 38.205090, 21.937759>,  <37.050049, 38.187923, 21.968113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.812595, 38.205090, 21.937759>,  <36.416840, 38.233700, 21.887171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812595, 38.205090, 21.937759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141425, 0.673731, -0.725317,
		-0.033327, 0.735506, 0.676698,
		0.989388, -0.071530, 0.126473,
		37.109413, 38.183632, 21.975700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565571, 38.932320, 21.927931>,  <36.416840, 38.233700, 21.887171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565571, 38.932320, 21.927931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873592, 38.705612, 21.810772>,  <37.058407, 38.569588, 21.740477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873592, 38.705612, 21.810772>,  <36.565571, 38.932320, 21.927931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873592, 38.705612, 21.810772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175296, 0.629405, -0.757047,
		0.613420, 0.531625, 0.584030,
		0.770057, -0.566766, -0.292898,
		37.104610, 38.535583, 21.722902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102814, 39.409237, 21.625544>,  <36.565571, 38.932320, 21.927931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102814, 39.409237, 21.625544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.252151, 39.060085, 21.499884>,  <37.341755, 38.850594, 21.424488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.252151, 39.060085, 21.499884>,  <37.102814, 39.409237, 21.625544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252151, 39.060085, 21.499884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555042, 0.481513, -0.678288,
		0.743333, 0.078869, 0.664256,
		0.373344, -0.872883, -0.314149,
		37.364155, 38.798222, 21.405640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795246, 39.559147, 21.368824>,  <37.102814, 39.409237, 21.625544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795246, 39.559147, 21.368824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673279, 39.222145, 21.191191>,  <37.600098, 39.019943, 21.084610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673279, 39.222145, 21.191191>,  <37.795246, 39.559147, 21.368824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673279, 39.222145, 21.191191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211429, 0.394770, -0.894122,
		0.928613, -0.366526, 0.057757,
		-0.304918, -0.842505, -0.444082,
		37.581802, 38.969395, 21.057966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387863, 39.409393, 20.868732>,  <37.795246, 39.559147, 21.368824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387863, 39.409393, 20.868732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030235, 39.263920, 20.764137>,  <37.815659, 39.176636, 20.701380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030235, 39.263920, 20.764137>,  <38.387863, 39.409393, 20.868732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030235, 39.263920, 20.764137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150659, 0.305603, -0.940164,
		0.421835, -0.879966, -0.218438,
		-0.894068, -0.363685, -0.261489,
		37.762016, 39.154816, 20.685690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042915, 39.003468, 21.147690>,  <38.387863, 39.409393, 20.868732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042915, 39.003468, 21.147690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.428036, 39.093006, 21.208220>,  <39.659107, 39.146729, 21.244537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.428036, 39.093006, 21.208220>,  <39.042915, 39.003468, 21.147690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428036, 39.093006, 21.208220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000311, -0.559123, 0.829085,
		0.270198, -0.798294, -0.538256,
		0.962804, 0.223850, 0.151322,
		39.716877, 39.160160, 21.253616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389099, 38.352955, 21.182531>,  <39.042915, 39.003468, 21.147690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389099, 38.352955, 21.182531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.572067, 38.638683, 21.394386>,  <39.681850, 38.810120, 21.521500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.572067, 38.638683, 21.394386>,  <39.389099, 38.352955, 21.182531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572067, 38.638683, 21.394386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105153, -0.634871, 0.765429,
		0.883010, -0.294432, -0.365517,
		0.457423, 0.714317, 0.529637,
		39.709293, 38.852978, 21.553278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040375, 38.151852, 21.453722>,  <39.389099, 38.352955, 21.182531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040375, 38.151852, 21.453722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.945072, 38.438980, 21.715399>,  <39.887890, 38.611256, 21.872404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.945072, 38.438980, 21.715399>,  <40.040375, 38.151852, 21.453722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945072, 38.438980, 21.715399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264493, -0.600171, 0.754876,
		0.934492, 0.352887, -0.046861,
		-0.238261, 0.717820, 0.654191,
		39.873592, 38.654327, 21.911655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566570, 38.108261, 22.010696>,  <40.040375, 38.151852, 21.453722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566570, 38.108261, 22.010696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.287346, 38.350777, 22.163073>,  <40.119812, 38.496288, 22.254498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.287346, 38.350777, 22.163073>,  <40.566570, 38.108261, 22.010696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287346, 38.350777, 22.163073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069608, -0.586953, 0.806623,
		0.712642, 0.536559, 0.451934,
		-0.698066, 0.606292, 0.380939,
		40.077927, 38.532665, 22.277355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824432, 38.314289, 22.696659>,  <40.566570, 38.108261, 22.010696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824432, 38.314289, 22.696659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.434109, 38.392776, 22.735235>,  <40.199917, 38.439869, 22.758381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.434109, 38.392776, 22.735235>,  <40.824432, 38.314289, 22.696659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434109, 38.392776, 22.735235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029516, -0.318831, 0.947352,
		0.216639, 0.927278, 0.305326,
		-0.975806, 0.196222, 0.096441,
		40.141369, 38.451641, 22.764168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785202, 38.735470, 23.259842>,  <40.824432, 38.314289, 22.696659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785202, 38.735470, 23.259842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.433266, 38.554646, 23.201164>,  <40.222103, 38.446152, 23.165958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.433266, 38.554646, 23.201164>,  <40.785202, 38.735470, 23.259842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433266, 38.554646, 23.201164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043019, -0.231642, 0.971849,
		-0.473311, 0.861387, 0.184362,
		-0.879844, -0.452056, -0.146695,
		40.169312, 38.419029, 23.157156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372387, 38.983658, 23.792715>,  <40.785202, 38.735470, 23.259842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372387, 38.983658, 23.792715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.194473, 38.647331, 23.669304>,  <40.087723, 38.445534, 23.595257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.194473, 38.647331, 23.669304>,  <40.372387, 38.983658, 23.792715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194473, 38.647331, 23.669304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032009, -0.329334, 0.943671,
		-0.895064, 0.429608, 0.119570,
		-0.444787, -0.840819, -0.308527,
		40.061039, 38.395084, 23.576746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765018, 38.870663, 24.239786>,  <40.372387, 38.983658, 23.792715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765018, 38.870663, 24.239786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.854630, 38.509094, 24.094051>,  <39.908398, 38.292152, 24.006611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.854630, 38.509094, 24.094051>,  <39.765018, 38.870663, 24.239786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854630, 38.509094, 24.094051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112402, -0.395310, 0.911644,
		-0.968078, -0.163285, -0.190164,
		0.224032, -0.903918, -0.364338,
		39.921841, 38.237919, 23.984751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309155, 38.387886, 24.500151>,  <39.765018, 38.870663, 24.239786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309155, 38.387886, 24.500151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.604507, 38.138622, 24.397036>,  <39.781719, 37.989063, 24.335167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.604507, 38.138622, 24.397036>,  <39.309155, 38.387886, 24.500151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604507, 38.138622, 24.397036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151535, -0.525801, 0.837001,
		-0.657133, -0.578966, -0.482675,
		0.738386, -0.623163, -0.257788,
		39.826023, 37.951675, 24.319700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115635, 37.749668, 24.700340>,  <39.309155, 38.387886, 24.500151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115635, 37.749668, 24.700340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.514626, 37.723293, 24.689825>,  <39.754021, 37.707470, 24.683516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.514626, 37.723293, 24.689825>,  <39.115635, 37.749668, 24.700340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514626, 37.723293, 24.689825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021327, -0.631655, 0.774956,
		-0.067701, -0.772441, -0.631468,
		0.997478, -0.065933, -0.026290,
		39.813869, 37.703514, 24.681938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316273, 37.042984, 24.814610>,  <39.115635, 37.749668, 24.700340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316273, 37.042984, 24.814610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.660751, 37.230560, 24.893034>,  <39.867439, 37.343105, 24.940088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.660751, 37.230560, 24.893034>,  <39.316273, 37.042984, 24.814610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660751, 37.230560, 24.893034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281339, -0.761056, 0.584501,
		0.423310, -0.448209, -0.787348,
		0.861195, 0.468937, 0.196063,
		39.919109, 37.371243, 24.951853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892815, 36.529884, 24.903973>,  <39.316273, 37.042984, 24.814610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892815, 36.529884, 24.903973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.003357, 36.865482, 25.091469>,  <40.069683, 37.066841, 25.203966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.003357, 36.865482, 25.091469>,  <39.892815, 36.529884, 24.903973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003357, 36.865482, 25.091469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300202, -0.538694, 0.787202,
		0.912964, -0.076834, -0.400740,
		0.276360, 0.838991, 0.468742,
		40.086266, 37.117180, 25.232092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399246, 36.238373, 25.417345>,  <39.892815, 36.529884, 24.903973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399246, 36.238373, 25.417345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.321419, 36.608242, 25.548267>,  <40.274723, 36.830162, 25.626820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.321419, 36.608242, 25.548267>,  <40.399246, 36.238373, 25.417345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321419, 36.608242, 25.548267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271726, -0.269812, 0.923778,
		0.942500, 0.268679, -0.198759,
		-0.194573, 0.924669, 0.327305,
		40.263046, 36.885643, 25.646460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006424, 36.474400, 25.759899>,  <40.399246, 36.238373, 25.417345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006424, 36.474400, 25.759899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.699944, 36.683681, 25.909130>,  <40.516056, 36.809250, 25.998669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.699944, 36.683681, 25.909130>,  <41.006424, 36.474400, 25.759899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699944, 36.683681, 25.909130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317199, -0.196975, 0.927678,
		0.558851, 0.829131, -0.015036,
		-0.766205, 0.523203, 0.373080,
		40.470081, 36.840641, 26.021053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.121525, 42.180855, 22.011663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.733009, 42.105644, 21.953346>,  <42.499901, 42.060520, 21.918356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.733009, 42.105644, 21.953346>,  <43.121525, 42.180855, 22.011663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733009, 42.105644, 21.953346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060517, 0.397373, -0.915659,
		0.230097, -0.898188, -0.374584,
		-0.971284, -0.188021, -0.145790,
		42.441624, 42.049236, 21.909609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005981, 42.081314, 21.203846>,  <43.121525, 42.180855, 22.011663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005981, 42.081314, 21.203846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.649261, 42.162556, 21.365561>,  <42.435230, 42.211300, 21.462589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.649261, 42.162556, 21.365561>,  <43.005981, 42.081314, 21.203846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649261, 42.162556, 21.365561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293009, 0.421591, -0.858141,
		-0.344737, -0.883747, -0.316461,
		-0.891797, 0.203107, 0.404284,
		42.381721, 42.223488, 21.486845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523239, 41.898991, 20.715723>,  <43.005981, 42.081314, 21.203846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523239, 41.898991, 20.715723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.313419, 42.139240, 20.957087>,  <42.187527, 42.283390, 21.101906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.313419, 42.139240, 20.957087>,  <42.523239, 41.898991, 20.715723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313419, 42.139240, 20.957087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275394, 0.550941, -0.787796,
		-0.805611, -0.579412, -0.123587,
		-0.524547, 0.600622, 0.603410,
		42.156055, 42.319427, 21.138109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905777, 41.891006, 20.484655>,  <42.523239, 41.898991, 20.715723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905777, 41.891006, 20.484655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.927311, 42.235031, 20.687595>,  <41.940231, 42.441444, 20.809359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.927311, 42.235031, 20.687595>,  <41.905777, 41.891006, 20.484655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927311, 42.235031, 20.687595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125176, 0.509890, -0.851084,
		-0.990673, -0.017687, 0.135110,
		0.053838, 0.860058, 0.507348,
		41.943462, 42.493050, 20.839800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318150, 42.254856, 20.207689>,  <41.905777, 41.891006, 20.484655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318150, 42.254856, 20.207689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.567696, 42.526676, 20.362089>,  <41.717422, 42.689770, 20.454729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.567696, 42.526676, 20.362089>,  <41.318150, 42.254856, 20.207689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567696, 42.526676, 20.362089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220147, 0.626712, -0.747508,
		-0.749881, 0.381370, 0.540587,
		0.623870, 0.679551, 0.386002,
		41.754856, 42.730541, 20.477890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936577, 42.874580, 20.308228>,  <41.318150, 42.254856, 20.207689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936577, 42.874580, 20.308228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.325787, 42.961338, 20.276796>,  <41.559315, 43.013393, 20.257936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.325787, 42.961338, 20.276796>,  <40.936577, 42.874580, 20.308228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325787, 42.961338, 20.276796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212200, 0.707890, -0.673693,
		-0.090496, 0.672196, 0.734822,
		0.973027, 0.216896, -0.078579,
		41.617695, 43.026405, 20.253223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005280, 43.630985, 20.208380>,  <40.936577, 42.874580, 20.308228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005280, 43.630985, 20.208380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.351170, 43.479633, 20.076271>,  <41.558704, 43.388821, 19.997005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.351170, 43.479633, 20.076271>,  <41.005280, 43.630985, 20.208380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351170, 43.479633, 20.076271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069924, 0.560486, -0.825207,
		0.497356, 0.736670, 0.458208,
		0.864724, -0.378382, -0.330272,
		41.610588, 43.366119, 19.977190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378441, 44.195728, 19.884369>,  <41.005280, 43.630985, 20.208380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378441, 44.195728, 19.884369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.592270, 43.902260, 19.716581>,  <41.720566, 43.726177, 19.615908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.592270, 43.902260, 19.716581>,  <41.378441, 44.195728, 19.884369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592270, 43.902260, 19.716581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074631, 0.535384, -0.841305,
		0.841823, 0.418431, 0.340955,
		0.534570, -0.733675, -0.419470,
		41.752640, 43.682156, 19.590740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792805, 44.610271, 19.367380>,  <41.378441, 44.195728, 19.884369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792805, 44.610271, 19.367380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.835285, 44.224171, 19.271870>,  <41.860775, 43.992512, 19.214563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.835285, 44.224171, 19.271870>,  <41.792805, 44.610271, 19.367380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835285, 44.224171, 19.271870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105698, 0.249734, -0.962529,
		0.988711, 0.076986, 0.128548,
		0.106204, -0.965250, -0.238777,
		41.867146, 43.934597, 19.200237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406357, 44.497265, 18.948210>,  <41.792805, 44.610271, 19.367380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406357, 44.497265, 18.948210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.132210, 44.213852, 18.880964>,  <41.967724, 44.043804, 18.840616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.132210, 44.213852, 18.880964>,  <42.406357, 44.497265, 18.948210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132210, 44.213852, 18.880964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026113, 0.254627, -0.966687,
		0.727733, -0.658141, -0.193014,
		-0.685363, -0.708530, -0.168115,
		41.926601, 44.001293, 18.830530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521698, 44.241047, 18.249491>,  <42.406357, 44.497265, 18.948210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521698, 44.241047, 18.249491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.172306, 44.050041, 18.287477>,  <41.962673, 43.935436, 18.310270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.172306, 44.050041, 18.287477>,  <42.521698, 44.241047, 18.249491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172306, 44.050041, 18.287477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086162, -0.040366, -0.995463,
		0.479183, -0.877695, -0.005885,
		-0.873476, -0.477516, 0.094967,
		41.910263, 43.906788, 18.315968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532822, 43.734974, 17.750008>,  <42.521698, 44.241047, 18.249491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532822, 43.734974, 17.750008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.144604, 43.771255, 17.839287>,  <41.911674, 43.793026, 17.892855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.144604, 43.771255, 17.839287>,  <42.532822, 43.734974, 17.750008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144604, 43.771255, 17.839287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225887, -0.020402, -0.973940,
		-0.083790, -0.995669, 0.040291,
		-0.970543, 0.090707, 0.223199,
		41.853439, 43.798470, 17.906246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165657, 43.149498, 17.497869>,  <42.532822, 43.734974, 17.750008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165657, 43.149498, 17.497869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.918880, 43.462780, 17.528788>,  <41.770817, 43.650749, 17.547338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.918880, 43.462780, 17.528788>,  <42.165657, 43.149498, 17.497869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918880, 43.462780, 17.528788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272632, -0.120553, -0.954536,
		-0.738282, -0.609962, 0.287901,
		-0.616937, 0.783207, 0.077293,
		41.733799, 43.697742, 17.551975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479298, 42.976074, 17.401653>,  <42.165657, 43.149498, 17.497869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479298, 42.976074, 17.401653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.539734, 43.344193, 17.257305>,  <41.575996, 43.565063, 17.170696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.539734, 43.344193, 17.257305>,  <41.479298, 42.976074, 17.401653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539734, 43.344193, 17.257305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018394, -0.362381, -0.931848,
		-0.988348, 0.147435, -0.037826,
		0.151094, 0.920295, -0.360871,
		41.585064, 43.620281, 17.149044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722980, 42.941811, 17.261860>,  <41.479298, 42.976074, 17.401653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722980, 42.941811, 17.261860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.886795, 42.612347, 17.104961>,  <40.985085, 42.414669, 17.010822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.886795, 42.612347, 17.104961>,  <40.722980, 42.941811, 17.261860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886795, 42.612347, 17.104961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283959, -0.523687, 0.803193,
		-0.866975, -0.217557, -0.448357,
		0.409539, -0.823663, -0.392246,
		41.009655, 42.365246, 16.987288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207970, 42.464485, 17.346464>,  <40.722980, 42.941811, 17.261860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207970, 42.464485, 17.346464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.535912, 42.245892, 17.278122>,  <40.732677, 42.114735, 17.237116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.535912, 42.245892, 17.278122>,  <40.207970, 42.464485, 17.346464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535912, 42.245892, 17.278122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310641, -0.675210, 0.669025,
		-0.480973, -0.495430, -0.723335,
		0.819858, -0.546480, -0.170857,
		40.781868, 42.081947, 17.226864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948093, 41.774899, 17.231627>,  <40.207970, 42.464485, 17.346464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948093, 41.774899, 17.231627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.332237, 41.716656, 17.326712>,  <40.562725, 41.681709, 17.383762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.332237, 41.716656, 17.326712>,  <39.948093, 41.774899, 17.231627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332237, 41.716656, 17.326712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261028, -0.769027, 0.583492,
		0.097846, -0.622412, -0.776550,
		0.960360, -0.145609, 0.237713,
		40.620346, 41.672974, 17.398026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092350, 41.057983, 17.162607>,  <39.948093, 41.774899, 17.231627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092350, 41.057983, 17.162607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.361897, 41.207939, 17.417278>,  <40.523624, 41.297913, 17.570082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.361897, 41.207939, 17.417278>,  <40.092350, 41.057983, 17.162607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361897, 41.207939, 17.417278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228738, -0.713526, 0.662239,
		0.702555, -0.591893, -0.395069,
		0.673866, 0.374892, 0.636679,
		40.564056, 41.320408, 17.608282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377327, 40.447166, 17.350397>,  <40.092350, 41.057983, 17.162607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377327, 40.447166, 17.350397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.520157, 40.715286, 17.610609>,  <40.605854, 40.876160, 17.766737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.520157, 40.715286, 17.610609>,  <40.377327, 40.447166, 17.350397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520157, 40.715286, 17.610609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012159, -0.699719, 0.714315,
		0.933995, -0.247156, -0.258005,
		0.357079, 0.670304, 0.650529,
		40.627281, 40.916378, 17.805767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931465, 40.151257, 17.756388>,  <40.377327, 40.447166, 17.350397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931465, 40.151257, 17.756388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.780182, 40.447330, 17.978769>,  <40.689411, 40.624973, 18.112198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.780182, 40.447330, 17.978769>,  <40.931465, 40.151257, 17.756388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780182, 40.447330, 17.978769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021125, -0.607310, 0.794184,
		0.925479, 0.288623, 0.245327,
		-0.378210, 0.740183, 0.555955,
		40.666718, 40.669384, 18.145555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194035, 39.909641, 18.366940>,  <40.931465, 40.151257, 17.756388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194035, 39.909641, 18.366940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.919304, 40.191372, 18.438702>,  <40.754463, 40.360413, 18.481758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.919304, 40.191372, 18.438702>,  <41.194035, 39.909641, 18.366940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919304, 40.191372, 18.438702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203353, -0.423195, 0.882923,
		0.697792, 0.569935, 0.433890,
		-0.686829, 0.704329, 0.179404,
		40.713257, 40.402672, 18.492523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543198, 40.253502, 18.952950>,  <41.194035, 39.909641, 18.366940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543198, 40.253502, 18.952950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.145462, 40.284931, 18.924337>,  <40.906822, 40.303791, 18.907169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.145462, 40.284931, 18.924337>,  <41.543198, 40.253502, 18.952950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145462, 40.284931, 18.924337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093771, -0.332251, 0.938518,
		0.049980, 0.939912, 0.337738,
		-0.994339, 0.078577, -0.071531,
		40.847160, 40.308506, 18.902878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385426, 40.497154, 19.536219>,  <41.543198, 40.253502, 18.952950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385426, 40.497154, 19.536219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.055565, 40.330826, 19.382833>,  <40.857647, 40.231030, 19.290802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.055565, 40.330826, 19.382833>,  <41.385426, 40.497154, 19.536219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055565, 40.330826, 19.382833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142450, -0.503402, 0.852229,
		-0.547411, 0.757416, 0.355897,
		-0.824651, -0.415822, -0.383462,
		40.808170, 40.206078, 19.267796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919632, 40.687244, 19.966824>,  <41.385426, 40.497154, 19.536219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919632, 40.687244, 19.966824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.742374, 40.389721, 19.766672>,  <40.636021, 40.211208, 19.646582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.742374, 40.389721, 19.766672>,  <40.919632, 40.687244, 19.966824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742374, 40.389721, 19.766672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239383, -0.439725, 0.865643,
		-0.863899, 0.503384, 0.016805,
		-0.443140, -0.743805, -0.500380,
		40.609432, 40.166580, 19.616558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243122, 40.812420, 20.111958>,  <40.919632, 40.687244, 19.966824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243122, 40.812420, 20.111958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.279701, 40.433479, 19.989214>,  <40.301651, 40.206116, 19.915567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.279701, 40.433479, 19.989214>,  <40.243122, 40.812420, 20.111958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279701, 40.433479, 19.989214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420774, -0.316053, 0.850329,
		-0.902544, 0.051357, -0.427523,
		0.091450, -0.947350, -0.306861,
		40.307137, 40.149273, 19.897156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621208, 40.444382, 20.236675>,  <40.243122, 40.812420, 20.111958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621208, 40.444382, 20.236675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.891880, 40.150246, 20.221870>,  <40.054283, 39.973763, 20.212988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.891880, 40.150246, 20.221870>,  <39.621208, 40.444382, 20.236675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891880, 40.150246, 20.221870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369004, -0.382212, 0.847201,
		-0.637130, -0.559629, -0.529981,
		0.676684, -0.735343, -0.037013,
		40.094887, 39.929642, 20.210766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265827, 39.795822, 20.418575>,  <39.621208, 40.444382, 20.236675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265827, 39.795822, 20.418575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.646152, 39.687073, 20.477945>,  <39.874348, 39.621822, 20.513567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.646152, 39.687073, 20.477945>,  <39.265827, 39.795822, 20.418575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646152, 39.687073, 20.477945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262159, -0.451106, 0.853098,
		-0.164978, -0.850052, -0.500193,
		0.950818, -0.271872, 0.148427,
		39.931396, 39.605511, 20.522474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242901, 39.045887, 20.459818>,  <39.265827, 39.795822, 20.418575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242901, 39.045887, 20.459818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.561855, 39.182522, 20.658813>,  <39.753227, 39.264503, 20.778210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.561855, 39.182522, 20.658813>,  <39.242901, 39.045887, 20.459818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561855, 39.182522, 20.658813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275123, -0.527948, 0.803478,
		0.537107, -0.777552, -0.327000,
		0.797386, 0.341588, 0.497487,
		39.801071, 39.285000, 20.808060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396351, 38.988453, 20.275749>,  <39.242901, 39.045887, 20.459818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396351, 38.988453, 20.275749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.018436, 39.118675, 20.260809>,  <37.791687, 39.196808, 20.251844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.018436, 39.118675, 20.260809>,  <38.396351, 38.988453, 20.275749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018436, 39.118675, 20.260809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141137, 0.301397, -0.942995,
		-0.295742, -0.896199, -0.330704,
		-0.944784, 0.325558, -0.037351,
		37.735001, 39.216343, 20.249603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165020, 38.598576, 19.654856>,  <38.396351, 38.988453, 20.275749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165020, 38.598576, 19.654856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.934559, 38.916672, 19.730379>,  <37.796284, 39.107529, 19.775694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.934559, 38.916672, 19.730379>,  <38.165020, 38.598576, 19.654856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934559, 38.916672, 19.730379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007492, 0.225854, -0.974132,
		-0.817310, -0.562660, -0.124168,
		-0.576149, 0.795238, 0.188808,
		37.761715, 39.155243, 19.787022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588333, 38.583405, 19.179968>,  <38.165020, 38.598576, 19.654856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588333, 38.583405, 19.179968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.609238, 38.967682, 19.289024>,  <37.621780, 39.198250, 19.354458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.609238, 38.967682, 19.289024>,  <37.588333, 38.583405, 19.179968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609238, 38.967682, 19.289024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033160, 0.274532, -0.961006,
		-0.998083, 0.041185, 0.046205,
		0.052264, 0.960696, 0.272640,
		37.624916, 39.255890, 19.370817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634823, 38.928539, 18.554546>,  <37.588333, 38.583405, 19.179968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634823, 38.928539, 18.554546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.638428, 39.253906, 18.787191>,  <37.640591, 39.449127, 18.926779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.638428, 39.253906, 18.787191>,  <37.634823, 38.928539, 18.554546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638428, 39.253906, 18.787191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117418, 0.576752, -0.808437,
		-0.993042, 0.075581, -0.090310,
		0.009016, 0.813415, 0.581613,
		37.641132, 39.497932, 18.961676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038013, 39.372955, 18.440844>,  <37.634823, 38.928539, 18.554546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038013, 39.372955, 18.440844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.345188, 39.588383, 18.579535>,  <37.529491, 39.717640, 18.662750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.345188, 39.588383, 18.579535>,  <37.038013, 39.372955, 18.440844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345188, 39.588383, 18.579535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050231, 0.590285, -0.805631,
		-0.638557, 0.601254, 0.480352,
		0.767934, 0.538569, 0.346729,
		37.575569, 39.749954, 18.683554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779343, 40.105457, 18.287092>,  <37.038013, 39.372955, 18.440844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779343, 40.105457, 18.287092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.162209, 40.171768, 18.382040>,  <37.391930, 40.211555, 18.439009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.162209, 40.171768, 18.382040>,  <36.779343, 40.105457, 18.287092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162209, 40.171768, 18.382040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101335, 0.576175, -0.811020,
		-0.271217, 0.800337, 0.534698,
		0.957169, 0.165779, 0.237371,
		37.449360, 40.221500, 18.453251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867744, 40.773495, 18.221415>,  <36.779343, 40.105457, 18.287092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867744, 40.773495, 18.221415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.233730, 40.614265, 18.194969>,  <37.453323, 40.518726, 18.179102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.233730, 40.614265, 18.194969>,  <36.867744, 40.773495, 18.221415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233730, 40.614265, 18.194969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193812, 0.577225, -0.793252,
		0.353934, 0.712987, 0.605293,
		0.914969, -0.398072, -0.066114,
		37.508221, 40.494843, 18.175135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991627, 41.397102, 18.707174>,  <36.867744, 40.773495, 18.221415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991627, 41.397102, 18.707174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.760056, 41.704327, 18.816662>,  <36.621113, 41.888660, 18.882355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.760056, 41.704327, 18.816662>,  <36.991627, 41.397102, 18.707174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760056, 41.704327, 18.816662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067469, -0.379668, 0.922659,
		0.812584, 0.515684, 0.271620,
		-0.578926, 0.768064, 0.273720,
		36.586376, 41.934746, 18.898777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154484, 41.512100, 19.366762>,  <36.991627, 41.397102, 18.707174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154484, 41.512100, 19.366762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.797760, 41.692959, 19.360600>,  <36.583725, 41.801472, 19.356901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.797760, 41.692959, 19.360600>,  <37.154484, 41.512100, 19.366762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797760, 41.692959, 19.360600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199317, -0.362102, 0.910579,
		0.406134, 0.815136, 0.413047,
		-0.891811, 0.452145, -0.015409,
		36.530216, 41.828602, 19.355976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045223, 41.645084, 20.036907>,  <37.154484, 41.512100, 19.366762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045223, 41.645084, 20.036907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.687874, 41.716309, 19.871897>,  <36.473465, 41.759045, 19.772890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.687874, 41.716309, 19.871897>,  <37.045223, 41.645084, 20.036907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687874, 41.716309, 19.871897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449277, -0.341970, 0.825352,
		0.005890, 0.922687, 0.385505,
		-0.893373, 0.178060, -0.412528,
		36.419861, 41.769726, 19.748138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710789, 42.188885, 20.462994>,  <37.045223, 41.645084, 20.036907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710789, 42.188885, 20.462994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429413, 41.991341, 20.258532>,  <36.260590, 41.872814, 20.135855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429413, 41.991341, 20.258532>,  <36.710789, 42.188885, 20.462994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429413, 41.991341, 20.258532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476083, -0.206603, 0.854787,
		-0.527753, 0.844639, -0.089787,
		-0.703436, -0.493862, -0.511154,
		36.218384, 41.843182, 20.105185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131920, 42.371384, 20.879789>,  <36.710789, 42.188885, 20.462994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131920, 42.371384, 20.879789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.023800, 42.076584, 20.631994>,  <35.958927, 41.899704, 20.483316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.023800, 42.076584, 20.631994>,  <36.131920, 42.371384, 20.879789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023800, 42.076584, 20.631994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525420, -0.426253, 0.736371,
		-0.806764, 0.524536, -0.272017,
		-0.270305, -0.737001, -0.619488,
		35.942707, 41.855484, 20.446148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377789, 42.282757, 20.960581>,  <36.131920, 42.371384, 20.879789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377789, 42.282757, 20.960581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.548042, 41.952690, 20.812025>,  <35.650196, 41.754650, 20.722891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.548042, 41.952690, 20.812025>,  <35.377789, 42.282757, 20.960581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548042, 41.952690, 20.812025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455124, -0.549952, 0.700296,
		-0.782109, -0.129043, -0.609634,
		0.425638, -0.825167, -0.371392,
		35.675735, 41.705139, 20.700607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918549, 41.767902, 21.051462>,  <35.377789, 42.282757, 20.960581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918549, 41.767902, 21.051462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.255783, 41.556599, 21.011173>,  <35.458126, 41.429817, 20.987000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.255783, 41.556599, 21.011173>,  <34.918549, 41.767902, 21.051462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255783, 41.556599, 21.011173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418358, -0.761949, 0.494378,
		-0.337904, -0.374667, -0.863392,
		0.843088, -0.528259, -0.100720,
		35.508709, 41.398121, 20.980957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.323353, 45.919769, 17.630484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.612289, 45.644646, 17.659130>,  <39.785652, 45.479572, 17.676317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.612289, 45.644646, 17.659130>,  <39.323353, 45.919769, 17.630484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612289, 45.644646, 17.659130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596665, -0.567548, 0.567345,
		-0.349581, -0.452552, -0.820360,
		0.722346, -0.687813, 0.071618,
		39.828995, 45.438301, 17.680614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005657, 45.231441, 17.623333>,  <39.323353, 45.919769, 17.630484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005657, 45.231441, 17.623333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.373138, 45.170795, 17.769203>,  <39.593628, 45.134407, 17.856726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.373138, 45.170795, 17.769203>,  <39.005657, 45.231441, 17.623333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373138, 45.170795, 17.769203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381315, -0.580954, 0.719091,
		0.102834, -0.799691, -0.591540,
		0.918708, -0.151616, 0.364676,
		39.648750, 45.125309, 17.878607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958931, 44.506462, 17.827782>,  <39.005657, 45.231441, 17.623333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958931, 44.506462, 17.827782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.251755, 44.679600, 18.038202>,  <39.427448, 44.783482, 18.164455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.251755, 44.679600, 18.038202>,  <38.958931, 44.506462, 17.827782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251755, 44.679600, 18.038202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255743, -0.541102, 0.801127,
		0.631411, -0.721009, -0.285423,
		0.732062, 0.432846, 0.526051,
		39.471375, 44.809452, 18.196018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351551, 43.999638, 18.178925>,  <38.958931, 44.506462, 17.827782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351551, 43.999638, 18.178925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.422569, 44.316311, 18.412752>,  <39.465179, 44.506313, 18.553049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.422569, 44.316311, 18.412752>,  <39.351551, 43.999638, 18.178925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422569, 44.316311, 18.412752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206214, -0.550889, 0.808701,
		0.962266, -0.264123, 0.065451,
		0.177541, 0.791682, 0.584567,
		39.475830, 44.553814, 18.588123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612343, 43.710239, 18.804228>,  <39.351551, 43.999638, 18.178925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612343, 43.710239, 18.804228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.562008, 44.090405, 18.917992>,  <39.531807, 44.318504, 18.986250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.562008, 44.090405, 18.917992>,  <39.612343, 43.710239, 18.804228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562008, 44.090405, 18.917992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043965, -0.291747, 0.955484,
		0.991076, 0.107732, 0.078497,
		-0.125838, 0.950409, 0.284407,
		39.524258, 44.375526, 19.003313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885502, 43.766670, 19.542360>,  <39.612343, 43.710239, 18.804228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885502, 43.766670, 19.542360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.645180, 44.083630, 19.500132>,  <39.500988, 44.273804, 19.474794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.645180, 44.083630, 19.500132>,  <39.885502, 43.766670, 19.542360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645180, 44.083630, 19.500132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303604, -0.104013, 0.947104,
		0.739501, 0.601073, 0.303066,
		-0.600802, 0.792396, -0.105570,
		39.464939, 44.321350, 19.468460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140312, 44.262413, 19.994410>,  <39.885502, 43.766670, 19.542360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140312, 44.262413, 19.994410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.753956, 44.344906, 19.931778>,  <39.522141, 44.394402, 19.894199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.753956, 44.344906, 19.931778>,  <40.140312, 44.262413, 19.994410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753956, 44.344906, 19.931778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182332, -0.112338, 0.976799,
		0.183853, 0.972034, 0.146108,
		-0.965895, 0.206228, -0.156579,
		39.464188, 44.406773, 19.884804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816235, 44.803852, 20.492083>,  <40.140312, 44.262413, 19.994410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816235, 44.803852, 20.492083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.503487, 44.583889, 20.374588>,  <39.315838, 44.451912, 20.304092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.503487, 44.583889, 20.374588>,  <39.816235, 44.803852, 20.492083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503487, 44.583889, 20.374588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182708, -0.248352, 0.951283,
		-0.596072, 0.797445, 0.093705,
		-0.781867, -0.549912, -0.293736,
		39.268925, 44.418915, 20.286467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208012, 45.152473, 20.757135>,  <39.816235, 44.803852, 20.492083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208012, 45.152473, 20.757135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.131855, 44.765831, 20.688515>,  <39.086159, 44.533848, 20.647343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.131855, 44.765831, 20.688515>,  <39.208012, 45.152473, 20.757135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131855, 44.765831, 20.688515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409149, -0.080719, 0.908890,
		-0.892383, 0.243240, -0.380116,
		-0.190396, -0.966602, -0.171553,
		39.074738, 44.475849, 20.637049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700542, 45.033443, 21.125061>,  <39.208012, 45.152473, 20.757135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700542, 45.033443, 21.125061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.824207, 44.657413, 21.067551>,  <38.898407, 44.431793, 21.033045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.824207, 44.657413, 21.067551>,  <38.700542, 45.033443, 21.125061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824207, 44.657413, 21.067551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484134, -0.285706, 0.827035,
		-0.818555, -0.186082, -0.543453,
		0.309164, -0.940077, -0.143778,
		38.916958, 44.375389, 21.024418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252075, 44.666191, 21.570934>,  <38.700542, 45.033443, 21.125061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252075, 44.666191, 21.570934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.539650, 44.400547, 21.488861>,  <38.712193, 44.241161, 21.439617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.539650, 44.400547, 21.488861>,  <38.252075, 44.666191, 21.570934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539650, 44.400547, 21.488861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231764, -0.507333, 0.829999,
		-0.655303, -0.549159, -0.518654,
		0.718932, -0.664107, -0.205182,
		38.755329, 44.201317, 21.427307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950577, 44.113987, 21.685650>,  <38.252075, 44.666191, 21.570934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950577, 44.113987, 21.685650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.323914, 43.970398, 21.684416>,  <38.547916, 43.884247, 21.683676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.323914, 43.970398, 21.684416>,  <37.950577, 44.113987, 21.685650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323914, 43.970398, 21.684416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166186, -0.439684, 0.882644,
		-0.318198, -0.823298, -0.470032,
		0.933344, -0.358968, -0.003086,
		38.603916, 43.862705, 21.683489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317528, 43.785133, 21.623997>,  <37.950577, 44.113987, 21.685650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317528, 43.785133, 21.623997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.949371, 43.941128, 21.635250>,  <36.728477, 44.034725, 21.642002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.949371, 43.941128, 21.635250>,  <37.317528, 43.785133, 21.623997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949371, 43.941128, 21.635250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138924, 0.393432, -0.908796,
		-0.365485, -0.832540, -0.416290,
		-0.920392, 0.389984, 0.028134,
		36.673252, 44.058125, 21.643690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961727, 43.619812, 20.923336>,  <37.317528, 43.785133, 21.623997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961727, 43.619812, 20.923336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774700, 43.934734, 21.084099>,  <36.662483, 44.123688, 21.180557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774700, 43.934734, 21.084099>,  <36.961727, 43.619812, 20.923336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774700, 43.934734, 21.084099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206391, 0.539336, -0.816406,
		-0.859525, -0.298775, -0.414669,
		-0.467568, 0.787306, 0.401909,
		36.634430, 44.170925, 21.204672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712410, 43.901852, 20.363731>,  <36.961727, 43.619812, 20.923336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712410, 43.901852, 20.363731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.684303, 44.206928, 20.620905>,  <36.667439, 44.389977, 20.775209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.684303, 44.206928, 20.620905>,  <36.712410, 43.901852, 20.363731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684303, 44.206928, 20.620905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207771, 0.641579, -0.738381,
		-0.975650, 0.081698, -0.203548,
		-0.070268, 0.762693, 0.642932,
		36.663223, 44.435738, 20.813784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171528, 44.370365, 20.119009>,  <36.712410, 43.901852, 20.363731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171528, 44.370365, 20.119009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.394615, 44.601963, 20.356905>,  <36.528465, 44.740921, 20.499641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.394615, 44.601963, 20.356905>,  <36.171528, 44.370365, 20.119009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394615, 44.601963, 20.356905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072547, 0.679780, -0.729819,
		-0.826855, 0.450179, 0.337120,
		0.557716, 0.578998, 0.594739,
		36.561932, 44.775661, 20.535326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877865, 44.892601, 19.994520>,  <36.171528, 44.370365, 20.119009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877865, 44.892601, 19.994520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.237930, 44.994125, 20.136101>,  <36.453968, 45.055042, 20.221048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.237930, 44.994125, 20.136101>,  <35.877865, 44.892601, 19.994520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237930, 44.994125, 20.136101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055842, 0.738694, -0.671723,
		-0.431955, 0.624427, 0.650773,
		0.900164, 0.253814, 0.353952,
		36.507980, 45.070271, 20.242287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893517, 45.563343, 20.298895>,  <35.877865, 44.892601, 19.994520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893517, 45.563343, 20.298895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.283504, 45.507244, 20.229889>,  <36.517498, 45.473583, 20.188486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.283504, 45.507244, 20.229889>,  <35.893517, 45.563343, 20.298895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283504, 45.507244, 20.229889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022851, 0.708609, -0.705231,
		0.221156, 0.691522, 0.687668,
		0.974971, -0.140252, -0.172515,
		36.575996, 45.465168, 20.178135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164116, 46.164364, 20.221058>,  <35.893517, 45.563343, 20.298895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164116, 46.164364, 20.221058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.433495, 45.939404, 20.029152>,  <36.595123, 45.804428, 19.914007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.433495, 45.939404, 20.029152>,  <36.164116, 46.164364, 20.221058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433495, 45.939404, 20.029152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092628, 0.708090, -0.700020,
		0.733407, 0.426989, 0.528957,
		0.673450, -0.562396, -0.479767,
		36.635529, 45.770683, 19.885221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591118, 46.689217, 19.985584>,  <36.164116, 46.164364, 20.221058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591118, 46.689217, 19.985584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.677902, 46.368881, 19.762302>,  <36.729973, 46.176682, 19.628334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.677902, 46.368881, 19.762302>,  <36.591118, 46.689217, 19.985584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677902, 46.368881, 19.762302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178635, 0.594739, -0.783821,
		0.959697, 0.070341, 0.272090,
		0.216957, -0.800836, -0.558204,
		36.742989, 46.128632, 19.594841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085472, 46.929550, 19.483604>,  <36.591118, 46.689217, 19.985584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085472, 46.929550, 19.483604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.936291, 46.594406, 19.324162>,  <36.846783, 46.393318, 19.228497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.936291, 46.594406, 19.324162>,  <37.085472, 46.929550, 19.483604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936291, 46.594406, 19.324162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187755, 0.352566, -0.916758,
		0.908654, -0.416750, 0.025822,
		-0.372955, -0.837865, -0.398607,
		36.824406, 46.343048, 19.204578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464672, 46.776459, 18.896515>,  <37.085472, 46.929550, 19.483604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464672, 46.776459, 18.896515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.140606, 46.545971, 18.853428>,  <36.946167, 46.407677, 18.827576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.140606, 46.545971, 18.853428>,  <37.464672, 46.776459, 18.896515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140606, 46.545971, 18.853428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057168, 0.260539, -0.963769,
		0.583407, -0.774655, -0.244021,
		-0.810165, -0.576220, -0.107715,
		36.897556, 46.373104, 18.821114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584301, 46.362881, 18.327347>,  <37.464672, 46.776459, 18.896515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584301, 46.362881, 18.327347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.189793, 46.389565, 18.387768>,  <36.953087, 46.405575, 18.424021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.189793, 46.389565, 18.387768>,  <37.584301, 46.362881, 18.327347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189793, 46.389565, 18.387768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123275, 0.311167, -0.942326,
		-0.109869, -0.948011, -0.298671,
		-0.986272, 0.066713, 0.151054,
		36.893909, 46.409576, 18.433084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362961, 46.069733, 17.768888>,  <37.584301, 46.362881, 18.327347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362961, 46.069733, 17.768888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.059853, 46.292175, 17.905432>,  <36.877987, 46.425640, 17.987358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.059853, 46.292175, 17.905432>,  <37.362961, 46.069733, 17.768888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059853, 46.292175, 17.905432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178662, 0.326324, -0.928220,
		-0.627586, -0.764365, -0.147923,
		-0.757770, 0.556110, 0.341359,
		36.832523, 46.459007, 18.007839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847107, 45.823105, 17.312475>,  <37.362961, 46.069733, 17.768888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847107, 45.823105, 17.312475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.717350, 46.184875, 17.423313>,  <36.639496, 46.401936, 17.489817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.717350, 46.184875, 17.423313>,  <36.847107, 45.823105, 17.312475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717350, 46.184875, 17.423313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408331, 0.130347, -0.903480,
		-0.853248, -0.406233, 0.327020,
		-0.324397, 0.904425, 0.277096,
		36.620029, 46.456203, 17.506441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138805, 45.144470, 17.378832>,  <36.847107, 45.823105, 17.312475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138805, 45.144470, 17.378832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.874939, 44.851002, 17.313635>,  <36.716618, 44.674923, 17.274517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.874939, 44.851002, 17.313635>,  <37.138805, 45.144470, 17.378832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874939, 44.851002, 17.313635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394456, -0.522591, 0.755846,
		-0.639718, 0.434316, 0.634138,
		-0.659671, -0.733668, -0.162992,
		36.677036, 44.630901, 17.264738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066753, 44.832836, 18.009115>,  <37.138805, 45.144470, 17.378832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066753, 44.832836, 18.009115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.941208, 44.571018, 17.733999>,  <36.865879, 44.413925, 17.568930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.941208, 44.571018, 17.733999>,  <37.066753, 44.832836, 18.009115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941208, 44.571018, 17.733999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348202, -0.753276, 0.557970,
		-0.883314, -0.064362, 0.464343,
		-0.313867, -0.654548, -0.687790,
		36.847050, 44.374653, 17.527662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633858, 44.203506, 18.346987>,  <37.066753, 44.832836, 18.009115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633858, 44.203506, 18.346987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.765404, 44.070496, 17.993427>,  <36.844330, 43.990688, 17.781292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.765404, 44.070496, 17.993427>,  <36.633858, 44.203506, 18.346987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765404, 44.070496, 17.993427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066003, -0.925576, 0.372763,
		-0.942068, -0.180928, -0.282439,
		0.328863, -0.332527, -0.883898,
		36.864063, 43.970737, 17.728258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259666, 43.718372, 18.219242>,  <36.633858, 44.203506, 18.346987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259666, 43.718372, 18.219242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.566334, 43.639889, 17.974710>,  <36.750336, 43.592800, 17.827991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.566334, 43.639889, 17.974710>,  <36.259666, 43.718372, 18.219242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566334, 43.639889, 17.974710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049262, -0.931377, 0.360709,
		-0.640150, -0.306660, -0.704392,
		0.766669, -0.196208, -0.611327,
		36.796333, 43.581028, 17.791311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914684, 43.295071, 17.726049>,  <36.259666, 43.718372, 18.219242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914684, 43.295071, 17.726049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.308590, 43.231110, 17.753410>,  <36.544933, 43.192734, 17.769827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.308590, 43.231110, 17.753410>,  <35.914684, 43.295071, 17.726049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308590, 43.231110, 17.753410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171059, -0.961531, 0.214936,
		0.031405, -0.223361, -0.974230,
		0.984760, -0.159901, 0.068404,
		36.604019, 43.183140, 17.773932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996563, 42.681538, 17.461708>,  <35.914684, 43.295071, 17.726049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996563, 42.681538, 17.461708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.314568, 42.760761, 17.691048>,  <36.505371, 42.808296, 17.828651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.314568, 42.760761, 17.691048>,  <35.996563, 42.681538, 17.461708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314568, 42.760761, 17.691048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129376, -0.868083, 0.479264,
		0.592638, -0.455198, -0.664511,
		0.795011, 0.198058, 0.573351,
		36.553070, 42.820179, 17.863052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362534, 42.057217, 17.463675>,  <35.996563, 42.681538, 17.461708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362534, 42.057217, 17.463675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.485271, 42.248512, 17.792828>,  <36.558914, 42.363289, 17.990318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.485271, 42.248512, 17.792828>,  <36.362534, 42.057217, 17.463675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485271, 42.248512, 17.792828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103390, -0.842723, 0.528325,
		0.946127, -0.247192, -0.209142,
		0.306846, 0.478240, 0.822880,
		36.577324, 42.391983, 18.039692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557644, 41.523926, 18.037167>,  <36.362534, 42.057217, 17.463675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557644, 41.523926, 18.037167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.556950, 41.845074, 18.275629>,  <36.556534, 42.037762, 18.418707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.556950, 41.845074, 18.275629>,  <36.557644, 41.523926, 18.037167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556950, 41.845074, 18.275629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195112, -0.584971, 0.787235,
		0.980779, -0.114949, 0.157666,
		-0.001738, 0.802867, 0.596156,
		36.556427, 42.085934, 18.454475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325157, 41.387306, 17.973494>,  <36.557644, 41.523926, 18.037167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325157, 41.387306, 17.973494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.547455, 41.059677, 17.916544>,  <37.680832, 40.863098, 17.882374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.547455, 41.059677, 17.916544>,  <37.325157, 41.387306, 17.973494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547455, 41.059677, 17.916544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474632, 0.453196, -0.754545,
		0.682551, 0.351756, 0.640618,
		0.555741, -0.819073, -0.142375,
		37.714176, 40.813953, 17.873831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999065, 41.621456, 17.904253>,  <37.325157, 41.387306, 17.973494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999065, 41.621456, 17.904253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.002037, 41.253208, 17.748100>,  <38.003822, 41.032257, 17.654409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.002037, 41.253208, 17.748100>,  <37.999065, 41.621456, 17.904253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002037, 41.253208, 17.748100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424712, 0.356337, -0.832252,
		0.905298, -0.159614, 0.393648,
		0.007432, -0.920623, -0.390381,
		38.004265, 40.977020, 17.630985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660683, 41.464909, 17.625273>,  <37.999065, 41.621456, 17.904253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660683, 41.464909, 17.625273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.460857, 41.192596, 17.410994>,  <38.340961, 41.029209, 17.282427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.460857, 41.192596, 17.410994>,  <38.660683, 41.464909, 17.625273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460857, 41.192596, 17.410994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466208, 0.309919, -0.828613,
		0.730128, -0.663691, 0.162562,
		-0.499563, -0.680782, -0.535699,
		38.310989, 40.988361, 17.250284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158108, 41.114223, 17.215219>,  <38.660683, 41.464909, 17.625273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158108, 41.114223, 17.215219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.800262, 41.107330, 17.036615>,  <38.585556, 41.103195, 16.929453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.800262, 41.107330, 17.036615>,  <39.158108, 41.114223, 17.215219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800262, 41.107330, 17.036615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415236, 0.337078, -0.844960,
		0.165068, -0.941319, -0.294400,
		-0.894613, -0.017231, -0.446510,
		38.531879, 41.102161, 16.902662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270248, 40.693825, 16.588696>,  <39.158108, 41.114223, 17.215219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270248, 40.693825, 16.588696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.946949, 40.912979, 16.502380>,  <38.752972, 41.044472, 16.450592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.946949, 40.912979, 16.502380>,  <39.270248, 40.693825, 16.588696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946949, 40.912979, 16.502380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411118, 0.262682, -0.872915,
		-0.421573, -0.794242, -0.437556,
		-0.808244, 0.547884, -0.215788,
		38.704475, 41.077343, 16.437643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259644, 40.741833, 15.926977>,  <39.270248, 40.693825, 16.588696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259644, 40.741833, 15.926977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.009171, 41.049900, 15.975521>,  <38.858887, 41.234741, 16.004648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.009171, 41.049900, 15.975521>,  <39.259644, 40.741833, 15.926977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009171, 41.049900, 15.975521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304451, 0.384833, -0.871328,
		-0.717775, -0.508665, -0.475457,
		-0.626185, 0.770171, 0.121360,
		38.821316, 41.280952, 16.011929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988224, 40.962582, 15.231115>,  <39.259644, 40.741833, 15.926977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988224, 40.962582, 15.231115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.887131, 41.284233, 15.446338>,  <38.826473, 41.477222, 15.575471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.887131, 41.284233, 15.446338>,  <38.988224, 40.962582, 15.231115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887131, 41.284233, 15.446338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284037, 0.593270, -0.753229,
		-0.924904, -0.037541, -0.378343,
		-0.252736, 0.804128, 0.538055,
		38.811310, 41.525471, 15.607755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688728, 41.404346, 14.770587>,  <38.988224, 40.962582, 15.231115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688728, 41.404346, 14.770587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.797791, 41.655045, 15.062574>,  <38.863228, 41.805462, 15.237766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.797791, 41.655045, 15.062574>,  <38.688728, 41.404346, 14.770587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797791, 41.655045, 15.062574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414370, 0.608244, -0.677006,
		-0.868307, 0.487065, -0.093863,
		0.272654, 0.626743, 0.729968,
		38.879585, 41.843067, 15.281565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292980, 42.007858, 14.820642>,  <38.688728, 41.404346, 14.770587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292980, 42.007858, 14.820642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.668121, 42.062828, 14.948105>,  <38.893208, 42.095810, 15.024583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.668121, 42.062828, 14.948105>,  <38.292980, 42.007858, 14.820642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668121, 42.062828, 14.948105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139499, 0.691504, -0.708775,
		-0.317753, 0.709181, 0.629361,
		0.937855, 0.137421, 0.318658,
		38.949478, 42.104053, 15.043702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.682072, 35.494217, 29.928535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077621, 35.442268, 29.899519>,  <36.314953, 35.411098, 29.882109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.077621, 35.442268, 29.899519>,  <35.682072, 35.494217, 29.928535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077621, 35.442268, 29.899519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028139, 0.315536, -0.948496,
		0.146072, 0.939984, 0.308370,
		0.988874, -0.129871, -0.072541,
		36.374283, 35.403309, 29.877756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023884, 36.172131, 29.856119>,  <35.682072, 35.494217, 29.928535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023884, 36.172131, 29.856119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.266167, 35.906197, 29.681252>,  <36.411537, 35.746635, 29.576330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.266167, 35.906197, 29.681252>,  <36.023884, 36.172131, 29.856119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266167, 35.906197, 29.681252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102748, 0.479472, -0.871521,
		0.789025, 0.572806, 0.222110,
		0.605708, -0.664831, -0.437170,
		36.447880, 35.706749, 29.550100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437958, 36.639137, 29.442917>,  <36.023884, 36.172131, 29.856119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437958, 36.639137, 29.442917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473789, 36.260250, 29.319792>,  <36.495289, 36.032917, 29.245916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473789, 36.260250, 29.319792>,  <36.437958, 36.639137, 29.442917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473789, 36.260250, 29.319792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182017, 0.288281, -0.940087,
		0.979207, 0.140236, -0.146587,
		0.089576, -0.947221, -0.307812,
		36.500664, 35.976082, 29.227448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859337, 36.699848, 28.893112>,  <36.437958, 36.639137, 29.442917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859337, 36.699848, 28.893112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.687489, 36.341415, 28.848446>,  <36.584381, 36.126358, 28.821646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.687489, 36.341415, 28.848446>,  <36.859337, 36.699848, 28.893112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687489, 36.341415, 28.848446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066316, 0.154636, -0.985743,
		0.900571, -0.416091, -0.125859,
		-0.429621, -0.896078, -0.111667,
		36.558601, 36.072594, 28.814945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263027, 36.290508, 28.435070>,  <36.859337, 36.699848, 28.893112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263027, 36.290508, 28.435070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895103, 36.138916, 28.394417>,  <36.674351, 36.047958, 28.370026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895103, 36.138916, 28.394417>,  <37.263027, 36.290508, 28.435070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895103, 36.138916, 28.394417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018956, 0.301639, -0.953234,
		0.391918, -0.874862, -0.284633,
		-0.919805, -0.378985, -0.101633,
		36.619164, 36.025223, 28.363928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332924, 35.768456, 27.856853>,  <37.263027, 36.290508, 28.435070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332924, 35.768456, 27.856853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.949791, 35.870708, 27.909321>,  <36.719910, 35.932060, 27.940802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.949791, 35.870708, 27.909321>,  <37.332924, 35.768456, 27.856853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949791, 35.870708, 27.909321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104428, 0.115569, -0.987795,
		-0.267674, -0.959841, -0.084000,
		-0.957834, 0.255635, 0.131168,
		36.662441, 35.947399, 27.948671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099091, 35.405666, 27.373646>,  <37.332924, 35.768456, 27.856853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099091, 35.405666, 27.373646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.810699, 35.667233, 27.465368>,  <36.637665, 35.824173, 27.520401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.810699, 35.667233, 27.465368>,  <37.099091, 35.405666, 27.373646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810699, 35.667233, 27.465368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178185, 0.144837, -0.973279,
		-0.669656, -0.742573, 0.012093,
		-0.720980, 0.653917, 0.229306,
		36.594406, 35.863407, 27.534161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526505, 35.251156, 26.950712>,  <37.099091, 35.405666, 27.373646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526505, 35.251156, 26.950712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.444546, 35.628273, 27.055910>,  <36.395370, 35.854542, 27.119030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.444546, 35.628273, 27.055910>,  <36.526505, 35.251156, 26.950712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444546, 35.628273, 27.055910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166272, 0.231265, -0.958577,
		-0.964558, -0.240134, 0.109374,
		-0.204893, 0.942790, 0.262997,
		36.383080, 35.911110, 27.134809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037754, 35.460049, 26.478489>,  <36.526505, 35.251156, 26.950712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037754, 35.460049, 26.478489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107872, 35.833157, 26.604479>,  <36.149944, 36.057022, 26.680073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107872, 35.833157, 26.604479>,  <36.037754, 35.460049, 26.478489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107872, 35.833157, 26.604479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150658, 0.341577, -0.927700,
		-0.972921, 0.115166, 0.200405,
		0.175294, 0.932771, 0.314977,
		36.160461, 36.112988, 26.698973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448505, 35.936787, 26.179865>,  <36.037754, 35.460049, 26.478489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448505, 35.936787, 26.179865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787109, 36.116867, 26.293528>,  <35.990273, 36.224915, 26.361725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787109, 36.116867, 26.293528>,  <35.448505, 35.936787, 26.179865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787109, 36.116867, 26.293528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080338, 0.419614, -0.904140,
		-0.526282, 0.788190, 0.319037,
		0.846506, 0.450202, 0.284157,
		36.041061, 36.251926, 26.378775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356113, 36.622578, 26.073725>,  <35.448505, 35.936787, 26.179865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356113, 36.622578, 26.073725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753387, 36.578362, 26.058969>,  <35.991753, 36.551830, 26.050117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753387, 36.578362, 26.058969>,  <35.356113, 36.622578, 26.073725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753387, 36.578362, 26.058969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015185, 0.436598, -0.899528,
		0.115540, 0.892840, 0.435302,
		0.993187, -0.110542, -0.036887,
		36.051342, 36.545200, 26.047903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638233, 37.272255, 25.895069>,  <35.356113, 36.622578, 26.073725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638233, 37.272255, 25.895069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948635, 37.051731, 25.772516>,  <36.134876, 36.919418, 25.698984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948635, 37.051731, 25.772516>,  <35.638233, 37.272255, 25.895069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948635, 37.051731, 25.772516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078863, 0.566764, -0.820097,
		0.625772, 0.612241, 0.483292,
		0.776009, -0.551307, -0.306382,
		36.181438, 36.886337, 25.680601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414715, 37.999870, 26.055647>,  <35.638233, 37.272255, 25.895069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414715, 37.999870, 26.055647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054844, 38.142521, 25.954927>,  <34.838921, 38.228111, 25.894495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054844, 38.142521, 25.954927>,  <35.414715, 37.999870, 26.055647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054844, 38.142521, 25.954927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322670, -0.154706, 0.933783,
		0.294057, 0.921349, 0.254257,
		-0.899675, 0.356627, -0.251799,
		34.784943, 38.249508, 25.879387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298859, 38.470081, 26.533054>,  <35.414715, 37.999870, 26.055647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298859, 38.470081, 26.533054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944988, 38.375469, 26.372358>,  <34.732666, 38.318703, 26.275940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944988, 38.375469, 26.372358>,  <35.298859, 38.470081, 26.533054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944988, 38.375469, 26.372358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394005, -0.081285, 0.915507,
		-0.249201, 0.968218, -0.021283,
		-0.884680, -0.236530, -0.401740,
		34.679585, 38.304508, 26.251837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752438, 38.900681, 26.813784>,  <35.298859, 38.470081, 26.533054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752438, 38.900681, 26.813784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592224, 38.556503, 26.687788>,  <34.496098, 38.349998, 26.612190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592224, 38.556503, 26.687788>,  <34.752438, 38.900681, 26.813784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592224, 38.556503, 26.687788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419115, -0.133657, 0.898042,
		-0.814812, 0.491709, -0.307090,
		-0.400530, -0.860441, -0.314987,
		34.472065, 38.298370, 26.593292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039253, 39.092670, 26.949076>,  <34.752438, 38.900681, 26.813784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039253, 39.092670, 26.949076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.079632, 38.697250, 26.904209>,  <34.103859, 38.459999, 26.877289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.079632, 38.697250, 26.904209>,  <34.039253, 39.092670, 26.949076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079632, 38.697250, 26.904209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397402, -0.143422, 0.906368,
		-0.912076, -0.046915, -0.407328,
		0.100943, -0.988549, -0.112168,
		34.109913, 38.400684, 26.870560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428627, 38.792377, 27.092594>,  <34.039253, 39.092670, 26.949076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428627, 38.792377, 27.092594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685184, 38.488815, 27.137634>,  <33.839119, 38.306679, 27.164660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685184, 38.488815, 27.137634>,  <33.428627, 38.792377, 27.092594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685184, 38.488815, 27.137634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285890, -0.100218, 0.953007,
		-0.711958, -0.643442, -0.281243,
		0.641391, -0.758906, 0.112602,
		33.877602, 38.261143, 27.171415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024284, 38.401634, 27.507240>,  <33.428627, 38.792377, 27.092594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024284, 38.401634, 27.507240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388660, 38.244274, 27.556923>,  <33.607285, 38.149857, 27.586733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388660, 38.244274, 27.556923>,  <33.024284, 38.401634, 27.507240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388660, 38.244274, 27.556923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170099, -0.083872, 0.981851,
		-0.375845, -0.915533, -0.143319,
		0.910937, -0.393403, 0.124208,
		33.661942, 38.126255, 27.594185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860249, 37.840530, 27.867651>,  <33.024284, 38.401634, 27.507240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860249, 37.840530, 27.867651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250637, 37.898960, 27.932327>,  <33.484871, 37.934017, 27.971134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250637, 37.898960, 27.932327>,  <32.860249, 37.840530, 27.867651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250637, 37.898960, 27.932327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137245, -0.164273, 0.976820,
		0.169254, -0.975538, -0.140276,
		0.975970, 0.146078, 0.161692,
		33.543427, 37.942783, 27.980835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109676, 37.220619, 28.312178>,  <32.860249, 37.840530, 27.867651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109676, 37.220619, 28.312178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372116, 37.520016, 28.350727>,  <33.529579, 37.699654, 28.373856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372116, 37.520016, 28.350727>,  <33.109676, 37.220619, 28.312178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372116, 37.520016, 28.350727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053638, -0.173627, 0.983350,
		0.752763, -0.640010, -0.154065,
		0.656103, 0.748493, 0.096372,
		33.568947, 37.744564, 28.379639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521843, 36.910503, 28.743862>,  <33.109676, 37.220619, 28.312178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521843, 36.910503, 28.743862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580528, 37.305080, 28.773277>,  <33.615742, 37.541828, 28.790926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580528, 37.305080, 28.773277>,  <33.521843, 36.910503, 28.743862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580528, 37.305080, 28.773277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005265, -0.075122, 0.997161,
		0.989165, -0.145913, -0.016215,
		0.146717, 0.986441, 0.073540,
		33.624542, 37.601013, 28.795340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139732, 37.048470, 29.161976>,  <33.521843, 36.910503, 28.743862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139732, 37.048470, 29.161976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.881676, 37.353321, 29.183697>,  <33.726841, 37.536232, 29.196730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.881676, 37.353321, 29.183697>,  <34.139732, 37.048470, 29.161976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881676, 37.353321, 29.183697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049224, -0.112381, 0.992445,
		0.762474, 0.637597, 0.110017,
		-0.645144, 0.762129, 0.054302,
		33.688133, 37.581959, 29.199987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189983, 37.217648, 29.756020>,  <34.139732, 37.048470, 29.161976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189983, 37.217648, 29.756020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918800, 37.503986, 29.689169>,  <33.756088, 37.675789, 29.649059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918800, 37.503986, 29.689169>,  <34.189983, 37.217648, 29.756020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918800, 37.503986, 29.689169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151742, 0.086175, 0.984657,
		0.719268, 0.692917, 0.050201,
		-0.677959, 0.715849, -0.167127,
		33.715412, 37.718742, 29.639030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341171, 37.867199, 30.115623>,  <34.189983, 37.217648, 29.756020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341171, 37.867199, 30.115623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944752, 37.864262, 30.062305>,  <33.706902, 37.862499, 30.030315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944752, 37.864262, 30.062305>,  <34.341171, 37.867199, 30.115623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944752, 37.864262, 30.062305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133263, 0.113693, 0.984538,
		0.007921, 0.993489, -0.113654,
		-0.991049, -0.007347, -0.133296,
		33.647438, 37.862057, 30.022316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136868, 38.475895, 30.365622>,  <34.341171, 37.867199, 30.115623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136868, 38.475895, 30.365622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.790840, 38.275246, 30.363514>,  <33.583225, 38.154854, 30.362249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.790840, 38.275246, 30.363514>,  <34.136868, 38.475895, 30.365622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790840, 38.275246, 30.363514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199587, 0.334516, 0.921012,
		-0.460242, 0.797790, -0.389498,
		-0.865068, -0.501627, -0.005270,
		33.531319, 38.124756, 30.361933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707645, 38.867332, 30.696287>,  <34.136868, 38.475895, 30.365622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707645, 38.867332, 30.696287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517132, 38.516270, 30.717709>,  <33.402824, 38.305634, 30.730562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517132, 38.516270, 30.717709>,  <33.707645, 38.867332, 30.696287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517132, 38.516270, 30.717709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196850, 0.165793, 0.966314,
		-0.856971, 0.449702, -0.251732,
		-0.476289, -0.877656, 0.053555,
		33.374245, 38.252972, 30.733776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653618, 39.150127, 31.366379>,  <33.707645, 38.867332, 30.696287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653618, 39.150127, 31.366379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030846, 39.065182, 31.468765>,  <34.257183, 39.014214, 31.530197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030846, 39.065182, 31.468765>,  <33.653618, 39.150127, 31.366379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030846, 39.065182, 31.468765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138127, 0.450027, 0.882268,
		-0.302554, -0.867397, 0.395074,
		0.943071, -0.212364, 0.255968,
		34.313766, 39.001472, 31.545555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743492, 39.842823, 31.068981>,  <33.653618, 39.150127, 31.366379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743492, 39.842823, 31.068981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.079590, 40.058670, 31.090166>,  <34.281250, 40.188179, 31.102877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.079590, 40.058670, 31.090166>,  <33.743492, 39.842823, 31.068981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079590, 40.058670, 31.090166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057149, 0.185273, -0.981024,
		-0.539186, 0.821274, 0.186514,
		0.840246, 0.539613, 0.052961,
		34.331665, 40.220554, 31.106054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621349, 40.578472, 30.870928>,  <33.743492, 39.842823, 31.068981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621349, 40.578472, 30.870928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.994415, 40.457745, 30.791887>,  <34.218254, 40.385307, 30.744463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.994415, 40.457745, 30.791887>,  <33.621349, 40.578472, 30.870928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994415, 40.457745, 30.791887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084074, 0.350813, -0.932664,
		0.350813, 0.886475, 0.301816,
		0.932664, -0.301816, -0.197599,
		34.274216, 40.367199, 30.732607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910309, 41.037418, 30.528030>,  <33.621349, 40.578472, 30.870928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910309, 41.037418, 30.528030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144020, 40.729362, 30.425648>,  <34.284245, 40.544529, 30.364218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144020, 40.729362, 30.425648>,  <33.910309, 41.037418, 30.528030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144020, 40.729362, 30.425648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053419, 0.351201, -0.934775,
		0.809796, 0.532493, 0.246338,
		0.584275, -0.770136, -0.255956,
		34.319302, 40.498322, 30.348862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370384, 41.335182, 30.074442>,  <33.910309, 41.037418, 30.528030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370384, 41.335182, 30.074442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416245, 40.943794, 30.005793>,  <34.443760, 40.708961, 29.964603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416245, 40.943794, 30.005793>,  <34.370384, 41.335182, 30.074442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416245, 40.943794, 30.005793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127089, 0.185790, -0.974336,
		0.985243, 0.089895, 0.145653,
		0.114649, -0.978469, -0.171624,
		34.450638, 40.650253, 29.954306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901791, 41.304039, 29.553143>,  <34.370384, 41.335182, 30.074442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901791, 41.304039, 29.553143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698162, 40.962990, 29.506035>,  <34.575985, 40.758358, 29.477770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698162, 40.962990, 29.506035>,  <34.901791, 41.304039, 29.553143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698162, 40.962990, 29.506035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281537, -0.035650, -0.958888,
		0.813375, -0.521303, 0.258195,
		-0.509075, -0.852627, -0.117770,
		34.545441, 40.707203, 29.470703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359543, 40.858849, 29.125895>,  <34.901791, 41.304039, 29.553143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359543, 40.858849, 29.125895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.984589, 40.721035, 29.105494>,  <34.759617, 40.638348, 29.093254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.984589, 40.721035, 29.105494>,  <35.359543, 40.858849, 29.125895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984589, 40.721035, 29.105494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086322, -0.087961, -0.992377,
		0.337421, -0.934644, 0.112194,
		-0.937388, -0.344533, -0.051000,
		34.703373, 40.617676, 29.090193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333195, 40.224277, 28.689043>,  <35.359543, 40.858849, 29.125895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333195, 40.224277, 28.689043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.969193, 40.390118, 28.689203>,  <34.750793, 40.489620, 28.689299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.969193, 40.390118, 28.689203>,  <35.333195, 40.224277, 28.689043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969193, 40.390118, 28.689203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010051, -0.021094, -0.999727,
		-0.414479, -0.909759, 0.023362,
		-0.910004, 0.414600, 0.000401,
		34.696190, 40.514496, 28.689323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992764, 39.886757, 28.113741>,  <35.333195, 40.224277, 28.689043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992764, 39.886757, 28.113741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778332, 40.215595, 28.190456>,  <34.649673, 40.412899, 28.236486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778332, 40.215595, 28.190456>,  <34.992764, 39.886757, 28.113741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778332, 40.215595, 28.190456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154068, 0.128098, -0.979721,
		-0.829992, -0.554753, 0.057988,
		-0.536075, 0.822095, 0.191791,
		34.617508, 40.462223, 28.247993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494267, 39.868080, 27.527565>,  <34.992764, 39.886757, 28.113741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494267, 39.868080, 27.527565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477997, 40.233040, 27.690477>,  <34.468235, 40.452015, 27.788225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477997, 40.233040, 27.690477>,  <34.494267, 39.868080, 27.527565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477997, 40.233040, 27.690477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054611, 0.404978, -0.912694,
		-0.997679, -0.059369, 0.033353,
		-0.040678, 0.912397, 0.407280,
		34.465794, 40.506760, 27.812662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023624, 40.227573, 27.072081>,  <34.494267, 39.868080, 27.527565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023624, 40.227573, 27.072081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.207195, 40.524033, 27.268076>,  <34.317337, 40.701908, 27.385674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.207195, 40.524033, 27.268076>,  <34.023624, 40.227573, 27.072081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207195, 40.524033, 27.268076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179074, 0.463019, -0.868070,
		-0.870241, 0.486124, 0.079771,
		0.458925, 0.741145, 0.489990,
		34.344872, 40.746376, 27.415073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800175, 40.860924, 26.880312>,  <34.023624, 40.227573, 27.072081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800175, 40.860924, 26.880312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169453, 40.948677, 27.006535>,  <34.391022, 41.001328, 27.082268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169453, 40.948677, 27.006535>,  <33.800175, 40.860924, 26.880312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169453, 40.948677, 27.006535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165487, 0.514138, -0.841592,
		-0.346871, 0.829176, 0.438346,
		0.923198, 0.219383, 0.315557,
		34.446411, 41.014492, 27.101202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023632, 41.580734, 26.665607>,  <33.800175, 40.860924, 26.880312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023632, 41.580734, 26.665607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366684, 41.399017, 26.762020>,  <34.572514, 41.289986, 26.819868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366684, 41.399017, 26.762020>,  <34.023632, 41.580734, 26.665607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366684, 41.399017, 26.762020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484167, 0.555238, -0.676235,
		0.173380, 0.696655, 0.696140,
		0.857626, -0.454294, 0.241030,
		34.623970, 41.262730, 26.834330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451160, 42.046803, 26.988808>,  <34.023632, 41.580734, 26.665607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451160, 42.046803, 26.988808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682182, 41.761734, 26.829548>,  <34.820797, 41.590691, 26.733992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682182, 41.761734, 26.829548>,  <34.451160, 42.046803, 26.988808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682182, 41.761734, 26.829548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435767, 0.681567, -0.587855,
		0.690314, 0.166021, 0.704204,
		0.577559, -0.712674, -0.398149,
		34.855450, 41.547932, 26.710104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038300, 42.438320, 26.895409>,  <34.451160, 42.046803, 26.988808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038300, 42.438320, 26.895409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.120743, 42.103642, 26.692448>,  <35.170208, 41.902836, 26.570671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.120743, 42.103642, 26.692448>,  <35.038300, 42.438320, 26.895409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120743, 42.103642, 26.692448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419230, 0.544039, -0.726820,
		0.884176, -0.062917, 0.462898,
		0.206106, -0.836698, -0.507402,
		35.182575, 41.852631, 26.540228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806911, 42.393284, 26.788122>,  <35.038300, 42.438320, 26.895409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806911, 42.393284, 26.788122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.613281, 42.168056, 26.520205>,  <35.497105, 42.032921, 26.359453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.613281, 42.168056, 26.520205>,  <35.806911, 42.393284, 26.788122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613281, 42.168056, 26.520205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514984, 0.435526, -0.738315,
		0.707437, -0.702331, 0.079146,
		-0.484071, -0.563070, -0.669796,
		35.468060, 41.999134, 26.319265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352455, 42.088528, 26.267344>,  <35.806911, 42.393284, 26.788122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352455, 42.088528, 26.267344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992825, 42.103615, 26.092882>,  <35.777046, 42.112667, 25.988205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992825, 42.103615, 26.092882>,  <36.352455, 42.088528, 26.267344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992825, 42.103615, 26.092882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420520, 0.351425, -0.836459,
		0.121725, -0.935456, -0.331821,
		-0.899081, 0.037720, -0.436155,
		35.723099, 42.114929, 25.962036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500034, 41.946671, 25.518074>,  <36.352455, 42.088528, 26.267344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500034, 41.946671, 25.518074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114742, 42.052689, 25.500439>,  <35.883568, 42.116299, 25.489859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114742, 42.052689, 25.500439>,  <36.500034, 41.946671, 25.518074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114742, 42.052689, 25.500439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179706, 0.513523, -0.839047,
		-0.199747, -0.816116, -0.542269,
		-0.963227, 0.265046, -0.044086,
		35.825775, 42.132202, 25.487213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157295, 41.754143, 24.851942>,  <36.500034, 41.946671, 25.518074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157295, 41.754143, 24.851942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895748, 42.034912, 24.964914>,  <35.738819, 42.203373, 25.032698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895748, 42.034912, 24.964914>,  <36.157295, 41.754143, 24.851942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895748, 42.034912, 24.964914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025501, 0.393514, -0.918965,
		-0.756182, -0.593676, -0.275205,
		-0.653864, 0.701923, 0.282428,
		35.699589, 42.245487, 25.049643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805134, 41.836147, 24.340878>,  <36.157295, 41.754143, 24.851942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805134, 41.836147, 24.340878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722084, 42.180199, 24.527241>,  <35.672253, 42.386631, 24.639059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722084, 42.180199, 24.527241>,  <35.805134, 41.836147, 24.340878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722084, 42.180199, 24.527241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166388, 0.438292, -0.883298,
		-0.963954, -0.260915, 0.052116,
		-0.207623, 0.860130, 0.465907,
		35.659798, 42.438236, 24.667013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329311, 42.153999, 23.889210>,  <35.805134, 41.836147, 24.340878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329311, 42.153999, 23.889210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461807, 42.466511, 24.100824>,  <35.541306, 42.654018, 24.227793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461807, 42.466511, 24.100824>,  <35.329311, 42.153999, 23.889210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461807, 42.466511, 24.100824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105270, 0.526588, -0.843578,
		-0.937657, 0.335115, 0.092179,
		0.331235, 0.781283, 0.529037,
		35.561176, 42.700897, 24.259535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922958, 42.677422, 23.710041>,  <35.329311, 42.153999, 23.889210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922958, 42.677422, 23.710041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275684, 42.824471, 23.828194>,  <35.487320, 42.912701, 23.899084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275684, 42.824471, 23.828194>,  <34.922958, 42.677422, 23.710041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275684, 42.824471, 23.828194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101449, 0.463809, -0.880108,
		-0.460547, 0.806061, 0.371701,
		0.881819, 0.367623, 0.295380,
		35.540230, 42.934757, 23.916807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835461, 43.384567, 23.457729>,  <34.922958, 42.677422, 23.710041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835461, 43.384567, 23.457729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.226879, 43.330921, 23.520294>,  <35.461731, 43.298733, 23.557833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.226879, 43.330921, 23.520294>,  <34.835461, 43.384567, 23.457729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226879, 43.330921, 23.520294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203775, 0.517772, -0.830896,
		0.030446, 0.844941, 0.533992,
		0.978544, -0.134111, 0.156414,
		35.520443, 43.290688, 23.567219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135059, 43.991058, 23.258516>,  <34.835461, 43.384567, 23.457729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135059, 43.991058, 23.258516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431458, 43.722549, 23.265642>,  <35.609295, 43.561443, 23.269918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431458, 43.722549, 23.265642>,  <35.135059, 43.991058, 23.258516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431458, 43.722549, 23.265642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419522, 0.442050, -0.792839,
		0.524338, 0.594963, 0.609171,
		0.740994, -0.671276, 0.017816,
		35.653755, 43.521168, 23.270987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700020, 44.442757, 23.108168>,  <35.135059, 43.991058, 23.258516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700020, 44.442757, 23.108168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842625, 44.073730, 23.049156>,  <35.928188, 43.852314, 23.013750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842625, 44.073730, 23.049156>,  <35.700020, 44.442757, 23.108168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842625, 44.073730, 23.049156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463127, 0.311647, -0.829692,
		0.811424, 0.227475, 0.538373,
		0.356516, -0.922568, -0.147528,
		35.949581, 43.796959, 23.004898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346367, 44.525951, 23.008169>,  <35.700020, 44.442757, 23.108168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346367, 44.525951, 23.008169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257698, 44.172894, 22.842377>,  <36.204498, 43.961060, 22.742901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257698, 44.172894, 22.842377>,  <36.346367, 44.525951, 23.008169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257698, 44.172894, 22.842377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504426, 0.259969, -0.823389,
		0.834515, -0.391596, 0.387603,
		-0.221671, -0.882648, -0.414480,
		36.191196, 43.908100, 22.718033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962784, 44.109272, 22.873587>,  <36.346367, 44.525951, 23.008169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962784, 44.109272, 22.873587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.668472, 43.973045, 22.639441>,  <36.491886, 43.891312, 22.498953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.668472, 43.973045, 22.639441>,  <36.962784, 44.109272, 22.873587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668472, 43.973045, 22.639441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554427, 0.193452, -0.809436,
		0.388905, -0.920105, 0.046481,
		-0.735774, -0.340564, -0.585365,
		36.447739, 43.870876, 22.463831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287067, 43.695820, 22.325773>,  <36.962784, 44.109272, 22.873587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287067, 43.695820, 22.325773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933071, 43.814808, 22.182493>,  <36.720673, 43.886200, 22.096525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933071, 43.814808, 22.182493>,  <37.287067, 43.695820, 22.325773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933071, 43.814808, 22.182493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444265, 0.309208, -0.840844,
		-0.139367, -0.903273, -0.405801,
		-0.884989, 0.297469, -0.358199,
		36.667576, 43.904049, 22.075033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926003, 43.458786, 22.127352>,  <37.287067, 43.695820, 22.325773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926003, 43.458786, 22.127352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.315208, 43.547031, 22.100285>,  <38.548733, 43.599979, 22.084045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.315208, 43.547031, 22.100285>,  <37.926003, 43.458786, 22.127352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315208, 43.547031, 22.100285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173261, -0.504779, 0.845683,
		0.152410, -0.834583, -0.529379,
		0.973012, 0.220612, -0.067667,
		38.607113, 43.613216, 22.079985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372856, 42.803226, 22.051680>,  <37.926003, 43.458786, 22.127352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372856, 42.803226, 22.051680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578560, 43.109344, 22.206524>,  <38.701981, 43.293015, 22.299431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578560, 43.109344, 22.206524>,  <38.372856, 42.803226, 22.051680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578560, 43.109344, 22.206524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319115, -0.589711, 0.741894,
		0.796055, -0.257991, -0.547482,
		0.514258, 0.765298, 0.387113,
		38.732838, 43.338936, 22.322659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077793, 42.616039, 22.242317>,  <38.372856, 42.803226, 22.051680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077793, 42.616039, 22.242317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.958904, 42.927315, 22.463615>,  <38.887573, 43.114079, 22.596395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.958904, 42.927315, 22.463615>,  <39.077793, 42.616039, 22.242317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958904, 42.927315, 22.463615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246495, -0.497254, 0.831853,
		0.922443, 0.383616, -0.044025,
		-0.297220, 0.778189, 0.553247,
		38.869740, 43.160770, 22.629589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501591, 42.532169, 22.746944>,  <39.077793, 42.616039, 22.242317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501591, 42.532169, 22.746944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.231300, 42.781929, 22.903669>,  <39.069126, 42.931786, 22.997704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.231300, 42.781929, 22.903669>,  <39.501591, 42.532169, 22.746944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231300, 42.781929, 22.903669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174013, -0.381384, 0.907890,
		0.716316, 0.681669, 0.149059,
		-0.675730, 0.624398, 0.391811,
		39.028580, 42.969250, 23.021214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857449, 42.896961, 23.211185>,  <39.501591, 42.532169, 22.746944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857449, 42.896961, 23.211185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.470226, 42.933552, 23.304573>,  <39.237892, 42.955505, 23.360605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.470226, 42.933552, 23.304573>,  <39.857449, 42.896961, 23.211185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470226, 42.933552, 23.304573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205992, -0.240783, 0.948468,
		0.142977, 0.966259, 0.214247,
		-0.968052, 0.091476, 0.233468,
		39.179810, 42.960995, 23.374613>
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
