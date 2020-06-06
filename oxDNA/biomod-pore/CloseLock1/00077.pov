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
	<23.913025, 34.944309, 34.779228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289135, 34.984207, 34.909420>,  <24.514801, 35.008148, 34.987534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289135, 34.984207, 34.909420>,  <23.913025, 34.944309, 34.779228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.289135, 34.984207, 34.909420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315509, 0.103658, -0.943244,
		-0.127824, 0.989599, 0.065996,
		0.940274, 0.099747, 0.325477,
		24.571217, 35.014130, 35.007065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.131754, 35.537663, 34.365723>,  <23.913025, 34.944309, 34.779228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.131754, 35.537663, 34.365723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452755, 35.307789, 34.429882>,  <24.645355, 35.169865, 34.468376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452755, 35.307789, 34.429882>,  <24.131754, 35.537663, 34.365723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452755, 35.307789, 34.429882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362059, 0.255369, -0.896493,
		0.474240, 0.777511, 0.413004,
		0.802502, -0.574685, 0.160399,
		24.693506, 35.135384, 34.478001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.776983, 35.946888, 34.306633>,  <24.131754, 35.537663, 34.365723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.776983, 35.946888, 34.306633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793043, 35.562023, 34.198833>,  <24.802679, 35.331104, 34.134151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793043, 35.562023, 34.198833>,  <24.776983, 35.946888, 34.306633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.793043, 35.562023, 34.198833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294341, 0.269142, -0.917020,
		0.954857, -0.042506, 0.294010,
		0.040151, -0.962162, -0.269503,
		24.805088, 35.273373, 34.117981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460083, 35.842148, 33.983047>,  <24.776983, 35.946888, 34.306633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460083, 35.842148, 33.983047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187496, 35.589424, 33.835308>,  <25.023945, 35.437790, 33.746666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187496, 35.589424, 33.835308>,  <25.460083, 35.842148, 33.983047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187496, 35.589424, 33.835308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194588, 0.330085, -0.923677,
		0.705506, -0.701326, -0.101999,
		-0.681467, -0.631812, -0.369346,
		24.983055, 35.399879, 33.724503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792213, 35.368420, 33.483788>,  <25.460083, 35.842148, 33.983047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792213, 35.368420, 33.483788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405256, 35.446033, 33.418674>,  <25.173082, 35.492603, 33.379608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405256, 35.446033, 33.418674>,  <25.792213, 35.368420, 33.483788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.405256, 35.446033, 33.418674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240485, 0.502066, -0.830720,
		-0.079467, -0.842780, -0.532359,
		-0.967394, 0.194040, -0.162778,
		25.115038, 35.504246, 33.369843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211693, 34.743958, 33.402153>,  <25.792213, 35.368420, 33.483788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211693, 34.743958, 33.402153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586704, 34.770332, 33.538795>,  <26.811710, 34.786156, 33.620781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586704, 34.770332, 33.538795>,  <26.211693, 34.743958, 33.402153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586704, 34.770332, 33.538795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335196, 0.091868, -0.937659,
		-0.093206, 0.993586, 0.064028,
		0.937527, 0.065934, 0.341609,
		26.867962, 34.790112, 33.641277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560413, 35.358845, 33.305206>,  <26.211693, 34.743958, 33.402153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560413, 35.358845, 33.305206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.833002, 35.066525, 33.320858>,  <26.996555, 34.891132, 33.330250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.833002, 35.066525, 33.320858>,  <26.560413, 35.358845, 33.305206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833002, 35.066525, 33.320858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339513, 0.268330, -0.901516,
		0.648329, 0.627639, 0.430975,
		0.681470, -0.730800, 0.039126,
		27.037443, 34.847286, 33.332596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326078, 35.659950, 33.279316>,  <26.560413, 35.358845, 33.305206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326078, 35.659950, 33.279316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326099, 35.277966, 33.160629>,  <27.326113, 35.048775, 33.089417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326099, 35.277966, 33.160629>,  <27.326078, 35.659950, 33.279316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326099, 35.277966, 33.160629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380418, 0.274429, -0.883160,
		0.924814, -0.112831, 0.363300,
		0.000053, -0.954965, -0.296719,
		27.326115, 34.991478, 33.071613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.950127, 35.575840, 32.884598>,  <27.326078, 35.659950, 33.279316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.950127, 35.575840, 32.884598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716064, 35.273468, 32.767181>,  <27.575626, 35.092045, 32.696732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.716064, 35.273468, 32.767181>,  <27.950127, 35.575840, 32.884598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716064, 35.273468, 32.767181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075885, 0.309355, -0.947914,
		0.807363, -0.576952, -0.123657,
		-0.585155, -0.755927, -0.293544,
		27.540518, 35.046692, 32.679119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289833, 35.096706, 32.408958>,  <27.950127, 35.575840, 32.884598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289833, 35.096706, 32.408958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900345, 35.061928, 32.324760>,  <27.666653, 35.041061, 32.274242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900345, 35.061928, 32.324760>,  <28.289833, 35.096706, 32.408958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900345, 35.061928, 32.324760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158235, 0.406467, -0.899859,
		0.163797, -0.909519, -0.382028,
		-0.973721, -0.086944, -0.210496,
		27.608229, 35.035843, 32.261612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300243, 35.324734, 31.753429>,  <28.289833, 35.096706, 32.408958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300243, 35.324734, 31.753429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906540, 35.254787, 31.763655>,  <27.670317, 35.212818, 31.769791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906540, 35.254787, 31.763655>,  <28.300243, 35.324734, 31.753429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906540, 35.254787, 31.763655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062951, 0.211745, -0.975295,
		0.165132, -0.961554, -0.219421,
		-0.984261, -0.174865, 0.025565,
		27.611261, 35.202328, 31.771324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053726, 34.638020, 31.385778>,  <28.300243, 35.324734, 31.753429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053726, 34.638020, 31.385778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761463, 34.910522, 31.367762>,  <27.586105, 35.074024, 31.356953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761463, 34.910522, 31.367762>,  <28.053726, 34.638020, 31.385778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761463, 34.910522, 31.367762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000570, -0.066578, -0.997781,
		-0.682745, -0.729010, 0.049034,
		-0.730656, 0.681258, -0.045040,
		27.542267, 35.114899, 31.354250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570646, 34.396713, 31.015400>,  <28.053726, 34.638020, 31.385778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570646, 34.396713, 31.015400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444311, 34.776184, 31.008890>,  <27.368509, 35.003864, 31.004984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444311, 34.776184, 31.008890>,  <27.570646, 34.396713, 31.015400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444311, 34.776184, 31.008890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110050, -0.053666, -0.992476,
		-0.942409, -0.311671, 0.121352,
		-0.315838, 0.948674, -0.016276,
		27.349560, 35.060787, 31.004007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082092, 34.472031, 30.480608>,  <27.570646, 34.396713, 31.015400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082092, 34.472031, 30.480608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141312, 34.862335, 30.545073>,  <27.176844, 35.096519, 30.583752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141312, 34.862335, 30.545073>,  <27.082092, 34.472031, 30.480608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141312, 34.862335, 30.545073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021542, 0.159738, -0.986924,
		-0.988745, 0.149586, 0.002630,
		0.148050, 0.975760, 0.161162,
		27.185726, 35.155064, 30.593422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724033, 34.759075, 30.038403>,  <27.082092, 34.472031, 30.480608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724033, 34.759075, 30.038403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998634, 35.038696, 30.118444>,  <27.163395, 35.206470, 30.166470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998634, 35.038696, 30.118444>,  <26.724033, 34.759075, 30.038403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998634, 35.038696, 30.118444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006396, 0.269386, -0.963011,
		-0.727100, 0.662389, 0.180463,
		0.686502, 0.699051, 0.200107,
		27.204584, 35.248413, 30.178476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480915, 35.306904, 29.711203>,  <26.724033, 34.759075, 30.038403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480915, 35.306904, 29.711203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.869770, 35.381550, 29.767944>,  <27.103083, 35.426338, 29.801989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.869770, 35.381550, 29.767944>,  <26.480915, 35.306904, 29.711203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.869770, 35.381550, 29.767944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087764, 0.271375, -0.958464,
		-0.217355, 0.944210, 0.247437,
		0.972139, 0.186611, 0.141853,
		27.161411, 35.437534, 29.810499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567535, 35.894047, 29.308561>,  <26.480915, 35.306904, 29.711203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567535, 35.894047, 29.308561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941803, 35.783428, 29.396238>,  <27.166363, 35.717056, 29.448845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941803, 35.783428, 29.396238>,  <26.567535, 35.894047, 29.308561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941803, 35.783428, 29.396238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288811, 0.243237, -0.925972,
		0.202762, 0.929707, 0.307460,
		0.935669, -0.276550, 0.219190,
		27.222504, 35.700462, 29.461996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075771, 36.463459, 29.124359>,  <26.567535, 35.894047, 29.308561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075771, 36.463459, 29.124359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287596, 36.124229, 29.131762>,  <27.414690, 35.920692, 29.136204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287596, 36.124229, 29.131762>,  <27.075771, 36.463459, 29.124359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287596, 36.124229, 29.131762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411662, 0.237858, -0.879749,
		0.741686, 0.473500, 0.475079,
		0.529562, -0.848069, 0.018506,
		27.446465, 35.869808, 29.137314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908546, 36.589764, 29.125980>,  <27.075771, 36.463459, 29.124359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908546, 36.589764, 29.125980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817562, 36.223236, 28.994152>,  <27.762972, 36.003319, 28.915054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817562, 36.223236, 28.994152>,  <27.908546, 36.589764, 29.125980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817562, 36.223236, 28.994152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449111, 0.201586, -0.870438,
		0.864037, -0.346006, 0.365677,
		-0.227461, -0.916320, -0.329573,
		27.749323, 35.948341, 28.895281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410864, 36.445972, 28.627579>,  <27.908546, 36.589764, 29.125980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410864, 36.445972, 28.627579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132641, 36.164169, 28.571207>,  <27.965706, 35.995087, 28.537384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132641, 36.164169, 28.571207>,  <28.410864, 36.445972, 28.627579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132641, 36.164169, 28.571207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184655, 0.014269, -0.982700,
		0.694333, -0.709550, 0.120167,
		-0.695560, -0.704511, -0.140929,
		27.923973, 35.952816, 28.528929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742508, 35.944839, 28.218746>,  <28.410864, 36.445972, 28.627579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742508, 35.944839, 28.218746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356133, 35.865860, 28.151838>,  <28.124308, 35.818470, 28.111694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356133, 35.865860, 28.151838>,  <28.742508, 35.944839, 28.218746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356133, 35.865860, 28.151838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172534, -0.009641, -0.984956,
		0.192870, -0.980265, 0.043380,
		-0.965936, -0.197453, -0.167270,
		28.066351, 35.806625, 28.101658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755310, 35.280155, 27.856430>,  <28.742508, 35.944839, 28.218746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755310, 35.280155, 27.856430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394081, 35.431370, 27.774891>,  <28.177343, 35.522099, 27.725967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394081, 35.431370, 27.774891>,  <28.755310, 35.280155, 27.856430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394081, 35.431370, 27.774891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117912, -0.238169, -0.964040,
		-0.412992, -0.894631, 0.170508,
		-0.903069, 0.378035, -0.203849,
		28.123159, 35.544781, 27.713736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394062, 34.789486, 27.471561>,  <28.755310, 35.280155, 27.856430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394062, 34.789486, 27.471561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249012, 35.148853, 27.372482>,  <28.161982, 35.364471, 27.313034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249012, 35.148853, 27.372482>,  <28.394062, 34.789486, 27.471561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249012, 35.148853, 27.372482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072216, -0.237902, -0.968601,
		-0.929133, -0.369126, 0.021389,
		-0.362625, 0.898415, -0.247699,
		28.140224, 35.418377, 27.298172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134861, 34.802555, 26.809080>,  <28.394062, 34.789486, 27.471561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134861, 34.802555, 26.809080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088606, 35.198200, 26.845490>,  <28.060854, 35.435589, 26.867334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088606, 35.198200, 26.845490>,  <28.134861, 34.802555, 26.809080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088606, 35.198200, 26.845490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105326, 0.103331, -0.989055,
		-0.987692, -0.104784, -0.116129,
		-0.115637, 0.989112, 0.091023,
		28.053915, 35.494934, 26.872797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694485, 35.022419, 26.262630>,  <28.134861, 34.802555, 26.809080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694485, 35.022419, 26.262630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926882, 35.315346, 26.404707>,  <28.066320, 35.491100, 26.489952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926882, 35.315346, 26.404707>,  <27.694485, 35.022419, 26.262630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926882, 35.315346, 26.404707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297878, 0.214804, -0.930122,
		-0.757439, 0.646199, -0.093341,
		0.580995, 0.732315, 0.355189,
		28.101181, 35.535042, 26.511263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649656, 35.538399, 25.680031>,  <27.694485, 35.022419, 26.262630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649656, 35.538399, 25.680031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975100, 35.633263, 25.892368>,  <28.170366, 35.690182, 26.019770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975100, 35.633263, 25.892368>,  <27.649656, 35.538399, 25.680031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975100, 35.633263, 25.892368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421313, 0.388701, -0.819394,
		-0.400670, 0.890317, 0.216331,
		0.813609, 0.237164, 0.530843,
		28.219183, 35.704411, 26.051620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812885, 36.203217, 25.567677>,  <27.649656, 35.538399, 25.680031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812885, 36.203217, 25.567677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147551, 36.001305, 25.652706>,  <28.348351, 35.880157, 25.703724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147551, 36.001305, 25.652706>,  <27.812885, 36.203217, 25.567677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147551, 36.001305, 25.652706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446954, 0.404893, -0.797680,
		0.316583, 0.762402, 0.564374,
		0.836664, -0.504781, 0.212576,
		28.398550, 35.849869, 25.716478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371485, 36.712608, 25.564224>,  <27.812885, 36.203217, 25.567677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371485, 36.712608, 25.564224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483408, 36.337162, 25.483515>,  <28.550562, 36.111897, 25.435089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483408, 36.337162, 25.483515>,  <28.371485, 36.712608, 25.564224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483408, 36.337162, 25.483515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596729, 0.334671, -0.729321,
		0.752079, 0.083664, 0.653741,
		0.279806, -0.938614, -0.201775,
		28.567350, 36.055576, 25.422983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188156, 36.734783, 25.615602>,  <28.371485, 36.712608, 25.564224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188156, 36.734783, 25.615602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010820, 36.444344, 25.405371>,  <28.904419, 36.270081, 25.279232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010820, 36.444344, 25.405371>,  <29.188156, 36.734783, 25.615602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010820, 36.444344, 25.405371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477718, 0.304739, -0.823966,
		0.758443, -0.616376, 0.211766,
		-0.443340, -0.726095, -0.525581,
		28.877819, 36.226517, 25.247696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536734, 36.953091, 26.285944>,  <29.188156, 36.734783, 25.615602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536734, 36.953091, 26.285944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223854, 36.703949, 26.280048>,  <29.036125, 36.554466, 26.276510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223854, 36.703949, 26.280048>,  <29.536734, 36.953091, 26.285944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223854, 36.703949, 26.280048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169202, -0.189603, -0.967172,
		0.599610, -0.759017, 0.253695,
		-0.782201, -0.622852, -0.014739,
		28.989193, 36.517094, 26.275627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990799, 36.406208, 26.154718>,  <29.536734, 36.953091, 26.285944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990799, 36.406208, 26.154718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067921, 36.554752, 25.791420>,  <30.114195, 36.643879, 25.573441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067921, 36.554752, 25.791420>,  <29.990799, 36.406208, 26.154718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067921, 36.554752, 25.791420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858541, 0.384336, 0.339400,
		0.475114, -0.845207, -0.244729,
		0.192805, 0.371364, -0.908248,
		30.125763, 36.666161, 25.518946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734344, 36.271172, 25.730051>,  <29.990799, 36.406208, 26.154718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734344, 36.271172, 25.730051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092487, 36.372292, 25.583395>,  <31.307373, 36.432964, 25.495401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092487, 36.372292, 25.583395>,  <30.734344, 36.271172, 25.730051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092487, 36.372292, 25.583395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427095, -0.254159, 0.867752,
		0.126182, -0.933539, -0.335533,
		0.895359, 0.252799, -0.366640,
		31.361095, 36.448132, 25.473404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307596, 35.731613, 25.859648>,  <30.734344, 36.271172, 25.730051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307596, 35.731613, 25.859648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491877, 36.086182, 25.841677>,  <31.602444, 36.298923, 25.830894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491877, 36.086182, 25.841677>,  <31.307596, 35.731613, 25.859648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491877, 36.086182, 25.841677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427135, -0.177055, 0.886683,
		0.778017, -0.427685, -0.460190,
		0.460700, 0.886418, -0.044927,
		31.630087, 36.352108, 25.828199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960043, 35.619335, 26.164129>,  <31.307596, 35.731613, 25.859648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960043, 35.619335, 26.164129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838341, 35.996891, 26.215523>,  <31.765320, 36.223423, 26.246359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838341, 35.996891, 26.215523>,  <31.960043, 35.619335, 26.164129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838341, 35.996891, 26.215523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136856, -0.090169, 0.986479,
		0.942708, 0.317726, -0.101742,
		-0.304256, 0.943885, 0.128486,
		31.747065, 36.280056, 26.254068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487801, 36.012550, 26.545454>,  <31.960043, 35.619335, 26.164129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487801, 36.012550, 26.545454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125854, 36.167953, 26.615057>,  <31.908688, 36.261196, 26.656818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125854, 36.167953, 26.615057>,  <32.487801, 36.012550, 26.545454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125854, 36.167953, 26.615057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157286, -0.074711, 0.984723,
		0.395576, 0.918410, 0.006496,
		-0.904865, 0.388511, 0.174007,
		31.854395, 36.284508, 26.667259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627266, 36.545433, 26.909752>,  <32.487801, 36.012550, 26.545454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627266, 36.545433, 26.909752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260372, 36.415092, 27.001404>,  <32.040237, 36.336887, 27.056396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260372, 36.415092, 27.001404>,  <32.627266, 36.545433, 26.909752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260372, 36.415092, 27.001404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265496, -0.071251, 0.961475,
		-0.296973, 0.942732, 0.151866,
		-0.917234, -0.325852, 0.229132,
		31.985203, 36.317337, 27.070143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330215, 36.896740, 27.417635>,  <32.627266, 36.545433, 26.909752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330215, 36.896740, 27.417635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182499, 36.525028, 27.420984>,  <32.093868, 36.302002, 27.422993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182499, 36.525028, 27.420984>,  <32.330215, 36.896740, 27.417635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182499, 36.525028, 27.420984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149934, -0.050687, 0.987396,
		-0.917139, 0.365892, 0.158048,
		-0.369292, -0.929276, 0.008372,
		32.071712, 36.246246, 27.423496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148956, 36.771950, 28.067116>,  <32.330215, 36.896740, 27.417635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148956, 36.771950, 28.067116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105167, 36.395058, 27.940487>,  <32.078892, 36.168922, 27.864510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105167, 36.395058, 27.940487>,  <32.148956, 36.771950, 28.067116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105167, 36.395058, 27.940487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079377, -0.309184, 0.947684,
		-0.990815, 0.128878, -0.040943,
		-0.109476, -0.942229, -0.316574,
		32.072323, 36.112389, 27.845514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497206, 36.578205, 28.317606>,  <32.148956, 36.771950, 28.067116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497206, 36.578205, 28.317606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743206, 36.266209, 28.271332>,  <31.890806, 36.079010, 28.243567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743206, 36.266209, 28.271332>,  <31.497206, 36.578205, 28.317606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743206, 36.266209, 28.271332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222006, -0.312053, 0.923762,
		-0.756629, -0.542431, -0.365076,
		0.615000, -0.779994, -0.115686,
		31.927706, 36.032211, 28.236626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094803, 35.956047, 28.719955>,  <31.497206, 36.578205, 28.317606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094803, 35.956047, 28.719955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472502, 35.832340, 28.674788>,  <31.699121, 35.758118, 28.647688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472502, 35.832340, 28.674788>,  <31.094803, 35.956047, 28.719955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472502, 35.832340, 28.674788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020878, -0.398532, 0.916917,
		-0.328568, -0.863441, -0.382770,
		0.944250, -0.309261, -0.112917,
		31.755777, 35.739563, 28.640911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073051, 35.315155, 29.005184>,  <31.094803, 35.956047, 28.719955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073051, 35.315155, 29.005184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460146, 35.415684, 28.997974>,  <31.692402, 35.476002, 28.993649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460146, 35.415684, 28.997974>,  <31.073051, 35.315155, 29.005184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460146, 35.415684, 28.997974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128053, -0.428941, 0.894210,
		0.217008, -0.867666, -0.447284,
		0.967735, 0.251327, -0.018023,
		31.750465, 35.491081, 28.992567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478207, 34.671448, 29.096060>,  <31.073051, 35.315155, 29.005184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478207, 34.671448, 29.096060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711302, 34.980583, 29.196568>,  <31.851158, 35.166065, 29.256872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711302, 34.980583, 29.196568>,  <31.478207, 34.671448, 29.096060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711302, 34.980583, 29.196568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016064, -0.320089, 0.947251,
		0.812501, -0.547963, -0.198943,
		0.582738, 0.772839, 0.251270,
		31.886124, 35.212437, 29.271948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062771, 34.408337, 29.352871>,  <31.478207, 34.671448, 29.096060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062771, 34.408337, 29.352871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060432, 34.774788, 29.513205>,  <32.059029, 34.994659, 29.609406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060432, 34.774788, 29.513205>,  <32.062771, 34.408337, 29.352871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060432, 34.774788, 29.513205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084129, -0.398968, 0.913097,
		0.996438, 0.039061, -0.074740,
		-0.005848, 0.916132, 0.400833,
		32.058678, 35.049629, 29.633455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597050, 34.424923, 29.782690>,  <32.062771, 34.408337, 29.352871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597050, 34.424923, 29.782690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356468, 34.718533, 29.908838>,  <32.212120, 34.894699, 29.984528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356468, 34.718533, 29.908838>,  <32.597050, 34.424923, 29.782690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356468, 34.718533, 29.908838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033207, -0.371440, 0.927863,
		0.798218, 0.568538, 0.199029,
		-0.601453, 0.734028, 0.315370,
		32.176033, 34.938740, 30.003448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880028, 34.710499, 30.392908>,  <32.597050, 34.424923, 29.782690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880028, 34.710499, 30.392908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497032, 34.820004, 30.429298>,  <32.267235, 34.885708, 30.451132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497032, 34.820004, 30.429298>,  <32.880028, 34.710499, 30.392908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497032, 34.820004, 30.429298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012562, -0.354625, 0.934924,
		0.288211, 0.894033, 0.342987,
		-0.957485, 0.273764, 0.090976,
		32.209785, 34.902134, 30.456591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790798, 34.734211, 31.156702>,  <32.880028, 34.710499, 30.392908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790798, 34.734211, 31.156702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418056, 34.747959, 31.012218>,  <32.194412, 34.756207, 30.925528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418056, 34.747959, 31.012218>,  <32.790798, 34.734211, 31.156702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418056, 34.747959, 31.012218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348886, -0.358288, 0.865972,
		-0.099657, 0.932978, 0.345861,
		-0.931851, 0.034366, -0.361209,
		32.138500, 34.758270, 30.903856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477783, 35.021217, 31.659456>,  <32.790798, 34.734211, 31.156702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477783, 35.021217, 31.659456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188335, 34.851353, 31.441818>,  <32.014668, 34.749435, 31.311235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188335, 34.851353, 31.441818>,  <32.477783, 35.021217, 31.659456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188335, 34.851353, 31.441818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431232, -0.337336, 0.836805,
		-0.538900, 0.840159, 0.060976,
		-0.723620, -0.424660, -0.544094,
		31.971249, 34.723953, 31.278589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788189, 35.244373, 31.990019>,  <32.477783, 35.021217, 31.659456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788189, 35.244373, 31.990019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708824, 34.918060, 31.772715>,  <31.661205, 34.722275, 31.642332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708824, 34.918060, 31.772715>,  <31.788189, 35.244373, 31.990019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708824, 34.918060, 31.772715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427642, -0.426684, 0.796908,
		-0.881904, 0.390439, -0.264203,
		-0.198414, -0.815781, -0.543262,
		31.649300, 34.673325, 31.609735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078962, 35.106506, 32.139233>,  <31.788189, 35.244373, 31.990019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078962, 35.106506, 32.139233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240143, 34.762970, 32.012730>,  <31.336851, 34.556847, 31.936829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240143, 34.762970, 32.012730>,  <31.078962, 35.106506, 32.139233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240143, 34.762970, 32.012730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392276, -0.474271, 0.788154,
		-0.826891, -0.193530, -0.528013,
		0.402953, -0.858844, -0.316253,
		31.361029, 34.505318, 31.917854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568573, 34.667156, 32.302444>,  <31.078962, 35.106506, 32.139233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568573, 34.667156, 32.302444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883146, 34.430759, 32.230610>,  <31.071890, 34.288921, 32.187511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883146, 34.430759, 32.230610>,  <30.568573, 34.667156, 32.302444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883146, 34.430759, 32.230610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267605, -0.588041, 0.763279,
		-0.556690, -0.552214, -0.620609,
		0.786438, -0.590988, -0.179581,
		31.119078, 34.253464, 32.176735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260462, 33.931332, 32.227055>,  <30.568573, 34.667156, 32.302444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260462, 33.931332, 32.227055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644970, 33.894402, 32.330929>,  <30.875675, 33.872242, 32.393253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644970, 33.894402, 32.330929>,  <30.260462, 33.931332, 32.227055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644970, 33.894402, 32.330929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254883, -0.656299, 0.710145,
		0.104866, -0.748830, -0.654413,
		0.961269, -0.092329, 0.259688,
		30.933352, 33.866703, 32.408836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499964, 33.174683, 32.259663>,  <30.260462, 33.931332, 32.227055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499964, 33.174683, 32.259663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744841, 33.396420, 32.485203>,  <30.891766, 33.529461, 32.620525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744841, 33.396420, 32.485203>,  <30.499964, 33.174683, 32.259663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744841, 33.396420, 32.485203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195843, -0.584571, 0.787351,
		0.766073, -0.592435, -0.249304,
		0.612190, 0.554345, 0.563848,
		30.928497, 33.562721, 32.654358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713415, 32.725189, 32.759804>,  <30.499964, 33.174683, 32.259663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713415, 32.725189, 32.759804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783922, 33.089214, 32.909855>,  <30.826225, 33.307629, 32.999886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783922, 33.089214, 32.909855>,  <30.713415, 32.725189, 32.759804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783922, 33.089214, 32.909855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196020, -0.341011, 0.919395,
		0.964628, -0.235590, 0.118282,
		0.176265, 0.910060, 0.375129,
		30.836802, 33.362232, 33.022392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902044, 32.604813, 33.428879>,  <30.713415, 32.725189, 32.759804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902044, 32.604813, 33.428879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816004, 32.995342, 33.438000>,  <30.764380, 33.229660, 33.443470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816004, 32.995342, 33.438000>,  <30.902044, 32.604813, 33.428879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816004, 32.995342, 33.438000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175651, -0.061644, 0.982521,
		0.960666, 0.207336, 0.184752,
		-0.215101, 0.976326, 0.022800,
		30.751474, 33.288239, 33.444839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254299, 32.782722, 33.960499>,  <30.902044, 32.604813, 33.428879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254299, 32.782722, 33.960499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982368, 33.071835, 33.910828>,  <30.819210, 33.245304, 33.881027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982368, 33.071835, 33.910828>,  <31.254299, 32.782722, 33.960499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982368, 33.071835, 33.910828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219279, -0.038760, 0.974892,
		0.699822, 0.689987, 0.184842,
		-0.679828, 0.722783, -0.124175,
		30.778419, 33.288670, 33.873577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388474, 33.182926, 34.508041>,  <31.254299, 32.782722, 33.960499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388474, 33.182926, 34.508041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020168, 33.290539, 34.395035>,  <30.799185, 33.355106, 34.327229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020168, 33.290539, 34.395035>,  <31.388474, 33.182926, 34.508041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020168, 33.290539, 34.395035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252673, 0.140515, 0.957294,
		0.297243, 0.952825, -0.061404,
		-0.920762, 0.269033, -0.282520,
		30.743940, 33.371250, 34.310280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614506, 33.016964, 35.242054>,  <31.388474, 33.182926, 34.508041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614506, 33.016964, 35.242054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991789, 33.147251, 35.215935>,  <32.218159, 33.225426, 35.200264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991789, 33.147251, 35.215935>,  <31.614506, 33.016964, 35.242054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991789, 33.147251, 35.215935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159047, -0.270184, 0.949581,
		0.291654, -0.906039, -0.306645,
		0.943208, 0.325720, -0.065302,
		32.274750, 33.244968, 35.196342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243374, 32.502808, 35.384537>,  <31.614506, 33.016964, 35.242054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243374, 32.502808, 35.384537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355457, 32.858170, 35.529984>,  <32.422707, 33.071388, 35.617252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355457, 32.858170, 35.529984>,  <32.243374, 32.502808, 35.384537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355457, 32.858170, 35.529984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258595, -0.434650, 0.862675,
		0.924452, -0.147698, -0.351530,
		0.280208, 0.888406, 0.363619,
		32.439518, 33.124691, 35.639069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922306, 32.412319, 35.554272>,  <32.243374, 32.502808, 35.384537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922306, 32.412319, 35.554272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810627, 32.714161, 35.791801>,  <32.743622, 32.895264, 35.934319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810627, 32.714161, 35.791801>,  <32.922306, 32.412319, 35.554272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810627, 32.714161, 35.791801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409534, -0.465775, 0.784433,
		0.868522, 0.462202, -0.178993,
		-0.279196, 0.754601, 0.593824,
		32.726868, 32.940540, 35.969948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436657, 32.552685, 36.011543>,  <32.922306, 32.412319, 35.554272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436657, 32.552685, 36.011543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150692, 32.725044, 36.231808>,  <32.979115, 32.828461, 36.363964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150692, 32.725044, 36.231808>,  <33.436657, 32.552685, 36.011543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150692, 32.725044, 36.231808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473787, -0.280648, 0.834723,
		0.514226, 0.857648, -0.003518,
		-0.714911, 0.430903, 0.550659,
		32.936218, 32.854317, 36.397007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790379, 32.943771, 36.410847>,  <33.436657, 32.552685, 36.011543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790379, 32.943771, 36.410847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435799, 32.905151, 36.591904>,  <33.223049, 32.881981, 36.700539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435799, 32.905151, 36.591904>,  <33.790379, 32.943771, 36.410847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435799, 32.905151, 36.591904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461994, -0.125957, 0.877893,
		-0.027747, 0.987326, 0.156260,
		-0.886449, -0.096550, 0.452644,
		33.169865, 32.876186, 36.727695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862499, 33.256050, 37.096809>,  <33.790379, 32.943771, 36.410847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862499, 33.256050, 37.096809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555302, 33.000500, 37.114780>,  <33.370983, 32.847172, 37.125561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555302, 33.000500, 37.114780>,  <33.862499, 33.256050, 37.096809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555302, 33.000500, 37.114780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378651, -0.396368, 0.836371,
		-0.516529, 0.659342, 0.546320,
		-0.767998, -0.638874, 0.044925,
		33.324902, 32.808838, 37.128258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786987, 33.116425, 37.737404>,  <33.862499, 33.256050, 37.096809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786987, 33.116425, 37.737404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596909, 32.810402, 37.563560>,  <33.482861, 32.626789, 37.459255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596909, 32.810402, 37.563560>,  <33.786987, 33.116425, 37.737404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596909, 32.810402, 37.563560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356397, -0.618966, 0.699902,
		-0.804471, 0.177695, 0.566791,
		-0.475193, -0.765053, -0.434610,
		33.454350, 32.580887, 37.433178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174034, 33.134186, 38.340450>,  <33.786987, 33.116425, 37.737404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174034, 33.134186, 38.340450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156456, 32.749344, 38.448101>,  <34.145908, 32.518440, 38.512691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156456, 32.749344, 38.448101>,  <34.174034, 33.134186, 38.340450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156456, 32.749344, 38.448101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431009, 0.261284, 0.863691,
		-0.901277, -0.078036, -0.426158,
		-0.043949, -0.962103, 0.269123,
		34.143272, 32.460712, 38.528839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496616, 32.934063, 38.482220>,  <34.174034, 33.134186, 38.340450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496616, 32.934063, 38.482220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768269, 32.764511, 38.721920>,  <33.931259, 32.662781, 38.865742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768269, 32.764511, 38.721920>,  <33.496616, 32.934063, 38.482220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768269, 32.764511, 38.721920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386287, 0.487811, 0.782830,
		-0.624147, -0.763130, 0.167551,
		0.679134, -0.423878, 0.599253,
		33.972008, 32.637348, 38.901695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112175, 32.791641, 39.082909>,  <33.496616, 32.934063, 38.482220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112175, 32.791641, 39.082909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497593, 32.793190, 39.189911>,  <33.728844, 32.794117, 39.254112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497593, 32.793190, 39.189911>,  <33.112175, 32.791641, 39.082909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497593, 32.793190, 39.189911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232231, 0.508531, 0.829135,
		-0.132826, -0.861035, 0.490893,
		0.963549, 0.003869, 0.267505,
		33.786659, 32.794350, 39.270161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986858, 32.606720, 39.781475>,  <33.112175, 32.791641, 39.082909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986858, 32.606720, 39.781475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356598, 32.754120, 39.741890>,  <33.578442, 32.842560, 39.718140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356598, 32.754120, 39.741890>,  <32.986858, 32.606720, 39.781475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356598, 32.754120, 39.741890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038726, 0.348640, 0.936457,
		0.379590, -0.861775, 0.336533,
		0.924344, 0.368502, -0.098967,
		33.633900, 32.864670, 39.712200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256348, 32.466721, 40.307808>,  <32.986858, 32.606720, 39.781475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256348, 32.466721, 40.307808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483131, 32.771069, 40.181549>,  <33.619202, 32.953678, 40.105793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483131, 32.771069, 40.181549>,  <33.256348, 32.466721, 40.307808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483131, 32.771069, 40.181549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079390, 0.431874, 0.898433,
		0.819911, -0.484316, 0.305261,
		0.566960, 0.760870, -0.315648,
		33.653221, 32.999329, 40.086853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752480, 32.662560, 40.882320>,  <33.256348, 32.466721, 40.307808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752480, 32.662560, 40.882320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748970, 32.988541, 40.650539>,  <33.746864, 33.184132, 40.511471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748970, 32.988541, 40.650539>,  <33.752480, 32.662560, 40.882320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748970, 32.988541, 40.650539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156025, 0.573495, 0.804213,
		0.987714, -0.083349, -0.132188,
		-0.008779, 0.814958, -0.579454,
		33.746338, 33.233028, 40.476704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283539, 33.171070, 41.220226>,  <33.752480, 32.662560, 40.882320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283539, 33.171070, 41.220226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034031, 33.384129, 40.991421>,  <33.884327, 33.511963, 40.854137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034031, 33.384129, 40.991421>,  <34.283539, 33.171070, 41.220226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034031, 33.384129, 40.991421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074142, 0.688219, 0.721705,
		0.778086, 0.492585, -0.389796,
		-0.623766, 0.532648, -0.572015,
		33.846901, 33.543922, 40.819817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450207, 33.870094, 41.312477>,  <34.283539, 33.171070, 41.220226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450207, 33.870094, 41.312477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087353, 33.901531, 41.147106>,  <33.869640, 33.920391, 41.047882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087353, 33.901531, 41.147106>,  <34.450207, 33.870094, 41.312477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087353, 33.901531, 41.147106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269046, 0.647113, 0.713343,
		0.323599, 0.758333, -0.565876,
		-0.907137, 0.078591, -0.413432,
		33.815212, 33.925110, 41.023075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285042, 34.648705, 41.195866>,  <34.450207, 33.870094, 41.312477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285042, 34.648705, 41.195866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930611, 34.463291, 41.195168>,  <33.717953, 34.352043, 41.194748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930611, 34.463291, 41.195168>,  <34.285042, 34.648705, 41.195866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930611, 34.463291, 41.195168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304749, 0.579693, 0.755702,
		-0.349280, 0.670143, -0.654914,
		-0.886076, -0.463536, -0.001750,
		33.664787, 34.324230, 41.194641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735989, 35.164383, 41.258476>,  <34.285042, 34.648705, 41.195866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735989, 35.164383, 41.258476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529175, 34.841503, 41.372391>,  <33.405087, 34.647774, 41.440739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529175, 34.841503, 41.372391>,  <33.735989, 35.164383, 41.258476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529175, 34.841503, 41.372391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560430, 0.570719, 0.600165,
		-0.646988, 0.150701, -0.747460,
		-0.517035, -0.807199, 0.284790,
		33.374065, 34.599342, 41.457829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987000, 35.256092, 41.197460>,  <33.735989, 35.164383, 41.258476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987000, 35.256092, 41.197460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018219, 34.974529, 41.479858>,  <33.036949, 34.805592, 41.649296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018219, 34.974529, 41.479858>,  <32.987000, 35.256092, 41.197460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018219, 34.974529, 41.479858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658139, 0.495536, 0.566830,
		-0.748840, -0.508882, -0.424591,
		0.078049, -0.703905, 0.705993,
		33.041634, 34.763359, 41.691658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404709, 35.385963, 41.691433>,  <32.987000, 35.256092, 41.197460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404709, 35.385963, 41.691433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603607, 35.095940, 41.882027>,  <32.722946, 34.921925, 41.996384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603607, 35.095940, 41.882027>,  <32.404709, 35.385963, 41.691433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603607, 35.095940, 41.882027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438732, 0.263669, 0.859065,
		-0.748507, -0.636214, -0.187000,
		0.497243, -0.725059, 0.476486,
		32.752781, 34.878422, 42.024971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907074, 34.944866, 41.946243>,  <32.404709, 35.385963, 41.691433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907074, 34.944866, 41.946243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249687, 34.916958, 42.150787>,  <32.455254, 34.900211, 42.273514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249687, 34.916958, 42.150787>,  <31.907074, 34.944866, 41.946243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249687, 34.916958, 42.150787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474324, 0.284058, 0.833263,
		-0.203395, -0.956265, 0.210209,
		0.856532, -0.069775, 0.511356,
		32.506645, 34.896027, 42.304195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706291, 34.645355, 42.569481>,  <31.907074, 34.944866, 41.946243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706291, 34.645355, 42.569481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047894, 34.832653, 42.660183>,  <32.252853, 34.945034, 42.714603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047894, 34.832653, 42.660183>,  <31.706291, 34.645355, 42.569481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047894, 34.832653, 42.660183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434292, 0.401617, 0.806285,
		0.286469, -0.787052, 0.546338,
		0.854006, 0.468246, 0.226759,
		32.304096, 34.973125, 42.728210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864862, 34.490299, 43.290043>,  <31.706291, 34.645355, 42.569481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864862, 34.490299, 43.290043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033104, 34.835094, 43.176861>,  <32.134048, 35.041973, 43.108952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033104, 34.835094, 43.176861>,  <31.864862, 34.490299, 43.290043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033104, 34.835094, 43.176861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345939, 0.440699, 0.828317,
		0.838699, -0.250510, 0.483557,
		0.420605, 0.861991, -0.282953,
		32.159286, 35.093693, 43.091976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414608, 34.480740, 43.808456>,  <31.864862, 34.490299, 43.290043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414608, 34.480740, 43.808456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344093, 34.853619, 43.682011>,  <32.301785, 35.077347, 43.606144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344093, 34.853619, 43.682011>,  <32.414608, 34.480740, 43.808456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344093, 34.853619, 43.682011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187405, 0.283484, 0.940487,
		0.966335, 0.225033, 0.124725,
		-0.176283, 0.932200, -0.316113,
		32.291210, 35.133278, 43.587177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809547, 34.993519, 44.197933>,  <32.414608, 34.480740, 43.808456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809547, 34.993519, 44.197933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495152, 35.199337, 44.060841>,  <32.306515, 35.322830, 43.978584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495152, 35.199337, 44.060841>,  <32.809547, 34.993519, 44.197933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495152, 35.199337, 44.060841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081874, 0.462853, 0.882646,
		0.612799, 0.721808, -0.321667,
		-0.785986, 0.514549, -0.342733,
		32.259357, 35.353703, 43.958019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714233, 35.453663, 44.716213>,  <32.809547, 34.993519, 44.197933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714233, 35.453663, 44.716213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403088, 35.533161, 44.477741>,  <32.216400, 35.580860, 44.334660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403088, 35.533161, 44.477741>,  <32.714233, 35.453663, 44.716213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403088, 35.533161, 44.477741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460016, 0.466254, 0.755640,
		0.428154, 0.862036, -0.271254,
		-0.777862, 0.198749, -0.596179,
		32.169727, 35.592785, 44.298889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723152, 36.147541, 44.463554>,  <32.714233, 35.453663, 44.716213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723152, 36.147541, 44.463554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344364, 36.019249, 44.455872>,  <32.117092, 35.942272, 44.451260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344364, 36.019249, 44.455872>,  <32.723152, 36.147541, 44.463554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344364, 36.019249, 44.455872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228095, 0.628938, 0.743243,
		-0.226300, 0.708214, -0.668746,
		-0.946975, -0.320734, -0.019211,
		32.060272, 35.923027, 44.450108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340866, 36.754902, 44.690777>,  <32.723152, 36.147541, 44.463554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340866, 36.754902, 44.690777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093575, 36.443863, 44.736626>,  <31.945200, 36.257240, 44.764133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093575, 36.443863, 44.736626>,  <32.340866, 36.754902, 44.690777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093575, 36.443863, 44.736626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366884, 0.414455, 0.832840,
		-0.695119, 0.472833, -0.541515,
		-0.618228, -0.777596, 0.114621,
		31.908106, 36.210583, 44.771011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604181, 36.998943, 44.736027>,  <32.340866, 36.754902, 44.690777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604181, 36.998943, 44.736027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602604, 36.637356, 44.907059>,  <31.601658, 36.420403, 45.009678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602604, 36.637356, 44.907059>,  <31.604181, 36.998943, 44.736027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602604, 36.637356, 44.907059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431714, 0.387218, 0.814669,
		-0.902002, -0.181379, -0.391784,
		-0.003942, -0.903971, 0.427575,
		31.601421, 36.366165, 45.035332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068428, 37.093880, 45.089310>,  <31.604181, 36.998943, 44.736027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068428, 37.093880, 45.089310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197332, 36.751556, 45.251175>,  <31.274675, 36.546162, 45.348293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197332, 36.751556, 45.251175>,  <31.068428, 37.093880, 45.089310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197332, 36.751556, 45.251175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448640, 0.238341, 0.861345,
		-0.833590, -0.459122, -0.307140,
		0.322258, -0.855804, 0.404660,
		31.294010, 36.494816, 45.372574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428991, 36.715118, 45.354256>,  <31.068428, 37.093880, 45.089310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428991, 36.715118, 45.354256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759312, 36.589554, 45.541664>,  <30.957504, 36.514217, 45.654110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759312, 36.589554, 45.541664>,  <30.428991, 36.715118, 45.354256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759312, 36.589554, 45.541664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397292, 0.265819, 0.878350,
		-0.400263, -0.911484, 0.094800,
		0.825801, -0.313908, 0.468522,
		31.007051, 36.495380, 45.682220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243273, 36.196400, 45.907127>,  <30.428991, 36.715118, 45.354256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243273, 36.196400, 45.907127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595610, 36.362602, 45.997883>,  <30.807011, 36.462322, 46.052338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595610, 36.362602, 45.997883>,  <30.243273, 36.196400, 45.907127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595610, 36.362602, 45.997883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322011, 0.174535, 0.930509,
		0.347028, -0.892690, 0.287534,
		0.880841, 0.415502, 0.226887,
		30.859861, 36.487251, 46.065948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481508, 35.874451, 46.564602>,  <30.243273, 36.196400, 45.907127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481508, 35.874451, 46.564602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685005, 36.216011, 46.520714>,  <30.807104, 36.420948, 46.494381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685005, 36.216011, 46.520714>,  <30.481508, 35.874451, 46.564602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685005, 36.216011, 46.520714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270131, 0.279335, 0.921413,
		0.817442, -0.439123, 0.372774,
		0.508742, 0.853899, -0.109720,
		30.837627, 36.472179, 46.487797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883055, 36.009781, 47.153786>,  <30.481508, 35.874451, 46.564602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883055, 36.009781, 47.153786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865883, 36.385975, 47.018948>,  <30.855579, 36.611691, 46.938046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865883, 36.385975, 47.018948>,  <30.883055, 36.009781, 47.153786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865883, 36.385975, 47.018948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205608, 0.321872, 0.924188,
		0.977692, 0.108984, 0.179554,
		-0.042929, 0.940490, -0.337100,
		30.853004, 36.668121, 46.917816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097811, 36.409157, 47.723557>,  <30.883055, 36.009781, 47.153786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097811, 36.409157, 47.723557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952545, 36.689564, 47.478058>,  <30.865385, 36.857807, 47.330757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952545, 36.689564, 47.478058>,  <31.097811, 36.409157, 47.723557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952545, 36.689564, 47.478058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334842, 0.516514, 0.788095,
		0.869478, 0.491717, 0.047150,
		-0.363166, 0.701019, -0.613745,
		30.843596, 36.899868, 47.293934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351967, 37.103348, 47.800186>,  <31.097811, 36.409157, 47.723557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351967, 37.103348, 47.800186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990179, 37.165344, 47.641235>,  <30.773106, 37.202541, 47.545864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990179, 37.165344, 47.641235>,  <31.351967, 37.103348, 47.800186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990179, 37.165344, 47.641235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212239, 0.644583, 0.734484,
		0.369980, 0.748659, -0.550113,
		-0.904472, 0.154990, -0.397378,
		30.718838, 37.211842, 47.522022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168592, 37.817120, 47.892857>,  <31.351967, 37.103348, 47.800186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168592, 37.817120, 47.892857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824984, 37.631676, 47.806004>,  <30.618818, 37.520409, 47.753891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824984, 37.631676, 47.806004>,  <31.168592, 37.817120, 47.892857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824984, 37.631676, 47.806004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429583, 0.422076, 0.798317,
		-0.278463, 0.779048, -0.561732,
		-0.859021, -0.463612, -0.217133,
		30.567278, 37.492592, 47.740864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649923, 38.244968, 48.116234>,  <31.168592, 37.817120, 47.892857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649923, 38.244968, 48.116234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430651, 37.918049, 48.045223>,  <30.299088, 37.721897, 48.002617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430651, 37.918049, 48.045223>,  <30.649923, 38.244968, 48.116234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430651, 37.918049, 48.045223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606174, 0.242012, 0.757617,
		-0.576239, 0.522922, -0.628094,
		-0.548180, -0.817302, -0.177525,
		30.266197, 37.672859, 47.991966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046864, 38.548149, 48.256226>,  <30.649923, 38.244968, 48.116234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046864, 38.548149, 48.256226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023495, 38.150593, 48.293682>,  <30.009474, 37.912060, 48.316158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023495, 38.150593, 48.293682>,  <30.046864, 38.548149, 48.256226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023495, 38.150593, 48.293682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330155, 0.107762, 0.937756,
		-0.942117, 0.023868, -0.334433,
		-0.058422, -0.993890, 0.093644,
		30.005968, 37.852425, 48.321774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379562, 38.496429, 48.431496>,  <30.046864, 38.548149, 48.256226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379562, 38.496429, 48.431496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606791, 38.190483, 48.553005>,  <29.743128, 38.006916, 48.625912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606791, 38.190483, 48.553005>,  <29.379562, 38.496429, 48.431496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606791, 38.190483, 48.553005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221373, 0.213491, 0.951533,
		-0.792648, -0.607784, -0.048043,
		0.568070, -0.764866, 0.303771,
		29.777212, 37.961021, 48.644135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984739, 38.050381, 48.970039>,  <29.379562, 38.496429, 48.431496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984739, 38.050381, 48.970039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367817, 37.941772, 49.008190>,  <29.597664, 37.876610, 49.031078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367817, 37.941772, 49.008190>,  <28.984739, 38.050381, 48.970039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367817, 37.941772, 49.008190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092251, 0.024270, 0.995440,
		-0.272594, -0.962127, -0.001804,
		0.957696, -0.271518, 0.095373,
		29.655127, 37.860317, 49.036800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926514, 37.615173, 49.473553>,  <28.984739, 38.050381, 48.970039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926514, 37.615173, 49.473553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310429, 37.727444, 49.475845>,  <29.540777, 37.794804, 49.477219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310429, 37.727444, 49.475845>,  <28.926514, 37.615173, 49.473553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310429, 37.727444, 49.475845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062483, 0.193690, 0.979071,
		0.273690, -0.940057, 0.203438,
		0.959786, 0.280673, 0.005727,
		29.598364, 37.811646, 49.477562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094292, 37.405373, 50.061848>,  <28.926514, 37.615173, 49.473553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094292, 37.405373, 50.061848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392681, 37.653141, 49.963997>,  <29.571714, 37.801800, 49.905289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392681, 37.653141, 49.963997>,  <29.094292, 37.405373, 50.061848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392681, 37.653141, 49.963997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143859, 0.208772, 0.967326,
		0.650250, -0.756793, 0.066630,
		0.745975, 0.619418, -0.244625,
		29.616474, 37.838966, 49.890610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602385, 37.103542, 50.385452>,  <29.094292, 37.405373, 50.061848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602385, 37.103542, 50.385452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722618, 37.482731, 50.343510>,  <29.794758, 37.710243, 50.318344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722618, 37.482731, 50.343510>,  <29.602385, 37.103542, 50.385452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722618, 37.482731, 50.343510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064775, 0.089401, 0.993887,
		0.951553, -0.305540, -0.034532,
		0.300585, 0.947973, -0.104861,
		29.812794, 37.767124, 50.312050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053440, 37.264668, 51.006924>,  <29.602385, 37.103542, 50.385452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053440, 37.264668, 51.006924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942123, 37.616882, 50.853451>,  <29.875334, 37.828213, 50.761368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942123, 37.616882, 50.853451>,  <30.053440, 37.264668, 51.006924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942123, 37.616882, 50.853451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004573, 0.400672, 0.916210,
		0.960486, 0.253218, -0.115529,
		-0.278290, 0.880536, -0.383682,
		29.858637, 37.881042, 50.738346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587471, 37.777222, 51.274929>,  <30.053440, 37.264668, 51.006924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587471, 37.777222, 51.274929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234350, 37.934601, 51.172283>,  <30.022476, 38.029030, 51.110695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234350, 37.934601, 51.172283>,  <30.587471, 37.777222, 51.274929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234350, 37.934601, 51.172283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005196, 0.554442, 0.832206,
		0.469712, 0.733342, -0.491508,
		-0.882804, 0.393451, -0.256618,
		29.969509, 38.052635, 51.095299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676275, 38.528717, 51.391220>,  <30.587471, 37.777222, 51.274929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676275, 38.528717, 51.391220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282001, 38.461376, 51.394943>,  <30.045437, 38.420971, 51.397175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282001, 38.461376, 51.394943>,  <30.676275, 38.528717, 51.391220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282001, 38.461376, 51.394943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083195, 0.533607, 0.841631,
		-0.146657, 0.828807, -0.539974,
		-0.985683, -0.168354, 0.009305,
		29.986298, 38.410870, 51.397736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473112, 39.176525, 51.665279>,  <30.676275, 38.528717, 51.391220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473112, 39.176525, 51.665279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161770, 38.933979, 51.730381>,  <29.974964, 38.788452, 51.769444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161770, 38.933979, 51.730381>,  <30.473112, 39.176525, 51.665279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161770, 38.933979, 51.730381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256342, 0.543586, 0.799251,
		-0.573107, 0.580380, -0.578539,
		-0.778355, -0.606360, 0.162757,
		29.928263, 38.752071, 51.779209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887079, 39.532906, 51.586361>,  <30.473112, 39.176525, 51.665279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887079, 39.532906, 51.586361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785664, 39.224583, 51.820141>,  <29.724815, 39.039589, 51.960407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785664, 39.224583, 51.820141>,  <29.887079, 39.532906, 51.586361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785664, 39.224583, 51.820141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283266, 0.636866, 0.717051,
		-0.924921, 0.016244, -0.379812,
		-0.253537, -0.770803, 0.584449,
		29.709602, 38.993343, 51.995476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198376, 39.713432, 51.850948>,  <29.887079, 39.532906, 51.586361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198376, 39.713432, 51.850948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367470, 39.434334, 52.082272>,  <29.468925, 39.266872, 52.221066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367470, 39.434334, 52.082272>,  <29.198376, 39.713432, 51.850948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367470, 39.434334, 52.082272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161488, 0.569923, 0.805673,
		-0.891750, -0.433976, 0.128249,
		0.422735, -0.697748, 0.578310,
		29.494289, 39.225010, 52.255764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797194, 39.325500, 52.380917>,  <29.198376, 39.713432, 51.850948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797194, 39.325500, 52.380917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167255, 39.343384, 52.531693>,  <29.389294, 39.354115, 52.622158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167255, 39.343384, 52.531693>,  <28.797194, 39.325500, 52.380917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167255, 39.343384, 52.531693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319952, 0.626174, 0.711011,
		-0.204245, -0.778400, 0.593613,
		0.925156, 0.044708, 0.376944,
		29.444803, 39.356796, 52.644775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976488, 39.109268, 53.187645>,  <28.797194, 39.325500, 52.380917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976488, 39.109268, 53.187645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206545, 39.408344, 53.054878>,  <29.344578, 39.587791, 52.975216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206545, 39.408344, 53.054878>,  <28.976488, 39.109268, 53.187645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206545, 39.408344, 53.054878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332346, 0.584312, 0.740355,
		0.747503, -0.315495, 0.584554,
		0.575140, 0.747692, -0.331921,
		29.379087, 39.632652, 52.955303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754379, 38.537918, 53.604107>,  <28.976488, 39.109268, 53.187645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754379, 38.537918, 53.604107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976885, 38.378601, 53.895840>,  <29.110388, 38.283009, 54.070881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976885, 38.378601, 53.895840>,  <28.754379, 38.537918, 53.604107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976885, 38.378601, 53.895840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428670, 0.889402, 0.158765,
		-0.711909, 0.224329, 0.665479,
		0.556263, -0.398297, 0.729336,
		29.143764, 38.259113, 54.114639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665098, 38.814316, 54.382561>,  <28.754379, 38.537918, 53.604107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665098, 38.814316, 54.382561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002871, 38.726089, 54.187302>,  <29.205534, 38.673153, 54.070145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002871, 38.726089, 54.187302>,  <28.665098, 38.814316, 54.382561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002871, 38.726089, 54.187302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248502, 0.968600, -0.007773,
		0.474538, -0.114743, 0.872725,
		0.844429, -0.220563, -0.488151,
		29.256199, 38.659920, 54.040855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250225, 39.039017, 54.786282>,  <28.665098, 38.814316, 54.382561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250225, 39.039017, 54.786282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071981, 38.733170, 54.972527>,  <28.965034, 38.549660, 55.084274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071981, 38.733170, 54.972527>,  <29.250225, 39.039017, 54.786282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071981, 38.733170, 54.972527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895210, -0.377450, 0.236918,
		-0.005408, 0.522390, 0.852689,
		-0.445611, -0.764618, 0.465608,
		28.938297, 38.503784, 55.112209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510395, 38.968216, 55.475182>,  <29.250225, 39.039017, 54.786282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510395, 38.968216, 55.475182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392624, 38.613407, 55.332909>,  <29.321960, 38.400524, 55.247547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392624, 38.613407, 55.332909>,  <29.510395, 38.968216, 55.475182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392624, 38.613407, 55.332909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930234, -0.351304, 0.106066,
		-0.219034, -0.299636, 0.928570,
		-0.294429, -0.887019, -0.355679,
		29.304295, 38.347301, 55.226204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639206, 38.450378, 55.941990>,  <29.510395, 38.968216, 55.475182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639206, 38.450378, 55.941990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630127, 38.272671, 55.583748>,  <29.624680, 38.166046, 55.368801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630127, 38.272671, 55.583748>,  <29.639206, 38.450378, 55.941990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630127, 38.272671, 55.583748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925005, -0.349188, 0.149776,
		-0.379275, -0.825041, 0.418876,
		-0.022695, -0.444269, -0.895606,
		29.623318, 38.139389, 55.315067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970959, 37.722172, 56.006992>,  <29.639206, 38.450378, 55.941990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970959, 37.722172, 56.006992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989574, 37.815514, 55.618481>,  <30.000744, 37.871517, 55.385372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989574, 37.815514, 55.618481>,  <29.970959, 37.722172, 56.006992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989574, 37.815514, 55.618481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972374, -0.233239, -0.009442,
		-0.228743, -0.944006, -0.237758,
		0.046541, 0.233350, -0.971278,
		30.003536, 37.885517, 55.327099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226347, 37.226936, 55.549000>,  <29.970959, 37.722172, 56.006992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226347, 37.226936, 55.549000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358730, 37.597576, 55.477585>,  <30.438160, 37.819962, 55.434734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358730, 37.597576, 55.477585>,  <30.226347, 37.226936, 55.549000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358730, 37.597576, 55.477585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919508, -0.274151, 0.281683,
		0.212061, -0.257394, -0.942750,
		0.330960, 0.926601, -0.178539,
		30.458017, 37.875557, 55.424023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541183, 37.401749, 55.286762>,  <30.226347, 37.226936, 55.549000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541183, 37.401749, 55.286762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387486, 37.386517, 54.917786>,  <29.295267, 37.377377, 54.696400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387486, 37.386517, 54.917786>,  <29.541183, 37.401749, 55.286762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387486, 37.386517, 54.917786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838483, -0.432561, -0.331417,
		-0.386394, -0.900800, 0.198137,
		-0.384247, -0.038077, -0.922445,
		29.272211, 37.375095, 54.641052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546200, 36.765068, 55.098484>,  <29.541183, 37.401749, 55.286762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546200, 36.765068, 55.098484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579929, 37.021759, 54.793571>,  <29.600168, 37.175774, 54.610622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579929, 37.021759, 54.793571>,  <29.546200, 36.765068, 55.098484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579929, 37.021759, 54.793571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900369, -0.376802, -0.217612,
		-0.426877, -0.667984, -0.609569,
		0.084326, 0.641730, -0.762280,
		29.605227, 37.214279, 54.564888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704687, 36.346088, 54.610413>,  <29.546200, 36.765068, 55.098484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704687, 36.346088, 54.610413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834595, 36.703911, 54.487583>,  <29.912539, 36.918606, 54.413887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834595, 36.703911, 54.487583>,  <29.704687, 36.346088, 54.610413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834595, 36.703911, 54.487583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876415, -0.406698, -0.257864,
		-0.355559, -0.185376, -0.916086,
		0.324769, 0.894557, -0.307072,
		29.932026, 36.972279, 54.395462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823923, 36.214077, 53.906693>,  <29.704687, 36.346088, 54.610413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823923, 36.214077, 53.906693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996347, 36.570057, 53.966255>,  <30.099802, 36.783646, 54.001991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996347, 36.570057, 53.966255>,  <29.823923, 36.214077, 53.906693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996347, 36.570057, 53.966255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667014, -0.203145, -0.716815,
		-0.607682, 0.408312, -0.681178,
		0.431062, 0.889951, 0.148903,
		30.125666, 36.837044, 54.010925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899519, 36.484333, 53.242344>,  <29.823923, 36.214077, 53.906693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899519, 36.484333, 53.242344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168154, 36.647751, 53.489590>,  <30.329334, 36.745800, 53.637936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168154, 36.647751, 53.489590>,  <29.899519, 36.484333, 53.242344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168154, 36.647751, 53.489590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707923, -0.107612, -0.698044,
		-0.218666, 0.906373, -0.361489,
		0.671588, 0.408544, 0.618111,
		30.369631, 36.770313, 53.675022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367960, 36.893867, 52.848030>,  <29.899519, 36.484333, 53.242344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367960, 36.893867, 52.848030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585339, 36.839706, 53.179413>,  <30.715765, 36.807209, 53.378242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585339, 36.839706, 53.179413>,  <30.367960, 36.893867, 52.848030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585339, 36.839706, 53.179413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804070, -0.199516, -0.560059,
		0.241123, 0.970495, 0.000447,
		0.543445, -0.135402, 0.828453,
		30.748371, 36.799088, 53.427948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049126, 37.330914, 52.755436>,  <30.367960, 36.893867, 52.848030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049126, 37.330914, 52.755436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136497, 37.049934, 53.026390>,  <31.188921, 36.881348, 53.188965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136497, 37.049934, 53.026390>,  <31.049126, 37.330914, 52.755436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136497, 37.049934, 53.026390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765096, -0.307602, -0.565694,
		0.605736, 0.641832, 0.470250,
		0.218430, -0.702447, 0.677389,
		31.202026, 36.839199, 53.229607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766668, 37.452942, 52.980972>,  <31.049126, 37.330914, 52.755436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766668, 37.452942, 52.980972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622978, 37.081501, 53.018173>,  <31.536764, 36.858635, 53.040493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622978, 37.081501, 53.018173>,  <31.766668, 37.452942, 52.980972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622978, 37.081501, 53.018173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794964, -0.356675, -0.490730,
		0.488865, -0.102350, 0.866334,
		-0.359226, -0.928605, 0.093001,
		31.515211, 36.802921, 53.046074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324005, 37.149181, 52.966145>,  <31.766668, 37.452942, 52.980972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324005, 37.149181, 52.966145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052948, 36.867409, 52.881691>,  <31.890314, 36.698345, 52.831020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052948, 36.867409, 52.881691>,  <32.324005, 37.149181, 52.966145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052948, 36.867409, 52.881691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670479, -0.473867, -0.570883,
		0.302101, -0.528414, 0.793419,
		-0.677638, -0.704435, -0.211135,
		31.849657, 36.656078, 52.818352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851383, 36.622635, 52.757477>,  <32.324005, 37.149181, 52.966145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851383, 36.622635, 52.757477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489258, 36.484772, 52.658188>,  <32.271980, 36.402054, 52.598614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489258, 36.484772, 52.658188>,  <32.851383, 36.622635, 52.757477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489258, 36.484772, 52.658188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392783, -0.456951, -0.798071,
		0.161635, -0.820004, 0.549060,
		-0.905315, -0.344658, -0.248224,
		32.217663, 36.381374, 52.583721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930901, 35.848293, 52.720898>,  <32.851383, 36.622635, 52.757477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930901, 35.848293, 52.720898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623638, 35.961517, 52.491180>,  <32.439281, 36.029453, 52.353352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623638, 35.961517, 52.491180>,  <32.930901, 35.848293, 52.720898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623638, 35.961517, 52.491180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368445, -0.538136, -0.758062,
		-0.523623, -0.793906, 0.309081,
		-0.768158, 0.283059, -0.574292,
		32.393192, 36.046436, 52.318893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562584, 35.244579, 52.429790>,  <32.930901, 35.848293, 52.720898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562584, 35.244579, 52.429790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480171, 35.549454, 52.184311>,  <32.430725, 35.732376, 52.037022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480171, 35.549454, 52.184311>,  <32.562584, 35.244579, 52.429790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480171, 35.549454, 52.184311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190554, -0.583900, -0.789145,
		-0.959813, -0.279529, -0.024938,
		-0.206028, 0.762184, -0.613700,
		32.418362, 35.778111, 52.000202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519680, 34.874783, 51.793476>,  <32.562584, 35.244579, 52.429790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519680, 34.874783, 51.793476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531021, 35.256310, 51.673851>,  <32.537827, 35.485226, 51.602077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531021, 35.256310, 51.673851>,  <32.519680, 34.874783, 51.793476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531021, 35.256310, 51.673851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346919, -0.289973, -0.891943,
		-0.937466, -0.078459, -0.339118,
		0.028354, 0.953813, -0.299059,
		32.539528, 35.542454, 51.584133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068417, 34.956181, 51.234295>,  <32.519680, 34.874783, 51.793476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068417, 34.956181, 51.234295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306328, 35.272247, 51.175121>,  <32.449074, 35.461887, 51.139618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306328, 35.272247, 51.175121>,  <32.068417, 34.956181, 51.234295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306328, 35.272247, 51.175121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058927, -0.226385, -0.972254,
		-0.801731, 0.569553, -0.181210,
		0.594773, 0.790164, -0.147938,
		32.484760, 35.509296, 51.130741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797779, 35.239014, 50.643539>,  <32.068417, 34.956181, 51.234295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797779, 35.239014, 50.643539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159027, 35.407379, 50.677494>,  <32.375774, 35.508400, 50.697868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159027, 35.407379, 50.677494>,  <31.797779, 35.239014, 50.643539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159027, 35.407379, 50.677494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168532, -0.165636, -0.971680,
		-0.394937, 0.891848, -0.220528,
		0.903118, 0.420918, 0.084889,
		32.429962, 35.533653, 50.702961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946857, 35.829075, 50.087944>,  <31.797779, 35.239014, 50.643539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946857, 35.829075, 50.087944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298737, 35.666061, 50.185963>,  <32.509865, 35.568253, 50.244774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298737, 35.666061, 50.185963>,  <31.946857, 35.829075, 50.087944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298737, 35.666061, 50.185963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209331, -0.130831, -0.969053,
		0.426981, 0.903770, -0.029782,
		0.879698, -0.407533, 0.245049,
		32.562645, 35.543800, 50.259476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431751, 36.074455, 49.620396>,  <31.946857, 35.829075, 50.087944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431751, 36.074455, 49.620396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644115, 35.774643, 49.778549>,  <32.771534, 35.594753, 49.873444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644115, 35.774643, 49.778549>,  <32.431751, 36.074455, 49.620396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644115, 35.774643, 49.778549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399803, -0.189840, -0.896726,
		0.747186, 0.634161, 0.198877,
		0.530914, -0.749533, 0.395386,
		32.803391, 35.549782, 49.897163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026054, 36.045193, 49.164818>,  <32.431751, 36.074455, 49.620396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026054, 36.045193, 49.164818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011154, 35.685352, 49.338863>,  <33.002213, 35.469448, 49.443291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011154, 35.685352, 49.338863>,  <33.026054, 36.045193, 49.164818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011154, 35.685352, 49.338863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219262, -0.432167, -0.874732,
		0.974954, 0.062817, 0.213349,
		-0.037254, -0.899603, 0.435116,
		32.999977, 35.415470, 49.469398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675419, 35.740738, 48.973057>,  <33.026054, 36.045193, 49.164818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675419, 35.740738, 48.973057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425945, 35.441582, 49.063984>,  <33.276260, 35.262089, 49.118538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425945, 35.441582, 49.063984>,  <33.675419, 35.740738, 48.973057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425945, 35.441582, 49.063984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338275, -0.520405, -0.784059,
		0.704687, -0.412114, 0.577563,
		-0.623688, -0.747891, 0.227315,
		33.238838, 35.217213, 49.132179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023685, 35.056278, 48.833790>,  <33.675419, 35.740738, 48.973057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023685, 35.056278, 48.833790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642838, 34.934662, 48.846596>,  <33.414330, 34.861694, 48.854279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642838, 34.934662, 48.846596>,  <34.023685, 35.056278, 48.833790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642838, 34.934662, 48.846596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206057, -0.715568, -0.667460,
		0.225840, -0.628907, 0.743957,
		-0.952122, -0.304037, 0.032013,
		33.357201, 34.843452, 48.856201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098412, 34.248432, 48.782402>,  <34.023685, 35.056278, 48.833790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098412, 34.248432, 48.782402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710632, 34.300251, 48.699085>,  <33.477966, 34.331341, 48.649094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710632, 34.300251, 48.699085>,  <34.098412, 34.248432, 48.782402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710632, 34.300251, 48.699085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104409, -0.550472, -0.828299,
		-0.221964, -0.824741, 0.520128,
		-0.969449, 0.129547, -0.208295,
		33.419796, 34.339115, 48.636597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780441, 33.609093, 48.630043>,  <34.098412, 34.248432, 48.782402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780441, 33.609093, 48.630043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596275, 33.903400, 48.431385>,  <33.485775, 34.079987, 48.312191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596275, 33.903400, 48.431385>,  <33.780441, 33.609093, 48.630043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596275, 33.903400, 48.431385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077460, -0.524040, -0.848164,
		-0.884318, -0.428977, 0.184282,
		-0.460414, 0.735772, -0.496647,
		33.458153, 34.124130, 48.282391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236057, 33.184120, 48.220932>,  <33.780441, 33.609093, 48.630043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236057, 33.184120, 48.220932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251926, 33.553440, 48.068123>,  <33.261448, 33.775032, 47.976437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251926, 33.553440, 48.068123>,  <33.236057, 33.184120, 48.220932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251926, 33.553440, 48.068123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001097, -0.382282, -0.924045,
		-0.999212, 0.037080, -0.014154,
		0.039675, 0.923302, -0.382021,
		33.263828, 33.830429, 47.953518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798149, 33.037113, 47.690697>,  <33.236057, 33.184120, 48.220932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798149, 33.037113, 47.690697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964767, 33.391594, 47.609566>,  <33.064739, 33.604282, 47.560886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964767, 33.391594, 47.609566>,  <32.798149, 33.037113, 47.690697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964767, 33.391594, 47.609566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051610, -0.245800, -0.967946,
		-0.907648, 0.392727, -0.148124,
		0.416547, 0.886199, -0.202831,
		33.089733, 33.657452, 47.548717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434399, 33.314621, 47.073399>,  <32.798149, 33.037113, 47.690697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434399, 33.314621, 47.073399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781059, 33.513206, 47.053654>,  <32.989056, 33.632359, 47.041805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781059, 33.513206, 47.053654>,  <32.434399, 33.314621, 47.073399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781059, 33.513206, 47.053654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113793, -0.293030, -0.949308,
		-0.485759, 0.817104, -0.310449,
		0.866654, 0.496462, -0.049362,
		33.041054, 33.662144, 47.038845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440353, 33.775635, 46.538746>,  <32.434399, 33.314621, 47.073399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440353, 33.775635, 46.538746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831249, 33.707798, 46.589729>,  <33.065788, 33.667095, 46.620319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831249, 33.707798, 46.589729>,  <32.440353, 33.775635, 46.538746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831249, 33.707798, 46.589729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075408, -0.283884, -0.955889,
		0.198292, 0.943742, -0.264634,
		0.977238, -0.169589, 0.127457,
		33.124420, 33.656921, 46.627968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855225, 34.012409, 45.847775>,  <32.440353, 33.775635, 46.538746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855225, 34.012409, 45.847775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105927, 33.780804, 46.056362>,  <33.256348, 33.641842, 46.181515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105927, 33.780804, 46.056362>,  <32.855225, 34.012409, 45.847775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105927, 33.780804, 46.056362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357376, -0.381092, -0.852673,
		0.692433, 0.720775, -0.031926,
		0.626752, -0.579010, 0.521468,
		33.293953, 33.607101, 46.212803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414276, 33.980309, 45.445847>,  <32.855225, 34.012409, 45.847775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414276, 33.980309, 45.445847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450199, 33.669312, 45.694824>,  <33.471752, 33.482712, 45.844212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450199, 33.669312, 45.694824>,  <33.414276, 33.980309, 45.445847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450199, 33.669312, 45.694824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437552, -0.530629, -0.725935,
		0.894697, 0.337549, 0.292538,
		0.089810, -0.777492, 0.622447,
		33.477142, 33.436066, 45.881557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130962, 33.850407, 45.381413>,  <33.414276, 33.980309, 45.445847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130962, 33.850407, 45.381413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911034, 33.541164, 45.507904>,  <33.779076, 33.355618, 45.583797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911034, 33.541164, 45.507904>,  <34.130962, 33.850407, 45.381413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911034, 33.541164, 45.507904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383640, -0.570025, -0.726561,
		0.741966, -0.278164, 0.610009,
		-0.549824, -0.773108, 0.316225,
		33.746086, 33.309231, 45.602772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637081, 33.286617, 45.308895>,  <34.130962, 33.850407, 45.381413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637081, 33.286617, 45.308895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264164, 33.142040, 45.314354>,  <34.040413, 33.055294, 45.317631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264164, 33.142040, 45.314354>,  <34.637081, 33.286617, 45.308895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264164, 33.142040, 45.314354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270275, -0.721221, -0.637803,
		0.240375, -0.590931, 0.770079,
		-0.932294, -0.361444, 0.013650,
		33.984474, 33.033607, 45.318447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745258, 32.566532, 45.133984>,  <34.637081, 33.286617, 45.308895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745258, 32.566532, 45.133984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350941, 32.613514, 45.085972>,  <34.114349, 32.641701, 45.057163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350941, 32.613514, 45.085972>,  <34.745258, 32.566532, 45.133984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350941, 32.613514, 45.085972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016610, -0.643049, -0.765645,
		-0.167109, -0.756765, 0.631966,
		-0.985798, 0.117449, -0.120029,
		34.055202, 32.648750, 45.049965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593460, 31.944323, 44.880665>,  <34.745258, 32.566532, 45.133984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593460, 31.944323, 44.880665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291317, 32.175152, 44.756462>,  <34.110031, 32.313648, 44.681938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291317, 32.175152, 44.756462>,  <34.593460, 31.944323, 44.880665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291317, 32.175152, 44.756462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019174, -0.454174, -0.890707,
		-0.655029, -0.678758, 0.332000,
		-0.755360, 0.577073, -0.310511,
		34.064709, 32.348274, 44.663307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163803, 31.470566, 44.689560>,  <34.593460, 31.944323, 44.880665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163803, 31.470566, 44.689560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062851, 31.819820, 44.522739>,  <34.002281, 32.029373, 44.422646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062851, 31.819820, 44.522739>,  <34.163803, 31.470566, 44.689560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062851, 31.819820, 44.522739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176891, -0.465375, -0.867257,
		-0.951322, -0.145104, 0.271901,
		-0.252379, 0.873138, -0.417054,
		33.987137, 32.081760, 44.397625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774521, 31.232655, 44.271118>,  <34.163803, 31.470566, 44.689560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774521, 31.232655, 44.271118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850136, 31.595730, 44.121254>,  <33.895504, 31.813576, 44.031338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850136, 31.595730, 44.121254>,  <33.774521, 31.232655, 44.271118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850136, 31.595730, 44.121254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026245, -0.386069, -0.922096,
		-0.981619, 0.164479, -0.096805,
		0.189039, 0.907688, -0.374656,
		33.906849, 31.868036, 44.008858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374969, 31.336189, 43.625965>,  <33.774521, 31.232655, 44.271118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374969, 31.336189, 43.625965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645805, 31.629227, 43.598099>,  <33.808308, 31.805050, 43.581379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645805, 31.629227, 43.598099>,  <33.374969, 31.336189, 43.625965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645805, 31.629227, 43.598099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132086, -0.214120, -0.967836,
		-0.723948, 0.646111, -0.241744,
		0.677091, 0.732594, -0.069670,
		33.848934, 31.849005, 43.577198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134575, 31.735668, 43.086540>,  <33.374969, 31.336189, 43.625965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134575, 31.735668, 43.086540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527382, 31.805737, 43.114693>,  <33.763065, 31.847776, 43.131584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527382, 31.805737, 43.114693>,  <33.134575, 31.735668, 43.086540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527382, 31.805737, 43.114693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095019, -0.136513, -0.986071,
		-0.163122, 0.975028, -0.150702,
		0.982020, 0.175169, 0.070378,
		33.821987, 31.858288, 43.135807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320431, 32.241089, 42.466812>,  <33.134575, 31.735668, 43.086540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320431, 32.241089, 42.466812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646458, 32.052361, 42.601303>,  <33.842075, 31.939123, 42.681995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646458, 32.052361, 42.601303>,  <33.320431, 32.241089, 42.466812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646458, 32.052361, 42.601303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210796, -0.299048, -0.930664,
		0.539654, 0.829430, -0.144287,
		0.815069, -0.471822, 0.336223,
		33.890980, 31.910814, 42.702171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851906, 32.510681, 42.093502>,  <33.320431, 32.241089, 42.466812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851906, 32.510681, 42.093502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976170, 32.155197, 42.228374>,  <34.050728, 31.941908, 42.309296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976170, 32.155197, 42.228374>,  <33.851906, 32.510681, 42.093502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976170, 32.155197, 42.228374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189630, -0.289653, -0.938159,
		0.931412, 0.355391, 0.078541,
		0.310664, -0.888706, 0.337179,
		34.069370, 31.888586, 42.329529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434540, 32.401882, 41.640640>,  <33.851906, 32.510681, 42.093502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434540, 32.401882, 41.640640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377800, 32.046551, 41.815338>,  <34.343758, 31.833351, 41.920158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377800, 32.046551, 41.815338>,  <34.434540, 32.401882, 41.640640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377800, 32.046551, 41.815338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287226, -0.459160, -0.840639,
		0.947302, 0.006204, 0.320282,
		-0.141846, -0.888332, 0.436745,
		34.335247, 31.780050, 41.946362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967079, 32.047081, 41.554150>,  <34.434540, 32.401882, 41.640640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967079, 32.047081, 41.554150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713654, 31.742968, 41.611507>,  <34.561600, 31.560499, 41.645924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713654, 31.742968, 41.611507>,  <34.967079, 32.047081, 41.554150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713654, 31.742968, 41.611507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387844, -0.472469, -0.791423,
		0.669459, -0.445800, 0.594211,
		-0.633562, -0.760286, 0.143398,
		34.523586, 31.514881, 41.654526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316307, 31.380043, 41.630932>,  <34.967079, 32.047081, 41.554150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316307, 31.380043, 41.630932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945721, 31.293734, 41.507584>,  <34.723366, 31.241949, 41.433575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945721, 31.293734, 41.507584>,  <35.316307, 31.380043, 41.630932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945721, 31.293734, 41.507584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374265, -0.441720, -0.815358,
		0.039716, -0.870819, 0.489997,
		-0.926471, -0.215772, -0.308374,
		34.667778, 31.229002, 41.415070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491535, 31.803713, 42.226753>,  <35.316307, 31.380043, 41.630932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491535, 31.803713, 42.226753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706879, 31.485695, 42.114986>,  <35.836086, 31.294884, 42.047924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706879, 31.485695, 42.114986>,  <35.491535, 31.803713, 42.226753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706879, 31.485695, 42.114986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523823, -0.575440, 0.628074,
		-0.660136, -0.191762, -0.726256,
		0.538358, -0.795044, -0.279419,
		35.868385, 31.247181, 42.031162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789921, 31.624371, 42.863823>,  <35.491535, 31.803713, 42.226753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789921, 31.624371, 42.863823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037689, 31.887371, 42.692238>,  <36.186348, 32.045174, 42.589287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037689, 31.887371, 42.692238>,  <35.789921, 31.624371, 42.863823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037689, 31.887371, 42.692238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455871, 0.143607, 0.878384,
		0.639143, -0.739639, -0.210784,
		0.619418, 0.657503, -0.428965,
		36.223515, 32.084621, 42.563549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534176, 31.444986, 43.147484>,  <35.789921, 31.624371, 42.863823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534176, 31.444986, 43.147484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479427, 31.828386, 43.047447>,  <36.446579, 32.058426, 42.987427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479427, 31.828386, 43.047447>,  <36.534176, 31.444986, 43.147484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479427, 31.828386, 43.047447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351682, 0.283041, 0.892305,
		0.926059, 0.034178, -0.375827,
		-0.136872, 0.958499, -0.250092,
		36.438366, 32.115936, 42.972420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155819, 31.669863, 43.182320>,  <36.534176, 31.444986, 43.147484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155819, 31.669863, 43.182320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902836, 31.978168, 43.213104>,  <36.751045, 32.163151, 43.231575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902836, 31.978168, 43.213104>,  <37.155819, 31.669863, 43.182320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902836, 31.978168, 43.213104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386910, 0.228274, 0.893416,
		0.671044, 0.594824, -0.442589,
		-0.632457, 0.770763, 0.076961,
		36.713100, 32.209396, 43.236191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611435, 32.161541, 43.390987>,  <37.155819, 31.669863, 43.182320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611435, 32.161541, 43.390987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240067, 32.265785, 43.496910>,  <37.017246, 32.328331, 43.560463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240067, 32.265785, 43.496910>,  <37.611435, 32.161541, 43.390987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240067, 32.265785, 43.496910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333758, 0.271892, 0.902596,
		0.163226, 0.926368, -0.339410,
		-0.928420, 0.260608, 0.264803,
		36.961540, 32.343967, 43.576351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673248, 32.779041, 43.718128>,  <37.611435, 32.161541, 43.390987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673248, 32.779041, 43.718128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304337, 32.665401, 43.822956>,  <37.082989, 32.597218, 43.885853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304337, 32.665401, 43.822956>,  <37.673248, 32.779041, 43.718128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304337, 32.665401, 43.822956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131388, 0.407218, 0.903831,
		-0.363496, 0.868022, -0.338243,
		-0.922284, -0.284098, 0.262070,
		37.027653, 32.580173, 43.901577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255352, 33.400295, 44.122860>,  <37.673248, 32.779041, 43.718128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255352, 33.400295, 44.122860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067104, 33.060509, 44.218288>,  <36.954155, 32.856636, 44.275547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067104, 33.060509, 44.218288>,  <37.255352, 33.400295, 44.122860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067104, 33.060509, 44.218288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175775, 0.174708, 0.968804,
		-0.864648, 0.497878, 0.067093,
		-0.470624, -0.849468, 0.238575,
		36.925919, 32.805668, 44.289860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799534, 33.610744, 44.657379>,  <37.255352, 33.400295, 44.122860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799534, 33.610744, 44.657379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869038, 33.218884, 44.697552>,  <36.910740, 32.983765, 44.721653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869038, 33.218884, 44.697552>,  <36.799534, 33.610744, 44.657379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869038, 33.218884, 44.697552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025339, 0.106393, 0.994001,
		-0.984462, -0.170170, 0.043310,
		0.173757, -0.979654, 0.100428,
		36.921165, 32.924988, 44.727680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303387, 33.512955, 45.150681>,  <36.799534, 33.610744, 44.657379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303387, 33.512955, 45.150681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591812, 33.236889, 45.126209>,  <36.764866, 33.071251, 45.111526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591812, 33.236889, 45.126209>,  <36.303387, 33.512955, 45.150681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591812, 33.236889, 45.126209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043533, -0.042997, 0.998126,
		-0.691502, -0.722373, -0.000958,
		0.721061, -0.690165, -0.061179,
		36.808132, 33.029839, 45.107857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080139, 33.159351, 45.719929>,  <36.303387, 33.512955, 45.150681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080139, 33.159351, 45.719929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456894, 33.044315, 45.650475>,  <36.682945, 32.975296, 45.608803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456894, 33.044315, 45.650475>,  <36.080139, 33.159351, 45.719929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456894, 33.044315, 45.650475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195817, 0.050031, 0.979364,
		-0.272964, -0.956447, 0.103437,
		0.941884, -0.287586, -0.173632,
		36.739460, 32.958038, 45.598385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157963, 32.577583, 46.184608>,  <36.080139, 33.159351, 45.719929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157963, 32.577583, 46.184608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507454, 32.746933, 46.088814>,  <36.717148, 32.848541, 46.031338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507454, 32.746933, 46.088814>,  <36.157963, 32.577583, 46.184608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507454, 32.746933, 46.088814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265190, -0.001868, 0.964194,
		0.407768, -0.905953, -0.113907,
		0.873728, 0.423374, -0.239488,
		36.769573, 32.873943, 46.016968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642185, 32.367107, 46.765854>,  <36.157963, 32.577583, 46.184608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642185, 32.367107, 46.765854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844559, 32.669197, 46.599159>,  <36.965981, 32.850452, 46.499142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844559, 32.669197, 46.599159>,  <36.642185, 32.367107, 46.765854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844559, 32.669197, 46.599159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171592, 0.385352, 0.906675,
		0.845335, -0.530221, 0.065370,
		0.505929, 0.755228, -0.416733,
		36.996338, 32.895767, 46.474140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280743, 32.451794, 47.083637>,  <36.642185, 32.367107, 46.765854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280743, 32.451794, 47.083637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186413, 32.803387, 46.917854>,  <37.129814, 33.014343, 46.818382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186413, 32.803387, 46.917854>,  <37.280743, 32.451794, 47.083637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186413, 32.803387, 46.917854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249368, 0.466942, 0.848399,
		0.939256, 0.096721, -0.329307,
		-0.235825, 0.878983, -0.414459,
		37.115665, 33.067081, 46.793518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636379, 32.868946, 47.495213>,  <37.280743, 32.451794, 47.083637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636379, 32.868946, 47.495213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395500, 33.132954, 47.315548>,  <37.250973, 33.291359, 47.207748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395500, 33.132954, 47.315548>,  <37.636379, 32.868946, 47.495213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395500, 33.132954, 47.315548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081905, 0.508564, 0.857120,
		0.794138, 0.552940, -0.252196,
		-0.602194, 0.660015, -0.449158,
		37.214844, 33.330959, 47.180801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914776, 33.566174, 47.617683>,  <37.636379, 32.868946, 47.495213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914776, 33.566174, 47.617683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520348, 33.598080, 47.559315>,  <37.283691, 33.617222, 47.524292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520348, 33.598080, 47.559315>,  <37.914776, 33.566174, 47.617683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520348, 33.598080, 47.559315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089569, 0.484571, 0.870154,
		0.140117, 0.871107, -0.470679,
		-0.986075, 0.079765, -0.145921,
		37.224525, 33.622009, 47.515537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724567, 34.279835, 47.821503>,  <37.914776, 33.566174, 47.617683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724567, 34.279835, 47.821503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376808, 34.082859, 47.805256>,  <37.168152, 33.964676, 47.795506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376808, 34.082859, 47.805256>,  <37.724567, 34.279835, 47.821503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376808, 34.082859, 47.805256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349904, 0.555538, 0.754284,
		-0.348869, 0.669989, -0.655291,
		-0.869401, -0.492435, -0.040621,
		37.115990, 33.935127, 47.793068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262417, 34.734234, 48.084286>,  <37.724567, 34.279835, 47.821503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262417, 34.734234, 48.084286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020050, 34.416042, 48.087555>,  <36.874630, 34.225128, 48.089516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020050, 34.416042, 48.087555>,  <37.262417, 34.734234, 48.084286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020050, 34.416042, 48.087555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478079, 0.372330, 0.795494,
		-0.635846, 0.478097, -0.605906,
		-0.605920, -0.795483, 0.008176,
		36.838272, 34.177399, 48.090008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499645, 34.979382, 48.066784>,  <37.262417, 34.734234, 48.084286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499645, 34.979382, 48.066784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528519, 34.616974, 48.233601>,  <36.545845, 34.399529, 48.333691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528519, 34.616974, 48.233601>,  <36.499645, 34.979382, 48.066784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528519, 34.616974, 48.233601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617847, 0.287624, 0.731805,
		-0.782978, -0.310495, -0.539016,
		0.072188, -0.906016, 0.417041,
		36.550175, 34.345169, 48.358711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847126, 34.848751, 48.286003>,  <36.499645, 34.979382, 48.066784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847126, 34.848751, 48.286003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092991, 34.612247, 48.494846>,  <36.240509, 34.470345, 48.620152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092991, 34.612247, 48.494846>,  <35.847126, 34.848751, 48.286003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092991, 34.612247, 48.494846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511844, 0.204663, 0.834343,
		-0.600172, -0.780079, -0.176835,
		0.614662, -0.591261, 0.522112,
		36.277390, 34.434868, 48.651482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394665, 34.637329, 48.835327>,  <35.847126, 34.848751, 48.286003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394665, 34.637329, 48.835327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751759, 34.516182, 48.968765>,  <35.966015, 34.443493, 49.048828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751759, 34.516182, 48.968765>,  <35.394665, 34.637329, 48.835327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751759, 34.516182, 48.968765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328292, 0.069888, 0.941988,
		-0.308613, -0.950467, -0.037038,
		0.892739, -0.302869, 0.333599,
		36.019581, 34.425320, 49.068844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197815, 34.087452, 49.293606>,  <35.394665, 34.637329, 48.835327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197815, 34.087452, 49.293606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557865, 34.221172, 49.405334>,  <35.773895, 34.301403, 49.472370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557865, 34.221172, 49.405334>,  <35.197815, 34.087452, 49.293606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557865, 34.221172, 49.405334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374090, 0.264605, 0.888843,
		0.223219, -0.904564, 0.363232,
		0.900128, 0.334288, 0.279323,
		35.827904, 34.321461, 49.489132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321609, 33.863773, 50.001183>,  <35.197815, 34.087452, 49.293606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321609, 33.863773, 50.001183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577610, 34.161995, 49.926826>,  <35.731209, 34.340927, 49.882214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577610, 34.161995, 49.926826>,  <35.321609, 33.863773, 50.001183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577610, 34.161995, 49.926826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272559, 0.446471, 0.852277,
		0.718412, -0.494789, 0.488947,
		0.639997, 0.745552, -0.185891,
		35.769608, 34.385662, 49.871059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596973, 34.053158, 50.620285>,  <35.321609, 33.863773, 50.001183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596973, 34.053158, 50.620285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690136, 34.366619, 50.389935>,  <35.746033, 34.554695, 50.251724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690136, 34.366619, 50.389935>,  <35.596973, 34.053158, 50.620285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690136, 34.366619, 50.389935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358711, 0.619634, 0.698126,
		0.903926, 0.043977, 0.425422,
		0.232904, 0.783658, -0.575878,
		35.760006, 34.601715, 50.217171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840084, 34.585354, 51.040058>,  <35.596973, 34.053158, 50.620285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840084, 34.585354, 51.040058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730591, 34.794788, 50.717339>,  <35.664894, 34.920448, 50.523708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730591, 34.794788, 50.717339>,  <35.840084, 34.585354, 51.040058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730591, 34.794788, 50.717339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272080, 0.762421, 0.587100,
		0.922520, 0.380222, -0.066240,
		-0.273731, 0.523589, -0.806799,
		35.648472, 34.951866, 50.475300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053501, 35.268944, 51.209469>,  <35.840084, 34.585354, 51.040058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053501, 35.268944, 51.209469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780285, 35.316990, 50.921295>,  <35.616356, 35.345818, 50.748390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780285, 35.316990, 50.921295>,  <36.053501, 35.268944, 51.209469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780285, 35.316990, 50.921295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288376, 0.861889, 0.417117,
		0.671036, 0.492664, -0.554069,
		-0.683045, 0.120120, -0.720431,
		35.575371, 35.353027, 50.705166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095425, 35.845787, 50.815605>,  <36.053501, 35.268944, 51.209469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095425, 35.845787, 50.815605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706314, 35.781319, 50.749001>,  <35.472847, 35.742638, 50.709038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706314, 35.781319, 50.749001>,  <36.095425, 35.845787, 50.815605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706314, 35.781319, 50.749001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215358, 0.894093, 0.392708,
		0.085584, 0.417878, -0.904463,
		-0.972778, -0.161173, -0.166513,
		35.414482, 35.732967, 50.699047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883644, 36.528267, 50.726593>,  <36.095425, 35.845787, 50.815605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883644, 36.528267, 50.726593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561485, 36.304668, 50.805454>,  <35.368191, 36.170509, 50.852772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561485, 36.304668, 50.805454>,  <35.883644, 36.528267, 50.726593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561485, 36.304668, 50.805454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383035, 0.744659, 0.546596,
		-0.452358, 0.364706, -0.813856,
		-0.805392, -0.558992, 0.197157,
		35.319866, 36.136971, 50.864601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197941, 36.814198, 50.365353>,  <35.883644, 36.528267, 50.726593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197941, 36.814198, 50.365353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121231, 36.615807, 50.704109>,  <35.075203, 36.496773, 50.907364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121231, 36.615807, 50.704109>,  <35.197941, 36.814198, 50.365353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121231, 36.615807, 50.704109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394055, 0.829212, 0.396392,
		-0.898855, -0.257702, -0.354469,
		-0.191779, -0.495980, 0.846891,
		35.063698, 36.467014, 50.958176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530167, 37.059593, 50.596497>,  <35.197941, 36.814198, 50.365353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530167, 37.059593, 50.596497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625771, 36.896404, 50.948959>,  <34.683132, 36.798492, 51.160435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625771, 36.896404, 50.948959>,  <34.530167, 37.059593, 50.596497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625771, 36.896404, 50.948959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520861, 0.711989, 0.470930,
		-0.819498, -0.571517, -0.042323,
		0.239011, -0.407971, 0.881154,
		34.697475, 36.774014, 51.213306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840633, 37.001255, 51.046356>,  <34.530167, 37.059593, 50.596497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840633, 37.001255, 51.046356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125927, 36.960007, 51.323677>,  <34.297104, 36.935257, 51.490070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125927, 36.960007, 51.323677>,  <33.840633, 37.001255, 51.046356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125927, 36.960007, 51.323677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421027, 0.727766, 0.541381,
		-0.560387, -0.678029, 0.475651,
		0.713234, -0.103121, 0.693299,
		34.339897, 36.929070, 51.531666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492252, 36.940388, 51.737896>,  <33.840633, 37.001255, 51.046356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492252, 36.940388, 51.737896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866611, 37.027775, 51.848434>,  <34.091228, 37.080208, 51.914757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866611, 37.027775, 51.848434>,  <33.492252, 36.940388, 51.737896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866611, 37.027775, 51.848434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347544, 0.700734, 0.623045,
		-0.057531, -0.679150, 0.731742,
		0.935897, 0.218468, 0.276348,
		34.147381, 37.093315, 51.931339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515583, 36.823223, 52.471519>,  <33.492252, 36.940388, 51.737896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515583, 36.823223, 52.471519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796600, 37.086941, 52.364372>,  <33.965210, 37.245171, 52.300083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796600, 37.086941, 52.364372>,  <33.515583, 36.823223, 52.471519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796600, 37.086941, 52.364372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299263, 0.615225, 0.729342,
		0.645656, -0.432231, 0.629527,
		0.702545, 0.659299, -0.267873,
		34.007366, 37.284729, 52.284012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597984, 37.062580, 53.070328>,  <33.515583, 36.823223, 52.471519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597984, 37.062580, 53.070328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775814, 37.338074, 52.841244>,  <33.882511, 37.503368, 52.703793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775814, 37.338074, 52.841244>,  <33.597984, 37.062580, 53.070328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775814, 37.338074, 52.841244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179731, 0.694959, 0.696225,
		0.877525, -0.206589, 0.432747,
		0.444574, 0.688733, -0.572714,
		33.909187, 37.544693, 52.669430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258625, 37.393822, 53.416759>,  <33.597984, 37.062580, 53.070328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258625, 37.393822, 53.416759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102844, 37.657158, 53.159103>,  <34.009377, 37.815159, 53.004509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102844, 37.657158, 53.159103>,  <34.258625, 37.393822, 53.416759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102844, 37.657158, 53.159103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184597, 0.629372, 0.754861,
		0.902357, 0.412891, -0.123584,
		-0.389455, 0.658341, -0.644136,
		33.986008, 37.854660, 52.965862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410263, 37.970280, 53.752831>,  <34.258625, 37.393822, 53.416759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410263, 37.970280, 53.752831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182034, 38.113842, 53.457363>,  <34.045094, 38.199978, 53.280083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182034, 38.113842, 53.457363>,  <34.410263, 37.970280, 53.752831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182034, 38.113842, 53.457363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213428, 0.803742, 0.555380,
		0.793025, 0.474540, -0.381998,
		-0.570578, 0.358901, -0.738668,
		34.010860, 38.221512, 53.235764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543560, 38.628223, 53.611633>,  <34.410263, 37.970280, 53.752831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543560, 38.628223, 53.611633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185875, 38.621983, 53.432686>,  <33.971264, 38.618237, 53.325317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185875, 38.621983, 53.432686>,  <34.543560, 38.628223, 53.611633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185875, 38.621983, 53.432686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250874, 0.845163, 0.471976,
		0.370738, 0.534280, -0.759670,
		-0.894213, -0.015602, -0.447371,
		33.917610, 38.617302, 53.298473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310596, 39.386517, 53.414284>,  <34.543560, 38.628223, 53.611633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310596, 39.386517, 53.414284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972610, 39.173088, 53.428844>,  <33.769817, 39.045029, 53.437580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972610, 39.173088, 53.428844>,  <34.310596, 39.386517, 53.414284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972610, 39.173088, 53.428844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491726, 0.801856, 0.339460,
		-0.210318, 0.268932, -0.939916,
		-0.844969, -0.533576, 0.036404,
		33.719120, 39.013016, 53.439766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777462, 39.882511, 53.143158>,  <34.310596, 39.386517, 53.414284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777462, 39.882511, 53.143158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632298, 39.595028, 53.380394>,  <33.545197, 39.422539, 53.522736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632298, 39.595028, 53.380394>,  <33.777462, 39.882511, 53.143158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632298, 39.595028, 53.380394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599419, 0.667375, 0.441937,
		-0.713436, -0.195125, -0.673004,
		-0.362913, -0.718705, 0.593091,
		33.523422, 39.379417, 53.558323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641731, 40.685150, 52.854259>,  <33.777462, 39.882511, 53.143158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641731, 40.685150, 52.854259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671101, 40.944580, 52.551220>,  <33.688725, 41.100239, 52.369396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671101, 40.944580, 52.551220>,  <33.641731, 40.685150, 52.854259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671101, 40.944580, 52.551220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512742, -0.676113, -0.529119,
		-0.855397, -0.349602, -0.382196,
		0.073427, 0.648575, -0.757601,
		33.693130, 41.139153, 52.323940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268318, 40.407478, 52.355598>,  <33.641731, 40.685150, 52.854259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268318, 40.407478, 52.355598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507458, 40.669201, 52.170361>,  <33.650940, 40.826237, 52.059219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507458, 40.669201, 52.170361>,  <33.268318, 40.407478, 52.355598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507458, 40.669201, 52.170361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267797, -0.707537, -0.653969,
		-0.755553, 0.266961, -0.598224,
		0.597850, 0.654311, -0.463090,
		33.686813, 40.865494, 52.031433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033051, 40.389469, 51.543064>,  <33.268318, 40.407478, 52.355598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033051, 40.389469, 51.543064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410278, 40.516472, 51.582695>,  <33.636616, 40.592674, 51.606472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410278, 40.516472, 51.582695>,  <33.033051, 40.389469, 51.543064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410278, 40.516472, 51.582695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279515, -0.595102, -0.753475,
		-0.180275, 0.738269, -0.649969,
		0.943065, 0.317509, 0.099075,
		33.693199, 40.611725, 51.612419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327991, 40.537945, 50.883110>,  <33.033051, 40.389469, 51.543064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327991, 40.537945, 50.883110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661846, 40.510708, 51.101742>,  <33.862160, 40.494366, 51.232922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661846, 40.510708, 51.101742>,  <33.327991, 40.537945, 50.883110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661846, 40.510708, 51.101742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386450, -0.634697, -0.669191,
		0.392477, 0.769756, -0.503426,
		0.834636, -0.068093, 0.546576,
		33.912235, 40.490280, 51.265717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852272, 40.413780, 50.394684>,  <33.327991, 40.537945, 50.883110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852272, 40.413780, 50.394684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037121, 40.321342, 50.737152>,  <34.148029, 40.265881, 50.942635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037121, 40.321342, 50.737152>,  <33.852272, 40.413780, 50.394684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037121, 40.321342, 50.737152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575790, -0.656083, -0.487874,
		0.674468, 0.718435, -0.170129,
		0.462125, -0.231097, 0.856175,
		34.175758, 40.252014, 50.994003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592228, 40.480919, 50.182808>,  <33.852272, 40.413780, 50.394684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592228, 40.480919, 50.182808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543423, 40.247528, 50.503971>,  <34.514141, 40.107494, 50.696671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543423, 40.247528, 50.503971>,  <34.592228, 40.480919, 50.182808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543423, 40.247528, 50.503971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572073, -0.702408, -0.423504,
		0.811076, 0.407652, 0.419494,
		-0.122014, -0.583476, 0.802913,
		34.506817, 40.072487, 50.744846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285740, 40.343243, 50.353180>,  <34.592228, 40.480919, 50.182808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285740, 40.343243, 50.353180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028149, 40.065674, 50.482033>,  <34.873592, 39.899132, 50.559345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028149, 40.065674, 50.482033>,  <35.285740, 40.343243, 50.353180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028149, 40.065674, 50.482033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491763, -0.698012, -0.520528,
		0.586053, -0.176799, 0.790749,
		-0.643981, -0.693918, 0.322129,
		34.834953, 39.857498, 50.578671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733418, 39.758884, 50.609722>,  <35.285740, 40.343243, 50.353180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733418, 39.758884, 50.609722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368690, 39.612396, 50.535461>,  <35.149853, 39.524506, 50.490906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368690, 39.612396, 50.535461>,  <35.733418, 39.758884, 50.609722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368690, 39.612396, 50.535461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407850, -0.755748, -0.512351,
		0.047326, -0.542891, 0.838469,
		-0.911822, -0.366217, -0.185651,
		35.095142, 39.502533, 50.479767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880001, 39.093090, 50.415619>,  <35.733418, 39.758884, 50.609722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880001, 39.093090, 50.415619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494534, 39.142822, 50.321064>,  <35.263252, 39.172661, 50.264332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494534, 39.142822, 50.321064>,  <35.880001, 39.093090, 50.415619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494534, 39.142822, 50.321064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095557, -0.665976, -0.739828,
		-0.249416, -0.735539, 0.629900,
		-0.963670, 0.124334, -0.236391,
		35.205433, 39.180122, 50.250145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513828, 38.413898, 50.351295>,  <35.880001, 39.093090, 50.415619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513828, 38.413898, 50.351295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315979, 38.676441, 50.123421>,  <35.197269, 38.833969, 49.986698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315979, 38.676441, 50.123421>,  <35.513828, 38.413898, 50.351295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315979, 38.676441, 50.123421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035651, -0.670252, -0.741276,
		-0.868377, -0.346341, 0.354921,
		-0.494621, 0.656361, -0.569684,
		35.167591, 38.873348, 49.952515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080902, 37.994911, 50.011448>,  <35.513828, 38.413898, 50.351295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080902, 37.994911, 50.011448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051598, 38.324936, 49.787338>,  <35.034016, 38.522949, 49.652870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051598, 38.324936, 49.787338>,  <35.080902, 37.994911, 50.011448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051598, 38.324936, 49.787338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052573, -0.557812, -0.828301,
		-0.995926, -0.090140, -0.002508,
		-0.073265, 0.825058, -0.560278,
		35.029617, 38.572453, 49.619255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552807, 37.884708, 49.471092>,  <35.080902, 37.994911, 50.011448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552807, 37.884708, 49.471092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794594, 38.171375, 49.331944>,  <34.939667, 38.343376, 49.248455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794594, 38.171375, 49.331944>,  <34.552807, 37.884708, 49.471092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794594, 38.171375, 49.331944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087855, -0.493979, -0.865024,
		-0.791773, 0.492314, -0.361555,
		0.604464, 0.716667, -0.347867,
		34.975933, 38.386375, 49.227585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308674, 38.058804, 48.811531>,  <34.552807, 37.884708, 49.471092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308674, 38.058804, 48.811531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685570, 38.192780, 48.810619>,  <34.911705, 38.273167, 48.810074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685570, 38.192780, 48.810619>,  <34.308674, 38.058804, 48.811531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685570, 38.192780, 48.810619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131632, -0.376537, -0.917002,
		-0.307997, 0.863734, -0.398876,
		0.942237, 0.334939, -0.002277,
		34.968243, 38.293262, 48.809937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319710, 38.176884, 48.046185>,  <34.308674, 38.058804, 48.811531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319710, 38.176884, 48.046185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689575, 38.173588, 48.198460>,  <34.911495, 38.171612, 48.289825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689575, 38.173588, 48.198460>,  <34.319710, 38.176884, 48.046185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689575, 38.173588, 48.198460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319503, -0.527105, -0.787450,
		0.207153, 0.849760, -0.484763,
		0.924665, -0.008239, 0.380692,
		34.966976, 38.171116, 48.312668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844772, 38.374004, 47.570229>,  <34.319710, 38.176884, 48.046185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844772, 38.374004, 47.570229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039433, 38.140881, 47.830540>,  <35.156227, 38.001007, 47.986725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039433, 38.140881, 47.830540>,  <34.844772, 38.374004, 47.570229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039433, 38.140881, 47.830540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425328, -0.492618, -0.759226,
		0.763064, 0.646271, 0.008151,
		0.486650, -0.582805, 0.650776,
		35.185429, 37.966038, 48.025772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261295, 37.928196, 47.017017>,  <34.844772, 38.374004, 47.570229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261295, 37.928196, 47.017017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358269, 37.809574, 47.386509>,  <35.416451, 37.738400, 47.608204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358269, 37.809574, 47.386509>,  <35.261295, 37.928196, 47.017017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358269, 37.809574, 47.386509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530713, -0.756507, -0.382154,
		0.812140, 0.582883, -0.026015,
		0.242432, -0.296556, 0.923732,
		35.431000, 37.720608, 47.663628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893635, 37.753849, 46.915993>,  <35.261295, 37.928196, 47.017017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893635, 37.753849, 46.915993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725563, 37.564766, 47.225830>,  <35.624718, 37.451317, 47.411732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725563, 37.564766, 47.225830>,  <35.893635, 37.753849, 46.915993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725563, 37.564766, 47.225830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337392, -0.873791, -0.350222,
		0.842385, 0.114184, 0.526639,
		-0.420183, -0.472706, 0.774594,
		35.599506, 37.422955, 47.458210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407799, 37.340706, 47.231968>,  <35.893635, 37.753849, 46.915993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407799, 37.340706, 47.231968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062130, 37.168175, 47.335625>,  <35.854729, 37.064655, 47.397820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062130, 37.168175, 47.335625>,  <36.407799, 37.340706, 47.231968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062130, 37.168175, 47.335625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274515, -0.835730, -0.475603,
		0.421715, -0.339866, 0.840623,
		-0.864175, -0.431332, 0.259142,
		35.802879, 37.038776, 47.413368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526604, 36.612339, 47.592304>,  <36.407799, 37.340706, 47.231968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526604, 36.612339, 47.592304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153111, 36.609905, 47.449135>,  <35.929016, 36.608444, 47.363232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153111, 36.609905, 47.449135>,  <36.526604, 36.612339, 47.592304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153111, 36.609905, 47.449135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248538, -0.730606, -0.635959,
		-0.257633, -0.682772, 0.683702,
		-0.933732, -0.006082, -0.357922,
		35.872990, 36.608082, 47.341759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396778, 35.931599, 47.647438>,  <36.526604, 36.612339, 47.592304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396778, 35.931599, 47.647438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136589, 36.058571, 47.371433>,  <35.980476, 36.134754, 47.205830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136589, 36.058571, 47.371433>,  <36.396778, 35.931599, 47.647438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136589, 36.058571, 47.371433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312490, -0.716174, -0.624055,
		-0.692259, -0.621558, 0.366664,
		-0.650482, 0.317429, -0.690009,
		35.941444, 36.153801, 47.164429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222569, 35.302757, 47.317627>,  <36.396778, 35.931599, 47.647438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222569, 35.302757, 47.317627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082790, 35.594913, 47.082882>,  <35.998924, 35.770206, 46.942036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082790, 35.594913, 47.082882>,  <36.222569, 35.302757, 47.317627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082790, 35.594913, 47.082882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216849, -0.546302, -0.809030,
		-0.911519, -0.409971, 0.032516,
		-0.349443, 0.730395, -0.586867,
		35.977959, 35.814034, 46.906822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783466, 35.033215, 46.757526>,  <36.222569, 35.302757, 47.317627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783466, 35.033215, 46.757526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909721, 35.379711, 46.602608>,  <35.985474, 35.587608, 46.509655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909721, 35.379711, 46.602608>,  <35.783466, 35.033215, 46.757526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909721, 35.379711, 46.602608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305293, -0.479171, -0.822917,
		-0.898425, 0.141505, -0.415702,
		0.315639, 0.866240, -0.387298,
		36.004414, 35.639584, 46.486420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725254, 34.927677, 46.080910>,  <35.783466, 35.033215, 46.757526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725254, 34.927677, 46.080910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952518, 35.256790, 46.086922>,  <36.088879, 35.454258, 46.090527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952518, 35.256790, 46.086922>,  <35.725254, 34.927677, 46.080910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952518, 35.256790, 46.086922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437300, -0.286405, -0.852491,
		-0.697108, 0.490924, -0.522526,
		0.568162, 0.822779, 0.015026,
		36.122967, 35.503624, 46.091431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772594, 35.080059, 45.416134>,  <35.725254, 34.927677, 46.080910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772594, 35.080059, 45.416134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063736, 35.309052, 45.567123>,  <36.238422, 35.446449, 45.657719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063736, 35.309052, 45.567123>,  <35.772594, 35.080059, 45.416134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063736, 35.309052, 45.567123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566764, -0.192360, -0.801109,
		-0.386012, 0.797030, -0.464475,
		0.727855, 0.572486, 0.377475,
		36.282093, 35.480797, 45.680367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029320, 35.495247, 44.852871>,  <35.772594, 35.080059, 45.416134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029320, 35.495247, 44.852871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324928, 35.470798, 45.121235>,  <36.502293, 35.456131, 45.282253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324928, 35.470798, 45.121235>,  <36.029320, 35.495247, 44.852871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324928, 35.470798, 45.121235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671945, -0.004640, -0.740586,
		0.048376, 0.998120, 0.037639,
		0.739019, -0.061118, 0.670906,
		36.546635, 35.452461, 45.322506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532871, 35.863964, 44.611732>,  <36.029320, 35.495247, 44.852871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532871, 35.863964, 44.611732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744076, 35.635887, 44.863476>,  <36.870796, 35.499043, 45.014523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744076, 35.635887, 44.863476>,  <36.532871, 35.863964, 44.611732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744076, 35.635887, 44.863476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775433, 0.021523, -0.631063,
		0.346281, 0.821230, 0.453510,
		0.528009, -0.570192, 0.629356,
		36.902477, 35.464828, 45.052284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119289, 36.247604, 44.708851>,  <36.532871, 35.863964, 44.611732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119289, 36.247604, 44.708851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205418, 35.870747, 44.811623>,  <37.257095, 35.644634, 44.873283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205418, 35.870747, 44.811623>,  <37.119289, 36.247604, 44.708851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205418, 35.870747, 44.811623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750319, -0.008784, -0.661017,
		0.625028, 0.335105, 0.705014,
		0.215317, -0.942140, 0.256926,
		37.270012, 35.588104, 44.888699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810646, 36.263275, 45.025555>,  <37.119289, 36.247604, 44.708851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810646, 36.263275, 45.025555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724346, 35.896099, 44.892384>,  <37.672565, 35.675793, 44.812481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724346, 35.896099, 44.892384>,  <37.810646, 36.263275, 45.025555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724346, 35.896099, 44.892384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860611, -0.017680, -0.508957,
		0.461304, -0.396330, 0.793802,
		-0.215749, -0.917938, -0.332930,
		37.659622, 35.620716, 44.792503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415180, 35.897755, 45.057598>,  <37.810646, 36.263275, 45.025555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415180, 35.897755, 45.057598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178185, 35.707661, 44.797409>,  <38.035988, 35.593605, 44.641296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178185, 35.707661, 44.797409>,  <38.415180, 35.897755, 45.057598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178185, 35.707661, 44.797409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751224, -0.034366, -0.659152,
		0.290899, -0.879187, 0.377370,
		-0.592487, -0.475236, -0.650469,
		38.000439, 35.565090, 44.602268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777527, 35.403263, 44.761982>,  <38.415180, 35.897755, 45.057598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777527, 35.403263, 44.761982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483379, 35.405495, 44.490925>,  <38.306892, 35.406834, 44.328289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483379, 35.405495, 44.490925>,  <38.777527, 35.403263, 44.761982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483379, 35.405495, 44.490925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677645, -0.002612, -0.735385,
		-0.005904, -0.999981, -0.001888,
		-0.735366, 0.005621, -0.677647,
		38.262768, 35.407169, 44.287632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895714, 34.801338, 44.359581>,  <38.777527, 35.403263, 44.761982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895714, 34.801338, 44.359581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686405, 35.051670, 44.128231>,  <38.560818, 35.201870, 43.989422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686405, 35.051670, 44.128231>,  <38.895714, 34.801338, 44.359581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686405, 35.051670, 44.128231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627285, -0.176519, -0.758522,
		-0.576799, -0.759724, -0.300204,
		-0.523275, 0.625828, -0.578379,
		38.529423, 35.239418, 43.954716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919388, 34.515606, 43.638542>,  <38.895714, 34.801338, 44.359581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919388, 34.515606, 43.638542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840942, 34.907413, 43.620308>,  <38.793877, 35.142498, 43.609367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840942, 34.907413, 43.620308>,  <38.919388, 34.515606, 43.638542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840942, 34.907413, 43.620308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598538, 0.082754, -0.796808,
		-0.776718, -0.183549, -0.602510,
		-0.196114, 0.979521, -0.045584,
		38.782108, 35.201271, 43.606632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999256, 34.573658, 42.914593>,  <38.919388, 34.515606, 43.638542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999256, 34.573658, 42.914593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976673, 34.939602, 43.074516>,  <38.963123, 35.159168, 43.170471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976673, 34.939602, 43.074516>,  <38.999256, 34.573658, 42.914593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976673, 34.939602, 43.074516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611313, 0.348286, -0.710629,
		-0.789373, 0.204285, -0.578929,
		-0.056462, 0.914857, 0.399810,
		38.959736, 35.214058, 43.194458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670864, 34.982548, 42.467537>,  <38.999256, 34.573658, 42.914593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670864, 34.982548, 42.467537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917171, 35.214226, 42.681213>,  <39.064957, 35.353233, 42.809422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917171, 35.214226, 42.681213>,  <38.670864, 34.982548, 42.467537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917171, 35.214226, 42.681213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342350, 0.413961, -0.843465,
		-0.709670, 0.702256, 0.056614,
		0.615764, 0.579200, 0.534193,
		39.101902, 35.387985, 42.841473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805866, 35.478340, 42.039642>,  <38.670864, 34.982548, 42.467537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805866, 35.478340, 42.039642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095123, 35.541759, 42.308544>,  <39.268677, 35.579811, 42.469887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095123, 35.541759, 42.308544>,  <38.805866, 35.478340, 42.039642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095123, 35.541759, 42.308544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566145, 0.421482, -0.708402,
		-0.395664, 0.892868, 0.215026,
		0.723139, 0.158553, 0.672258,
		39.312065, 35.589325, 42.510223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011948, 36.152893, 41.985920>,  <38.805866, 35.478340, 42.039642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011948, 36.152893, 41.985920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327724, 35.990616, 42.170177>,  <39.517189, 35.893250, 42.280731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327724, 35.990616, 42.170177>,  <39.011948, 36.152893, 41.985920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327724, 35.990616, 42.170177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598237, 0.340456, -0.725398,
		0.137458, 0.848236, 0.511470,
		0.789442, -0.405692, 0.460648,
		39.564556, 35.868908, 42.308372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572884, 36.681488, 41.966282>,  <39.011948, 36.152893, 41.985920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572884, 36.681488, 41.966282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751404, 36.328209, 42.023952>,  <39.858517, 36.116241, 42.058556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751404, 36.328209, 42.023952>,  <39.572884, 36.681488, 41.966282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751404, 36.328209, 42.023952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609688, 0.182157, -0.771427,
		0.655057, 0.432187, 0.619769,
		0.446296, -0.883195, 0.144176,
		39.885292, 36.063251, 42.067204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221832, 36.807270, 42.191837>,  <39.572884, 36.681488, 41.966282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221832, 36.807270, 42.191837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211330, 36.436287, 42.042637>,  <40.205029, 36.213696, 41.953117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211330, 36.436287, 42.042637>,  <40.221832, 36.807270, 42.191837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211330, 36.436287, 42.042637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724272, 0.239532, -0.646571,
		0.689014, -0.287136, 0.665442,
		-0.026259, -0.927457, -0.373006,
		40.203453, 36.158051, 41.930737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888309, 36.710396, 42.073750>,  <40.221832, 36.807270, 42.191837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888309, 36.710396, 42.073750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701714, 36.430542, 41.857269>,  <40.589756, 36.262630, 41.727379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701714, 36.430542, 41.857269>,  <40.888309, 36.710396, 42.073750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701714, 36.430542, 41.857269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508401, 0.288612, -0.811315,
		0.723820, -0.653618, 0.221060,
		-0.466490, -0.699633, -0.541203,
		40.561768, 36.220654, 41.694908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353386, 36.322586, 41.669182>,  <40.888309, 36.710396, 42.073750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353386, 36.322586, 41.669182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999588, 36.314358, 41.482746>,  <40.787308, 36.309422, 41.370884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999588, 36.314358, 41.482746>,  <41.353386, 36.322586, 41.669182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999588, 36.314358, 41.482746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433142, 0.334980, -0.836765,
		0.173342, -0.942000, -0.287379,
		-0.884500, -0.020571, -0.466087,
		40.734238, 36.308186, 41.342918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514862, 36.130405, 41.002621>,  <41.353386, 36.322586, 41.669182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514862, 36.130405, 41.002621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150238, 36.292320, 40.973778>,  <40.931461, 36.389469, 40.956470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150238, 36.292320, 40.973778>,  <41.514862, 36.130405, 41.002621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150238, 36.292320, 40.973778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271125, 0.459941, -0.845545,
		-0.309096, -0.790319, -0.529013,
		-0.911565, 0.404784, -0.072110,
		40.876770, 36.413754, 40.952145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184761, 36.078590, 40.382244>,  <41.514862, 36.130405, 41.002621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184761, 36.078590, 40.382244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082428, 36.431744, 40.539761>,  <41.021027, 36.643635, 40.634270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082428, 36.431744, 40.539761>,  <41.184761, 36.078590, 40.382244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082428, 36.431744, 40.539761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359636, 0.465030, -0.808955,
		-0.897335, -0.065339, -0.436487,
		-0.255836, 0.882881, 0.393789,
		41.005676, 36.696609, 40.657898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619202, 36.476795, 40.006096>,  <41.184761, 36.078590, 40.382244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619202, 36.476795, 40.006096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909344, 36.676186, 40.195992>,  <41.083431, 36.795818, 40.309929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909344, 36.676186, 40.195992>,  <40.619202, 36.476795, 40.006096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909344, 36.676186, 40.195992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331705, 0.351196, -0.875576,
		-0.603180, 0.792580, 0.089396,
		0.725359, 0.498476, 0.474737,
		41.126953, 36.825729, 40.338413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763813, 35.666462, 39.933266>,  <40.619202, 36.476795, 40.006096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763813, 35.666462, 39.933266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157303, 35.608917, 39.976334>,  <41.393398, 35.574390, 40.002174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157303, 35.608917, 39.976334>,  <40.763813, 35.666462, 39.933266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157303, 35.608917, 39.976334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053221, -0.805580, -0.590092,
		0.171623, 0.574757, -0.800125,
		0.983724, -0.143857, 0.107667,
		41.452419, 35.565762, 40.008633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118397, 35.524578, 39.172573>,  <40.763813, 35.666462, 39.933266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118397, 35.524578, 39.172573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362190, 35.383301, 39.456486>,  <41.508465, 35.298534, 39.626831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362190, 35.383301, 39.456486>,  <41.118397, 35.524578, 39.172573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362190, 35.383301, 39.456486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027578, -0.885293, -0.464216,
		0.792319, 0.302506, -0.529830,
		0.609483, -0.353195, 0.709777,
		41.545036, 35.277344, 39.669418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675541, 35.964016, 38.887005>,  <41.118397, 35.524578, 39.172573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675541, 35.964016, 38.887005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776810, 36.302536, 38.699528>,  <41.837570, 36.505650, 38.587040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776810, 36.302536, 38.699528>,  <41.675541, 35.964016, 38.887005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776810, 36.302536, 38.699528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892481, -0.017351, 0.450752,
		0.373340, -0.532421, -0.759701,
		0.253171, 0.846302, -0.468697,
		41.852760, 36.556427, 38.558918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309258, 35.875404, 38.639420>,  <41.675541, 35.964016, 38.887005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309258, 35.875404, 38.639420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249477, 36.266747, 38.696671>,  <42.213608, 36.501553, 38.731022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249477, 36.266747, 38.696671>,  <42.309258, 35.875404, 38.639420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249477, 36.266747, 38.696671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958780, 0.108010, 0.262820,
		0.241672, 0.176506, -0.954170,
		-0.149450, 0.978355, 0.143127,
		42.204643, 36.560253, 38.739609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046383, 35.766380, 38.256485>,  <42.309258, 35.875404, 38.639420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046383, 35.766380, 38.256485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303127, 35.480080, 38.146423>,  <43.457172, 35.308300, 38.080387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303127, 35.480080, 38.146423>,  <43.046383, 35.766380, 38.256485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303127, 35.480080, 38.146423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621921, -0.695817, 0.359240,
		-0.448585, -0.059457, -0.891760,
		0.641861, -0.715754, -0.275156,
		43.495686, 35.265354, 38.063877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714046, 35.182182, 37.850876>,  <43.046383, 35.766380, 38.256485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714046, 35.182182, 37.850876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041901, 34.996571, 37.985264>,  <43.238613, 34.885204, 38.065895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041901, 34.996571, 37.985264>,  <42.714046, 35.182182, 37.850876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041901, 34.996571, 37.985264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552658, -0.794907, 0.250382,
		0.150881, -0.390899, -0.907983,
		0.819636, -0.464027, 0.335970,
		43.287792, 34.857361, 38.086056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692226, 34.490913, 37.676296>,  <42.714046, 35.182182, 37.850876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692226, 34.490913, 37.676296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963497, 34.475399, 37.969845>,  <43.126259, 34.466091, 38.145973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963497, 34.475399, 37.969845>,  <42.692226, 34.490913, 37.676296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963497, 34.475399, 37.969845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332557, -0.906708, 0.259396,
		0.655350, -0.419971, -0.627806,
		0.678176, -0.038786, 0.733875,
		43.166950, 34.463764, 38.190006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882225, 33.845840, 37.601406>,  <42.692226, 34.490913, 37.676296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882225, 33.845840, 37.601406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987255, 33.957005, 37.971016>,  <43.050274, 34.023701, 38.192783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987255, 33.957005, 37.971016>,  <42.882225, 33.845840, 37.601406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987255, 33.957005, 37.971016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290402, -0.890466, 0.350338,
		0.920174, -0.360329, -0.153112,
		0.262578, 0.277908, 0.924024,
		43.066029, 34.040379, 38.248222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050537, 33.269238, 37.924355>,  <42.882225, 33.845840, 37.601406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050537, 33.269238, 37.924355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049713, 33.508167, 38.245155>,  <43.049217, 33.651524, 38.437634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049713, 33.508167, 38.245155>,  <43.050537, 33.269238, 37.924355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049713, 33.508167, 38.245155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311983, -0.762356, 0.566991,
		0.950085, -0.249040, 0.187928,
		-0.002065, 0.597321, 0.802000,
		43.049095, 33.687363, 38.485756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380974, 33.023228, 38.459999>,  <43.050537, 33.269238, 37.924355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380974, 33.023228, 38.459999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175789, 33.270947, 38.697769>,  <43.052677, 33.419579, 38.840431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175789, 33.270947, 38.697769>,  <43.380974, 33.023228, 38.459999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175789, 33.270947, 38.697769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289081, -0.776650, 0.559684,
		0.808270, 0.115261, 0.577421,
		-0.512964, 0.619297, 0.594423,
		43.021900, 33.456738, 38.876095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606575, 32.970165, 39.141838>,  <43.380974, 33.023228, 38.459999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606575, 32.970165, 39.141838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223099, 33.083202, 39.154819>,  <42.993011, 33.151024, 39.162609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223099, 33.083202, 39.154819>,  <43.606575, 32.970165, 39.141838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223099, 33.083202, 39.154819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168469, -0.656006, 0.735714,
		0.229200, 0.699854, 0.676515,
		-0.958690, 0.282597, 0.032453,
		42.935493, 33.167980, 39.164555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400677, 32.900356, 39.784840>,  <43.606575, 32.970165, 39.141838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400677, 32.900356, 39.784840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039520, 32.954468, 39.621628>,  <42.822826, 32.986935, 39.523701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039520, 32.954468, 39.621628>,  <43.400677, 32.900356, 39.784840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039520, 32.954468, 39.621628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371248, -0.723915, 0.581482,
		-0.216715, 0.676495, 0.703839,
		-0.902889, 0.135283, -0.408031,
		42.768654, 32.995052, 39.499218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881912, 33.067245, 40.324524>,  <43.400677, 32.900356, 39.784840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881912, 33.067245, 40.324524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650272, 32.931065, 40.028217>,  <42.511288, 32.849358, 39.850433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650272, 32.931065, 40.028217>,  <42.881912, 33.067245, 40.324524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650272, 32.931065, 40.028217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326842, -0.735462, 0.593524,
		-0.746873, 0.585823, 0.314631,
		-0.579099, -0.340452, -0.740768,
		42.476543, 32.828930, 39.805988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291405, 32.839886, 40.695507>,  <42.881912, 33.067245, 40.324524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291405, 32.839886, 40.695507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217094, 32.675995, 40.338272>,  <42.172508, 32.577660, 40.123932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217094, 32.675995, 40.338272>,  <42.291405, 32.839886, 40.695507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217094, 32.675995, 40.338272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521744, -0.729059, 0.443008,
		-0.832629, 0.548264, -0.078333,
		-0.185776, -0.409730, -0.893089,
		42.161362, 32.553074, 40.070347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650875, 32.694298, 40.712975>,  <42.291405, 32.839886, 40.695507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650875, 32.694298, 40.712975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805660, 32.453125, 40.433910>,  <41.898529, 32.308422, 40.266472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805660, 32.453125, 40.433910>,  <41.650875, 32.694298, 40.712975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805660, 32.453125, 40.433910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519085, -0.767768, 0.375610,
		-0.762105, 0.216792, -0.610080,
		0.386971, -0.602938, -0.697653,
		41.921749, 32.272243, 40.224613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057213, 32.346542, 40.411156>,  <41.650875, 32.694298, 40.712975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057213, 32.346542, 40.411156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375019, 32.109219, 40.359413>,  <41.565704, 31.966825, 40.328369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375019, 32.109219, 40.359413>,  <41.057213, 32.346542, 40.411156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375019, 32.109219, 40.359413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394839, -0.666593, 0.632262,
		-0.461351, -0.451268, -0.763879,
		0.794517, -0.593305, -0.129355,
		41.613373, 31.931227, 40.320606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822666, 31.697353, 40.220715>,  <41.057213, 32.346542, 40.411156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822666, 31.697353, 40.220715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197014, 31.601959, 40.324459>,  <41.421623, 31.544722, 40.386703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197014, 31.601959, 40.324459>,  <40.822666, 31.697353, 40.220715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197014, 31.601959, 40.324459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347961, -0.741256, 0.573988,
		0.055362, -0.627426, -0.776706,
		0.935873, -0.238486, 0.259357,
		41.477776, 31.530413, 40.402267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975922, 31.024097, 40.081390>,  <40.822666, 31.697353, 40.220715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975922, 31.024097, 40.081390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280476, 31.082689, 40.334003>,  <41.463207, 31.117844, 40.485573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280476, 31.082689, 40.334003>,  <40.975922, 31.024097, 40.081390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280476, 31.082689, 40.334003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122550, -0.924059, 0.362074,
		0.636609, -0.353073, -0.685615,
		0.761387, 0.146478, 0.631533,
		41.508892, 31.126633, 40.523464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434383, 30.472647, 40.063332>,  <40.975922, 31.024097, 40.081390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434383, 30.472647, 40.063332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525108, 30.613560, 40.426529>,  <41.579544, 30.698109, 40.644447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525108, 30.613560, 40.426529>,  <41.434383, 30.472647, 40.063332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525108, 30.613560, 40.426529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011062, -0.933162, 0.359286,
		0.973877, -0.071444, -0.215546,
		0.226808, 0.352284, 0.907994,
		41.593151, 30.719246, 40.698929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938683, 29.967382, 40.404621>,  <41.434383, 30.472647, 40.063332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938683, 29.967382, 40.404621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757858, 30.156689, 40.707054>,  <41.649364, 30.270273, 40.888512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757858, 30.156689, 40.707054>,  <41.938683, 29.967382, 40.404621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757858, 30.156689, 40.707054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103006, -0.869665, 0.482777,
		0.886019, 0.140365, 0.441892,
		-0.452063, 0.473267, 0.756081,
		41.622238, 30.298668, 40.933880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232609, 29.717854, 41.004581>,  <41.938683, 29.967382, 40.404621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232609, 29.717854, 41.004581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872719, 29.876221, 41.078064>,  <41.656784, 29.971241, 41.122154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872719, 29.876221, 41.078064>,  <42.232609, 29.717854, 41.004581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872719, 29.876221, 41.078064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224122, -0.780263, 0.583917,
		0.374524, 0.484190, 0.790754,
		-0.899723, 0.395916, 0.183709,
		41.602802, 29.994995, 41.133175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174015, 29.574472, 41.746151>,  <42.232609, 29.717854, 41.004581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174015, 29.574472, 41.746151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802193, 29.656305, 41.623463>,  <41.579102, 29.705404, 41.549850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802193, 29.656305, 41.623463>,  <42.174015, 29.574472, 41.746151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802193, 29.656305, 41.623463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344144, -0.779944, 0.522735,
		-0.132286, 0.591467, 0.795404,
		-0.929552, 0.204583, -0.306725,
		41.523327, 29.717680, 41.531445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841248, 29.515572, 42.342052>,  <42.174015, 29.574472, 41.746151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841248, 29.515572, 42.342052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562714, 29.516291, 42.054966>,  <41.395596, 29.516722, 41.882713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562714, 29.516291, 42.054966>,  <41.841248, 29.515572, 42.342052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562714, 29.516291, 42.054966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556602, -0.632679, 0.538434,
		-0.453116, 0.774412, 0.441556,
		-0.696333, 0.001798, -0.717717,
		41.353813, 29.516830, 41.839649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224781, 29.665504, 42.628807>,  <41.841248, 29.515572, 42.342052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224781, 29.665504, 42.628807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151459, 29.466667, 42.289562>,  <41.107464, 29.347364, 42.086014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151459, 29.466667, 42.289562>,  <41.224781, 29.665504, 42.628807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151459, 29.466667, 42.289562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556872, -0.658456, 0.506290,
		-0.810118, 0.565098, -0.156117,
		-0.183307, -0.497092, -0.848115,
		41.096466, 29.317539, 42.035130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473274, 29.544203, 42.504093>,  <41.224781, 29.665504, 42.628807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473274, 29.544203, 42.504093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687817, 29.265955, 42.312916>,  <40.816544, 29.099007, 42.198208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687817, 29.265955, 42.312916>,  <40.473274, 29.544203, 42.504093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687817, 29.265955, 42.312916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622288, -0.708502, 0.332840,
		-0.570154, 0.118895, -0.812889,
		0.536361, -0.695621, -0.477942,
		40.848724, 29.057268, 42.169533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105072, 29.174847, 41.898804>,  <40.473274, 29.544203, 42.504093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105072, 29.174847, 41.898804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361736, 28.923927, 42.075333>,  <40.515736, 28.773375, 42.181252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361736, 28.923927, 42.075333>,  <40.105072, 29.174847, 41.898804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361736, 28.923927, 42.075333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756168, -0.613702, 0.227110,
		0.128374, -0.479442, -0.868133,
		0.641662, -0.627299, 0.441322,
		40.554234, 28.735737, 42.207729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859886, 28.470295, 41.704155>,  <40.105072, 29.174847, 41.898804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859886, 28.470295, 41.704155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059628, 28.472221, 42.050709>,  <40.179474, 28.473377, 42.258640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059628, 28.472221, 42.050709>,  <39.859886, 28.470295, 41.704155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059628, 28.472221, 42.050709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706054, -0.577288, 0.410154,
		0.502129, -0.816527, -0.284870,
		0.499353, 0.004817, 0.866385,
		40.209435, 28.473667, 42.310623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913952, 27.734745, 41.952728>,  <39.859886, 28.470295, 41.704155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913952, 27.734745, 41.952728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941799, 27.988531, 42.260651>,  <39.958508, 28.140802, 42.445404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941799, 27.988531, 42.260651>,  <39.913952, 27.734745, 41.952728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941799, 27.988531, 42.260651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619350, -0.577449, 0.531938,
		0.782022, -0.513813, 0.352756,
		0.069618, 0.634467, 0.769808,
		39.962685, 28.178871, 42.491592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370434, 27.206255, 41.767841>,  <39.913952, 27.734745, 41.952728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370434, 27.206255, 41.767841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305740, 26.827555, 41.656479>,  <40.266926, 26.600334, 41.589661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305740, 26.827555, 41.656479>,  <40.370434, 27.206255, 41.767841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305740, 26.827555, 41.656479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641899, 0.315208, -0.699006,
		0.749539, 0.065660, -0.658696,
		-0.161730, -0.946748, -0.278408,
		40.257221, 26.543530, 41.572956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811386, 27.114166, 41.169987>,  <40.370434, 27.206255, 41.767841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811386, 27.114166, 41.169987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198269, 27.053003, 41.251118>,  <41.430397, 27.016306, 41.299797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198269, 27.053003, 41.251118>,  <40.811386, 27.114166, 41.169987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198269, 27.053003, 41.251118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253990, 0.590814, -0.765786,
		-0.002737, 0.792185, 0.610274,
		0.967203, -0.152907, 0.202824,
		41.488430, 27.007132, 41.311966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223503, 27.774233, 41.226131>,  <40.811386, 27.114166, 41.169987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223503, 27.774233, 41.226131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471531, 27.480459, 41.115768>,  <41.620346, 27.304195, 41.049549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471531, 27.480459, 41.115768>,  <41.223503, 27.774233, 41.226131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471531, 27.480459, 41.115768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376107, 0.586900, -0.717002,
		0.688519, 0.340819, 0.640143,
		0.620068, -0.734432, -0.275907,
		41.657551, 27.260130, 41.032997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977856, 28.096189, 41.219971>,  <41.223503, 27.774233, 41.226131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977856, 28.096189, 41.219971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939182, 27.764105, 41.000370>,  <41.915977, 27.564854, 40.868610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939182, 27.764105, 41.000370>,  <41.977856, 28.096189, 41.219971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939182, 27.764105, 41.000370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380119, 0.478976, -0.791260,
		0.919871, -0.285184, 0.269272,
		-0.096680, -0.830212, -0.549000,
		41.910179, 27.515041, 40.835670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627079, 27.900274, 41.171364>,  <41.977856, 28.096189, 41.219971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627079, 27.900274, 41.171364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405293, 27.774481, 40.863167>,  <42.272221, 27.699005, 40.678249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405293, 27.774481, 40.863167>,  <42.627079, 27.900274, 41.171364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405293, 27.774481, 40.863167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685800, 0.351806, -0.637112,
		0.471425, -0.881665, 0.020604,
		-0.554470, -0.314481, -0.770496,
		42.238953, 27.680136, 40.632019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905933, 27.252335, 40.775028>,  <42.627079, 27.900274, 41.171364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905933, 27.252335, 40.775028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699036, 27.513250, 40.553406>,  <42.574898, 27.669800, 40.420433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699036, 27.513250, 40.553406>,  <42.905933, 27.252335, 40.775028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699036, 27.513250, 40.553406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800085, 0.138700, -0.583631,
		-0.303848, -0.745172, -0.593629,
		-0.517242, 0.652289, -0.554057,
		42.543861, 27.708937, 40.387188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930805, 27.093979, 40.012203>,  <42.905933, 27.252335, 40.775028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930805, 27.093979, 40.012203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872581, 27.488243, 40.046360>,  <42.837646, 27.724802, 40.066853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872581, 27.488243, 40.046360>,  <42.930805, 27.093979, 40.012203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872581, 27.488243, 40.046360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790986, 0.167781, -0.588380,
		-0.594268, -0.018100, -0.804064,
		-0.145556, 0.985658, 0.085390,
		42.828915, 27.783941, 40.071976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.335297, 27.440742, 39.483166>,  <42.930805, 27.093979, 40.012203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.335297, 27.440742, 39.483166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265694, 27.739952, 39.739349>,  <43.223930, 27.919477, 39.893059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265694, 27.739952, 39.739349>,  <43.335297, 27.440742, 39.483166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265694, 27.739952, 39.739349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719586, 0.540576, -0.435860,
		-0.672248, 0.385020, -0.632330,
		-0.174008, 0.748022, 0.640456,
		43.213490, 27.964359, 39.931488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306740, 27.998461, 38.986259>,  <43.335297, 27.440742, 39.483166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306740, 27.998461, 38.986259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347160, 28.166401, 39.347038>,  <43.371414, 28.267166, 39.563507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347160, 28.166401, 39.347038>,  <43.306740, 27.998461, 38.986259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347160, 28.166401, 39.347038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511925, 0.755417, -0.408997,
		-0.853066, 0.503060, -0.138596,
		0.101052, 0.419852, 0.901949,
		43.377476, 28.292356, 39.617622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057934, 28.570881, 38.926746>,  <43.306740, 27.998461, 38.986259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057934, 28.570881, 38.926746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296925, 28.634243, 39.241180>,  <43.440319, 28.672260, 39.429840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296925, 28.634243, 39.241180>,  <43.057934, 28.570881, 38.926746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296925, 28.634243, 39.241180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359973, 0.822985, -0.439449,
		-0.716546, 0.545530, 0.434694,
		0.597480, 0.158407, 0.786082,
		43.476170, 28.681765, 39.477005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999386, 29.288881, 39.037277>,  <43.057934, 28.570881, 38.926746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999386, 29.288881, 39.037277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335472, 29.176838, 39.222996>,  <43.537125, 29.109612, 39.334427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335472, 29.176838, 39.222996>,  <42.999386, 29.288881, 39.037277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335472, 29.176838, 39.222996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462091, 0.817908, -0.342781,
		-0.283738, 0.502559, 0.816656,
		0.840217, -0.280110, 0.464299,
		43.587536, 29.092806, 39.362286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192947, 29.860676, 39.462898>,  <42.999386, 29.288881, 39.037277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192947, 29.860676, 39.462898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523933, 29.638260, 39.431622>,  <43.722527, 29.504810, 39.412857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523933, 29.638260, 39.431622>,  <43.192947, 29.860676, 39.462898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523933, 29.638260, 39.431622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514056, 0.806181, -0.292947,
		0.225926, 0.202210, 0.952926,
		0.827468, -0.556042, -0.078191,
		43.772175, 29.471447, 39.408165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774128, 30.114723, 39.841225>,  <43.192947, 29.860676, 39.462898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774128, 30.114723, 39.841225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971924, 29.904449, 39.564346>,  <44.090603, 29.778284, 39.398220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971924, 29.904449, 39.564346>,  <43.774128, 30.114723, 39.841225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.971924, 29.904449, 39.564346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528022, 0.814264, -0.241180,
		0.690412, -0.246231, 0.680222,
		0.494494, -0.525685, -0.692193,
		44.120274, 29.746744, 39.356689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.580795, 30.208443, 39.856148>,  <43.774128, 30.114723, 39.841225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.580795, 30.208443, 39.856148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509640, 30.068491, 39.488247>,  <44.466946, 29.984520, 39.267506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509640, 30.068491, 39.488247>,  <44.580795, 30.208443, 39.856148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509640, 30.068491, 39.488247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476872, 0.786927, -0.391586,
		0.860784, -0.508261, 0.026862,
		-0.177889, -0.349881, -0.919749,
		44.456272, 29.963526, 39.212322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136395, 30.316397, 39.601398>,  <44.580795, 30.208443, 39.856148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136395, 30.316397, 39.601398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888763, 30.261715, 39.292061>,  <44.740185, 30.228905, 39.106457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888763, 30.261715, 39.292061>,  <45.136395, 30.316397, 39.601398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888763, 30.261715, 39.292061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379108, 0.810374, -0.446734,
		0.687768, -0.569742, -0.449855,
		-0.619074, -0.136705, -0.773343,
		44.703041, 30.220703, 39.060059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.534348, 30.308460, 39.009731>,  <45.136395, 30.316397, 39.601398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.534348, 30.308460, 39.009731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172264, 30.415159, 38.877396>,  <44.955013, 30.479177, 38.797997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172264, 30.415159, 38.877396>,  <45.534348, 30.308460, 39.009731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172264, 30.415159, 38.877396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391733, 0.825561, -0.406194,
		0.164774, -0.497288, -0.851795,
		-0.905204, 0.266746, -0.330835,
		44.900703, 30.495182, 38.778145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.717159, 30.776907, 38.521366>,  <45.534348, 30.308460, 39.009731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.717159, 30.776907, 38.521366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323334, 30.834181, 38.561649>,  <45.087040, 30.868546, 38.585819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323334, 30.834181, 38.561649>,  <45.717159, 30.776907, 38.521366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323334, 30.834181, 38.561649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062152, 0.823732, -0.563563,
		-0.163647, -0.548602, -0.819912,
		-0.984559, 0.143184, 0.100704,
		45.027966, 30.877136, 38.591862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504734, 30.951336, 37.871487>,  <45.717159, 30.776907, 38.521366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.504734, 30.951336, 37.871487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228752, 31.115931, 38.109695>,  <45.063164, 31.214687, 38.252621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228752, 31.115931, 38.109695>,  <45.504734, 30.951336, 37.871487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228752, 31.115931, 38.109695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110410, 0.872906, -0.475231,
		-0.715382, -0.262137, -0.647699,
		-0.689956, 0.411484, 0.595518,
		45.021767, 31.239376, 38.288349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172878, 31.411989, 37.477184>,  <45.504734, 30.951336, 37.871487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172878, 31.411989, 37.477184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037678, 31.545670, 37.829109>,  <44.956558, 31.625877, 38.040264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037678, 31.545670, 37.829109>,  <45.172878, 31.411989, 37.477184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037678, 31.545670, 37.829109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056584, 0.940354, -0.335460,
		-0.939445, -0.063601, -0.336748,
		-0.337998, 0.334200, 0.879811,
		44.936279, 31.645929, 38.093052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511848, 31.796568, 37.352749>,  <45.172878, 31.411989, 37.477184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511848, 31.796568, 37.352749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689247, 31.924355, 37.687710>,  <44.795689, 32.001026, 37.888687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689247, 31.924355, 37.687710>,  <44.511848, 31.796568, 37.352749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689247, 31.924355, 37.687710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035023, 0.939783, -0.339974,
		-0.895590, 0.121450, 0.427982,
		0.443500, 0.319466, 0.837406,
		44.822296, 32.020195, 37.938931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151379, 32.464619, 37.502518>,  <44.511848, 31.796568, 37.352749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151379, 32.464619, 37.502518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497032, 32.462379, 37.703808>,  <44.704426, 32.461037, 37.824581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497032, 32.462379, 37.703808>,  <44.151379, 32.464619, 37.502518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497032, 32.462379, 37.703808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106117, 0.979483, -0.171323,
		-0.491942, 0.201447, 0.847002,
		0.864137, -0.005600, 0.503226,
		44.756271, 32.460701, 37.854774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093449, 33.087452, 37.805798>,  <44.151379, 32.464619, 37.502518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093449, 33.087452, 37.805798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.467823, 32.946693, 37.800335>,  <44.692448, 32.862240, 37.797058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.467823, 32.946693, 37.800335>,  <44.093449, 33.087452, 37.805798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.467823, 32.946693, 37.800335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349597, 0.933098, -0.084322,
		0.042420, 0.074145, 0.996345,
		0.935939, -0.351896, -0.013661,
		44.748604, 32.841125, 37.796238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511353, 33.605568, 38.065826>,  <44.093449, 33.087452, 37.805798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511353, 33.605568, 38.065826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766159, 33.366333, 37.871300>,  <44.919041, 33.222794, 37.754581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766159, 33.366333, 37.871300>,  <44.511353, 33.605568, 38.065826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766159, 33.366333, 37.871300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423486, 0.798679, -0.427518,
		0.644106, 0.066385, 0.762050,
		0.637014, -0.598085, -0.486321,
		44.957264, 33.186909, 37.725403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151031, 33.949169, 38.220596>,  <44.511353, 33.605568, 38.065826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151031, 33.949169, 38.220596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.200363, 33.734055, 37.886990>,  <45.229961, 33.604984, 37.686825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.200363, 33.734055, 37.886990>,  <45.151031, 33.949169, 38.220596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.200363, 33.734055, 37.886990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333649, 0.813974, -0.475526,
		0.934595, -0.219620, 0.279820,
		0.123331, -0.537786, -0.834012,
		45.237362, 33.572720, 37.636787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.766933, 34.016369, 38.103683>,  <45.151031, 33.949169, 38.220596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.766933, 34.016369, 38.103683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690865, 33.866844, 37.740562>,  <45.645222, 33.777130, 37.522690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690865, 33.866844, 37.740562>,  <45.766933, 34.016369, 38.103683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690865, 33.866844, 37.740562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560131, 0.718094, -0.413031,
		0.806280, -0.587035, 0.072820,
		-0.190172, -0.373807, -0.907801,
		45.633812, 33.754704, 37.468224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.407551, 34.038837, 37.728539>,  <45.766933, 34.016369, 38.103683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.407551, 34.038837, 37.728539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.113285, 34.011799, 37.458954>,  <45.936726, 33.995575, 37.297203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.113285, 34.011799, 37.458954>,  <46.407551, 34.038837, 37.728539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.113285, 34.011799, 37.458954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365551, 0.798042, -0.479063,
		0.570233, -0.598798, -0.562383,
		-0.735668, -0.067598, -0.673961,
		45.892586, 33.991520, 37.256767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.797462, 34.100216, 37.089092>,  <46.407551, 34.038837, 37.728539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.797462, 34.100216, 37.089092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.414276, 34.204880, 37.042053>,  <46.184364, 34.267677, 37.013832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.414276, 34.204880, 37.042053>,  <46.797462, 34.100216, 37.089092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.414276, 34.204880, 37.042053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286684, 0.858320, -0.425558,
		-0.010419, -0.441383, -0.897258,
		-0.957968, 0.261664, -0.117595,
		46.126884, 34.283379, 37.006775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.824757, 34.537857, 36.581116>,  <46.797462, 34.100216, 37.089092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.824757, 34.537857, 36.581116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465664, 34.614075, 36.740002>,  <46.250210, 34.659805, 36.835331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465664, 34.614075, 36.740002>,  <46.824757, 34.537857, 36.581116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.465664, 34.614075, 36.740002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103617, 0.967658, -0.230003,
		-0.428190, -0.165323, -0.888438,
		-0.897729, 0.190542, 0.397211,
		46.196346, 34.671238, 36.859165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.349514, 35.119289, 36.459591>,  <46.824757, 34.537857, 36.581116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.349514, 35.119289, 36.459591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.428627, 35.413155, 36.719177>,  <47.476093, 35.589474, 36.874928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.428627, 35.413155, 36.719177>,  <47.349514, 35.119289, 36.459591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.428627, 35.413155, 36.719177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712404, 0.347023, -0.609963,
		-0.673321, 0.582967, -0.454739,
		0.197784, 0.734660, 0.648966,
		47.487961, 35.633553, 36.913868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.132320, 35.645206, 36.021694>,  <47.349514, 35.119289, 36.459591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.132320, 35.645206, 36.021694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.516304, 35.699783, 35.923824>,  <47.746693, 35.732529, 35.865101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.516304, 35.699783, 35.923824>,  <47.132320, 35.645206, 36.021694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.516304, 35.699783, 35.923824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002431, -0.877401, -0.479751,
		-0.280141, 0.459945, -0.842598,
		0.959956, 0.136447, -0.244678,
		47.804291, 35.740719, 35.850422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.317577, 35.386642, 35.316875>,  <47.132320, 35.645206, 36.021694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.317577, 35.386642, 35.316875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652126, 35.328575, 35.528313>,  <47.852856, 35.293736, 35.655174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652126, 35.328575, 35.528313>,  <47.317577, 35.386642, 35.316875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.652126, 35.328575, 35.528313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133391, -0.881414, -0.453118,
		0.531691, 0.449483, -0.717823,
		0.836368, -0.145168, 0.528597,
		47.903038, 35.285027, 35.686893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.780231, 35.180061, 34.820118>,  <47.317577, 35.386642, 35.316875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.780231, 35.180061, 34.820118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.888821, 35.031826, 35.175415>,  <47.953976, 34.942886, 35.388592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.888821, 35.031826, 35.175415>,  <47.780231, 35.180061, 34.820118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.888821, 35.031826, 35.175415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224795, -0.872957, -0.432913,
		0.935826, 0.317195, -0.153678,
		0.271472, -0.370585, 0.888240,
		47.970261, 34.920650, 35.441887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.749306, 39.533836, 44.768543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.407207, 39.342293, 44.847797>,  <32.201950, 39.227367, 44.895351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.407207, 39.342293, 44.847797>,  <32.749306, 39.533836, 44.768543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407207, 39.342293, 44.847797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285851, -0.754812, -0.590379,
		0.432261, -0.448281, 0.782429,
		-0.855242, -0.478856, 0.198134,
		32.150635, 39.198635, 44.907238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942307, 38.881859, 44.855133>,  <32.749306, 39.533836, 44.768543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942307, 38.881859, 44.855133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.548382, 38.854740, 44.791199>,  <32.312027, 38.838470, 44.752838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.548382, 38.854740, 44.791199>,  <32.942307, 38.881859, 44.855133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548382, 38.854740, 44.791199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153504, -0.770102, -0.619177,
		-0.081109, -0.634308, 0.768814,
		-0.984814, -0.067795, -0.159831,
		32.252937, 38.834400, 44.743248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716160, 38.177727, 44.863228>,  <32.942307, 38.881859, 44.855133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716160, 38.177727, 44.863228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.422691, 38.351162, 44.653954>,  <32.246609, 38.455223, 44.528389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.422691, 38.351162, 44.653954>,  <32.716160, 38.177727, 44.863228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422691, 38.351162, 44.653954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099094, -0.693455, -0.713653,
		-0.672237, -0.575434, 0.465804,
		-0.733674, 0.433586, -0.523188,
		32.202591, 38.481239, 44.496998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301666, 37.648632, 44.511024>,  <32.716160, 38.177727, 44.863228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301666, 37.648632, 44.511024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.210979, 37.970379, 44.291355>,  <32.156567, 38.163429, 44.159554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.210979, 37.970379, 44.291355>,  <32.301666, 37.648632, 44.511024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210979, 37.970379, 44.291355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038329, -0.556047, -0.830267,
		-0.973207, -0.209282, 0.095233,
		-0.226714, 0.804371, -0.549170,
		32.142963, 38.211689, 44.126602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991747, 37.369595, 43.977943>,  <32.301666, 37.648632, 44.511024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991747, 37.369595, 43.977943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.100716, 37.730976, 43.845547>,  <32.166096, 37.947803, 43.766109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.100716, 37.730976, 43.845547>,  <31.991747, 37.369595, 43.977943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100716, 37.730976, 43.845547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230680, -0.395300, -0.889114,
		-0.934117, 0.165858, -0.316096,
		0.272420, 0.903454, -0.330996,
		32.182442, 38.002014, 43.746246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792229, 37.342422, 43.269882>,  <31.991747, 37.369595, 43.977943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792229, 37.342422, 43.269882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.066776, 37.630711, 43.308784>,  <32.231506, 37.803684, 43.332127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.066776, 37.630711, 43.308784>,  <31.792229, 37.342422, 43.269882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066776, 37.630711, 43.308784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433291, -0.297855, -0.850613,
		-0.584084, 0.625977, -0.516720,
		0.686371, 0.720719, 0.097258,
		32.272686, 37.846928, 43.337963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847412, 37.719383, 42.614132>,  <31.792229, 37.342422, 43.269882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847412, 37.719383, 42.614132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.181881, 37.714272, 42.833458>,  <32.382561, 37.711205, 42.965054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.181881, 37.714272, 42.833458>,  <31.847412, 37.719383, 42.614132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181881, 37.714272, 42.833458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480268, -0.465750, -0.743249,
		0.264873, 0.884824, -0.383312,
		0.836172, -0.012775, 0.548318,
		32.432732, 37.710438, 42.997952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361141, 37.468166, 42.040852>,  <31.847412, 37.719383, 42.614132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361141, 37.468166, 42.040852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.583469, 37.526527, 42.368214>,  <32.716866, 37.561543, 42.564629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.583469, 37.526527, 42.368214>,  <32.361141, 37.468166, 42.040852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583469, 37.526527, 42.368214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761983, -0.482989, -0.431398,
		0.332338, 0.863386, -0.379626,
		0.555818, 0.145898, 0.818401,
		32.750214, 37.570297, 42.613735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934788, 37.582764, 41.758862>,  <32.361141, 37.468166, 42.040852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934788, 37.582764, 41.758862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.041607, 37.469292, 42.127254>,  <33.105698, 37.401211, 42.348289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.041607, 37.469292, 42.127254>,  <32.934788, 37.582764, 41.758862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041607, 37.469292, 42.127254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819329, -0.436291, -0.371954,
		0.507332, 0.853919, 0.115914,
		0.267047, -0.283676, 0.920985,
		33.121719, 37.384190, 42.403549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601856, 37.843571, 41.813633>,  <32.934788, 37.582764, 41.758862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601856, 37.843571, 41.813633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.541851, 37.520397, 42.041573>,  <33.505848, 37.326492, 42.178337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.541851, 37.520397, 42.041573>,  <33.601856, 37.843571, 41.813633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541851, 37.520397, 42.041573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828907, -0.416940, -0.372926,
		0.538895, 0.416411, 0.732253,
		-0.150015, -0.807937, 0.569853,
		33.496845, 37.278015, 42.212528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225811, 37.709751, 42.080040>,  <33.601856, 37.843571, 41.813633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225811, 37.709751, 42.080040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.036289, 37.365425, 42.154346>,  <33.922577, 37.158829, 42.198929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.036289, 37.365425, 42.154346>,  <34.225811, 37.709751, 42.080040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036289, 37.365425, 42.154346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732164, -0.502281, -0.460054,
		0.489327, -0.081966, 0.868240,
		-0.473809, -0.860811, 0.185767,
		33.894146, 37.107182, 42.210075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756882, 37.349438, 42.069309>,  <34.225811, 37.709751, 42.080040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756882, 37.349438, 42.069309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.449574, 37.095867, 42.033760>,  <34.265190, 36.943726, 42.012432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.449574, 37.095867, 42.033760>,  <34.756882, 37.349438, 42.069309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449574, 37.095867, 42.033760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581409, -0.632959, -0.511201,
		0.267810, -0.444413, 0.854854,
		-0.768272, -0.633924, -0.088873,
		34.219093, 36.905689, 42.007099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932125, 36.695900, 42.368179>,  <34.756882, 37.349438, 42.069309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932125, 36.695900, 42.368179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.673027, 36.645916, 42.067566>,  <34.517567, 36.615925, 41.887196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.673027, 36.645916, 42.067566>,  <34.932125, 36.695900, 42.368179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673027, 36.645916, 42.067566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637378, -0.629262, -0.444724,
		-0.417338, -0.767081, 0.487253,
		-0.647749, -0.124964, -0.751535,
		34.478703, 36.608425, 41.842106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945835, 36.043262, 42.259098>,  <34.932125, 36.695900, 42.368179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945835, 36.043262, 42.259098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.772900, 36.151531, 41.915047>,  <34.669136, 36.216492, 41.708618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.772900, 36.151531, 41.915047>,  <34.945835, 36.043262, 42.259098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772900, 36.151531, 41.915047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482320, -0.736537, -0.474217,
		-0.761873, -0.619879, 0.187883,
		-0.432340, 0.270674, -0.860127,
		34.643196, 36.232731, 41.657009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006397, 35.444542, 41.879051>,  <34.945835, 36.043262, 42.259098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006397, 35.444542, 41.879051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.901833, 35.685211, 41.577148>,  <34.839092, 35.829613, 41.396008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.901833, 35.685211, 41.577148>,  <35.006397, 35.444542, 41.879051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901833, 35.685211, 41.577148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544902, -0.553437, -0.629912,
		-0.796710, -0.575933, -0.183177,
		-0.261410, 0.601671, -0.754756,
		34.823410, 35.865711, 41.350723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042213, 35.025848, 41.343960>,  <35.006397, 35.444542, 41.879051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042213, 35.025848, 41.343960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.071213, 35.386261, 41.172897>,  <35.088612, 35.602509, 41.070259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.071213, 35.386261, 41.172897>,  <35.042213, 35.025848, 41.343960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071213, 35.386261, 41.172897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605349, -0.380526, -0.699108,
		-0.792652, -0.208200, -0.573024,
		0.072497, 0.901029, -0.427658,
		35.092960, 35.656570, 41.044601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923435, 34.959618, 40.606758>,  <35.042213, 35.025848, 41.343960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923435, 34.959618, 40.606758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115623, 35.309662, 40.629864>,  <35.230938, 35.519688, 40.643726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115623, 35.309662, 40.629864>,  <34.923435, 34.959618, 40.606758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115623, 35.309662, 40.629864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576416, -0.265464, -0.772835,
		-0.660979, 0.404620, -0.631973,
		0.480471, 0.875107, 0.057763,
		35.259766, 35.572193, 40.647194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949989, 35.238991, 39.882210>,  <34.923435, 34.959618, 40.606758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949989, 35.238991, 39.882210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.250072, 35.376499, 40.108135>,  <35.430122, 35.459003, 40.243690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.250072, 35.376499, 40.108135>,  <34.949989, 35.238991, 39.882210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250072, 35.376499, 40.108135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635722, -0.140145, -0.759090,
		-0.181796, 0.928537, -0.323680,
		0.750205, 0.343769, 0.564814,
		35.475136, 35.479630, 40.277580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339191, 35.592064, 39.383091>,  <34.949989, 35.238991, 39.882210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339191, 35.592064, 39.383091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.595203, 35.529755, 39.684052>,  <35.748810, 35.492371, 39.864628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.595203, 35.529755, 39.684052>,  <35.339191, 35.592064, 39.383091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595203, 35.529755, 39.684052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719278, -0.222887, -0.657998,
		0.270196, 0.962319, -0.030612,
		0.640027, -0.155769, 0.752397,
		35.787212, 35.483025, 39.909771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887463, 36.019341, 39.209705>,  <35.339191, 35.592064, 39.383091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887463, 36.019341, 39.209705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.034748, 35.750294, 39.466457>,  <36.123119, 35.588867, 39.620506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.034748, 35.750294, 39.466457>,  <35.887463, 36.019341, 39.209705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034748, 35.750294, 39.466457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720582, -0.229813, -0.654177,
		0.587523, 0.703401, 0.400056,
		0.368210, -0.672617, 0.641878,
		36.145210, 35.548508, 39.659019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499130, 36.238186, 39.346951>,  <35.887463, 36.019341, 39.209705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499130, 36.238186, 39.346951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494606, 35.844547, 39.417858>,  <36.491894, 35.608364, 39.460403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494606, 35.844547, 39.417858>,  <36.499130, 36.238186, 39.346951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494606, 35.844547, 39.417858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807275, -0.113599, -0.579139,
		0.590067, 0.136557, 0.795722,
		-0.011308, -0.984097, 0.177270,
		36.491215, 35.549316, 39.471039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928112, 36.346771, 40.090237>,  <36.499130, 36.238186, 39.346951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928112, 36.346771, 40.090237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.066547, 35.972370, 40.064579>,  <37.149609, 35.747730, 40.049183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.066547, 35.972370, 40.064579>,  <36.928112, 36.346771, 40.090237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066547, 35.972370, 40.064579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885628, 0.348498, -0.306940,
		0.309651, 0.049423, 0.949565,
		0.346091, -0.936006, -0.064143,
		37.170376, 35.691570, 40.045338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693466, 36.352993, 40.211258>,  <36.928112, 36.346771, 40.090237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693466, 36.352993, 40.211258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.669254, 35.983906, 40.058983>,  <37.654728, 35.762451, 39.967617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.669254, 35.983906, 40.058983>,  <37.693466, 36.352993, 40.211258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669254, 35.983906, 40.058983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717738, 0.224811, -0.659023,
		0.693677, -0.313120, 0.648666,
		-0.060526, -0.922722, -0.380684,
		37.651096, 35.707088, 39.944778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029743, 36.597790, 40.852760>,  <37.693466, 36.352993, 40.211258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029743, 36.597790, 40.852760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.328602, 36.776348, 40.655785>,  <38.507915, 36.883484, 40.537598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.328602, 36.776348, 40.655785>,  <38.029743, 36.597790, 40.852760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328602, 36.776348, 40.655785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333608, 0.892674, 0.303050,
		0.574870, -0.062140, 0.815881,
		0.747147, 0.446399, -0.492441,
		38.552746, 36.910267, 40.508053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239502, 37.013496, 41.387432>,  <38.029743, 36.597790, 40.852760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239502, 37.013496, 41.387432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.384460, 37.174767, 41.051308>,  <38.471436, 37.271530, 40.849632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.384460, 37.174767, 41.051308>,  <38.239502, 37.013496, 41.387432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384460, 37.174767, 41.051308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232351, 0.912209, 0.337472,
		0.902596, 0.072945, 0.424265,
		0.362401, 0.403179, -0.840305,
		38.493179, 37.295719, 40.799217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783539, 37.467747, 41.749184>,  <38.239502, 37.013496, 41.387432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783539, 37.467747, 41.749184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.653339, 37.554592, 41.381073>,  <38.575218, 37.606701, 41.160206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.653339, 37.554592, 41.381073>,  <38.783539, 37.467747, 41.749184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653339, 37.554592, 41.381073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264519, 0.913510, 0.309079,
		0.907788, 0.344036, -0.239917,
		-0.325501, 0.217115, -0.920277,
		38.555691, 37.619728, 41.104988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894260, 38.113216, 41.703625>,  <38.783539, 37.467747, 41.749184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894260, 38.113216, 41.703625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.647861, 38.093365, 41.389149>,  <38.500023, 38.081455, 41.200462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.647861, 38.093365, 41.389149>,  <38.894260, 38.113216, 41.703625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647861, 38.093365, 41.389149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368754, 0.900081, 0.232110,
		0.696112, 0.432888, -0.572744,
		-0.615993, -0.049628, -0.786186,
		38.463062, 38.078476, 41.153294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975323, 38.779018, 41.408043>,  <38.894260, 38.113216, 41.703625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975323, 38.779018, 41.408043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.638447, 38.628956, 41.253132>,  <38.436321, 38.538918, 41.160187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.638447, 38.628956, 41.253132>,  <38.975323, 38.779018, 41.408043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638447, 38.628956, 41.253132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494854, 0.823007, 0.278888,
		0.214103, 0.426519, -0.878773,
		-0.842187, -0.375154, -0.387273,
		38.385792, 38.516411, 41.136951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773472, 39.268257, 40.964474>,  <38.975323, 38.779018, 41.408043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773472, 39.268257, 40.964474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.464314, 39.030960, 41.054535>,  <38.278816, 38.888584, 41.108574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.464314, 39.030960, 41.054535>,  <38.773472, 39.268257, 40.964474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464314, 39.030960, 41.054535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471410, 0.774362, 0.422062,
		-0.424736, 0.220070, -0.878162,
		-0.772898, -0.593239, 0.225156,
		38.232445, 38.852989, 41.122082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147911, 39.635216, 40.837578>,  <38.773472, 39.268257, 40.964474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147911, 39.635216, 40.837578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038616, 39.351135, 41.097103>,  <37.973038, 39.180687, 41.252819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038616, 39.351135, 41.097103>,  <38.147911, 39.635216, 40.837578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038616, 39.351135, 41.097103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613884, 0.648014, 0.450804,
		-0.740600, -0.275118, -0.613043,
		-0.273236, -0.710203, 0.648810,
		37.956646, 39.138073, 41.291744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476604, 39.688366, 40.767857>,  <38.147911, 39.635216, 40.837578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476604, 39.688366, 40.767857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.546932, 39.491581, 41.108929>,  <37.589130, 39.373508, 41.313572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.546932, 39.491581, 41.108929>,  <37.476604, 39.688366, 40.767857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546932, 39.491581, 41.108929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752522, 0.491259, 0.438606,
		-0.634663, -0.718776, -0.283838,
		0.175821, -0.491961, 0.852679,
		37.599678, 39.343994, 41.364731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890118, 39.724937, 41.135292>,  <37.476604, 39.688366, 40.767857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890118, 39.724937, 41.135292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.096745, 39.587708, 41.449097>,  <37.220718, 39.505371, 41.637379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.096745, 39.587708, 41.449097>,  <36.890118, 39.724937, 41.135292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096745, 39.587708, 41.449097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710867, 0.338916, 0.616283,
		-0.477315, -0.876034, -0.068808,
		0.516564, -0.343075, 0.784513,
		37.251713, 39.484787, 41.684452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440327, 39.287205, 41.575172>,  <36.890118, 39.724937, 41.135292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440327, 39.287205, 41.575172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732506, 39.428665, 41.808884>,  <36.907814, 39.513542, 41.949112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732506, 39.428665, 41.808884>,  <36.440327, 39.287205, 41.575172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732506, 39.428665, 41.808884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680538, 0.304726, 0.666341,
		0.057604, -0.884350, 0.463256,
		0.730445, 0.353647, 0.584281,
		36.951641, 39.534760, 41.984169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235874, 39.023182, 42.252785>,  <36.440327, 39.287205, 41.575172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235874, 39.023182, 42.252785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494522, 39.322449, 42.312286>,  <36.649712, 39.502010, 42.347988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494522, 39.322449, 42.312286>,  <36.235874, 39.023182, 42.252785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494522, 39.322449, 42.312286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438693, 0.205195, 0.874896,
		0.624047, -0.630980, 0.460900,
		0.646617, 0.748170, 0.148755,
		36.688507, 39.546898, 42.356915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446999, 39.009666, 42.952572>,  <36.235874, 39.023182, 42.252785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446999, 39.009666, 42.952572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.520248, 39.394783, 42.873070>,  <36.564198, 39.625854, 42.825371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.520248, 39.394783, 42.873070>,  <36.446999, 39.009666, 42.952572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520248, 39.394783, 42.873070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391356, 0.256853, 0.883666,
		0.901835, -0.084035, 0.423829,
		0.183121, 0.962790, -0.198752,
		36.575184, 39.683620, 42.813446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805138, 39.223217, 43.513565>,  <36.446999, 39.009666, 42.952572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805138, 39.223217, 43.513565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598896, 39.524719, 43.350590>,  <36.475151, 39.705620, 43.252804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598896, 39.524719, 43.350590>,  <36.805138, 39.223217, 43.513565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598896, 39.524719, 43.350590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397455, 0.210862, 0.893066,
		0.759065, 0.622409, 0.190861,
		-0.515607, 0.753754, -0.407438,
		36.444214, 39.750847, 43.228359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906464, 39.928024, 43.879925>,  <36.805138, 39.223217, 43.513565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906464, 39.928024, 43.879925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551163, 39.985771, 43.705494>,  <36.337982, 40.020420, 43.600834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551163, 39.985771, 43.705494>,  <36.906464, 39.928024, 43.879925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551163, 39.985771, 43.705494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320086, 0.486369, 0.813013,
		0.329469, 0.861744, -0.385808,
		-0.888254, 0.144370, -0.436076,
		36.284687, 40.029083, 43.574673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642921, 40.511673, 44.131577>,  <36.906464, 39.928024, 43.879925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642921, 40.511673, 44.131577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311501, 40.379356, 43.950874>,  <36.112648, 40.299965, 43.842453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311501, 40.379356, 43.950874>,  <36.642921, 40.511673, 44.131577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311501, 40.379356, 43.950874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543176, 0.279066, 0.791885,
		-0.135879, 0.901499, -0.410898,
		-0.828551, -0.330790, -0.451754,
		36.062935, 40.280121, 43.815350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105991, 40.986633, 44.356289>,  <36.642921, 40.511673, 44.131577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105991, 40.986633, 44.356289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.885532, 40.674591, 44.237843>,  <35.753258, 40.487366, 44.166775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.885532, 40.674591, 44.237843>,  <36.105991, 40.986633, 44.356289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885532, 40.674591, 44.237843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626135, 0.152087, 0.764739,
		-0.551539, 0.606887, -0.572270,
		-0.551145, -0.780101, -0.296112,
		35.720188, 40.440559, 44.149010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543045, 41.175854, 44.316532>,  <36.105991, 40.986633, 44.356289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543045, 41.175854, 44.316532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.453869, 40.786480, 44.337391>,  <35.400364, 40.552856, 44.349907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.453869, 40.786480, 44.337391>,  <35.543045, 41.175854, 44.316532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453869, 40.786480, 44.337391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676289, 0.192973, 0.710912,
		-0.702089, 0.123229, -0.701345,
		-0.222945, -0.973436, 0.052146,
		35.386986, 40.494450, 44.353035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.814083, 41.174858, 44.157887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940495, 40.840103, 44.336658>,  <35.016342, 40.639252, 44.443920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940495, 40.840103, 44.336658>,  <34.814083, 41.174858, 44.157887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940495, 40.840103, 44.336658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730517, 0.085929, 0.677467,
		-0.605369, -0.540586, -0.584205,
		0.316029, -0.836889, 0.446926,
		35.035305, 40.589035, 44.470737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237591, 40.723766, 44.156342>,  <34.814083, 41.174858, 44.157887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237591, 40.723766, 44.156342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.460102, 40.598656, 44.464298>,  <34.593609, 40.523590, 44.649071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.460102, 40.598656, 44.464298>,  <34.237591, 40.723766, 44.156342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460102, 40.598656, 44.464298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816826, -0.035424, 0.575796,
		-0.152823, -0.949166, -0.275190,
		0.556274, -0.312777, 0.769889,
		34.626984, 40.504822, 44.695267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018707, 40.057476, 44.478233>,  <34.237591, 40.723766, 44.156342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018707, 40.057476, 44.478233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.207687, 40.252243, 44.772091>,  <34.321075, 40.369102, 44.948406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.207687, 40.252243, 44.772091>,  <34.018707, 40.057476, 44.478233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207687, 40.252243, 44.772091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832068, -0.028423, 0.553945,
		0.290608, -0.872984, 0.391723,
		0.472451, 0.486921, 0.734641,
		34.349422, 40.398319, 44.992485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680496, 39.883675, 45.067261>,  <34.018707, 40.057476, 44.478233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680496, 39.883675, 45.067261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.906143, 40.173950, 45.224812>,  <34.041531, 40.348114, 45.319344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.906143, 40.173950, 45.224812>,  <33.680496, 39.883675, 45.067261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906143, 40.173950, 45.224812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715500, 0.191551, 0.671839,
		0.412099, -0.660819, 0.627290,
		0.564122, 0.725690, 0.393879,
		34.075378, 40.391659, 45.342976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383461, 39.784805, 45.716114>,  <33.680496, 39.883675, 45.067261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383461, 39.784805, 45.716114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.598011, 40.121460, 45.690956>,  <33.726742, 40.323452, 45.675861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.598011, 40.121460, 45.690956>,  <33.383461, 39.784805, 45.716114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598011, 40.121460, 45.690956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464057, 0.356349, 0.810966,
		0.704951, -0.405791, 0.581702,
		0.536372, 0.841635, -0.062898,
		33.758923, 40.373951, 45.672089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709957, 39.816509, 46.322525>,  <33.383461, 39.784805, 45.716114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709957, 39.816509, 46.322525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.678368, 40.187305, 46.175854>,  <33.659416, 40.409782, 46.087852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.678368, 40.187305, 46.175854>,  <33.709957, 39.816509, 46.322525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678368, 40.187305, 46.175854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345289, 0.319620, 0.882394,
		0.935168, 0.196293, 0.294839,
		-0.078971, 0.926991, -0.366677,
		33.654675, 40.465405, 46.065849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110489, 40.269161, 46.697853>,  <33.709957, 39.816509, 46.322525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110489, 40.269161, 46.697853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795834, 40.455082, 46.535290>,  <33.607040, 40.566635, 46.437752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795834, 40.455082, 46.535290>,  <34.110489, 40.269161, 46.697853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795834, 40.455082, 46.535290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189767, 0.444367, 0.875515,
		0.587532, 0.765834, -0.261351,
		-0.786635, 0.464797, -0.406410,
		33.559845, 40.594521, 46.413368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221325, 40.984051, 46.925449>,  <34.110489, 40.269161, 46.697853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221325, 40.984051, 46.925449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.846184, 40.964176, 46.788063>,  <33.621101, 40.952251, 46.705631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.846184, 40.964176, 46.788063>,  <34.221325, 40.984051, 46.925449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846184, 40.964176, 46.788063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298441, 0.620566, 0.725142,
		0.177114, 0.782579, -0.596826,
		-0.937851, -0.049684, -0.343465,
		33.564827, 40.949272, 46.685024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999886, 41.676605, 46.876884>,  <34.221325, 40.984051, 46.925449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999886, 41.676605, 46.876884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670399, 41.450020, 46.886776>,  <33.472706, 41.314068, 46.892712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670399, 41.450020, 46.886776>,  <33.999886, 41.676605, 46.876884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670399, 41.450020, 46.886776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376473, 0.579022, 0.723188,
		-0.423977, 0.586392, -0.690208,
		-0.823718, -0.566460, 0.024731,
		33.423283, 41.280083, 46.894196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481201, 42.139690, 46.763763>,  <33.999886, 41.676605, 46.876884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481201, 42.139690, 46.763763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.333054, 41.825771, 46.962524>,  <33.244164, 41.637421, 47.081779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.333054, 41.825771, 46.962524>,  <33.481201, 42.139690, 46.763763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333054, 41.825771, 46.962524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418109, 0.618541, 0.665277,
		-0.829463, 0.038642, -0.557223,
		-0.370373, -0.784802, 0.496900,
		33.221943, 41.590332, 47.111595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764404, 42.344929, 46.907890>,  <33.481201, 42.139690, 46.763763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764404, 42.344929, 46.907890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.866825, 42.048874, 47.156609>,  <32.928276, 41.871243, 47.305840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.866825, 42.048874, 47.156609>,  <32.764404, 42.344929, 46.907890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866825, 42.048874, 47.156609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392807, 0.508077, 0.766525,
		-0.883255, -0.440518, -0.160637,
		0.256052, -0.740137, 0.621800,
		32.943642, 41.826832, 47.343147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128426, 42.184723, 47.271587>,  <32.764404, 42.344929, 46.907890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128426, 42.184723, 47.271587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.423523, 42.033173, 47.495083>,  <32.600582, 41.942242, 47.629181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.423523, 42.033173, 47.495083>,  <32.128426, 42.184723, 47.271587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423523, 42.033173, 47.495083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508686, 0.232143, 0.829064,
		-0.443824, -0.895857, -0.021471,
		0.737739, -0.378881, 0.558741,
		32.644844, 41.919510, 47.662704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706284, 41.990887, 47.781517>,  <32.128426, 42.184723, 47.271587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706284, 41.990887, 47.781517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087250, 41.988613, 47.903419>,  <32.315830, 41.987247, 47.976562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087250, 41.988613, 47.903419>,  <31.706284, 41.990887, 47.781517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087250, 41.988613, 47.903419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297720, 0.197016, 0.934102,
		-0.065353, -0.980384, 0.185948,
		0.952413, -0.005686, 0.304756,
		32.372974, 41.986908, 47.994846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746908, 41.627060, 48.402954>,  <31.706284, 41.990887, 47.781517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746908, 41.627060, 48.402954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088566, 41.831749, 48.440014>,  <32.293560, 41.954563, 48.462250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088566, 41.831749, 48.440014>,  <31.746908, 41.627060, 48.402954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088566, 41.831749, 48.440014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254373, 0.255718, 0.932686,
		0.453580, -0.820215, 0.348587,
		0.854143, 0.511719, 0.092652,
		32.344810, 41.985264, 48.467808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991358, 41.346794, 49.018459>,  <31.746908, 41.627060, 48.402954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991358, 41.346794, 49.018459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.200199, 41.682865, 48.959797>,  <32.325504, 41.884510, 48.924599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.200199, 41.682865, 48.959797>,  <31.991358, 41.346794, 49.018459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200199, 41.682865, 48.959797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050148, 0.201900, 0.978122,
		0.851408, -0.503324, 0.147546,
		0.522101, 0.840180, -0.146659,
		32.356831, 41.934917, 48.915798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483887, 41.333866, 49.565929>,  <31.991358, 41.346794, 49.018459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483887, 41.333866, 49.565929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.427437, 41.703541, 49.423969>,  <32.393566, 41.925346, 49.338795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.427437, 41.703541, 49.423969>,  <32.483887, 41.333866, 49.565929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427437, 41.703541, 49.423969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127849, 0.372500, 0.919184,
		0.981701, 0.084350, -0.170727,
		-0.141129, 0.924191, -0.354899,
		32.385098, 41.980797, 49.317501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002728, 41.790436, 49.886486>,  <32.483887, 41.333866, 49.565929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002728, 41.790436, 49.886486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.710323, 42.039547, 49.774940>,  <32.534882, 42.189014, 49.708012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.710323, 42.039547, 49.774940>,  <33.002728, 41.790436, 49.886486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710323, 42.039547, 49.774940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095497, 0.498029, 0.861886,
		0.675650, 0.603417, -0.423539,
		-0.731011, 0.622780, -0.278869,
		32.491020, 42.226379, 49.691280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196690, 42.559158, 50.249519>,  <33.002728, 41.790436, 49.886486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196690, 42.559158, 50.249519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.823360, 42.596066, 50.110725>,  <32.599365, 42.618210, 50.027447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.823360, 42.596066, 50.110725>,  <33.196690, 42.559158, 50.249519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823360, 42.596066, 50.110725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271579, 0.450734, 0.850343,
		0.234860, 0.887877, -0.395621,
		-0.933320, 0.092269, -0.346988,
		32.543365, 42.623745, 50.006630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053398, 43.284073, 50.433792>,  <33.196690, 42.559158, 50.249519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053398, 43.284073, 50.433792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699760, 43.102524, 50.389297>,  <32.487576, 42.993595, 50.362598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699760, 43.102524, 50.389297>,  <33.053398, 43.284073, 50.433792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699760, 43.102524, 50.389297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338056, 0.456843, 0.822808,
		-0.322628, 0.765048, -0.557327,
		-0.884098, -0.453869, -0.111238,
		32.434532, 42.966362, 50.355927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556675, 43.817909, 50.799541>,  <33.053398, 43.284073, 50.433792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556675, 43.817909, 50.799541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371487, 43.470051, 50.730972>,  <32.260376, 43.261337, 50.689831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.371487, 43.470051, 50.730972>,  <32.556675, 43.817909, 50.799541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371487, 43.470051, 50.730972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507557, 0.101553, 0.855612,
		-0.726668, 0.483125, -0.488409,
		-0.462967, -0.869642, -0.171418,
		32.232597, 43.209160, 50.679546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846640, 43.976601, 50.994766>,  <32.556675, 43.817909, 50.799541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846640, 43.976601, 50.994766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.878548, 43.578552, 51.017971>,  <31.897694, 43.339722, 51.031895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.878548, 43.578552, 51.017971>,  <31.846640, 43.976601, 50.994766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878548, 43.578552, 51.017971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676286, -0.011273, 0.736552,
		-0.732307, -0.097991, -0.673888,
		0.079772, -0.995124, 0.058014,
		31.902479, 43.280014, 51.035374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181356, 43.672592, 50.972805>,  <31.846640, 43.976601, 50.994766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181356, 43.672592, 50.972805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.431826, 43.430321, 51.169197>,  <31.582108, 43.284958, 51.287033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.431826, 43.430321, 51.169197>,  <31.181356, 43.672592, 50.972805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431826, 43.430321, 51.169197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538052, 0.120061, 0.834317,
		-0.564274, -0.786601, -0.250706,
		0.626175, -0.605677, 0.490980,
		31.619678, 43.248619, 51.316490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835230, 43.203728, 51.442669>,  <31.181356, 43.672592, 50.972805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835230, 43.203728, 51.442669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.206623, 43.181744, 51.589584>,  <31.429459, 43.168552, 51.677734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.206623, 43.181744, 51.589584>,  <30.835230, 43.203728, 51.442669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206623, 43.181744, 51.589584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358677, 0.123708, 0.925228,
		-0.096288, -0.990795, 0.095148,
		0.928482, -0.054961, 0.367287,
		31.485168, 43.165257, 51.699772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781355, 42.632599, 51.957848>,  <30.835230, 43.203728, 51.442669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781355, 42.632599, 51.957848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.066206, 42.911396, 51.991508>,  <31.237116, 43.078674, 52.011703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.066206, 42.911396, 51.991508>,  <30.781355, 42.632599, 51.957848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066206, 42.911396, 51.991508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437166, 0.346457, 0.829972,
		0.549328, -0.627832, 0.551422,
		0.712127, 0.696990, 0.084148,
		31.279844, 43.120491, 52.016754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146223, 42.442020, 51.735161>,  <30.781355, 42.632599, 51.957848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146223, 42.442020, 51.735161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.830727, 42.218113, 51.836788>,  <29.641430, 42.083767, 51.897762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.830727, 42.218113, 51.836788>,  <30.146223, 42.442020, 51.735161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830727, 42.218113, 51.836788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157564, -0.583584, -0.796620,
		0.594191, -0.588294, 0.548495,
		-0.788740, -0.559768, 0.254067,
		29.594105, 42.050182, 51.913010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338461, 41.743439, 51.671444>,  <30.146223, 42.442020, 51.735161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338461, 41.743439, 51.671444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.938965, 41.724293, 51.665352>,  <29.699268, 41.712807, 51.661697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.938965, 41.724293, 51.665352>,  <30.338461, 41.743439, 51.671444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938965, 41.724293, 51.665352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040562, -0.589754, -0.806564,
		0.029622, -0.806164, 0.590950,
		-0.998738, -0.047862, -0.015230,
		29.639343, 41.709934, 51.660782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256311, 41.068794, 51.484440>,  <30.338461, 41.743439, 51.671444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256311, 41.068794, 51.484440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890676, 41.205067, 51.396461>,  <29.671295, 41.286831, 51.343674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890676, 41.205067, 51.396461>,  <30.256311, 41.068794, 51.484440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890676, 41.205067, 51.396461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024037, -0.586951, -0.809265,
		-0.404802, -0.734453, 0.544714,
		-0.914088, 0.340685, -0.219945,
		29.616449, 41.307274, 51.330479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872778, 40.479370, 51.232075>,  <30.256311, 41.068794, 51.484440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872778, 40.479370, 51.232075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.685404, 40.810570, 51.108795>,  <29.572979, 41.009289, 51.034828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.685404, 40.810570, 51.108795>,  <29.872778, 40.479370, 51.232075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685404, 40.810570, 51.108795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034499, -0.365721, -0.930085,
		-0.882824, -0.425052, 0.199882,
		-0.468435, 0.827997, -0.308204,
		29.544872, 41.058968, 51.016335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222654, 40.218342, 50.921543>,  <29.872778, 40.479370, 51.232075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222654, 40.218342, 50.921543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.298918, 40.586033, 50.783749>,  <29.344675, 40.806648, 50.701073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.298918, 40.586033, 50.783749>,  <29.222654, 40.218342, 50.921543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298918, 40.586033, 50.783749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003022, -0.351467, -0.936195,
		-0.981652, 0.177453, -0.069789,
		0.190659, 0.919228, -0.344482,
		29.356115, 40.861801, 50.680405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713772, 40.352470, 50.437870>,  <29.222654, 40.218342, 50.921543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713772, 40.352470, 50.437870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.038958, 40.575657, 50.371220>,  <29.234070, 40.709568, 50.331230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.038958, 40.575657, 50.371220>,  <28.713772, 40.352470, 50.437870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038958, 40.575657, 50.371220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081714, -0.392622, -0.916063,
		-0.576548, 0.731113, -0.364782,
		0.812967, 0.557962, -0.166623,
		29.282848, 40.743046, 50.321232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777811, 40.381783, 49.704987>,  <28.713772, 40.352470, 50.437870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777811, 40.381783, 49.704987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.133959, 40.516262, 49.827763>,  <29.347649, 40.596951, 49.901428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.133959, 40.516262, 49.827763>,  <28.777811, 40.381783, 49.704987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133959, 40.516262, 49.827763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411342, -0.305291, -0.858833,
		-0.195032, 0.890937, -0.410114,
		0.890371, 0.336197, 0.306939,
		29.401070, 40.617123, 49.919846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047895, 40.874603, 49.214481>,  <28.777811, 40.381783, 49.704987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047895, 40.874603, 49.214481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.366949, 40.725132, 49.403858>,  <29.558382, 40.635448, 49.517483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.366949, 40.725132, 49.403858>,  <29.047895, 40.874603, 49.214481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366949, 40.725132, 49.403858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387771, -0.283519, -0.877069,
		0.461969, 0.883167, -0.081245,
		0.797633, -0.373674, 0.473443,
		29.606239, 40.613029, 49.545891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584061, 41.131435, 48.829174>,  <29.047895, 40.874603, 49.214481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584061, 41.131435, 48.829174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.758224, 40.831799, 49.028889>,  <29.862722, 40.652016, 49.148716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.758224, 40.831799, 49.028889>,  <29.584061, 41.131435, 48.829174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758224, 40.831799, 49.028889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605614, -0.166618, -0.778120,
		0.666069, 0.641176, 0.381111,
		0.435412, -0.749087, 0.499284,
		29.888847, 40.607071, 49.178673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386021, 41.302063, 48.812500>,  <29.584061, 41.131435, 48.829174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386021, 41.302063, 48.812500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.320948, 40.917198, 48.899940>,  <30.281904, 40.686279, 48.952404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.320948, 40.917198, 48.899940>,  <30.386021, 41.302063, 48.812500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320948, 40.917198, 48.899940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683200, -0.269695, -0.678603,
		0.711880, 0.038955, 0.701220,
		-0.162681, -0.962158, 0.218604,
		30.272144, 40.628551, 48.965523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009478, 40.958073, 48.819832>,  <30.386021, 41.302063, 48.812500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009478, 40.958073, 48.819832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.750502, 40.659084, 48.760353>,  <30.595116, 40.479691, 48.724667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.750502, 40.659084, 48.760353>,  <31.009478, 40.958073, 48.819832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750502, 40.659084, 48.760353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540311, -0.312583, -0.781253,
		0.537480, -0.586160, 0.606244,
		-0.647440, -0.747468, -0.148701,
		30.556269, 40.434845, 48.715744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449223, 40.498734, 48.601738>,  <31.009478, 40.958073, 48.819832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449223, 40.498734, 48.601738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.095167, 40.352413, 48.486694>,  <30.882734, 40.264622, 48.417667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.095167, 40.352413, 48.486694>,  <31.449223, 40.498734, 48.601738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095167, 40.352413, 48.486694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430982, -0.411413, -0.803115,
		0.175459, -0.834821, 0.521813,
		-0.885138, -0.365806, -0.287606,
		30.829626, 40.242672, 48.400414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662771, 39.914124, 48.104786>,  <31.449223, 40.498734, 48.601738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662771, 39.914124, 48.104786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280333, 39.986752, 48.012775>,  <31.050869, 40.030327, 47.957569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280333, 39.986752, 48.012775>,  <31.662771, 39.914124, 48.104786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280333, 39.986752, 48.012775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144067, -0.392298, -0.908486,
		-0.255189, -0.901740, 0.348917,
		-0.956098, 0.181568, -0.230021,
		30.993504, 40.041222, 47.943768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405403, 39.262806, 47.762974>,  <31.662771, 39.914124, 48.104786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405403, 39.262806, 47.762974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.170038, 39.568172, 47.656414>,  <31.028818, 39.751392, 47.592480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.170038, 39.568172, 47.656414>,  <31.405403, 39.262806, 47.762974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170038, 39.568172, 47.656414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056415, -0.289909, -0.955390,
		-0.806589, -0.577195, 0.127519,
		-0.588415, 0.763413, -0.266400,
		30.993513, 39.797195, 47.576492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886177, 39.028904, 47.219715>,  <31.405403, 39.262806, 47.762974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886177, 39.028904, 47.219715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945858, 39.418457, 47.151268>,  <30.981667, 39.652191, 47.110199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945858, 39.418457, 47.151268>,  <30.886177, 39.028904, 47.219715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945858, 39.418457, 47.151268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036962, -0.178430, -0.983258,
		-0.988116, 0.140379, -0.062619,
		0.149202, 0.973887, -0.171121,
		30.990618, 39.710625, 47.099930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317976, 39.227917, 46.719513>,  <30.886177, 39.028904, 47.219715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317976, 39.227917, 46.719513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.582209, 39.527390, 46.697216>,  <30.740747, 39.707073, 46.683838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.582209, 39.527390, 46.697216>,  <30.317976, 39.227917, 46.719513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582209, 39.527390, 46.697216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118402, -0.177213, -0.977024,
		-0.741359, 0.638804, -0.205709,
		0.660581, 0.748682, -0.055743,
		30.780382, 39.751995, 46.680492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206018, 39.421059, 46.069195>,  <30.317976, 39.227917, 46.719513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206018, 39.421059, 46.069195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.552446, 39.600178, 46.158096>,  <30.760303, 39.707649, 46.211437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.552446, 39.600178, 46.158096>,  <30.206018, 39.421059, 46.069195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552446, 39.600178, 46.158096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284613, -0.076159, -0.955613,
		-0.410997, 0.890884, -0.193409,
		0.866070, 0.447801, 0.222255,
		30.812267, 39.734520, 46.224773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314737, 39.877895, 45.518074>,  <30.206018, 39.421059, 46.069195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314737, 39.877895, 45.518074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.660892, 39.770416, 45.687263>,  <30.868586, 39.705929, 45.788776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.660892, 39.770416, 45.687263>,  <30.314737, 39.877895, 45.518074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660892, 39.770416, 45.687263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389178, -0.171328, -0.905090,
		0.315661, 0.947865, -0.043695,
		0.865389, -0.268696, 0.422970,
		30.920509, 39.689808, 45.814156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878483, 40.120583, 45.106983>,  <30.314737, 39.877895, 45.518074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878483, 40.120583, 45.106983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.071699, 39.842743, 45.320225>,  <31.187630, 39.676041, 45.448170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.071699, 39.842743, 45.320225>,  <30.878483, 40.120583, 45.106983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071699, 39.842743, 45.320225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421656, -0.349072, -0.836872,
		0.767384, 0.629031, 0.124266,
		0.483041, -0.694600, 0.533107,
		31.216612, 39.634361, 45.480156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562702, 40.237236, 44.883308>,  <30.878483, 40.120583, 45.106983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562702, 40.237236, 44.883308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.524038, 39.861717, 45.015564>,  <31.500841, 39.636406, 45.094917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.524038, 39.861717, 45.015564>,  <31.562702, 40.237236, 44.883308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524038, 39.861717, 45.015564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564156, -0.325356, -0.758861,
		0.819991, 0.113185, 0.561074,
		-0.096657, -0.938793, 0.330643,
		31.495041, 39.580078, 45.114758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.275951, 28.440172, 41.475834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.987263, 28.646864, 41.660057>,  <40.814049, 28.770880, 41.770592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.987263, 28.646864, 41.660057>,  <41.275951, 28.440172, 41.475834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987263, 28.646864, 41.660057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310133, 0.836240, -0.452239,
		-0.618822, -0.183555, -0.763784,
		-0.721718, 0.516731, 0.460557,
		40.770748, 28.801884, 41.798225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733158, 28.685144, 41.000290>,  <41.275951, 28.440172, 41.475834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733158, 28.685144, 41.000290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.799133, 28.906445, 41.326900>,  <40.838718, 29.039225, 41.522865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.799133, 28.906445, 41.326900>,  <40.733158, 28.685144, 41.000290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799133, 28.906445, 41.326900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283751, 0.766245, -0.576501,
		-0.944606, 0.326776, -0.030603,
		0.164937, 0.553250, 0.816523,
		40.848614, 29.072420, 41.571857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405170, 29.370842, 40.916897>,  <40.733158, 28.685144, 41.000290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405170, 29.370842, 40.916897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.688023, 29.425966, 41.194305>,  <40.857735, 29.459042, 41.360752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.688023, 29.425966, 41.194305>,  <40.405170, 29.370842, 40.916897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688023, 29.425966, 41.194305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310441, 0.820727, -0.479619,
		-0.635292, 0.554451, 0.537576,
		0.707128, 0.137812, 0.693525,
		40.900162, 29.467310, 41.402363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285660, 30.018162, 41.254463>,  <40.405170, 29.370842, 40.916897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285660, 30.018162, 41.254463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.668407, 29.913641, 41.305260>,  <40.898056, 29.850927, 41.335739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.668407, 29.913641, 41.305260>,  <40.285660, 30.018162, 41.254463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668407, 29.913641, 41.305260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290505, 0.855028, -0.429575,
		0.003666, 0.447938, 0.894057,
		0.956866, -0.261303, 0.126993,
		40.955467, 29.835251, 41.343357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605530, 30.622259, 41.541210>,  <40.285660, 30.018162, 41.254463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605530, 30.622259, 41.541210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.911964, 30.406553, 41.401321>,  <41.095825, 30.277130, 41.317390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.911964, 30.406553, 41.401321>,  <40.605530, 30.622259, 41.541210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911964, 30.406553, 41.401321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470102, 0.841170, -0.267277,
		0.438306, 0.040354, 0.897919,
		0.766088, -0.539263, -0.349719,
		41.141792, 30.244774, 41.296406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073769, 31.047421, 41.825439>,  <40.605530, 30.622259, 41.541210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073769, 31.047421, 41.825439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.250683, 30.807331, 41.558872>,  <41.356831, 30.663279, 41.398930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.250683, 30.807331, 41.558872>,  <41.073769, 31.047421, 41.825439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250683, 30.807331, 41.558872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509364, 0.779689, -0.364188,
		0.738196, -0.178377, 0.650575,
		0.442284, -0.600222, -0.666422,
		41.383369, 30.627264, 41.358944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781448, 31.183382, 41.834797>,  <41.073769, 31.047421, 41.825439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781448, 31.183382, 41.834797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696415, 31.054359, 41.465851>,  <41.645393, 30.976946, 41.244484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696415, 31.054359, 41.465851>,  <41.781448, 31.183382, 41.834797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696415, 31.054359, 41.465851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241221, 0.897407, -0.369423,
		0.946901, -0.301028, -0.112966,
		-0.212583, -0.322557, -0.922370,
		41.632641, 30.957592, 41.189140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358456, 31.484354, 41.409294>,  <41.781448, 31.183382, 41.834797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358456, 31.484354, 41.409294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.078598, 31.361982, 41.151024>,  <41.910683, 31.288559, 40.996059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.078598, 31.361982, 41.151024>,  <42.358456, 31.484354, 41.409294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078598, 31.361982, 41.151024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201356, 0.782637, -0.589011,
		0.685527, -0.542112, -0.485970,
		-0.699648, -0.305930, -0.645677,
		41.868702, 31.270203, 40.957321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679070, 31.354746, 40.777458>,  <42.358456, 31.484354, 41.409294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679070, 31.354746, 40.777458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.299061, 31.432924, 40.680088>,  <42.071056, 31.479832, 40.621666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.299061, 31.432924, 40.680088>,  <42.679070, 31.354746, 40.777458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299061, 31.432924, 40.680088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312081, 0.575365, -0.756017,
		-0.007702, -0.794202, -0.607605,
		-0.950024, 0.195445, -0.243424,
		42.014053, 31.491558, 40.607059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729462, 31.304209, 40.107933>,  <42.679070, 31.354746, 40.777458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729462, 31.304209, 40.107933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380993, 31.492994, 40.162048>,  <42.171909, 31.606266, 40.194519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380993, 31.492994, 40.162048>,  <42.729462, 31.304209, 40.107933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380993, 31.492994, 40.162048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180839, 0.564642, -0.805281,
		-0.456454, -0.677075, -0.577251,
		-0.871176, 0.471963, 0.135292,
		42.119640, 31.634583, 40.202637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474941, 31.397301, 39.437408>,  <42.729462, 31.304209, 40.107933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474941, 31.397301, 39.437408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.278847, 31.661695, 39.664658>,  <42.161190, 31.820332, 39.801006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.278847, 31.661695, 39.664658>,  <42.474941, 31.397301, 39.437408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278847, 31.661695, 39.664658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223544, 0.725375, -0.651045,
		-0.842432, -0.192168, -0.503368,
		-0.490241, 0.660986, 0.568121,
		42.131775, 31.859991, 39.835094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242657, 31.906605, 38.982677>,  <42.474941, 31.397301, 39.437408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242657, 31.906605, 38.982677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.187683, 32.109196, 39.323170>,  <42.154697, 32.230751, 39.527466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.187683, 32.109196, 39.323170>,  <42.242657, 31.906605, 38.982677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187683, 32.109196, 39.323170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185822, 0.857310, -0.480093,
		-0.972924, 0.092195, -0.211940,
		-0.137436, 0.506477, 0.851230,
		42.146454, 32.261139, 39.578537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686909, 32.446167, 38.888744>,  <42.242657, 31.906605, 38.982677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686909, 32.446167, 38.888744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.944756, 32.560825, 39.172237>,  <42.099464, 32.629620, 39.342335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.944756, 32.560825, 39.172237>,  <41.686909, 32.446167, 38.888744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944756, 32.560825, 39.172237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156479, 0.857950, -0.489322,
		-0.748320, 0.426327, 0.508196,
		0.644618, 0.286647, 0.708732,
		42.138142, 32.646820, 39.384857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564552, 33.162045, 39.024212>,  <41.686909, 32.446167, 38.888744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564552, 33.162045, 39.024212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.935753, 33.117111, 39.166306>,  <42.158474, 33.090149, 39.251560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.935753, 33.117111, 39.166306>,  <41.564552, 33.162045, 39.024212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935753, 33.117111, 39.166306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235629, 0.915521, -0.326039,
		-0.288595, 0.386268, 0.876077,
		0.928004, -0.112336, 0.355230,
		42.214153, 33.083412, 39.272873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801189, 33.807560, 39.258186>,  <41.564552, 33.162045, 39.024212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801189, 33.807560, 39.258186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.150604, 33.613281, 39.245342>,  <42.360252, 33.496716, 39.237637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.150604, 33.613281, 39.245342>,  <41.801189, 33.807560, 39.258186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150604, 33.613281, 39.245342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432006, 0.803988, -0.408624,
		0.224282, 0.343077, 0.912138,
		0.873538, -0.485696, -0.032109,
		42.412666, 33.467571, 39.235710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305531, 34.405441, 39.406277>,  <41.801189, 33.807560, 39.258186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305531, 34.405441, 39.406277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.503735, 34.096714, 39.246895>,  <42.622658, 33.911476, 39.151268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.503735, 34.096714, 39.246895>,  <42.305531, 34.405441, 39.406277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503735, 34.096714, 39.246895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608890, 0.635799, -0.474354,
		0.619450, -0.007564, 0.785000,
		0.495514, -0.771817, -0.398451,
		42.652390, 33.865170, 39.127357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858383, 34.605385, 39.365055>,  <42.305531, 34.405441, 39.406277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858383, 34.605385, 39.365055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.921066, 34.308826, 39.104046>,  <42.958675, 34.130894, 38.947441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.921066, 34.308826, 39.104046>,  <42.858383, 34.605385, 39.365055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921066, 34.308826, 39.104046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656181, 0.571938, -0.492253,
		0.738153, -0.351032, 0.576114,
		0.156705, -0.741393, -0.652518,
		42.968079, 34.086407, 38.908291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556911, 34.361507, 39.482258>,  <42.858383, 34.605385, 39.365055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556911, 34.361507, 39.482258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.414867, 34.296970, 39.113941>,  <43.329639, 34.258247, 38.892952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.414867, 34.296970, 39.113941>,  <43.556911, 34.361507, 39.482258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414867, 34.296970, 39.113941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667196, 0.646183, -0.370536,
		0.654786, -0.745933, -0.121817,
		-0.355111, -0.161346, -0.920795,
		43.308334, 34.248566, 38.837704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137787, 34.323345, 39.120518>,  <43.556911, 34.361507, 39.482258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137787, 34.323345, 39.120518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.868477, 34.357002, 38.826683>,  <43.706890, 34.377197, 38.650383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.868477, 34.357002, 38.826683>,  <44.137787, 34.323345, 39.120518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868477, 34.357002, 38.826683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574393, 0.685128, -0.447966,
		0.465594, -0.723547, -0.509610,
		-0.673272, 0.084146, -0.734591,
		43.666496, 34.382248, 38.606304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401691, 34.312206, 38.493343>,  <44.137787, 34.323345, 39.120518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401691, 34.312206, 38.493343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.061016, 34.470001, 38.355358>,  <43.856609, 34.564678, 38.272568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.061016, 34.470001, 38.355358>,  <44.401691, 34.312206, 38.493343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061016, 34.470001, 38.355358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522575, 0.688625, -0.502704,
		0.039241, -0.608419, -0.792645,
		-0.851690, 0.394490, -0.344967,
		43.805508, 34.588348, 38.251869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565697, 34.515888, 37.916679>,  <44.401691, 34.312206, 38.493343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565697, 34.515888, 37.916679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.234234, 34.734947, 37.962982>,  <44.035355, 34.866383, 37.990765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.234234, 34.734947, 37.962982>,  <44.565697, 34.515888, 37.916679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234234, 34.734947, 37.962982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429591, 0.754806, -0.495700,
		-0.358847, -0.361038, -0.860744,
		-0.828662, 0.547648, 0.115762,
		43.985634, 34.899242, 37.997711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295696, 34.764893, 37.260098>,  <44.565697, 34.515888, 37.916679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295696, 34.764893, 37.260098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.167492, 35.010883, 37.548283>,  <44.090569, 35.158478, 37.721195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.167492, 35.010883, 37.548283>,  <44.295696, 34.764893, 37.260098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167492, 35.010883, 37.548283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471602, 0.763226, -0.441676,
		-0.821500, 0.198210, -0.534649,
		-0.320513, 0.614979, 0.720467,
		44.071339, 35.195377, 37.764423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872555, 34.500599, 36.772778>,  <44.295696, 34.764893, 37.260098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872555, 34.500599, 36.772778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.262604, 34.436077, 36.833595>,  <45.496632, 34.397366, 36.870087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.262604, 34.436077, 36.833595>,  <44.872555, 34.500599, 36.772778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262604, 34.436077, 36.833595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214700, -0.857878, 0.466850,
		0.055128, -0.487879, -0.871169,
		0.975123, -0.161303, 0.152040,
		45.555141, 34.387688, 36.879208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017471, 33.975033, 36.349182>,  <44.872555, 34.500599, 36.772778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017471, 33.975033, 36.349182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.304638, 33.980125, 36.627586>,  <45.476936, 33.983181, 36.794628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.304638, 33.980125, 36.627586>,  <45.017471, 33.975033, 36.349182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304638, 33.980125, 36.627586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217775, -0.945540, 0.241925,
		0.661190, -0.325256, -0.676044,
		0.717915, 0.012733, 0.696015,
		45.520012, 33.983944, 36.836391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259903, 33.259682, 36.269093>,  <45.017471, 33.975033, 36.349182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259903, 33.259682, 36.269093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.367901, 33.414963, 36.621548>,  <45.432701, 33.508133, 36.833019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.367901, 33.414963, 36.621548>,  <45.259903, 33.259682, 36.269093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.367901, 33.414963, 36.621548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179013, -0.878930, 0.442083,
		0.946074, -0.277096, -0.167815,
		0.269997, 0.388202, 0.881136,
		45.448898, 33.531422, 36.885887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553040, 32.788963, 36.593563>,  <45.259903, 33.259682, 36.269093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553040, 32.788963, 36.593563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.443436, 33.018490, 36.902275>,  <45.377674, 33.156208, 37.087502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.443436, 33.018490, 36.902275>,  <45.553040, 32.788963, 36.593563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.443436, 33.018490, 36.902275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169450, -0.818748, 0.548579,
		0.946681, 0.019538, 0.321580,
		-0.274011, 0.573821, 0.771782,
		45.361233, 33.190636, 37.133808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.943497, 32.491737, 37.174553>,  <45.553040, 32.788963, 36.593563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.943497, 32.491737, 37.174553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.641735, 32.704765, 37.328049>,  <45.460678, 32.832581, 37.420147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.641735, 32.704765, 37.328049>,  <45.943497, 32.491737, 37.174553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.641735, 32.704765, 37.328049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207105, -0.747847, 0.630740,
		0.622887, 0.396356, 0.674473,
		-0.754400, 0.532566, 0.383737,
		45.415417, 32.864536, 37.443169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.943752, 32.396652, 37.900871>,  <45.943497, 32.491737, 37.174553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.943752, 32.396652, 37.900871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.570137, 32.524540, 37.837181>,  <45.345966, 32.601273, 37.798969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.570137, 32.524540, 37.837181>,  <45.943752, 32.396652, 37.900871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570137, 32.524540, 37.837181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349846, -0.729110, 0.588224,
		0.071976, 0.605127, 0.792869,
		-0.934038, 0.319720, -0.159223,
		45.289925, 32.620457, 37.789413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.841820, 32.480335, 38.546455>,  <45.943752, 32.396652, 37.900871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.841820, 32.480335, 38.546455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.497105, 32.459435, 38.344627>,  <45.290276, 32.446896, 38.223530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.497105, 32.459435, 38.344627>,  <45.841820, 32.480335, 38.546455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.497105, 32.459435, 38.344627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350823, -0.657057, 0.667233,
		-0.366398, 0.752028, 0.547911,
		-0.861786, -0.052252, -0.504573,
		45.238567, 32.443760, 38.193256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.277485, 32.508530, 39.045193>,  <45.841820, 32.480335, 38.546455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.277485, 32.508530, 39.045193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.157085, 32.340763, 38.702618>,  <45.084846, 32.240105, 38.497070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.157085, 32.340763, 38.702618>,  <45.277485, 32.508530, 39.045193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.157085, 32.340763, 38.702618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440300, -0.735512, 0.514936,
		-0.845894, 0.532086, 0.036720,
		-0.300998, -0.419413, -0.856442,
		45.066788, 32.214939, 38.445686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669884, 32.234608, 39.201981>,  <45.277485, 32.508530, 39.045193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669884, 32.234608, 39.201981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.748329, 32.040031, 38.861412>,  <44.795395, 31.923286, 38.657070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.748329, 32.040031, 38.861412>,  <44.669884, 32.234608, 39.201981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748329, 32.040031, 38.861412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373578, -0.839863, 0.393789,
		-0.906631, 0.240845, -0.346431,
		0.196112, -0.486440, -0.851420,
		44.807163, 31.894100, 38.605988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067348, 31.816324, 38.916801>,  <44.669884, 32.234608, 39.201981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067348, 31.816324, 38.916801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.384373, 31.630548, 38.758739>,  <44.574585, 31.519083, 38.663902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.384373, 31.630548, 38.758739>,  <44.067348, 31.816324, 38.916801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384373, 31.630548, 38.758739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378610, -0.882764, 0.278176,
		-0.478023, -0.070862, -0.875484,
		0.792559, -0.464441, -0.395152,
		44.622139, 31.491217, 38.640194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885048, 31.098951, 38.935238>,  <44.067348, 31.816324, 38.916801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885048, 31.098951, 38.935238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.222775, 31.042730, 38.728405>,  <44.425411, 31.008999, 38.604305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.222775, 31.042730, 38.728405>,  <43.885048, 31.098951, 38.935238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.222775, 31.042730, 38.728405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134696, -0.989671, 0.049067,
		-0.518635, 0.028220, -0.854530,
		0.844319, -0.140550, -0.517079,
		44.476070, 31.000565, 38.573280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731949, 30.762302, 38.324051>,  <43.885048, 31.098951, 38.935238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731949, 30.762302, 38.324051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.097740, 30.686018, 38.466805>,  <44.317215, 30.640247, 38.552456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.097740, 30.686018, 38.466805>,  <43.731949, 30.762302, 38.324051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097740, 30.686018, 38.466805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231491, -0.969953, 0.074849,
		0.331882, -0.151062, -0.931147,
		0.914476, -0.190711, 0.356880,
		44.372082, 30.628805, 38.573868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891727, 30.043554, 37.985550>,  <43.731949, 30.762302, 38.324051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891727, 30.043554, 37.985550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.135326, 30.106674, 38.296474>,  <44.281487, 30.144547, 38.483028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.135326, 30.106674, 38.296474>,  <43.891727, 30.043554, 37.985550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135326, 30.106674, 38.296474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128814, -0.947323, 0.293235,
		0.782639, -0.278709, -0.556594,
		0.609002, 0.157800, 0.777313,
		44.318027, 30.154015, 38.529667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309395, 29.417309, 38.035946>,  <43.891727, 30.043554, 37.985550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309395, 29.417309, 38.035946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.343224, 29.572420, 38.403091>,  <44.363522, 29.665487, 38.623379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.343224, 29.572420, 38.403091>,  <44.309395, 29.417309, 38.035946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343224, 29.572420, 38.403091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103576, -0.912753, 0.395164,
		0.991020, -0.128487, -0.037026,
		0.084569, 0.387780, 0.917864,
		44.368595, 29.688755, 38.678452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677025, 28.915993, 38.467941>,  <44.309395, 29.417309, 38.035946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677025, 28.915993, 38.467941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.541359, 29.166151, 38.749039>,  <44.459961, 29.316246, 38.917698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.541359, 29.166151, 38.749039>,  <44.677025, 28.915993, 38.467941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.541359, 29.166151, 38.749039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172911, -0.775737, 0.606905,
		0.924701, 0.084326, 0.371237,
		-0.339160, 0.625397, 0.702744,
		44.439610, 29.353769, 38.959862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.902832, 28.792152, 39.202259>,  <44.677025, 28.915993, 38.467941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.902832, 28.792152, 39.202259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.562370, 28.987812, 39.278431>,  <44.358093, 29.105207, 39.324135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.562370, 28.987812, 39.278431>,  <44.902832, 28.792152, 39.202259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562370, 28.987812, 39.278431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388727, -0.831176, 0.397540,
		0.352737, 0.264344, 0.897607,
		-0.851157, 0.489151, 0.190429,
		44.307022, 29.134558, 39.335560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674934, 28.643646, 39.886093>,  <44.902832, 28.792152, 39.202259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674934, 28.643646, 39.886093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.336468, 28.791037, 39.732094>,  <44.133389, 28.879471, 39.639694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.336468, 28.791037, 39.732094>,  <44.674934, 28.643646, 39.886093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336468, 28.791037, 39.732094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532883, -0.593158, 0.603490,
		-0.005992, 0.715813, 0.698267,
		-0.846168, 0.368478, -0.384999,
		44.082619, 28.901581, 39.616592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285610, 28.735220, 40.498482>,  <44.674934, 28.643646, 39.886093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285610, 28.735220, 40.498482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.036385, 28.723743, 40.185825>,  <43.886848, 28.716858, 39.998230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.036385, 28.723743, 40.185825>,  <44.285610, 28.735220, 40.498482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036385, 28.723743, 40.185825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703308, -0.416740, 0.575921,
		-0.342265, 0.908573, 0.239478,
		-0.623067, -0.028691, -0.781642,
		43.849464, 28.715136, 39.951332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659298, 28.830706, 40.771812>,  <44.285610, 28.735220, 40.498482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659298, 28.830706, 40.771812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.555038, 28.686573, 40.413544>,  <43.492481, 28.600094, 40.198582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.555038, 28.686573, 40.413544>,  <43.659298, 28.830706, 40.771812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555038, 28.686573, 40.413544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812367, -0.419427, 0.405143,
		-0.521653, 0.833212, -0.183399,
		-0.260647, -0.360331, -0.895670,
		43.476845, 28.578474, 40.144844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992168, 29.143589, 40.551064>,  <43.659298, 28.830706, 40.771812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992168, 29.143589, 40.551064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.052380, 28.787605, 40.378872>,  <43.088509, 28.574015, 40.275555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.052380, 28.787605, 40.378872>,  <42.992168, 29.143589, 40.551064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052380, 28.787605, 40.378872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661794, -0.414198, 0.624875,
		-0.734418, 0.190829, -0.651318,
		0.150530, -0.889957, -0.430483,
		43.097538, 28.520618, 40.249725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.444439, 40.563869, 42.554096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215343, 40.243378, 42.484806>,  <37.077885, 40.051083, 42.443233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215343, 40.243378, 42.484806>,  <37.444439, 40.563869, 42.554096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215343, 40.243378, 42.484806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740524, -0.415084, -0.528516,
		0.351560, -0.430975, 0.831063,
		-0.572738, -0.801227, -0.173221,
		37.043522, 40.003010, 42.432838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873394, 39.962807, 42.771114>,  <37.444439, 40.563869, 42.554096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873394, 39.962807, 42.771114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586349, 39.842590, 42.519814>,  <37.414124, 39.770462, 42.369034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586349, 39.842590, 42.519814>,  <37.873394, 39.962807, 42.771114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586349, 39.842590, 42.519814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683351, -0.477927, -0.551921,
		-0.134386, -0.825386, 0.548342,
		-0.717615, -0.300539, -0.628255,
		37.371063, 39.752430, 42.331337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970943, 39.206772, 42.731335>,  <37.873394, 39.962807, 42.771114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970943, 39.206772, 42.731335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757759, 39.286049, 42.402294>,  <37.629848, 39.333614, 42.204868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757759, 39.286049, 42.402294>,  <37.970943, 39.206772, 42.731335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757759, 39.286049, 42.402294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596951, -0.600925, -0.531543,
		-0.599649, -0.774352, 0.201990,
		-0.532982, 0.198162, -0.822594,
		37.597874, 39.345509, 42.155514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840298, 38.550892, 42.455479>,  <37.970943, 39.206772, 42.731335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840298, 38.550892, 42.455479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796066, 38.802574, 42.147743>,  <37.769527, 38.953583, 41.963104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796066, 38.802574, 42.147743>,  <37.840298, 38.550892, 42.455479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796066, 38.802574, 42.147743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498982, -0.634305, -0.590486,
		-0.859529, -0.449178, -0.243822,
		-0.110576, 0.629203, -0.769335,
		37.762894, 38.991337, 41.916943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486015, 38.238781, 42.058010>,  <37.840298, 38.550892, 42.455479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486015, 38.238781, 42.058010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645287, 38.508236, 41.808960>,  <37.740849, 38.669907, 41.659531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645287, 38.508236, 41.808960>,  <37.486015, 38.238781, 42.058010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645287, 38.508236, 41.808960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307276, -0.737494, -0.601402,
		-0.864311, 0.048148, -0.500648,
		0.398181, 0.673636, -0.622629,
		37.764740, 38.710327, 41.622169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128593, 38.256897, 41.357933>,  <37.486015, 38.238781, 42.058010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128593, 38.256897, 41.357933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469833, 38.443146, 41.263771>,  <37.674580, 38.554893, 41.207275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469833, 38.443146, 41.263771>,  <37.128593, 38.256897, 41.357933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469833, 38.443146, 41.263771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274295, -0.784053, -0.556797,
		-0.443824, 0.410436, -0.796595,
		0.853102, 0.465621, -0.235401,
		37.725765, 38.582832, 41.193150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264317, 38.061047, 40.667141>,  <37.128593, 38.256897, 41.357933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264317, 38.061047, 40.667141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612720, 38.200962, 40.805119>,  <37.821762, 38.284912, 40.887905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612720, 38.200962, 40.805119>,  <37.264317, 38.061047, 40.667141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612720, 38.200962, 40.805119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491141, -0.635550, -0.595698,
		0.010862, 0.688277, -0.725367,
		0.871012, 0.349787, 0.344944,
		37.874023, 38.305897, 40.908604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657230, 38.026562, 40.130379>,  <37.264317, 38.061047, 40.667141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657230, 38.026562, 40.130379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922295, 38.041588, 40.429569>,  <38.081333, 38.050602, 40.609085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922295, 38.041588, 40.429569>,  <37.657230, 38.026562, 40.130379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922295, 38.041588, 40.429569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617482, -0.592557, -0.517293,
		0.423786, 0.804652, -0.415861,
		0.662662, 0.037565, 0.747976,
		38.121094, 38.052856, 40.653961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341228, 38.074482, 39.871159>,  <37.657230, 38.026562, 40.130379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341228, 38.074482, 39.871159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381950, 37.921852, 40.238644>,  <38.406384, 37.830276, 40.459137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381950, 37.921852, 40.238644>,  <38.341228, 38.074482, 39.871159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381950, 37.921852, 40.238644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615236, -0.701572, -0.359558,
		0.781742, 0.601831, 0.163335,
		0.101802, -0.381572, 0.918716,
		38.412491, 37.807381, 40.514259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107044, 37.832561, 39.828773>,  <38.341228, 38.074482, 39.871159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107044, 37.832561, 39.828773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931103, 37.662891, 40.145409>,  <38.825539, 37.561089, 40.335388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931103, 37.662891, 40.145409>,  <39.107044, 37.832561, 39.828773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931103, 37.662891, 40.145409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435553, -0.871583, -0.225028,
		0.785382, 0.245798, 0.568118,
		-0.439851, -0.424178, 0.791583,
		38.799149, 37.535637, 40.382885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635788, 37.515972, 40.140732>,  <39.107044, 37.832561, 39.828773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635788, 37.515972, 40.140732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280468, 37.355453, 40.230064>,  <39.067276, 37.259140, 40.283665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280468, 37.355453, 40.230064>,  <39.635788, 37.515972, 40.140732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280468, 37.355453, 40.230064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344822, -0.903982, -0.252813,
		0.303338, -0.147566, 0.941387,
		-0.888304, -0.401299, 0.223328,
		39.013977, 37.235065, 40.297062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700237, 36.935627, 40.691971>,  <39.635788, 37.515972, 40.140732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700237, 36.935627, 40.691971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399048, 36.858452, 40.440319>,  <39.218334, 36.812145, 40.289330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399048, 36.858452, 40.440319>,  <39.700237, 36.935627, 40.691971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399048, 36.858452, 40.440319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282487, -0.958251, -0.044227,
		-0.594330, -0.211022, 0.776042,
		-0.752976, -0.192937, -0.629128,
		39.173157, 36.800571, 40.251579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196468, 36.439140, 40.997631>,  <39.700237, 36.935627, 40.691971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196468, 36.439140, 40.997631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204067, 36.428162, 40.597855>,  <39.208626, 36.421574, 40.357986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204067, 36.428162, 40.597855>,  <39.196468, 36.439140, 40.997631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204067, 36.428162, 40.597855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421212, -0.906365, 0.032896,
		-0.906763, -0.421602, -0.005660,
		0.018999, -0.027445, -0.999443,
		39.209766, 36.419930, 40.298023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778496, 35.829609, 40.697845>,  <39.196468, 36.439140, 40.997631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778496, 35.829609, 40.697845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097591, 35.949596, 40.488605>,  <39.289047, 36.021587, 40.363060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097591, 35.949596, 40.488605>,  <38.778496, 35.829609, 40.697845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097591, 35.949596, 40.488605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382058, -0.922583, 0.053595,
		-0.466525, -0.242609, -0.850586,
		0.797738, 0.299969, -0.523098,
		39.336914, 36.039589, 40.331676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234875, 35.243206, 40.525181>,  <38.778496, 35.829609, 40.697845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234875, 35.243206, 40.525181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498871, 35.536537, 40.459888>,  <39.657269, 35.712536, 40.420715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498871, 35.536537, 40.459888>,  <39.234875, 35.243206, 40.525181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498871, 35.536537, 40.459888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741766, -0.670529, -0.013214,
		-0.119139, -0.112356, -0.986500,
		0.659992, 0.733326, -0.163229,
		39.696869, 35.756535, 40.410919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934639, 35.411690, 40.929539>,  <39.234875, 35.243206, 40.525181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934639, 35.411690, 40.929539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164673, 35.626102, 41.176746>,  <40.302692, 35.754749, 41.325069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164673, 35.626102, 41.176746>,  <39.934639, 35.411690, 40.929539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164673, 35.626102, 41.176746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393855, -0.480724, 0.783443,
		0.717047, -0.693956, -0.065338,
		0.575084, 0.536032, 0.618020,
		40.337196, 35.786911, 41.362152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381165, 34.930325, 41.439388>,  <39.934639, 35.411690, 40.929539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381165, 34.930325, 41.439388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300560, 35.290134, 41.594433>,  <40.252197, 35.506020, 41.687458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300560, 35.290134, 41.594433>,  <40.381165, 34.930325, 41.439388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300560, 35.290134, 41.594433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459505, -0.436298, 0.773627,
		0.865013, -0.022213, 0.501258,
		-0.201513, 0.899528, 0.387611,
		40.240105, 35.559994, 41.710716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416580, 34.883289, 42.182144>,  <40.381165, 34.930325, 41.439388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416580, 34.883289, 42.182144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245148, 35.244228, 42.163891>,  <40.142288, 35.460793, 42.152939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245148, 35.244228, 42.163891>,  <40.416580, 34.883289, 42.182144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245148, 35.244228, 42.163891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335709, -0.112157, 0.935265,
		0.838817, 0.416159, 0.350996,
		-0.428585, 0.902348, -0.045629,
		40.116573, 35.514935, 42.150204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597298, 35.356804, 42.847744>,  <40.416580, 34.883289, 42.182144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597298, 35.356804, 42.847744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263218, 35.491776, 42.674034>,  <40.062771, 35.572758, 42.569809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263218, 35.491776, 42.674034>,  <40.597298, 35.356804, 42.847744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263218, 35.491776, 42.674034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479524, -0.060176, 0.875463,
		0.269270, 0.939427, 0.212062,
		-0.835195, 0.337424, -0.434274,
		40.012661, 35.593002, 42.543751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290585, 35.820477, 43.351067>,  <40.597298, 35.356804, 42.847744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290585, 35.820477, 43.351067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977703, 35.745705, 43.113342>,  <39.789974, 35.700840, 42.970707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977703, 35.745705, 43.113342>,  <40.290585, 35.820477, 43.351067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977703, 35.745705, 43.113342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590123, -0.083572, 0.802976,
		-0.199770, 0.978812, -0.044942,
		-0.782207, -0.186932, -0.594314,
		39.743042, 35.689625, 42.935047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731403, 36.198086, 43.678440>,  <40.290585, 35.820477, 43.351067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731403, 36.198086, 43.678440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539066, 35.960045, 43.420868>,  <39.423664, 35.817219, 43.266323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539066, 35.960045, 43.420868>,  <39.731403, 36.198086, 43.678440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539066, 35.960045, 43.420868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791099, -0.022239, 0.611284,
		-0.378097, 0.803343, -0.460091,
		-0.480839, -0.595102, -0.643932,
		39.394814, 35.781513, 43.227688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038094, 36.506172, 43.594120>,  <39.731403, 36.198086, 43.678440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038094, 36.506172, 43.594120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010384, 36.128052, 43.466621>,  <38.993759, 35.901180, 43.390121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010384, 36.128052, 43.466621>,  <39.038094, 36.506172, 43.594120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010384, 36.128052, 43.466621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831735, -0.121693, 0.541671,
		-0.550834, 0.302637, -0.777813,
		-0.069275, -0.945305, -0.318746,
		38.989601, 35.844460, 43.370998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352402, 36.373016, 43.394466>,  <39.038094, 36.506172, 43.594120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352402, 36.373016, 43.394466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493099, 36.004677, 43.461761>,  <38.577518, 35.783672, 43.502140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493099, 36.004677, 43.461761>,  <38.352402, 36.373016, 43.394466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493099, 36.004677, 43.461761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835539, -0.227814, 0.499975,
		-0.422076, -0.316434, -0.849542,
		0.351747, -0.920853, 0.168238,
		38.598625, 35.728420, 43.512234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803001, 35.848248, 43.104790>,  <38.352402, 36.373016, 43.394466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803001, 35.848248, 43.104790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019501, 35.680241, 43.396168>,  <38.149399, 35.579437, 43.570995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019501, 35.680241, 43.396168>,  <37.803001, 35.848248, 43.104790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019501, 35.680241, 43.396168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824861, -0.096997, 0.556952,
		-0.163276, -0.902315, -0.398960,
		0.541244, -0.420024, 0.728447,
		38.181873, 35.554234, 43.614704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293301, 35.466816, 43.468571>,  <37.803001, 35.848248, 43.104790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293301, 35.466816, 43.468571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603371, 35.426292, 43.717999>,  <37.789413, 35.401978, 43.867657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603371, 35.426292, 43.717999>,  <37.293301, 35.466816, 43.468571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603371, 35.426292, 43.717999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627503, -0.237726, 0.741436,
		0.073123, -0.966034, -0.247853,
		0.775173, -0.101312, 0.623572,
		37.835922, 35.395897, 43.905071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199062, 34.793407, 43.832699>,  <37.293301, 35.466816, 43.468571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199062, 34.793407, 43.832699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437916, 35.020687, 44.059177>,  <37.581226, 35.157055, 44.195065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437916, 35.020687, 44.059177>,  <37.199062, 34.793407, 43.832699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437916, 35.020687, 44.059177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484028, -0.307629, 0.819195,
		0.639646, -0.763224, 0.091330,
		0.597134, 0.568201, 0.566196,
		37.617058, 35.191147, 44.229034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452484, 34.368641, 44.457130>,  <37.199062, 34.793407, 43.832699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452484, 34.368641, 44.457130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504307, 34.753365, 44.553574>,  <37.535400, 34.984200, 44.611439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504307, 34.753365, 44.553574>,  <37.452484, 34.368641, 44.457130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504307, 34.753365, 44.553574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503831, -0.145577, 0.851447,
		0.854032, -0.231787, 0.465730,
		0.129555, 0.961812, 0.241109,
		37.543175, 35.041908, 44.625908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611771, 34.362026, 45.167141>,  <37.452484, 34.368641, 44.457130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611771, 34.362026, 45.167141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495304, 34.732796, 45.072460>,  <37.425423, 34.955257, 45.015652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495304, 34.732796, 45.072460>,  <37.611771, 34.362026, 45.167141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495304, 34.732796, 45.072460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555356, 0.037695, 0.830758,
		0.778975, 0.373342, 0.503799,
		-0.291166, 0.926927, -0.236702,
		37.407955, 35.010876, 45.001450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568527, 33.945511, 45.902672>,  <37.611771, 34.362026, 45.167141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568527, 33.945511, 45.902672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372585, 33.623890, 46.037453>,  <37.255020, 33.430916, 46.118320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372585, 33.623890, 46.037453>,  <37.568527, 33.945511, 45.902672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372585, 33.623890, 46.037453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186515, -0.474209, -0.860429,
		0.851619, -0.358637, 0.382261,
		-0.489853, -0.804056, 0.336954,
		37.225628, 33.382675, 46.138538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958881, 33.372643, 45.729961>,  <37.568527, 33.945511, 45.902672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958881, 33.372643, 45.729961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597649, 33.214634, 45.797359>,  <37.380909, 33.119827, 45.837799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597649, 33.214634, 45.797359>,  <37.958881, 33.372643, 45.729961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597649, 33.214634, 45.797359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119552, -0.608080, -0.784823,
		0.412484, -0.688618, 0.596374,
		-0.903086, -0.395025, 0.168497,
		37.326721, 33.096127, 45.847908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999001, 32.601910, 45.453308>,  <37.958881, 33.372643, 45.729961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999001, 32.601910, 45.453308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608391, 32.682018, 45.485050>,  <37.374027, 32.730083, 45.504093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608391, 32.682018, 45.485050>,  <37.999001, 32.601910, 45.453308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608391, 32.682018, 45.485050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180023, -0.556361, -0.811206,
		-0.118313, -0.806445, 0.579352,
		-0.976521, 0.200272, 0.079354,
		37.315434, 32.742100, 45.508858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588116, 31.996323, 45.267838>,  <37.999001, 32.601910, 45.453308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588116, 31.996323, 45.267838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337807, 32.303852, 45.215195>,  <37.187622, 32.488369, 45.183609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337807, 32.303852, 45.215195>,  <37.588116, 31.996323, 45.267838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337807, 32.303852, 45.215195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383288, -0.450042, -0.806568,
		-0.679336, -0.454286, 0.576304,
		-0.625773, 0.768822, -0.131608,
		37.150074, 32.534500, 45.175713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041435, 31.637514, 44.966896>,  <37.588116, 31.996323, 45.267838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041435, 31.637514, 44.966896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014263, 32.027248, 44.881054>,  <36.997959, 32.261089, 44.829548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014263, 32.027248, 44.881054>,  <37.041435, 31.637514, 44.966896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014263, 32.027248, 44.881054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500623, -0.219352, -0.837414,
		-0.862996, 0.050554, 0.502675,
		-0.067928, 0.974335, -0.214608,
		36.993885, 32.319550, 44.816673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394039, 31.695065, 44.710396>,  <37.041435, 31.637514, 44.966896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394039, 31.695065, 44.710396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565071, 32.036514, 44.591396>,  <36.667690, 32.241383, 44.519997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565071, 32.036514, 44.591396>,  <36.394039, 31.695065, 44.710396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565071, 32.036514, 44.591396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536756, -0.025065, -0.843365,
		-0.727373, 0.520287, 0.447470,
		0.427576, 0.853623, -0.297499,
		36.693344, 32.292603, 44.502148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910149, 32.072010, 44.290817>,  <36.394039, 31.695065, 44.710396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910149, 32.072010, 44.290817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265347, 32.210106, 44.169312>,  <36.478466, 32.292965, 44.096409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265347, 32.210106, 44.169312>,  <35.910149, 32.072010, 44.290817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265347, 32.210106, 44.169312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355810, 0.097373, -0.929472,
		-0.291312, 0.933449, 0.209307,
		0.887996, 0.345240, -0.303764,
		36.531746, 32.313679, 44.078182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773270, 32.711014, 43.937843>,  <35.910149, 32.072010, 44.290817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773270, 32.711014, 43.937843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145809, 32.620476, 43.823746>,  <36.369331, 32.566154, 43.755287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145809, 32.620476, 43.823746>,  <35.773270, 32.711014, 43.937843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145809, 32.620476, 43.823746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220712, 0.272160, -0.936598,
		0.289628, 0.935252, 0.203517,
		0.931344, -0.226346, -0.285246,
		36.425213, 32.552570, 43.738171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935341, 33.165016, 43.444122>,  <35.773270, 32.711014, 43.937843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935341, 33.165016, 43.444122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180553, 32.857700, 43.370445>,  <36.327682, 32.673313, 43.326241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180553, 32.857700, 43.370445>,  <35.935341, 33.165016, 43.444122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180553, 32.857700, 43.370445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161789, 0.106121, -0.981103,
		0.773314, 0.631249, -0.059244,
		0.613033, -0.768286, -0.184194,
		36.364464, 32.627216, 43.315186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177704, 33.369186, 42.795704>,  <35.935341, 33.165016, 43.444122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177704, 33.369186, 42.795704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243137, 32.976715, 42.836761>,  <36.282398, 32.741234, 42.861397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243137, 32.976715, 42.836761>,  <36.177704, 33.369186, 42.795704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243137, 32.976715, 42.836761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112585, -0.121931, -0.986133,
		0.980084, 0.149763, -0.130412,
		0.163587, -0.981175, 0.102641,
		36.292213, 32.682362, 42.867554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701801, 33.133465, 42.297634>,  <36.177704, 33.369186, 42.795704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701801, 33.133465, 42.297634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482937, 32.811699, 42.390186>,  <36.351620, 32.618641, 42.445717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482937, 32.811699, 42.390186>,  <36.701801, 33.133465, 42.297634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482937, 32.811699, 42.390186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280574, -0.084178, -0.956134,
		0.788605, -0.588075, -0.179639,
		-0.547157, -0.804414, 0.231382,
		36.318790, 32.570374, 42.459602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989315, 32.468723, 41.969437>,  <36.701801, 33.133465, 42.297634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989315, 32.468723, 41.969437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594315, 32.462833, 42.032211>,  <36.357315, 32.459301, 42.069878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594315, 32.462833, 42.032211>,  <36.989315, 32.468723, 41.969437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594315, 32.462833, 42.032211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149244, -0.232995, -0.960958,
		0.050714, -0.972366, 0.227885,
		-0.987499, -0.014723, 0.156936,
		36.298065, 32.458416, 42.079292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.056850, 34.707188, 49.835430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.699287, 34.582176, 49.706898>,  <36.484749, 34.507172, 49.629780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.699287, 34.582176, 49.706898>,  <37.056850, 34.707188, 49.835430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699287, 34.582176, 49.706898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440115, -0.476020, -0.761383,
		0.084991, -0.822030, 0.563066,
		-0.893910, -0.312525, -0.321330,
		36.431114, 34.488419, 49.610500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083092, 34.012627, 49.690842>,  <37.056850, 34.707188, 49.835430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083092, 34.012627, 49.690842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.757969, 34.123154, 49.485714>,  <36.562893, 34.189472, 49.362637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.757969, 34.123154, 49.485714>,  <37.083092, 34.012627, 49.690842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757969, 34.123154, 49.485714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258610, -0.617662, -0.742707,
		-0.521973, -0.736302, 0.430585,
		-0.812813, 0.276319, -0.512818,
		36.514126, 34.206051, 49.331867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900997, 33.445953, 49.284546>,  <37.083092, 34.012627, 49.690842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900997, 33.445953, 49.284546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.710930, 33.742607, 49.095150>,  <36.596889, 33.920597, 48.981510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.710930, 33.742607, 49.095150>,  <36.900997, 33.445953, 49.284546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710930, 33.742607, 49.095150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309334, -0.362974, -0.878955,
		-0.823727, -0.564120, -0.056938,
		-0.475170, 0.741632, -0.473494,
		36.568378, 33.965096, 48.953102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401524, 33.139938, 48.778240>,  <36.900997, 33.445953, 49.284546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401524, 33.139938, 48.778240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.494068, 33.510101, 48.658176>,  <36.549595, 33.732201, 48.586136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.494068, 33.510101, 48.658176>,  <36.401524, 33.139938, 48.778240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494068, 33.510101, 48.658176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176975, -0.343418, -0.922358,
		-0.956636, 0.160274, -0.243227,
		0.231359, 0.925406, -0.300162,
		36.563477, 33.787724, 48.568127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091679, 33.143066, 48.240852>,  <36.401524, 33.139938, 48.778240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091679, 33.143066, 48.240852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.342113, 33.452477, 48.201496>,  <36.492374, 33.638123, 48.177883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.342113, 33.452477, 48.201496>,  <36.091679, 33.143066, 48.240852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342113, 33.452477, 48.201496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072542, -0.183416, -0.980355,
		-0.776371, 0.606650, -0.170947,
		0.626087, 0.773520, -0.098391,
		36.529942, 33.684532, 48.171978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924320, 33.470684, 47.706818>,  <36.091679, 33.143066, 48.240852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924320, 33.470684, 47.706818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.304089, 33.591385, 47.741566>,  <36.531948, 33.663807, 47.762413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.304089, 33.591385, 47.741566>,  <35.924320, 33.470684, 47.706818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304089, 33.591385, 47.741566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166327, -0.248623, -0.954213,
		-0.266339, 0.920397, -0.286237,
		0.949420, 0.301753, 0.086869,
		36.588913, 33.681911, 47.767628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010738, 33.792259, 47.071499>,  <35.924320, 33.470684, 47.706818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010738, 33.792259, 47.071499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.377068, 33.743294, 47.224483>,  <36.596867, 33.713913, 47.316273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.377068, 33.743294, 47.224483>,  <36.010738, 33.792259, 47.071499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377068, 33.743294, 47.224483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348639, -0.230241, -0.908537,
		0.199277, 0.965403, -0.168182,
		0.915827, -0.122416, 0.382459,
		36.651817, 33.706570, 47.339222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492008, 34.317852, 46.705631>,  <36.010738, 33.792259, 47.071499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492008, 34.317852, 46.705631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.693073, 33.996773, 46.834011>,  <36.813713, 33.804127, 46.911037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.693073, 33.996773, 46.834011>,  <36.492008, 34.317852, 46.705631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693073, 33.996773, 46.834011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197450, -0.254842, -0.946609,
		0.841630, 0.539199, 0.030392,
		0.502665, -0.802696, 0.320947,
		36.843872, 33.755962, 46.930294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889606, 34.162685, 46.143063>,  <36.492008, 34.317852, 46.705631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889606, 34.162685, 46.143063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946106, 33.828968, 46.356228>,  <36.980007, 33.628738, 46.484127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946106, 33.828968, 46.356228>,  <36.889606, 34.162685, 46.143063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946106, 33.828968, 46.356228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276801, -0.483559, -0.830392,
		0.950489, 0.264806, 0.162630,
		0.141251, -0.834295, 0.532916,
		36.988480, 33.578678, 46.516102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461498, 34.716438, 45.983196>,  <36.889606, 34.162685, 46.143063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461498, 34.716438, 45.983196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.305077, 34.943115, 45.693111>,  <37.211224, 35.079121, 45.519062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.305077, 34.943115, 45.693111>,  <37.461498, 34.716438, 45.983196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305077, 34.943115, 45.693111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583475, 0.456735, 0.671529,
		0.711782, 0.685747, 0.152045,
		-0.391055, 0.566696, -0.725212,
		37.187759, 35.113125, 45.475548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524811, 35.381531, 46.190903>,  <37.461498, 34.716438, 45.983196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524811, 35.381531, 46.190903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.218658, 35.408894, 45.934929>,  <37.034966, 35.425312, 45.781345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.218658, 35.408894, 45.934929>,  <37.524811, 35.381531, 46.190903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218658, 35.408894, 45.934929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573535, 0.378602, 0.726442,
		0.291974, 0.923029, -0.250540,
		-0.765382, 0.068408, -0.639931,
		36.989044, 35.429417, 45.742950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285393, 35.948933, 46.314468>,  <37.524811, 35.381531, 46.190903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285393, 35.948933, 46.314468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.979450, 35.775520, 46.123875>,  <36.795883, 35.671471, 46.009518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.979450, 35.775520, 46.123875>,  <37.285393, 35.948933, 46.314468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979450, 35.775520, 46.123875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644118, 0.503141, 0.576161,
		-0.010048, 0.747594, -0.664080,
		-0.764860, -0.433535, -0.476483,
		36.749992, 35.645458, 45.980930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945839, 36.483284, 46.043186>,  <37.285393, 35.948933, 46.314468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945839, 36.483284, 46.043186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.688690, 36.177612, 46.064140>,  <36.534401, 35.994209, 46.076714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.688690, 36.177612, 46.064140>,  <36.945839, 36.483284, 46.043186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688690, 36.177612, 46.064140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622669, 0.561203, 0.545283,
		-0.446092, 0.317931, -0.836613,
		-0.642873, -0.764180, 0.052382,
		36.495827, 35.948357, 46.079853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244980, 36.839794, 45.975746>,  <36.945839, 36.483284, 46.043186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244980, 36.839794, 45.975746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.200680, 36.477722, 46.139881>,  <36.174099, 36.260479, 46.238361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.200680, 36.477722, 46.139881>,  <36.244980, 36.839794, 45.975746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200680, 36.477722, 46.139881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629791, 0.383317, 0.675597,
		-0.768829, -0.183608, -0.612527,
		-0.110747, -0.905183, 0.410340,
		36.167458, 36.206169, 46.262981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527805, 36.747501, 45.955517>,  <36.244980, 36.839794, 45.975746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527805, 36.747501, 45.955517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.674088, 36.500748, 46.234291>,  <35.761856, 36.352695, 46.401554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.674088, 36.500748, 46.234291>,  <35.527805, 36.747501, 45.955517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674088, 36.500748, 46.234291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571043, 0.442585, 0.691396,
		-0.734965, -0.650822, -0.190415,
		0.365701, -0.616887, 0.696931,
		35.783798, 36.315681, 46.443371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004837, 36.646595, 46.414185>,  <35.527805, 36.747501, 45.955517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004837, 36.646595, 46.414185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.293896, 36.475193, 46.631130>,  <35.467331, 36.372353, 46.761299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.293896, 36.475193, 46.631130>,  <35.004837, 36.646595, 46.414185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293896, 36.475193, 46.631130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390590, 0.394222, 0.831883,
		-0.570280, -0.813002, 0.117513,
		0.722649, -0.428506, 0.542367,
		35.510689, 36.346642, 46.793839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660217, 36.448761, 47.040108>,  <35.004837, 36.646595, 46.414185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660217, 36.448761, 47.040108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.048908, 36.496880, 47.121380>,  <35.282124, 36.525749, 47.170143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.048908, 36.496880, 47.121380>,  <34.660217, 36.448761, 47.040108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048908, 36.496880, 47.121380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236085, 0.479220, 0.845347,
		0.004322, -0.869412, 0.494069,
		0.971722, 0.120296, 0.203184,
		35.340424, 36.532970, 47.182335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660095, 36.683224, 47.774197>,  <34.660217, 36.448761, 47.040108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660095, 36.683224, 47.774197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.046967, 36.752232, 47.699574>,  <35.279091, 36.793636, 47.654800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.046967, 36.752232, 47.699574>,  <34.660095, 36.683224, 47.774197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046967, 36.752232, 47.699574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026519, 0.661650, 0.749344,
		0.252710, -0.729696, 0.635359,
		0.967179, 0.172517, -0.186557,
		35.337120, 36.803986, 47.643608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098690, 36.713676, 48.445019>,  <34.660095, 36.683224, 47.774197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098690, 36.713676, 48.445019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288788, 36.930656, 48.167923>,  <35.402847, 37.060844, 48.001663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288788, 36.930656, 48.167923>,  <35.098690, 36.713676, 48.445019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288788, 36.930656, 48.167923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115712, 0.741968, 0.660374,
		0.872213, -0.393996, 0.289847,
		0.475242, 0.542449, -0.692744,
		35.431362, 37.093391, 47.960098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637150, 36.979248, 48.712418>,  <35.098690, 36.713676, 48.445019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637150, 36.979248, 48.712418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.569408, 37.229149, 48.407524>,  <35.528763, 37.379089, 48.224586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.569408, 37.229149, 48.407524>,  <35.637150, 36.979248, 48.712418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569408, 37.229149, 48.407524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154753, 0.780669, 0.605481,
		0.973330, -0.015417, -0.228892,
		-0.169354, 0.624755, -0.762234,
		35.518600, 37.416576, 48.178852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981197, 37.500977, 48.923183>,  <35.637150, 36.979248, 48.712418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981197, 37.500977, 48.923183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.720436, 37.649132, 48.658504>,  <35.563980, 37.738026, 48.499699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.720436, 37.649132, 48.658504>,  <35.981197, 37.500977, 48.923183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720436, 37.649132, 48.658504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063443, 0.842899, 0.534318,
		0.755645, 0.390302, -0.525989,
		-0.651901, 0.370385, -0.661695,
		35.524864, 37.760246, 48.459995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255486, 38.124523, 48.918678>,  <35.981197, 37.500977, 48.923183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255486, 38.124523, 48.918678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.886200, 38.147800, 48.766739>,  <35.664627, 38.161766, 48.675575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.886200, 38.147800, 48.766739>,  <36.255486, 38.124523, 48.918678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886200, 38.147800, 48.766739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172693, 0.820206, 0.545380,
		0.343292, 0.569101, -0.747178,
		-0.923216, 0.058192, -0.379850,
		35.609234, 38.165257, 48.652782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151283, 38.829128, 48.734894>,  <36.255486, 38.124523, 48.918678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151283, 38.829128, 48.734894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.785316, 38.671131, 48.768154>,  <35.565739, 38.576332, 48.788113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.785316, 38.671131, 48.768154>,  <36.151283, 38.829128, 48.734894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785316, 38.671131, 48.768154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241342, 0.700418, 0.671691,
		-0.323557, 0.594470, -0.736150,
		-0.914912, -0.394995, 0.083154,
		35.510841, 38.552631, 48.793102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.703175, 37.567341, 46.785400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.009159, 37.451000, 47.015266>,  <30.192749, 37.381195, 47.153187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.009159, 37.451000, 47.015266>,  <29.703175, 37.567341, 46.785400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009159, 37.451000, 47.015266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535761, -0.207867, -0.818384,
		0.357483, 0.933914, -0.003182,
		0.764962, -0.290853, 0.574663,
		30.238647, 37.363743, 47.187664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198135, 37.761463, 46.464542>,  <29.703175, 37.567341, 46.785400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198135, 37.761463, 46.464542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.388466, 37.508667, 46.709221>,  <30.502665, 37.356987, 46.856030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.388466, 37.508667, 46.709221>,  <30.198135, 37.761463, 46.464542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388466, 37.508667, 46.709221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590864, -0.285482, -0.754573,
		0.651514, 0.720475, 0.237582,
		0.475825, -0.631994, 0.611698,
		30.531214, 37.319069, 46.892731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982124, 37.910194, 46.500725>,  <30.198135, 37.761463, 46.464542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982124, 37.910194, 46.500725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.921549, 37.533974, 46.622330>,  <30.885204, 37.308239, 46.695293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.921549, 37.533974, 46.622330>,  <30.982124, 37.910194, 46.500725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921549, 37.533974, 46.622330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737209, -0.312354, -0.599131,
		0.658475, 0.133391, 0.740687,
		-0.151438, -0.940554, 0.304015,
		30.876118, 37.251808, 46.713535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662184, 37.553005, 46.613628>,  <30.982124, 37.910194, 46.500725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662184, 37.553005, 46.613628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.403759, 37.251976, 46.562660>,  <31.248705, 37.071358, 46.532078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.403759, 37.251976, 46.562660>,  <31.662184, 37.553005, 46.613628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403759, 37.251976, 46.562660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620217, -0.420294, -0.662332,
		0.444900, -0.506935, 0.738296,
		-0.646061, -0.752575, -0.127421,
		31.209940, 37.026203, 46.524433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984867, 37.052303, 46.216480>,  <31.662184, 37.553005, 46.613628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984867, 37.052303, 46.216480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.646551, 36.838936, 46.220711>,  <31.443562, 36.710915, 46.223248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.646551, 36.838936, 46.220711>,  <31.984867, 37.052303, 46.216480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646551, 36.838936, 46.220711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356368, -0.579595, -0.732851,
		0.397044, -0.616067, 0.680307,
		-0.845788, -0.533414, 0.010578,
		31.392815, 36.678913, 46.223885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149559, 36.355408, 46.238636>,  <31.984867, 37.052303, 46.216480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149559, 36.355408, 46.238636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.788763, 36.365917, 46.066250>,  <31.572287, 36.372223, 45.962818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.788763, 36.365917, 46.066250>,  <32.149559, 36.355408, 46.238636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788763, 36.365917, 46.066250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390637, -0.375502, -0.840476,
		-0.183912, -0.926449, 0.328434,
		-0.901986, 0.026275, -0.430965,
		31.518167, 36.373798, 45.936962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975685, 35.648895, 46.015858>,  <32.149559, 36.355408, 46.238636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975685, 35.648895, 46.015858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.762671, 35.911892, 45.802647>,  <31.634861, 36.069691, 45.674721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.762671, 35.911892, 45.802647>,  <31.975685, 35.648895, 46.015858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762671, 35.911892, 45.802647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409252, -0.351222, -0.842114,
		-0.740889, -0.666598, -0.082040,
		-0.532537, 0.657488, -0.533023,
		31.602909, 36.109138, 45.642738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624893, 35.225937, 45.624004>,  <31.975685, 35.648895, 46.015858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624893, 35.225937, 45.624004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.618315, 35.583027, 45.443886>,  <31.614367, 35.797283, 45.335815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.618315, 35.583027, 45.443886>,  <31.624893, 35.225937, 45.624004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618315, 35.583027, 45.443886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232968, -0.434540, -0.870000,
		-0.972345, -0.119214, -0.200829,
		-0.016448, 0.892728, -0.450296,
		31.613380, 35.850845, 45.308796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237276, 35.121883, 45.006172>,  <31.624893, 35.225937, 45.624004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237276, 35.121883, 45.006172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.446466, 35.454838, 44.932823>,  <31.571981, 35.654610, 44.888813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.446466, 35.454838, 44.932823>,  <31.237276, 35.121883, 45.006172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446466, 35.454838, 44.932823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084670, -0.264809, -0.960576,
		-0.848131, 0.486833, -0.208967,
		0.522977, 0.832388, -0.183373,
		31.603359, 35.704556, 44.877811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928532, 35.430447, 44.451984>,  <31.237276, 35.121883, 45.006172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928532, 35.430447, 44.451984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.305485, 35.561672, 44.425800>,  <31.531656, 35.640408, 44.410091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.305485, 35.561672, 44.425800>,  <30.928532, 35.430447, 44.451984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305485, 35.561672, 44.425800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001444, -0.191676, -0.981457,
		-0.334529, 0.925004, -0.180158,
		0.942384, 0.328066, -0.065457,
		31.588200, 35.660091, 44.406162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961176, 35.711464, 43.794327>,  <30.928532, 35.430447, 44.451984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961176, 35.711464, 43.794327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.334444, 35.661633, 43.929188>,  <31.558405, 35.631733, 44.010105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.334444, 35.661633, 43.929188>,  <30.961176, 35.711464, 43.794327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334444, 35.661633, 43.929188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297725, -0.257594, -0.919242,
		0.201369, 0.958188, -0.203288,
		0.933172, -0.124583, 0.337148,
		31.614395, 35.624256, 44.030331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390249, 36.020905, 43.314556>,  <30.961176, 35.711464, 43.794327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390249, 36.020905, 43.314556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.682924, 35.835464, 43.514439>,  <31.858530, 35.724201, 43.634369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.682924, 35.835464, 43.514439>,  <31.390249, 36.020905, 43.314556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682924, 35.835464, 43.514439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463433, -0.199256, -0.863439,
		0.499863, 0.863348, 0.069056,
		0.731688, -0.463603, 0.499704,
		31.902431, 35.696384, 43.664349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042137, 36.311291, 43.095951>,  <31.390249, 36.020905, 43.314556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042137, 36.311291, 43.095951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.127151, 35.947678, 43.239338>,  <32.178158, 35.729511, 43.325371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.127151, 35.947678, 43.239338>,  <32.042137, 36.311291, 43.095951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127151, 35.947678, 43.239338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533446, -0.199419, -0.821990,
		0.818697, 0.365921, 0.442535,
		0.212533, -0.909029, 0.358463,
		32.190910, 35.674969, 43.346878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723785, 36.195419, 42.866997>,  <32.042137, 36.311291, 43.095951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723785, 36.195419, 42.866997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529530, 35.852112, 42.933357>,  <32.412975, 35.646126, 42.973175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529530, 35.852112, 42.933357>,  <32.723785, 36.195419, 42.866997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529530, 35.852112, 42.933357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371287, -0.374336, -0.849717,
		0.791392, -0.351056, 0.500458,
		-0.485638, -0.858273, 0.165904,
		32.383839, 35.594631, 42.983128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471786, 36.287937, 43.076218>,  <32.723785, 36.195419, 42.866997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471786, 36.287937, 43.076218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.468971, 36.596413, 42.821590>,  <33.467281, 36.781498, 42.668816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.468971, 36.596413, 42.821590>,  <33.471786, 36.287937, 43.076218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468971, 36.596413, 42.821590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606602, 0.502784, 0.615826,
		0.794974, 0.390476, 0.464268,
		-0.007039, 0.771192, -0.636564,
		33.466858, 36.827770, 42.630623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075481, 36.752316, 43.478233>,  <33.471786, 36.287937, 43.076218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075481, 36.752316, 43.478233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149570, 36.976147, 43.155109>,  <33.194023, 37.110447, 42.961235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149570, 36.976147, 43.155109>,  <33.075481, 36.752316, 43.478233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149570, 36.976147, 43.155109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520461, 0.753139, 0.402370,
		0.833553, 0.345905, 0.430741,
		0.185227, 0.559581, -0.807812,
		33.205139, 37.144020, 42.912766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394794, 37.471497, 43.717175>,  <33.075481, 36.752316, 43.478233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394794, 37.471497, 43.717175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.203060, 37.509510, 43.368187>,  <33.088020, 37.532318, 43.158794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.203060, 37.509510, 43.368187>,  <33.394794, 37.471497, 43.717175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203060, 37.509510, 43.368187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534130, 0.757220, 0.375929,
		0.696376, 0.646210, -0.312206,
		-0.479338, 0.095029, -0.872470,
		33.059258, 37.538017, 43.106445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584396, 38.095051, 43.575470>,  <33.394794, 37.471497, 43.717175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584396, 38.095051, 43.575470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.242317, 37.989002, 43.397324>,  <33.037071, 37.925373, 43.290436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.242317, 37.989002, 43.397324>,  <33.584396, 38.095051, 43.575470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242317, 37.989002, 43.397324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447194, 0.811825, 0.375443,
		0.262022, 0.520243, -0.812830,
		-0.855197, -0.265119, -0.445365,
		32.985760, 37.909466, 43.263714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227844, 38.721474, 43.417034>,  <33.584396, 38.095051, 43.575470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227844, 38.721474, 43.417034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.932270, 38.453262, 43.390594>,  <32.754925, 38.292336, 43.374729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.932270, 38.453262, 43.390594>,  <33.227844, 38.721474, 43.417034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932270, 38.453262, 43.390594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626429, 0.647567, 0.433871,
		-0.248115, 0.362012, -0.898547,
		-0.738936, -0.670526, -0.066103,
		32.710590, 38.252106, 43.370762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617672, 39.131981, 43.261360>,  <33.227844, 38.721474, 43.417034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617672, 39.131981, 43.261360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.478947, 38.794769, 43.425808>,  <32.395714, 38.592442, 43.524475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.478947, 38.794769, 43.425808>,  <32.617672, 39.131981, 43.261360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478947, 38.794769, 43.425808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496123, 0.536870, 0.682373,
		-0.795980, 0.032689, -0.604440,
		-0.346812, -0.843032, 0.411120,
		32.374905, 38.541859, 43.549145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902905, 39.266891, 43.436630>,  <32.617672, 39.131981, 43.261360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902905, 39.266891, 43.436630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982990, 38.935905, 43.646473>,  <32.031040, 38.737312, 43.772377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982990, 38.935905, 43.646473>,  <31.902905, 39.266891, 43.436630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982990, 38.935905, 43.646473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274786, 0.466528, 0.840740,
		-0.940429, -0.312482, -0.133971,
		0.200215, -0.827470, 0.524602,
		32.043056, 38.687664, 43.803852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307125, 39.074883, 43.823666>,  <31.902905, 39.266891, 43.436630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307125, 39.074883, 43.823666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.594933, 38.907661, 44.045486>,  <31.767618, 38.807331, 44.178577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.594933, 38.907661, 44.045486>,  <31.307125, 39.074883, 43.823666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594933, 38.907661, 44.045486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432898, 0.354410, 0.828851,
		-0.543037, -0.836439, 0.074033,
		0.719520, -0.418048, 0.554550,
		31.810789, 38.782246, 44.211853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985542, 38.752274, 44.498821>,  <31.307125, 39.074883, 43.823666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985542, 38.752274, 44.498821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.378931, 38.774784, 44.567661>,  <31.614964, 38.788292, 44.608963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.378931, 38.774784, 44.567661>,  <30.985542, 38.752274, 44.498821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378931, 38.774784, 44.567661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178482, 0.141337, 0.973739,
		0.030474, -0.988361, 0.149045,
		0.983471, 0.056276, 0.172097,
		31.673973, 38.791668, 44.619289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063087, 38.520638, 45.167934>,  <30.985542, 38.752274, 44.498821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063087, 38.520638, 45.167934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.375866, 38.758545, 45.093307>,  <31.563534, 38.901291, 45.048531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.375866, 38.758545, 45.093307>,  <31.063087, 38.520638, 45.167934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375866, 38.758545, 45.093307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081123, 0.393848, 0.915589,
		0.618045, -0.700806, 0.356217,
		0.781946, 0.594773, -0.186565,
		31.610449, 38.936977, 45.037338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506992, 38.397087, 45.631531>,  <31.063087, 38.520638, 45.167934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506992, 38.397087, 45.631531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.534439, 38.773346, 45.498585>,  <31.550907, 38.999104, 45.418816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.534439, 38.773346, 45.498585>,  <31.506992, 38.397087, 45.631531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534439, 38.773346, 45.498585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297785, 0.337275, 0.893068,
		0.952164, 0.037692, 0.303255,
		0.068619, 0.940651, -0.332365,
		31.555025, 39.055542, 45.398876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927389, 38.796684, 46.139420>,  <31.506992, 38.397087, 45.631531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927389, 38.796684, 46.139420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.698683, 39.048889, 45.929451>,  <31.561459, 39.200211, 45.803471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.698683, 39.048889, 45.929451>,  <31.927389, 38.796684, 46.139420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698683, 39.048889, 45.929451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331560, 0.407659, 0.850812,
		0.750434, 0.660508, -0.024033,
		-0.571766, 0.630510, -0.524920,
		31.527153, 39.238041, 45.771976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135059, 39.495152, 46.265656>,  <31.927389, 38.796684, 46.139420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135059, 39.495152, 46.265656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.757832, 39.548954, 46.143982>,  <31.531496, 39.581234, 46.070976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.757832, 39.548954, 46.143982>,  <32.135059, 39.495152, 46.265656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757832, 39.548954, 46.143982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150732, 0.642429, 0.751375,
		0.296483, 0.754449, -0.585581,
		-0.943068, 0.134505, -0.304189,
		31.474911, 39.589306, 46.052727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043671, 40.130825, 46.426804>,  <32.135059, 39.495152, 46.265656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043671, 40.130825, 46.426804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.667593, 40.007610, 46.368633>,  <31.441946, 39.933681, 46.333733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.667593, 40.007610, 46.368633>,  <32.043671, 40.130825, 46.426804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667593, 40.007610, 46.368633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303579, 0.564066, 0.767899,
		-0.154508, 0.766124, -0.623844,
		-0.940195, -0.308033, -0.145427,
		31.385534, 39.915199, 46.325005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259354, 40.944916, 46.220592>,  <32.043671, 40.130825, 46.426804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259354, 40.944916, 46.220592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.636448, 40.930630, 46.353241>,  <32.862705, 40.922058, 46.432831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.636448, 40.930630, 46.353241>,  <32.259354, 40.944916, 46.220592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636448, 40.930630, 46.353241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308320, -0.285950, -0.907288,
		0.127229, 0.957579, -0.258565,
		0.942736, -0.035712, 0.331622,
		32.919270, 40.919914, 46.452728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765190, 41.356472, 45.719349>,  <32.259354, 40.944916, 46.220592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765190, 41.356472, 45.719349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.012764, 41.131168, 45.938313>,  <33.161308, 40.995987, 46.069691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.012764, 41.131168, 45.938313>,  <32.765190, 41.356472, 45.719349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012764, 41.131168, 45.938313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553503, -0.181704, -0.812785,
		0.557278, 0.806051, 0.199305,
		0.618932, -0.563263, 0.547411,
		33.198444, 40.962189, 46.102535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482716, 41.625298, 45.512840>,  <32.765190, 41.356472, 45.719349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482716, 41.625298, 45.512840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.555748, 41.272575, 45.686775>,  <33.599567, 41.060944, 45.791138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.555748, 41.272575, 45.686775>,  <33.482716, 41.625298, 45.512840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555748, 41.272575, 45.686775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762956, -0.151885, -0.628355,
		0.620131, 0.446492, 0.645045,
		0.182583, -0.881803, 0.434842,
		33.610523, 41.008034, 45.817226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196491, 41.602272, 45.736092>,  <33.482716, 41.625298, 45.512840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196491, 41.602272, 45.736092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.065891, 41.226181, 45.697365>,  <33.987530, 41.000526, 45.674129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.065891, 41.226181, 45.697365>,  <34.196491, 41.602272, 45.736092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065891, 41.226181, 45.697365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801804, -0.221272, -0.555113,
		0.500507, -0.258877, 0.826121,
		-0.326503, -0.940224, -0.096820,
		33.967941, 40.944115, 45.668320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761322, 41.250385, 45.951385>,  <34.196491, 41.602272, 45.736092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761322, 41.250385, 45.951385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.549377, 40.984028, 45.741306>,  <34.422211, 40.824215, 45.615257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.549377, 40.984028, 45.741306>,  <34.761322, 41.250385, 45.951385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549377, 40.984028, 45.741306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814079, -0.225758, -0.535079,
		0.237737, -0.711071, 0.661710,
		-0.529865, -0.665892, -0.525197,
		34.390419, 40.784260, 45.583748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204288, 40.752956, 45.823948>,  <34.761322, 41.250385, 45.951385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204288, 40.752956, 45.823948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.930035, 40.646904, 45.552769>,  <34.765484, 40.583271, 45.390060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.930035, 40.646904, 45.552769>,  <35.204288, 40.752956, 45.823948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930035, 40.646904, 45.552769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724798, -0.335136, -0.601956,
		-0.067607, -0.904096, 0.421948,
		-0.685636, -0.265131, -0.677945,
		34.724342, 40.567364, 45.349384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454926, 40.165470, 45.585453>,  <35.204288, 40.752956, 45.823948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454926, 40.165470, 45.585453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.176575, 40.239174, 45.307804>,  <35.009563, 40.283398, 45.141216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.176575, 40.239174, 45.307804>,  <35.454926, 40.165470, 45.585453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176575, 40.239174, 45.307804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579664, -0.426474, -0.694341,
		-0.423972, -0.885530, 0.189957,
		-0.695872, 0.184270, -0.694123,
		34.967812, 40.294453, 45.099567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314056, 39.516571, 45.126141>,  <35.454926, 40.165470, 45.585453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314056, 39.516571, 45.126141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.219372, 39.854561, 44.934311>,  <35.162560, 40.057354, 44.819214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.219372, 39.854561, 44.934311>,  <35.314056, 39.516571, 45.126141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219372, 39.854561, 44.934311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524840, -0.304176, -0.794997,
		-0.817624, -0.439885, -0.371473,
		-0.236714, 0.844973, -0.479571,
		35.148357, 40.108051, 44.790440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262684, 39.232574, 44.509171>,  <35.314056, 39.516571, 45.126141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262684, 39.232574, 44.509171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.300045, 39.628017, 44.461967>,  <35.322460, 39.865284, 44.433647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.300045, 39.628017, 44.461967>,  <35.262684, 39.232574, 44.509171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300045, 39.628017, 44.461967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374403, -0.144704, -0.915905,
		-0.922550, 0.041366, -0.383655,
		0.093404, 0.988610, -0.118009,
		35.328068, 39.924599, 44.426563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173031, 39.298683, 43.810379>,  <35.262684, 39.232574, 44.509171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173031, 39.298683, 43.810379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.323917, 39.654957, 43.911873>,  <35.414448, 39.868721, 43.972771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.323917, 39.654957, 43.911873>,  <35.173031, 39.298683, 43.810379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323917, 39.654957, 43.911873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378549, 0.101758, -0.919971,
		-0.845227, 0.443080, -0.298784,
		0.377217, 0.890688, 0.253736,
		35.437084, 39.922165, 43.987995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907009, 39.762444, 43.274792>,  <35.173031, 39.298683, 43.810379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907009, 39.762444, 43.274792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.247494, 39.897438, 43.435566>,  <35.451782, 39.978436, 43.532032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.247494, 39.897438, 43.435566>,  <34.907009, 39.762444, 43.274792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247494, 39.897438, 43.435566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406735, 0.059802, -0.911586,
		-0.331681, 0.939430, -0.086362,
		0.851207, 0.337482, 0.401935,
		35.502857, 39.998684, 43.556145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225937, 40.359428, 42.896801>,  <34.907009, 39.762444, 43.274792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225937, 40.359428, 42.896801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.540630, 40.256870, 43.121414>,  <35.729446, 40.195335, 43.256180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.540630, 40.256870, 43.121414>,  <35.225937, 40.359428, 42.896801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540630, 40.256870, 43.121414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599384, 0.099736, -0.794224,
		0.147629, 0.961413, 0.232144,
		0.786731, -0.256394, 0.561531,
		35.776649, 40.179951, 43.289875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797337, 40.653793, 42.565140>,  <35.225937, 40.359428, 42.896801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797337, 40.653793, 42.565140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.006287, 40.403496, 42.796852>,  <36.131657, 40.253319, 42.935879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.006287, 40.403496, 42.796852>,  <35.797337, 40.653793, 42.565140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006287, 40.403496, 42.796852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671438, -0.116918, -0.731779,
		0.525634, 0.771218, 0.359072,
		0.522379, -0.625742, 0.579281,
		36.163002, 40.215775, 42.970638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498379, 40.852589, 42.351444>,  <35.797337, 40.653793, 42.565140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498379, 40.852589, 42.351444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559265, 40.492912, 42.515530>,  <36.595798, 40.277107, 42.613983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559265, 40.492912, 42.515530>,  <36.498379, 40.852589, 42.351444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559265, 40.492912, 42.515530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712312, -0.187920, -0.676238,
		0.685158, 0.395140, 0.611902,
		0.152220, -0.899194, 0.410218,
		36.604931, 40.223152, 42.638596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.603348, 36.686649, 26.839493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.434332, 36.346470, 26.714144>,  <28.332922, 36.142365, 26.638933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.434332, 36.346470, 26.714144>,  <28.603348, 36.686649, 26.839493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434332, 36.346470, 26.714144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608702, 0.010100, 0.793335,
		-0.671523, 0.525967, -0.521935,
		-0.422539, -0.850445, -0.313375,
		28.307570, 36.091335, 26.620131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912674, 36.794342, 26.892954>,  <28.603348, 36.686649, 26.839493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912674, 36.794342, 26.892954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.956854, 36.396797, 26.895622>,  <27.983362, 36.158272, 26.897223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.956854, 36.396797, 26.895622>,  <27.912674, 36.794342, 26.892954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956854, 36.396797, 26.895622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400371, -0.038351, 0.915550,
		-0.909672, -0.103792, -0.402148,
		0.110450, -0.993859, 0.006669,
		27.989988, 36.098640, 26.897623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497725, 36.640381, 27.448648>,  <27.912674, 36.794342, 26.892954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497725, 36.640381, 27.448648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.650743, 36.289459, 27.332724>,  <27.742554, 36.078907, 27.263168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.650743, 36.289459, 27.332724>,  <27.497725, 36.640381, 27.448648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650743, 36.289459, 27.332724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439781, -0.448756, 0.777953,
		-0.812559, -0.170149, -0.557492,
		0.382546, -0.877307, -0.289812,
		27.765507, 36.026268, 27.245779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968782, 36.084953, 27.453886>,  <27.497725, 36.640381, 27.448648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968782, 36.084953, 27.453886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325274, 35.915771, 27.519398>,  <27.539167, 35.814262, 27.558704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325274, 35.915771, 27.519398>,  <26.968782, 36.084953, 27.453886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325274, 35.915771, 27.519398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305007, -0.291633, 0.906599,
		-0.335690, -0.857937, -0.388916,
		0.891226, -0.422959, 0.163779,
		27.592642, 35.788887, 27.568533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787563, 35.523430, 27.943844>,  <26.968782, 36.084953, 27.453886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787563, 35.523430, 27.943844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.178764, 35.595581, 27.985744>,  <27.413485, 35.638874, 28.010885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.178764, 35.595581, 27.985744>,  <26.787563, 35.523430, 27.943844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178764, 35.595581, 27.985744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047376, -0.296976, 0.953709,
		0.203140, -0.937693, -0.281898,
		0.978003, 0.180381, 0.104752,
		27.472166, 35.649696, 28.017170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089108, 34.978390, 28.236313>,  <26.787563, 35.523430, 27.943844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089108, 34.978390, 28.236313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.363447, 35.256908, 28.320957>,  <27.528051, 35.424019, 28.371744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.363447, 35.256908, 28.320957>,  <27.089108, 34.978390, 28.236313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363447, 35.256908, 28.320957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064234, -0.231722, 0.970659,
		0.724904, -0.679318, -0.114200,
		0.685848, 0.696299, 0.211612,
		27.569202, 35.465797, 28.384441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540068, 34.661858, 28.587320>,  <27.089108, 34.978390, 28.236313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540068, 34.661858, 28.587320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.626400, 35.046463, 28.655336>,  <27.678200, 35.277225, 28.696146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.626400, 35.046463, 28.655336>,  <27.540068, 34.661858, 28.587320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626400, 35.046463, 28.655336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045649, -0.164019, 0.985400,
		0.975363, -0.220442, 0.008492,
		0.215831, 0.961511, 0.170041,
		27.691149, 35.334915, 28.706348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123615, 34.763508, 29.026258>,  <27.540068, 34.661858, 28.587320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123615, 34.763508, 29.026258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.921202, 35.104885, 29.076164>,  <27.799753, 35.309711, 29.106108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.921202, 35.104885, 29.076164>,  <28.123615, 34.763508, 29.026258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921202, 35.104885, 29.076164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055476, -0.112149, 0.992142,
		0.860728, 0.508978, 0.009405,
		-0.506033, 0.853442, 0.124766,
		27.769392, 35.360916, 29.113594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460108, 35.172081, 29.504225>,  <28.123615, 34.763508, 29.026258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460108, 35.172081, 29.504225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.082655, 35.304211, 29.512638>,  <27.856184, 35.383488, 29.517687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.082655, 35.304211, 29.512638>,  <28.460108, 35.172081, 29.504225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082655, 35.304211, 29.512638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013766, -0.024325, 0.999609,
		0.330710, 0.943553, 0.018406,
		-0.943632, 0.330328, 0.021034,
		27.799566, 35.403309, 29.518948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428785, 35.514343, 30.116686>,  <28.460108, 35.172081, 29.504225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428785, 35.514343, 30.116686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043238, 35.522713, 30.010464>,  <27.811909, 35.527733, 29.946730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043238, 35.522713, 30.010464>,  <28.428785, 35.514343, 30.116686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043238, 35.522713, 30.010464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266152, -0.116794, 0.956829,
		-0.010996, 0.992936, 0.118143,
		-0.963868, 0.020922, -0.265556,
		27.754078, 35.528988, 29.930798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131817, 36.113762, 30.466194>,  <28.428785, 35.514343, 30.116686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131817, 36.113762, 30.466194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.848667, 35.847748, 30.370998>,  <27.678778, 35.688137, 30.313881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.848667, 35.847748, 30.370998>,  <28.131817, 36.113762, 30.466194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848667, 35.847748, 30.370998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279603, -0.045585, 0.959033,
		-0.648643, 0.745416, -0.153678,
		-0.707873, -0.665039, -0.237989,
		27.636305, 35.648235, 30.299603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488272, 36.429127, 30.656630>,  <28.131817, 36.113762, 30.466194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488272, 36.429127, 30.656630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.405199, 36.037861, 30.659555>,  <27.355354, 35.803101, 30.661310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.405199, 36.037861, 30.659555>,  <27.488272, 36.429127, 30.656630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405199, 36.037861, 30.659555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308825, 0.072659, 0.948340,
		-0.928168, 0.194696, -0.317174,
		-0.207683, -0.978169, 0.007313,
		27.342894, 35.744411, 30.661749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954792, 36.334698, 31.081577>,  <27.488272, 36.429127, 30.656630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954792, 36.334698, 31.081577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.103996, 35.964897, 31.050180>,  <27.193520, 35.743015, 31.031343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.103996, 35.964897, 31.050180>,  <26.954792, 36.334698, 31.081577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.103996, 35.964897, 31.050180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258117, -0.184654, 0.948303,
		-0.891200, -0.333470, -0.307507,
		0.373013, -0.924501, -0.078490,
		27.215900, 35.687546, 31.026634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515734, 35.886841, 31.504797>,  <26.954792, 36.334698, 31.081577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515734, 35.886841, 31.504797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.838482, 35.657707, 31.447081>,  <27.032131, 35.520226, 31.412451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.838482, 35.657707, 31.447081>,  <26.515734, 35.886841, 31.504797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838482, 35.657707, 31.447081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055251, -0.316373, 0.947025,
		-0.588137, -0.756155, -0.286922,
		0.806872, -0.572833, -0.144293,
		27.080544, 35.485859, 31.403793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346001, 35.274574, 31.967243>,  <26.515734, 35.886841, 31.504797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346001, 35.274574, 31.967243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.731655, 35.224869, 31.873434>,  <26.963047, 35.195045, 31.817148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.731655, 35.224869, 31.873434>,  <26.346001, 35.274574, 31.967243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731655, 35.224869, 31.873434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161460, -0.426695, 0.889866,
		-0.210651, -0.895818, -0.391327,
		0.964135, -0.124268, -0.234522,
		27.020895, 35.187588, 31.803078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465996, 34.597389, 32.313988>,  <26.346001, 35.274574, 31.967243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465996, 34.597389, 32.313988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.817739, 34.781189, 32.264038>,  <27.028786, 34.891468, 32.234070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.817739, 34.781189, 32.264038>,  <26.465996, 34.597389, 32.313988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817739, 34.781189, 32.264038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306780, -0.346148, 0.886604,
		0.364166, -0.817951, -0.445352,
		0.879357, 0.459496, -0.124875,
		27.081547, 34.919037, 32.226574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868576, 33.999630, 32.315105>,  <26.465996, 34.597389, 32.313988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868576, 33.999630, 32.315105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.066433, 34.328743, 32.427078>,  <27.185146, 34.526211, 32.494263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.066433, 34.328743, 32.427078>,  <26.868576, 33.999630, 32.315105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066433, 34.328743, 32.427078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290891, -0.460255, 0.838777,
		0.818970, -0.333464, -0.467001,
		0.494642, 0.822780, 0.279934,
		27.214825, 34.575577, 32.511059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429207, 33.732948, 32.800041>,  <26.868576, 33.999630, 32.315105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429207, 33.732948, 32.800041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.366711, 34.122723, 32.864624>,  <27.329212, 34.356586, 32.903374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.366711, 34.122723, 32.864624>,  <27.429207, 33.732948, 32.800041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366711, 34.122723, 32.864624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100795, -0.146878, 0.984006,
		0.982563, 0.170015, -0.075270,
		-0.156240, 0.974434, 0.161454,
		27.319839, 34.415054, 32.913059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931152, 33.913788, 33.263515>,  <27.429207, 33.732948, 32.800041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931152, 33.913788, 33.263515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.650003, 34.196953, 33.291325>,  <27.481314, 34.366852, 33.308010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.650003, 34.196953, 33.291325>,  <27.931152, 33.913788, 33.263515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650003, 34.196953, 33.291325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076295, -0.022148, 0.996839,
		0.707214, 0.705954, -0.038442,
		-0.702871, 0.707912, 0.069524,
		27.439142, 34.409325, 33.312183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275784, 34.335072, 33.783119>,  <27.931152, 33.913788, 33.263515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275784, 34.335072, 33.783119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.568638, 34.445873, 33.534203>,  <28.744350, 34.512356, 33.384853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.568638, 34.445873, 33.534203>,  <28.275784, 34.335072, 33.783119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568638, 34.445873, 33.534203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352360, 0.627828, 0.694028,
		0.582940, -0.727393, 0.362051,
		0.732136, 0.277005, -0.622290,
		28.788279, 34.528973, 33.347515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851637, 34.476631, 34.177189>,  <28.275784, 34.335072, 33.783119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851637, 34.476631, 34.177189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.907898, 34.685764, 33.840889>,  <28.941654, 34.811245, 33.639107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.907898, 34.685764, 33.840889>,  <28.851637, 34.476631, 34.177189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907898, 34.685764, 33.840889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360528, 0.763842, 0.535318,
		0.922083, -0.378407, -0.081060,
		0.140651, 0.522832, -0.840752,
		28.950092, 34.842613, 33.588665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585543, 34.693657, 33.968502>,  <28.851637, 34.476631, 34.177189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585543, 34.693657, 33.968502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.312414, 34.964134, 33.857853>,  <29.148537, 35.126419, 33.791466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.312414, 34.964134, 33.857853>,  <29.585543, 34.693657, 33.968502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312414, 34.964134, 33.857853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450303, 0.687687, 0.569486,
		0.575309, 0.264295, -0.774059,
		-0.682823, 0.676192, -0.276619,
		29.107567, 35.166992, 33.774868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000513, 34.299622, 33.511276>,  <29.585543, 34.693657, 33.968502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000513, 34.299622, 33.511276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.237499, 34.007103, 33.646442>,  <30.379692, 33.831593, 33.727543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.237499, 34.007103, 33.646442>,  <30.000513, 34.299622, 33.511276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237499, 34.007103, 33.646442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547126, 0.057383, -0.835081,
		0.591301, 0.679641, 0.434109,
		0.592466, -0.731297, 0.337918,
		30.415239, 33.787712, 33.747818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608803, 34.580853, 33.497196>,  <30.000513, 34.299622, 33.511276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608803, 34.580853, 33.497196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.663454, 34.185165, 33.476131>,  <30.696245, 33.947754, 33.463493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.663454, 34.185165, 33.476131>,  <30.608803, 34.580853, 33.497196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663454, 34.185165, 33.476131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520389, 0.116907, -0.845889,
		0.842928, 0.088167, 0.530753,
		0.136628, -0.989222, -0.052663,
		30.704443, 33.888397, 33.460331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275307, 34.506432, 33.261990>,  <30.608803, 34.580853, 33.497196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275307, 34.506432, 33.261990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.149979, 34.128571, 33.223083>,  <31.074781, 33.901855, 33.199738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.149979, 34.128571, 33.223083>,  <31.275307, 34.506432, 33.261990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149979, 34.128571, 33.223083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422316, -0.046862, -0.905236,
		0.850576, -0.324708, 0.413625,
		-0.313321, -0.944653, -0.097270,
		31.055983, 33.845177, 33.193901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919704, 34.002472, 33.322132>,  <31.275307, 34.506432, 33.261990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919704, 34.002472, 33.322132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.594570, 33.898163, 33.113789>,  <31.399490, 33.835579, 32.988781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.594570, 33.898163, 33.113789>,  <31.919704, 34.002472, 33.322132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594570, 33.898163, 33.113789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489020, 0.180338, -0.853427,
		0.316483, -0.948407, -0.019062,
		-0.812834, -0.260773, -0.520863,
		31.350719, 33.819931, 32.957531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237114, 33.824780, 32.665180>,  <31.919704, 34.002472, 33.322132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237114, 33.824780, 32.665180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.844513, 33.845779, 32.591530>,  <31.608953, 33.858379, 32.547340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.844513, 33.845779, 32.591530>,  <32.237114, 33.824780, 32.665180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844513, 33.845779, 32.591530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190675, 0.355144, -0.915159,
		0.017347, -0.933336, -0.358584,
		-0.981500, 0.052498, -0.184125,
		31.550062, 33.861530, 32.536293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174278, 33.573811, 31.995354>,  <32.237114, 33.824780, 32.665180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174278, 33.573811, 31.995354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.836039, 33.775497, 32.065464>,  <31.633095, 33.896511, 32.107529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.836039, 33.775497, 32.065464>,  <32.174278, 33.573811, 31.995354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836039, 33.775497, 32.065464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105876, 0.480238, -0.870725,
		-0.523213, -0.717727, -0.459474,
		-0.845599, 0.504221, 0.175276,
		31.582359, 33.926765, 32.118046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805016, 33.371258, 31.424200>,  <32.174278, 33.573811, 31.995354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805016, 33.371258, 31.424200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.678606, 33.717285, 31.580036>,  <31.602760, 33.924904, 31.673538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.678606, 33.717285, 31.580036>,  <31.805016, 33.371258, 31.424200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678606, 33.717285, 31.580036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093769, 0.437102, -0.894511,
		-0.944107, -0.246154, -0.219251,
		-0.316023, 0.865073, 0.389589,
		31.583799, 33.976807, 31.696913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261499, 33.608635, 31.004725>,  <31.805016, 33.371258, 31.424200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261499, 33.608635, 31.004725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.413681, 33.937096, 31.174883>,  <31.504990, 34.134171, 31.276978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.413681, 33.937096, 31.174883>,  <31.261499, 33.608635, 31.004725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413681, 33.937096, 31.174883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100914, 0.494103, -0.863527,
		-0.919278, 0.285603, 0.270850,
		0.380454, 0.821153, 0.425397,
		31.527817, 34.183441, 31.302502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224262, 34.060726, 30.507511>,  <31.261499, 33.608635, 31.004725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224262, 34.060726, 30.507511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.409683, 34.298866, 30.770016>,  <31.520937, 34.441750, 30.927519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.409683, 34.298866, 30.770016>,  <31.224262, 34.060726, 30.507511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409683, 34.298866, 30.770016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278426, 0.605257, -0.745750,
		-0.841187, 0.528415, 0.114809,
		0.463554, 0.595350, 0.656259,
		31.548750, 34.477470, 30.966894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986561, 34.752613, 30.431547>,  <31.224262, 34.060726, 30.507511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986561, 34.752613, 30.431547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.349789, 34.787136, 30.595480>,  <31.567726, 34.807850, 30.693840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.349789, 34.787136, 30.595480>,  <30.986561, 34.752613, 30.431547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349789, 34.787136, 30.595480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250510, 0.672263, -0.696640,
		-0.335640, 0.735264, 0.588840,
		0.908069, 0.086310, 0.409830,
		31.622210, 34.813030, 30.718430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053934, 35.435368, 30.633974>,  <30.986561, 34.752613, 30.431547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053934, 35.435368, 30.633974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.401762, 35.250378, 30.564724>,  <31.610458, 35.139385, 30.523174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.401762, 35.250378, 30.564724>,  <31.053934, 35.435368, 30.633974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401762, 35.250378, 30.564724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196869, 0.646193, -0.737345,
		0.452873, 0.607089, 0.652954,
		0.869568, -0.462470, -0.173126,
		31.662632, 35.111637, 30.512787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414259, 35.879490, 30.383127>,  <31.053934, 35.435368, 30.633974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414259, 35.879490, 30.383127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.641771, 35.573368, 30.262602>,  <31.778278, 35.389694, 30.190287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.641771, 35.573368, 30.262602>,  <31.414259, 35.879490, 30.383127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641771, 35.573368, 30.262602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192585, 0.480081, -0.855823,
		0.799624, 0.428748, 0.420449,
		0.568782, -0.765308, -0.301314,
		31.812407, 35.343777, 30.172207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013138, 36.223564, 30.144712>,  <31.414259, 35.879490, 30.383127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013138, 36.223564, 30.144712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.994249, 35.863594, 29.971321>,  <31.982916, 35.647614, 29.867287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.994249, 35.863594, 29.971321>,  <32.013138, 36.223564, 30.144712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994249, 35.863594, 29.971321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238870, 0.411199, -0.879692,
		0.969903, -0.145086, 0.195547,
		-0.047222, -0.899926, -0.433479,
		31.980083, 35.593616, 29.841278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647633, 36.199837, 29.675972>,  <32.013138, 36.223564, 30.144712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647633, 36.199837, 29.675972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.391521, 35.916931, 29.556097>,  <32.237854, 35.747189, 29.484173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.391521, 35.916931, 29.556097>,  <32.647633, 36.199837, 29.675972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391521, 35.916931, 29.556097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165229, 0.254201, -0.952933,
		0.750160, -0.659661, -0.045899,
		-0.640280, -0.707268, -0.299687,
		32.199436, 35.704750, 29.466190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010590, 35.896675, 29.025864>,  <32.647633, 36.199837, 29.675972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010590, 35.896675, 29.025864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.642185, 35.741089, 29.017353>,  <32.421143, 35.647736, 29.012247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.642185, 35.741089, 29.017353>,  <33.010590, 35.896675, 29.025864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642185, 35.741089, 29.017353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075541, 0.231920, -0.969797,
		0.382153, -0.891582, -0.242982,
		-0.921006, -0.388966, -0.021278,
		32.365883, 35.624401, 29.010969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001293, 35.316036, 28.623507>,  <33.010590, 35.896675, 29.025864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001293, 35.316036, 28.623507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.630436, 35.464317, 28.601633>,  <32.407921, 35.553288, 28.588509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.630436, 35.464317, 28.601633>,  <33.001293, 35.316036, 28.623507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630436, 35.464317, 28.601633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070178, 0.028424, -0.997129,
		-0.368086, -0.928316, -0.052368,
		-0.927140, 0.370705, -0.054684,
		32.352295, 35.575527, 28.585228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688660, 34.965672, 28.130367>,  <33.001293, 35.316036, 28.623507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688660, 34.965672, 28.130367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.460842, 35.293594, 28.154121>,  <32.324150, 35.490349, 28.168373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.460842, 35.293594, 28.154121>,  <32.688660, 34.965672, 28.130367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460842, 35.293594, 28.154121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245892, -0.101000, -0.964021,
		-0.784317, -0.563658, 0.259109,
		-0.569548, 0.819811, 0.059383,
		32.289978, 35.539539, 28.171936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153831, 34.860371, 27.653166>,  <32.688660, 34.965672, 28.130367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153831, 34.860371, 27.653166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.153332, 35.256134, 27.711227>,  <32.153030, 35.493591, 27.746065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.153332, 35.256134, 27.711227>,  <32.153831, 34.860371, 27.653166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153332, 35.256134, 27.711227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050533, 0.144908, -0.988154,
		-0.998721, -0.008569, 0.049817,
		-0.001249, 0.989408, 0.145156,
		32.152958, 35.552956, 27.754774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490698, 35.166267, 27.352819>,  <32.153831, 34.860371, 27.653166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490698, 35.166267, 27.352819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.744476, 35.474125, 27.381475>,  <31.896744, 35.658840, 27.398668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.744476, 35.474125, 27.381475>,  <31.490698, 35.166267, 27.352819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744476, 35.474125, 27.381475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036363, 0.122295, -0.991827,
		-0.772111, 0.626656, 0.105576,
		0.634446, 0.769640, 0.071638,
		31.934811, 35.705017, 27.402967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367962, 35.475849, 26.760059>,  <31.490698, 35.166267, 27.352819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367962, 35.475849, 26.760059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.714804, 35.641827, 26.870291>,  <31.922909, 35.741413, 26.936430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.714804, 35.641827, 26.870291>,  <31.367962, 35.475849, 26.760059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714804, 35.641827, 26.870291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200428, 0.215837, -0.955638,
		-0.456020, 0.883874, 0.103986,
		0.867107, 0.414948, 0.275579,
		31.974936, 35.766312, 26.952965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.767590, 39.400497, 48.964611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.531376, 39.085869, 49.036812>,  <35.389648, 38.897091, 49.080132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.531376, 39.085869, 49.036812>,  <35.767590, 39.400497, 48.964611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531376, 39.085869, 49.036812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501289, 0.532809, 0.681780,
		-0.632441, 0.312128, -0.708939,
		-0.590532, -0.786569, 0.180504,
		35.354218, 38.849899, 49.090961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980560, 39.637253, 48.869183>,  <35.767590, 39.400497, 48.964611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980560, 39.637253, 48.869183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.029320, 39.323700, 49.112713>,  <35.058575, 39.135567, 49.258831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.029320, 39.323700, 49.112713>,  <34.980560, 39.637253, 48.869183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029320, 39.323700, 49.112713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538791, 0.462898, 0.703868,
		-0.833574, -0.413831, -0.365921,
		0.121898, -0.783881, 0.608828,
		35.065887, 39.088535, 49.295361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417278, 39.658268, 49.313122>,  <34.980560, 39.637253, 48.869183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417278, 39.658268, 49.313122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672123, 39.418087, 49.506428>,  <34.825027, 39.273979, 49.622414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672123, 39.418087, 49.506428>,  <34.417278, 39.658268, 49.313122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672123, 39.418087, 49.506428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461895, 0.204512, 0.863034,
		-0.617046, -0.773066, -0.147050,
		0.637109, -0.600453, 0.483269,
		34.863255, 39.237949, 49.651409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991421, 39.452328, 49.813576>,  <34.417278, 39.658268, 49.313122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991421, 39.452328, 49.813576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.358974, 39.361538, 49.942657>,  <34.579506, 39.307064, 50.020107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.358974, 39.361538, 49.942657>,  <33.991421, 39.452328, 49.813576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358974, 39.361538, 49.942657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260160, 0.266315, 0.928113,
		-0.296595, -0.936782, 0.185664,
		0.918884, -0.226971, 0.322701,
		34.634640, 39.293446, 50.039467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898251, 39.024788, 50.354271>,  <33.991421, 39.452328, 49.813576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898251, 39.024788, 50.354271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263893, 39.176941, 50.410431>,  <34.483280, 39.268234, 50.444126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263893, 39.176941, 50.410431>,  <33.898251, 39.024788, 50.354271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263893, 39.176941, 50.410431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240956, 0.231132, 0.942612,
		0.326107, -0.895480, 0.302936,
		0.914109, 0.380387, 0.140398,
		34.538124, 39.291058, 50.452549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193729, 38.788807, 51.014423>,  <33.898251, 39.024788, 50.354271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193729, 38.788807, 51.014423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362835, 39.130882, 50.894474>,  <34.464298, 39.336128, 50.822506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362835, 39.130882, 50.894474>,  <34.193729, 38.788807, 51.014423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362835, 39.130882, 50.894474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372704, 0.465690, 0.802636,
		0.826051, -0.227564, 0.515610,
		0.422765, 0.855188, -0.299870,
		34.489666, 39.387440, 50.804512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371040, 39.221611, 51.649555>,  <34.193729, 38.788807, 51.014423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371040, 39.221611, 51.649555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463375, 39.507534, 51.385506>,  <34.518776, 39.679089, 51.227077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463375, 39.507534, 51.385506>,  <34.371040, 39.221611, 51.649555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463375, 39.507534, 51.385506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277249, 0.698642, 0.659570,
		0.932655, 0.030764, 0.359455,
		0.230839, 0.714809, -0.660122,
		34.532627, 39.721977, 51.187469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789562, 39.799797, 51.995476>,  <34.371040, 39.221611, 51.649555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789562, 39.799797, 51.995476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593243, 39.934155, 51.673904>,  <34.475452, 40.014767, 51.480961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593243, 39.934155, 51.673904>,  <34.789562, 39.799797, 51.995476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593243, 39.934155, 51.673904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218100, 0.845960, 0.486605,
		0.843534, 0.414161, -0.341938,
		-0.490798, 0.335891, -0.803924,
		34.446003, 40.034924, 51.432728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043053, 40.576904, 51.887264>,  <34.789562, 39.799797, 51.995476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043053, 40.576904, 51.887264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687134, 40.505054, 51.719456>,  <34.473583, 40.461945, 51.618771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687134, 40.505054, 51.719456>,  <35.043053, 40.576904, 51.887264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687134, 40.505054, 51.719456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345504, 0.865728, 0.362134,
		0.298139, 0.467172, -0.832385,
		-0.889798, -0.179626, -0.419517,
		34.420193, 40.451168, 51.593601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834450, 41.229530, 51.712128>,  <35.043053, 40.576904, 51.887264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834450, 41.229530, 51.712128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.493752, 41.020111, 51.703964>,  <34.289333, 40.894459, 51.699066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.493752, 41.020111, 51.703964>,  <34.834450, 41.229530, 51.712128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493752, 41.020111, 51.703964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512209, 0.823834, 0.242772,
		-0.110290, 0.217235, -0.969868,
		-0.851750, -0.523551, -0.020409,
		34.238228, 40.863045, 51.697842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420528, 41.671841, 51.326042>,  <34.834450, 41.229530, 51.712128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420528, 41.671841, 51.326042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191402, 41.419044, 51.534836>,  <34.053928, 41.267365, 51.660114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191402, 41.419044, 51.534836>,  <34.420528, 41.671841, 51.326042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191402, 41.419044, 51.534836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552642, 0.768075, 0.323494,
		-0.605371, -0.103171, -0.789228,
		-0.572811, -0.631994, 0.521987,
		34.019558, 41.229446, 51.691433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718739, 41.842064, 51.228977>,  <34.420528, 41.671841, 51.326042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718739, 41.842064, 51.228977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709480, 41.644947, 51.576912>,  <33.703926, 41.526676, 51.785675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709480, 41.644947, 51.576912>,  <33.718739, 41.842064, 51.228977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709480, 41.644947, 51.576912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599718, 0.702980, 0.382305,
		-0.799876, -0.512811, -0.311806,
		-0.023143, -0.492792, 0.869839,
		33.702538, 41.497108, 51.837864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035213, 41.974388, 51.415749>,  <33.718739, 41.842064, 51.228977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035213, 41.974388, 51.415749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.241409, 41.865921, 51.740891>,  <33.365128, 41.800838, 51.935978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.241409, 41.865921, 51.740891>,  <33.035213, 41.974388, 51.415749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241409, 41.865921, 51.740891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682873, 0.443046, 0.580857,
		-0.517645, -0.854503, 0.043208,
		0.515487, -0.271172, 0.812858,
		33.396057, 41.784569, 51.984749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595974, 41.574749, 51.864655>,  <33.035213, 41.974388, 51.415749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595974, 41.574749, 51.864655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860603, 41.745132, 52.111515>,  <33.019382, 41.847363, 52.259632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860603, 41.745132, 52.111515>,  <32.595974, 41.574749, 51.864655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860603, 41.745132, 52.111515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748228, 0.429557, 0.505605,
		-0.049736, -0.796267, 0.602898,
		0.661575, 0.425958, 0.617154,
		33.059074, 41.872921, 52.296661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393173, 42.280212, 51.738022>,  <32.595974, 41.574749, 51.864655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393173, 42.280212, 51.738022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101440, 42.518150, 51.602825>,  <31.926401, 42.660912, 51.521709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101440, 42.518150, 51.602825>,  <32.393173, 42.280212, 51.738022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101440, 42.518150, 51.602825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409172, -0.016688, -0.912305,
		-0.548319, -0.803668, -0.231223,
		-0.729332, 0.594844, -0.337989,
		31.882641, 42.696602, 51.501427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980167, 41.955048, 51.260509>,  <32.393173, 42.280212, 51.738022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980167, 41.955048, 51.260509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951576, 42.346416, 51.182961>,  <31.934422, 42.581238, 51.136433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951576, 42.346416, 51.182961>,  <31.980167, 41.955048, 51.260509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951576, 42.346416, 51.182961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328576, -0.160425, -0.930753,
		-0.941769, -0.130232, -0.310018,
		-0.071479, 0.978419, -0.193874,
		31.930132, 42.639942, 51.124798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603498, 42.061264, 50.644314>,  <31.980167, 41.955048, 51.260509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603498, 42.061264, 50.644314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.782629, 42.418911, 50.643684>,  <31.890108, 42.633499, 50.643307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.782629, 42.418911, 50.643684>,  <31.603498, 42.061264, 50.644314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782629, 42.418911, 50.643684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283706, -0.143768, -0.948073,
		-0.847915, 0.424127, -0.318050,
		0.447829, 0.894118, -0.001576,
		31.916977, 42.687145, 50.643211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360527, 42.208878, 50.090866>,  <31.603498, 42.061264, 50.644314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360527, 42.208878, 50.090866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.641893, 42.476368, 50.187202>,  <31.810713, 42.636864, 50.245007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.641893, 42.476368, 50.187202>,  <31.360527, 42.208878, 50.090866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641893, 42.476368, 50.187202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271829, 0.059989, -0.960474,
		-0.656746, 0.741081, -0.139583,
		0.703416, 0.668730, 0.240844,
		31.852919, 42.676987, 50.259457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258305, 42.807793, 49.655457>,  <31.360527, 42.208878, 50.090866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258305, 42.807793, 49.655457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.632103, 42.744232, 49.782871>,  <31.856382, 42.706097, 49.859322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.632103, 42.744232, 49.782871>,  <31.258305, 42.807793, 49.655457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632103, 42.744232, 49.782871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291529, -0.171864, -0.940996,
		0.204272, 0.972220, -0.114282,
		0.934497, -0.158903, 0.318537,
		31.912453, 42.696560, 49.878433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618202, 43.049129, 49.165424>,  <31.258305, 42.807793, 49.655457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618202, 43.049129, 49.165424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.909266, 42.847286, 49.351276>,  <32.083904, 42.726181, 49.462788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.909266, 42.847286, 49.351276>,  <31.618202, 43.049129, 49.165424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909266, 42.847286, 49.351276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389948, -0.252946, -0.885414,
		0.564315, 0.825462, 0.012713,
		0.727660, -0.504610, 0.464629,
		32.127563, 42.695904, 49.490665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319733, 43.215244, 48.911499>,  <31.618202, 43.049129, 49.165424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319733, 43.215244, 48.911499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.329865, 42.835674, 49.037289>,  <32.335941, 42.607933, 49.112762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.329865, 42.835674, 49.037289>,  <32.319733, 43.215244, 48.911499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329865, 42.835674, 49.037289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510600, -0.258164, -0.820145,
		0.859445, 0.181340, 0.477985,
		0.025326, -0.948929, 0.314470,
		32.337463, 42.550995, 49.131630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012611, 43.033264, 48.764488>,  <32.319733, 43.215244, 48.911499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012611, 43.033264, 48.764488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799229, 42.697884, 48.809074>,  <32.671200, 42.496655, 48.835827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799229, 42.697884, 48.809074>,  <33.012611, 43.033264, 48.764488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799229, 42.697884, 48.809074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332503, -0.329047, -0.883838,
		0.777732, -0.434427, 0.454320,
		-0.533456, -0.838452, 0.111462,
		32.639191, 42.446346, 48.842514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394672, 42.672447, 48.374161>,  <33.012611, 43.033264, 48.764488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394672, 42.672447, 48.374161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.081375, 42.428703, 48.423492>,  <32.893398, 42.282455, 48.453091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.081375, 42.428703, 48.423492>,  <33.394672, 42.672447, 48.374161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081375, 42.428703, 48.423492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306428, -0.550974, -0.776228,
		0.540956, -0.570182, 0.618271,
		-0.783242, -0.609361, 0.123334,
		32.846401, 42.245895, 48.460491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636620, 42.002861, 48.501503>,  <33.394672, 42.672447, 48.374161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636620, 42.002861, 48.501503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.262928, 41.990841, 48.359344>,  <33.038712, 41.983631, 48.274048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.262928, 41.990841, 48.359344>,  <33.636620, 42.002861, 48.501503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262928, 41.990841, 48.359344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300149, -0.604492, -0.737902,
		-0.192663, -0.796044, 0.573755,
		-0.934233, -0.030046, -0.355395,
		32.982658, 41.981827, 48.252728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453144, 41.272789, 48.406303>,  <33.636620, 42.002861, 48.501503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453144, 41.272789, 48.406303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.209126, 41.480156, 48.166607>,  <33.062714, 41.604576, 48.022789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.209126, 41.480156, 48.166607>,  <33.453144, 41.272789, 48.406303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209126, 41.480156, 48.166607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287067, -0.560295, -0.776957,
		-0.738539, -0.646001, 0.192984,
		-0.610043, 0.518414, -0.599245,
		33.026112, 41.635681, 47.986832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155434, 40.759056, 48.009857>,  <33.453144, 41.272789, 48.406303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155434, 40.759056, 48.009857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060349, 41.095798, 47.816048>,  <33.003300, 41.297844, 47.699760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060349, 41.095798, 47.816048>,  <33.155434, 40.759056, 48.009857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060349, 41.095798, 47.816048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017390, -0.495057, -0.868686,
		-0.971181, -0.214920, 0.103039,
		-0.237708, 0.841860, -0.484527,
		32.989037, 41.348358, 47.670689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560070, 40.597656, 47.594044>,  <33.155434, 40.759056, 48.009857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560070, 40.597656, 47.594044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754192, 40.902851, 47.423248>,  <32.870667, 41.085968, 47.320770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754192, 40.902851, 47.423248>,  <32.560070, 40.597656, 47.594044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754192, 40.902851, 47.423248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086464, -0.527840, -0.844931,
		-0.870056, 0.373134, -0.322137,
		0.485310, 0.762991, -0.426988,
		32.899784, 41.131748, 47.295151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195835, 40.854420, 46.965939>,  <32.560070, 40.597656, 47.594044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195835, 40.854420, 46.965939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583790, 40.943367, 46.926189>,  <32.816563, 40.996735, 46.902340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583790, 40.943367, 46.926189>,  <32.195835, 40.854420, 46.965939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583790, 40.943367, 46.926189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016609, -0.467433, -0.883873,
		-0.242991, 0.855605, -0.457050,
		0.969886, 0.222364, -0.099371,
		32.874756, 41.010075, 46.896378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590767, 40.760227, 46.581848>,  <32.195835, 40.854420, 46.965939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590767, 40.760227, 46.581848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.347338, 40.443962, 46.608639>,  <31.201281, 40.254204, 46.624714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.347338, 40.443962, 46.608639>,  <31.590767, 40.760227, 46.581848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347338, 40.443962, 46.608639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167399, 0.210439, 0.963168,
		-0.775638, 0.574948, -0.260425,
		-0.608575, -0.790664, 0.066979,
		31.164764, 40.206764, 46.628731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986666, 40.950153, 46.814140>,  <31.590767, 40.760227, 46.581848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986666, 40.950153, 46.814140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.968433, 40.562389, 46.910614>,  <30.957493, 40.329731, 46.968498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.968433, 40.562389, 46.910614>,  <30.986666, 40.950153, 46.814140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968433, 40.562389, 46.910614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488699, 0.232214, 0.840982,
		-0.871261, -0.079534, -0.484333,
		-0.045582, -0.969408, 0.241187,
		30.954760, 40.271568, 46.982971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240282, 40.736679, 47.135387>,  <30.986666, 40.950153, 46.814140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240282, 40.736679, 47.135387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.485836, 40.453224, 47.274517>,  <30.633167, 40.283150, 47.357994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.485836, 40.453224, 47.274517>,  <30.240282, 40.736679, 47.135387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485836, 40.453224, 47.274517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282614, 0.214120, 0.935031,
		-0.737074, -0.672298, -0.068826,
		0.613882, -0.708638, 0.347823,
		30.670000, 40.240631, 47.378864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809090, 40.373356, 47.590458>,  <30.240282, 40.736679, 47.135387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809090, 40.373356, 47.590458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.183151, 40.291180, 47.705891>,  <30.407589, 40.241875, 47.775150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.183151, 40.291180, 47.705891>,  <29.809090, 40.373356, 47.590458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183151, 40.291180, 47.705891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295211, -0.001697, 0.955431,
		-0.195792, -0.978669, -0.062235,
		0.935156, -0.205438, 0.288581,
		30.463697, 40.229549, 47.792465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653111, 39.863186, 48.005756>,  <29.809090, 40.373356, 47.590458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653111, 39.863186, 48.005756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.014040, 39.985191, 48.127598>,  <30.230597, 40.058395, 48.200703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.014040, 39.985191, 48.127598>,  <29.653111, 39.863186, 48.005756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014040, 39.985191, 48.127598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314279, -0.018134, 0.949157,
		0.295030, -0.952175, 0.079497,
		0.902322, 0.305014, 0.304599,
		30.284737, 40.076694, 48.218979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948236, 39.382706, 48.450199>,  <29.653111, 39.863186, 48.005756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948236, 39.382706, 48.450199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.111681, 39.736862, 48.538849>,  <30.209747, 39.949356, 48.592037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.111681, 39.736862, 48.538849>,  <29.948236, 39.382706, 48.450199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111681, 39.736862, 48.538849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258000, -0.120867, 0.958555,
		0.875484, -0.448855, 0.179044,
		0.408611, 0.885393, 0.221622,
		30.234264, 40.002480, 48.605335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257605, 39.273979, 49.174068>,  <29.948236, 39.382706, 48.450199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257605, 39.273979, 49.174068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.229347, 39.667324, 49.107124>,  <30.212393, 39.903332, 49.066956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.229347, 39.667324, 49.107124>,  <30.257605, 39.273979, 49.174068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229347, 39.667324, 49.107124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386169, 0.127738, 0.913541,
		0.919719, 0.129168, 0.370719,
		-0.070645, 0.983361, -0.167363,
		30.208153, 39.962334, 49.056915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587902, 38.620193, 49.519691>,  <30.257605, 39.273979, 49.174068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587902, 38.620193, 49.519691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.302313, 38.362740, 49.629948>,  <30.130959, 38.208267, 49.696102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.302313, 38.362740, 49.629948>,  <30.587902, 38.620193, 49.519691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302313, 38.362740, 49.629948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153089, -0.527657, -0.835549,
		0.683230, -0.554363, 0.475267,
		-0.713975, -0.643631, 0.275644,
		30.088120, 38.169651, 49.712643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838623, 37.981342, 49.354504>,  <30.587902, 38.620193, 49.519691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838623, 37.981342, 49.354504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.439613, 37.956261, 49.367229>,  <30.200207, 37.941212, 49.374866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.439613, 37.956261, 49.367229>,  <30.838623, 37.981342, 49.354504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439613, 37.956261, 49.367229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018502, -0.670604, -0.741585,
		0.067842, -0.739160, 0.670104,
		-0.997525, -0.062709, 0.031819,
		30.140356, 37.937447, 49.376774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716389, 37.300362, 49.332573>,  <30.838623, 37.981342, 49.354504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716389, 37.300362, 49.332573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.376087, 37.479198, 49.222065>,  <30.171906, 37.586502, 49.155762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.376087, 37.479198, 49.222065>,  <30.716389, 37.300362, 49.332573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376087, 37.479198, 49.222065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005506, -0.518049, -0.855333,
		-0.525548, -0.729193, 0.438266,
		-0.850746, 0.447106, -0.276274,
		30.120861, 37.613327, 49.139187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259508, 36.742767, 48.978142>,  <30.716389, 37.300362, 49.332573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259508, 36.742767, 48.978142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.126585, 37.101498, 48.861340>,  <30.046831, 37.316738, 48.791256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.126585, 37.101498, 48.861340>,  <30.259508, 36.742767, 48.978142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126585, 37.101498, 48.861340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043342, -0.323798, -0.945133,
		-0.942174, -0.301419, 0.146471,
		-0.332308, 0.896829, -0.292010,
		30.026892, 37.370544, 48.773735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729593, 36.596130, 48.457584>,  <30.259508, 36.742767, 48.978142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729593, 36.596130, 48.457584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.837074, 36.979176, 48.416058>,  <29.901564, 37.209003, 48.391144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.837074, 36.979176, 48.416058>,  <29.729593, 36.596130, 48.457584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837074, 36.979176, 48.416058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137278, -0.144749, -0.979899,
		-0.953391, 0.249049, -0.170354,
		0.268702, 0.957613, -0.103813,
		29.917685, 37.266460, 48.384914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336000, 36.765282, 47.842312>,  <29.729593, 36.596130, 48.457584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336000, 36.765282, 47.842312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.640167, 37.021942, 47.882401>,  <29.822668, 37.175938, 47.906456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.640167, 37.021942, 47.882401>,  <29.336000, 36.765282, 47.842312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640167, 37.021942, 47.882401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273385, -0.176285, -0.945613,
		-0.589089, 0.746461, -0.309469,
		0.760418, 0.641654, 0.100224,
		29.868292, 37.214439, 47.912468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523331, 36.920452, 47.221329>,  <29.336000, 36.765282, 47.842312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523331, 36.920452, 47.221329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.822088, 37.120190, 47.396969>,  <30.001343, 37.240032, 47.502354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.822088, 37.120190, 47.396969>,  <29.523331, 36.920452, 47.221329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822088, 37.120190, 47.396969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591158, -0.196309, -0.782301,
		-0.304439, 0.843871, -0.441812,
		0.746893, 0.499344, 0.439097,
		30.046156, 37.269993, 47.528698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.954525, 38.439297, 54.346210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.119541, 38.704960, 54.096825>,  <33.218552, 38.864357, 53.947193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.119541, 38.704960, 54.096825>,  <32.954525, 38.439297, 54.346210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119541, 38.704960, 54.096825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139694, -0.722449, -0.677165,
		-0.900164, 0.192265, -0.390819,
		0.412542, 0.664155, -0.623464,
		33.243305, 38.904205, 53.909786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705116, 38.229195, 53.705368>,  <32.954525, 38.439297, 54.346210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705116, 38.229195, 53.705368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.021721, 38.457958, 53.619175>,  <33.211681, 38.595219, 53.567459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.021721, 38.457958, 53.619175>,  <32.705116, 38.229195, 53.705368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021721, 38.457958, 53.619175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205174, -0.580771, -0.787787,
		-0.575689, 0.579328, -0.577027,
		0.791508, 0.571912, -0.215480,
		33.259174, 38.629532, 53.554531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702290, 38.418316, 52.893883>,  <32.705116, 38.229195, 53.705368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702290, 38.418316, 52.893883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.075062, 38.495644, 53.016605>,  <33.298725, 38.542042, 53.090237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.075062, 38.495644, 53.016605>,  <32.702290, 38.418316, 52.893883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075062, 38.495644, 53.016605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357593, -0.630461, -0.688946,
		0.060240, 0.751762, -0.656677,
		0.931933, 0.193321, 0.306804,
		33.354641, 38.553638, 53.108646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147682, 38.695511, 52.326447>,  <32.702290, 38.418316, 52.893883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147682, 38.695511, 52.326447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.416698, 38.570995, 52.595013>,  <33.578106, 38.496284, 52.756153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.416698, 38.570995, 52.595013>,  <33.147682, 38.695511, 52.326447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416698, 38.570995, 52.595013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502913, -0.473333, -0.723211,
		0.542929, 0.824048, -0.161783,
		0.672537, -0.311289, 0.671411,
		33.618458, 38.477608, 52.796436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719303, 38.722309, 51.944942>,  <33.147682, 38.695511, 52.326447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719303, 38.722309, 51.944942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.797009, 38.468689, 52.244339>,  <33.843632, 38.316517, 52.423977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.797009, 38.468689, 52.244339>,  <33.719303, 38.722309, 51.944942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797009, 38.468689, 52.244339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526887, -0.576177, -0.624829,
		0.827436, 0.515755, 0.222140,
		0.194266, -0.634048, 0.748494,
		33.855289, 38.278473, 52.468887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429665, 38.599266, 52.007126>,  <33.719303, 38.722309, 51.944942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429665, 38.599266, 52.007126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.260281, 38.270660, 52.159855>,  <34.158649, 38.073498, 52.251492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.260281, 38.270660, 52.159855>,  <34.429665, 38.599266, 52.007126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260281, 38.270660, 52.159855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651495, -0.569027, -0.501760,
		0.629475, 0.036284, 0.776173,
		-0.423458, -0.821518, 0.381827,
		34.133244, 38.024204, 52.274403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038067, 38.065598, 52.100399>,  <34.429665, 38.599266, 52.007126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038067, 38.065598, 52.100399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.715611, 37.829136, 52.110783>,  <34.522137, 37.687260, 52.117012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.715611, 37.829136, 52.110783>,  <35.038067, 38.065598, 52.100399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715611, 37.829136, 52.110783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566087, -0.783243, -0.257052,
		0.172288, -0.192526, 0.966049,
		-0.806141, -0.591154, 0.025957,
		34.473770, 37.651791, 52.118568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392349, 37.366447, 52.201710>,  <35.038067, 38.065598, 52.100399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392349, 37.366447, 52.201710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.012253, 37.292988, 52.101055>,  <34.784195, 37.248913, 52.040661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.012253, 37.292988, 52.101055>,  <35.392349, 37.366447, 52.201710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012253, 37.292988, 52.101055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246566, -0.937067, -0.247206,
		-0.190404, -0.296950, 0.935717,
		-0.950238, -0.183647, -0.251639,
		34.727180, 37.237892, 52.025562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280777, 36.667988, 52.413815>,  <35.392349, 37.366447, 52.201710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280777, 36.667988, 52.413815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.989090, 36.739838, 52.149700>,  <34.814079, 36.782948, 51.991230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.989090, 36.739838, 52.149700>,  <35.280777, 36.667988, 52.413815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989090, 36.739838, 52.149700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254494, -0.824524, -0.505365,
		-0.635196, -0.536560, 0.555544,
		-0.729218, 0.179624, -0.660285,
		34.770325, 36.793724, 51.951614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938255, 35.958111, 52.236313>,  <35.280777, 36.667988, 52.413815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938255, 35.958111, 52.236313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.887039, 36.224388, 51.942249>,  <34.856308, 36.384155, 51.765812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.887039, 36.224388, 51.942249>,  <34.938255, 35.958111, 52.236313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887039, 36.224388, 51.942249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140596, -0.721587, -0.677897,
		-0.981752, -0.190160, -0.001200,
		-0.128043, 0.665696, -0.735155,
		34.848625, 36.424095, 51.721703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472668, 35.624508, 51.834095>,  <34.938255, 35.958111, 52.236313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472668, 35.624508, 51.834095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.651478, 35.876129, 51.579704>,  <34.758762, 36.027100, 51.427071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.651478, 35.876129, 51.579704>,  <34.472668, 35.624508, 51.834095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651478, 35.876129, 51.579704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195861, -0.762548, -0.616570,
		-0.872818, 0.151057, -0.464081,
		0.447021, 0.629049, -0.635979,
		34.785583, 36.064842, 51.388912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198521, 35.544365, 51.172256>,  <34.472668, 35.624508, 51.834095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198521, 35.544365, 51.172256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.557632, 35.703045, 51.095707>,  <34.773098, 35.798252, 51.049774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.557632, 35.703045, 51.095707>,  <34.198521, 35.544365, 51.172256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557632, 35.703045, 51.095707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215249, -0.774255, -0.595145,
		-0.384267, 0.493114, -0.780498,
		0.897779, 0.396696, -0.191379,
		34.826965, 35.822052, 51.038292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643661, 36.035675, 50.833656>,  <34.198521, 35.544365, 51.172256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643661, 36.035675, 50.833656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.294037, 35.841534, 50.825153>,  <33.084263, 35.725048, 50.820053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.294037, 35.841534, 50.825153>,  <33.643661, 36.035675, 50.833656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294037, 35.841534, 50.825153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323845, 0.549470, 0.770200,
		-0.362144, 0.680082, -0.637449,
		-0.874057, -0.485358, -0.021254,
		33.031818, 35.695927, 50.818775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251915, 36.535019, 51.002869>,  <33.643661, 36.035675, 50.833656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251915, 36.535019, 51.002869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.012535, 36.216938, 51.041901>,  <32.868908, 36.026089, 51.065319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.012535, 36.216938, 51.041901>,  <33.251915, 36.535019, 51.002869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012535, 36.216938, 51.041901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458130, 0.439584, 0.772581,
		-0.657251, 0.417642, -0.627372,
		-0.598446, -0.795198, 0.097583,
		32.833000, 35.978378, 51.071175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523109, 36.733692, 51.007351>,  <33.251915, 36.535019, 51.002869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523109, 36.733692, 51.007351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.515209, 36.379597, 51.193237>,  <32.510468, 36.167137, 51.304768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.515209, 36.379597, 51.193237>,  <32.523109, 36.733692, 51.007351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515209, 36.379597, 51.193237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489568, 0.413832, 0.767507,
		-0.871741, -0.212346, -0.441561,
		-0.019755, -0.885241, 0.464712,
		32.509281, 36.114025, 51.332649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943439, 36.784683, 51.392933>,  <32.523109, 36.733692, 51.007351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943439, 36.784683, 51.392933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.062210, 36.437820, 51.552868>,  <32.133472, 36.229702, 51.648830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.062210, 36.437820, 51.552868>,  <31.943439, 36.784683, 51.392933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062210, 36.437820, 51.552868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471216, 0.231128, 0.851196,
		-0.830535, -0.441154, -0.339991,
		0.296928, -0.867158, 0.399839,
		32.151287, 36.177673, 51.672821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348520, 36.466309, 51.663734>,  <31.943439, 36.784683, 51.392933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348520, 36.466309, 51.663734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.667337, 36.326500, 51.860737>,  <31.858627, 36.242615, 51.978939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.667337, 36.326500, 51.860737>,  <31.348520, 36.466309, 51.663734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667337, 36.326500, 51.860737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459258, 0.178796, 0.870123,
		-0.392183, -0.919711, -0.018012,
		0.797041, -0.349520, 0.492505,
		31.906450, 36.221645, 52.008488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064425, 35.999210, 52.151199>,  <31.348520, 36.466309, 51.663734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064425, 35.999210, 52.151199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.418682, 36.121754, 52.290787>,  <31.631237, 36.195278, 52.374538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.418682, 36.121754, 52.290787>,  <31.064425, 35.999210, 52.151199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418682, 36.121754, 52.290787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430369, 0.259278, 0.864614,
		0.174398, -0.915927, 0.361473,
		0.885645, 0.306353, 0.348969,
		31.684376, 36.213661, 52.395477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120531, 35.589149, 52.744686>,  <31.064425, 35.999210, 52.151199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120531, 35.589149, 52.744686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.330261, 35.929417, 52.759922>,  <31.456099, 36.133575, 52.769062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.330261, 35.929417, 52.759922>,  <31.120531, 35.589149, 52.744686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330261, 35.929417, 52.759922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477146, 0.256462, 0.840571,
		0.705278, -0.458903, 0.540361,
		0.524323, 0.850667, 0.038086,
		31.487558, 36.184616, 52.771347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316219, 35.598110, 53.418617>,  <31.120531, 35.589149, 52.744686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316219, 35.598110, 53.418617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.386221, 35.976570, 53.309677>,  <31.428221, 36.203648, 53.244312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.386221, 35.976570, 53.309677>,  <31.316219, 35.598110, 53.418617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386221, 35.976570, 53.309677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314088, 0.315813, 0.895327,
		0.933125, -0.071144, 0.352442,
		0.175003, 0.946151, -0.272347,
		31.438723, 36.260414, 53.227974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539883, 35.933193, 54.078190>,  <31.316219, 35.598110, 53.418617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539883, 35.933193, 54.078190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.420315, 36.225197, 53.832352>,  <31.348574, 36.400398, 53.684849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.420315, 36.225197, 53.832352>,  <31.539883, 35.933193, 54.078190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420315, 36.225197, 53.832352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424635, 0.475013, 0.770744,
		0.854594, 0.491371, 0.167998,
		-0.298920, 0.730012, -0.614597,
		31.330639, 36.444199, 53.647972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345047, 36.509350, 54.482323>,  <31.539883, 35.933193, 54.078190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345047, 36.509350, 54.482323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.184715, 36.637791, 54.139107>,  <31.088516, 36.714855, 53.933178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.184715, 36.637791, 54.139107>,  <31.345047, 36.509350, 54.482323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184715, 36.637791, 54.139107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514512, 0.696024, 0.500827,
		0.758033, 0.642216, -0.113772,
		-0.400827, 0.321107, -0.858037,
		31.064466, 36.734123, 53.881695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309906, 37.216183, 54.544926>,  <31.345047, 36.509350, 54.482323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309906, 37.216183, 54.544926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.019062, 37.103081, 54.294689>,  <30.844555, 37.035221, 54.144547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.019062, 37.103081, 54.294689>,  <31.309906, 37.216183, 54.544926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019062, 37.103081, 54.294689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608609, 0.687122, 0.396812,
		0.317658, 0.669265, -0.671698,
		-0.727110, -0.282751, -0.625590,
		30.800928, 37.018257, 54.107014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889734, 37.873299, 54.235992>,  <31.309906, 37.216183, 54.544926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889734, 37.873299, 54.235992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.640491, 37.569042, 54.163151>,  <30.490946, 37.386490, 54.119446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.640491, 37.569042, 54.163151>,  <30.889734, 37.873299, 54.235992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640491, 37.569042, 54.163151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781277, 0.594411, 0.190478,
		-0.036640, 0.260963, -0.964653,
		-0.623108, -0.760640, -0.182105,
		30.453560, 37.340851, 54.108521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212599, 38.215115, 54.106686>,  <30.889734, 37.873299, 54.235992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212599, 38.215115, 54.106686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.131506, 37.827717, 54.164536>,  <30.082850, 37.595280, 54.199245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.131506, 37.827717, 54.164536>,  <30.212599, 38.215115, 54.106686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131506, 37.827717, 54.164536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946712, 0.231597, 0.223830,
		-0.250273, -0.091541, -0.963838,
		-0.202732, -0.968495, 0.144625,
		30.070686, 37.537167, 54.207924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723677, 38.047642, 53.614231>,  <30.212599, 38.215115, 54.106686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723677, 38.047642, 53.614231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.687872, 37.794254, 53.921661>,  <29.666389, 37.642220, 54.106117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.687872, 37.794254, 53.921661>,  <29.723677, 38.047642, 53.614231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687872, 37.794254, 53.921661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935287, 0.318733, 0.153778,
		-0.342383, -0.705070, -0.621007,
		-0.089511, -0.633471, 0.768571,
		29.661018, 37.604214, 54.152233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986462, 38.370632, 53.063457>,  <29.723677, 38.047642, 53.614231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986462, 38.370632, 53.063457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.790224, 38.610802, 52.810852>,  <29.672482, 38.754902, 52.659286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.790224, 38.610802, 52.810852>,  <29.986462, 38.370632, 53.063457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790224, 38.610802, 52.810852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063997, -0.697941, -0.713290,
		-0.869035, -0.390351, 0.303981,
		-0.490594, 0.600420, -0.631517,
		29.643045, 38.790928, 52.621399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397930, 37.942581, 52.656338>,  <29.986462, 38.370632, 53.063457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397930, 37.942581, 52.656338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.484781, 38.271355, 52.445709>,  <29.536892, 38.468620, 52.319332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.484781, 38.271355, 52.445709>,  <29.397930, 37.942581, 52.656338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484781, 38.271355, 52.445709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165159, -0.500732, -0.849700,
		-0.962069, 0.271463, 0.027026,
		0.217129, 0.821934, -0.526573,
		29.549919, 38.517937, 52.287739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959734, 37.917686, 51.984249>,  <29.397930, 37.942581, 52.656338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959734, 37.917686, 51.984249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.237190, 38.196346, 51.910988>,  <29.403664, 38.363541, 51.867031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.237190, 38.196346, 51.910988>,  <28.959734, 37.917686, 51.984249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237190, 38.196346, 51.910988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121930, -0.364154, -0.923323,
		-0.709927, 0.618122, -0.337534,
		0.693640, 0.696647, -0.183155,
		29.445282, 38.405342, 51.856041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778091, 38.224316, 51.352257>,  <28.959734, 37.917686, 51.984249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778091, 38.224316, 51.352257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.164530, 38.327164, 51.361591>,  <29.396393, 38.388874, 51.367191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.164530, 38.327164, 51.361591>,  <28.778091, 38.224316, 51.352257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164530, 38.327164, 51.361591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091024, -0.254619, -0.962748,
		-0.241604, 0.932232, -0.269391,
		0.966096, 0.257125, 0.023338,
		29.454359, 38.404301, 51.368591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880354, 38.665585, 50.723148>,  <28.778091, 38.224316, 51.352257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880354, 38.665585, 50.723148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.239058, 38.520496, 50.824551>,  <29.454279, 38.433445, 50.885391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.239058, 38.520496, 50.824551>,  <28.880354, 38.665585, 50.723148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239058, 38.520496, 50.824551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233479, -0.098828, -0.967327,
		0.375919, 0.926644, -0.003938,
		0.896757, -0.362716, 0.253503,
		29.508085, 38.411682, 50.900600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424358, 39.031364, 50.295467>,  <28.880354, 38.665585, 50.723148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424358, 39.031364, 50.295467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.559042, 38.682415, 50.437218>,  <29.639853, 38.473045, 50.522266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.559042, 38.682415, 50.437218>,  <29.424358, 39.031364, 50.295467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559042, 38.682415, 50.437218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302441, -0.256212, -0.918088,
		0.891715, 0.416307, 0.177573,
		0.336710, -0.872378, 0.354376,
		29.660055, 38.420700, 50.543530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137045, 38.995998, 50.004932>,  <29.424358, 39.031364, 50.295467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137045, 38.995998, 50.004932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.020512, 38.627422, 50.107754>,  <29.950592, 38.406277, 50.169445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.020512, 38.627422, 50.107754>,  <30.137045, 38.995998, 50.004932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020512, 38.627422, 50.107754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140972, -0.307130, -0.941169,
		0.946178, -0.237954, 0.219373,
		-0.291331, -0.921439, 0.257054,
		29.933113, 38.350990, 50.184872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387419, 39.617970, 49.863159>,  <30.137045, 38.995998, 50.004932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387419, 39.617970, 49.863159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.251905, 39.923466, 49.643364>,  <30.170597, 40.106762, 49.511486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.251905, 39.923466, 49.643364>,  <30.387419, 39.617970, 49.863159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251905, 39.923466, 49.643364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316825, 0.457308, 0.830958,
		0.885917, 0.455605, 0.087042,
		-0.338783, 0.763737, -0.549484,
		30.150270, 40.152588, 49.478519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665216, 40.180679, 50.175518>,  <30.387419, 39.617970, 49.863159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665216, 40.180679, 50.175518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.336344, 40.293911, 49.977978>,  <30.139021, 40.361851, 49.859455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.336344, 40.293911, 49.977978>,  <30.665216, 40.180679, 50.175518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336344, 40.293911, 49.977978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327038, 0.475192, 0.816847,
		0.465904, 0.833103, -0.298116,
		-0.822180, 0.283076, -0.493850,
		30.089689, 40.378834, 49.829823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608335, 40.921440, 50.316422>,  <30.665216, 40.180679, 50.175518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608335, 40.921440, 50.316422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.231773, 40.861263, 50.195671>,  <30.005836, 40.825157, 50.123222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.231773, 40.861263, 50.195671>,  <30.608335, 40.921440, 50.316422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231773, 40.861263, 50.195671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330263, 0.592802, 0.734515,
		0.068452, 0.791173, -0.607750,
		-0.941404, -0.150438, -0.301873,
		29.949352, 40.816132, 50.105110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220499, 41.707405, 50.356438>,  <30.608335, 40.921440, 50.316422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220499, 41.707405, 50.356438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.932032, 41.434624, 50.307678>,  <29.758951, 41.270954, 50.278423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.932032, 41.434624, 50.307678>,  <30.220499, 41.707405, 50.356438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932032, 41.434624, 50.307678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548487, 0.454585, 0.701793,
		-0.423176, 0.572970, -0.701874,
		-0.721168, -0.681951, -0.121897,
		29.715681, 41.230038, 50.271111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610199, 42.108650, 50.299267>,  <30.220499, 41.707405, 50.356438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610199, 42.108650, 50.299267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.523592, 41.731075, 50.398952>,  <29.471628, 41.504532, 50.458763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.523592, 41.731075, 50.398952>,  <29.610199, 42.108650, 50.299267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523592, 41.731075, 50.398952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480470, 0.325247, 0.814471,
		-0.849864, 0.056608, -0.523954,
		-0.216520, -0.943933, 0.249217,
		29.458635, 41.447895, 50.473717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958155, 42.184654, 50.647503>,  <29.610199, 42.108650, 50.299267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958155, 42.184654, 50.647503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.104153, 41.825027, 50.744213>,  <29.191751, 41.609253, 50.802238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.104153, 41.825027, 50.744213>,  <28.958155, 42.184654, 50.647503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104153, 41.825027, 50.744213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205071, 0.175681, 0.962851,
		-0.908144, -0.401016, -0.120251,
		0.364993, -0.899068, 0.241780,
		29.213650, 41.555305, 50.816746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489458, 41.899654, 51.016541>,  <28.958155, 42.184654, 50.647503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489458, 41.899654, 51.016541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.823040, 41.706642, 51.123634>,  <29.023190, 41.590836, 51.187889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.823040, 41.706642, 51.123634>,  <28.489458, 41.899654, 51.016541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823040, 41.706642, 51.123634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167504, 0.240931, 0.955979,
		-0.525796, -0.842089, 0.120099,
		0.833955, -0.482533, 0.267734,
		29.073227, 41.561882, 51.203953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360132, 41.454185, 51.634682>,  <28.489458, 41.899654, 51.016541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360132, 41.454185, 51.634682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.746437, 41.557472, 51.624691>,  <28.978220, 41.619446, 51.618698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.746437, 41.557472, 51.624691>,  <28.360132, 41.454185, 51.634682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746437, 41.557472, 51.624691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060833, 0.319008, 0.945798,
		0.252184, -0.911899, 0.323795,
		0.965765, 0.258213, -0.024976,
		29.036167, 41.634937, 51.617199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597832, 41.267357, 52.243622>,  <28.360132, 41.454185, 51.634682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597832, 41.267357, 52.243622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.852772, 41.550663, 52.122196>,  <29.005735, 41.720646, 52.049339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.852772, 41.550663, 52.122196>,  <28.597832, 41.267357, 52.243622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852772, 41.550663, 52.122196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181282, 0.520702, 0.834270,
		0.748947, -0.476692, 0.460264,
		0.637350, 0.708262, -0.303563,
		29.043978, 41.763142, 52.031128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.281372, 34.431637, 39.191143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522312, 34.748867, 39.227364>,  <36.666878, 34.939205, 39.249096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522312, 34.748867, 39.227364>,  <36.281372, 34.431637, 39.191143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522312, 34.748867, 39.227364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340483, 0.152664, 0.927774,
		0.721974, -0.589677, 0.361987,
		0.602350, 0.793079, 0.090555,
		36.703018, 34.986790, 39.254532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521919, 34.273079, 39.812847>,  <36.281372, 34.431637, 39.191143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521919, 34.273079, 39.812847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532265, 34.659130, 39.708649>,  <36.538471, 34.890762, 39.646130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532265, 34.659130, 39.708649>,  <36.521919, 34.273079, 39.812847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532265, 34.659130, 39.708649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370323, 0.251297, 0.894265,
		0.928543, 0.073344, 0.363908,
		0.025860, 0.965127, -0.260501,
		36.540024, 34.948669, 39.630497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731979, 34.672928, 40.418915>,  <36.521919, 34.273079, 39.812847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731979, 34.672928, 40.418915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543983, 34.939095, 40.186939>,  <36.431187, 35.098797, 40.047752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543983, 34.939095, 40.186939>,  <36.731979, 34.672928, 40.418915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543983, 34.939095, 40.186939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519601, 0.322555, 0.791185,
		0.713532, 0.673183, 0.194155,
		-0.469987, 0.665419, -0.579940,
		36.402988, 35.138721, 40.012959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790703, 35.386997, 40.761951>,  <36.731979, 34.672928, 40.418915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790703, 35.386997, 40.761951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473526, 35.386620, 40.518234>,  <36.283218, 35.386395, 40.372005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473526, 35.386620, 40.518234>,  <36.790703, 35.386997, 40.761951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473526, 35.386620, 40.518234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530845, 0.491908, 0.690094,
		0.299066, 0.870646, -0.390557,
		-0.792946, -0.000942, -0.609291,
		36.235641, 35.386337, 40.335445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457901, 36.071892, 40.922092>,  <36.790703, 35.386997, 40.761951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457901, 36.071892, 40.922092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169270, 35.898815, 40.705906>,  <35.996090, 35.794968, 40.576195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169270, 35.898815, 40.705906>,  <36.457901, 36.071892, 40.922092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169270, 35.898815, 40.705906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688747, 0.369258, 0.623919,
		-0.070396, 0.822449, -0.564466,
		-0.721576, -0.432696, -0.540465,
		35.952797, 35.769005, 40.543766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997723, 36.611813, 40.709450>,  <36.457901, 36.071892, 40.922092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997723, 36.611813, 40.709450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771915, 36.281666, 40.705757>,  <35.636429, 36.083576, 40.703541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771915, 36.281666, 40.705757>,  <35.997723, 36.611813, 40.709450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771915, 36.281666, 40.705757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688788, 0.464885, 0.556285,
		-0.454850, 0.320390, -0.830940,
		-0.564520, -0.825368, -0.009228,
		35.602558, 36.034054, 40.702988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340019, 36.865253, 40.552788>,  <35.997723, 36.611813, 40.709450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340019, 36.865253, 40.552788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264179, 36.505184, 40.709625>,  <35.218674, 36.289143, 40.803730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264179, 36.505184, 40.709625>,  <35.340019, 36.865253, 40.552788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264179, 36.505184, 40.709625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723340, 0.398099, 0.564178,
		-0.663951, -0.176651, -0.726611,
		-0.189600, -0.900173, 0.392097,
		35.207298, 36.235130, 40.827255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670776, 36.701847, 40.424473>,  <35.340019, 36.865253, 40.552788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670776, 36.701847, 40.424473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724300, 36.451790, 40.732056>,  <34.756413, 36.301758, 40.916607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724300, 36.451790, 40.732056>,  <34.670776, 36.701847, 40.424473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724300, 36.451790, 40.732056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825480, 0.359030, 0.435523,
		-0.548342, -0.693034, -0.468001,
		0.133806, -0.625141, 0.768957,
		34.764442, 36.264248, 40.962742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061508, 36.356918, 40.550835>,  <34.670776, 36.701847, 40.424473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061508, 36.356918, 40.550835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248199, 36.329853, 40.903557>,  <34.360214, 36.313614, 41.115189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248199, 36.329853, 40.903557>,  <34.061508, 36.356918, 40.550835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248199, 36.329853, 40.903557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820900, 0.337843, 0.460418,
		-0.329064, -0.938767, 0.102141,
		0.466733, -0.067659, 0.881806,
		34.388218, 36.309555, 41.168098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495613, 36.341221, 41.065357>,  <34.061508, 36.356918, 40.550835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495613, 36.341221, 41.065357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801510, 36.429379, 41.307545>,  <33.985050, 36.482273, 41.452858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801510, 36.429379, 41.307545>,  <33.495613, 36.341221, 41.065357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801510, 36.429379, 41.307545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621154, 0.501948, 0.601844,
		-0.171270, -0.836346, 0.520761,
		0.764745, 0.220395, 0.605468,
		34.030933, 36.495499, 41.489185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231388, 36.050121, 41.690418>,  <33.495613, 36.341221, 41.065357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231388, 36.050121, 41.690418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521595, 36.312637, 41.773281>,  <33.695717, 36.470146, 41.822998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521595, 36.312637, 41.773281>,  <33.231388, 36.050121, 41.690418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521595, 36.312637, 41.773281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550213, 0.372330, 0.747419,
		0.413396, -0.656241, 0.631231,
		0.725514, 0.656291, 0.207153,
		33.739250, 36.509525, 41.835426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298828, 36.012943, 42.410915>,  <33.231388, 36.050121, 41.690418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298828, 36.012943, 42.410915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444412, 36.374023, 42.319115>,  <33.531761, 36.590672, 42.264034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444412, 36.374023, 42.319115>,  <33.298828, 36.012943, 42.410915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444412, 36.374023, 42.319115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573469, 0.411336, 0.708475,
		0.733940, -0.126246, 0.667379,
		0.363959, 0.902699, -0.229497,
		33.553600, 36.644833, 42.250267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447769, 35.533577, 43.011963>,  <33.298828, 36.012943, 42.410915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447769, 35.533577, 43.011963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091999, 35.365379, 42.940281>,  <32.878536, 35.264462, 42.897270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091999, 35.365379, 42.940281>,  <33.447769, 35.533577, 43.011963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091999, 35.365379, 42.940281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392908, -0.502995, -0.769818,
		0.233560, -0.755105, 0.612589,
		-0.889423, -0.420490, -0.179207,
		32.825172, 35.239231, 42.886520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633099, 34.837410, 43.049732>,  <33.447769, 35.533577, 43.011963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633099, 34.837410, 43.049732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297195, 34.886162, 42.838089>,  <33.095654, 34.915413, 42.711102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297195, 34.886162, 42.838089>,  <33.633099, 34.837410, 43.049732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297195, 34.886162, 42.838089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442674, -0.410596, -0.797152,
		-0.314405, -0.903635, 0.290848,
		-0.839756, 0.121877, -0.529109,
		33.045269, 34.922726, 42.679356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332371, 34.137882, 42.876446>,  <33.633099, 34.837410, 43.049732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332371, 34.137882, 42.876446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178680, 34.371422, 42.590374>,  <33.086468, 34.511547, 42.418732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178680, 34.371422, 42.590374>,  <33.332371, 34.137882, 42.876446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178680, 34.371422, 42.590374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172893, -0.715438, -0.676946,
		-0.906907, -0.383749, 0.173944,
		-0.384224, 0.583853, -0.715184,
		33.063412, 34.546577, 42.375820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873928, 33.695637, 42.419041>,  <33.332371, 34.137882, 42.876446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873928, 33.695637, 42.419041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968128, 34.021946, 42.207741>,  <33.024647, 34.217731, 42.080959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968128, 34.021946, 42.207741>,  <32.873928, 33.695637, 42.419041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968128, 34.021946, 42.207741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185109, -0.571239, -0.799638,
		-0.954083, 0.090531, -0.285534,
		0.235500, 0.815776, -0.528251,
		33.038776, 34.266678, 42.049267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574802, 33.537453, 41.741135>,  <32.873928, 33.695637, 42.419041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574802, 33.537453, 41.741135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817467, 33.845390, 41.661846>,  <32.963066, 34.030155, 41.614273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817467, 33.845390, 41.661846>,  <32.574802, 33.537453, 41.741135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817467, 33.845390, 41.661846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193935, -0.385143, -0.902249,
		-0.770940, 0.508918, -0.382953,
		0.606663, 0.769848, -0.198226,
		32.999466, 34.076344, 41.602379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515816, 33.738953, 41.019440>,  <32.574802, 33.537453, 41.741135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515816, 33.738953, 41.019440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873619, 33.904758, 41.086407>,  <33.088303, 34.004242, 41.126587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873619, 33.904758, 41.086407>,  <32.515816, 33.738953, 41.019440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873619, 33.904758, 41.086407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341465, -0.391817, -0.854331,
		-0.288530, 0.821378, -0.492025,
		0.894512, 0.414510, 0.167421,
		33.141972, 34.029110, 41.136635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676552, 33.830578, 40.411034>,  <32.515816, 33.738953, 41.019440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676552, 33.830578, 40.411034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022388, 33.879539, 40.605968>,  <33.229893, 33.908916, 40.722931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022388, 33.879539, 40.605968>,  <32.676552, 33.830578, 40.411034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022388, 33.879539, 40.605968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494902, -0.375170, -0.783786,
		0.086897, 0.918839, -0.384946,
		0.864593, 0.122402, 0.487336,
		33.281765, 33.916260, 40.752171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116341, 34.222878, 40.059383>,  <32.676552, 33.830578, 40.411034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116341, 34.222878, 40.059383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340706, 33.985023, 40.289787>,  <33.475327, 33.842312, 40.428028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340706, 33.985023, 40.289787>,  <33.116341, 34.222878, 40.059383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340706, 33.985023, 40.289787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492730, -0.319328, -0.809473,
		0.665278, 0.737859, 0.113880,
		0.560912, -0.594637, 0.576007,
		33.508980, 33.806633, 40.462589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801945, 34.339260, 39.837376>,  <33.116341, 34.222878, 40.059383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801945, 34.339260, 39.837376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790619, 33.994267, 40.039494>,  <33.783825, 33.787270, 40.160767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790619, 33.994267, 40.039494>,  <33.801945, 34.339260, 39.837376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790619, 33.994267, 40.039494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399067, -0.473222, -0.785370,
		0.916485, 0.179409, 0.357587,
		-0.028315, -0.862481, 0.505297,
		33.782124, 33.735523, 40.191082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410309, 34.009998, 39.653255>,  <33.801945, 34.339260, 39.837376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410309, 34.009998, 39.653255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186718, 33.705360, 39.784412>,  <34.052563, 33.522579, 39.863106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186718, 33.705360, 39.784412>,  <34.410309, 34.009998, 39.653255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186718, 33.705360, 39.784412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324274, -0.564738, -0.758892,
		0.763144, -0.317877, 0.562642,
		-0.558979, -0.761595, 0.327897,
		34.019024, 33.476883, 39.882782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865726, 33.355495, 39.620956>,  <34.410309, 34.009998, 39.653255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865726, 33.355495, 39.620956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485847, 33.231125, 39.635887>,  <34.257919, 33.156502, 39.644844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485847, 33.231125, 39.635887>,  <34.865726, 33.355495, 39.620956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485847, 33.231125, 39.635887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201855, -0.698919, -0.686125,
		0.239422, -0.644079, 0.726526,
		-0.949701, -0.310926, 0.037326,
		34.200935, 33.137848, 39.647083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968330, 32.664471, 39.718475>,  <34.865726, 33.355495, 39.620956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968330, 32.664471, 39.718475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594685, 32.695312, 39.579056>,  <34.370499, 32.713818, 39.495403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594685, 32.695312, 39.579056>,  <34.968330, 32.664471, 39.718475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594685, 32.695312, 39.579056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195069, -0.707459, -0.679301,
		-0.298962, -0.702536, 0.645806,
		-0.934115, 0.077108, -0.348546,
		34.314449, 32.718445, 39.474491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659630, 31.958344, 39.792278>,  <34.968330, 32.664471, 39.718475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659630, 31.958344, 39.792278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495018, 32.172890, 39.497536>,  <34.396252, 32.301617, 39.320690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495018, 32.172890, 39.497536>,  <34.659630, 31.958344, 39.792278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495018, 32.172890, 39.497536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302951, -0.682013, -0.665642,
		-0.859571, -0.497164, 0.118177,
		-0.411531, 0.536365, -0.736855,
		34.371559, 32.333797, 39.276478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883881, 31.253067, 39.980820>,  <34.659630, 31.958344, 39.792278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883881, 31.253067, 39.980820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693897, 30.915459, 40.080448>,  <34.579906, 30.712893, 40.140224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693897, 30.915459, 40.080448>,  <34.883881, 31.253067, 39.980820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693897, 30.915459, 40.080448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066555, 0.316675, 0.946196,
		-0.877486, 0.432831, -0.206582,
		-0.474962, -0.844023, 0.249070,
		34.551407, 30.662252, 40.155170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225037, 31.432312, 40.263496>,  <34.883881, 31.253067, 39.980820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225037, 31.432312, 40.263496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378040, 31.092855, 40.409645>,  <34.469841, 30.889181, 40.497334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378040, 31.092855, 40.409645>,  <34.225037, 31.432312, 40.263496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378040, 31.092855, 40.409645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087266, 0.360492, 0.928671,
		-0.919823, -0.387106, 0.063833,
		0.382506, -0.848643, 0.365370,
		34.492790, 30.838263, 40.519257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693638, 31.119781, 40.636707>,  <34.225037, 31.432312, 40.263496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693638, 31.119781, 40.636707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044193, 31.017908, 40.800209>,  <34.254528, 30.956783, 40.898312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044193, 31.017908, 40.800209>,  <33.693638, 31.119781, 40.636707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044193, 31.017908, 40.800209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308096, 0.355859, 0.882293,
		-0.370166, -0.899167, 0.233402,
		0.876387, -0.254685, 0.408756,
		34.307110, 30.941504, 40.922836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449276, 30.975050, 41.189346>,  <33.693638, 31.119781, 40.636707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449276, 30.975050, 41.189346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840755, 31.029709, 41.250641>,  <34.075642, 31.062504, 41.287418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840755, 31.029709, 41.250641>,  <33.449276, 30.975050, 41.189346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840755, 31.029709, 41.250641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187893, 0.295276, 0.936754,
		0.082756, -0.945590, 0.314660,
		0.978697, 0.136644, 0.153234,
		34.134365, 31.070702, 41.296612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545444, 30.728388, 41.885231>,  <33.449276, 30.975050, 41.189346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545444, 30.728388, 41.885231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864262, 30.952282, 41.794533>,  <34.055553, 31.086618, 41.740112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864262, 30.952282, 41.794533>,  <33.545444, 30.728388, 41.885231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864262, 30.952282, 41.794533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059000, 0.301491, 0.951642,
		0.601032, -0.771878, 0.207277,
		0.797044, 0.559738, -0.226747,
		34.103374, 31.120203, 41.726509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049713, 30.626127, 42.437622>,  <33.545444, 30.728388, 41.885231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049713, 30.626127, 42.437622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137733, 30.980206, 42.273670>,  <34.190544, 31.192654, 42.175301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137733, 30.980206, 42.273670>,  <34.049713, 30.626127, 42.437622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137733, 30.980206, 42.273670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048602, 0.409710, 0.910920,
		0.974277, -0.220370, 0.047135,
		0.220051, 0.885198, -0.409881,
		34.203751, 31.245766, 42.150707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702713, 30.821678, 42.729160>,  <34.049713, 30.626127, 42.437622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702713, 30.821678, 42.729160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517025, 31.155172, 42.609570>,  <34.405613, 31.355268, 42.537815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517025, 31.155172, 42.609570>,  <34.702713, 30.821678, 42.729160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517025, 31.155172, 42.609570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058935, 0.365875, 0.928796,
		0.883758, 0.413544, -0.218983,
		-0.464219, 0.833736, -0.298973,
		34.377758, 31.405293, 42.519878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935703, 31.344973, 43.207935>,  <34.702713, 30.821678, 42.729160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935703, 31.344973, 43.207935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626778, 31.523428, 43.027050>,  <34.441422, 31.630501, 42.918518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626778, 31.523428, 43.027050>,  <34.935703, 31.344973, 43.207935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626778, 31.523428, 43.027050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241133, 0.452695, 0.858442,
		0.587697, 0.772028, -0.242043,
		-0.772313, 0.446139, -0.452209,
		34.395084, 31.657270, 42.891388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032650, 32.132881, 43.335220>,  <34.935703, 31.344973, 43.207935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032650, 32.132881, 43.335220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648838, 32.035568, 43.278481>,  <34.418552, 31.977180, 43.244434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648838, 32.035568, 43.278481>,  <35.032650, 32.132881, 43.335220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648838, 32.035568, 43.278481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251726, 0.515085, 0.819342,
		-0.126266, 0.821889, -0.555478,
		-0.959526, -0.243284, -0.141853,
		34.360981, 31.962584, 43.235924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713509, 32.766697, 43.477741>,  <35.032650, 32.132881, 43.335220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713509, 32.766697, 43.477741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455307, 32.464779, 43.524422>,  <34.300388, 32.283630, 43.552429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455307, 32.464779, 43.524422>,  <34.713509, 32.766697, 43.477741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455307, 32.464779, 43.524422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412811, 0.473348, 0.778157,
		-0.642585, 0.454127, -0.617133,
		-0.645501, -0.754792, 0.116698,
		34.261658, 32.238342, 43.559429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096569, 33.046856, 43.450336>,  <34.713509, 32.766697, 43.477741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096569, 33.046856, 43.450336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028835, 32.705929, 43.648277>,  <33.988194, 32.501373, 43.767040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028835, 32.705929, 43.648277>,  <34.096569, 33.046856, 43.450336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028835, 32.705929, 43.648277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466295, 0.511635, 0.721663,
		-0.868271, -0.108546, -0.484069,
		-0.169333, -0.852319, 0.494852,
		33.978035, 32.450233, 43.796734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663395, 33.204731, 43.887917>,  <34.096569, 33.046856, 43.450336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663395, 33.204731, 43.887917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766136, 32.848358, 44.037724>,  <33.827782, 32.634533, 44.127609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766136, 32.848358, 44.037724>,  <33.663395, 33.204731, 43.887917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766136, 32.848358, 44.037724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204106, 0.328773, 0.922089,
		-0.944653, -0.313281, -0.097399,
		0.256851, -0.890934, 0.374519,
		33.843193, 32.581078, 44.150078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113686, 33.096085, 44.204422>,  <33.663395, 33.204731, 43.887917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113686, 33.096085, 44.204422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394634, 32.862801, 44.367664>,  <33.563202, 32.722832, 44.465611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394634, 32.862801, 44.367664>,  <33.113686, 33.096085, 44.204422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394634, 32.862801, 44.367664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306049, 0.270203, 0.912866,
		-0.642660, -0.766068, 0.011292,
		0.702369, -0.583207, 0.408103,
		33.605347, 32.687840, 44.490097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808643, 32.932014, 44.813679>,  <33.113686, 33.096085, 44.204422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808643, 32.932014, 44.813679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187794, 32.835587, 44.897018>,  <33.415283, 32.777729, 44.947021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187794, 32.835587, 44.897018>,  <32.808643, 32.932014, 44.813679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187794, 32.835587, 44.897018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159363, 0.207548, 0.965157,
		-0.275913, -0.948055, 0.158313,
		0.947879, -0.241070, 0.208350,
		33.472157, 32.763264, 44.959522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782555, 32.576382, 45.376133>,  <32.808643, 32.932014, 44.813679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782555, 32.576382, 45.376133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149879, 32.734722, 45.376038>,  <33.370274, 32.829727, 45.375980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149879, 32.734722, 45.376038>,  <32.782555, 32.576382, 45.376133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149879, 32.734722, 45.376038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097989, 0.227911, 0.968739,
		0.383535, -0.889582, 0.248083,
		0.918313, 0.395854, -0.000243,
		33.425373, 32.853477, 45.375965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257118, 32.264511, 45.983814>,  <32.782555, 32.576382, 45.376133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257118, 32.264511, 45.983814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335804, 32.632652, 45.848606>,  <33.383015, 32.853539, 45.767483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335804, 32.632652, 45.848606>,  <33.257118, 32.264511, 45.983814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335804, 32.632652, 45.848606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061488, 0.332495, 0.941098,
		0.978532, -0.205908, 0.008815,
		0.196710, 0.920353, -0.338018,
		33.394817, 32.908756, 45.747200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571541, 32.383404, 46.573322>,  <33.257118, 32.264511, 45.983814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571541, 32.383404, 46.573322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529236, 32.718163, 46.358501>,  <33.503853, 32.919018, 46.229610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529236, 32.718163, 46.358501>,  <33.571541, 32.383404, 46.573322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529236, 32.718163, 46.358501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216929, 0.546489, 0.808883,
		0.970441, -0.030949, -0.239347,
		-0.105766, 0.836894, -0.537049,
		33.497505, 32.969231, 46.197388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076927, 32.814625, 46.837284>,  <33.571541, 32.383404, 46.573322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076927, 32.814625, 46.837284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828716, 33.056866, 46.638008>,  <33.679790, 33.202209, 46.518440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828716, 33.056866, 46.638008>,  <34.076927, 32.814625, 46.837284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828716, 33.056866, 46.638008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147291, 0.714000, 0.684477,
		0.770230, 0.351356, -0.532254,
		-0.620525, 0.605601, -0.498193,
		33.642559, 33.238544, 46.488552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410229, 33.481606, 46.799603>,  <34.076927, 32.814625, 46.837284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410229, 33.481606, 46.799603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015858, 33.536152, 46.760925>,  <33.779236, 33.568878, 46.737720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015858, 33.536152, 46.760925>,  <34.410229, 33.481606, 46.799603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015858, 33.536152, 46.760925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004073, 0.558666, 0.829383,
		0.167116, 0.818107, -0.550249,
		-0.985929, 0.136362, -0.096694,
		33.720078, 33.577061, 46.731918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285080, 34.094475, 47.131649>,  <34.410229, 33.481606, 46.799603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285080, 34.094475, 47.131649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907890, 33.965588, 47.098251>,  <33.681576, 33.888256, 47.078213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907890, 33.965588, 47.098251>,  <34.285080, 34.094475, 47.131649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907890, 33.965588, 47.098251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237924, 0.477054, 0.846057,
		-0.232781, 0.817677, -0.526514,
		-0.942977, -0.322216, -0.083496,
		33.624996, 33.868923, 47.073204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842712, 34.637764, 47.192856>,  <34.285080, 34.094475, 47.131649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842712, 34.637764, 47.192856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631584, 34.315685, 47.300972>,  <33.504906, 34.122437, 47.365841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631584, 34.315685, 47.300972>,  <33.842712, 34.637764, 47.192856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631584, 34.315685, 47.300972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225624, 0.439721, 0.869332,
		-0.818840, 0.397867, -0.413766,
		-0.527820, -0.805200, 0.270293,
		33.473240, 34.074123, 47.382061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224236, 34.949100, 47.355034>,  <33.842712, 34.637764, 47.192856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224236, 34.949100, 47.355034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242851, 34.594910, 47.539970>,  <33.254021, 34.382393, 47.650932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242851, 34.594910, 47.539970>,  <33.224236, 34.949100, 47.355034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242851, 34.594910, 47.539970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305143, 0.428117, 0.850649,
		-0.951169, -0.180671, -0.250272,
		0.046542, -0.885480, 0.462342,
		33.256813, 34.329266, 47.678673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612946, 34.912254, 47.706928>,  <33.224236, 34.949100, 47.355034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612946, 34.912254, 47.706928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864449, 34.656380, 47.883778>,  <33.015350, 34.502853, 47.989887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864449, 34.656380, 47.883778>,  <32.612946, 34.912254, 47.706928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864449, 34.656380, 47.883778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237181, 0.383711, 0.892475,
		-0.740550, -0.666009, 0.089537,
		0.628753, -0.639686, 0.442122,
		33.053074, 34.464474, 48.016415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248497, 34.633171, 48.229725>,  <32.612946, 34.912254, 47.706928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248497, 34.633171, 48.229725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623108, 34.560017, 48.349365>,  <32.847874, 34.516125, 48.421150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623108, 34.560017, 48.349365>,  <32.248497, 34.633171, 48.229725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623108, 34.560017, 48.349365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248280, 0.256367, 0.934148,
		-0.247526, -0.949119, 0.194688,
		0.936530, -0.182889, 0.299105,
		32.904068, 34.505150, 48.439098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163757, 34.368637, 48.924473>,  <32.248497, 34.633171, 48.229725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163757, 34.368637, 48.924473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544762, 34.490406, 48.927525>,  <32.773365, 34.563469, 48.929356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544762, 34.490406, 48.927525>,  <32.163757, 34.368637, 48.924473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544762, 34.490406, 48.927525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137420, 0.407336, 0.902881,
		0.271748, -0.861049, 0.429824,
		0.952506, 0.304423, 0.007632,
		32.830513, 34.581734, 48.929813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547787, 34.175896, 49.554905>,  <32.163757, 34.368637, 48.924473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547787, 34.175896, 49.554905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719746, 34.506416, 49.409355>,  <32.822922, 34.704731, 49.322025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719746, 34.506416, 49.409355>,  <32.547787, 34.175896, 49.554905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719746, 34.506416, 49.409355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093548, 0.360082, 0.928219,
		0.898016, -0.433083, 0.077501,
		0.429902, 0.826306, -0.363873,
		32.848717, 34.754307, 49.300194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010384, 34.303463, 50.136703>,  <32.547787, 34.175896, 49.554905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010384, 34.303463, 50.136703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031876, 34.641277, 49.923584>,  <33.044769, 34.843964, 49.795712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031876, 34.641277, 49.923584>,  <33.010384, 34.303463, 50.136703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031876, 34.641277, 49.923584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215987, 0.530770, 0.819532,
		0.974917, 0.071049, 0.210924,
		0.053725, 0.844532, -0.532803,
		33.047993, 34.894638, 49.763744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597164, 34.661606, 50.407490>,  <33.010384, 34.303463, 50.136703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597164, 34.661606, 50.407490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335072, 34.911552, 50.237682>,  <33.177814, 35.061520, 50.135799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335072, 34.911552, 50.237682>,  <33.597164, 34.661606, 50.407490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335072, 34.911552, 50.237682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030424, 0.539667, 0.841328,
		0.754816, 0.564179, -0.334596,
		-0.655231, 0.624869, -0.424514,
		33.138504, 35.099014, 50.110329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683136, 35.273369, 50.735069>,  <33.597164, 34.661606, 50.407490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683136, 35.273369, 50.735069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314251, 35.304844, 50.583630>,  <33.092922, 35.323730, 50.492767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314251, 35.304844, 50.583630>,  <33.683136, 35.273369, 50.735069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314251, 35.304844, 50.583630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241965, 0.646285, 0.723718,
		0.301633, 0.759028, -0.576970,
		-0.922210, 0.078690, -0.378599,
		33.037586, 35.328449, 50.470051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288670, 35.349392, 50.329826>,  <33.683136, 35.273369, 50.735069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288670, 35.349392, 50.329826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640694, 35.466965, 50.479008>,  <34.851910, 35.537510, 50.568516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640694, 35.466965, 50.479008>,  <34.288670, 35.349392, 50.329826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640694, 35.466965, 50.479008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468800, -0.412700, -0.780964,
		-0.075631, 0.862138, -0.500996,
		0.880061, 0.293932, 0.372957,
		34.904713, 35.555145, 50.590897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688225, 35.470177, 49.709316>,  <34.288670, 35.349392, 50.329826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688225, 35.470177, 49.709316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940361, 35.448662, 50.019096>,  <35.091640, 35.435753, 50.204964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940361, 35.448662, 50.019096>,  <34.688225, 35.470177, 49.709316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940361, 35.448662, 50.019096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693482, -0.409379, -0.592867,
		0.348936, 0.910778, -0.220745,
		0.630338, -0.053790, 0.774455,
		35.129463, 35.432526, 50.251434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337044, 35.587833, 49.400986>,  <34.688225, 35.470177, 49.709316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337044, 35.587833, 49.400986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443874, 35.410095, 49.743031>,  <35.507973, 35.303452, 49.948257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443874, 35.410095, 49.743031>,  <35.337044, 35.587833, 49.400986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443874, 35.410095, 49.743031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705262, -0.514576, -0.487665,
		0.656716, 0.733325, 0.175951,
		0.267077, -0.444349, 0.855116,
		35.523998, 35.276791, 49.999565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018299, 35.677315, 49.524975>,  <35.337044, 35.587833, 49.400986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018299, 35.677315, 49.524975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931389, 35.343517, 49.727520>,  <35.879242, 35.143238, 49.849049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931389, 35.343517, 49.727520>,  <36.018299, 35.677315, 49.524975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931389, 35.343517, 49.727520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684840, -0.499979, -0.530108,
		0.695545, 0.231598, 0.680132,
		-0.217280, -0.834496, 0.506366,
		35.866203, 35.093170, 49.879429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670826, 35.352173, 49.661797>,  <36.018299, 35.677315, 49.524975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670826, 35.352173, 49.661797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417397, 35.047741, 49.717415>,  <36.265339, 34.865082, 49.750786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417397, 35.047741, 49.717415>,  <36.670826, 35.352173, 49.661797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417397, 35.047741, 49.717415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562183, -0.576352, -0.593101,
		0.531539, -0.297606, 0.793030,
		-0.633575, -0.761084, 0.139045,
		36.227325, 34.819416, 49.759129>
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
