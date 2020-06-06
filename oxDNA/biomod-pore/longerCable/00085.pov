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
	<24.448109, 35.058903, 34.653847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319296, 34.839516, 34.962513>,  <24.242008, 34.707882, 35.147713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319296, 34.839516, 34.962513>,  <24.448109, 35.058903, 34.653847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.319296, 34.839516, 34.962513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572253, 0.536565, 0.620181,
		-0.754202, 0.641309, 0.141073,
		-0.322033, -0.548471, 0.771670,
		24.222687, 34.674973, 35.194016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.005756, 35.453098, 35.196617>,  <24.448109, 35.058903, 34.653847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.005756, 35.453098, 35.196617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203398, 35.137882, 35.343510>,  <24.321981, 34.948753, 35.431644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203398, 35.137882, 35.343510>,  <24.005756, 35.453098, 35.196617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.203398, 35.137882, 35.343510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512786, 0.605253, 0.608868,
		-0.702079, -0.112532, 0.703152,
		0.494102, -0.788039, 0.367230,
		24.351627, 34.901470, 35.453678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.923607, 35.383873, 35.924805>,  <24.005756, 35.453098, 35.196617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.923607, 35.383873, 35.924805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290220, 35.262196, 35.820934>,  <24.510187, 35.189190, 35.758610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290220, 35.262196, 35.820934>,  <23.923607, 35.383873, 35.924805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.290220, 35.262196, 35.820934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399883, 0.709835, 0.579852,
		0.007939, -0.635294, 0.772230,
		0.916532, -0.304198, -0.259679,
		24.565180, 35.170937, 35.743031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.247166, 35.109383, 36.504341>,  <23.923607, 35.383873, 35.924805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.247166, 35.109383, 36.504341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.486317, 35.279095, 36.232304>,  <24.629807, 35.380924, 36.069080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.486317, 35.279095, 36.232304>,  <24.247166, 35.109383, 36.504341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.486317, 35.279095, 36.232304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455451, 0.518370, 0.723780,
		0.659627, -0.742481, 0.116681,
		0.597876, 0.424282, -0.680094,
		24.665680, 35.406380, 36.028275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040995, 35.023296, 36.721607>,  <24.247166, 35.109383, 36.504341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040995, 35.023296, 36.721607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931204, 35.346718, 36.513412>,  <24.865330, 35.540771, 36.388496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931204, 35.346718, 36.513412>,  <25.040995, 35.023296, 36.721607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931204, 35.346718, 36.513412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670458, 0.548924, 0.499168,
		0.689309, -0.211951, -0.692769,
		-0.274479, 0.808554, -0.520483,
		24.848860, 35.589283, 36.357269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.647182, 35.355366, 36.247692>,  <25.040995, 35.023296, 36.721607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.647182, 35.355366, 36.247692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386463, 35.620060, 36.395885>,  <25.230032, 35.778877, 36.484802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386463, 35.620060, 36.395885>,  <25.647182, 35.355366, 36.247692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.386463, 35.620060, 36.395885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729000, 0.412007, 0.546634,
		0.209086, 0.626380, -0.750954,
		-0.651799, 0.661739, 0.370486,
		25.190924, 35.818581, 36.507030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046417, 36.012295, 36.332428>,  <25.647182, 35.355366, 36.247692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046417, 36.012295, 36.332428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722912, 36.001198, 36.567421>,  <25.528809, 35.994537, 36.708416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722912, 36.001198, 36.567421>,  <26.046417, 36.012295, 36.332428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722912, 36.001198, 36.567421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513175, 0.454693, 0.727947,
		-0.287318, 0.890216, -0.353502,
		-0.808765, -0.027745, 0.587478,
		25.480282, 35.992874, 36.743664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915730, 36.763981, 36.556816>,  <26.046417, 36.012295, 36.332428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915730, 36.763981, 36.556816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825075, 36.446705, 36.782909>,  <25.770681, 36.256340, 36.918564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825075, 36.446705, 36.782909>,  <25.915730, 36.763981, 36.556816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825075, 36.446705, 36.782909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549015, 0.375314, 0.746808,
		-0.804499, 0.479577, 0.350411,
		-0.226638, -0.793187, 0.565235,
		25.757084, 36.208748, 36.952480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729034, 37.061943, 37.263771>,  <25.915730, 36.763981, 36.556816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.729034, 37.061943, 37.263771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843746, 36.680103, 37.295994>,  <25.912573, 36.451000, 37.315327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843746, 36.680103, 37.295994>,  <25.729034, 37.061943, 37.263771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.843746, 36.680103, 37.295994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667464, 0.259420, 0.697993,
		-0.687205, -0.146400, 0.711559,
		0.286779, -0.954604, 0.080558,
		25.929779, 36.393723, 37.320160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752497, 36.864155, 37.996574>,  <25.729034, 37.061943, 37.263771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752497, 36.864155, 37.996574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997608, 36.597240, 37.827232>,  <26.144674, 36.437092, 37.725628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997608, 36.597240, 37.827232>,  <25.752497, 36.864155, 37.996574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997608, 36.597240, 37.827232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764937, 0.366336, 0.529782,
		-0.198429, -0.648476, 0.734918,
		0.612778, -0.667290, -0.423352,
		26.181442, 36.397053, 37.700226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165682, 36.645794, 38.497730>,  <25.752497, 36.864155, 37.996574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165682, 36.645794, 38.497730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373697, 36.516033, 38.181675>,  <26.498507, 36.438175, 37.992043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373697, 36.516033, 38.181675>,  <26.165682, 36.645794, 38.497730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373697, 36.516033, 38.181675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843964, 0.337546, 0.416877,
		0.131474, -0.883644, 0.449319,
		0.520037, -0.324401, -0.790143,
		26.529709, 36.418713, 37.944633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739286, 36.172295, 38.647476>,  <26.165682, 36.645794, 38.497730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739286, 36.172295, 38.647476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845251, 36.375759, 38.319798>,  <26.908831, 36.497837, 38.123192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845251, 36.375759, 38.319798>,  <26.739286, 36.172295, 38.647476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845251, 36.375759, 38.319798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866326, 0.247512, 0.433840,
		0.423439, -0.824622, -0.375098,
		0.264912, 0.508662, -0.819197,
		26.924725, 36.528358, 38.074039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323112, 36.082180, 39.042130>,  <26.739286, 36.172295, 38.647476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323112, 36.082180, 39.042130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605158, 36.304790, 38.866360>,  <27.774385, 36.438354, 38.760899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605158, 36.304790, 38.866360>,  <27.323112, 36.082180, 39.042130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605158, 36.304790, 38.866360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507944, -0.035991, -0.860638,
		-0.494781, 0.830051, 0.257306,
		0.705113, 0.556524, -0.439427,
		27.816692, 36.471748, 38.734531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143950, 36.815937, 38.677231>,  <27.323112, 36.082180, 39.042130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143950, 36.815937, 38.677231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404016, 36.565281, 38.505371>,  <27.560057, 36.414886, 38.402256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404016, 36.565281, 38.505371>,  <27.143950, 36.815937, 38.677231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404016, 36.565281, 38.505371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559588, -0.012418, -0.828678,
		0.513948, 0.779209, -0.358735,
		0.650168, -0.626641, -0.429654,
		27.599068, 36.377289, 38.376476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305304, 37.081013, 37.971581>,  <27.143950, 36.815937, 38.677231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305304, 37.081013, 37.971581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329306, 36.687096, 38.036789>,  <27.343708, 36.450745, 38.075912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329306, 36.687096, 38.036789>,  <27.305304, 37.081013, 37.971581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329306, 36.687096, 38.036789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572314, -0.167750, -0.802693,
		0.817836, -0.045132, -0.573679,
		0.060007, -0.984796, 0.163022,
		27.347307, 36.391655, 38.085697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426172, 36.743568, 37.312859>,  <27.305304, 37.081013, 37.971581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426172, 36.743568, 37.312859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276485, 36.485138, 37.578953>,  <27.186674, 36.330078, 37.738609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276485, 36.485138, 37.578953>,  <27.426172, 36.743568, 37.312859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276485, 36.485138, 37.578953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642869, -0.336270, -0.688217,
		0.668342, -0.685205, -0.289506,
		-0.374217, -0.646079, 0.665240,
		27.164221, 36.291313, 37.778526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233023, 36.052029, 36.945972>,  <27.426172, 36.743568, 37.312859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233023, 36.052029, 36.945972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017118, 36.125168, 37.274662>,  <26.887577, 36.169052, 37.471874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017118, 36.125168, 37.274662>,  <27.233023, 36.052029, 36.945972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017118, 36.125168, 37.274662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824755, -0.310411, -0.472679,
		0.168643, -0.932851, 0.318352,
		-0.539759, 0.182849, 0.821722,
		26.855190, 36.180023, 37.521179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928116, 35.521290, 37.093952>,  <27.233023, 36.052029, 36.945972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928116, 35.521290, 37.093952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697271, 35.773144, 37.301991>,  <26.558764, 35.924255, 37.426811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697271, 35.773144, 37.301991>,  <26.928116, 35.521290, 37.093952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697271, 35.773144, 37.301991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812650, -0.379688, -0.442083,
		-0.080879, -0.677785, 0.730798,
		-0.577112, 0.629638, 0.520094,
		26.524137, 35.962036, 37.458019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312361, 35.151867, 37.354366>,  <26.928116, 35.521290, 37.093952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312361, 35.151867, 37.354366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192780, 35.533142, 37.372505>,  <26.121031, 35.761909, 37.383389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192780, 35.533142, 37.372505>,  <26.312361, 35.151867, 37.354366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192780, 35.533142, 37.372505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905251, -0.268242, -0.329495,
		-0.301910, -0.139547, 0.943068,
		-0.298951, 0.953191, 0.045340,
		26.103094, 35.819099, 37.386108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616528, 35.056152, 37.541241>,  <26.312361, 35.151867, 37.354366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616528, 35.056152, 37.541241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664167, 35.416187, 37.373592>,  <25.692751, 35.632206, 37.273003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664167, 35.416187, 37.373592>,  <25.616528, 35.056152, 37.541241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664167, 35.416187, 37.373592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937681, -0.036827, -0.345541,
		-0.326451, 0.434158, 0.839605,
		0.119100, 0.900084, -0.419124,
		25.699898, 35.686211, 37.247856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213444, 34.624504, 37.908215>,  <25.616528, 35.056152, 37.541241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213444, 34.624504, 37.908215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138008, 34.432915, 37.565281>,  <26.092747, 34.317959, 37.359520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138008, 34.432915, 37.565281>,  <26.213444, 34.624504, 37.908215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138008, 34.432915, 37.565281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981132, -0.129768, -0.143321,
		-0.042606, -0.868182, 0.494413,
		-0.188587, -0.478978, -0.857330,
		26.081432, 34.289223, 37.308083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.493502, 33.839458, 37.733845>,  <26.213444, 34.624504, 37.908215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.493502, 33.839458, 37.733845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484943, 34.063980, 37.402912>,  <26.479809, 34.198692, 37.204353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484943, 34.063980, 37.402912>,  <26.493502, 33.839458, 37.733845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484943, 34.063980, 37.402912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967896, -0.195662, -0.157778,
		-0.250440, -0.804145, -0.539102,
		-0.021395, 0.561309, -0.827330,
		26.478525, 34.232372, 37.154713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641172, 33.394775, 37.059280>,  <26.493502, 33.839458, 37.733845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641172, 33.394775, 37.059280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766975, 33.774406, 37.066631>,  <26.842457, 34.002186, 37.071041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766975, 33.774406, 37.066631>,  <26.641172, 33.394775, 37.059280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766975, 33.774406, 37.066631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920504, -0.300197, -0.250107,
		-0.231854, 0.095575, -0.968044,
		0.314508, 0.949077, 0.018375,
		26.861328, 34.059128, 37.072144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470177, 33.058777, 36.447224>,  <26.641172, 33.394775, 37.059280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470177, 33.058777, 36.447224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259359, 33.307625, 36.678806>,  <26.132868, 33.456932, 36.817757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259359, 33.307625, 36.678806>,  <26.470177, 33.058777, 36.447224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.259359, 33.307625, 36.678806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141915, -0.736119, 0.661808,
		0.837904, 0.266640, 0.476255,
		-0.527045, 0.622119, 0.578957,
		26.101246, 33.494259, 36.852493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956631, 33.344624, 36.131325>,  <26.470177, 33.058777, 36.447224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956631, 33.344624, 36.131325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981302, 33.743618, 36.145233>,  <25.996105, 33.983017, 36.153580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981302, 33.743618, 36.145233>,  <25.956631, 33.344624, 36.131325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981302, 33.743618, 36.145233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578727, -0.007360, -0.815488,
		-0.813185, 0.070421, -0.577729,
		0.061679, 0.997490, 0.034770,
		25.999805, 34.042866, 36.155663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947701, 33.490040, 35.343563>,  <25.956631, 33.344624, 36.131325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947701, 33.490040, 35.343563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121321, 33.768440, 35.572365>,  <26.225492, 33.935478, 35.709644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121321, 33.768440, 35.572365>,  <25.947701, 33.490040, 35.343563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121321, 33.768440, 35.572365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820474, -0.043182, -0.570051,
		-0.372055, 0.716744, -0.589791,
		0.434049, 0.695998, 0.572003,
		26.251535, 33.977242, 35.743965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253326, 34.151783, 35.003834>,  <25.947701, 33.490040, 35.343563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253326, 34.151783, 35.003834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452494, 34.087265, 35.344669>,  <26.571995, 34.048553, 35.549171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452494, 34.087265, 35.344669>,  <26.253326, 34.151783, 35.003834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452494, 34.087265, 35.344669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866958, 0.068268, -0.493684,
		0.021456, 0.984543, 0.173825,
		0.497919, -0.161291, 0.852092,
		26.601870, 34.038879, 35.600296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720373, 34.626251, 35.111794>,  <26.253326, 34.151783, 35.003834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720373, 34.626251, 35.111794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835409, 34.289810, 35.295029>,  <26.904430, 34.087948, 35.404968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835409, 34.289810, 35.295029>,  <26.720373, 34.626251, 35.111794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835409, 34.289810, 35.295029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791891, -0.060198, -0.607688,
		0.538702, 0.537520, 0.648747,
		0.287591, -0.841100, 0.458086,
		26.921686, 34.037479, 35.432453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418638, 34.581455, 35.484200>,  <26.720373, 34.626251, 35.111794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418638, 34.581455, 35.484200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315403, 34.219597, 35.348553>,  <27.253462, 34.002480, 35.267166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315403, 34.219597, 35.348553>,  <27.418638, 34.581455, 35.484200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315403, 34.219597, 35.348553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851311, -0.046989, -0.522553,
		0.456793, -0.423556, 0.782266,
		-0.258088, -0.904650, -0.339114,
		27.237976, 33.948200, 35.246819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948689, 34.236645, 35.587776>,  <27.418638, 34.581455, 35.484200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948689, 34.236645, 35.587776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739567, 34.080624, 35.284584>,  <27.614094, 33.987011, 35.102669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739567, 34.080624, 35.284584>,  <27.948689, 34.236645, 35.587776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739567, 34.080624, 35.284584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807726, 0.057571, -0.586741,
		0.272500, -0.918989, 0.284962,
		-0.522803, -0.390058, -0.757979,
		27.582726, 33.963608, 35.057190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504110, 34.600307, 35.130692>,  <27.948689, 34.236645, 35.587776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504110, 34.600307, 35.130692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773767, 34.314442, 35.205299>,  <28.935562, 34.142921, 35.250065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773767, 34.314442, 35.205299>,  <28.504110, 34.600307, 35.130692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773767, 34.314442, 35.205299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301225, 0.035455, -0.952894,
		0.674387, 0.698568, 0.239176,
		0.674141, -0.714665, 0.186515,
		28.976009, 34.100040, 35.261253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970453, 34.394020, 35.772263>,  <28.504110, 34.600307, 35.130692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970453, 34.394020, 35.772263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157953, 34.738815, 35.849453>,  <29.270452, 34.945694, 35.895767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157953, 34.738815, 35.849453>,  <28.970453, 34.394020, 35.772263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157953, 34.738815, 35.849453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380515, -0.394207, 0.836546,
		0.797171, -0.318699, -0.512786,
		0.468750, 0.861993, 0.192980,
		29.298578, 34.997414, 35.907349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650934, 34.162659, 35.995678>,  <28.970453, 34.394020, 35.772263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650934, 34.162659, 35.995678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595209, 34.537998, 36.122227>,  <29.561773, 34.763203, 36.198154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595209, 34.537998, 36.122227>,  <29.650934, 34.162659, 35.995678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595209, 34.537998, 36.122227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528266, -0.199806, 0.825235,
		0.837572, 0.282094, -0.467863,
		-0.139312, 0.938350, 0.316373,
		29.553415, 34.819504, 36.217140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307989, 34.467030, 36.077278>,  <29.650934, 34.162659, 35.995678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307989, 34.467030, 36.077278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031389, 34.625870, 36.318653>,  <29.865429, 34.721172, 36.463478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031389, 34.625870, 36.318653>,  <30.307989, 34.467030, 36.077278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031389, 34.625870, 36.318653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369359, -0.523539, 0.767776,
		0.620809, 0.753803, 0.215354,
		-0.691498, 0.397100, 0.603442,
		29.823940, 34.744999, 36.499687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507259, 34.844807, 36.627472>,  <30.307989, 34.467030, 36.077278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507259, 34.844807, 36.627472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168745, 34.655445, 36.725201>,  <29.965637, 34.541828, 36.783836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168745, 34.655445, 36.725201>,  <30.507259, 34.844807, 36.627472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168745, 34.655445, 36.725201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506737, -0.573835, 0.643374,
		-0.164372, 0.668286, 0.725518,
		-0.846286, -0.473400, 0.244322,
		29.914860, 34.513424, 36.798496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310780, 34.370857, 37.212574>,  <30.507259, 34.844807, 36.627472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310780, 34.370857, 37.212574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352581, 34.058609, 37.459057>,  <30.377661, 33.871262, 37.606949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352581, 34.058609, 37.459057>,  <30.310780, 34.370857, 37.212574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352581, 34.058609, 37.459057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563933, 0.556872, 0.609814,
		-0.819182, 0.283774, 0.498412,
		0.104502, -0.780619, 0.616209,
		30.383932, 33.824425, 37.643921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800257, 33.904408, 37.514240>,  <30.310780, 34.370857, 37.212574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800257, 33.904408, 37.514240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527580, 34.170105, 37.636925>,  <29.363974, 34.329525, 37.710537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527580, 34.170105, 37.636925>,  <29.800257, 33.904408, 37.514240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527580, 34.170105, 37.636925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095880, 0.496703, -0.862608,
		-0.725329, -0.558625, -0.402287,
		-0.681692, 0.664247, 0.306712,
		29.323072, 34.369377, 37.728939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272230, 33.950459, 37.014969>,  <29.800257, 33.904408, 37.514240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272230, 33.950459, 37.014969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292656, 34.297855, 37.212196>,  <29.304913, 34.506294, 37.330532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292656, 34.297855, 37.212196>,  <29.272230, 33.950459, 37.014969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292656, 34.297855, 37.212196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121602, 0.484635, -0.866223,
		-0.991264, 0.104193, -0.080861,
		0.051066, 0.868489, 0.493071,
		29.307976, 34.558403, 37.360119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780151, 34.571541, 37.060707>,  <29.272230, 33.950459, 37.014969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780151, 34.571541, 37.060707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156956, 34.705147, 37.073669>,  <29.383038, 34.785313, 37.081448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156956, 34.705147, 37.073669>,  <28.780151, 34.571541, 37.060707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156956, 34.705147, 37.073669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113458, 0.407880, -0.905959,
		-0.315824, 0.849745, 0.422124,
		0.942010, 0.334017, 0.032408,
		29.439558, 34.805351, 37.083393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802328, 35.307705, 37.023441>,  <28.780151, 34.571541, 37.060707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802328, 35.307705, 37.023441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143202, 35.152493, 36.883034>,  <29.347727, 35.059364, 36.798790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143202, 35.152493, 36.883034>,  <28.802328, 35.307705, 37.023441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143202, 35.152493, 36.883034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119014, 0.509527, -0.852184,
		0.509527, 0.767994, 0.388030,
		0.852184, -0.388030, -0.351020,
		29.398857, 35.036083, 36.777729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166725, 35.901485, 36.796745>,  <28.802328, 35.307705, 37.023441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166725, 35.901485, 36.796745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306805, 35.568115, 36.625740>,  <29.390852, 35.368095, 36.523136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306805, 35.568115, 36.625740>,  <29.166725, 35.901485, 36.796745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306805, 35.568115, 36.625740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084563, 0.426419, -0.900564,
		0.932850, 0.351529, 0.078855,
		0.350200, -0.833423, -0.427512,
		29.411865, 35.318089, 36.497486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758219, 36.137367, 36.245548>,  <29.166725, 35.901485, 36.796745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758219, 36.137367, 36.245548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582785, 35.792866, 36.142876>,  <29.477524, 35.586166, 36.081272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582785, 35.792866, 36.142876>,  <29.758219, 36.137367, 36.245548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582785, 35.792866, 36.142876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345481, 0.425246, -0.836546,
		0.829631, -0.278218, -0.484053,
		-0.438583, -0.861255, -0.256678,
		29.451210, 35.534489, 36.065872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047035, 35.896603, 35.654381>,  <29.758219, 36.137367, 36.245548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047035, 35.896603, 35.654381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672106, 35.762291, 35.691639>,  <29.447147, 35.681702, 35.713993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672106, 35.762291, 35.691639>,  <30.047035, 35.896603, 35.654381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672106, 35.762291, 35.691639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253131, 0.472421, -0.844241,
		0.239480, -0.814904, -0.527808,
		-0.937323, -0.335783, 0.093142,
		29.390909, 35.661556, 35.719582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725885, 35.498608, 34.993191>,  <30.047035, 35.896603, 35.654381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725885, 35.498608, 34.993191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444635, 35.726570, 35.163284>,  <29.275885, 35.863346, 35.265339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444635, 35.726570, 35.163284>,  <29.725885, 35.498608, 34.993191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444635, 35.726570, 35.163284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245896, 0.366245, -0.897441,
		-0.667194, -0.735577, -0.117380,
		-0.703127, 0.569904, 0.425232,
		29.233698, 35.897541, 35.290855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451395, 35.238422, 34.257965>,  <29.725885, 35.498608, 34.993191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451395, 35.238422, 34.257965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784563, 35.228741, 34.479111>,  <29.984463, 35.222931, 34.611797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784563, 35.228741, 34.479111>,  <29.451395, 35.238422, 34.257965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784563, 35.228741, 34.479111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553394, -0.033766, 0.832235,
		-0.001471, -0.999137, -0.041516,
		0.832919, -0.024199, 0.552866,
		30.034439, 35.221481, 34.644970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014875, 35.566624, 33.844151>,  <29.451395, 35.238422, 34.257965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014875, 35.566624, 33.844151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117456, 35.212448, 33.689117>,  <30.179005, 34.999943, 33.596096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117456, 35.212448, 33.689117>,  <30.014875, 35.566624, 33.844151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117456, 35.212448, 33.689117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798757, 0.419942, -0.430854,
		0.544261, -0.199094, 0.814949,
		0.256451, -0.885443, -0.387586,
		30.194391, 34.946815, 33.572842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638800, 35.093620, 34.088688>,  <30.014875, 35.566624, 33.844151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638800, 35.093620, 34.088688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580433, 35.087933, 33.693008>,  <30.545412, 35.084522, 33.455601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580433, 35.087933, 33.693008>,  <30.638800, 35.093620, 34.088688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580433, 35.087933, 33.693008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793828, 0.595021, -0.125650,
		0.590377, -0.803585, -0.075541,
		-0.145918, -0.014214, -0.989194,
		30.536657, 35.083668, 33.396252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306528, 34.913071, 33.711380>,  <30.638800, 35.093620, 34.088688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306528, 34.913071, 33.711380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044020, 35.134884, 33.506714>,  <30.886515, 35.267971, 33.383915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044020, 35.134884, 33.506714>,  <31.306528, 34.913071, 33.711380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044020, 35.134884, 33.506714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725698, 0.649549, -0.226821,
		0.206571, -0.520170, -0.828705,
		-0.656270, 0.554535, -0.511665,
		30.847139, 35.301243, 33.353214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500277, 34.956596, 33.026253>,  <31.306528, 34.913071, 33.711380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500277, 34.956596, 33.026253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297422, 35.287178, 33.124058>,  <31.175711, 35.485527, 33.182739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297422, 35.287178, 33.124058>,  <31.500277, 34.956596, 33.026253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297422, 35.287178, 33.124058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753567, 0.562872, -0.339576,
		-0.418273, 0.012046, -0.908241,
		-0.507133, 0.826456, 0.244512,
		31.145283, 35.535114, 33.197411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979830, 34.485573, 33.135380>,  <31.500277, 34.956596, 33.026253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979830, 34.485573, 33.135380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233551, 34.747692, 33.299450>,  <32.385784, 34.904964, 33.397892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233551, 34.747692, 33.299450>,  <31.979830, 34.485573, 33.135380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233551, 34.747692, 33.299450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205449, -0.368611, 0.906596,
		0.745286, -0.659327, -0.099180,
		0.634302, 0.655297, 0.410179,
		32.423843, 34.944283, 33.422504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568066, 34.143162, 33.357735>,  <31.979830, 34.485573, 33.135380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568066, 34.143162, 33.357735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542290, 34.481651, 33.569298>,  <32.526825, 34.684746, 33.696236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542290, 34.481651, 33.569298>,  <32.568066, 34.143162, 33.357735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542290, 34.481651, 33.569298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213430, -0.529436, 0.821064,
		0.974831, -0.059976, 0.214727,
		-0.064440, 0.846227, 0.528911,
		32.522957, 34.735519, 33.727970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190735, 34.202194, 33.999302>,  <32.568066, 34.143162, 33.357735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190735, 34.202194, 33.999302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845940, 34.395000, 34.062099>,  <32.639065, 34.510685, 34.099777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845940, 34.395000, 34.062099>,  <33.190735, 34.202194, 33.999302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845940, 34.395000, 34.062099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072429, -0.423610, 0.902944,
		0.501732, 0.766955, 0.400058,
		-0.861986, 0.482011, 0.156989,
		32.587345, 34.539604, 34.109196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237946, 34.515163, 34.707924>,  <33.190735, 34.202194, 33.999302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237946, 34.515163, 34.707924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855236, 34.457157, 34.607075>,  <32.625610, 34.422356, 34.546566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855236, 34.457157, 34.607075>,  <33.237946, 34.515163, 34.707924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855236, 34.457157, 34.607075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168509, -0.430152, 0.886890,
		-0.237061, 0.891033, 0.387120,
		-0.956769, -0.145013, -0.252119,
		32.568207, 34.413654, 34.531441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803371, 34.929485, 35.124409>,  <33.237946, 34.515163, 34.707924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803371, 34.929485, 35.124409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623390, 34.586437, 35.024780>,  <32.515400, 34.380608, 34.965004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623390, 34.586437, 35.024780>,  <32.803371, 34.929485, 35.124409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623390, 34.586437, 35.024780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124279, -0.216049, 0.968441,
		-0.884363, 0.466706, -0.009372,
		-0.449952, -0.857618, -0.249068,
		32.488403, 34.329151, 34.950062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121777, 34.850697, 35.398090>,  <32.803371, 34.929485, 35.124409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121777, 34.850697, 35.398090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317242, 34.502682, 35.372036>,  <32.434521, 34.293873, 35.356403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317242, 34.502682, 35.372036>,  <32.121777, 34.850697, 35.398090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317242, 34.502682, 35.372036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087940, -0.123393, 0.988454,
		-0.868028, -0.477296, -0.136809,
		0.488666, -0.870036, -0.065135,
		32.463840, 34.241673, 35.352497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712957, 35.120220, 35.964821>,  <32.121777, 34.850697, 35.398090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712957, 35.120220, 35.964821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735363, 35.518257, 35.997456>,  <31.748806, 35.757080, 36.017036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735363, 35.518257, 35.997456>,  <31.712957, 35.120220, 35.964821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735363, 35.518257, 35.997456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391657, 0.097065, -0.914977,
		-0.918405, 0.019296, 0.395171,
		0.056012, 0.995091, 0.081588,
		31.752167, 35.816784, 36.021931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035677, 35.227818, 35.816525>,  <31.712957, 35.120220, 35.964821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035677, 35.227818, 35.816525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279440, 35.543907, 35.790726>,  <31.425697, 35.733562, 35.775246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279440, 35.543907, 35.790726>,  <31.035677, 35.227818, 35.816525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279440, 35.543907, 35.790726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449444, 0.277290, -0.849182,
		-0.653163, 0.546488, 0.524146,
		0.609408, 0.790228, -0.064500,
		31.462263, 35.780975, 35.771378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310326, 34.522038, 36.001469>,  <31.035677, 35.227818, 35.816525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310326, 34.522038, 36.001469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067762, 34.489616, 35.685062>,  <30.922224, 34.470165, 35.495220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067762, 34.489616, 35.685062>,  <31.310326, 34.522038, 36.001469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067762, 34.489616, 35.685062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781064, 0.125734, -0.611662,
		0.149037, -0.988747, -0.012935,
		-0.606405, -0.081057, -0.791013,
		30.885841, 34.465302, 35.447758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499006, 34.014938, 35.592102>,  <31.310326, 34.522038, 36.001469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499006, 34.014938, 35.592102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315708, 34.292679, 35.370152>,  <31.205730, 34.459324, 35.236980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315708, 34.292679, 35.370152>,  <31.499006, 34.014938, 35.592102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315708, 34.292679, 35.370152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855475, 0.175143, -0.487327,
		-0.241194, -0.697996, -0.674260,
		-0.458244, 0.694353, -0.554875,
		31.178234, 34.500984, 35.203690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438686, 33.733624, 34.844563>,  <31.499006, 34.014938, 35.592102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438686, 33.733624, 34.844563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479683, 34.120701, 34.936703>,  <31.504280, 34.352947, 34.991985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479683, 34.120701, 34.936703>,  <31.438686, 33.733624, 34.844563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479683, 34.120701, 34.936703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902006, 0.007219, -0.431663,
		-0.419381, 0.252018, -0.872127,
		0.102491, 0.967696, 0.230349,
		31.510429, 34.411011, 35.005806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499681, 34.114220, 34.206600>,  <31.438686, 33.733624, 34.844563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499681, 34.114220, 34.206600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697384, 34.279396, 34.512592>,  <31.816006, 34.378502, 34.696186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697384, 34.279396, 34.512592>,  <31.499681, 34.114220, 34.206600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697384, 34.279396, 34.512592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819063, 0.073651, -0.568956,
		-0.291288, 0.907774, -0.301825,
		0.494254, 0.412944, 0.764978,
		31.845659, 34.403278, 34.742085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594398, 34.886246, 34.471367>,  <31.499681, 34.114220, 34.206600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594398, 34.886246, 34.471367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983517, 34.845043, 34.554371>,  <32.216988, 34.820320, 34.604176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983517, 34.845043, 34.554371>,  <31.594398, 34.886246, 34.471367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983517, 34.845043, 34.554371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231383, 0.476769, -0.848029,
		-0.011579, 0.872972, 0.487633,
		0.972794, -0.103011, 0.207512,
		32.275356, 34.814140, 34.616623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894529, 35.503002, 34.543892>,  <31.594398, 34.886246, 34.471367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894529, 35.503002, 34.543892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175674, 35.238712, 34.438496>,  <32.344360, 35.080139, 34.375259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175674, 35.238712, 34.438496>,  <31.894529, 35.503002, 34.543892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175674, 35.238712, 34.438496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155856, 0.504468, -0.849248,
		0.694040, 0.555839, 0.457549,
		0.702864, -0.660724, -0.263490,
		32.386532, 35.040497, 34.359447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548332, 35.888927, 34.367920>,  <31.894529, 35.503002, 34.543892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548332, 35.888927, 34.367920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547924, 35.531166, 34.189018>,  <32.547680, 35.316509, 34.081676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547924, 35.531166, 34.189018>,  <32.548332, 35.888927, 34.367920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547924, 35.531166, 34.189018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337327, 0.420736, -0.842135,
		0.941387, -0.151731, 0.301278,
		-0.001019, -0.894404, -0.447259,
		32.547619, 35.262844, 34.054840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224922, 35.842243, 33.997166>,  <32.548332, 35.888927, 34.367920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224922, 35.842243, 33.997166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969070, 35.586689, 33.826187>,  <32.815559, 35.433357, 33.723602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969070, 35.586689, 33.826187>,  <33.224922, 35.842243, 33.997166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969070, 35.586689, 33.826187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180469, 0.415715, -0.891410,
		0.747200, -0.647310, -0.150604,
		-0.639627, -0.638882, -0.427442,
		32.777184, 35.395023, 33.697956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577072, 35.517262, 33.414825>,  <33.224922, 35.842243, 33.997166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577072, 35.517262, 33.414825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181717, 35.484596, 33.363556>,  <32.944504, 35.464996, 33.332794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181717, 35.484596, 33.363556>,  <33.577072, 35.517262, 33.414825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181717, 35.484596, 33.363556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092208, 0.348159, -0.932890,
		0.120808, -0.933872, -0.336585,
		-0.988384, -0.081665, -0.128171,
		32.885201, 35.460098, 33.325104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305595, 35.055954, 32.851246>,  <33.577072, 35.517262, 33.414825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305595, 35.055954, 32.851246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071209, 35.370869, 32.927990>,  <32.930576, 35.559818, 32.974037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071209, 35.370869, 32.927990>,  <33.305595, 35.055954, 32.851246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071209, 35.370869, 32.927990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007387, 0.231571, -0.972790,
		-0.810299, -0.571443, -0.129878,
		-0.585970, 0.787291, 0.191863,
		32.895416, 35.607056, 32.985550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660427, 35.069607, 32.348160>,  <33.305595, 35.055954, 32.851246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660427, 35.069607, 32.348160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721283, 35.449474, 32.457691>,  <32.757797, 35.677395, 32.523411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721283, 35.449474, 32.457691>,  <32.660427, 35.069607, 32.348160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721283, 35.449474, 32.457691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210264, 0.301812, -0.929892,
		-0.965735, 0.083893, 0.245597,
		0.152136, 0.949669, 0.273831,
		32.766922, 35.734375, 32.539841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064323, 35.446606, 32.110603>,  <32.660427, 35.069607, 32.348160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064323, 35.446606, 32.110603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356857, 35.716976, 32.146984>,  <32.532379, 35.879200, 32.168812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356857, 35.716976, 32.146984>,  <32.064323, 35.446606, 32.110603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356857, 35.716976, 32.146984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204737, 0.344785, -0.916082,
		-0.650562, 0.651343, 0.390540,
		0.731336, 0.675926, 0.090950,
		32.576260, 35.919754, 32.174271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846592, 36.060474, 31.760202>,  <32.064323, 35.446606, 32.110603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846592, 36.060474, 31.760202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244957, 36.095196, 31.770199>,  <32.483974, 36.116028, 31.776197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244957, 36.095196, 31.770199>,  <31.846592, 36.060474, 31.760202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244957, 36.095196, 31.770199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004292, 0.230890, -0.972970,
		-0.090226, 0.969100, 0.229573,
		0.995912, 0.086802, 0.024992,
		32.543732, 36.121235, 31.777697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984913, 36.746723, 31.514597>,  <31.846592, 36.060474, 31.760202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984913, 36.746723, 31.514597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324238, 36.539898, 31.468967>,  <32.527832, 36.415802, 31.441589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324238, 36.539898, 31.468967>,  <31.984913, 36.746723, 31.514597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324238, 36.539898, 31.468967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058846, 0.306165, -0.950158,
		0.526216, 0.799318, 0.290151,
		0.848312, -0.517062, -0.114072,
		32.578732, 36.384781, 31.434746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397064, 37.232899, 31.216732>,  <31.984913, 36.746723, 31.514597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397064, 37.232899, 31.216732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582287, 36.890053, 31.126461>,  <32.693420, 36.684345, 31.072298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582287, 36.890053, 31.126461>,  <32.397064, 37.232899, 31.216732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582287, 36.890053, 31.126461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119357, 0.312603, -0.942356,
		0.878256, 0.409427, 0.247055,
		0.463056, -0.857117, -0.225677,
		32.721203, 36.632919, 31.058758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943859, 37.427547, 30.826637>,  <32.397064, 37.232899, 31.216732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943859, 37.427547, 30.826637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898117, 37.040104, 30.738338>,  <32.870670, 36.807640, 30.685360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898117, 37.040104, 30.738338>,  <32.943859, 37.427547, 30.826637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898117, 37.040104, 30.738338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083869, 0.230823, -0.969374,
		0.989893, -0.092338, -0.107631,
		-0.114354, -0.968604, -0.220746,
		32.863811, 36.749523, 30.672115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402245, 37.280842, 30.325525>,  <32.943859, 37.427547, 30.826637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402245, 37.280842, 30.325525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148689, 36.974686, 30.281036>,  <32.996555, 36.790993, 30.254343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148689, 36.974686, 30.281036>,  <33.402245, 37.280842, 30.325525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148689, 36.974686, 30.281036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127013, 0.038837, -0.991140,
		0.762925, -0.642399, 0.072596,
		-0.633888, -0.765386, -0.111223,
		32.958523, 36.745071, 30.247669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907757, 36.844288, 29.811047>,  <33.402245, 37.280842, 30.325525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907757, 36.844288, 29.811047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527748, 36.719410, 29.811834>,  <33.299744, 36.644485, 29.812307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527748, 36.719410, 29.811834>,  <33.907757, 36.844288, 29.811047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527748, 36.719410, 29.811834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062169, -0.195357, -0.978760,
		0.305944, -0.929717, 0.205001,
		-0.950018, -0.312190, 0.001969,
		33.242744, 36.625751, 29.812426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939133, 36.279602, 29.492704>,  <33.907757, 36.844288, 29.811047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939133, 36.279602, 29.492704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549496, 36.367214, 29.470194>,  <33.315712, 36.419781, 29.456688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549496, 36.367214, 29.470194>,  <33.939133, 36.279602, 29.492704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549496, 36.367214, 29.470194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002353, -0.258651, -0.965968,
		-0.226127, -0.940812, 0.252466,
		-0.974095, 0.219025, -0.056274,
		33.257267, 36.432926, 29.453310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644081, 35.751259, 29.184156>,  <33.939133, 36.279602, 29.492704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644081, 35.751259, 29.184156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402958, 36.065033, 29.125797>,  <33.258286, 36.253300, 29.090782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402958, 36.065033, 29.125797>,  <33.644081, 35.751259, 29.184156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402958, 36.065033, 29.125797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035119, -0.208759, -0.977336,
		-0.797117, -0.584018, 0.153389,
		-0.602803, 0.784438, -0.145896,
		33.222118, 36.300365, 29.082029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084156, 35.517803, 28.754805>,  <33.644081, 35.751259, 29.184156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084156, 35.517803, 28.754805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091286, 35.911625, 28.685133>,  <33.095566, 36.147919, 28.643330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091286, 35.911625, 28.685133>,  <33.084156, 35.517803, 28.754805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091286, 35.911625, 28.685133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051317, -0.173078, -0.983570,
		-0.998523, 0.026474, 0.047439,
		0.017829, 0.984552, -0.174181,
		33.096634, 36.206989, 28.632879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524235, 35.682045, 28.292879>,  <33.084156, 35.517803, 28.754805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524235, 35.682045, 28.292879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775673, 35.991684, 28.262833>,  <32.926537, 36.177467, 28.244804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775673, 35.991684, 28.262833>,  <32.524235, 35.682045, 28.292879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775673, 35.991684, 28.262833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025910, -0.075687, -0.996795,
		-0.777304, 0.628523, -0.027520,
		0.628591, 0.774100, -0.075117,
		32.964249, 36.223915, 28.240297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115337, 36.154648, 27.934669>,  <32.524235, 35.682045, 28.292879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115337, 36.154648, 27.934669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497192, 36.257484, 27.874567>,  <32.726303, 36.319187, 27.838507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497192, 36.257484, 27.874567>,  <32.115337, 36.154648, 27.934669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497192, 36.257484, 27.874567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133181, -0.082683, -0.987637,
		-0.266336, 0.962844, -0.044692,
		0.954635, 0.257091, -0.150254,
		32.783585, 36.334610, 27.829491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950712, 36.298965, 27.371840>,  <32.115337, 36.154648, 27.934669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950712, 36.298965, 27.371840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350018, 36.320705, 27.362734>,  <32.589600, 36.333748, 27.357271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350018, 36.320705, 27.362734>,  <31.950712, 36.298965, 27.371840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350018, 36.320705, 27.362734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030810, 0.152135, -0.987879,
		-0.050225, 0.986864, 0.153545,
		0.998263, 0.054347, -0.022764,
		32.649498, 36.337009, 27.355904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158257, 36.928471, 27.005461>,  <31.950712, 36.298965, 27.371840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158257, 36.928471, 27.005461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481594, 36.693951, 26.984161>,  <32.675598, 36.553238, 26.971382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481594, 36.693951, 26.984161>,  <32.158257, 36.928471, 27.005461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481594, 36.693951, 26.984161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087510, 0.209110, -0.973969,
		0.582170, 0.782643, 0.220339,
		0.808344, -0.586297, -0.053248,
		32.724098, 36.518063, 26.968187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586292, 37.346596, 26.655937>,  <32.158257, 36.928471, 27.005461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586292, 37.346596, 26.655937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724545, 36.974712, 26.605066>,  <32.807495, 36.751583, 26.574543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724545, 36.974712, 26.605066>,  <32.586292, 37.346596, 26.655937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724545, 36.974712, 26.605066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205532, 0.207245, -0.956455,
		0.915585, 0.304441, 0.262716,
		0.345631, -0.929712, -0.127178,
		32.828236, 36.695797, 26.566914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193909, 37.479935, 26.317780>,  <32.586292, 37.346596, 26.655937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193909, 37.479935, 26.317780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084919, 37.104973, 26.231031>,  <33.019527, 36.879997, 26.178982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084919, 37.104973, 26.231031>,  <33.193909, 37.479935, 26.317780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084919, 37.104973, 26.231031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368335, 0.106607, -0.923561,
		0.888869, -0.331526, 0.316231,
		-0.272472, -0.937403, -0.216872,
		33.003178, 36.823753, 26.165970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748806, 37.248714, 26.017603>,  <33.193909, 37.479935, 26.317780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748806, 37.248714, 26.017603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426357, 37.035378, 25.915062>,  <33.232887, 36.907375, 25.853537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426357, 37.035378, 25.915062>,  <33.748806, 37.248714, 26.017603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426357, 37.035378, 25.915062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262441, 0.066053, -0.962685,
		0.530374, -0.843316, 0.086725,
		-0.806119, -0.533343, -0.256353,
		33.184521, 36.875374, 25.838156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923454, 36.791595, 25.445681>,  <33.748806, 37.248714, 26.017603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923454, 36.791595, 25.445681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525902, 36.800701, 25.402431>,  <33.287373, 36.806164, 25.376482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525902, 36.800701, 25.402431>,  <33.923454, 36.791595, 25.445681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525902, 36.800701, 25.402431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108965, 0.039816, -0.993248,
		-0.018305, -0.998948, -0.042053,
		-0.993877, 0.022764, -0.108121,
		33.227737, 36.807529, 25.369995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838428, 36.469719, 24.839396>,  <33.923454, 36.791595, 25.445681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838428, 36.469719, 24.839396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480927, 36.638916, 24.899105>,  <33.266426, 36.740433, 24.934931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480927, 36.638916, 24.899105>,  <33.838428, 36.469719, 24.839396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480927, 36.638916, 24.899105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040808, 0.254729, -0.966151,
		-0.446695, -0.869594, -0.210404,
		-0.893755, 0.422988, 0.149273,
		33.212799, 36.765812, 24.943888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421703, 36.229271, 24.357813>,  <33.838428, 36.469719, 24.839396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421703, 36.229271, 24.357813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248802, 36.571339, 24.472240>,  <33.145061, 36.776581, 24.540897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248802, 36.571339, 24.472240>,  <33.421703, 36.229271, 24.357813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248802, 36.571339, 24.472240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204579, 0.215966, -0.954728,
		-0.878239, -0.471209, 0.081598,
		-0.432254, 0.855173, 0.286069,
		33.119125, 36.827892, 24.558062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717087, 36.232140, 24.128464>,  <33.421703, 36.229271, 24.357813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717087, 36.232140, 24.128464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808468, 36.619011, 24.172964>,  <32.863297, 36.851135, 24.199665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808468, 36.619011, 24.172964>,  <32.717087, 36.232140, 24.128464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808468, 36.619011, 24.172964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186097, 0.155550, -0.970140,
		-0.955602, 0.200931, 0.215525,
		0.228456, 0.967177, 0.111252,
		32.877003, 36.909164, 24.206339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226944, 36.626316, 23.855585>,  <32.717087, 36.232140, 24.128464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226944, 36.626316, 23.855585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540276, 36.874935, 23.858805>,  <32.728275, 37.024109, 23.860737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540276, 36.874935, 23.858805>,  <32.226944, 36.626316, 23.855585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540276, 36.874935, 23.858805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175002, 0.232942, -0.956615,
		-0.596461, 0.747938, 0.291243,
		0.783332, 0.621552, 0.008050,
		32.775276, 37.061401, 23.861219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119980, 37.126652, 23.334927>,  <32.226944, 36.626316, 23.855585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119980, 37.126652, 23.334927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497074, 37.229343, 23.420103>,  <32.723331, 37.290958, 23.471209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497074, 37.229343, 23.420103>,  <32.119980, 37.126652, 23.334927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497074, 37.229343, 23.420103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147345, 0.252209, -0.956389,
		-0.299235, 0.932997, 0.199939,
		0.942734, 0.256725, 0.212943,
		32.779896, 37.306362, 23.483986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189003, 37.722248, 22.993160>,  <32.119980, 37.126652, 23.334927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189003, 37.722248, 22.993160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559769, 37.587559, 23.059435>,  <32.782227, 37.506744, 23.099199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559769, 37.587559, 23.059435>,  <32.189003, 37.722248, 22.993160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559769, 37.587559, 23.059435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265248, 0.275516, -0.923977,
		0.265471, 0.900395, 0.344694,
		0.926913, -0.336719, 0.165687,
		32.837841, 37.486542, 23.109140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583122, 38.266460, 22.725670>,  <32.189003, 37.722248, 22.993160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583122, 38.266460, 22.725670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802074, 37.932205, 22.743933>,  <32.933445, 37.731651, 22.754890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802074, 37.932205, 22.743933>,  <32.583122, 38.266460, 22.725670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802074, 37.932205, 22.743933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329693, 0.165173, -0.929527,
		0.769207, 0.523857, 0.365916,
		0.547379, -0.835639, 0.045659,
		32.966290, 37.681515, 22.757631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177162, 38.530743, 22.409149>,  <32.583122, 38.266460, 22.725670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177162, 38.530743, 22.409149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205334, 38.132915, 22.378511>,  <33.222237, 37.894218, 22.360128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205334, 38.132915, 22.378511>,  <33.177162, 38.530743, 22.409149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205334, 38.132915, 22.378511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406264, 0.098730, -0.908406,
		0.911037, 0.032863, 0.411012,
		0.070432, -0.994571, -0.076596,
		33.226463, 37.834545, 22.355534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936039, 38.336235, 22.191698>,  <33.177162, 38.530743, 22.409149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936039, 38.336235, 22.191698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713886, 38.015362, 22.104004>,  <33.580597, 37.822838, 22.051388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713886, 38.015362, 22.104004>,  <33.936039, 38.336235, 22.191698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713886, 38.015362, 22.104004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327869, 0.031058, -0.944212,
		0.764237, -0.596275, 0.245761,
		-0.555378, -0.802179, -0.219236,
		33.547272, 37.774708, 22.038233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376163, 37.872601, 21.874775>,  <33.936039, 38.336235, 22.191698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376163, 37.872601, 21.874775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004822, 37.776623, 21.761229>,  <33.782017, 37.719036, 21.693100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004822, 37.776623, 21.761229>,  <34.376163, 37.872601, 21.874775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004822, 37.776623, 21.761229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287919, 0.018762, -0.957471,
		0.235069, -0.970604, 0.051668,
		-0.928356, -0.239948, -0.283866,
		33.726315, 37.704639, 21.676069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470070, 37.296982, 21.537197>,  <34.376163, 37.872601, 21.874775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470070, 37.296982, 21.537197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128098, 37.455814, 21.403679>,  <33.922913, 37.551113, 21.323568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128098, 37.455814, 21.403679>,  <34.470070, 37.296982, 21.537197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128098, 37.455814, 21.403679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354018, -0.023716, -0.934938,
		-0.379165, -0.917476, -0.120299,
		-0.854930, 0.397084, -0.333795,
		33.871620, 37.574940, 21.303541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234982, 36.883064, 20.892927>,  <34.470070, 37.296982, 21.537197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234982, 36.883064, 20.892927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033440, 37.225945, 20.850328>,  <33.912514, 37.431671, 20.824770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033440, 37.225945, 20.850328>,  <34.234982, 36.883064, 20.892927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033440, 37.225945, 20.850328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257766, 0.031538, -0.965693,
		-0.824433, -0.514018, -0.236847,
		-0.503853, 0.857199, -0.106495,
		33.882282, 37.483105, 20.818380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925797, 36.864891, 20.229925>,  <34.234982, 36.883064, 20.892927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925797, 36.864891, 20.229925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860901, 37.246971, 20.328939>,  <33.821964, 37.476219, 20.388348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860901, 37.246971, 20.328939>,  <33.925797, 36.864891, 20.229925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860901, 37.246971, 20.328939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189978, 0.276401, -0.942078,
		-0.968291, -0.105812, -0.226309,
		-0.162236, 0.955199, 0.247535,
		33.812229, 37.533531, 20.403200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532429, 37.210251, 19.677126>,  <33.925797, 36.864891, 20.229925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532429, 37.210251, 19.677126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728050, 37.498169, 19.874193>,  <33.845421, 37.670921, 19.992434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728050, 37.498169, 19.874193>,  <33.532429, 37.210251, 19.677126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728050, 37.498169, 19.874193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171064, 0.474705, -0.863361,
		-0.855317, 0.506505, 0.109023,
		0.489050, 0.719798, 0.492668,
		33.874763, 37.714108, 20.021994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409027, 37.772629, 19.408342>,  <33.532429, 37.210251, 19.677126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409027, 37.772629, 19.408342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701431, 37.937653, 19.625751>,  <33.876873, 38.036667, 19.756197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701431, 37.937653, 19.625751>,  <33.409027, 37.772629, 19.408342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701431, 37.937653, 19.625751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205237, 0.626716, -0.751735,
		-0.650769, 0.661077, 0.373464,
		0.731011, 0.412557, 0.543525,
		33.920734, 38.061420, 19.788809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226360, 38.557934, 19.369930>,  <33.409027, 37.772629, 19.408342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226360, 38.557934, 19.369930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611092, 38.482327, 19.449089>,  <33.841930, 38.436962, 19.496584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611092, 38.482327, 19.449089>,  <33.226360, 38.557934, 19.369930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611092, 38.482327, 19.449089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273606, 0.649407, -0.709514,
		0.005596, 0.736574, 0.676333,
		0.961825, -0.189019, 0.197897,
		33.899639, 38.425621, 19.508459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520950, 39.181614, 19.526066>,  <33.226360, 38.557934, 19.369930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520950, 39.181614, 19.526066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831829, 38.955265, 19.415976>,  <34.018356, 38.819454, 19.349922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831829, 38.955265, 19.415976>,  <33.520950, 39.181614, 19.526066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831829, 38.955265, 19.415976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269900, 0.694885, -0.666550,
		0.568432, 0.443759, 0.692794,
		0.777200, -0.565873, -0.275224,
		34.064987, 38.785503, 19.333408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152218, 39.657978, 19.387928>,  <33.520950, 39.181614, 19.526066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152218, 39.657978, 19.387928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256630, 39.319363, 19.202356>,  <34.319275, 39.116192, 19.091013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256630, 39.319363, 19.202356>,  <34.152218, 39.657978, 19.387928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256630, 39.319363, 19.202356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168014, 0.513097, -0.841726,
		0.950598, 0.141767, 0.276164,
		0.261028, -0.846542, -0.463930,
		34.334938, 39.065399, 19.063177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818520, 39.792519, 19.024818>,  <34.152218, 39.657978, 19.387928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818520, 39.792519, 19.024818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641438, 39.480614, 18.847738>,  <34.535187, 39.293472, 18.741491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641438, 39.480614, 18.847738>,  <34.818520, 39.792519, 19.024818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641438, 39.480614, 18.847738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020184, 0.484924, -0.874323,
		0.896440, -0.396003, -0.198940,
		-0.442706, -0.779763, -0.442698,
		34.508625, 39.246685, 18.714930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187374, 39.650326, 18.350304>,  <34.818520, 39.792519, 19.024818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187374, 39.650326, 18.350304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811619, 39.516659, 18.319635>,  <34.586166, 39.436459, 18.301235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811619, 39.516659, 18.319635>,  <35.187374, 39.650326, 18.350304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811619, 39.516659, 18.319635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078156, 0.426457, -0.901125,
		0.333821, -0.840517, -0.426727,
		-0.939391, -0.334165, -0.076669,
		34.529800, 39.416409, 18.296635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126041, 39.403152, 17.593721>,  <35.187374, 39.650326, 18.350304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126041, 39.403152, 17.593721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750687, 39.451420, 17.723259>,  <34.525475, 39.480381, 17.800982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750687, 39.451420, 17.723259>,  <35.126041, 39.403152, 17.593721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750687, 39.451420, 17.723259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191890, 0.597420, -0.778632,
		-0.287430, -0.792798, -0.537453,
		-0.938383, 0.120671, 0.323846,
		34.469173, 39.487621, 17.820414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831024, 39.239521, 17.046192>,  <35.126041, 39.403152, 17.593721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831024, 39.239521, 17.046192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544323, 39.419350, 17.259415>,  <34.372303, 39.527248, 17.387348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544323, 39.419350, 17.259415>,  <34.831024, 39.239521, 17.046192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544323, 39.419350, 17.259415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195708, 0.604016, -0.772569,
		-0.669298, -0.658067, -0.344947,
		-0.716755, 0.449571, 0.533056,
		34.329296, 39.554222, 17.419331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345573, 39.327320, 16.581110>,  <34.831024, 39.239521, 17.046192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345573, 39.327320, 16.581110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280899, 39.602585, 16.864035>,  <34.242092, 39.767746, 17.033789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280899, 39.602585, 16.864035>,  <34.345573, 39.327320, 16.581110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280899, 39.602585, 16.864035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264468, 0.660306, -0.702889,
		-0.950744, -0.300710, 0.075233,
		-0.161689, 0.688164, 0.707310,
		34.232391, 39.809032, 17.076227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710094, 39.692997, 16.374025>,  <34.345573, 39.327320, 16.581110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710094, 39.692997, 16.374025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855358, 39.966496, 16.627201>,  <33.942516, 40.130592, 16.779106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855358, 39.966496, 16.627201>,  <33.710094, 39.692997, 16.374025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855358, 39.966496, 16.627201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392542, 0.728365, -0.561600,
		-0.845000, -0.044504, 0.532911,
		0.363160, 0.683742, 0.632939,
		33.964306, 40.171619, 16.817083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291595, 40.250988, 16.389645>,  <33.710094, 39.692997, 16.374025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291595, 40.250988, 16.389645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652111, 40.371548, 16.514116>,  <33.868420, 40.443886, 16.588799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652111, 40.371548, 16.514116>,  <33.291595, 40.250988, 16.389645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652111, 40.371548, 16.514116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060403, 0.798712, -0.598674,
		-0.428983, 0.520784, 0.738077,
		0.901291, 0.301403, 0.311177,
		33.922497, 40.461967, 16.607470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286564, 40.908684, 16.801416>,  <33.291595, 40.250988, 16.389645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286564, 40.908684, 16.801416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660789, 40.876076, 16.663963>,  <33.885323, 40.856510, 16.581491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660789, 40.876076, 16.663963>,  <33.286564, 40.908684, 16.801416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660789, 40.876076, 16.663963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076977, 0.902537, -0.423676,
		0.344677, 0.422825, 0.838103,
		0.935560, -0.081517, -0.343632,
		33.941456, 40.851620, 16.560873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798267, 41.456669, 17.045717>,  <33.286564, 40.908684, 16.801416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798267, 41.456669, 17.045717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893719, 41.307461, 16.687073>,  <33.950989, 41.217937, 16.471886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893719, 41.307461, 16.687073>,  <33.798267, 41.456669, 17.045717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893719, 41.307461, 16.687073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063702, 0.915284, -0.397740,
		0.969020, 0.152026, 0.194647,
		0.238624, -0.373019, -0.896613,
		33.965305, 41.195557, 16.418089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823307, 41.945206, 17.626619>,  <33.798267, 41.456669, 17.045717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823307, 41.945206, 17.626619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034138, 42.280849, 17.680395>,  <34.160637, 42.482235, 17.712662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034138, 42.280849, 17.680395>,  <33.823307, 41.945206, 17.626619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034138, 42.280849, 17.680395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523500, 0.445221, -0.726447,
		-0.669428, 0.312517, 0.673943,
		0.527081, 0.839113, 0.134441,
		34.192261, 42.532585, 17.720728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314621, 42.452812, 17.588232>,  <33.823307, 41.945206, 17.626619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314621, 42.452812, 17.588232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641903, 42.678169, 17.542406>,  <33.838272, 42.813381, 17.514910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641903, 42.678169, 17.542406>,  <33.314621, 42.452812, 17.588232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641903, 42.678169, 17.542406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477334, 0.554630, -0.681570,
		-0.320448, 0.612353, 0.722729,
		0.818209, 0.563391, -0.114567,
		33.887367, 42.847187, 17.508036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457706, 42.943195, 16.978783>,  <33.314621, 42.452812, 17.588232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457706, 42.943195, 16.978783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561295, 43.299778, 16.830059>,  <33.623447, 43.513725, 16.740824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561295, 43.299778, 16.830059>,  <33.457706, 42.943195, 16.978783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561295, 43.299778, 16.830059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905144, -0.089631, 0.415549,
		0.337117, -0.444157, -0.830106,
		0.258972, 0.891455, -0.371810,
		33.638985, 43.567215, 16.718515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997505, 42.921646, 16.467741>,  <33.457706, 42.943195, 16.978783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997505, 42.921646, 16.467741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995075, 43.250923, 16.694832>,  <33.993618, 43.448490, 16.831085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995075, 43.250923, 16.694832>,  <33.997505, 42.921646, 16.467741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995075, 43.250923, 16.694832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736634, -0.380263, 0.559258,
		0.676264, 0.421603, -0.604084,
		-0.006074, 0.823196, 0.567725,
		33.993252, 43.497883, 16.865149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723427, 43.211048, 16.639471>,  <33.997505, 42.921646, 16.467741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723427, 43.211048, 16.639471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444481, 43.272083, 16.919584>,  <34.277115, 43.308704, 17.087652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444481, 43.272083, 16.919584>,  <34.723427, 43.211048, 16.639471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444481, 43.272083, 16.919584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589031, -0.434629, 0.681278,
		0.408319, 0.887589, 0.213215,
		-0.697365, 0.152589, 0.700285,
		34.235271, 43.317860, 17.129669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974823, 43.536728, 17.283102>,  <34.723427, 43.211048, 16.639471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974823, 43.536728, 17.283102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639923, 43.340137, 17.378988>,  <34.438984, 43.222183, 17.436520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639923, 43.340137, 17.378988>,  <34.974823, 43.536728, 17.283102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639923, 43.340137, 17.378988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472974, -0.430890, 0.768524,
		-0.274420, 0.756826, 0.593218,
		-0.837251, -0.491475, 0.239715,
		34.388748, 43.192696, 17.450903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851936, 43.648479, 17.993999>,  <34.974823, 43.536728, 17.283102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851936, 43.648479, 17.993999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635143, 43.319958, 17.922762>,  <34.505066, 43.122845, 17.880020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635143, 43.319958, 17.922762>,  <34.851936, 43.648479, 17.993999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635143, 43.319958, 17.922762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234910, -0.351528, 0.906226,
		-0.806888, 0.449327, 0.383455,
		-0.541987, -0.821300, -0.178092,
		34.472546, 43.073566, 17.869333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512733, 43.552387, 18.575565>,  <34.851936, 43.648479, 17.993999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512733, 43.552387, 18.575565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524300, 43.196850, 18.392643>,  <34.531239, 42.983528, 18.282890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524300, 43.196850, 18.392643>,  <34.512733, 43.552387, 18.575565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524300, 43.196850, 18.392643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345923, -0.420330, 0.838845,
		-0.937817, -0.182450, 0.295315,
		0.028917, -0.888839, -0.457306,
		34.532974, 42.930199, 18.255451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092491, 43.227364, 18.905983>,  <34.512733, 43.552387, 18.575565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092491, 43.227364, 18.905983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308487, 42.942421, 18.726667>,  <34.438084, 42.771458, 18.619078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308487, 42.942421, 18.726667>,  <34.092491, 43.227364, 18.905983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308487, 42.942421, 18.726667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143515, -0.446888, 0.883003,
		-0.829345, -0.541149, -0.139082,
		0.539990, -0.712354, -0.448287,
		34.470486, 42.728714, 18.592182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846233, 42.530262, 19.130133>,  <34.092491, 43.227364, 18.905983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846233, 42.530262, 19.130133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222649, 42.462608, 19.012938>,  <34.448498, 42.422016, 18.942621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222649, 42.462608, 19.012938>,  <33.846233, 42.530262, 19.130133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222649, 42.462608, 19.012938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158289, -0.545280, 0.823173,
		-0.298984, -0.821014, -0.486358,
		0.941038, -0.169131, -0.292988,
		34.504959, 42.411869, 18.925041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959953, 41.826355, 19.312408>,  <33.846233, 42.530262, 19.130133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959953, 41.826355, 19.312408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321411, 41.983124, 19.243340>,  <34.538288, 42.077187, 19.201899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321411, 41.983124, 19.243340>,  <33.959953, 41.826355, 19.312408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321411, 41.983124, 19.243340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370964, -0.514806, 0.772891,
		0.214019, -0.762478, -0.610593,
		0.903649, 0.391921, -0.172674,
		34.592506, 42.100700, 19.191538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455910, 41.222603, 19.353081>,  <33.959953, 41.826355, 19.312408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455910, 41.222603, 19.353081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656700, 41.561176, 19.424150>,  <34.777176, 41.764320, 19.466791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656700, 41.561176, 19.424150>,  <34.455910, 41.222603, 19.353081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656700, 41.561176, 19.424150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452946, -0.432287, 0.779723,
		0.736791, -0.310926, -0.600387,
		0.501976, 0.846435, 0.177673,
		34.807293, 41.815105, 19.477451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158272, 41.057877, 19.603374>,  <34.455910, 41.222603, 19.353081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158272, 41.057877, 19.603374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150860, 41.439831, 19.721935>,  <35.146412, 41.669003, 19.793072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150860, 41.439831, 19.721935>,  <35.158272, 41.057877, 19.603374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150860, 41.439831, 19.721935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456033, -0.255747, 0.852424,
		0.889769, 0.150967, -0.430719,
		-0.018532, 0.954883, 0.296402,
		35.145302, 41.726295, 19.810856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851997, 41.160835, 19.848238>,  <35.158272, 41.057877, 19.603374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851997, 41.160835, 19.848238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597954, 41.415592, 20.023056>,  <35.445526, 41.568447, 20.127947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597954, 41.415592, 20.023056>,  <35.851997, 41.160835, 19.848238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597954, 41.415592, 20.023056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324235, -0.293733, 0.899218,
		0.701076, 0.712807, -0.019949,
		-0.635109, 0.636888, 0.437047,
		35.407421, 41.606659, 20.154169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204315, 41.472473, 20.472696>,  <35.851997, 41.160835, 19.848238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204315, 41.472473, 20.472696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821335, 41.563297, 20.543947>,  <35.591545, 41.617790, 20.586699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821335, 41.563297, 20.543947>,  <36.204315, 41.472473, 20.472696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821335, 41.563297, 20.543947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134565, -0.194782, 0.971572,
		0.255298, 0.954204, 0.155940,
		-0.957452, 0.227056, 0.178130,
		35.534100, 41.631413, 20.597385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169609, 41.843182, 21.093275>,  <36.204315, 41.472473, 20.472696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169609, 41.843182, 21.093275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800510, 41.696827, 21.044827>,  <35.579052, 41.609013, 21.015759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800510, 41.696827, 21.044827>,  <36.169609, 41.843182, 21.093275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800510, 41.696827, 21.044827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025002, -0.256768, 0.966150,
		-0.384604, 0.894536, 0.227783,
		-0.922743, -0.365890, -0.121119,
		35.523689, 41.587059, 21.008492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725933, 42.304840, 21.509769>,  <36.169609, 41.843182, 21.093275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725933, 42.304840, 21.509769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573666, 41.943348, 21.431421>,  <35.482304, 41.726452, 21.384413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573666, 41.943348, 21.431421>,  <35.725933, 42.304840, 21.509769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573666, 41.943348, 21.431421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044956, -0.229657, 0.972233,
		-0.923616, 0.361297, 0.128052,
		-0.380673, -0.903727, -0.195873,
		35.459465, 41.672230, 21.372660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609058, 42.034214, 22.160580>,  <35.725933, 42.304840, 21.509769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609058, 42.034214, 22.160580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540810, 41.683777, 21.980202>,  <35.499859, 41.473515, 21.871975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540810, 41.683777, 21.980202>,  <35.609058, 42.034214, 22.160580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540810, 41.683777, 21.980202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054485, -0.448566, 0.892088,
		-0.983829, 0.176782, 0.028802,
		-0.170624, -0.876092, -0.450944,
		35.489624, 41.420948, 21.844919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013863, 41.829811, 22.446892>,  <35.609058, 42.034214, 22.160580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013863, 41.829811, 22.446892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208866, 41.516994, 22.291590>,  <35.325867, 41.329304, 22.198408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208866, 41.516994, 22.291590>,  <35.013863, 41.829811, 22.446892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208866, 41.516994, 22.291590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166060, -0.519607, 0.838112,
		-0.857181, -0.344114, -0.383180,
		0.487509, -0.782045, -0.388254,
		35.355118, 41.282383, 22.175114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588120, 41.245003, 22.645306>,  <35.013863, 41.829811, 22.446892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588120, 41.245003, 22.645306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953079, 41.108700, 22.554613>,  <35.172054, 41.026917, 22.500196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953079, 41.108700, 22.554613>,  <34.588120, 41.245003, 22.645306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953079, 41.108700, 22.554613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025562, -0.600315, 0.799355,
		-0.408499, -0.723537, -0.556438,
		0.912401, -0.340759, -0.226733,
		35.226799, 41.006474, 22.486593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624931, 40.511837, 22.477310>,  <34.588120, 41.245003, 22.645306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624931, 40.511837, 22.477310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991032, 40.610516, 22.604719>,  <35.210693, 40.669724, 22.681164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991032, 40.610516, 22.604719>,  <34.624931, 40.511837, 22.477310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991032, 40.610516, 22.604719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023473, -0.756615, 0.653439,
		0.402197, -0.605538, -0.686703,
		0.915252, 0.246692, 0.318522,
		35.265606, 40.684525, 22.700275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980644, 39.815517, 22.588280>,  <34.624931, 40.511837, 22.477310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980644, 39.815517, 22.588280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244984, 40.040352, 22.787210>,  <35.403587, 40.175251, 22.906569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244984, 40.040352, 22.787210>,  <34.980644, 39.815517, 22.588280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244984, 40.040352, 22.787210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110406, -0.728247, 0.676363,
		0.742351, -0.392067, -0.543321,
		0.660852, 0.562085, 0.497329,
		35.443237, 40.208977, 22.936409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578453, 39.357319, 22.719154>,  <34.980644, 39.815517, 22.588280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578453, 39.357319, 22.719154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578613, 39.655746, 22.985502>,  <35.578709, 39.834801, 23.145311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578613, 39.655746, 22.985502>,  <35.578453, 39.357319, 22.719154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578613, 39.655746, 22.985502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250661, -0.644688, 0.722182,
		0.968075, 0.166618, -0.187268,
		0.000400, 0.746067, 0.665871,
		35.578732, 39.879566, 23.185263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241116, 39.382751, 23.032228>,  <35.578453, 39.357319, 22.719154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241116, 39.382751, 23.032228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983425, 39.547947, 23.289728>,  <35.828812, 39.647064, 23.444227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983425, 39.547947, 23.289728>,  <36.241116, 39.382751, 23.032228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983425, 39.547947, 23.289728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317371, -0.621451, 0.716293,
		0.695881, 0.665760, 0.269282,
		-0.644224, 0.412992, 0.643749,
		35.790157, 39.671844, 23.482853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644600, 39.512604, 23.598286>,  <36.241116, 39.382751, 23.032228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644600, 39.512604, 23.598286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279217, 39.527161, 23.760410>,  <36.059986, 39.535892, 23.857685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279217, 39.527161, 23.760410>,  <36.644600, 39.512604, 23.598286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279217, 39.527161, 23.760410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336309, -0.493284, 0.802227,
		0.229128, 0.869107, 0.438353,
		-0.913453, 0.036391, 0.405313,
		36.005180, 39.538078, 23.882004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753220, 39.677013, 24.258343>,  <36.644600, 39.512604, 23.598286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753220, 39.677013, 24.258343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390968, 39.507496, 24.264450>,  <36.173618, 39.405785, 24.268114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390968, 39.507496, 24.264450>,  <36.753220, 39.677013, 24.258343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390968, 39.507496, 24.264450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187247, -0.367317, 0.911053,
		-0.380493, 0.827934, 0.412007,
		-0.905629, -0.423796, 0.015267,
		36.119278, 39.380356, 24.269030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571747, 39.754250, 24.903055>,  <36.753220, 39.677013, 24.258343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571747, 39.754250, 24.903055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317535, 39.475452, 24.770206>,  <36.165009, 39.308174, 24.690496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317535, 39.475452, 24.770206>,  <36.571747, 39.754250, 24.903055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317535, 39.475452, 24.770206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034235, -0.404307, 0.913982,
		-0.771317, 0.592233, 0.233088,
		-0.635530, -0.696990, -0.332124,
		36.126877, 39.266354, 24.670568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950150, 39.759239, 25.318764>,  <36.571747, 39.754250, 24.903055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950150, 39.759239, 25.318764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955830, 39.400471, 25.141979>,  <35.959236, 39.185211, 25.035908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955830, 39.400471, 25.141979>,  <35.950150, 39.759239, 25.318764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955830, 39.400471, 25.141979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055852, -0.442029, 0.895260,
		-0.998338, 0.011971, -0.056372,
		0.014201, -0.896921, -0.441963,
		35.960091, 39.131393, 25.009390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311947, 39.435425, 25.468086>,  <35.950150, 39.759239, 25.318764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311947, 39.435425, 25.468086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578331, 39.150131, 25.380642>,  <35.738163, 38.978954, 25.328175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578331, 39.150131, 25.380642>,  <35.311947, 39.435425, 25.468086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578331, 39.150131, 25.380642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283876, -0.513301, 0.809899,
		-0.689862, -0.477303, -0.544309,
		0.665962, -0.713235, -0.218612,
		35.778118, 38.936161, 25.315058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910038, 38.818909, 25.533796>,  <35.311947, 39.435425, 25.468086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910038, 38.818909, 25.533796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297901, 38.723446, 25.554995>,  <35.530617, 38.666168, 25.567713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297901, 38.723446, 25.554995>,  <34.910038, 38.818909, 25.533796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297901, 38.723446, 25.554995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176329, -0.532600, 0.827795,
		-0.169336, -0.812022, -0.558522,
		0.969656, -0.238659, 0.052995,
		35.588799, 38.651848, 25.570892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835304, 38.300243, 25.969898>,  <34.910038, 38.818909, 25.533796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835304, 38.300243, 25.969898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232399, 38.346622, 25.957045>,  <35.470654, 38.374451, 25.949333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232399, 38.346622, 25.957045>,  <34.835304, 38.300243, 25.969898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232399, 38.346622, 25.957045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058605, -0.232734, 0.970773,
		0.105083, -0.965604, -0.237839,
		0.992735, 0.115951, -0.032133,
		35.530220, 38.381409, 25.947405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131523, 37.764919, 26.290533>,  <34.835304, 38.300243, 25.969898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131523, 37.764919, 26.290533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425362, 38.036110, 26.301226>,  <35.601665, 38.198826, 26.307642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425362, 38.036110, 26.301226>,  <35.131523, 37.764919, 26.290533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425362, 38.036110, 26.301226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114472, -0.162671, 0.980018,
		0.668782, -0.716854, -0.197107,
		0.734593, 0.677981, 0.026732,
		35.645741, 38.239506, 26.309246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813545, 37.396301, 26.591963>,  <35.131523, 37.764919, 26.290533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813545, 37.396301, 26.591963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816807, 37.792389, 26.647684>,  <35.818764, 38.030041, 26.681116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816807, 37.792389, 26.647684>,  <35.813545, 37.396301, 26.591963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816807, 37.792389, 26.647684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062111, -0.138537, 0.988408,
		0.998036, -0.016707, 0.060374,
		0.008149, 0.990216, 0.139303,
		35.819252, 38.089455, 26.689474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146385, 37.414139, 27.197338>,  <35.813545, 37.396301, 26.591963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146385, 37.414139, 27.197338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000164, 37.786449, 27.195118>,  <35.912430, 38.009834, 27.193785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000164, 37.786449, 27.195118>,  <36.146385, 37.414139, 27.197338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000164, 37.786449, 27.195118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243892, -0.090027, 0.965615,
		0.898268, 0.354341, 0.259918,
		-0.365557, 0.930772, -0.005552,
		35.890495, 38.065681, 27.193453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480682, 37.742317, 27.815990>,  <36.146385, 37.414139, 27.197338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480682, 37.742317, 27.815990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164120, 37.975697, 27.743032>,  <35.974182, 38.115723, 27.699257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164120, 37.975697, 27.743032>,  <36.480682, 37.742317, 27.815990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164120, 37.975697, 27.743032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103866, 0.165694, 0.980692,
		0.602405, 0.795068, -0.070531,
		-0.791404, 0.583448, -0.182396,
		35.926697, 38.150730, 27.688314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556679, 38.331642, 28.213976>,  <36.480682, 37.742317, 27.815990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556679, 38.331642, 28.213976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164478, 38.331413, 28.135376>,  <35.929157, 38.331276, 28.088217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164478, 38.331413, 28.135376>,  <36.556679, 38.331642, 28.213976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164478, 38.331413, 28.135376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191137, 0.234834, 0.953058,
		0.045597, 0.972035, -0.230365,
		-0.980504, -0.000574, -0.196500,
		35.870327, 38.331242, 28.076426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374340, 38.885208, 28.598457>,  <36.556679, 38.331642, 28.213976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374340, 38.885208, 28.598457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052139, 38.653458, 28.548664>,  <35.858818, 38.514408, 28.518787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052139, 38.653458, 28.548664>,  <36.374340, 38.885208, 28.598457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052139, 38.653458, 28.548664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274283, 0.178295, 0.944976,
		-0.525302, 0.795320, -0.302530,
		-0.805498, -0.579377, -0.124484,
		35.810490, 38.479645, 28.511318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855450, 39.318172, 29.009327>,  <36.374340, 38.885208, 28.598457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855450, 39.318172, 29.009327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689461, 38.957851, 28.958170>,  <35.589867, 38.741661, 28.927475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689461, 38.957851, 28.958170>,  <35.855450, 39.318172, 29.009327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689461, 38.957851, 28.958170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354199, 0.030467, 0.934674,
		-0.838059, 0.433162, -0.331706,
		-0.414971, -0.900801, -0.127892,
		35.564968, 38.687611, 28.919802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303085, 39.392525, 29.346922>,  <35.855450, 39.318172, 29.009327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303085, 39.392525, 29.346922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302509, 38.993233, 29.323111>,  <35.302166, 38.753658, 29.308825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302509, 38.993233, 29.323111>,  <35.303085, 39.392525, 29.346922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302509, 38.993233, 29.323111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396894, -0.054069, 0.916270,
		-0.917863, 0.024943, -0.396112,
		-0.001437, -0.998226, -0.059528,
		35.302078, 38.693764, 29.305252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623047, 39.177979, 29.525253>,  <35.303085, 39.392525, 29.346922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623047, 39.177979, 29.525253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849087, 38.851440, 29.572990>,  <34.984711, 38.655518, 29.601633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849087, 38.851440, 29.572990>,  <34.623047, 39.177979, 29.525253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849087, 38.851440, 29.572990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367259, -0.119378, 0.922426,
		-0.738772, -0.565091, -0.367271,
		0.565099, -0.816346, 0.119342,
		35.018616, 38.606537, 29.608793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161915, 38.538174, 29.579275>,  <34.623047, 39.177979, 29.525253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161915, 38.538174, 29.579275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516880, 38.483376, 29.755333>,  <34.729858, 38.450497, 29.860968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516880, 38.483376, 29.755333>,  <34.161915, 38.538174, 29.579275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516880, 38.483376, 29.755333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456861, -0.134131, 0.879367,
		-0.061432, -0.981449, -0.181618,
		0.887414, -0.136995, 0.440146,
		34.783104, 38.442276, 29.887377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015160, 37.964714, 30.042480>,  <34.161915, 38.538174, 29.579275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015160, 37.964714, 30.042480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348846, 38.154930, 30.154154>,  <34.549057, 38.269058, 30.221159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348846, 38.154930, 30.154154>,  <34.015160, 37.964714, 30.042480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348846, 38.154930, 30.154154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287323, -0.057292, 0.956119,
		0.470667, -0.877827, 0.088839,
		0.834217, 0.475539, 0.279185,
		34.599113, 38.297592, 30.237909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385113, 37.480347, 30.420576>,  <34.015160, 37.964714, 30.042480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385113, 37.480347, 30.420576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557468, 37.820480, 30.541414>,  <34.660881, 38.024563, 30.613916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557468, 37.820480, 30.541414>,  <34.385113, 37.480347, 30.420576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557468, 37.820480, 30.541414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060315, -0.306881, 0.949835,
		0.900386, -0.427496, -0.080945,
		0.430891, 0.850336, 0.302096,
		34.686737, 38.075581, 30.632044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840870, 37.374401, 30.960905>,  <34.385113, 37.480347, 30.420576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840870, 37.374401, 30.960905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769882, 37.762035, 31.029472>,  <34.727291, 37.994614, 31.070614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769882, 37.762035, 31.029472>,  <34.840870, 37.374401, 30.960905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769882, 37.762035, 31.029472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230729, -0.210302, 0.950020,
		0.956696, 0.129049, 0.260918,
		-0.177471, 0.969082, 0.171420,
		34.716640, 38.052761, 31.080898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374432, 37.695621, 31.603882>,  <34.840870, 37.374401, 30.960905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374432, 37.695621, 31.603882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033062, 37.890312, 31.529301>,  <34.828239, 38.007126, 31.484552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033062, 37.890312, 31.529301>,  <35.374432, 37.695621, 31.603882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033062, 37.890312, 31.529301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184046, 0.053274, 0.981473,
		0.487642, 0.871928, 0.044115,
		-0.853424, 0.486727, -0.186453,
		34.777035, 38.036331, 31.473364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207909, 38.112022, 32.182056>,  <35.374432, 37.695621, 31.603882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207909, 38.112022, 32.182056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846375, 38.149910, 32.015152>,  <34.629456, 38.172642, 31.915009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846375, 38.149910, 32.015152>,  <35.207909, 38.112022, 32.182056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846375, 38.149910, 32.015152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408569, 0.098610, 0.907385,
		0.127092, 0.990608, -0.050428,
		-0.903836, 0.094718, -0.417265,
		34.575222, 38.178326, 31.889973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737309, 38.659416, 32.186855>,  <35.207909, 38.112022, 32.182056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737309, 38.659416, 32.186855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067360, 38.826683, 32.338806>,  <36.265388, 38.927044, 32.429977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067360, 38.826683, 32.338806>,  <35.737309, 38.659416, 32.186855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067360, 38.826683, 32.338806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152808, 0.482142, -0.862664,
		-0.543893, 0.769853, 0.333927,
		0.825124, 0.418170, 0.379874,
		36.314896, 38.952133, 32.452766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685566, 39.320126, 32.018066>,  <35.737309, 38.659416, 32.186855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685566, 39.320126, 32.018066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071220, 39.217327, 32.044609>,  <36.302612, 39.155647, 32.060535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071220, 39.217327, 32.044609>,  <35.685566, 39.320126, 32.018066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071220, 39.217327, 32.044609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183156, 0.463222, -0.867110,
		0.192102, 0.848163, 0.493677,
		0.964132, -0.256993, 0.066361,
		36.360458, 39.140228, 32.064518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067303, 39.902431, 31.712326>,  <35.685566, 39.320126, 32.018066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067303, 39.902431, 31.712326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353828, 39.623386, 31.718420>,  <36.525742, 39.455959, 31.722076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353828, 39.623386, 31.718420>,  <36.067303, 39.902431, 31.712326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353828, 39.623386, 31.718420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471031, 0.467314, -0.748162,
		0.514810, 0.543092, 0.663341,
		0.716310, -0.697616, 0.015235,
		36.568722, 39.414101, 31.722990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744167, 40.245510, 31.696608>,  <36.067303, 39.902431, 31.712326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744167, 40.245510, 31.696608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813953, 39.876740, 31.558270>,  <36.855824, 39.655476, 31.475267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813953, 39.876740, 31.558270>,  <36.744167, 40.245510, 31.696608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813953, 39.876740, 31.558270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482627, 0.386212, -0.786073,
		0.858274, -0.029774, 0.512328,
		0.174463, -0.921929, -0.345846,
		36.866291, 39.600163, 31.454515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486210, 40.305496, 31.530127>,  <36.744167, 40.245510, 31.696608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486210, 40.305496, 31.530127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290688, 40.009380, 31.345501>,  <37.173374, 39.831711, 31.234726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290688, 40.009380, 31.345501>,  <37.486210, 40.305496, 31.530127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290688, 40.009380, 31.345501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521627, 0.176068, -0.834808,
		0.699264, -0.648827, 0.300089,
		-0.488810, -0.740286, -0.461564,
		37.144043, 39.787296, 31.207031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062000, 39.979069, 31.072956>,  <37.486210, 40.305496, 31.530127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062000, 39.979069, 31.072956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697334, 39.886452, 30.937160>,  <37.478535, 39.830879, 30.855684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697334, 39.886452, 30.937160>,  <38.062000, 39.979069, 31.072956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697334, 39.886452, 30.937160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364445, -0.073890, -0.928289,
		0.189856, -0.970014, 0.151749,
		-0.911666, -0.231546, -0.339488,
		37.423836, 39.816990, 30.835314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202137, 39.439480, 30.646727>,  <38.062000, 39.979069, 31.072956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202137, 39.439480, 30.646727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849888, 39.589596, 30.531023>,  <37.638538, 39.679665, 30.461601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849888, 39.589596, 30.531023>,  <38.202137, 39.439480, 30.646727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849888, 39.589596, 30.531023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403689, 0.274612, -0.872711,
		-0.248082, -0.885296, -0.393327,
		-0.880619, 0.375286, -0.289258,
		37.585701, 39.702183, 30.444246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147346, 39.165291, 29.943712>,  <38.202137, 39.439480, 30.646727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147346, 39.165291, 29.943712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914036, 39.489197, 29.969213>,  <37.774048, 39.683540, 29.984514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914036, 39.489197, 29.969213>,  <38.147346, 39.165291, 29.943712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914036, 39.489197, 29.969213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272133, 0.268763, -0.923964,
		-0.765329, -0.521580, -0.377128,
		-0.583279, 0.809766, 0.063753,
		37.739052, 39.732128, 29.988338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776142, 39.153111, 29.292416>,  <38.147346, 39.165291, 29.943712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776142, 39.153111, 29.292416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720070, 39.529007, 29.417147>,  <37.686428, 39.754543, 29.491985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720070, 39.529007, 29.417147>,  <37.776142, 39.153111, 29.292416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720070, 39.529007, 29.417147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014819, 0.316895, -0.948345,
		-0.990015, -0.128315, -0.058348,
		-0.140177, 0.939741, 0.311830,
		37.678017, 39.810928, 29.510696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334999, 39.378483, 28.817287>,  <37.776142, 39.153111, 29.292416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334999, 39.378483, 28.817287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463375, 39.723381, 28.974022>,  <37.540401, 39.930321, 29.068062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463375, 39.723381, 28.974022>,  <37.334999, 39.378483, 28.817287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463375, 39.723381, 28.974022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135798, 0.451340, -0.881958,
		-0.937313, 0.229845, 0.261943,
		0.320940, 0.862243, 0.391835,
		37.559658, 39.982056, 29.091572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913258, 39.796398, 28.569138>,  <37.334999, 39.378483, 28.817287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913258, 39.796398, 28.569138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189163, 40.062653, 28.683084>,  <37.354706, 40.222404, 28.751453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189163, 40.062653, 28.683084>,  <36.913258, 39.796398, 28.569138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189163, 40.062653, 28.683084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190012, 0.546076, -0.815902,
		-0.698656, 0.508652, 0.503143,
		0.689765, 0.665638, 0.284870,
		37.396091, 40.262344, 28.768545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649189, 40.454132, 28.453678>,  <36.913258, 39.796398, 28.569138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649189, 40.454132, 28.453678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045055, 40.500957, 28.486803>,  <37.282574, 40.529053, 28.506678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045055, 40.500957, 28.486803>,  <36.649189, 40.454132, 28.453678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045055, 40.500957, 28.486803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015415, 0.661016, -0.750214,
		-0.142567, 0.741184, 0.655989,
		0.989665, 0.117068, 0.082813,
		37.341953, 40.536079, 28.511646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776741, 41.183731, 28.419096>,  <36.649189, 40.454132, 28.453678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776741, 41.183731, 28.419096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093067, 40.977470, 28.287207>,  <37.282864, 40.853714, 28.208073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093067, 40.977470, 28.287207>,  <36.776741, 41.183731, 28.419096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093067, 40.977470, 28.287207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035719, 0.576675, -0.816193,
		0.611012, 0.633680, 0.474461,
		0.790815, -0.515651, -0.329721,
		37.330311, 40.822777, 28.188290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010860, 41.646107, 27.943840>,  <36.776741, 41.183731, 28.419096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010860, 41.646107, 27.943840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219990, 41.315105, 27.861963>,  <37.345467, 41.116505, 27.812838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219990, 41.315105, 27.861963>,  <37.010860, 41.646107, 27.943840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219990, 41.315105, 27.861963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209346, 0.357408, -0.910183,
		0.826337, 0.433011, 0.360095,
		0.522820, -0.827503, -0.204691,
		37.376835, 41.066856, 27.800556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668015, 41.812737, 27.643776>,  <37.010860, 41.646107, 27.943840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668015, 41.812737, 27.643776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612942, 41.439095, 27.512028>,  <37.579899, 41.214909, 27.432980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612942, 41.439095, 27.512028>,  <37.668015, 41.812737, 27.643776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612942, 41.439095, 27.512028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156569, 0.307829, -0.938471,
		0.978023, -0.180779, 0.103870,
		-0.137682, -0.934109, -0.329368,
		37.571636, 41.158863, 27.413218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281288, 41.660759, 27.302088>,  <37.668015, 41.812737, 27.643776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281288, 41.660759, 27.302088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008636, 41.406723, 27.156736>,  <37.845047, 41.254299, 27.069525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008636, 41.406723, 27.156736>,  <38.281288, 41.660759, 27.302088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008636, 41.406723, 27.156736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218588, 0.297201, -0.929457,
		0.698288, -0.712972, -0.063756,
		-0.681625, -0.635092, -0.363379,
		37.804150, 41.216194, 27.047722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595245, 41.281010, 26.772001>,  <38.281288, 41.660759, 27.302088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595245, 41.281010, 26.772001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199158, 41.270424, 26.717213>,  <37.961506, 41.264072, 26.684340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199158, 41.270424, 26.717213>,  <38.595245, 41.281010, 26.772001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199158, 41.270424, 26.717213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125790, 0.255158, -0.958682,
		0.060322, -0.966537, -0.249334,
		-0.990221, -0.026465, -0.136972,
		37.902092, 41.262486, 26.676121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501938, 40.901615, 26.185661>,  <38.595245, 41.281010, 26.772001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501938, 40.901615, 26.185661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146763, 41.085094, 26.199326>,  <37.933659, 41.195183, 26.207525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146763, 41.085094, 26.199326>,  <38.501938, 40.901615, 26.185661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146763, 41.085094, 26.199326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015994, 0.105015, -0.994342,
		-0.459690, -0.882365, -0.100582,
		-0.887935, 0.458698, 0.034162,
		37.880383, 41.222702, 26.209574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124153, 40.550694, 25.711378>,  <38.501938, 40.901615, 26.185661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124153, 40.550694, 25.711378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919888, 40.891716, 25.755850>,  <37.797329, 41.096329, 25.782532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919888, 40.891716, 25.755850>,  <38.124153, 40.550694, 25.711378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919888, 40.891716, 25.755850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124048, 0.054898, -0.990756,
		-0.850782, -0.519739, 0.077724,
		-0.510668, 0.852559, 0.111178,
		37.766685, 41.147484, 25.789204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638878, 40.601997, 25.183575>,  <38.124153, 40.550694, 25.711378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638878, 40.601997, 25.183575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597019, 40.985767, 25.288307>,  <37.571903, 41.216030, 25.351147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597019, 40.985767, 25.288307>,  <37.638878, 40.601997, 25.183575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597019, 40.985767, 25.288307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076289, 0.254756, -0.963991,
		-0.991579, -0.120851, 0.046535,
		-0.104644, 0.959424, 0.261830,
		37.565624, 41.273594, 25.366856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054653, 40.797630, 24.846354>,  <37.638878, 40.601997, 25.183575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054653, 40.797630, 24.846354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290257, 41.114285, 24.911337>,  <37.431618, 41.304276, 24.950327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290257, 41.114285, 24.911337>,  <37.054653, 40.797630, 24.846354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290257, 41.114285, 24.911337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043373, 0.231706, -0.971818,
		-0.806965, 0.565359, 0.170812,
		0.589004, 0.791632, 0.162458,
		37.466957, 41.351772, 24.960073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714996, 41.353619, 24.517164>,  <37.054653, 40.797630, 24.846354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714996, 41.353619, 24.517164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102894, 41.444031, 24.554079>,  <37.335632, 41.498276, 24.576227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102894, 41.444031, 24.554079>,  <36.714996, 41.353619, 24.517164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102894, 41.444031, 24.554079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048578, 0.191807, -0.980230,
		-0.239259, 0.955051, 0.175023,
		0.969740, 0.226026, 0.092286,
		37.393814, 41.511837, 24.581764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802540, 41.962799, 24.168322>,  <36.714996, 41.353619, 24.517164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802540, 41.962799, 24.168322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174004, 41.814724, 24.177677>,  <37.396881, 41.725880, 24.183290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174004, 41.814724, 24.177677>,  <36.802540, 41.962799, 24.168322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174004, 41.814724, 24.177677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142964, 0.299037, -0.943471,
		0.342264, 0.879511, 0.330628,
		0.928664, -0.370185, 0.023389,
		37.452602, 41.703667, 24.184694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135803, 42.338024, 23.678015>,  <36.802540, 41.962799, 24.168322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135803, 42.338024, 23.678015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388645, 42.029305, 23.705620>,  <37.540352, 41.844070, 23.722183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388645, 42.029305, 23.705620>,  <37.135803, 42.338024, 23.678015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388645, 42.029305, 23.705620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164153, 0.046332, -0.985346,
		0.757296, 0.634171, 0.155980,
		0.632105, -0.771804, 0.069014,
		37.578278, 41.797764, 23.726324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823990, 42.576771, 23.265472>,  <37.135803, 42.338024, 23.678015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823990, 42.576771, 23.265472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808846, 42.181190, 23.322798>,  <37.799759, 41.943840, 23.357193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808846, 42.181190, 23.322798>,  <37.823990, 42.576771, 23.265472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808846, 42.181190, 23.322798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238613, -0.148217, -0.959737,
		0.970376, -0.002142, 0.241589,
		-0.037863, -0.988953, 0.143315,
		37.797485, 41.884506, 23.365793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435215, 42.288979, 22.914961>,  <37.823990, 42.576771, 23.265472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435215, 42.288979, 22.914961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179569, 41.981510, 22.925415>,  <38.026180, 41.797031, 22.931688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179569, 41.981510, 22.925415>,  <38.435215, 42.288979, 22.914961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179569, 41.981510, 22.925415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249480, -0.239335, -0.938338,
		0.727526, -0.593184, 0.344729,
		-0.639113, -0.768669, 0.026135,
		37.987835, 41.750908, 22.933256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800697, 41.834793, 22.596872>,  <38.435215, 42.288979, 22.914961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800697, 41.834793, 22.596872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421486, 41.726269, 22.530371>,  <38.193958, 41.661156, 22.490469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421486, 41.726269, 22.530371>,  <38.800697, 41.834793, 22.596872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421486, 41.726269, 22.530371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229148, -0.219591, -0.948299,
		0.220775, -0.937108, 0.270347,
		-0.948024, -0.271310, -0.166256,
		38.137077, 41.644875, 22.480494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799576, 41.118614, 22.327703>,  <38.800697, 41.834793, 22.596872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799576, 41.118614, 22.327703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436802, 41.252880, 22.225880>,  <38.219139, 41.333439, 22.164785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436802, 41.252880, 22.225880>,  <38.799576, 41.118614, 22.327703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436802, 41.252880, 22.225880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142351, -0.324536, -0.935100,
		-0.396501, -0.884308, 0.246549,
		-0.906931, 0.335672, -0.254561,
		38.164722, 41.353580, 22.149511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557529, 40.676720, 21.732580>,  <38.799576, 41.118614, 22.327703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557529, 40.676720, 21.732580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313808, 40.991558, 21.694138>,  <38.167576, 41.180462, 21.671072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313808, 40.991558, 21.694138>,  <38.557529, 40.676720, 21.732580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313808, 40.991558, 21.694138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102450, -0.198328, -0.974766,
		-0.786292, -0.584082, 0.201480,
		-0.609302, 0.787093, -0.096104,
		38.131020, 41.227684, 21.665306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117565, 40.400703, 21.360666>,  <38.557529, 40.676720, 21.732580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117565, 40.400703, 21.360666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056648, 40.795143, 21.334084>,  <38.020100, 41.031807, 21.318134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056648, 40.795143, 21.334084>,  <38.117565, 40.400703, 21.360666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056648, 40.795143, 21.334084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194288, -0.095799, -0.976255,
		-0.969051, -0.135764, 0.206176,
		-0.152292, 0.986099, -0.066457,
		38.010960, 41.090973, 21.314146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511414, 40.439560, 21.043343>,  <38.117565, 40.400703, 21.360666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511414, 40.439560, 21.043343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724255, 40.769817, 20.968317>,  <37.851959, 40.967972, 20.923302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724255, 40.769817, 20.968317>,  <37.511414, 40.439560, 21.043343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724255, 40.769817, 20.968317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099094, -0.159274, -0.982248,
		-0.840860, 0.541245, -0.002934,
		0.532104, 0.825643, -0.187562,
		37.883884, 41.017509, 20.912048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066521, 40.899544, 20.604656>,  <37.511414, 40.439560, 21.043343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066521, 40.899544, 20.604656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455544, 40.971176, 20.545246>,  <37.688957, 41.014156, 20.509600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455544, 40.971176, 20.545246>,  <37.066521, 40.899544, 20.604656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455544, 40.971176, 20.545246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143107, -0.042880, -0.988778,
		-0.183443, 0.982899, -0.016075,
		0.972558, 0.179084, -0.148526,
		37.747311, 41.024902, 20.500689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957085, 41.240932, 20.053761>,  <37.066521, 40.899544, 20.604656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957085, 41.240932, 20.053761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348789, 41.161282, 20.068703>,  <37.583813, 41.113491, 20.077667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348789, 41.161282, 20.068703>,  <36.957085, 41.240932, 20.053761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348789, 41.161282, 20.068703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002833, -0.197824, -0.980233,
		0.202577, 0.959800, -0.194286,
		0.979262, -0.199123, 0.037355,
		37.642567, 41.101543, 20.079908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122967, 41.513573, 19.426958>,  <36.957085, 41.240932, 20.053761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122967, 41.513573, 19.426958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421532, 41.274235, 19.543482>,  <37.600670, 41.130634, 19.613396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421532, 41.274235, 19.543482>,  <37.122967, 41.513573, 19.426958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421532, 41.274235, 19.543482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141165, -0.285419, -0.947950,
		0.650342, 0.748681, -0.128575,
		0.746410, -0.598341, 0.291307,
		37.645454, 41.094734, 19.630875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650124, 41.703331, 18.952227>,  <37.122967, 41.513573, 19.426958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650124, 41.703331, 18.952227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718548, 41.340378, 19.105793>,  <37.759602, 41.122604, 19.197933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718548, 41.340378, 19.105793>,  <37.650124, 41.703331, 18.952227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718548, 41.340378, 19.105793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219760, -0.344706, -0.912624,
		0.960440, 0.240482, 0.140442,
		0.171058, -0.907384, 0.383918,
		37.769867, 41.068161, 19.220968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300045, 41.460945, 18.692804>,  <37.650124, 41.703331, 18.952227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300045, 41.460945, 18.692804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108620, 41.132137, 18.816257>,  <37.993763, 40.934853, 18.890329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108620, 41.132137, 18.816257>,  <38.300045, 41.460945, 18.692804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108620, 41.132137, 18.816257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074003, -0.388009, -0.918680,
		0.874928, -0.416808, 0.246520,
		-0.478565, -0.822022, 0.308635,
		37.965050, 40.885532, 18.908848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546951, 40.860500, 18.259665>,  <38.300045, 41.460945, 18.692804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546951, 40.860500, 18.259665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193909, 40.719398, 18.383966>,  <37.982082, 40.634739, 18.458548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193909, 40.719398, 18.383966>,  <38.546951, 40.860500, 18.259665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193909, 40.719398, 18.383966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093650, -0.515845, -0.851548,
		0.460686, -0.780686, 0.422254,
		-0.882609, -0.352752, 0.310754,
		37.929127, 40.613571, 18.477192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813313, 40.147163, 18.062754>,  <38.546951, 40.860500, 18.259665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813313, 40.147163, 18.062754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987823, 39.823032, 17.906277>,  <39.092529, 39.628555, 17.812389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987823, 39.823032, 17.906277>,  <38.813313, 40.147163, 18.062754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987823, 39.823032, 17.906277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595194, -0.066171, 0.800854,
		-0.674839, -0.582229, 0.453433,
		0.436276, -0.810328, -0.391193,
		39.118706, 39.579933, 17.788919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577946, 39.672573, 18.528116>,  <38.813313, 40.147163, 18.062754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577946, 39.672573, 18.528116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903854, 39.558128, 18.326408>,  <39.099400, 39.489464, 18.205383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903854, 39.558128, 18.326408>,  <38.577946, 39.672573, 18.528116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903854, 39.558128, 18.326408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436673, -0.269318, 0.858361,
		-0.381396, -0.919569, -0.094495,
		0.814772, -0.286113, -0.504268,
		39.148285, 39.472294, 18.175129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775291, 38.979107, 18.821836>,  <38.577946, 39.672573, 18.528116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775291, 38.979107, 18.821836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080608, 39.163998, 18.641293>,  <39.263798, 39.274933, 18.532967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080608, 39.163998, 18.641293>,  <38.775291, 38.979107, 18.821836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080608, 39.163998, 18.641293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565633, -0.140562, 0.812590,
		0.312158, -0.875549, -0.368742,
		0.763294, 0.462229, -0.451362,
		39.309597, 39.302666, 18.505884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288239, 38.586632, 19.011673>,  <38.775291, 38.979107, 18.821836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288239, 38.586632, 19.011673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477409, 38.911701, 18.875500>,  <39.590912, 39.106743, 18.793797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477409, 38.911701, 18.875500>,  <39.288239, 38.586632, 19.011673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477409, 38.911701, 18.875500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664793, -0.075542, 0.743198,
		0.578262, -0.577799, -0.575987,
		0.472930, 0.812676, -0.340434,
		39.619289, 39.155502, 18.773369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982197, 38.499363, 19.056681>,  <39.288239, 38.586632, 19.011673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982197, 38.499363, 19.056681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962841, 38.898842, 19.050125>,  <39.951229, 39.138527, 19.046192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962841, 38.898842, 19.050125>,  <39.982197, 38.499363, 19.056681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962841, 38.898842, 19.050125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560407, 0.040727, 0.827215,
		0.826802, 0.030846, -0.561646,
		-0.048391, 0.998694, -0.016387,
		39.948322, 39.198448, 19.045210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620132, 38.574245, 19.398443>,  <39.982197, 38.499363, 19.056681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620132, 38.574245, 19.398443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471935, 38.945663, 19.407717>,  <40.383015, 39.168514, 19.413280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471935, 38.945663, 19.407717>,  <40.620132, 38.574245, 19.398443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471935, 38.945663, 19.407717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591457, 0.216603, 0.776699,
		0.716179, 0.301475, -0.629445,
		-0.370495, 0.928545, 0.023183,
		40.360786, 39.224228, 19.414671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230339, 39.123531, 19.340881>,  <40.620132, 38.574245, 19.398443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230339, 39.123531, 19.340881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899788, 39.227165, 19.540873>,  <40.701458, 39.289345, 19.660868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899788, 39.227165, 19.540873>,  <41.230339, 39.123531, 19.340881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899788, 39.227165, 19.540873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562374, 0.334091, 0.756386,
		0.028929, 0.906233, -0.421787,
		-0.826377, 0.259084, 0.499977,
		40.651875, 39.304890, 19.690866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446026, 39.648911, 19.810175>,  <41.230339, 39.123531, 19.340881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446026, 39.648911, 19.810175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081917, 39.580734, 19.961096>,  <40.863453, 39.539829, 20.051649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081917, 39.580734, 19.961096>,  <41.446026, 39.648911, 19.810175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081917, 39.580734, 19.961096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319240, 0.291310, 0.901789,
		-0.263617, 0.941322, -0.210759,
		-0.910270, -0.170445, 0.377302,
		40.808834, 39.529602, 20.074286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210537, 40.248878, 20.118650>,  <41.446026, 39.648911, 19.810175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210537, 40.248878, 20.118650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959213, 39.993580, 20.296579>,  <40.808418, 39.840401, 20.403337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959213, 39.993580, 20.296579>,  <41.210537, 40.248878, 20.118650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959213, 39.993580, 20.296579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130269, 0.477393, 0.868980,
		-0.766980, 0.603935, -0.216807,
		-0.628309, -0.638247, 0.444825,
		40.770721, 39.802105, 20.430027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679787, 40.645321, 20.680117>,  <41.210537, 40.248878, 20.118650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679787, 40.645321, 20.680117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723274, 40.260056, 20.778496>,  <40.749367, 40.028896, 20.837523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723274, 40.260056, 20.778496>,  <40.679787, 40.645321, 20.680117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723274, 40.260056, 20.778496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179058, 0.262339, 0.948217,
		-0.977813, -0.059048, 0.200984,
		0.108716, -0.963167, 0.245946,
		40.755890, 39.971104, 20.852280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114628, 40.540901, 21.101570>,  <40.679787, 40.645321, 20.680117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114628, 40.540901, 21.101570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385201, 40.256866, 21.179762>,  <40.547546, 40.086445, 21.226677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385201, 40.256866, 21.179762>,  <40.114628, 40.540901, 21.101570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385201, 40.256866, 21.179762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171117, 0.106626, 0.979464,
		-0.716349, -0.695992, -0.049383,
		0.676434, -0.710089, 0.195477,
		40.588131, 40.043839, 21.238405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775280, 40.035980, 21.555420>,  <40.114628, 40.540901, 21.101570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775280, 40.035980, 21.555420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168739, 39.989487, 21.610458>,  <40.404816, 39.961590, 21.643482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168739, 39.989487, 21.610458>,  <39.775280, 40.035980, 21.555420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168739, 39.989487, 21.610458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150804, -0.113720, 0.982001,
		-0.098487, -0.986691, -0.129387,
		0.983645, -0.116226, 0.137597,
		40.463833, 39.954617, 21.651737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794674, 39.538887, 22.064268>,  <39.775280, 40.035980, 21.555420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794674, 39.538887, 22.064268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168488, 39.680809, 22.075359>,  <40.392776, 39.765961, 22.082014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168488, 39.680809, 22.075359>,  <39.794674, 39.538887, 22.064268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168488, 39.680809, 22.075359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038116, -0.177258, 0.983426,
		0.353836, -0.917985, -0.179177,
		0.934530, 0.354801, 0.027730,
		40.448845, 39.787251, 22.083679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176369, 39.129887, 22.638838>,  <39.794674, 39.538887, 22.064268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176369, 39.129887, 22.638838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374805, 39.469830, 22.567703>,  <40.493870, 39.673798, 22.525023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374805, 39.469830, 22.567703>,  <40.176369, 39.129887, 22.638838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374805, 39.469830, 22.567703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154588, 0.115092, 0.981252,
		0.854396, -0.514286, -0.074282,
		0.496095, 0.849861, -0.177837,
		40.523636, 39.724789, 22.514353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786373, 39.149052, 23.141672>,  <40.176369, 39.129887, 22.638838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786373, 39.149052, 23.141672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743393, 39.536015, 23.049957>,  <40.717606, 39.768192, 22.994928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743393, 39.536015, 23.049957>,  <40.786373, 39.149052, 23.141672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743393, 39.536015, 23.049957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038120, 0.226446, 0.973277,
		0.993479, 0.113321, 0.012545,
		-0.107452, 0.967409, -0.229289,
		40.711159, 39.826237, 22.981171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111828, 39.462074, 23.657700>,  <40.786373, 39.149052, 23.141672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111828, 39.462074, 23.657700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891415, 39.758877, 23.504972>,  <40.759167, 39.936958, 23.413336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891415, 39.758877, 23.504972>,  <41.111828, 39.462074, 23.657700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891415, 39.758877, 23.504972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029079, 0.440199, 0.897429,
		0.833974, 0.505619, -0.220989,
		-0.551036, 0.742007, -0.381817,
		40.726105, 39.981480, 23.390427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535004, 40.128017, 23.723030>,  <41.111828, 39.462074, 23.657700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535004, 40.128017, 23.723030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137909, 40.174747, 23.734524>,  <40.899651, 40.202785, 23.741421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137909, 40.174747, 23.734524>,  <41.535004, 40.128017, 23.723030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137909, 40.174747, 23.734524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050415, 0.187116, 0.981043,
		0.109233, 0.975366, -0.191647,
		-0.992737, 0.116824, 0.028734,
		40.840088, 40.209793, 23.743145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454777, 40.626179, 24.311001>,  <41.535004, 40.128017, 23.723030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454777, 40.626179, 24.311001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081852, 40.493656, 24.252991>,  <40.858097, 40.414143, 24.218185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081852, 40.493656, 24.252991>,  <41.454777, 40.626179, 24.311001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081852, 40.493656, 24.252991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237245, 0.257604, 0.936672,
		-0.272971, 0.907675, -0.318768,
		-0.932310, -0.331310, -0.145023,
		40.802158, 40.394264, 24.209484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973473, 41.127068, 24.650803>,  <41.454777, 40.626179, 24.311001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973473, 41.127068, 24.650803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756973, 40.793835, 24.605145>,  <40.627071, 40.593895, 24.577749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756973, 40.793835, 24.605145>,  <40.973473, 41.127068, 24.650803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756973, 40.793835, 24.605145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270692, 0.044109, 0.961655,
		-0.796098, 0.551395, -0.249382,
		-0.541251, -0.833078, -0.114144,
		40.594597, 40.543911, 24.570902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322582, 41.252850, 24.871233>,  <40.973473, 41.127068, 24.650803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322582, 41.252850, 24.871233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339222, 40.853554, 24.888142>,  <40.349205, 40.613976, 24.898287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339222, 40.853554, 24.888142>,  <40.322582, 41.252850, 24.871233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339222, 40.853554, 24.888142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532381, 0.013656, 0.846395,
		-0.845482, -0.057714, -0.530875,
		0.041599, -0.998240, 0.042271,
		40.351700, 40.554081, 24.900824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811298, 41.230656, 25.247980>,  <40.322582, 41.252850, 24.871233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811298, 41.230656, 25.247980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962784, 40.861053, 25.269112>,  <40.053673, 40.639294, 25.281792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962784, 40.861053, 25.269112>,  <39.811298, 41.230656, 25.247980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962784, 40.861053, 25.269112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295450, -0.066601, 0.953034,
		-0.877091, -0.376531, -0.298220,
		0.378709, -0.924007, 0.052831,
		40.076397, 40.583851, 25.284962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267365, 40.823635, 25.498049>,  <39.811298, 41.230656, 25.247980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267365, 40.823635, 25.498049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595188, 40.619019, 25.601316>,  <39.791882, 40.496250, 25.663277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595188, 40.619019, 25.601316>,  <39.267365, 40.823635, 25.498049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595188, 40.619019, 25.601316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376606, -0.141319, 0.915531,
		-0.431845, -0.847560, -0.308468,
		0.819560, -0.511538, 0.258168,
		39.841057, 40.465557, 25.678766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032276, 40.354057, 25.911343>,  <39.267365, 40.823635, 25.498049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032276, 40.354057, 25.911343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420975, 40.369511, 26.004475>,  <39.654194, 40.378784, 26.060354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420975, 40.369511, 26.004475>,  <39.032276, 40.354057, 25.911343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420975, 40.369511, 26.004475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223489, -0.166466, 0.960386,
		0.075865, -0.985290, -0.153129,
		0.971749, 0.038638, 0.232830,
		39.712502, 40.381100, 26.074324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037975, 39.969227, 26.429634>,  <39.032276, 40.354057, 25.911343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037975, 39.969227, 26.429634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419376, 40.088909, 26.444065>,  <39.648216, 40.160721, 26.452724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419376, 40.088909, 26.444065>,  <39.037975, 39.969227, 26.429634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419376, 40.088909, 26.444065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057997, -0.299646, 0.952286,
		0.295744, -0.905917, -0.303067,
		0.953505, 0.299210, 0.036078,
		39.705429, 40.178673, 26.454889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396751, 39.441605, 26.678028>,  <39.037975, 39.969227, 26.429634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396751, 39.441605, 26.678028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588245, 39.782639, 26.761860>,  <39.703140, 39.987259, 26.812159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588245, 39.782639, 26.761860>,  <39.396751, 39.441605, 26.678028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588245, 39.782639, 26.761860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098125, -0.289174, 0.952234,
		0.872461, -0.435298, -0.222096,
		0.478730, 0.852580, 0.209579,
		39.731865, 40.038414, 26.824734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980549, 39.290985, 27.006006>,  <39.396751, 39.441605, 26.678028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980549, 39.290985, 27.006006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903843, 39.669964, 27.108427>,  <39.857819, 39.897350, 27.169880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903843, 39.669964, 27.108427>,  <39.980549, 39.290985, 27.006006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903843, 39.669964, 27.108427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166422, -0.225726, 0.959870,
		0.967228, 0.226683, -0.114390,
		-0.191766, 0.947450, 0.256054,
		39.846313, 39.954201, 27.185244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530716, 39.437801, 27.408115>,  <39.980549, 39.290985, 27.006006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530716, 39.437801, 27.408115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254295, 39.707088, 27.513351>,  <40.088444, 39.868660, 27.576492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254295, 39.707088, 27.513351>,  <40.530716, 39.437801, 27.408115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254295, 39.707088, 27.513351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162371, -0.210090, 0.964105,
		0.704329, 0.708967, 0.035872,
		-0.691055, 0.673222, 0.263088,
		40.046978, 39.909054, 27.592278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755135, 39.866871, 27.878946>,  <40.530716, 39.437801, 27.408115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755135, 39.866871, 27.878946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360531, 39.891644, 27.939569>,  <40.123768, 39.906506, 27.975943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360531, 39.891644, 27.939569>,  <40.755135, 39.866871, 27.878946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360531, 39.891644, 27.939569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132720, -0.239539, 0.961773,
		0.095864, 0.968910, 0.228087,
		-0.986507, 0.061928, 0.151557,
		40.064579, 39.910221, 27.985037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753345, 40.270573, 28.509876>,  <40.755135, 39.866871, 27.878946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753345, 40.270573, 28.509876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411976, 40.067646, 28.462055>,  <40.207153, 39.945889, 28.433363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411976, 40.067646, 28.462055>,  <40.753345, 40.270573, 28.509876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411976, 40.067646, 28.462055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065976, -0.332674, 0.940731,
		-0.517024, 0.794956, 0.317383,
		-0.853424, -0.507320, -0.119553,
		40.155949, 39.915451, 28.426189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327911, 40.470753, 29.098993>,  <40.753345, 40.270573, 28.509876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327911, 40.470753, 29.098993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194359, 40.116295, 28.970448>,  <40.114227, 39.903622, 28.893320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194359, 40.116295, 28.970448>,  <40.327911, 40.470753, 29.098993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194359, 40.116295, 28.970448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074111, -0.364552, 0.928229,
		-0.939696, 0.286104, 0.187391,
		-0.333884, -0.886141, -0.321364,
		40.094193, 39.850452, 28.874039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838230, 40.288971, 29.628426>,  <40.327911, 40.470753, 29.098993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838230, 40.288971, 29.628426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905827, 39.944160, 29.437281>,  <39.946384, 39.737274, 29.322594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905827, 39.944160, 29.437281>,  <39.838230, 40.288971, 29.628426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905827, 39.944160, 29.437281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133187, -0.500359, 0.855513,
		-0.976578, -0.080926, -0.199365,
		0.168987, -0.862028, -0.477862,
		39.956524, 39.685551, 29.293922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339790, 39.768112, 29.835728>,  <39.838230, 40.288971, 29.628426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339790, 39.768112, 29.835728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628555, 39.540173, 29.678698>,  <39.801815, 39.403408, 29.584480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628555, 39.540173, 29.678698>,  <39.339790, 39.768112, 29.835728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628555, 39.540173, 29.678698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154554, -0.685768, 0.711221,
		-0.674492, -0.452775, -0.583143,
		0.721924, -0.569840, -0.392567,
		39.845131, 39.369221, 29.560926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026630, 39.055370, 29.760130>,  <39.339790, 39.768112, 29.835728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026630, 39.055370, 29.760130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425289, 39.046124, 29.791523>,  <39.664486, 39.040577, 29.810360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425289, 39.046124, 29.791523>,  <39.026630, 39.055370, 29.760130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425289, 39.046124, 29.791523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075918, -0.618878, 0.781810,
		0.030503, -0.785147, -0.618557,
		0.996647, -0.023112, 0.078485,
		39.724285, 39.039188, 29.815069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130783, 38.371422, 29.752010>,  <39.026630, 39.055370, 29.760130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130783, 38.371422, 29.752010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477089, 38.500954, 29.904636>,  <39.684872, 38.578674, 29.996212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477089, 38.500954, 29.904636>,  <39.130783, 38.371422, 29.752010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477089, 38.500954, 29.904636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085859, -0.655017, 0.750721,
		0.493037, -0.682706, -0.539285,
		0.865761, 0.323830, 0.381564,
		39.736816, 38.598103, 30.019106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395264, 37.752319, 30.054810>,  <39.130783, 38.371422, 29.752010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395264, 37.752319, 30.054810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626217, 38.036537, 30.215685>,  <39.764790, 38.207069, 30.312210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626217, 38.036537, 30.215685>,  <39.395264, 37.752319, 30.054810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626217, 38.036537, 30.215685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046448, -0.520378, 0.852672,
		0.815154, -0.473633, -0.333459,
		0.577378, 0.710548, 0.402189,
		39.799431, 38.249702, 30.336342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910923, 37.434727, 30.399069>,  <39.395264, 37.752319, 30.054810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910923, 37.434727, 30.399069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879791, 37.798141, 30.563267>,  <39.861115, 38.016190, 30.661785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879791, 37.798141, 30.563267>,  <39.910923, 37.434727, 30.399069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879791, 37.798141, 30.563267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066209, -0.415547, 0.907159,
		0.994766, 0.043423, 0.092494,
		-0.077827, 0.908535, 0.410497,
		39.856441, 38.070702, 30.686417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358166, 37.328896, 30.900732>,  <39.910923, 37.434727, 30.399069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358166, 37.328896, 30.900732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118114, 37.635983, 30.990582>,  <39.974083, 37.820232, 31.044491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118114, 37.635983, 30.990582>,  <40.358166, 37.328896, 30.900732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118114, 37.635983, 30.990582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329726, -0.493271, 0.804962,
		0.728781, 0.409020, 0.549164,
		-0.600132, 0.767715, 0.224622,
		39.938076, 37.866299, 31.057968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444897, 37.523472, 31.679884>,  <40.358166, 37.328896, 30.900732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444897, 37.523472, 31.679884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089127, 37.681793, 31.588446>,  <39.875664, 37.776787, 31.533583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089127, 37.681793, 31.588446>,  <40.444897, 37.523472, 31.679884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089127, 37.681793, 31.588446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351036, -0.271213, 0.896224,
		0.292730, 0.877373, 0.380166,
		-0.889428, 0.395804, -0.228597,
		39.822300, 37.800533, 31.519867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221928, 37.903957, 32.303196>,  <40.444897, 37.523472, 31.679884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221928, 37.903957, 32.303196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878563, 37.881535, 32.099243>,  <39.672543, 37.868080, 31.976870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878563, 37.881535, 32.099243>,  <40.221928, 37.903957, 32.303196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878563, 37.881535, 32.099243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489013, -0.210728, 0.846439,
		-0.154894, 0.975936, 0.153481,
		-0.858414, -0.056054, -0.509886,
		39.621040, 37.864719, 31.946278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735100, 38.202522, 32.668274>,  <40.221928, 37.903957, 32.303196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735100, 38.202522, 32.668274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509224, 37.974102, 32.429939>,  <39.373699, 37.837048, 32.286938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509224, 37.974102, 32.429939>,  <39.735100, 38.202522, 32.668274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509224, 37.974102, 32.429939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614828, -0.190535, 0.765299,
		-0.550555, 0.798494, -0.243507,
		-0.564691, -0.571054, -0.595837,
		39.339817, 37.802784, 32.251186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101055, 38.474651, 32.707310>,  <39.735100, 38.202522, 32.668274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101055, 38.474651, 32.707310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116341, 38.082672, 32.629093>,  <39.125511, 37.847485, 32.582165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116341, 38.082672, 32.629093>,  <39.101055, 38.474651, 32.707310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116341, 38.082672, 32.629093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600103, -0.178973, 0.779644,
		-0.799009, 0.087548, -0.594912,
		0.038217, -0.979951, -0.195539,
		39.127804, 37.788689, 32.570431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431465, 38.299129, 32.694481>,  <39.101055, 38.474651, 32.707310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431465, 38.299129, 32.694481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629906, 37.959435, 32.766788>,  <38.748970, 37.755615, 32.810173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629906, 37.959435, 32.766788>,  <38.431465, 38.299129, 32.694481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629906, 37.959435, 32.766788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661016, -0.234413, 0.712817,
		-0.562980, -0.473117, -0.677653,
		0.496096, -0.849241, 0.180768,
		38.778736, 37.704662, 32.821018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908413, 37.873657, 32.910645>,  <38.431465, 38.299129, 32.694481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908413, 37.873657, 32.910645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225491, 37.653751, 33.016014>,  <38.415737, 37.521809, 33.079235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225491, 37.653751, 33.016014>,  <37.908413, 37.873657, 32.910645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225491, 37.653751, 33.016014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583244, -0.558216, 0.590103,
		-0.177372, -0.621411, -0.763143,
		0.792695, -0.549766, 0.263422,
		38.463299, 37.488823, 33.095039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653721, 37.137520, 32.879841>,  <37.908413, 37.873657, 32.910645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653721, 37.137520, 32.879841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986420, 37.160496, 33.100712>,  <38.186039, 37.174282, 33.233234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986420, 37.160496, 33.100712>,  <37.653721, 37.137520, 32.879841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986420, 37.160496, 33.100712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441963, -0.533404, 0.721214,
		0.335961, -0.843908, -0.418269,
		0.831745, 0.057440, 0.552179,
		38.235943, 37.177727, 33.266365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682564, 36.507866, 33.314674>,  <37.653721, 37.137520, 32.879841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682564, 36.507866, 33.314674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940948, 36.750206, 33.500439>,  <38.095982, 36.895611, 33.611897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940948, 36.750206, 33.500439>,  <37.682564, 36.507866, 33.314674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940948, 36.750206, 33.500439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209674, -0.444158, 0.871069,
		0.734006, -0.660056, -0.159881,
		0.645966, 0.605847, 0.464411,
		38.134739, 36.931961, 33.639763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073460, 36.073330, 33.770058>,  <37.682564, 36.507866, 33.314674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073460, 36.073330, 33.770058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068714, 36.446926, 33.912903>,  <38.065868, 36.671082, 33.998608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068714, 36.446926, 33.912903>,  <38.073460, 36.073330, 33.770058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068714, 36.446926, 33.912903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150245, -0.354744, 0.922813,
		0.988577, -0.042706, 0.144536,
		-0.011864, 0.933987, 0.357108,
		38.065155, 36.727123, 34.020035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238941, 35.947971, 34.493084>,  <38.073460, 36.073330, 33.770058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238941, 35.947971, 34.493084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136917, 36.333717, 34.521202>,  <38.075703, 36.565166, 34.538074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136917, 36.333717, 34.521202>,  <38.238941, 35.947971, 34.493084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136917, 36.333717, 34.521202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134390, -0.107349, 0.985097,
		0.957541, 0.241811, 0.156981,
		-0.255059, 0.964367, 0.070294,
		38.060398, 36.623028, 34.542290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635742, 36.304989, 34.986641>,  <38.238941, 35.947971, 34.493084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635742, 36.304989, 34.986641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285004, 36.494965, 34.956791>,  <38.074558, 36.608952, 34.938881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285004, 36.494965, 34.956791>,  <38.635742, 36.304989, 34.986641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285004, 36.494965, 34.956791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198253, -0.215792, 0.956101,
		0.437986, 0.853151, 0.283374,
		-0.876849, 0.474939, -0.074626,
		38.021950, 36.637447, 34.934402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498707, 36.721359, 35.692646>,  <38.635742, 36.304989, 34.986641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498707, 36.721359, 35.692646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142857, 36.707310, 35.510509>,  <37.929348, 36.698879, 35.401226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142857, 36.707310, 35.510509>,  <38.498707, 36.721359, 35.692646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142857, 36.707310, 35.510509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452004, -0.074799, 0.888874,
		-0.065283, 0.996580, 0.050665,
		-0.889624, -0.035127, -0.455341,
		37.875969, 36.696770, 35.373909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036854, 37.221043, 35.857998>,  <38.498707, 36.721359, 35.692646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036854, 37.221043, 35.857998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831268, 36.890774, 35.764957>,  <37.707916, 36.692612, 35.709133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831268, 36.890774, 35.764957>,  <38.036854, 37.221043, 35.857998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831268, 36.890774, 35.764957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422388, 0.007591, 0.906383,
		-0.746613, 0.564094, -0.352657,
		-0.513963, -0.825676, -0.232599,
		37.677078, 36.643070, 35.695179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434528, 37.395786, 36.076187>,  <38.036854, 37.221043, 35.857998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434528, 37.395786, 36.076187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419807, 36.996304, 36.062206>,  <37.410976, 36.756615, 36.053818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419807, 36.996304, 36.062206>,  <37.434528, 37.395786, 36.076187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419807, 36.996304, 36.062206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454758, -0.014403, 0.890499,
		-0.889855, 0.048667, -0.453641,
		-0.036804, -0.998711, -0.034948,
		37.408768, 36.696690, 36.051723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767582, 37.102932, 36.038139>,  <37.434528, 37.395786, 36.076187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767582, 37.102932, 36.038139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990711, 36.828026, 36.224258>,  <37.124588, 36.663082, 36.335930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990711, 36.828026, 36.224258>,  <36.767582, 37.102932, 36.038139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990711, 36.828026, 36.224258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527827, 0.138883, 0.837920,
		-0.640496, -0.713005, -0.285286,
		0.557820, -0.687266, 0.465297,
		37.158058, 36.621845, 36.363846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456188, 36.547894, 36.204323>,  <36.767582, 37.102932, 36.038139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456188, 36.547894, 36.204323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743305, 36.283470, 36.291756>,  <36.915577, 36.124817, 36.344215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743305, 36.283470, 36.291756>,  <36.456188, 36.547894, 36.204323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743305, 36.283470, 36.291756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385772, -0.116255, 0.915240,
		-0.579617, -0.741273, -0.338465,
		0.717792, -0.661059, 0.218579,
		36.958641, 36.085152, 36.357330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093590, 36.010460, 36.632980>,  <36.456188, 36.547894, 36.204323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093590, 36.010460, 36.632980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484646, 36.020760, 36.716465>,  <36.719280, 36.026939, 36.766556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484646, 36.020760, 36.716465>,  <36.093590, 36.010460, 36.632980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484646, 36.020760, 36.716465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208257, -0.019150, 0.977887,
		0.029186, -0.999485, -0.013357,
		0.977639, 0.025759, 0.208709,
		36.777939, 36.028484, 36.779079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036720, 35.731701, 37.355625>,  <36.093590, 36.010460, 36.632980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036720, 35.731701, 37.355625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328209, 36.003681, 37.323048>,  <36.503101, 36.166870, 37.303501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328209, 36.003681, 37.323048>,  <36.036720, 35.731701, 37.355625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328209, 36.003681, 37.323048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066227, 0.188347, 0.979867,
		0.681602, -0.708655, 0.182283,
		0.728720, 0.679952, -0.081445,
		36.546825, 36.207668, 37.298615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615917, 35.640999, 37.919479>,  <36.036720, 35.731701, 37.355625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615917, 35.640999, 37.919479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583286, 36.021523, 37.800579>,  <36.563705, 36.249836, 37.729240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583286, 36.021523, 37.800579>,  <36.615917, 35.640999, 37.919479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583286, 36.021523, 37.800579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185230, 0.278577, 0.942382,
		0.979303, 0.131940, 0.153484,
		-0.081581, 0.951308, -0.297251,
		36.558811, 36.306915, 37.711403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017979, 35.977360, 38.300896>,  <36.615917, 35.640999, 37.919479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017979, 35.977360, 38.300896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724358, 36.216125, 38.171368>,  <36.548183, 36.359386, 38.093651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724358, 36.216125, 38.171368>,  <37.017979, 35.977360, 38.300896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724358, 36.216125, 38.171368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026221, 0.501394, 0.864822,
		0.678587, 0.626334, -0.383701,
		-0.734052, 0.596918, -0.323816,
		36.504143, 36.395203, 38.074223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061386, 36.574711, 38.733810>,  <37.017979, 35.977360, 38.300896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061386, 36.574711, 38.733810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727646, 36.686024, 38.543476>,  <36.527401, 36.752811, 38.429276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727646, 36.686024, 38.543476>,  <37.061386, 36.574711, 38.733810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727646, 36.686024, 38.543476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235452, 0.600601, 0.764094,
		0.498420, 0.749559, -0.435590,
		-0.834350, 0.278279, -0.475837,
		36.477341, 36.769508, 38.400726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019276, 37.172840, 38.900818>,  <37.061386, 36.574711, 38.733810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019276, 37.172840, 38.900818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636303, 37.149448, 38.787750>,  <36.406521, 37.135414, 38.719910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636303, 37.149448, 38.787750>,  <37.019276, 37.172840, 38.900818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636303, 37.149448, 38.787750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251149, 0.651484, 0.715886,
		0.142292, 0.756405, -0.638439,
		-0.957433, -0.058478, -0.282671,
		36.349072, 37.131905, 38.702950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738419, 37.760361, 39.139458>,  <37.019276, 37.172840, 38.900818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738419, 37.760361, 39.139458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406059, 37.549858, 39.067173>,  <36.206642, 37.423557, 39.023804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406059, 37.549858, 39.067173>,  <36.738419, 37.760361, 39.139458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406059, 37.549858, 39.067173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484985, 0.525760, 0.698832,
		-0.272757, 0.668301, -0.692082,
		-0.830899, -0.526261, -0.180711,
		36.156788, 37.391979, 39.012959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230450, 38.107201, 38.787888>,  <36.738419, 37.760361, 39.139458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230450, 38.107201, 38.787888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050003, 37.829540, 39.012260>,  <35.941734, 37.662945, 39.146885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050003, 37.829540, 39.012260>,  <36.230450, 38.107201, 38.787888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050003, 37.829540, 39.012260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541234, 0.712541, 0.446489,
		-0.709618, -0.102176, -0.697139,
		-0.451119, -0.694151, 0.560932,
		35.914669, 37.621296, 39.180542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525066, 37.912308, 38.630642>,  <36.230450, 38.107201, 38.787888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525066, 37.912308, 38.630642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652363, 37.908443, 39.009827>,  <35.728741, 37.906124, 39.237335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652363, 37.908443, 39.009827>,  <35.525066, 37.912308, 38.630642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652363, 37.908443, 39.009827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559785, 0.805093, 0.196129,
		-0.765090, -0.593070, 0.250809,
		0.318243, -0.009657, 0.947960,
		35.747837, 37.905548, 39.294216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960121, 38.006863, 39.128212>,  <35.525066, 37.912308, 38.630642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960121, 38.006863, 39.128212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305019, 38.158524, 39.262539>,  <35.511959, 38.249519, 39.343136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305019, 38.158524, 39.262539>,  <34.960121, 38.006863, 39.128212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305019, 38.158524, 39.262539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438122, 0.891015, 0.118920,
		-0.254130, -0.249668, 0.934389,
		0.862245, 0.379156, 0.335819,
		35.563694, 38.272270, 39.363285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796787, 38.339127, 39.756378>,  <34.960121, 38.006863, 39.128212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796787, 38.339127, 39.756378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108021, 38.498848, 39.562412>,  <35.294762, 38.594681, 39.446033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108021, 38.498848, 39.562412>,  <34.796787, 38.339127, 39.756378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108021, 38.498848, 39.562412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268063, 0.909208, 0.318564,
		0.568095, -0.117880, 0.814477,
		0.778082, 0.399305, -0.484917,
		35.341446, 38.618641, 39.416939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158665, 37.731689, 40.051121>,  <34.796787, 38.339127, 39.756378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158665, 37.731689, 40.051121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957920, 37.395451, 39.969604>,  <34.837475, 37.193707, 39.920692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957920, 37.395451, 39.969604>,  <35.158665, 37.731689, 40.051121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957920, 37.395451, 39.969604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584935, -0.156268, -0.795884,
		0.637172, -0.518629, 0.570120,
		-0.501860, -0.840598, -0.203794,
		34.807362, 37.143272, 39.908466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528824, 37.031025, 40.159000>,  <35.158665, 37.731689, 40.051121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528824, 37.031025, 40.159000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276611, 37.098461, 39.855949>,  <35.125282, 37.138924, 39.674118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276611, 37.098461, 39.855949>,  <35.528824, 37.031025, 40.159000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276611, 37.098461, 39.855949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741199, -0.158886, -0.652211,
		-0.230337, -0.972795, -0.024780,
		-0.630531, 0.168596, -0.757632,
		35.087452, 37.149040, 39.628658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395889, 36.493885, 39.563663>,  <35.528824, 37.031025, 40.159000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395889, 36.493885, 39.563663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402096, 36.853848, 39.389343>,  <35.405819, 37.069824, 39.284752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402096, 36.853848, 39.389343>,  <35.395889, 36.493885, 39.563663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402096, 36.853848, 39.389343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637770, -0.344585, -0.688847,
		-0.770070, -0.267250, -0.579284,
		0.015519, 0.899910, -0.435799,
		35.406750, 37.123821, 39.258602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209545, 36.529671, 38.890327>,  <35.395889, 36.493885, 39.563663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209545, 36.529671, 38.890327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474453, 36.827263, 38.925865>,  <35.633400, 37.005817, 38.947189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474453, 36.827263, 38.925865>,  <35.209545, 36.529671, 38.890327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474453, 36.827263, 38.925865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502393, -0.352955, -0.789319,
		-0.555876, 0.567381, -0.607521,
		0.662272, 0.743977, 0.088849,
		35.673134, 37.050457, 38.952518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098804, 36.873035, 38.283665>,  <35.209545, 36.529671, 38.890327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098804, 36.873035, 38.283665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473351, 36.931683, 38.411240>,  <35.698078, 36.966873, 38.487785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473351, 36.931683, 38.411240>,  <35.098804, 36.873035, 38.283665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473351, 36.931683, 38.411240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349137, -0.294943, -0.889445,
		-0.036345, 0.944198, -0.327366,
		0.936367, 0.146623, 0.318935,
		35.754261, 36.975670, 38.506920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400238, 37.220066, 37.722691>,  <35.098804, 36.873035, 38.283665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400238, 37.220066, 37.722691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724964, 37.100281, 37.923199>,  <35.919800, 37.028412, 38.043503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724964, 37.100281, 37.923199>,  <35.400238, 37.220066, 37.722691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724964, 37.100281, 37.923199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452406, -0.220174, -0.864206,
		0.369164, 0.928357, -0.043263,
		0.811817, -0.299462, 0.501275,
		35.968510, 37.010441, 38.073582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955906, 37.488834, 37.405788>,  <35.400238, 37.220066, 37.722691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955906, 37.488834, 37.405788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131882, 37.197369, 37.615738>,  <36.237469, 37.022488, 37.741707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131882, 37.197369, 37.615738>,  <35.955906, 37.488834, 37.405788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131882, 37.197369, 37.615738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615827, -0.180608, -0.766902,
		0.653614, 0.660624, 0.369277,
		0.439939, -0.728668, 0.524878,
		36.263863, 36.978767, 37.773201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648438, 37.549545, 37.359646>,  <35.955906, 37.488834, 37.405788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648438, 37.549545, 37.359646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613594, 37.160881, 37.447540>,  <36.592686, 36.927681, 37.500278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613594, 37.160881, 37.447540>,  <36.648438, 37.549545, 37.359646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613594, 37.160881, 37.447540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545453, -0.231097, -0.805652,
		0.833602, 0.049677, 0.550127,
		-0.087110, -0.971662, 0.219739,
		36.587460, 36.869381, 37.513462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279930, 37.275490, 37.239990>,  <36.648438, 37.549545, 37.359646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279930, 37.275490, 37.239990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042919, 36.953453, 37.250889>,  <36.900711, 36.760231, 37.257427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042919, 36.953453, 37.250889>,  <37.279930, 37.275490, 37.239990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042919, 36.953453, 37.250889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491052, -0.387806, -0.780048,
		0.638575, -0.448819, 0.625126,
		-0.592528, -0.805089, 0.027250,
		36.865162, 36.711926, 37.259064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727142, 36.589542, 37.290230>,  <37.279930, 37.275490, 37.239990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727142, 36.589542, 37.290230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484753, 36.271725, 37.274765>,  <37.339317, 36.081036, 37.265484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484753, 36.271725, 37.274765>,  <37.727142, 36.589542, 37.290230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484753, 36.271725, 37.274765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280467, -0.167916, -0.945062,
		0.744399, -0.583529, 0.324596,
		-0.605977, -0.794542, -0.038664,
		37.302959, 36.033363, 37.263165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114056, 36.051250, 36.956474>,  <37.727142, 36.589542, 37.290230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114056, 36.051250, 36.956474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717140, 36.037949, 36.908718>,  <37.478989, 36.029968, 36.880066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717140, 36.037949, 36.908718>,  <38.114056, 36.051250, 36.956474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717140, 36.037949, 36.908718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117502, 0.053796, -0.991614,
		0.039388, -0.997998, -0.049475,
		-0.992291, -0.033245, -0.119386,
		37.419453, 36.027973, 36.872902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942112, 35.532700, 36.515636>,  <38.114056, 36.051250, 36.956474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942112, 35.532700, 36.515636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688637, 35.841419, 36.494629>,  <37.536552, 36.026653, 36.482025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688637, 35.841419, 36.494629>,  <37.942112, 35.532700, 36.515636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688637, 35.841419, 36.494629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126180, 0.036142, -0.991349,
		-0.763227, -0.634835, -0.120289,
		-0.633690, 0.771802, -0.052519,
		37.498531, 36.072960, 36.478874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539566, 35.377972, 35.990280>,  <37.942112, 35.532700, 36.515636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539566, 35.377972, 35.990280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463478, 35.770664, 35.988136>,  <37.417824, 36.006279, 35.986851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463478, 35.770664, 35.988136>,  <37.539566, 35.377972, 35.990280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463478, 35.770664, 35.988136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305544, 0.054010, -0.950645,
		-0.932984, -0.182470, -0.310234,
		-0.190220, 0.981727, -0.005362,
		37.406410, 36.065182, 35.986526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035358, 35.593742, 35.431305>,  <37.539566, 35.377972, 35.990280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035358, 35.593742, 35.431305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265118, 35.912781, 35.504963>,  <37.402973, 36.104202, 35.549160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265118, 35.912781, 35.504963>,  <37.035358, 35.593742, 35.431305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265118, 35.912781, 35.504963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254577, 0.039744, -0.966235,
		-0.777979, 0.601888, -0.180220,
		0.574403, 0.797591, 0.184147,
		37.437439, 36.152058, 35.560207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927521, 36.087460, 34.912609>,  <37.035358, 35.593742, 35.431305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927521, 36.087460, 34.912609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303059, 36.123356, 35.045586>,  <37.528381, 36.144894, 35.125370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303059, 36.123356, 35.045586>,  <36.927521, 36.087460, 34.912609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303059, 36.123356, 35.045586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327452, 0.065942, -0.942564,
		-0.106506, 0.993780, 0.032525,
		0.938846, 0.089739, 0.332439,
		37.584713, 36.150276, 35.145317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704967, 36.812000, 34.839092>,  <36.927521, 36.087460, 34.912609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704967, 36.812000, 34.839092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067440, 36.796669, 35.007557>,  <37.284924, 36.787472, 35.108635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067440, 36.796669, 35.007557>,  <36.704967, 36.812000, 34.839092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067440, 36.796669, 35.007557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419598, 0.205664, -0.884104,
		-0.052732, 0.977872, 0.202450,
		0.906177, -0.038327, 0.421158,
		37.339294, 36.785172, 35.133904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951344, 37.303516, 34.511688>,  <36.704967, 36.812000, 34.839092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951344, 37.303516, 34.511688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264469, 37.090862, 34.641033>,  <37.452343, 36.963268, 34.718639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264469, 37.090862, 34.641033>,  <36.951344, 37.303516, 34.511688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264469, 37.090862, 34.641033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527386, 0.291035, -0.798225,
		0.330256, 0.795399, 0.508205,
		0.782812, -0.531639, 0.323366,
		37.499313, 36.931370, 34.738045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516594, 37.736038, 34.473938>,  <36.951344, 37.303516, 34.511688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516594, 37.736038, 34.473938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648438, 37.359310, 34.447582>,  <37.727543, 37.133274, 34.431767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648438, 37.359310, 34.447582>,  <37.516594, 37.736038, 34.473938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648438, 37.359310, 34.447582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570176, 0.254201, -0.781205,
		0.752502, 0.219919, 0.620787,
		0.329607, -0.941816, -0.065894,
		37.747318, 37.076767, 34.427814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097366, 37.938549, 34.398216>,  <37.516594, 37.736038, 34.473938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097366, 37.938549, 34.398216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100746, 37.553780, 34.288948>,  <38.102776, 37.322918, 34.223389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100746, 37.553780, 34.288948>,  <38.097366, 37.938549, 34.398216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100746, 37.553780, 34.288948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633901, 0.216429, -0.742515,
		0.773368, -0.166891, 0.611596,
		0.008448, -0.961928, -0.273172,
		38.103279, 37.265202, 34.206997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776077, 37.812946, 34.279301>,  <38.097366, 37.938549, 34.398216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776077, 37.812946, 34.279301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599319, 37.502899, 34.098667>,  <38.493263, 37.316872, 33.990288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599319, 37.502899, 34.098667>,  <38.776077, 37.812946, 34.279301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599319, 37.502899, 34.098667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757632, -0.052926, -0.650532,
		0.480336, -0.629600, 0.610640,
		-0.441894, -0.775115, -0.451583,
		38.466751, 37.270363, 33.963192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240856, 37.358730, 34.102989>,  <38.776077, 37.812946, 34.279301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240856, 37.358730, 34.102989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941711, 37.305069, 33.842926>,  <38.762226, 37.272873, 33.686890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941711, 37.305069, 33.842926>,  <39.240856, 37.358730, 34.102989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941711, 37.305069, 33.842926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644002, 0.091097, -0.759581,
		0.161128, -0.986765, 0.018267,
		-0.747863, -0.134154, -0.650157,
		38.717354, 37.264824, 33.647881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588245, 36.986752, 33.519337>,  <39.240856, 37.358730, 34.102989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588245, 36.986752, 33.519337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241745, 37.145237, 33.397602>,  <39.033844, 37.240330, 33.324562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241745, 37.145237, 33.397602>,  <39.588245, 36.986752, 33.519337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241745, 37.145237, 33.397602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438079, 0.309521, -0.843969,
		-0.240194, -0.864413, -0.441697,
		-0.866253, 0.396214, -0.304336,
		38.981869, 37.264103, 33.306301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380215, 36.578384, 32.927162>,  <39.588245, 36.986752, 33.519337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380215, 36.578384, 32.927162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183636, 36.923767, 32.881683>,  <39.065689, 37.130997, 32.854397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183636, 36.923767, 32.881683>,  <39.380215, 36.578384, 32.927162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183636, 36.923767, 32.881683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380238, 0.095276, -0.919969,
		-0.783519, -0.495346, -0.375141,
		-0.491445, 0.863455, -0.113698,
		39.036201, 37.182804, 32.847572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938152, 36.037811, 32.768738>,  <39.380215, 36.578384, 32.927162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938152, 36.037811, 32.768738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710388, 36.052116, 32.440228>,  <39.573730, 36.060699, 32.243122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710388, 36.052116, 32.440228>,  <39.938152, 36.037811, 32.768738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710388, 36.052116, 32.440228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528970, 0.748803, 0.399356,
		0.629252, 0.661828, -0.407464,
		-0.569414, 0.035759, -0.821272,
		39.539562, 36.062843, 32.193848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887932, 35.302151, 33.127171>,  <39.938152, 36.037811, 32.768738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887932, 35.302151, 33.127171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927406, 34.951118, 32.939503>,  <39.951092, 34.740501, 32.826900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927406, 34.951118, 32.939503>,  <39.887932, 35.302151, 33.127171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927406, 34.951118, 32.939503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987863, 0.143225, -0.060119,
		0.119956, -0.457543, 0.881059,
		0.098683, -0.877577, -0.469170,
		39.957012, 34.687847, 32.798752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234245, 34.908340, 33.538628>,  <39.887932, 35.302151, 33.127171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234245, 34.908340, 33.538628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292488, 34.792797, 33.160133>,  <40.327435, 34.723469, 32.933037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292488, 34.792797, 33.160133>,  <40.234245, 34.908340, 33.538628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292488, 34.792797, 33.160133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962607, 0.262210, 0.068076,
		0.228448, -0.920763, 0.316239,
		0.145603, -0.288862, -0.946234,
		40.336170, 34.706139, 32.876263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847385, 34.522419, 33.422817>,  <40.234245, 34.908340, 33.538628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847385, 34.522419, 33.422817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768478, 34.673977, 33.061150>,  <40.721134, 34.764912, 32.844147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768478, 34.673977, 33.061150>,  <40.847385, 34.522419, 33.422817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768478, 34.673977, 33.061150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980154, 0.057773, -0.189632,
		-0.019613, -0.923636, -0.382769,
		-0.197265, 0.378892, -0.904172,
		40.709297, 34.787643, 32.789898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357819, 34.191120, 33.010063>,  <40.847385, 34.522419, 33.422817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357819, 34.191120, 33.010063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226185, 34.518528, 32.821712>,  <41.147205, 34.714973, 32.708702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226185, 34.518528, 32.821712>,  <41.357819, 34.191120, 33.010063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226185, 34.518528, 32.821712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940599, 0.240028, -0.240125,
		-0.083524, -0.521927, -0.848891,
		-0.329086, 0.818523, -0.470875,
		41.127460, 34.764084, 32.680450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122112, 34.310425, 32.961193>,  <41.357819, 34.191120, 33.010063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122112, 34.310425, 32.961193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373600, 34.064526, 33.151688>,  <42.524490, 33.916988, 33.265984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373600, 34.064526, 33.151688>,  <42.122112, 34.310425, 32.961193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373600, 34.064526, 33.151688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741990, 0.657528, -0.130796,
		-0.232735, 0.435599, 0.869533,
		0.628717, -0.614744, 0.476240,
		42.562214, 33.880104, 33.294559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381336, 34.538300, 33.741016>,  <42.122112, 34.310425, 32.961193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381336, 34.538300, 33.741016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635014, 34.346428, 33.498459>,  <42.787220, 34.231304, 33.352924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635014, 34.346428, 33.498459>,  <42.381336, 34.538300, 33.741016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635014, 34.346428, 33.498459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685107, 0.712157, 0.153170,
		0.358374, -0.512582, 0.780274,
		0.634190, -0.479679, -0.606392,
		42.825272, 34.202526, 33.316540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122227, 34.736130, 33.936901>,  <42.381336, 34.538300, 33.741016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122227, 34.736130, 33.936901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200218, 34.547924, 33.592667>,  <43.247013, 34.435001, 33.386127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200218, 34.547924, 33.592667>,  <43.122227, 34.736130, 33.936901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200218, 34.547924, 33.592667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863666, 0.498193, -0.076707,
		0.464828, -0.728301, 0.503501,
		0.194974, -0.470512, -0.860583,
		43.258709, 34.406769, 33.334492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696514, 34.449768, 33.931252>,  <43.122227, 34.736130, 33.936901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696514, 34.449768, 33.931252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633419, 34.575954, 33.556957>,  <43.595562, 34.651665, 33.332382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633419, 34.575954, 33.556957>,  <43.696514, 34.449768, 33.931252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633419, 34.575954, 33.556957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733466, 0.671896, 0.102873,
		0.661170, -0.670103, -0.337366,
		-0.157739, 0.315464, -0.935736,
		43.586098, 34.670593, 33.276237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293095, 34.446758, 33.531624>,  <43.696514, 34.449768, 33.931252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293095, 34.446758, 33.531624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045700, 34.715496, 33.368599>,  <43.897263, 34.876740, 33.270786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045700, 34.715496, 33.368599>,  <44.293095, 34.446758, 33.531624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.045700, 34.715496, 33.368599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649076, 0.729131, 0.216951,
		0.442921, -0.130357, -0.887033,
		-0.618482, 0.671844, -0.407559,
		43.860157, 34.917049, 33.246330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351345, 34.476540, 34.347637>,  <44.293095, 34.446758, 33.531624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351345, 34.476540, 34.347637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651131, 34.720680, 34.245052>,  <44.831001, 34.867165, 34.183502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651131, 34.720680, 34.245052>,  <44.351345, 34.476540, 34.347637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651131, 34.720680, 34.245052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661935, 0.683778, -0.307067,
		-0.012059, 0.399894, 0.916482,
		0.749465, 0.610354, -0.256458,
		44.875969, 34.903786, 34.168114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204006, 35.216145, 34.677795>,  <44.351345, 34.476540, 34.347637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204006, 35.216145, 34.677795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437260, 35.256203, 34.355324>,  <44.577209, 35.280239, 34.161839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437260, 35.256203, 34.355324>,  <44.204006, 35.216145, 34.677795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437260, 35.256203, 34.355324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653312, 0.647639, -0.392105,
		0.482846, 0.755337, 0.443087,
		0.583132, 0.100148, -0.806181,
		44.612198, 35.286247, 34.113468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257187, 36.025356, 34.598625>,  <44.204006, 35.216145, 34.677795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257187, 36.025356, 34.598625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372540, 35.837421, 34.264896>,  <44.441750, 35.724659, 34.064659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372540, 35.837421, 34.264896>,  <44.257187, 36.025356, 34.598625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372540, 35.837421, 34.264896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400365, 0.732347, -0.550796,
		0.869796, 0.492872, 0.023088,
		0.288380, -0.469836, -0.834321,
		44.459053, 35.696472, 34.014599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289589, 35.729572, 35.292366>,  <44.257187, 36.025356, 34.598625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289589, 35.729572, 35.292366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466908, 35.674961, 34.938000>,  <44.573299, 35.642193, 34.725380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466908, 35.674961, 34.938000>,  <44.289589, 35.729572, 35.292366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466908, 35.674961, 34.938000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739543, 0.614190, 0.275402,
		0.506521, -0.777258, 0.373237,
		0.443297, -0.136528, -0.885916,
		44.599895, 35.634003, 34.672226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033695, 35.477921, 35.403282>,  <44.289589, 35.729572, 35.292366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033695, 35.477921, 35.403282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971813, 35.706173, 35.080681>,  <44.934685, 35.843124, 34.887119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971813, 35.706173, 35.080681>,  <45.033695, 35.477921, 35.403282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971813, 35.706173, 35.080681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822921, 0.526143, 0.214418,
		0.546689, -0.630516, -0.550981,
		-0.154701, 0.570634, -0.806501,
		44.925404, 35.877361, 34.838730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.606934, 35.442818, 34.926407>,  <45.033695, 35.477921, 35.403282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.606934, 35.442818, 34.926407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417831, 35.791992, 34.974552>,  <45.304371, 36.001495, 35.003441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417831, 35.791992, 34.974552>,  <45.606934, 35.442818, 34.926407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417831, 35.791992, 34.974552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841770, 0.406970, 0.354680,
		0.260628, 0.268995, -0.927208,
		-0.472753, 0.872936, 0.120364,
		45.276005, 36.053871, 35.010662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.254772, 35.356899, 35.429905>,  <45.606934, 35.442818, 34.926407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.254772, 35.356899, 35.429905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.293213, 35.445557, 35.041752>,  <46.316277, 35.498753, 34.808861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.293213, 35.445557, 35.041752>,  <46.254772, 35.356899, 35.429905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.293213, 35.445557, 35.041752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937766, -0.306677, -0.162923,
		-0.333705, 0.925647, 0.178378,
		0.096105, 0.221645, -0.970380,
		46.322044, 35.512051, 34.750637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397537, 36.056541, 35.234257>,  <46.254772, 35.356899, 35.429905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397537, 36.056541, 35.234257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595306, 35.979340, 35.573265>,  <46.713966, 35.933018, 35.776672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595306, 35.979340, 35.573265>,  <46.397537, 36.056541, 35.234257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.595306, 35.979340, 35.573265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248914, -0.902765, -0.350795,
		0.832818, 0.384402, -0.398307,
		0.494424, -0.193005, 0.847522,
		46.743633, 35.921440, 35.827522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.145496, 35.861744, 35.074425>,  <46.397537, 36.056541, 35.234257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.145496, 35.861744, 35.074425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959728, 35.630154, 35.342484>,  <46.848267, 35.491199, 35.503319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959728, 35.630154, 35.342484>,  <47.145496, 35.861744, 35.074425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.959728, 35.630154, 35.342484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176218, -0.801989, -0.570755,
		0.867907, -0.146977, 0.474485,
		-0.464419, -0.578975, 0.670152,
		46.820404, 35.456463, 35.543530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.575451, 35.361084, 35.267941>,  <47.145496, 35.861744, 35.074425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.575451, 35.361084, 35.267941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.188576, 35.261974, 35.290375>,  <46.956451, 35.202507, 35.303833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.188576, 35.261974, 35.290375>,  <47.575451, 35.361084, 35.267941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.188576, 35.261974, 35.290375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163473, -0.775999, -0.609181,
		0.194461, -0.580027, 0.791046,
		-0.967192, -0.247777, 0.056083,
		46.898418, 35.187641, 35.307201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.641853, 34.787991, 34.954147>,  <47.575451, 35.361084, 35.267941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.641853, 34.787991, 34.954147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.952568, 35.039894, 34.955032>,  <48.138996, 35.191036, 34.955563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.952568, 35.039894, 34.955032>,  <47.641853, 34.787991, 34.954147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.952568, 35.039894, 34.955032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257719, 0.314681, 0.913541,
		0.574619, -0.710193, 0.406742,
		0.776784, 0.629763, 0.002209,
		48.185604, 35.228825, 34.955696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.580666, 35.359592, 23.737366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187340, 35.411457, 23.686329>,  <35.951344, 35.442577, 23.655706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187340, 35.411457, 23.686329>,  <36.580666, 35.359592, 23.737366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187340, 35.411457, 23.686329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098763, 0.208494, 0.973024,
		0.152767, 0.969390, -0.192210,
		-0.983315, 0.129663, -0.127591,
		35.892345, 35.450356, 23.648052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403904, 35.861496, 24.109665>,  <36.580666, 35.359592, 23.737366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403904, 35.861496, 24.109665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048550, 35.685028, 24.058842>,  <35.835339, 35.579147, 24.028347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048550, 35.685028, 24.058842>,  <36.403904, 35.861496, 24.109665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048550, 35.685028, 24.058842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265595, 0.268120, 0.926051,
		-0.374479, 0.856435, -0.355366,
		-0.888383, -0.441170, -0.127060,
		35.782036, 35.552677, 24.020723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035484, 36.158852, 24.598001>,  <36.403904, 35.861496, 24.109665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035484, 36.158852, 24.598001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.780174, 35.860790, 24.520689>,  <35.626987, 35.681953, 24.474302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.780174, 35.860790, 24.520689>,  <36.035484, 36.158852, 24.598001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780174, 35.860790, 24.520689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351575, 0.058804, 0.934311,
		-0.684839, 0.664296, -0.299510,
		-0.638271, -0.745153, -0.193279,
		35.588692, 35.637245, 24.462706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261520, 36.313457, 24.926218>,  <36.035484, 36.158852, 24.598001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261520, 36.313457, 24.926218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314583, 35.919880, 24.878447>,  <35.346420, 35.683735, 24.849783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314583, 35.919880, 24.878447>,  <35.261520, 36.313457, 24.926218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314583, 35.919880, 24.878447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418086, -0.164800, 0.893334,
		-0.898669, -0.068577, -0.433234,
		0.132659, -0.983940, -0.119429,
		35.354382, 35.624699, 24.842617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744282, 36.017906, 25.204174>,  <35.261520, 36.313457, 24.926218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744282, 36.017906, 25.204174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.974121, 35.691048, 25.185850>,  <35.112026, 35.494930, 25.174856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.974121, 35.691048, 25.185850>,  <34.744282, 36.017906, 25.204174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974121, 35.691048, 25.185850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294421, -0.258610, 0.920020,
		-0.763642, -0.515157, -0.389184,
		0.574602, -0.817150, -0.045812,
		35.146503, 35.445904, 25.172106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247433, 35.456547, 25.467827>,  <34.744282, 36.017906, 25.204174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247433, 35.456547, 25.467827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.623116, 35.319443, 25.459835>,  <34.848526, 35.237179, 25.455040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.623116, 35.319443, 25.459835>,  <34.247433, 35.456547, 25.467827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623116, 35.319443, 25.459835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110982, -0.358136, 0.927050,
		-0.324909, -0.868478, -0.374406,
		0.939211, -0.342759, -0.019976,
		34.904877, 35.216614, 25.453842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193993, 34.820671, 25.667849>,  <34.247433, 35.456547, 25.467827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193993, 34.820671, 25.667849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.574474, 34.922115, 25.738161>,  <34.802761, 34.982983, 25.780348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.574474, 34.922115, 25.738161>,  <34.193993, 34.820671, 25.667849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574474, 34.922115, 25.738161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096505, -0.296583, 0.950119,
		0.293097, -0.920716, -0.257635,
		0.951199, 0.253614, 0.175781,
		34.859833, 34.998199, 25.790895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469650, 34.307819, 26.164021>,  <34.193993, 34.820671, 25.667849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469650, 34.307819, 26.164021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732620, 34.606136, 26.207087>,  <34.890404, 34.785126, 26.232925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732620, 34.606136, 26.207087>,  <34.469650, 34.307819, 26.164021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732620, 34.606136, 26.207087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052183, -0.187599, 0.980859,
		0.751710, -0.639224, -0.162250,
		0.657426, 0.745788, 0.107664,
		34.929848, 34.829872, 26.239386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032101, 34.093330, 26.485985>,  <34.469650, 34.307819, 26.164021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032101, 34.093330, 26.485985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.046890, 34.485859, 26.561504>,  <35.055763, 34.721375, 26.606815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.046890, 34.485859, 26.561504>,  <35.032101, 34.093330, 26.485985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046890, 34.485859, 26.561504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299072, -0.191136, 0.934892,
		0.953514, 0.021895, -0.300553,
		0.036976, 0.981319, 0.188799,
		35.057983, 34.780254, 26.618145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626583, 34.113194, 26.935295>,  <35.032101, 34.093330, 26.485985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626583, 34.113194, 26.935295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.452656, 34.473122, 26.949522>,  <35.348301, 34.689079, 26.958059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.452656, 34.473122, 26.949522>,  <35.626583, 34.113194, 26.935295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452656, 34.473122, 26.949522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219748, 0.067718, 0.973203,
		0.873295, 0.430983, -0.227178,
		-0.434818, 0.899815, 0.035569,
		35.322212, 34.743065, 26.960194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086651, 34.552551, 27.326128>,  <35.626583, 34.113194, 26.935295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086651, 34.552551, 27.326128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730347, 34.733391, 27.344711>,  <35.516563, 34.841896, 27.355862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730347, 34.733391, 27.344711>,  <36.086651, 34.552551, 27.326128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730347, 34.733391, 27.344711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159323, 0.214891, 0.963555,
		0.425641, 0.865694, -0.263446,
		-0.890756, 0.452101, 0.046458,
		35.463120, 34.869022, 27.358648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198250, 35.100368, 27.792820>,  <36.086651, 34.552551, 27.326128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198250, 35.100368, 27.792820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.799198, 35.073078, 27.789061>,  <35.559769, 35.056702, 27.786804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.799198, 35.073078, 27.789061>,  <36.198250, 35.100368, 27.792820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799198, 35.073078, 27.789061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027063, 0.262862, 0.964454,
		-0.063334, 0.962418, -0.264085,
		-0.997625, -0.068230, -0.009398,
		35.499912, 35.052608, 27.786242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972740, 35.719311, 28.082489>,  <36.198250, 35.100368, 27.792820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972740, 35.719311, 28.082489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686600, 35.441315, 28.111513>,  <35.514915, 35.274517, 28.128927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686600, 35.441315, 28.111513>,  <35.972740, 35.719311, 28.082489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686600, 35.441315, 28.111513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040889, 0.145293, 0.988543,
		-0.697569, 0.704188, -0.132353,
		-0.715350, -0.694989, 0.072558,
		35.471996, 35.232819, 28.133280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459187, 35.996048, 28.480726>,  <35.972740, 35.719311, 28.082489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459187, 35.996048, 28.480726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413727, 35.600281, 28.516796>,  <35.386452, 35.362820, 28.538437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413727, 35.600281, 28.516796>,  <35.459187, 35.996048, 28.480726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413727, 35.600281, 28.516796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060002, 0.097431, 0.993432,
		-0.991707, 0.107494, -0.070440,
		-0.113651, -0.989420, 0.090174,
		35.379631, 35.303455, 28.543848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907051, 35.906460, 28.972198>,  <35.459187, 35.996048, 28.480726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907051, 35.906460, 28.972198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.109428, 35.561436, 28.970913>,  <35.230854, 35.354424, 28.970140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.109428, 35.561436, 28.970913>,  <34.907051, 35.906460, 28.972198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109428, 35.561436, 28.970913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110265, -0.068374, 0.991548,
		-0.855488, -0.501316, -0.129704,
		0.505947, -0.862558, -0.003216,
		35.261211, 35.302670, 28.969948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625126, 35.469444, 29.473034>,  <34.907051, 35.906460, 28.972198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625126, 35.469444, 29.473034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.986343, 35.311821, 29.404636>,  <35.203072, 35.217247, 29.363598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.986343, 35.311821, 29.404636>,  <34.625126, 35.469444, 29.473034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986343, 35.311821, 29.404636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128337, -0.132384, 0.982855,
		-0.409936, -0.909503, -0.068976,
		0.903040, -0.394055, -0.170992,
		35.257256, 35.193604, 29.353338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750793, 34.993816, 30.056700>,  <34.625126, 35.469444, 29.473034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750793, 34.993816, 30.056700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.118767, 35.011600, 29.900885>,  <35.339550, 35.022270, 29.807396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.118767, 35.011600, 29.900885>,  <34.750793, 34.993816, 30.056700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118767, 35.011600, 29.900885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391635, -0.150707, 0.907695,
		-0.018350, -0.987578, -0.156053,
		0.919938, 0.044459, -0.389535,
		35.394749, 35.024937, 29.784023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055294, 34.463718, 30.385881>,  <34.750793, 34.993816, 30.056700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055294, 34.463718, 30.385881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361271, 34.684052, 30.252346>,  <35.544857, 34.816250, 30.172226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361271, 34.684052, 30.252346>,  <35.055294, 34.463718, 30.385881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361271, 34.684052, 30.252346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482310, -0.146340, 0.863691,
		0.426893, -0.821688, -0.377612,
		0.764944, 0.550829, -0.333837,
		35.590755, 34.849300, 30.152195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686283, 34.021400, 30.455093>,  <35.055294, 34.463718, 30.385881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686283, 34.021400, 30.455093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772049, 34.411961, 30.465427>,  <35.823509, 34.646297, 30.471628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772049, 34.411961, 30.465427>,  <35.686283, 34.021400, 30.455093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772049, 34.411961, 30.465427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406073, -0.113167, 0.906807,
		0.888331, -0.183942, -0.420754,
		0.214415, 0.976401, 0.025836,
		35.836372, 34.704880, 30.473179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202312, 34.000008, 30.874414>,  <35.686283, 34.021400, 30.455093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202312, 34.000008, 30.874414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100468, 34.386677, 30.863668>,  <36.039360, 34.618679, 30.857222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100468, 34.386677, 30.863668>,  <36.202312, 34.000008, 30.874414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100468, 34.386677, 30.863668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167662, 0.071487, 0.983249,
		0.952398, 0.245844, -0.180275,
		-0.254614, 0.966670, -0.026865,
		36.024082, 34.676678, 30.855608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775806, 34.289879, 31.178963>,  <36.202312, 34.000008, 30.874414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775806, 34.289879, 31.178963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.470829, 34.545685, 31.218367>,  <36.287842, 34.699169, 31.242010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.470829, 34.545685, 31.218367>,  <36.775806, 34.289879, 31.178963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470829, 34.545685, 31.218367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184006, 0.068331, 0.980547,
		0.620342, 0.765737, -0.169773,
		-0.762442, 0.639514, 0.098511,
		36.242096, 34.737537, 31.247919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967155, 34.871845, 31.648067>,  <36.775806, 34.289879, 31.178963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967155, 34.871845, 31.648067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567699, 34.890610, 31.657146>,  <36.328026, 34.901867, 31.662594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567699, 34.890610, 31.657146>,  <36.967155, 34.871845, 31.648067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567699, 34.890610, 31.657146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030429, 0.171360, 0.984739,
		0.042303, 0.984091, -0.172554,
		-0.998641, 0.046908, 0.022696,
		36.268108, 34.904682, 31.663956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831032, 35.679550, 31.474222>,  <36.967155, 34.871845, 31.648067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831032, 35.679550, 31.474222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117001, 35.511032, 31.697435>,  <37.288582, 35.409920, 31.831364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117001, 35.511032, 31.697435>,  <36.831032, 35.679550, 31.474222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117001, 35.511032, 31.697435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698830, 0.404309, -0.590060,
		0.022970, 0.811816, 0.583462,
		0.714919, -0.421295, 0.558034,
		37.331478, 35.384644, 31.864845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328583, 36.185989, 31.564959>,  <36.831032, 35.679550, 31.474222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328583, 36.185989, 31.564959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504333, 35.829876, 31.612862>,  <37.609783, 35.616207, 31.641603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504333, 35.829876, 31.612862>,  <37.328583, 36.185989, 31.564959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504333, 35.829876, 31.612862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613356, 0.199925, -0.764084,
		0.656310, 0.409175, 0.633904,
		0.439377, -0.890284, 0.119757,
		37.636147, 35.562790, 31.648788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110870, 36.296890, 31.614874>,  <37.328583, 36.185989, 31.564959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110870, 36.296890, 31.614874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.050056, 35.915668, 31.510134>,  <38.013569, 35.686935, 31.447289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.050056, 35.915668, 31.510134>,  <38.110870, 36.296890, 31.614874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050056, 35.915668, 31.510134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572548, 0.131027, -0.809333,
		0.805651, -0.272971, 0.525750,
		-0.152037, -0.953057, -0.261851,
		38.004444, 35.629753, 31.431578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850441, 35.938461, 31.415243>,  <38.110870, 36.296890, 31.614874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850441, 35.938461, 31.415243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547367, 35.724545, 31.265625>,  <38.365524, 35.596195, 31.175854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547367, 35.724545, 31.265625>,  <38.850441, 35.938461, 31.415243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547367, 35.724545, 31.265625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489178, -0.086006, -0.867933,
		0.431993, -0.840596, 0.326774,
		-0.757685, -0.534791, -0.374047,
		38.320061, 35.564106, 31.153410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225494, 35.380306, 31.034285>,  <38.850441, 35.938461, 31.415243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225494, 35.380306, 31.034285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848919, 35.382668, 30.899429>,  <38.622974, 35.384087, 30.818516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848919, 35.382668, 30.899429>,  <39.225494, 35.380306, 31.034285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848919, 35.382668, 30.899429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337174, 0.007569, -0.941412,
		-0.003015, -0.999954, -0.009120,
		-0.941437, 0.005914, -0.337136,
		38.566486, 35.384438, 30.798288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229847, 34.934345, 30.485067>,  <39.225494, 35.380306, 31.034285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229847, 34.934345, 30.485067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.905956, 35.161770, 30.426994>,  <38.711620, 35.298225, 30.392151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.905956, 35.161770, 30.426994>,  <39.229847, 34.934345, 30.485067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905956, 35.161770, 30.426994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272146, 0.144656, -0.951321,
		-0.519885, -0.809821, -0.271864,
		-0.809726, 0.568564, -0.145185,
		38.663040, 35.332340, 30.383438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797890, 34.686142, 29.925220>,  <39.229847, 34.934345, 30.485067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797890, 34.686142, 29.925220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.702564, 35.074577, 29.919725>,  <38.645370, 35.307640, 29.916428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.702564, 35.074577, 29.919725>,  <38.797890, 34.686142, 29.925220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702564, 35.074577, 29.919725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292270, 0.058220, -0.954562,
		-0.926168, -0.231499, -0.297695,
		-0.238312, 0.971092, -0.013739,
		38.631069, 35.365906, 29.915604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298496, 34.728039, 29.391308>,  <38.797890, 34.686142, 29.925220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298496, 34.728039, 29.391308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435059, 35.098347, 29.456282>,  <38.516998, 35.320534, 29.495266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435059, 35.098347, 29.456282>,  <38.298496, 34.728039, 29.391308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435059, 35.098347, 29.456282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141564, 0.120199, -0.982605,
		-0.929193, 0.358465, -0.090019,
		0.341409, 0.925773, 0.162433,
		38.537479, 35.376080, 29.505013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762394, 35.199837, 29.056751>,  <38.298496, 34.728039, 29.391308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762394, 35.199837, 29.056751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.116436, 35.384911, 29.076778>,  <38.328861, 35.495953, 29.088795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.116436, 35.384911, 29.076778>,  <37.762394, 35.199837, 29.056751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116436, 35.384911, 29.076778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062499, 0.224786, -0.972402,
		-0.461167, 0.857553, 0.227878,
		0.885110, 0.462682, 0.050068,
		38.381969, 35.523716, 29.091799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706837, 35.651283, 28.575596>,  <37.762394, 35.199837, 29.056751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706837, 35.651283, 28.575596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100235, 35.636566, 28.646456>,  <38.336273, 35.627735, 28.688972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100235, 35.636566, 28.646456>,  <37.706837, 35.651283, 28.575596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100235, 35.636566, 28.646456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180881, 0.176598, -0.967520,
		0.004313, 0.983595, 0.180339,
		0.983496, -0.036793, 0.177152,
		38.395283, 35.625526, 28.699602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920803, 36.250256, 28.256943>,  <37.706837, 35.651283, 28.575596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920803, 36.250256, 28.256943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.247879, 36.023754, 28.298397>,  <38.444122, 35.887852, 28.323269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.247879, 36.023754, 28.298397>,  <37.920803, 36.250256, 28.256943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247879, 36.023754, 28.298397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241828, 0.174515, -0.954497,
		0.522404, 0.805542, 0.279635,
		0.817687, -0.566257, 0.103636,
		38.493187, 35.853878, 28.329487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412762, 36.625046, 27.928926>,  <37.920803, 36.250256, 28.256943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412762, 36.625046, 27.928926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.555183, 36.251694, 27.910900>,  <38.640636, 36.027683, 27.900085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.555183, 36.251694, 27.910900>,  <38.412762, 36.625046, 27.928926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555183, 36.251694, 27.910900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253758, 0.142988, -0.956641,
		0.899351, 0.329180, 0.287764,
		0.356053, -0.933378, -0.045064,
		38.661999, 35.971680, 27.897381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886532, 36.710793, 27.402561>,  <38.412762, 36.625046, 27.928926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886532, 36.710793, 27.402561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.861679, 36.311966, 27.420469>,  <38.846767, 36.072670, 27.431215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.861679, 36.311966, 27.420469>,  <38.886532, 36.710793, 27.402561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861679, 36.311966, 27.420469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196028, -0.056175, -0.978988,
		0.978628, -0.052045, 0.198943,
		-0.062127, -0.997064, 0.044773,
		38.843040, 36.012848, 27.433901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437481, 36.361225, 27.032516>,  <38.886532, 36.710793, 27.402561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437481, 36.361225, 27.032516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.151981, 36.082153, 27.057158>,  <38.980682, 35.914711, 27.071941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.151981, 36.082153, 27.057158>,  <39.437481, 36.361225, 27.032516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151981, 36.082153, 27.057158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129239, -0.217633, -0.967436,
		0.688370, -0.682550, 0.245504,
		-0.713753, -0.697683, 0.061600,
		38.937855, 35.872849, 27.075638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662231, 35.743771, 26.565088>,  <39.437481, 36.361225, 27.032516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662231, 35.743771, 26.565088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.266758, 35.734352, 26.624344>,  <39.029472, 35.728699, 26.659897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.266758, 35.734352, 26.624344>,  <39.662231, 35.743771, 26.565088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266758, 35.734352, 26.624344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139712, -0.214861, -0.966600,
		0.054594, -0.976361, 0.209140,
		-0.988686, -0.023551, 0.148139,
		38.970154, 35.727287, 26.668785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499325, 35.218822, 26.162876>,  <39.662231, 35.743771, 26.565088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499325, 35.218822, 26.162876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.145073, 35.392265, 26.229389>,  <38.932522, 35.496330, 26.269297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.145073, 35.392265, 26.229389>,  <39.499325, 35.218822, 26.162876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145073, 35.392265, 26.229389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301668, -0.264922, -0.915867,
		-0.353076, -0.861278, 0.365428,
		-0.885626, 0.433608, 0.166283,
		38.879383, 35.522346, 26.279274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924210, 34.685524, 25.941017>,  <39.499325, 35.218822, 26.162876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924210, 34.685524, 25.941017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.768974, 35.053951, 25.953800>,  <38.675835, 35.275009, 25.961470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.768974, 35.053951, 25.953800>,  <38.924210, 34.685524, 25.941017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768974, 35.053951, 25.953800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320588, -0.102404, -0.941667,
		-0.864068, -0.375692, 0.335025,
		-0.388085, 0.921070, 0.031958,
		38.652550, 35.330273, 25.963388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253185, 34.474064, 25.820818>,  <38.924210, 34.685524, 25.941017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253185, 34.474064, 25.820818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.325577, 34.858940, 25.739393>,  <38.369011, 35.089867, 25.690538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.325577, 34.858940, 25.739393>,  <38.253185, 34.474064, 25.820818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325577, 34.858940, 25.739393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399828, -0.117120, -0.909077,
		-0.898545, 0.245916, 0.363514,
		0.180982, 0.962189, -0.203562,
		38.379871, 35.147598, 25.678326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.611538, 34.693851, 25.496536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.864468, 34.984818, 25.389929>,  <38.016224, 35.159397, 25.325964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.864468, 34.984818, 25.389929>,  <37.611538, 34.693851, 25.496536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864468, 34.984818, 25.389929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330357, -0.057999, -0.942072,
		-0.700739, 0.683739, 0.203633,
		0.632321, 0.727418, -0.266520,
		38.054165, 35.203041, 25.309973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227730, 35.138084, 24.951986>,  <37.611538, 34.693851, 25.496536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227730, 35.138084, 24.951986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.608654, 35.233055, 24.875313>,  <37.837208, 35.290039, 24.829309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.608654, 35.233055, 24.875313>,  <37.227730, 35.138084, 24.951986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608654, 35.233055, 24.875313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215313, 0.077712, -0.973448,
		-0.216226, 0.968292, 0.125126,
		0.952306, 0.237426, -0.191683,
		37.894344, 35.304283, 24.817808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135387, 35.828377, 24.596897>,  <37.227730, 35.138084, 24.951986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135387, 35.828377, 24.596897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483074, 35.648521, 24.514641>,  <37.691685, 35.540607, 24.465286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.483074, 35.648521, 24.514641>,  <37.135387, 35.828377, 24.596897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483074, 35.648521, 24.514641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180587, 0.098471, -0.978617,
		0.460273, 0.887767, 0.004394,
		0.869217, -0.449637, -0.205643,
		37.743839, 35.513630, 24.452948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464451, 36.242146, 24.207911>,  <37.135387, 35.828377, 24.596897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464451, 36.242146, 24.207911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.628490, 35.883678, 24.140144>,  <37.726913, 35.668598, 24.099485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.628490, 35.883678, 24.140144>,  <37.464451, 36.242146, 24.207911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628490, 35.883678, 24.140144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034810, 0.170238, -0.984788,
		0.911376, 0.409758, 0.038619,
		0.410099, -0.896168, -0.169415,
		37.751522, 35.614826, 24.089319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882454, 36.418781, 23.547937>,  <37.464451, 36.242146, 24.207911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882454, 36.418781, 23.547937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883797, 36.023754, 23.610809>,  <37.884602, 35.786739, 23.648533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883797, 36.023754, 23.610809>,  <37.882454, 36.418781, 23.547937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883797, 36.023754, 23.610809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206615, -0.153103, -0.966369,
		0.978416, 0.035723, 0.203531,
		0.003361, -0.987564, 0.157180,
		37.884804, 35.727486, 23.657963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447315, 36.255177, 23.121143>,  <37.882454, 36.418781, 23.547937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447315, 36.255177, 23.121143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255878, 35.905518, 23.154152>,  <38.141018, 35.695721, 23.173956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255878, 35.905518, 23.154152>,  <38.447315, 36.255177, 23.121143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255878, 35.905518, 23.154152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241113, -0.221211, -0.944950,
		0.844284, -0.432347, 0.316638,
		-0.478590, -0.874152, 0.082520,
		38.112301, 35.643272, 23.178907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929844, 35.795361, 22.799017>,  <38.447315, 36.255177, 23.121143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929844, 35.795361, 22.799017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549168, 35.672867, 22.790028>,  <38.320763, 35.599369, 22.784634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549168, 35.672867, 22.790028>,  <38.929844, 35.795361, 22.799017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549168, 35.672867, 22.790028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115204, -0.288261, -0.950597,
		0.284627, -0.907263, 0.309614,
		-0.951691, -0.306234, -0.022474,
		38.263660, 35.580997, 22.783285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984638, 35.151001, 22.558250>,  <38.929844, 35.795361, 22.799017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984638, 35.151001, 22.558250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607899, 35.262375, 22.482992>,  <38.381855, 35.329197, 22.437838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607899, 35.262375, 22.482992>,  <38.984638, 35.151001, 22.558250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607899, 35.262375, 22.482992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115796, -0.256686, -0.959533,
		-0.315463, -0.925519, 0.209517,
		-0.941846, 0.278435, -0.188147,
		38.325344, 35.345905, 22.426548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714279, 34.646046, 22.050982>,  <38.984638, 35.151001, 22.558250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714279, 34.646046, 22.050982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454632, 34.947727, 22.011332>,  <38.298843, 35.128735, 21.987541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454632, 34.947727, 22.011332>,  <38.714279, 34.646046, 22.050982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454632, 34.947727, 22.011332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064143, -0.075574, -0.995075,
		-0.757977, -0.652281, 0.000680,
		-0.649120, 0.754200, -0.099123,
		38.259895, 35.173988, 21.981594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211380, 34.432697, 21.494736>,  <38.714279, 34.646046, 22.050982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211380, 34.432697, 21.494736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187225, 34.831421, 21.515652>,  <38.172733, 35.070656, 21.528200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.187225, 34.831421, 21.515652>,  <38.211380, 34.432697, 21.494736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187225, 34.831421, 21.515652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069859, 0.056476, -0.995957,
		-0.995728, -0.056485, -0.073046,
		-0.060382, 0.996805, 0.052289,
		38.169109, 35.130463, 21.531338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059544, 34.494598, 20.837217>,  <38.211380, 34.432697, 21.494736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059544, 34.494598, 20.837217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137691, 34.863670, 20.970181>,  <38.184582, 35.085114, 21.049959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137691, 34.863670, 20.970181>,  <38.059544, 34.494598, 20.837217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137691, 34.863670, 20.970181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162732, 0.303743, -0.938754,
		-0.967135, 0.237496, -0.090808,
		0.195368, 0.922679, 0.332409,
		38.196301, 35.140472, 21.069902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575363, 34.883327, 20.496553>,  <38.059544, 34.494598, 20.837217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575363, 34.883327, 20.496553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.876713, 35.122597, 20.605812>,  <38.057522, 35.266159, 20.671368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.876713, 35.122597, 20.605812>,  <37.575363, 34.883327, 20.496553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876713, 35.122597, 20.605812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097019, 0.511937, -0.853527,
		-0.650392, 0.616528, 0.443716,
		0.753377, 0.598176, 0.273145,
		38.102726, 35.302048, 20.687756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367123, 35.492985, 20.218828>,  <37.575363, 34.883327, 20.496553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367123, 35.492985, 20.218828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.761887, 35.533218, 20.269262>,  <37.998745, 35.557358, 20.299522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.761887, 35.533218, 20.269262>,  <37.367123, 35.492985, 20.218828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761887, 35.533218, 20.269262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048298, 0.561546, -0.826035,
		-0.153891, 0.821309, 0.549335,
		0.986907, 0.100587, 0.126084,
		38.057961, 35.563393, 20.307087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439674, 36.113216, 20.059359>,  <37.367123, 35.492985, 20.218828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439674, 36.113216, 20.059359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802536, 35.948540, 20.024548>,  <38.020252, 35.849731, 20.003660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802536, 35.948540, 20.024548>,  <37.439674, 36.113216, 20.059359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802536, 35.948540, 20.024548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105458, 0.422651, -0.900136,
		0.407364, 0.807387, 0.426827,
		0.907157, -0.411695, -0.087027,
		38.074684, 35.825031, 19.998440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818615, 36.636189, 19.748243>,  <37.439674, 36.113216, 20.059359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818615, 36.636189, 19.748243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.045990, 36.309959, 19.704939>,  <38.182415, 36.114223, 19.678957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.045990, 36.309959, 19.704939>,  <37.818615, 36.636189, 19.748243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045990, 36.309959, 19.704939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431742, 0.407717, -0.804591,
		0.700342, 0.410618, 0.583878,
		0.568437, -0.815573, -0.108260,
		38.216522, 36.065289, 19.672461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443455, 36.839069, 19.918596>,  <37.818615, 36.636189, 19.748243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443455, 36.839069, 19.918596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.462494, 36.519238, 19.679129>,  <38.473919, 36.327339, 19.535448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.462494, 36.519238, 19.679129>,  <38.443455, 36.839069, 19.918596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462494, 36.519238, 19.679129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491547, 0.540505, -0.682815,
		0.869549, -0.261774, 0.418758,
		0.047597, -0.799581, -0.598670,
		38.476772, 36.279362, 19.499527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117188, 36.825161, 19.693531>,  <38.443455, 36.839069, 19.918596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117188, 36.825161, 19.693531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966213, 36.581982, 19.414120>,  <38.875629, 36.436073, 19.246473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966213, 36.581982, 19.414120>,  <39.117188, 36.825161, 19.693531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966213, 36.581982, 19.414120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543435, 0.465360, -0.698655,
		0.749812, -0.643303, 0.154734,
		-0.377440, -0.607948, -0.698526,
		38.852982, 36.399597, 19.204561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625652, 36.769802, 19.231220>,  <39.117188, 36.825161, 19.693531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625652, 36.769802, 19.231220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.303936, 36.639069, 19.032705>,  <39.110905, 36.560631, 18.913597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.303936, 36.639069, 19.032705>,  <39.625652, 36.769802, 19.231220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303936, 36.639069, 19.032705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256345, 0.562633, -0.785959,
		0.536094, -0.759363, -0.368743,
		-0.804295, -0.326822, -0.496283,
		39.062649, 36.541019, 18.883820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904388, 36.677063, 18.578033>,  <39.625652, 36.769802, 19.231220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904388, 36.677063, 18.578033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.512268, 36.702755, 18.503334>,  <39.276997, 36.718170, 18.458513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.512268, 36.702755, 18.503334>,  <39.904388, 36.677063, 18.578033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512268, 36.702755, 18.503334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192209, 0.527510, -0.827520,
		0.045357, -0.847117, -0.529468,
		-0.980305, 0.064235, -0.186749,
		39.218178, 36.722027, 18.447309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981815, 36.912392, 17.910782>,  <39.904388, 36.677063, 18.578033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981815, 36.912392, 17.910782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.589298, 36.922909, 17.987072>,  <39.353790, 36.929218, 18.032846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.589298, 36.922909, 17.987072>,  <39.981815, 36.912392, 17.910782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589298, 36.922909, 17.987072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175251, 0.288198, -0.941397,
		-0.079719, -0.957210, -0.278198,
		-0.981291, 0.026293, 0.190727,
		39.294910, 36.930798, 18.044291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600998, 36.429104, 17.351082>,  <39.981815, 36.912392, 17.910782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600998, 36.429104, 17.351082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.358078, 36.715057, 17.489717>,  <39.212326, 36.886631, 17.572899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.358078, 36.715057, 17.489717>,  <39.600998, 36.429104, 17.351082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358078, 36.715057, 17.489717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325015, 0.174518, -0.929467,
		-0.724947, -0.677114, 0.126363,
		-0.607303, 0.714885, 0.346588,
		39.175888, 36.929523, 17.593695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992165, 36.363251, 17.030056>,  <39.600998, 36.429104, 17.351082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992165, 36.363251, 17.030056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.977070, 36.744583, 17.149881>,  <38.968014, 36.973381, 17.221777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.977070, 36.744583, 17.149881>,  <38.992165, 36.363251, 17.030056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977070, 36.744583, 17.149881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344658, 0.268962, -0.899372,
		-0.937969, -0.137188, 0.318423,
		-0.037739, 0.953330, 0.299561,
		38.965748, 37.030582, 17.239750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356800, 36.360607, 16.752234>,  <38.992165, 36.363251, 17.030056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356800, 36.360607, 16.752234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.426716, 36.754208, 16.738413>,  <38.468666, 36.990368, 16.730122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.426716, 36.754208, 16.738413>,  <38.356800, 36.360607, 16.752234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426716, 36.754208, 16.738413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730495, 0.106071, -0.674630,
		-0.660171, 0.143157, 0.737347,
		0.174790, 0.983999, -0.034551,
		38.479153, 37.049408, 16.728048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762245, 36.773315, 16.934061>,  <38.356800, 36.360607, 16.752234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762245, 36.773315, 16.934061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.012608, 36.976662, 16.697483>,  <38.162823, 37.098671, 16.555536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.012608, 36.976662, 16.697483>,  <37.762245, 36.773315, 16.934061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012608, 36.976662, 16.697483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708949, 0.054827, -0.703125,
		-0.325020, 0.859392, 0.394724,
		0.625902, 0.508369, -0.591445,
		38.200378, 37.129173, 16.520050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468510, 36.967270, 16.365835>,  <37.762245, 36.773315, 16.934061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468510, 36.967270, 16.365835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088699, 37.029587, 16.256924>,  <36.860813, 37.066978, 16.191576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088699, 37.029587, 16.256924>,  <37.468510, 36.967270, 16.365835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088699, 37.029587, 16.256924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297533, -0.172196, 0.939054,
		0.099415, 0.972665, 0.209858,
		-0.949521, 0.155795, -0.272281,
		36.803844, 37.076324, 16.175240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197842, 37.495834, 16.776102>,  <37.468510, 36.967270, 16.365835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197842, 37.495834, 16.776102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.880554, 37.298637, 16.633125>,  <36.690182, 37.180321, 16.547340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.880554, 37.298637, 16.633125>,  <37.197842, 37.495834, 16.776102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880554, 37.298637, 16.633125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373676, -0.069396, 0.924960,
		-0.480801, 0.867262, -0.129173,
		-0.793219, -0.492991, -0.357441,
		36.642590, 37.150742, 16.525892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571178, 37.820644, 17.061365>,  <37.197842, 37.495834, 16.776102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571178, 37.820644, 17.061365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.433605, 37.463814, 16.944130>,  <36.351059, 37.249714, 16.873789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.433605, 37.463814, 16.944130>,  <36.571178, 37.820644, 17.061365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433605, 37.463814, 16.944130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522836, -0.077333, 0.848918,
		-0.779968, 0.445212, -0.439814,
		-0.343936, -0.892080, -0.293089,
		36.330425, 37.196190, 16.856203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756229, 37.757339, 17.160284>,  <36.571178, 37.820644, 17.061365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756229, 37.757339, 17.160284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.905010, 37.386482, 17.178417>,  <35.994278, 37.163967, 17.189297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.905010, 37.386482, 17.178417>,  <35.756229, 37.757339, 17.160284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905010, 37.386482, 17.178417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602565, -0.204012, 0.771553,
		-0.706092, -0.314299, -0.634548,
		0.371954, -0.927144, 0.045334,
		36.016598, 37.108337, 17.192019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210152, 37.255222, 17.382658>,  <35.756229, 37.757339, 17.160284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210152, 37.255222, 17.382658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544506, 37.043179, 17.439625>,  <35.745117, 36.915951, 17.473804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544506, 37.043179, 17.439625>,  <35.210152, 37.255222, 17.382658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544506, 37.043179, 17.439625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272553, -0.175623, 0.945976,
		-0.476460, -0.829542, -0.291283,
		0.835883, -0.530110, 0.142417,
		35.795273, 36.884144, 17.482349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035133, 36.805313, 18.064928>,  <35.210152, 37.255222, 17.382658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035133, 36.805313, 18.064928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.426361, 36.755066, 17.998465>,  <35.661098, 36.724918, 17.958588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.426361, 36.755066, 17.998465>,  <35.035133, 36.805313, 18.064928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426361, 36.755066, 17.998465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141040, -0.187628, 0.972061,
		-0.153282, -0.974174, -0.165796,
		0.978066, -0.125616, -0.166157,
		35.719780, 36.717381, 17.948618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207161, 36.088146, 18.292183>,  <35.035133, 36.805313, 18.064928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207161, 36.088146, 18.292183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.525185, 36.330627, 18.284153>,  <35.716000, 36.476116, 18.279335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.525185, 36.330627, 18.284153>,  <35.207161, 36.088146, 18.292183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525185, 36.330627, 18.284153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126758, -0.133696, 0.982882,
		0.593142, -0.783992, -0.183137,
		0.795057, 0.606203, -0.020076,
		35.763702, 36.512489, 18.278130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711128, 35.788303, 18.602983>,  <35.207161, 36.088146, 18.292183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711128, 35.788303, 18.602983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.838024, 36.166500, 18.632393>,  <35.914162, 36.393417, 18.650040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.838024, 36.166500, 18.632393>,  <35.711128, 35.788303, 18.602983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838024, 36.166500, 18.632393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140411, -0.123504, 0.982360,
		0.937893, -0.301319, -0.171938,
		0.317239, 0.945491, 0.073525,
		35.933197, 36.450146, 18.654451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255219, 35.772820, 19.026209>,  <35.711128, 35.788303, 18.602983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255219, 35.772820, 19.026209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.176086, 36.164673, 19.039974>,  <36.128609, 36.399784, 19.048233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.176086, 36.164673, 19.039974>,  <36.255219, 35.772820, 19.026209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176086, 36.164673, 19.039974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379646, 0.044204, 0.924075,
		0.903732, 0.195875, -0.380658,
		-0.197830, 0.979632, 0.034414,
		36.116737, 36.458561, 19.050299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805729, 36.203934, 19.321793>,  <36.255219, 35.772820, 19.026209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805729, 36.203934, 19.321793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.471802, 36.420395, 19.362240>,  <36.271446, 36.550274, 19.386509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.471802, 36.420395, 19.362240>,  <36.805729, 36.203934, 19.321793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471802, 36.420395, 19.362240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139610, 0.030432, 0.989739,
		0.532526, 0.840371, -0.100956,
		-0.834820, 0.541156, 0.101118,
		36.221355, 36.582741, 19.392576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912521, 36.702450, 19.903799>,  <36.805729, 36.203934, 19.321793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912521, 36.702450, 19.903799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512981, 36.720272, 19.910902>,  <36.273258, 36.730965, 19.915163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512981, 36.720272, 19.910902>,  <36.912521, 36.702450, 19.903799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512981, 36.720272, 19.910902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013676, -0.090290, 0.995822,
		0.045977, 0.994918, 0.089576,
		-0.998849, 0.044560, 0.017757,
		36.213326, 36.733639, 19.916229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693493, 37.107948, 20.513542>,  <36.912521, 36.702450, 19.903799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693493, 37.107948, 20.513542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.366043, 36.900208, 20.415457>,  <36.169575, 36.775562, 20.356606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.366043, 36.900208, 20.415457>,  <36.693493, 37.107948, 20.513542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366043, 36.900208, 20.415457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148709, -0.220721, 0.963934,
		-0.554743, 0.825565, 0.103455,
		-0.818624, -0.519351, -0.245212,
		36.120457, 36.744404, 20.341892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310665, 37.099747, 21.116728>,  <36.693493, 37.107948, 20.513542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310665, 37.099747, 21.116728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.105911, 36.831646, 20.901794>,  <35.983059, 36.670784, 20.772835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.105911, 36.831646, 20.901794>,  <36.310665, 37.099747, 21.116728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105911, 36.831646, 20.901794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250684, -0.481726, 0.839701,
		-0.821662, 0.564534, 0.078567,
		-0.511887, -0.670255, -0.537336,
		35.952347, 36.630569, 20.740593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687077, 36.987827, 21.536867>,  <36.310665, 37.099747, 21.116728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687077, 36.987827, 21.536867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.781281, 36.665493, 21.319551>,  <35.837803, 36.472092, 21.189163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.781281, 36.665493, 21.319551>,  <35.687077, 36.987827, 21.536867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781281, 36.665493, 21.319551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255249, -0.590672, 0.765477,
		-0.937755, -0.041601, -0.344796,
		0.235505, -0.805839, -0.543287,
		35.851933, 36.423740, 21.156565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158100, 36.524925, 21.568842>,  <35.687077, 36.987827, 21.536867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158100, 36.524925, 21.568842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.432491, 36.269966, 21.428467>,  <35.597126, 36.116989, 21.344242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.432491, 36.269966, 21.428467>,  <35.158100, 36.524925, 21.568842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432491, 36.269966, 21.428467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095398, -0.556929, 0.825063,
		-0.721341, -0.532496, -0.442848,
		0.685978, -0.637399, -0.350937,
		35.638287, 36.078747, 21.323185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825233, 35.907280, 21.745384>,  <35.158100, 36.524925, 21.568842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825233, 35.907280, 21.745384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.203247, 35.796814, 21.675364>,  <35.430054, 35.730534, 21.633350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.203247, 35.796814, 21.675364>,  <34.825233, 35.907280, 21.745384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203247, 35.796814, 21.675364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052464, -0.656513, 0.752488,
		-0.322736, -0.701943, -0.634916,
		0.945034, -0.276165, -0.175054,
		35.486755, 35.713963, 21.622847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852642, 35.224678, 21.972565>,  <34.825233, 35.907280, 21.745384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852642, 35.224678, 21.972565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217033, 35.388847, 21.988873>,  <35.435669, 35.487350, 21.998657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217033, 35.388847, 21.988873>,  <34.852642, 35.224678, 21.972565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217033, 35.388847, 21.988873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105277, -0.326964, 0.939155,
		0.398783, -0.851261, -0.341067,
		0.910982, 0.410426, 0.040769,
		35.490330, 35.511974, 22.001102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440926, 34.740086, 22.217705>,  <34.852642, 35.224678, 21.972565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440926, 34.740086, 22.217705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568901, 35.109577, 22.301958>,  <35.645687, 35.331272, 22.352510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568901, 35.109577, 22.301958>,  <35.440926, 34.740086, 22.217705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568901, 35.109577, 22.301958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165651, -0.273436, 0.947519,
		0.932843, -0.268260, -0.240500,
		0.319943, 0.923726, 0.210636,
		35.664883, 35.386696, 22.365149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931965, 34.598961, 22.827959>,  <35.440926, 34.740086, 22.217705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931965, 34.598961, 22.827959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.863834, 34.993111, 22.825769>,  <35.822956, 35.229599, 22.824455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.863834, 34.993111, 22.825769>,  <35.931965, 34.598961, 22.827959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863834, 34.993111, 22.825769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070461, -0.006637, 0.997493,
		0.982865, 0.170286, 0.070561,
		-0.170327, 0.985373, -0.005475,
		35.812737, 35.288723, 22.824127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360947, 34.845230, 23.282520>,  <35.931965, 34.598961, 22.827959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360947, 34.845230, 23.282520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.071930, 35.121113, 23.263620>,  <35.898518, 35.286644, 23.252279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.071930, 35.121113, 23.263620>,  <36.360947, 34.845230, 23.282520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071930, 35.121113, 23.263620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040438, 0.026068, 0.998842,
		0.690141, 0.723618, 0.009055,
		-0.722544, 0.689708, -0.047252,
		35.855167, 35.328026, 23.249445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.170616, 34.767883, 27.993084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.037003, 35.140705, 27.936934>,  <38.956837, 35.364399, 27.903242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.037003, 35.140705, 27.936934>,  <39.170616, 34.767883, 27.993084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037003, 35.140705, 27.936934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013891, 0.153783, 0.988007,
		0.942460, 0.328075, -0.064315,
		-0.334031, 0.932050, -0.140377,
		38.936794, 35.420319, 27.894821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582382, 35.144428, 28.436197>,  <39.170616, 34.767883, 27.993084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582382, 35.144428, 28.436197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.238895, 35.345062, 28.394226>,  <39.032803, 35.465443, 28.369043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.238895, 35.345062, 28.394226>,  <39.582382, 35.144428, 28.436197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238895, 35.345062, 28.394226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014777, 0.180438, 0.983475,
		0.512230, 0.846082, -0.147534,
		-0.858721, 0.501586, -0.104928,
		38.981277, 35.495537, 28.362747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676003, 35.721386, 28.836138>,  <39.582382, 35.144428, 28.436197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676003, 35.721386, 28.836138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.281887, 35.657085, 28.812929>,  <39.045418, 35.618504, 28.799004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.281887, 35.657085, 28.812929>,  <39.676003, 35.721386, 28.836138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281887, 35.657085, 28.812929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107541, 0.319298, 0.941533,
		-0.132829, 0.933920, -0.331888,
		-0.985287, -0.160755, -0.058022,
		38.986301, 35.608860, 28.795523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470455, 36.240849, 29.232079>,  <39.676003, 35.721386, 28.836138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470455, 36.240849, 29.232079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.145126, 36.010872, 29.196409>,  <38.949928, 35.872887, 29.175007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.145126, 36.010872, 29.196409>,  <39.470455, 36.240849, 29.232079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145126, 36.010872, 29.196409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252434, 0.210618, 0.944414,
		-0.524202, 0.790621, -0.316435,
		-0.813320, -0.574942, -0.089174,
		38.901131, 35.838390, 29.169657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839268, 36.618221, 29.644989>,  <39.470455, 36.240849, 29.232079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839268, 36.618221, 29.644989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.748226, 36.230881, 29.604002>,  <38.693600, 35.998478, 29.579411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.748226, 36.230881, 29.604002>,  <38.839268, 36.618221, 29.644989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748226, 36.230881, 29.604002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221972, -0.050861, 0.973726,
		-0.948116, 0.244371, -0.203369,
		-0.227607, -0.968347, -0.102465,
		38.679943, 35.940376, 29.573263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274754, 36.580605, 30.030006>,  <38.839268, 36.618221, 29.644989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274754, 36.580605, 30.030006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.389889, 36.199249, 29.993774>,  <38.458969, 35.970436, 29.972036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.389889, 36.199249, 29.993774>,  <38.274754, 36.580605, 30.030006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389889, 36.199249, 29.993774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320457, -0.185012, 0.929020,
		-0.902473, -0.238377, -0.358773,
		0.287835, -0.953387, -0.090579,
		38.476238, 35.913235, 29.966600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689732, 36.216389, 30.312391>,  <38.274754, 36.580605, 30.030006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689732, 36.216389, 30.312391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.974411, 35.935429, 30.307928>,  <38.145218, 35.766853, 30.305250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.974411, 35.935429, 30.307928>,  <37.689732, 36.216389, 30.312391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974411, 35.935429, 30.307928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233947, -0.251963, 0.939033,
		-0.662386, -0.665697, -0.343645,
		0.711698, -0.702398, -0.011159,
		38.187920, 35.724709, 30.304581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405151, 35.596119, 30.372936>,  <37.689732, 36.216389, 30.312391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405151, 35.596119, 30.372936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.769051, 35.523216, 30.522139>,  <37.987392, 35.479477, 30.611660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.769051, 35.523216, 30.522139>,  <37.405151, 35.596119, 30.372936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769051, 35.523216, 30.522139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411025, -0.269058, 0.871015,
		-0.058384, -0.945723, -0.319686,
		0.909753, -0.182252, 0.373007,
		38.041977, 35.468540, 30.634041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487854, 34.810024, 30.527390>,  <37.405151, 35.596119, 30.372936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487854, 34.810024, 30.527390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.744724, 35.028282, 30.742750>,  <37.898846, 35.159237, 30.871967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.744724, 35.028282, 30.742750>,  <37.487854, 34.810024, 30.527390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744724, 35.028282, 30.742750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397675, -0.363317, 0.842530,
		0.655335, -0.755162, -0.016323,
		0.642177, 0.545648, 0.538403,
		37.937378, 35.191975, 30.904270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821880, 34.380249, 31.059244>,  <37.487854, 34.810024, 30.527390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821880, 34.380249, 31.059244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.878208, 34.757751, 31.178905>,  <37.912006, 34.984253, 31.250702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.878208, 34.757751, 31.178905>,  <37.821880, 34.380249, 31.059244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878208, 34.757751, 31.178905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349075, -0.235428, 0.907040,
		0.926454, -0.232154, 0.296289,
		0.140818, 0.943758, 0.299152,
		37.920452, 35.040878, 31.268652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199478, 34.398026, 31.708128>,  <37.821880, 34.380249, 31.059244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199478, 34.398026, 31.708128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.023090, 34.756927, 31.716837>,  <37.917255, 34.972267, 31.722063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.023090, 34.756927, 31.716837>,  <38.199478, 34.398026, 31.708128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023090, 34.756927, 31.716837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274787, -0.158065, 0.948424,
		0.854420, 0.412247, 0.316257,
		-0.440974, 0.897256, 0.021774,
		37.890797, 35.026104, 31.723370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206902, 34.650379, 32.449677>,  <38.199478, 34.398026, 31.708128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206902, 34.650379, 32.449677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.938999, 34.889282, 32.273174>,  <37.778255, 35.032623, 32.167274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.938999, 34.889282, 32.273174>,  <38.206902, 34.650379, 32.449677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938999, 34.889282, 32.273174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469729, 0.119466, 0.874690,
		0.575132, 0.793100, 0.200537,
		-0.669759, 0.597260, -0.441251,
		37.738071, 35.068459, 32.140800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039581, 35.505512, 32.655453>,  <38.206902, 34.650379, 32.449677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039581, 35.505512, 32.655453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.704983, 35.310982, 32.554447>,  <37.504223, 35.194263, 32.493843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.704983, 35.310982, 32.554447>,  <38.039581, 35.505512, 32.655453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704983, 35.310982, 32.554447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408052, 0.245240, 0.879404,
		-0.365749, 0.838656, -0.403588,
		-0.836493, -0.486326, -0.252519,
		37.454033, 35.165085, 32.478691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652920, 35.909531, 32.524208>,  <38.039581, 35.505512, 32.655453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652920, 35.909531, 32.524208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.269573, 36.018612, 32.490330>,  <38.039566, 36.084061, 32.470001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.269573, 36.018612, 32.490330>,  <38.652920, 35.909531, 32.524208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269573, 36.018612, 32.490330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207321, 0.868452, 0.450344,
		0.196364, 0.414034, -0.888829,
		-0.958363, 0.272704, -0.084695,
		37.982063, 36.100422, 32.464920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012077, 36.521431, 32.168278>,  <38.652920, 35.909531, 32.524208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012077, 36.521431, 32.168278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.042515, 36.899975, 32.293888>,  <39.060776, 37.127102, 32.369255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.042515, 36.899975, 32.293888>,  <39.012077, 36.521431, 32.168278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042515, 36.899975, 32.293888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377163, 0.264224, -0.887656,
		-0.923016, 0.185983, -0.336827,
		0.076091, 0.946359, 0.314029,
		39.065342, 37.183884, 32.388096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834602, 36.857204, 31.495960>,  <39.012077, 36.521431, 32.168278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834602, 36.857204, 31.495960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.981174, 37.140091, 31.737810>,  <39.069118, 37.309822, 31.882919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.981174, 37.140091, 31.737810>,  <38.834602, 36.857204, 31.495960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981174, 37.140091, 31.737810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253810, 0.549204, -0.796213,
		-0.895158, 0.445218, 0.021747,
		0.366432, 0.707217, 0.604625,
		39.091103, 37.352257, 31.919197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589214, 37.547054, 31.230402>,  <38.834602, 36.857204, 31.495960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589214, 37.547054, 31.230402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.913460, 37.631012, 31.449070>,  <39.108009, 37.681385, 31.580271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.913460, 37.631012, 31.449070>,  <38.589214, 37.547054, 31.230402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913460, 37.631012, 31.449070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303695, 0.647500, -0.698937,
		-0.500671, 0.732590, 0.461129,
		0.810616, 0.209895, 0.546668,
		39.156643, 37.693981, 31.613071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660110, 38.269939, 31.282131>,  <38.589214, 37.547054, 31.230402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660110, 38.269939, 31.282131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.030266, 38.133938, 31.349136>,  <39.252357, 38.052338, 31.389339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.030266, 38.133938, 31.349136>,  <38.660110, 38.269939, 31.282131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030266, 38.133938, 31.349136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366023, 0.686867, -0.627886,
		0.098424, 0.642350, 0.760065,
		0.925386, -0.340001, 0.167511,
		39.307880, 38.031937, 31.399389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108845, 38.829983, 31.386503>,  <38.660110, 38.269939, 31.282131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108845, 38.829983, 31.386503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.368904, 38.540230, 31.294785>,  <39.524940, 38.366379, 31.239754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.368904, 38.540230, 31.294785>,  <39.108845, 38.829983, 31.386503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368904, 38.540230, 31.294785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320162, 0.534864, -0.781932,
		0.689061, 0.434958, 0.579660,
		0.650147, -0.724384, -0.229297,
		39.563950, 38.322914, 31.225996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814247, 39.169865, 31.293333>,  <39.108845, 38.829983, 31.386503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814247, 39.169865, 31.293333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.812256, 38.818928, 31.101397>,  <39.811062, 38.608368, 30.986235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.812256, 38.818928, 31.101397>,  <39.814247, 39.169865, 31.293333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812256, 38.818928, 31.101397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303207, 0.455935, -0.836773,
		0.952912, -0.149656, 0.263747,
		-0.004977, -0.877341, -0.479842,
		39.810764, 38.555725, 30.957443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397644, 39.237766, 30.952494>,  <39.814247, 39.169865, 31.293333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397644, 39.237766, 30.952494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.221233, 38.933121, 30.762575>,  <40.115387, 38.750332, 30.648624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.221233, 38.933121, 30.762575>,  <40.397644, 39.237766, 30.952494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221233, 38.933121, 30.762575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366433, 0.330116, -0.869914,
		0.819280, -0.557638, 0.133491,
		-0.441029, -0.761619, -0.474795,
		40.088924, 38.704636, 30.620136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927704, 38.951572, 30.501783>,  <40.397644, 39.237766, 30.952494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927704, 38.951572, 30.501783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.554745, 38.910549, 30.363157>,  <40.330967, 38.885937, 30.279982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.554745, 38.910549, 30.363157>,  <40.927704, 38.951572, 30.501783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554745, 38.910549, 30.363157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265214, 0.457288, -0.848852,
		0.245533, -0.883386, -0.399178,
		-0.932403, -0.102554, -0.346566,
		40.275024, 38.879784, 30.259188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026833, 38.892067, 29.774565>,  <40.927704, 38.951572, 30.501783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026833, 38.892067, 29.774565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.631931, 38.948517, 29.803988>,  <40.394989, 38.982388, 29.821642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.631931, 38.948517, 29.803988>,  <41.026833, 38.892067, 29.774565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631931, 38.948517, 29.803988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012076, 0.394453, -0.918837,
		-0.158686, -0.908015, -0.387722,
		-0.987255, 0.141124, 0.073559,
		40.335754, 38.990852, 29.826056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834770, 38.646862, 29.121426>,  <41.026833, 38.892067, 29.774565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834770, 38.646862, 29.121426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.529942, 38.860561, 29.267752>,  <40.347042, 38.988781, 29.355547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.529942, 38.860561, 29.267752>,  <40.834770, 38.646862, 29.121426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529942, 38.860561, 29.267752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116567, 0.442546, -0.889137,
		-0.636911, -0.720231, -0.274978,
		-0.762074, 0.534248, 0.365817,
		40.301319, 39.020836, 29.377497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225475, 38.592945, 28.732552>,  <40.834770, 38.646862, 29.121426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225475, 38.592945, 28.732552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.144821, 38.939514, 28.915268>,  <40.096428, 39.147457, 29.024897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.144821, 38.939514, 28.915268>,  <40.225475, 38.592945, 28.732552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144821, 38.939514, 28.915268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197758, 0.420751, -0.885359,
		-0.959289, -0.268851, 0.086505,
		-0.201633, 0.866423, 0.456789,
		40.084332, 39.199440, 29.052305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565903, 38.738941, 28.475264>,  <40.225475, 38.592945, 28.732552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565903, 38.738941, 28.475264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.721699, 39.086121, 28.598528>,  <39.815178, 39.294430, 28.672485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.721699, 39.086121, 28.598528>,  <39.565903, 38.738941, 28.475264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721699, 39.086121, 28.598528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413584, 0.463772, -0.783495,
		-0.822948, 0.177716, 0.539605,
		0.389493, 0.867947, 0.308160,
		39.838547, 39.346504, 28.690975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009178, 39.247032, 28.421705>,  <39.565903, 38.738941, 28.475264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009178, 39.247032, 28.421705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.349026, 39.457832, 28.413469>,  <39.552933, 39.584312, 28.408527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.349026, 39.457832, 28.413469>,  <39.009178, 39.247032, 28.421705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349026, 39.457832, 28.413469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339821, 0.517161, -0.785535,
		-0.403330, 0.674399, 0.618474,
		0.849615, 0.527001, -0.020588,
		39.603909, 39.615932, 28.407293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833950, 39.982300, 28.315401>,  <39.009178, 39.247032, 28.421705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833950, 39.982300, 28.315401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.213654, 39.938553, 28.197458>,  <39.441475, 39.912304, 28.126692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.213654, 39.938553, 28.197458>,  <38.833950, 39.982300, 28.315401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213654, 39.938553, 28.197458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208566, 0.482803, -0.850530,
		0.235378, 0.868873, 0.435496,
		0.949261, -0.109367, -0.294859,
		39.498432, 39.905743, 28.109001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655212, 40.678032, 28.490383>,  <38.833950, 39.982300, 28.315401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655212, 40.678032, 28.490383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.259243, 40.623314, 28.475740>,  <38.021660, 40.590485, 28.466955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.259243, 40.623314, 28.475740>,  <38.655212, 40.678032, 28.490383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259243, 40.623314, 28.475740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009739, -0.192133, 0.981320,
		-0.141273, 0.971788, 0.188865,
		-0.989923, -0.136795, -0.036607,
		37.962265, 40.582275, 28.464758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547340, 40.750786, 29.066181>,  <38.655212, 40.678032, 28.490383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547340, 40.750786, 29.066181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.177292, 40.629650, 28.974585>,  <37.955261, 40.556969, 28.919626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.177292, 40.629650, 28.974585>,  <38.547340, 40.750786, 29.066181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177292, 40.629650, 28.974585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127804, -0.319537, 0.938915,
		-0.357508, 0.897879, 0.256908,
		-0.925124, -0.302836, -0.228990,
		37.899754, 40.538799, 28.905888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039505, 41.128284, 29.548660>,  <38.547340, 40.750786, 29.066181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039505, 41.128284, 29.548660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.918800, 40.774113, 29.407261>,  <37.846378, 40.561611, 29.322422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.918800, 40.774113, 29.407261>,  <38.039505, 41.128284, 29.548660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918800, 40.774113, 29.407261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257622, -0.281258, 0.924405,
		-0.917917, 0.370018, -0.143232,
		-0.301761, -0.885426, -0.353496,
		37.828274, 40.508484, 29.301212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343224, 41.047440, 29.877001>,  <38.039505, 41.128284, 29.548660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343224, 41.047440, 29.877001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.454559, 40.677624, 29.772884>,  <37.521362, 40.455734, 29.710415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.454559, 40.677624, 29.772884>,  <37.343224, 41.047440, 29.877001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454559, 40.677624, 29.772884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361587, -0.351927, 0.863366,
		-0.889821, -0.146192, -0.432257,
		0.278340, -0.924540, -0.260291,
		37.538063, 40.400261, 29.694798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871040, 40.693027, 30.249750>,  <37.343224, 41.047440, 29.877001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871040, 40.693027, 30.249750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.122349, 40.404549, 30.133028>,  <37.273132, 40.231461, 30.062994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.122349, 40.404549, 30.133028>,  <36.871040, 40.693027, 30.249750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122349, 40.404549, 30.133028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318009, -0.580372, 0.749692,
		-0.710032, -0.378213, -0.593978,
		0.628271, -0.721196, -0.291808,
		37.310829, 40.188190, 30.045486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399094, 40.097492, 30.015453>,  <36.871040, 40.693027, 30.249750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399094, 40.097492, 30.015453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.757645, 39.986084, 30.153399>,  <36.972775, 39.919239, 30.236166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.757645, 39.986084, 30.153399>,  <36.399094, 40.097492, 30.015453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757645, 39.986084, 30.153399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427415, -0.336707, 0.839014,
		-0.117564, -0.899475, -0.420861,
		0.896378, -0.278520, 0.344864,
		37.026558, 39.902527, 30.256857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355171, 39.371605, 30.265388>,  <36.399094, 40.097492, 30.015453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355171, 39.371605, 30.265388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.682629, 39.527828, 30.433809>,  <36.879105, 39.621563, 30.534863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.682629, 39.527828, 30.433809>,  <36.355171, 39.371605, 30.265388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682629, 39.527828, 30.433809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193152, -0.503210, 0.842302,
		0.540844, -0.770874, -0.336513,
		0.818645, 0.390556, 0.421054,
		36.928223, 39.644997, 30.560125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830486, 38.823589, 30.467607>,  <36.355171, 39.371605, 30.265388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830486, 38.823589, 30.467607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.891003, 39.139526, 30.705349>,  <36.927311, 39.329090, 30.847994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.891003, 39.139526, 30.705349>,  <36.830486, 38.823589, 30.467607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891003, 39.139526, 30.705349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393245, -0.503556, 0.769279,
		0.906901, -0.350110, 0.234419,
		0.151289, 0.789844, 0.594355,
		36.936390, 39.376480, 30.883656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034851, 38.387836, 30.975515>,  <36.830486, 38.823589, 30.467607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034851, 38.387836, 30.975515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.984589, 38.757954, 31.118649>,  <36.954433, 38.980022, 31.204529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.984589, 38.757954, 31.118649>,  <37.034851, 38.387836, 30.975515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984589, 38.757954, 31.118649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227416, -0.377952, 0.897460,
		0.965657, 0.031392, 0.257917,
		-0.125653, 0.925293, 0.357833,
		36.946892, 39.035542, 31.225998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330307, 38.401676, 31.591049>,  <37.034851, 38.387836, 30.975515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330307, 38.401676, 31.591049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.101246, 38.723454, 31.654211>,  <36.963810, 38.916519, 31.692108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.101246, 38.723454, 31.654211>,  <37.330307, 38.401676, 31.591049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101246, 38.723454, 31.654211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274287, -0.369523, 0.887818,
		0.772553, 0.465098, 0.432257,
		-0.572651, 0.804448, 0.157905,
		36.929451, 38.964787, 31.701582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513367, 38.640823, 32.231430>,  <37.330307, 38.401676, 31.591049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513367, 38.640823, 32.231430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.148445, 38.790085, 32.163948>,  <36.929493, 38.879642, 32.123459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.148445, 38.790085, 32.163948>,  <37.513367, 38.640823, 32.231430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148445, 38.790085, 32.163948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351188, -0.500982, 0.791002,
		0.210649, 0.780879, 0.588094,
		-0.912301, 0.373155, -0.168704,
		36.874756, 38.902031, 32.113338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113049, 38.860172, 32.930267>,  <37.513367, 38.640823, 32.231430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113049, 38.860172, 32.930267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.872402, 38.766575, 32.624771>,  <36.728016, 38.710415, 32.441471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.872402, 38.766575, 32.624771>,  <37.113049, 38.860172, 32.930267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872402, 38.766575, 32.624771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607705, -0.486454, 0.627740,
		-0.518413, 0.841790, 0.150461,
		-0.601617, -0.233992, -0.763744,
		36.691917, 38.696377, 32.395649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.247456, 42.402351, 25.175158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023411, 42.076767, 25.113516>,  <37.888985, 41.881416, 25.076530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023411, 42.076767, 25.113516>,  <38.247456, 42.402351, 25.175158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023411, 42.076767, 25.113516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220050, -0.033155, 0.974925,
		-0.798657, 0.579978, -0.160541,
		-0.560112, -0.813957, -0.154103,
		37.855377, 41.832581, 25.067286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756020, 42.475449, 25.688684>,  <38.247456, 42.402351, 25.175158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756020, 42.475449, 25.688684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677338, 42.100441, 25.573891>,  <37.630131, 41.875435, 25.505014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677338, 42.100441, 25.573891>,  <37.756020, 42.475449, 25.688684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677338, 42.100441, 25.573891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195497, -0.249322, 0.948483,
		-0.960775, 0.242674, -0.134241,
		-0.196702, -0.937522, -0.286985,
		37.618328, 41.819183, 25.487795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178802, 42.316761, 26.017132>,  <37.756020, 42.475449, 25.688684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178802, 42.316761, 26.017132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330662, 41.954910, 25.939655>,  <37.421780, 41.737801, 25.893169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330662, 41.954910, 25.939655>,  <37.178802, 42.316761, 26.017132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330662, 41.954910, 25.939655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239545, -0.298350, 0.923908,
		-0.893579, -0.304365, -0.329968,
		0.379651, -0.904627, -0.193690,
		37.444557, 41.683521, 25.881548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752930, 41.818275, 26.309870>,  <37.178802, 42.316761, 26.017132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752930, 41.818275, 26.309870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093689, 41.611450, 26.276604>,  <37.298145, 41.487354, 26.256645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093689, 41.611450, 26.276604>,  <36.752930, 41.818275, 26.309870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093689, 41.611450, 26.276604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179617, -0.437632, 0.881031,
		-0.491951, -0.735607, -0.465690,
		0.851893, -0.517070, -0.083166,
		37.349258, 41.456329, 26.251654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595596, 41.098503, 26.463369>,  <36.752930, 41.818275, 26.309870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595596, 41.098503, 26.463369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988392, 41.146511, 26.521727>,  <37.224072, 41.175316, 26.556742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988392, 41.146511, 26.521727>,  <36.595596, 41.098503, 26.463369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988392, 41.146511, 26.521727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077991, -0.445835, 0.891711,
		0.172071, -0.887032, -0.428446,
		0.981992, 0.120022, 0.145895,
		37.282990, 41.182518, 26.565495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831001, 40.444786, 26.573193>,  <36.595596, 41.098503, 26.463369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831001, 40.444786, 26.573193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102180, 40.691326, 26.733446>,  <37.264889, 40.839249, 26.829597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102180, 40.691326, 26.733446>,  <36.831001, 40.444786, 26.573193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102180, 40.691326, 26.733446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034388, -0.517806, 0.854806,
		0.734309, -0.593288, -0.329848,
		0.677944, 0.616349, 0.400632,
		37.305565, 40.876232, 26.853636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180847, 39.981598, 27.023333>,  <36.831001, 40.444786, 26.573193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180847, 39.981598, 27.023333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295261, 40.344360, 27.147072>,  <37.363911, 40.562019, 27.221315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295261, 40.344360, 27.147072>,  <37.180847, 39.981598, 27.023333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295261, 40.344360, 27.147072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043025, -0.334665, 0.941354,
		0.957252, -0.255953, -0.134747,
		0.286038, 0.906910, 0.309347,
		37.381073, 40.616432, 27.239876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940903, 39.911423, 27.419149>,  <37.180847, 39.981598, 27.023333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940903, 39.911423, 27.419149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775173, 40.253033, 27.544991>,  <37.675735, 40.458000, 27.620495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775173, 40.253033, 27.544991>,  <37.940903, 39.911423, 27.419149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775173, 40.253033, 27.544991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222306, -0.240236, 0.944916,
		0.882564, 0.461436, -0.090321,
		-0.414320, 0.854028, 0.314604,
		37.650879, 40.509239, 27.639372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442715, 40.310837, 27.815826>,  <37.940903, 39.911423, 27.419149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442715, 40.310837, 27.815826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088917, 40.460281, 27.927607>,  <37.876640, 40.549950, 27.994675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088917, 40.460281, 27.927607>,  <38.442715, 40.310837, 27.815826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088917, 40.460281, 27.927607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261646, -0.098705, 0.960103,
		0.386287, 0.922319, -0.010450,
		-0.884490, 0.373610, 0.279450,
		37.823570, 40.572365, 28.011442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051888, 40.783318, 27.805576>,  <38.442715, 40.310837, 27.815826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051888, 40.783318, 27.805576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355045, 40.527855, 27.752344>,  <39.536942, 40.374577, 27.720406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355045, 40.527855, 27.752344>,  <39.051888, 40.783318, 27.805576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355045, 40.527855, 27.752344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005418, 0.210148, -0.977655,
		0.652354, 0.740239, 0.162730,
		0.757895, -0.638658, -0.133081,
		39.582413, 40.336258, 27.712420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574284, 41.143986, 27.578917>,  <39.051888, 40.783318, 27.805576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574284, 41.143986, 27.578917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639786, 40.769688, 27.453974>,  <39.679089, 40.545109, 27.379007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639786, 40.769688, 27.453974>,  <39.574284, 41.143986, 27.578917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639786, 40.769688, 27.453974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130020, 0.334343, -0.933440,
		0.977894, 0.112247, 0.176418,
		0.163760, -0.935743, -0.312357,
		39.688915, 40.488964, 27.360266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213478, 41.144077, 27.174213>,  <39.574284, 41.143986, 27.578917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213478, 41.144077, 27.174213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019920, 40.812675, 27.061485>,  <39.903786, 40.613834, 26.993849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019920, 40.812675, 27.061485>,  <40.213478, 41.144077, 27.174213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019920, 40.812675, 27.061485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301546, 0.144455, -0.942445,
		0.821531, -0.541028, 0.179931,
		-0.483897, -0.828506, -0.281819,
		39.874752, 40.564125, 26.976940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648293, 40.940407, 26.629475>,  <40.213478, 41.144077, 27.174213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648293, 40.940407, 26.629475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355576, 40.670105, 26.594093>,  <40.179943, 40.507923, 26.572865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355576, 40.670105, 26.594093>,  <40.648293, 40.940407, 26.629475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355576, 40.670105, 26.594093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253246, -0.149134, -0.955837,
		0.632724, -0.721879, 0.280269,
		-0.731796, -0.675759, -0.088452,
		40.136036, 40.467377, 26.567558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993809, 40.437710, 26.286636>,  <40.648293, 40.940407, 26.629475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993809, 40.437710, 26.286636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601410, 40.392704, 26.223419>,  <40.365971, 40.365700, 26.185490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601410, 40.392704, 26.223419>,  <40.993809, 40.437710, 26.286636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601410, 40.392704, 26.223419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169177, -0.097421, -0.980759,
		0.094954, -0.988862, 0.114606,
		-0.981001, -0.112516, -0.158042,
		40.307110, 40.358948, 26.176006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010231, 39.908497, 25.760321>,  <40.993809, 40.437710, 26.286636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010231, 39.908497, 25.760321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641201, 40.062496, 25.750307>,  <40.419785, 40.154896, 25.744299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641201, 40.062496, 25.750307>,  <41.010231, 39.908497, 25.760321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641201, 40.062496, 25.750307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021916, -0.117080, -0.992881,
		-0.385194, -0.915459, 0.116453,
		-0.922576, 0.385004, -0.025035,
		40.364429, 40.177998, 25.742796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649559, 39.436588, 25.560526>,  <41.010231, 39.908497, 25.760321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649559, 39.436588, 25.560526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484180, 39.787376, 25.462551>,  <40.384953, 39.997849, 25.403767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484180, 39.787376, 25.462551>,  <40.649559, 39.436588, 25.560526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484180, 39.787376, 25.462551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139932, -0.204610, -0.968790,
		-0.899712, -0.434815, -0.038121,
		-0.413445, 0.876966, -0.244935,
		40.360146, 40.050465, 25.389071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334541, 39.277985, 24.887980>,  <40.649559, 39.436588, 25.560526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334541, 39.277985, 24.887980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301254, 39.676590, 24.890554>,  <40.281281, 39.915752, 24.892099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301254, 39.676590, 24.890554>,  <40.334541, 39.277985, 24.887980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301254, 39.676590, 24.890554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139960, 0.018082, -0.989992,
		-0.986654, -0.081485, -0.140976,
		-0.083219, 0.996510, 0.006436,
		40.276287, 39.975544, 24.892485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777500, 39.522766, 24.367662>,  <40.334541, 39.277985, 24.887980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777500, 39.522766, 24.367662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020714, 39.836807, 24.414827>,  <40.166641, 40.025230, 24.443127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020714, 39.836807, 24.414827>,  <39.777500, 39.522766, 24.367662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020714, 39.836807, 24.414827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008217, 0.142288, -0.989791,
		-0.793865, 0.602800, 0.080066,
		0.608039, 0.785103, 0.117910,
		40.203125, 40.072338, 24.450201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529491, 39.920380, 23.875559>,  <39.777500, 39.522766, 24.367662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529491, 39.920380, 23.875559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899715, 40.036915, 23.972271>,  <40.121849, 40.106834, 24.030298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899715, 40.036915, 23.972271>,  <39.529491, 39.920380, 23.875559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899715, 40.036915, 23.972271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198822, 0.169431, -0.965279,
		-0.322188, 0.941496, 0.098895,
		0.925562, 0.291338, 0.241779,
		40.177383, 40.124317, 24.044806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592823, 40.589752, 23.686945>,  <39.529491, 39.920380, 23.875559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592823, 40.589752, 23.686945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974247, 40.470291, 23.702621>,  <40.203102, 40.398613, 23.712029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974247, 40.470291, 23.702621>,  <39.592823, 40.589752, 23.686945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974247, 40.470291, 23.702621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148431, 0.352670, -0.923900,
		0.262105, 0.886808, 0.380621,
		0.953556, -0.298654, 0.039193,
		40.260315, 40.380695, 23.714378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906673, 40.934078, 23.127874>,  <39.592823, 40.589752, 23.686945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906673, 40.934078, 23.127874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210072, 40.683231, 23.198753>,  <40.392113, 40.532722, 23.241280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210072, 40.683231, 23.198753>,  <39.906673, 40.934078, 23.127874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210072, 40.683231, 23.198753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249197, 0.027875, -0.968051,
		0.602146, 0.778423, 0.177420,
		0.758499, -0.627121, 0.177196,
		40.437622, 40.495094, 23.251913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449284, 41.062836, 22.603090>,  <39.906673, 40.934078, 23.127874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449284, 41.062836, 22.603090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540466, 40.693237, 22.725901>,  <40.595177, 40.471478, 22.799587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540466, 40.693237, 22.725901>,  <40.449284, 41.062836, 22.603090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540466, 40.693237, 22.725901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300129, -0.233294, -0.924931,
		0.926260, 0.302993, 0.224137,
		0.227958, -0.923996, 0.307028,
		40.608852, 40.416039, 22.818008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101318, 40.884872, 22.345211>,  <40.449284, 41.062836, 22.603090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101318, 40.884872, 22.345211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931370, 40.526257, 22.395317>,  <40.829399, 40.311085, 22.425381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931370, 40.526257, 22.395317>,  <41.101318, 40.884872, 22.345211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931370, 40.526257, 22.395317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246598, -0.247771, -0.936909,
		0.871017, -0.367179, 0.326357,
		-0.424875, -0.896543, 0.125267,
		40.803905, 40.257294, 22.432898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.869999, 36.706501, 21.727091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.065834, 37.044323, 21.813839>,  <33.183334, 37.247017, 21.865889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.065834, 37.044323, 21.813839>,  <32.869999, 36.706501, 21.727091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065834, 37.044323, 21.813839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096061, -0.194962, 0.976095,
		0.866645, -0.498719, -0.014323,
		0.489590, 0.844552, 0.216871,
		33.212711, 37.297688, 21.878901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124039, 36.515209, 22.395149>,  <32.869999, 36.706501, 21.727091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124039, 36.515209, 22.395149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.136150, 36.913895, 22.365074>,  <33.143417, 37.153107, 22.347029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.136150, 36.913895, 22.365074>,  <33.124039, 36.515209, 22.395149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136150, 36.913895, 22.365074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069134, 0.072955, 0.994936,
		0.997148, -0.035325, -0.066697,
		0.030280, 0.996709, -0.075189,
		33.145233, 37.212906, 22.342518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685181, 36.619858, 22.681461>,  <33.124039, 36.515209, 22.395149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685181, 36.619858, 22.681461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.477962, 36.961121, 22.705978>,  <33.353630, 37.165878, 22.720688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.477962, 36.961121, 22.705978>,  <33.685181, 36.619858, 22.681461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477962, 36.961121, 22.705978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091249, -0.016125, 0.995698,
		0.850471, 0.521411, -0.069495,
		-0.518047, 0.853153, 0.061292,
		33.322548, 37.217068, 22.724365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042717, 37.053421, 23.193048>,  <33.685181, 36.619858, 22.681461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042717, 37.053421, 23.193048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.671272, 37.200924, 23.176554>,  <33.448406, 37.289425, 23.166656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.671272, 37.200924, 23.176554>,  <34.042717, 37.053421, 23.193048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671272, 37.200924, 23.176554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022783, 0.054255, 0.998267,
		0.370353, 0.927942, -0.041980,
		-0.928612, 0.368755, -0.041235,
		33.392689, 37.311550, 23.164183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988770, 37.583599, 23.574148>,  <34.042717, 37.053421, 23.193048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988770, 37.583599, 23.574148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.603683, 37.475754, 23.565247>,  <33.372631, 37.411045, 23.559906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.603683, 37.475754, 23.565247>,  <33.988770, 37.583599, 23.574148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603683, 37.475754, 23.565247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058046, 0.125510, 0.990393,
		-0.264231, 0.954754, -0.136480,
		-0.962711, -0.269614, -0.022256,
		33.314869, 37.394871, 23.558569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583908, 38.088902, 23.861647>,  <33.988770, 37.583599, 23.574148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583908, 38.088902, 23.861647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.351902, 37.765530, 23.901697>,  <33.212700, 37.571507, 23.925728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.351902, 37.765530, 23.901697>,  <33.583908, 38.088902, 23.861647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351902, 37.765530, 23.901697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123443, 0.208723, 0.970153,
		-0.805202, 0.550339, -0.220856,
		-0.580011, -0.808432, 0.100128,
		33.177898, 37.522999, 23.931736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137733, 38.193348, 24.406277>,  <33.583908, 38.088902, 23.861647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137733, 38.193348, 24.406277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.091118, 37.799023, 24.357948>,  <33.063148, 37.562428, 24.328951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.091118, 37.799023, 24.357948>,  <33.137733, 38.193348, 24.406277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091118, 37.799023, 24.357948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216412, -0.093522, 0.971813,
		-0.969321, 0.139404, -0.202441,
		-0.116541, -0.985809, -0.120822,
		33.056156, 37.503281, 24.321701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550606, 37.942394, 24.786102>,  <33.137733, 38.193348, 24.406277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550606, 37.942394, 24.786102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.743221, 37.594387, 24.743799>,  <32.858791, 37.385582, 24.718418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.743221, 37.594387, 24.743799>,  <32.550606, 37.942394, 24.786102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743221, 37.594387, 24.743799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216648, -0.235087, 0.947522,
		-0.849225, -0.433357, -0.301692,
		0.481539, -0.870020, -0.105756,
		32.887684, 37.333382, 24.712072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189499, 37.459011, 25.165482>,  <32.550606, 37.942394, 24.786102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189499, 37.459011, 25.165482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.496117, 37.214825, 25.085741>,  <32.680088, 37.068314, 25.037897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.496117, 37.214825, 25.085741>,  <32.189499, 37.459011, 25.165482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496117, 37.214825, 25.085741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044922, -0.360633, 0.931625,
		-0.640618, -0.705177, -0.303865,
		0.766545, -0.610466, -0.199350,
		32.726082, 37.031685, 25.025936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943762, 36.726852, 25.259333>,  <32.189499, 37.459011, 25.165482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943762, 36.726852, 25.259333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.340916, 36.754971, 25.297779>,  <32.579208, 36.771839, 25.320847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.340916, 36.754971, 25.297779>,  <31.943762, 36.726852, 25.259333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340916, 36.754971, 25.297779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061144, -0.391694, 0.918061,
		0.102182, -0.917406, -0.384609,
		0.992885, 0.070293, 0.096118,
		32.638783, 36.776058, 25.326614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146362, 36.068066, 25.504839>,  <31.943762, 36.726852, 25.259333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146362, 36.068066, 25.504839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.450104, 36.310345, 25.599928>,  <32.632351, 36.455711, 25.656982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.450104, 36.310345, 25.599928>,  <32.146362, 36.068066, 25.504839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450104, 36.310345, 25.599928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062979, -0.432051, 0.899647,
		0.647620, -0.668181, -0.366227,
		0.759356, 0.605695, 0.237724,
		32.677910, 36.492054, 25.671246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636585, 35.549110, 25.909796>,  <32.146362, 36.068066, 25.504839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636585, 35.549110, 25.909796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.750988, 35.924606, 25.986706>,  <32.819630, 36.149902, 26.032852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.750988, 35.924606, 25.986706>,  <32.636585, 35.549110, 25.909796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750988, 35.924606, 25.986706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220337, -0.259706, 0.940215,
		0.932552, -0.226541, -0.281116,
		0.286005, 0.938740, 0.192274,
		32.836788, 36.206226, 26.044388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281738, 35.525379, 26.337574>,  <32.636585, 35.549110, 25.909796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281738, 35.525379, 26.337574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.118046, 35.881447, 26.417700>,  <33.019833, 36.095089, 26.465775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.118046, 35.881447, 26.417700>,  <33.281738, 35.525379, 26.337574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118046, 35.881447, 26.417700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174323, -0.139217, 0.974798,
		0.895624, 0.433835, -0.098205,
		-0.409230, 0.890172, 0.200314,
		32.995277, 36.148499, 26.477795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750999, 35.763947, 26.823893>,  <33.281738, 35.525379, 26.337574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750999, 35.763947, 26.823893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.413879, 35.973484, 26.873331>,  <33.211605, 36.099205, 26.902994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.413879, 35.973484, 26.873331>,  <33.750999, 35.763947, 26.823893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413879, 35.973484, 26.873331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180668, 0.059035, 0.981771,
		0.506994, 0.849768, -0.144396,
		-0.842802, 0.523840, 0.123595,
		33.161037, 36.130634, 26.910410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561592, 35.831837, 26.925426>,  <33.750999, 35.763947, 26.823893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561592, 35.831837, 26.925426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820026, 35.530998, 26.977478>,  <34.975086, 35.350494, 27.008709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820026, 35.530998, 26.977478>,  <34.561592, 35.831837, 26.925426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820026, 35.530998, 26.977478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262191, 0.058572, -0.963237,
		0.716820, 0.656451, 0.235034,
		0.646084, -0.752092, 0.130130,
		35.013851, 35.305370, 27.016518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239098, 36.037010, 26.722250>,  <34.561592, 35.831837, 26.925426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239098, 36.037010, 26.722250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205296, 35.639671, 26.690947>,  <35.185013, 35.401268, 26.672165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.205296, 35.639671, 26.690947>,  <35.239098, 36.037010, 26.722250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205296, 35.639671, 26.690947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227893, 0.057192, -0.972005,
		0.970012, -0.099974, 0.221543,
		-0.084504, -0.993345, -0.078261,
		35.179943, 35.341667, 26.667469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845345, 35.746689, 26.367641>,  <35.239098, 36.037010, 26.722250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845345, 35.746689, 26.367641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.575802, 35.452293, 26.341599>,  <35.414078, 35.275658, 26.325974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.575802, 35.452293, 26.341599>,  <35.845345, 35.746689, 26.367641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575802, 35.452293, 26.341599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212727, -0.108871, -0.971027,
		0.707576, -0.668183, 0.229928,
		-0.673857, -0.735988, -0.065106,
		35.373646, 35.231499, 26.322067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108940, 35.203785, 25.997128>,  <35.845345, 35.746689, 26.367641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108940, 35.203785, 25.997128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.716442, 35.141155, 25.952139>,  <35.480946, 35.103577, 25.925146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.716442, 35.141155, 25.952139>,  <36.108940, 35.203785, 25.997128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716442, 35.141155, 25.952139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122602, -0.056586, -0.990841,
		0.148776, -0.986044, 0.074720,
		-0.981241, -0.156574, -0.112473,
		35.422070, 35.094185, 25.918398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158569, 34.794395, 25.499010>,  <36.108940, 35.203785, 25.997128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158569, 34.794395, 25.499010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.787426, 34.942024, 25.477587>,  <35.564739, 35.030602, 25.464733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.787426, 34.942024, 25.477587>,  <36.158569, 34.794395, 25.499010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787426, 34.942024, 25.477587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071323, 0.034649, -0.996851,
		-0.366052, -0.928755, -0.058472,
		-0.927857, 0.369070, -0.053558,
		35.509068, 35.052746, 25.461519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816624, 34.374516, 25.009748>,  <36.158569, 34.794395, 25.499010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816624, 34.374516, 25.009748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581364, 34.695717, 25.048246>,  <35.440208, 34.888439, 25.071346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.581364, 34.695717, 25.048246>,  <35.816624, 34.374516, 25.009748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581364, 34.695717, 25.048246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053730, 0.079947, -0.995350,
		-0.806967, -0.590583, -0.003875,
		-0.588147, 0.803007, 0.096247,
		35.404919, 34.936619, 25.077120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338238, 34.379356, 24.484970>,  <35.816624, 34.374516, 25.009748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338238, 34.379356, 24.484970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.343369, 34.762039, 24.601282>,  <35.346447, 34.991650, 24.671070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.343369, 34.762039, 24.601282>,  <35.338238, 34.379356, 24.484970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343369, 34.762039, 24.601282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044533, 0.289970, -0.955999,
		-0.998925, 0.025215, -0.038885,
		0.012830, 0.956703, 0.290782,
		35.347218, 35.049049, 24.688517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835693, 34.635918, 24.180080>,  <35.338238, 34.379356, 24.484970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835693, 34.635918, 24.180080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.048683, 34.962425, 24.269691>,  <35.176476, 35.158329, 24.323458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.048683, 34.962425, 24.269691>,  <34.835693, 34.635918, 24.180080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048683, 34.962425, 24.269691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123753, 0.186751, -0.974582,
		-0.837353, 0.546660, -0.001576,
		0.532470, 0.816264, 0.224027,
		35.208424, 35.207306, 24.336899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519653, 35.233952, 23.851431>,  <34.835693, 34.635918, 24.180080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519653, 35.233952, 23.851431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.907356, 35.323708, 23.891819>,  <35.139977, 35.377560, 23.916052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.907356, 35.323708, 23.891819>,  <34.519653, 35.233952, 23.851431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907356, 35.323708, 23.891819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050450, 0.220418, -0.974100,
		-0.240831, 0.949246, 0.202321,
		0.969255, 0.224386, 0.100972,
		35.198132, 35.391022, 23.922112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631580, 35.667534, 23.432871>,  <34.519653, 35.233952, 23.851431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631580, 35.667534, 23.432871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.022503, 35.616516, 23.500513>,  <35.257057, 35.585903, 23.541098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.022503, 35.616516, 23.500513>,  <34.631580, 35.667534, 23.432871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022503, 35.616516, 23.500513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198038, 0.267011, -0.943125,
		0.075141, 0.955215, 0.286212,
		0.977310, -0.127548, 0.169106,
		35.315697, 35.578251, 23.551245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951431, 36.240982, 23.131233>,  <34.631580, 35.667534, 23.432871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951431, 36.240982, 23.131233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.240299, 35.966343, 23.164848>,  <35.413620, 35.801559, 23.185017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.240299, 35.966343, 23.164848>,  <34.951431, 36.240982, 23.131233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240299, 35.966343, 23.164848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315383, 0.218699, -0.923420,
		0.615636, 0.693368, 0.374478,
		0.722167, -0.686595, 0.084038,
		35.456951, 35.760365, 23.190060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463284, 36.546608, 22.791052>,  <34.951431, 36.240982, 23.131233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463284, 36.546608, 22.791052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.587963, 36.166809, 22.805475>,  <35.662773, 35.938931, 22.814129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.587963, 36.166809, 22.805475>,  <35.463284, 36.546608, 22.791052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587963, 36.166809, 22.805475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239946, 0.041937, -0.969880,
		0.919385, 0.310964, 0.240900,
		0.311701, -0.949496, 0.036058,
		35.681473, 35.881962, 22.816292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175148, 36.558990, 22.730350>,  <35.463284, 36.546608, 22.791052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175148, 36.558990, 22.730350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.011097, 36.212818, 22.615231>,  <35.912666, 36.005116, 22.546158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.011097, 36.212818, 22.615231>,  <36.175148, 36.558990, 22.730350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011097, 36.212818, 22.615231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259280, 0.191903, -0.946545,
		0.874395, -0.462827, 0.145683,
		-0.410130, -0.865427, -0.287801,
		35.888058, 35.953190, 22.528891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588383, 36.279926, 22.154922>,  <36.175148, 36.558990, 22.730350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588383, 36.279926, 22.154922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.252747, 36.064339, 22.125408>,  <36.051365, 35.934986, 22.107700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.252747, 36.064339, 22.125408>,  <36.588383, 36.279926, 22.154922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252747, 36.064339, 22.125408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038654, 0.076222, -0.996341,
		0.542621, -0.838870, -0.043124,
		-0.839088, -0.538969, -0.073786,
		36.001019, 35.902649, 22.103273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052402, 35.648884, 22.298370>,  <36.588383, 36.279926, 22.154922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052402, 35.648884, 22.298370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.446239, 35.580395, 22.312603>,  <37.682541, 35.539303, 22.321142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.446239, 35.580395, 22.312603>,  <37.052402, 35.648884, 22.298370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446239, 35.580395, 22.312603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047598, -0.066591, 0.996644,
		-0.168277, -0.982980, -0.073715,
		0.984590, -0.171221, 0.035583,
		37.741615, 35.529030, 22.323278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028332, 35.076191, 22.766035>,  <37.052402, 35.648884, 22.298370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028332, 35.076191, 22.766035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.399658, 35.224903, 22.765802>,  <37.622456, 35.314133, 22.765663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.399658, 35.224903, 22.765802>,  <37.028332, 35.076191, 22.766035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399658, 35.224903, 22.765802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008110, -0.018690, 0.999793,
		0.371696, -0.928131, -0.020366,
		0.928319, 0.371784, -0.000580,
		37.678154, 35.336437, 22.765629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372578, 34.582050, 23.186932>,  <37.028332, 35.076191, 22.766035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372578, 34.582050, 23.186932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.576797, 34.925968, 23.190876>,  <37.699329, 35.132317, 23.193243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.576797, 34.925968, 23.190876>,  <37.372578, 34.582050, 23.186932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576797, 34.925968, 23.190876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113490, -0.078749, 0.990413,
		0.852327, -0.504534, -0.137783,
		0.510548, 0.859793, 0.009860,
		37.729961, 35.183907, 23.193834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728352, 34.400921, 23.699108>,  <37.372578, 34.582050, 23.186932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728352, 34.400921, 23.699108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.818932, 34.790302, 23.685827>,  <37.873280, 35.023933, 23.677858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.818932, 34.790302, 23.685827>,  <37.728352, 34.400921, 23.699108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818932, 34.790302, 23.685827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254029, -0.026117, 0.966844,
		0.940313, -0.227377, -0.253201,
		0.226450, 0.973457, -0.033203,
		37.886868, 35.082340, 23.675867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419567, 34.528500, 23.892300>,  <37.728352, 34.400921, 23.699108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419567, 34.528500, 23.892300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.206608, 34.857395, 23.972769>,  <38.078831, 35.054733, 24.021049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.206608, 34.857395, 23.972769>,  <38.419567, 34.528500, 23.892300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206608, 34.857395, 23.972769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314505, -0.028500, 0.948828,
		0.785898, 0.568426, -0.243425,
		-0.532401, 0.822241, 0.201170,
		38.046886, 35.104069, 24.033119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876801, 34.912674, 24.174561>,  <38.419567, 34.528500, 23.892300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876801, 34.912674, 24.174561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.520962, 35.073189, 24.261824>,  <38.307461, 35.169498, 24.314180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.520962, 35.073189, 24.261824>,  <38.876801, 34.912674, 24.174561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520962, 35.073189, 24.261824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311336, 0.183264, 0.932461,
		0.334203, 0.897432, -0.287965,
		-0.889594, 0.401285, 0.218156,
		38.254082, 35.193573, 24.327271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147774, 35.564960, 24.567720>,  <38.876801, 34.912674, 24.174561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147774, 35.564960, 24.567720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.763809, 35.508221, 24.664429>,  <38.533432, 35.474178, 24.722454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.763809, 35.508221, 24.664429>,  <39.147774, 35.564960, 24.567720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763809, 35.508221, 24.664429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201657, 0.249631, 0.947111,
		-0.194699, 0.957895, -0.211018,
		-0.959910, -0.141848, 0.241769,
		38.475838, 35.465668, 24.736959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953484, 36.077610, 24.995085>,  <39.147774, 35.564960, 24.567720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953484, 36.077610, 24.995085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.675789, 35.807381, 25.094391>,  <38.509171, 35.645245, 25.153975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.675789, 35.807381, 25.094391>,  <38.953484, 36.077610, 24.995085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675789, 35.807381, 25.094391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142892, 0.208701, 0.967484,
		-0.705421, 0.707137, -0.048354,
		-0.694236, -0.675574, 0.248266,
		38.467518, 35.604710, 25.168871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451031, 36.404556, 25.422831>,  <38.953484, 36.077610, 24.995085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451031, 36.404556, 25.422831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.434509, 36.015579, 25.514616>,  <38.424595, 35.782192, 25.569687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.434509, 36.015579, 25.514616>,  <38.451031, 36.404556, 25.422831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434509, 36.015579, 25.514616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180895, 0.218585, 0.958904,
		-0.982635, 0.081113, 0.166882,
		-0.041302, -0.972441, 0.229462,
		38.422119, 35.723846, 25.583454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002090, 36.462917, 25.979053>,  <38.451031, 36.404556, 25.422831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002090, 36.462917, 25.979053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.216553, 36.125298, 25.974651>,  <38.345230, 35.922726, 25.972010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.216553, 36.125298, 25.974651>,  <38.002090, 36.462917, 25.979053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216553, 36.125298, 25.974651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215946, 0.124546, 0.968430,
		-0.816030, -0.521606, 0.249045,
		0.536156, -0.844047, -0.011006,
		38.377399, 35.872082, 25.971350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704891, 36.059353, 26.515980>,  <38.002090, 36.462917, 25.979053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704891, 36.059353, 26.515980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073479, 35.921894, 26.443546>,  <38.294632, 35.839417, 26.400085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073479, 35.921894, 26.443546>,  <37.704891, 36.059353, 26.515980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073479, 35.921894, 26.443546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160218, -0.088436, 0.983112,
		-0.353861, -0.934925, -0.026432,
		0.921473, -0.343650, -0.181086,
		38.349922, 35.818798, 26.389221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723949, 35.428253, 26.843740>,  <37.704891, 36.059353, 26.515980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723949, 35.428253, 26.843740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103474, 35.544601, 26.794510>,  <38.331188, 35.614410, 26.764973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103474, 35.544601, 26.794510>,  <37.723949, 35.428253, 26.843740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103474, 35.544601, 26.794510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183760, -0.191472, 0.964142,
		0.256873, -0.937408, -0.235122,
		0.948814, 0.290868, -0.123074,
		38.388119, 35.631863, 26.757587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100460, 34.875160, 27.119774>,  <37.723949, 35.428253, 26.843740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100460, 34.875160, 27.119774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.350262, 35.187176, 27.104076>,  <38.500141, 35.374386, 27.094658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.350262, 35.187176, 27.104076>,  <38.100460, 34.875160, 27.119774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350262, 35.187176, 27.104076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183805, -0.097947, 0.978070,
		0.759085, -0.618023, -0.204543,
		0.624505, 0.780034, -0.039245,
		38.537613, 35.421185, 27.092302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585728, 34.690475, 27.566673>,  <38.100460, 34.875160, 27.119774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585728, 34.690475, 27.566673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.647392, 35.083504, 27.525118>,  <38.684391, 35.319321, 27.500185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.647392, 35.083504, 27.525118>,  <38.585728, 34.690475, 27.566673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647392, 35.083504, 27.525118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178851, 0.075657, 0.980963,
		0.971724, -0.169806, -0.164071,
		0.154160, 0.982569, -0.103888,
		38.693642, 35.378273, 27.493952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.588379, 40.352337, 22.084366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.226898, 40.181499, 22.072262>,  <41.010010, 40.078995, 22.064999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.226898, 40.181499, 22.072262>,  <41.588379, 40.352337, 22.084366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226898, 40.181499, 22.072262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152203, -0.254383, -0.955052,
		0.400202, -0.867685, 0.294891,
		-0.903699, -0.427097, -0.030260,
		40.955788, 40.053371, 22.063183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722050, 39.725101, 21.840570>,  <41.588379, 40.352337, 22.084366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722050, 39.725101, 21.840570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.339699, 39.813755, 21.763449>,  <41.110287, 39.866947, 21.717176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.339699, 39.813755, 21.763449>,  <41.722050, 39.725101, 21.840570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339699, 39.813755, 21.763449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120254, -0.303598, -0.945181,
		-0.268008, -0.926667, 0.263553,
		-0.955882, 0.221623, -0.192802,
		41.052937, 39.880245, 21.705608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510941, 39.125534, 21.411591>,  <41.722050, 39.725101, 21.840570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510941, 39.125534, 21.411591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.218002, 39.394234, 21.367012>,  <41.042240, 39.555454, 21.340265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.218002, 39.394234, 21.367012>,  <41.510941, 39.125534, 21.411591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218002, 39.394234, 21.367012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155510, -0.324338, -0.933071,
		-0.662938, -0.666000, 0.341991,
		-0.732346, 0.671751, -0.111446,
		40.998299, 39.595760, 21.333578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859486, 38.718647, 21.191881>,  <41.510941, 39.125534, 21.411591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859486, 38.718647, 21.191881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.794746, 39.101070, 21.094101>,  <40.755905, 39.330524, 21.035433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.794746, 39.101070, 21.094101>,  <40.859486, 38.718647, 21.191881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794746, 39.101070, 21.094101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452604, -0.292041, -0.842533,
		-0.876901, -0.025720, 0.479982,
		-0.161844, 0.956060, -0.244450,
		40.746193, 39.387890, 21.020765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162148, 38.811970, 21.001686>,  <40.859486, 38.718647, 21.191881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162148, 38.811970, 21.001686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.353382, 39.118240, 20.829557>,  <40.468124, 39.302002, 20.726280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.353382, 39.118240, 20.829557>,  <40.162148, 38.811970, 21.001686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353382, 39.118240, 20.829557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477792, -0.184385, -0.858905,
		-0.736984, 0.616237, 0.277680,
		0.478089, 0.765672, -0.430322,
		40.496807, 39.347942, 20.700460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718655, 39.282223, 20.660967>,  <40.162148, 38.811970, 21.001686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718655, 39.282223, 20.660967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.068123, 39.342072, 20.475788>,  <40.277802, 39.377979, 20.364681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.068123, 39.342072, 20.475788>,  <39.718655, 39.282223, 20.660967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068123, 39.342072, 20.475788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453088, -0.096439, -0.886234,
		-0.177244, 0.984029, -0.016464,
		0.873668, 0.149620, -0.462945,
		40.330223, 39.386959, 20.336905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598640, 39.846199, 20.201023>,  <39.718655, 39.282223, 20.660967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598640, 39.846199, 20.201023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.924847, 39.669956, 20.050924>,  <40.120571, 39.564213, 19.960865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.924847, 39.669956, 20.050924>,  <39.598640, 39.846199, 20.201023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924847, 39.669956, 20.050924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406790, 0.024799, -0.913185,
		0.411659, 0.897359, -0.159010,
		0.815511, -0.440604, -0.375246,
		40.169498, 39.537773, 19.938351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596558, 40.199295, 19.716970>,  <39.598640, 39.846199, 20.201023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596558, 40.199295, 19.716970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.856998, 39.913326, 19.615038>,  <40.013264, 39.741745, 19.553879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.856998, 39.913326, 19.615038>,  <39.596558, 40.199295, 19.716970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856998, 39.913326, 19.615038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285767, 0.080129, -0.954943,
		0.703134, 0.694593, -0.152130,
		0.651107, -0.714927, -0.254833,
		40.052330, 39.698849, 19.538588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955517, 40.451294, 19.082642>,  <39.596558, 40.199295, 19.716970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955517, 40.451294, 19.082642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.969986, 40.051575, 19.078629>,  <39.978668, 39.811745, 19.076221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.969986, 40.051575, 19.078629>,  <39.955517, 40.451294, 19.082642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969986, 40.051575, 19.078629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136309, 0.005009, -0.990654,
		0.990006, 0.037206, -0.136032,
		0.036177, -0.999295, -0.010030,
		39.980839, 39.751785, 19.075619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310276, 40.249588, 18.487810>,  <39.955517, 40.451294, 19.082642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310276, 40.249588, 18.487810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.092281, 39.925385, 18.573658>,  <39.961487, 39.730862, 18.625166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.092281, 39.925385, 18.573658>,  <40.310276, 40.249588, 18.487810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092281, 39.925385, 18.573658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245873, -0.090228, -0.965093,
		0.801586, -0.578729, -0.150111,
		-0.544983, -0.810514, 0.214619,
		39.928787, 39.682232, 18.638044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429607, 39.816704, 17.947216>,  <40.310276, 40.249588, 18.487810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429607, 39.816704, 17.947216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.097126, 39.664639, 18.109488>,  <39.897636, 39.573399, 18.206850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.097126, 39.664639, 18.109488>,  <40.429607, 39.816704, 17.947216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097126, 39.664639, 18.109488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317644, -0.274133, -0.907719,
		0.456294, -0.883360, 0.107103,
		-0.831203, -0.380166, 0.405679,
		39.847767, 39.550591, 18.231192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290401, 39.197628, 17.595949>,  <40.429607, 39.816704, 17.947216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290401, 39.197628, 17.595949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.949738, 39.304615, 17.776232>,  <39.745338, 39.368809, 17.884401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.949738, 39.304615, 17.776232>,  <40.290401, 39.197628, 17.595949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949738, 39.304615, 17.776232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490645, -0.104598, -0.865059,
		-0.184235, -0.957872, 0.220315,
		-0.851660, 0.267470, 0.450704,
		39.694241, 39.384857, 17.911444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881134, 38.695271, 17.265671>,  <40.290401, 39.197628, 17.595949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881134, 38.695271, 17.265671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.636185, 38.969223, 17.423632>,  <39.489216, 39.133595, 17.518408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.636185, 38.969223, 17.423632>,  <39.881134, 38.695271, 17.265671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636185, 38.969223, 17.423632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556549, -0.018701, -0.830604,
		-0.561477, -0.728418, 0.392620,
		-0.612370, 0.684877, 0.394900,
		39.452473, 39.174686, 17.542101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779366, 38.037304, 17.153498>,  <39.881134, 38.695271, 17.265671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779366, 38.037304, 17.153498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.456406, 37.817188, 17.068377>,  <39.262630, 37.685120, 17.017303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.456406, 37.817188, 17.068377>,  <39.779366, 38.037304, 17.153498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456406, 37.817188, 17.068377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042828, -0.305070, 0.951366,
		-0.588443, 0.777251, 0.222748,
		-0.807404, -0.550285, -0.212804,
		39.214184, 37.652103, 17.004536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326420, 38.148312, 17.726515>,  <39.779366, 38.037304, 17.153498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326420, 38.148312, 17.726515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.179306, 37.812538, 17.566477>,  <39.091038, 37.611073, 17.470453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.179306, 37.812538, 17.566477>,  <39.326420, 38.148312, 17.726515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179306, 37.812538, 17.566477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269927, -0.315357, 0.909774,
		-0.889872, 0.442600, -0.110603,
		-0.367786, -0.839438, -0.400097,
		39.068970, 37.560707, 17.446447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631783, 38.010559, 18.102736>,  <39.326420, 38.148312, 17.726515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631783, 38.010559, 18.102736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.784710, 37.673447, 17.951180>,  <38.876465, 37.471180, 17.860247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.784710, 37.673447, 17.951180>,  <38.631783, 38.010559, 18.102736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784710, 37.673447, 17.951180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204672, -0.477090, 0.854690,
		-0.901080, -0.249211, -0.354892,
		0.382314, -0.842780, -0.378890,
		38.899403, 37.420612, 17.837513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218529, 37.461308, 18.308775>,  <38.631783, 38.010559, 18.102736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218529, 37.461308, 18.308775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.549679, 37.257111, 18.215799>,  <38.748367, 37.134594, 18.160015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.549679, 37.257111, 18.215799>,  <38.218529, 37.461308, 18.308775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549679, 37.257111, 18.215799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228304, -0.685180, 0.691669,
		-0.512350, -0.519548, -0.683789,
		0.827874, -0.510489, -0.232437,
		38.798042, 37.103966, 18.146069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965599, 36.839512, 18.250269>,  <38.218529, 37.461308, 18.308775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965599, 36.839512, 18.250269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.359440, 36.793335, 18.302767>,  <38.595745, 36.765629, 18.334265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.359440, 36.793335, 18.302767>,  <37.965599, 36.839512, 18.250269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359440, 36.793335, 18.302767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169329, -0.816186, 0.552421,
		0.043347, -0.566140, -0.823169,
		0.984606, -0.115441, 0.131243,
		38.654823, 36.758701, 18.342140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077919, 36.162327, 18.142962>,  <37.965599, 36.839512, 18.250269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077919, 36.162327, 18.142962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.385792, 36.269840, 18.374599>,  <38.570515, 36.334347, 18.513582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.385792, 36.269840, 18.374599>,  <38.077919, 36.162327, 18.142962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385792, 36.269840, 18.374599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203508, -0.756448, 0.621587,
		0.605127, -0.596273, -0.527523,
		0.769679, 0.268783, 0.579094,
		38.616695, 36.350475, 18.548328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328209, 35.519817, 18.405993>,  <38.077919, 36.162327, 18.142962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328209, 35.519817, 18.405993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.497292, 35.792480, 18.644876>,  <38.598743, 35.956078, 18.788208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.497292, 35.792480, 18.644876>,  <38.328209, 35.519817, 18.405993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497292, 35.792480, 18.644876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193282, -0.576011, 0.794263,
		0.885414, -0.451174, -0.111734,
		0.422711, 0.681655, 0.597212,
		38.624104, 35.996979, 18.824039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729733, 35.213299, 18.821159>,  <38.328209, 35.519817, 18.405993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729733, 35.213299, 18.821159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.640709, 35.545361, 19.025635>,  <38.587296, 35.744598, 19.148319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.640709, 35.545361, 19.025635>,  <38.729733, 35.213299, 18.821159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640709, 35.545361, 19.025635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129793, -0.544901, 0.828394,
		0.966242, 0.118016, 0.229019,
		-0.222556, 0.830154, 0.511189,
		38.573940, 35.794407, 19.178991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002651, 35.032768, 19.503401>,  <38.729733, 35.213299, 18.821159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002651, 35.032768, 19.503401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.750301, 35.340141, 19.546301>,  <38.598892, 35.524567, 19.572041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.750301, 35.340141, 19.546301>,  <39.002651, 35.032768, 19.503401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750301, 35.340141, 19.546301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133785, -0.243895, 0.960529,
		0.764263, 0.591626, 0.256672,
		-0.630875, 0.768436, 0.107250,
		38.561039, 35.570671, 19.578476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268082, 35.335461, 20.046709>,  <39.002651, 35.032768, 19.503401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268082, 35.335461, 20.046709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.904041, 35.500034, 20.026972>,  <38.685616, 35.598778, 20.015129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.904041, 35.500034, 20.026972>,  <39.268082, 35.335461, 20.046709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904041, 35.500034, 20.026972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098174, -0.098396, 0.990293,
		0.402584, 0.906113, 0.129942,
		-0.910103, 0.411433, -0.049345,
		38.631012, 35.623463, 20.012169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263157, 35.639259, 20.719282>,  <39.268082, 35.335461, 20.046709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263157, 35.639259, 20.719282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.885368, 35.654205, 20.588692>,  <38.658695, 35.663174, 20.510338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.885368, 35.654205, 20.588692>,  <39.263157, 35.639259, 20.719282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885368, 35.654205, 20.588692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324512, -0.262401, 0.908756,
		-0.051714, 0.964235, 0.259954,
		-0.944467, 0.037363, -0.326475,
		38.602028, 35.665413, 20.490749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995369, 36.130531, 21.067690>,  <39.263157, 35.639259, 20.719282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995369, 36.130531, 21.067690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.708908, 35.873577, 20.958529>,  <38.537033, 35.719406, 20.893032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.708908, 35.873577, 20.958529>,  <38.995369, 36.130531, 21.067690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708908, 35.873577, 20.958529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377859, 0.028099, 0.925437,
		-0.586816, 0.765869, -0.262853,
		-0.716150, -0.642382, -0.272901,
		38.494064, 35.680862, 20.876657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518383, 36.330441, 21.472879>,  <38.995369, 36.130531, 21.067690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518383, 36.330441, 21.472879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.405674, 35.965073, 21.355392>,  <38.338051, 35.745853, 21.284901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.405674, 35.965073, 21.355392>,  <38.518383, 36.330441, 21.472879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405674, 35.965073, 21.355392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434625, -0.151403, 0.887794,
		-0.855398, 0.377811, -0.354334,
		-0.281771, -0.913420, -0.293716,
		38.321144, 35.691048, 21.267277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873127, 36.385822, 21.463470>,  <38.518383, 36.330441, 21.472879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873127, 36.385822, 21.463470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.979263, 36.001656, 21.497417>,  <38.042946, 35.771156, 21.517786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.979263, 36.001656, 21.497417>,  <37.873127, 36.385822, 21.463470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979263, 36.001656, 21.497417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418704, -0.035491, 0.907429,
		-0.868494, -0.276313, -0.411546,
		0.265340, -0.960412, 0.084870,
		38.058865, 35.713531, 21.522879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364410, 36.118420, 21.865623>,  <37.873127, 36.385822, 21.463470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364410, 36.118420, 21.865623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.645058, 35.839676, 21.925112>,  <37.813446, 35.672432, 21.960804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.645058, 35.839676, 21.925112>,  <37.364410, 36.118420, 21.865623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645058, 35.839676, 21.925112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299736, -0.099287, 0.948842,
		-0.646440, -0.710305, -0.278535,
		0.701622, -0.696856, 0.148720,
		37.855545, 35.630619, 21.969728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773235, 35.658501, 21.635693>,  <37.364410, 36.118420, 21.865623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773235, 35.658501, 21.635693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.373322, 35.665695, 21.639900>,  <36.133373, 35.670013, 21.642424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.373322, 35.665695, 21.639900>,  <36.773235, 35.658501, 21.635693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373322, 35.665695, 21.639900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000021, 0.505602, -0.862767,
		-0.020838, -0.862579, -0.505493,
		-0.999783, 0.017989, 0.010518,
		36.073387, 35.671093, 21.643055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610691, 35.282246, 21.051567>,  <36.773235, 35.658501, 21.635693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610691, 35.282246, 21.051567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.314026, 35.536694, 21.136696>,  <36.136028, 35.689362, 21.187773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.314026, 35.536694, 21.136696>,  <36.610691, 35.282246, 21.051567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314026, 35.536694, 21.136696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015071, 0.333000, -0.942806,
		-0.670607, -0.696034, -0.256560,
		-0.741659, 0.636119, 0.212822,
		36.091530, 35.727528, 21.200542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260262, 35.397102, 20.438419>,  <36.610691, 35.282246, 21.051567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260262, 35.397102, 20.438419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.130779, 35.703667, 20.660347>,  <36.053089, 35.887608, 20.793503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.130779, 35.703667, 20.660347>,  <36.260262, 35.397102, 20.438419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130779, 35.703667, 20.660347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024983, 0.593111, -0.804733,
		-0.945827, -0.246637, -0.211142,
		-0.323707, 0.766414, 0.554819,
		36.033669, 35.933590, 20.826792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665234, 35.537296, 20.166897>,  <36.260262, 35.397102, 20.438419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665234, 35.537296, 20.166897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.766499, 35.880974, 20.344748>,  <35.827259, 36.087181, 20.451458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.766499, 35.880974, 20.344748>,  <35.665234, 35.537296, 20.166897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766499, 35.880974, 20.344748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165489, 0.491284, -0.855134,
		-0.953164, 0.142907, 0.266562,
		0.253163, 0.859196, 0.444625,
		35.842449, 36.138733, 20.478134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077599, 36.017818, 20.026779>,  <35.665234, 35.537296, 20.166897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077599, 36.017818, 20.026779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.404076, 36.238400, 20.095757>,  <35.599960, 36.370747, 20.137142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.404076, 36.238400, 20.095757>,  <35.077599, 36.017818, 20.026779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404076, 36.238400, 20.095757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228491, 0.582188, -0.780287,
		-0.530683, 0.597462, 0.601178,
		0.816191, 0.551449, 0.172442,
		35.648933, 36.403835, 20.147490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933289, 36.786266, 19.819193>,  <35.077599, 36.017818, 20.026779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933289, 36.786266, 19.819193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.331841, 36.752735, 19.824747>,  <35.570972, 36.732616, 19.828079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.331841, 36.752735, 19.824747>,  <34.933289, 36.786266, 19.819193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331841, 36.752735, 19.824747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044481, 0.375345, -0.925817,
		0.072393, 0.923087, 0.377717,
		0.996384, -0.083824, 0.013887,
		35.630756, 36.727589, 19.828913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213589, 37.383541, 19.525904>,  <34.933289, 36.786266, 19.819193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213589, 37.383541, 19.525904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.513512, 37.121910, 19.485941>,  <35.693466, 36.964931, 19.461964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.513512, 37.121910, 19.485941>,  <35.213589, 37.383541, 19.525904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513512, 37.121910, 19.485941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018894, 0.172099, -0.984899,
		0.661389, 0.736594, 0.141399,
		0.749805, -0.654073, -0.099907,
		35.738453, 36.925690, 19.455969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145851, 38.142269, 19.622393>,  <35.213589, 37.383541, 19.525904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145851, 38.142269, 19.622393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.759750, 38.246239, 19.611555>,  <34.528091, 38.308620, 19.605053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.759750, 38.246239, 19.611555>,  <35.145851, 38.142269, 19.622393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759750, 38.246239, 19.611555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110880, -0.313460, 0.943106,
		0.236645, 0.913335, 0.331388,
		-0.965248, 0.259926, -0.027092,
		34.470177, 38.324215, 19.603428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017345, 38.473869, 20.286152>,  <35.145851, 38.142269, 19.622393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017345, 38.473869, 20.286152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.676228, 38.343288, 20.123098>,  <34.471558, 38.264938, 20.025267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.676228, 38.343288, 20.123098>,  <35.017345, 38.473869, 20.286152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676228, 38.343288, 20.123098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267418, -0.397481, 0.877779,
		-0.448579, 0.857577, 0.251672,
		-0.852798, -0.326451, -0.407633,
		34.420387, 38.245354, 20.000809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385368, 38.717625, 20.645761>,  <35.017345, 38.473869, 20.286152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385368, 38.717625, 20.645761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.223106, 38.407368, 20.452337>,  <34.125751, 38.221214, 20.336283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.223106, 38.407368, 20.452337>,  <34.385368, 38.717625, 20.645761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223106, 38.407368, 20.452337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493256, -0.259630, 0.830235,
		-0.769510, 0.575305, -0.277269,
		-0.405652, -0.775639, -0.483560,
		34.101410, 38.174675, 20.307270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673626, 38.779598, 20.792870>,  <34.385368, 38.717625, 20.645761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673626, 38.779598, 20.792870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745110, 38.403271, 20.677687>,  <33.787998, 38.177475, 20.608578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745110, 38.403271, 20.677687>,  <33.673626, 38.779598, 20.792870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745110, 38.403271, 20.677687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511793, -0.338844, 0.789464,
		-0.840317, 0.006290, -0.542060,
		0.178708, -0.940822, -0.287955,
		33.798721, 38.121025, 20.591301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051380, 38.502483, 20.789371>,  <33.673626, 38.779598, 20.792870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051380, 38.502483, 20.789371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312061, 38.199753, 20.809393>,  <33.468468, 38.018116, 20.821405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312061, 38.199753, 20.809393>,  <33.051380, 38.502483, 20.789371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312061, 38.199753, 20.809393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462512, -0.344231, 0.817061,
		-0.601141, -0.555629, -0.574375,
		0.651700, -0.756823, 0.050053,
		33.507572, 37.972706, 20.824409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682594, 37.964401, 20.865726>,  <33.051380, 38.502483, 20.789371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682594, 37.964401, 20.865726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038937, 37.836670, 20.994976>,  <33.252743, 37.760029, 21.072527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038937, 37.836670, 20.994976>,  <32.682594, 37.964401, 20.865726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038937, 37.836670, 20.994976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439733, -0.427493, 0.789864,
		-0.114096, -0.845740, -0.521254,
		0.890852, -0.319333, 0.323125,
		33.306190, 37.740871, 21.091913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565189, 37.298912, 21.243547>,  <32.682594, 37.964401, 20.865726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565189, 37.298912, 21.243547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.930183, 37.400478, 21.371859>,  <33.149181, 37.461418, 21.448845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.930183, 37.400478, 21.371859>,  <32.565189, 37.298912, 21.243547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930183, 37.400478, 21.371859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220828, -0.354363, 0.908660,
		0.344393, -0.899975, -0.267280,
		0.912485, 0.253913, 0.320780,
		33.203930, 37.476650, 21.468092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.751675, 40.477139, 18.260513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.089008, 40.263454, 18.283876>,  <37.291409, 40.135246, 18.297894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.089008, 40.263454, 18.283876>,  <36.751675, 40.477139, 18.260513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089008, 40.263454, 18.283876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257098, 0.496519, 0.829077,
		-0.471900, -0.684172, 0.556075,
		0.843333, -0.534207, 0.058408,
		37.342007, 40.103191, 18.301399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833649, 40.050964, 18.937828>,  <36.751675, 40.477139, 18.260513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833649, 40.050964, 18.937828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.186028, 40.190552, 18.809982>,  <37.397453, 40.274303, 18.733274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.186028, 40.190552, 18.809982>,  <36.833649, 40.050964, 18.937828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186028, 40.190552, 18.809982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068218, 0.574709, 0.815509,
		0.468270, -0.740225, 0.482483,
		0.880948, 0.348964, -0.319616,
		37.450314, 40.295242, 18.714098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356449, 39.799236, 19.421200>,  <36.833649, 40.050964, 18.937828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356449, 39.799236, 19.421200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.542152, 40.108288, 19.247990>,  <37.653576, 40.293716, 19.144064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.542152, 40.108288, 19.247990>,  <37.356449, 39.799236, 19.421200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542152, 40.108288, 19.247990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138257, 0.419694, 0.897074,
		0.874841, -0.476345, 0.088027,
		0.464261, 0.772627, -0.433023,
		37.681431, 40.340076, 19.118082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015488, 39.812061, 19.700945>,  <37.356449, 39.799236, 19.421200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015488, 39.812061, 19.700945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.939621, 40.182468, 19.570395>,  <37.894100, 40.404713, 19.492064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.939621, 40.182468, 19.570395>,  <38.015488, 39.812061, 19.700945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939621, 40.182468, 19.570395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182612, 0.359879, 0.914953,
		0.964718, 0.113934, -0.237358,
		-0.189665, 0.926016, -0.326376,
		37.882721, 40.460274, 19.472481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603004, 40.240349, 19.909542>,  <38.015488, 39.812061, 19.700945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603004, 40.240349, 19.909542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.308262, 40.500137, 19.834463>,  <38.131416, 40.656010, 19.789415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.308262, 40.500137, 19.834463>,  <38.603004, 40.240349, 19.909542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308262, 40.500137, 19.834463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063518, 0.342919, 0.937215,
		0.673058, 0.678672, -0.293935,
		-0.736857, 0.649470, -0.187697,
		38.087204, 40.694977, 19.778154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882366, 40.857029, 20.152023>,  <38.603004, 40.240349, 19.909542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882366, 40.857029, 20.152023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.487705, 40.915081, 20.122492>,  <38.250908, 40.949913, 20.104773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.487705, 40.915081, 20.122492>,  <38.882366, 40.857029, 20.152023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487705, 40.915081, 20.122492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009964, 0.506369, 0.862259,
		0.162524, 0.850016, -0.501057,
		-0.986654, 0.145130, -0.073827,
		38.191708, 40.958622, 20.100344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873264, 41.608601, 20.300215>,  <38.882366, 40.857029, 20.152023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873264, 41.608601, 20.300215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.524769, 41.420616, 20.356892>,  <38.315670, 41.307827, 20.390898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.524769, 41.420616, 20.356892>,  <38.873264, 41.608601, 20.300215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524769, 41.420616, 20.356892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056349, 0.382513, 0.922230,
		-0.487611, 0.795501, -0.359743,
		-0.871241, -0.469960, 0.141692,
		38.263397, 41.279629, 20.399399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479233, 42.124615, 20.710102>,  <38.873264, 41.608601, 20.300215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479233, 42.124615, 20.710102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.315857, 41.763809, 20.766026>,  <38.217831, 41.547325, 20.799580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.315857, 41.763809, 20.766026>,  <38.479233, 42.124615, 20.710102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315857, 41.763809, 20.766026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277952, 0.268798, 0.922220,
		-0.869436, 0.337813, -0.360505,
		-0.408441, -0.902014, 0.139807,
		38.193325, 41.493206, 20.807968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750668, 42.325542, 20.959587>,  <38.479233, 42.124615, 20.710102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750668, 42.325542, 20.959587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.842358, 41.953556, 21.074556>,  <37.897373, 41.730362, 21.143538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.842358, 41.953556, 21.074556>,  <37.750668, 42.325542, 20.959587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842358, 41.953556, 21.074556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242472, 0.231420, 0.942153,
		-0.942690, -0.285656, -0.172444,
		0.229225, -0.929971, 0.287421,
		37.911125, 41.674564, 21.160782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547379, 42.330013, 21.675442>,  <37.750668, 42.325542, 20.959587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547379, 42.330013, 21.675442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.690285, 41.957081, 21.653116>,  <37.776028, 41.733322, 21.639721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.690285, 41.957081, 21.653116>,  <37.547379, 42.330013, 21.675442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690285, 41.957081, 21.653116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049079, -0.078416, 0.995712,
		-0.932712, -0.352995, -0.073773,
		0.357266, -0.932333, -0.055815,
		37.797466, 41.677380, 21.636372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045139, 41.738663, 21.716488>,  <37.547379, 42.330013, 21.675442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045139, 41.738663, 21.716488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.399063, 41.621872, 21.861738>,  <37.611420, 41.551800, 21.948889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.399063, 41.621872, 21.861738>,  <37.045139, 41.738663, 21.716488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399063, 41.621872, 21.861738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390414, -0.039177, 0.919805,
		-0.254334, -0.955623, -0.148655,
		0.884812, -0.291975, 0.363125,
		37.664505, 41.534279, 21.970676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886490, 41.227745, 22.255184>,  <37.045139, 41.738663, 21.716488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886490, 41.227745, 22.255184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.259056, 41.345783, 22.340405>,  <37.482594, 41.416607, 22.391537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.259056, 41.345783, 22.340405>,  <36.886490, 41.227745, 22.255184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259056, 41.345783, 22.340405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176708, -0.145096, 0.973510,
		0.318191, -0.944387, -0.082999,
		0.931412, 0.295095, 0.213049,
		37.538479, 41.434311, 22.404320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524220, 40.615593, 22.193230>,  <36.886490, 41.227745, 22.255184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524220, 40.615593, 22.193230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.153130, 40.738094, 22.278591>,  <35.930477, 40.811596, 22.329807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.153130, 40.738094, 22.278591>,  <36.524220, 40.615593, 22.193230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153130, 40.738094, 22.278591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063514, 0.433860, -0.898739,
		-0.367825, -0.847335, -0.383051,
		-0.927723, 0.306250, 0.213403,
		35.874813, 40.829967, 22.342611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105892, 40.297642, 21.590843>,  <36.524220, 40.615593, 22.193230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105892, 40.297642, 21.590843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.900524, 40.583305, 21.781157>,  <35.777302, 40.754704, 21.895344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.900524, 40.583305, 21.781157>,  <36.105892, 40.297642, 21.590843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900524, 40.583305, 21.781157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292943, 0.375270, -0.879407,
		-0.806586, -0.590886, 0.016536,
		-0.513424, 0.714162, 0.475783,
		35.746498, 40.797554, 21.923891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679073, 40.394661, 21.155968>,  <36.105892, 40.297642, 21.590843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679073, 40.394661, 21.155968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.611786, 40.715378, 21.385344>,  <35.571415, 40.907806, 21.522968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.611786, 40.715378, 21.385344>,  <35.679073, 40.394661, 21.155968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611786, 40.715378, 21.385344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398977, 0.476571, -0.783388,
		-0.901399, -0.360568, 0.239730,
		-0.168217, 0.801792, 0.573440,
		35.561321, 40.955914, 21.557375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894611, 40.548393, 21.078459>,  <35.679073, 40.394661, 21.155968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894611, 40.548393, 21.078459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.079330, 40.891911, 21.167191>,  <35.190163, 41.098022, 21.220430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.079330, 40.891911, 21.167191>,  <34.894611, 40.548393, 21.078459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079330, 40.891911, 21.167191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290303, 0.382660, -0.877095,
		-0.838133, 0.340643, 0.426023,
		0.461798, 0.858798, 0.221830,
		35.217869, 41.149551, 21.233740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358513, 41.055679, 20.973577>,  <34.894611, 40.548393, 21.078459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358513, 41.055679, 20.973577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.718563, 41.229847, 20.968065>,  <34.934593, 41.334347, 20.964758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.718563, 41.229847, 20.968065>,  <34.358513, 41.055679, 20.973577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718563, 41.229847, 20.968065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198820, 0.382462, -0.902327,
		-0.387617, 0.814946, 0.430833,
		0.900124, 0.435415, -0.013779,
		34.988602, 41.360470, 20.963932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267178, 41.806725, 20.791216>,  <34.358513, 41.055679, 20.973577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267178, 41.806725, 20.791216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.658958, 41.756947, 20.727732>,  <34.894028, 41.727077, 20.689642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.658958, 41.756947, 20.727732>,  <34.267178, 41.806725, 20.791216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658958, 41.756947, 20.727732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053978, 0.596471, -0.800817,
		0.194326, 0.792928, 0.577497,
		0.979451, -0.124447, -0.158710,
		34.952793, 41.719612, 20.680119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513878, 42.431015, 20.664433>,  <34.267178, 41.806725, 20.791216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513878, 42.431015, 20.664433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.777977, 42.176853, 20.504261>,  <34.936436, 42.024357, 20.408157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.777977, 42.176853, 20.504261>,  <34.513878, 42.431015, 20.664433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777977, 42.176853, 20.504261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003487, 0.535747, -0.844371,
		0.751042, 0.556095, 0.355940,
		0.660245, -0.635400, -0.400429,
		34.976051, 41.986233, 20.384132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976910, 42.910870, 20.202257>,  <34.513878, 42.431015, 20.664433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976910, 42.910870, 20.202257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.052029, 42.533436, 20.093161>,  <35.097099, 42.306976, 20.027702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.052029, 42.533436, 20.093161>,  <34.976910, 42.910870, 20.202257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052029, 42.533436, 20.093161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002022, 0.277308, -0.960779,
		0.982206, 0.180980, 0.050169,
		0.187795, -0.943582, -0.272740,
		35.108368, 42.250362, 20.011339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468231, 42.905285, 19.677998>,  <34.976910, 42.910870, 20.202257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468231, 42.905285, 19.677998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.255505, 42.573727, 19.608603>,  <35.127869, 42.374790, 19.566965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.255505, 42.573727, 19.608603>,  <35.468231, 42.905285, 19.677998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255505, 42.573727, 19.608603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011335, 0.211808, -0.977246,
		0.846784, -0.517749, -0.122038,
		-0.531817, -0.828899, -0.173487,
		35.095959, 42.325058, 19.556557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717026, 42.702702, 19.049065>,  <35.468231, 42.905285, 19.677998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717026, 42.702702, 19.049065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.381371, 42.489082, 19.090330>,  <35.179977, 42.360912, 19.115089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.381371, 42.489082, 19.090330>,  <35.717026, 42.702702, 19.049065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381371, 42.489082, 19.090330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205080, 0.134973, -0.969394,
		0.503779, -0.834610, -0.222783,
		-0.839136, -0.534049, 0.103165,
		35.129631, 42.328869, 19.121279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697586, 42.191025, 18.459600>,  <35.717026, 42.702702, 19.049065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697586, 42.191025, 18.459600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.339924, 42.295273, 18.605238>,  <35.125328, 42.357822, 18.692621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.339924, 42.295273, 18.605238>,  <35.697586, 42.191025, 18.459600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339924, 42.295273, 18.605238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315643, 0.209852, -0.925382,
		-0.317578, -0.942359, -0.105378,
		-0.894155, 0.260619, 0.364094,
		35.071678, 42.373459, 18.714466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151897, 41.768353, 18.018917>,  <35.697586, 42.191025, 18.459600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151897, 41.768353, 18.018917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.967461, 42.082684, 18.183775>,  <34.856800, 42.271282, 18.282690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.967461, 42.082684, 18.183775>,  <35.151897, 41.768353, 18.018917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967461, 42.082684, 18.183775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442316, 0.199107, -0.874479,
		-0.769253, -0.585515, 0.255779,
		-0.461093, 0.785830, 0.412146,
		34.829132, 42.318432, 18.307419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519138, 41.747711, 17.697586>,  <35.151897, 41.768353, 18.018917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519138, 41.747711, 17.697586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.530754, 42.114986, 17.855616>,  <34.537724, 42.335354, 17.950434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.530754, 42.114986, 17.855616>,  <34.519138, 41.747711, 17.697586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530754, 42.114986, 17.855616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530513, 0.349137, -0.772437,
		-0.847179, -0.187158, 0.497252,
		0.029041, 0.918191, 0.395072,
		34.539467, 42.390442, 17.974136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413364, 41.054798, 17.677229>,  <34.519138, 41.747711, 17.697586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413364, 41.054798, 17.677229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.294804, 40.775379, 17.416712>,  <34.223667, 40.607727, 17.260401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.294804, 40.775379, 17.416712>,  <34.413364, 41.054798, 17.677229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294804, 40.775379, 17.416712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038032, -0.672765, 0.738878,
		-0.954307, 0.243773, 0.172839,
		-0.296398, -0.698543, -0.651295,
		34.205883, 40.565815, 17.221323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963047, 40.675705, 18.040882>,  <34.413364, 41.054798, 17.677229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963047, 40.675705, 18.040882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.019142, 40.424286, 17.734873>,  <34.052799, 40.273434, 17.551268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.019142, 40.424286, 17.734873>,  <33.963047, 40.675705, 18.040882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019142, 40.424286, 17.734873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113402, -0.777769, 0.618235,
		-0.983602, 0.000053, -0.180355,
		0.140242, -0.628550, -0.765021,
		34.061214, 40.235722, 17.505367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413372, 40.294853, 18.026537>,  <33.963047, 40.675705, 18.040882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413372, 40.294853, 18.026537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.686951, 40.071186, 17.839111>,  <33.851097, 39.936985, 17.726656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.686951, 40.071186, 17.839111>,  <33.413372, 40.294853, 18.026537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686951, 40.071186, 17.839111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013460, -0.651842, 0.758236,
		-0.729407, -0.512287, -0.453352,
		0.683948, -0.559164, -0.468562,
		33.892136, 39.903439, 17.698544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174038, 39.549633, 18.128355>,  <33.413372, 40.294853, 18.026537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174038, 39.549633, 18.128355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.567719, 39.560196, 18.058331>,  <33.803928, 39.566532, 18.016315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.567719, 39.560196, 18.058331>,  <33.174038, 39.549633, 18.128355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567719, 39.560196, 18.058331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140634, -0.717265, 0.682461,
		-0.107542, -0.696300, -0.709648,
		0.984204, 0.026407, -0.175059,
		33.862980, 39.568119, 18.005814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353184, 38.845249, 18.185719>,  <33.174038, 39.549633, 18.128355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353184, 38.845249, 18.185719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.723660, 38.995243, 18.201492>,  <33.945946, 39.085239, 18.210957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.723660, 38.995243, 18.201492>,  <33.353184, 38.845249, 18.185719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723660, 38.995243, 18.201492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225244, -0.634130, 0.739692,
		0.302377, -0.676215, -0.671790,
		0.926193, 0.374982, 0.039433,
		34.001518, 39.107738, 18.213322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766159, 38.277645, 18.365602>,  <33.353184, 38.845249, 18.185719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766159, 38.277645, 18.365602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.019367, 38.577438, 18.443129>,  <34.171291, 38.757313, 18.489643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.019367, 38.577438, 18.443129>,  <33.766159, 38.277645, 18.365602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019367, 38.577438, 18.443129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322119, -0.482673, 0.814411,
		0.703933, -0.453110, -0.546965,
		0.633023, 0.749478, 0.193814,
		34.209274, 38.802280, 18.501272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408939, 37.945122, 18.423464>,  <33.766159, 38.277645, 18.365602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408939, 37.945122, 18.423464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.378647, 38.294243, 18.616331>,  <34.360470, 38.503716, 18.732052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.378647, 38.294243, 18.616331>,  <34.408939, 37.945122, 18.423464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378647, 38.294243, 18.616331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087621, -0.475862, 0.875145,
		0.993271, 0.108524, -0.040438,
		-0.075731, 0.872799, 0.482169,
		34.355927, 38.556084, 18.760983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002167, 37.989464, 18.928228>,  <34.408939, 37.945122, 18.423464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002167, 37.989464, 18.928228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.714256, 38.241550, 19.044674>,  <34.541508, 38.392803, 19.114542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.714256, 38.241550, 19.044674>,  <35.002167, 37.989464, 18.928228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714256, 38.241550, 19.044674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036074, -0.452739, 0.890913,
		0.693265, 0.630759, 0.348607,
		-0.719779, 0.630214, 0.291115,
		34.498322, 38.430614, 19.132008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685070, 37.706905, 18.996742>,  <35.002167, 37.989464, 18.928228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685070, 37.706905, 18.996742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.824677, 37.334152, 19.036303>,  <35.908440, 37.110500, 19.060038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.824677, 37.334152, 19.036303>,  <35.685070, 37.706905, 18.996742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824677, 37.334152, 19.036303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236271, -0.014623, -0.971577,
		0.906844, 0.362461, 0.215073,
		0.349014, -0.931884, 0.098900,
		35.929382, 37.054588, 19.065973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297707, 37.669376, 18.659937>,  <35.685070, 37.706905, 18.996742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297707, 37.669376, 18.659937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.228668, 37.275482, 18.668909>,  <36.187244, 37.039146, 18.674292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.228668, 37.275482, 18.668909>,  <36.297707, 37.669376, 18.659937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228668, 37.275482, 18.668909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060133, -0.033265, -0.997636,
		0.983155, -0.170841, 0.064957,
		-0.172598, -0.984737, 0.022431,
		36.176888, 36.980061, 18.675638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695583, 37.402107, 18.269238>,  <36.297707, 37.669376, 18.659937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695583, 37.402107, 18.269238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.435452, 37.098282, 18.273981>,  <36.279373, 36.915989, 18.276827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.435452, 37.098282, 18.273981>,  <36.695583, 37.402107, 18.269238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435452, 37.098282, 18.273981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127191, -0.124266, -0.984063,
		0.748930, -0.638455, 0.177423,
		-0.650328, -0.759561, 0.011860,
		36.240353, 36.870415, 18.277538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001469, 36.759781, 17.980387>,  <36.695583, 37.402107, 18.269238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001469, 36.759781, 17.980387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.603512, 36.743824, 17.943306>,  <36.364738, 36.734249, 17.921057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.603512, 36.743824, 17.943306>,  <37.001469, 36.759781, 17.980387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603512, 36.743824, 17.943306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099978, -0.264239, -0.959261,
		0.013775, -0.963632, 0.266879,
		-0.994894, -0.039896, -0.092702,
		36.305042, 36.731853, 17.915495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896545, 36.123348, 17.604128>,  <37.001469, 36.759781, 17.980387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896545, 36.123348, 17.604128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.580463, 36.364803, 17.561794>,  <36.390816, 36.509674, 17.536394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.580463, 36.364803, 17.561794>,  <36.896545, 36.123348, 17.604128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580463, 36.364803, 17.561794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072452, -0.079468, -0.994201,
		-0.608544, -0.793291, 0.019061,
		-0.790205, 0.603634, -0.105835,
		36.343403, 36.545895, 17.530045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352703, 35.867157, 17.067665>,  <36.896545, 36.123348, 17.604128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352703, 35.867157, 17.067665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.253307, 36.253994, 17.089481>,  <36.193668, 36.486099, 17.102571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.253307, 36.253994, 17.089481>,  <36.352703, 35.867157, 17.067665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253307, 36.253994, 17.089481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081865, 0.077074, -0.993659,
		-0.965168, -0.242451, -0.098323,
		-0.248492, 0.967097, 0.054541,
		36.178761, 36.544125, 17.105844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795341, 35.983543, 16.524532>,  <36.352703, 35.867157, 17.067665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795341, 35.983543, 16.524532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.981110, 36.325932, 16.615416>,  <36.092571, 36.531364, 16.669945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.981110, 36.325932, 16.615416>,  <35.795341, 35.983543, 16.524532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981110, 36.325932, 16.615416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195898, 0.150908, -0.968943,
		-0.863677, 0.494507, -0.097599,
		0.464421, 0.855973, 0.227208,
		36.120438, 36.582722, 16.683578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714821, 36.392208, 15.984076>,  <35.795341, 35.983543, 16.524532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714821, 36.392208, 15.984076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.995167, 36.610569, 16.167721>,  <36.163372, 36.741585, 16.277906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.995167, 36.610569, 16.167721>,  <35.714821, 36.392208, 15.984076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995167, 36.610569, 16.167721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260826, 0.402935, -0.877276,
		-0.663898, 0.734598, 0.140017,
		0.700863, 0.545902, 0.459111,
		36.205425, 36.774338, 16.305454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561264, 37.031139, 15.861605>,  <35.714821, 36.392208, 15.984076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561264, 37.031139, 15.861605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.954079, 37.041031, 15.936423>,  <36.189770, 37.046967, 15.981315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.954079, 37.041031, 15.936423>,  <35.561264, 37.031139, 15.861605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954079, 37.041031, 15.936423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141936, 0.556321, -0.818756,
		-0.124309, 0.830599, 0.542819,
		0.982040, 0.024733, 0.187047,
		36.248692, 37.048450, 15.992537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.041115, 34.924492, 31.681976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.440056, 34.953094, 31.687304>,  <35.679420, 34.970257, 31.690500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.440056, 34.953094, 31.687304>,  <35.041115, 34.924492, 31.681976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440056, 34.953094, 31.687304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002187, 0.153559, -0.988137,
		-0.072699, 0.985549, 0.152996,
		0.997352, 0.071502, 0.013319,
		35.739262, 34.974545, 31.691299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128757, 35.525639, 31.321104>,  <35.041115, 34.924492, 31.681976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128757, 35.525639, 31.321104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.457115, 35.301350, 31.277779>,  <35.654129, 35.166779, 31.251783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.457115, 35.301350, 31.277779>,  <35.128757, 35.525639, 31.321104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457115, 35.301350, 31.277779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072986, 0.291112, -0.953901,
		0.566401, 0.775144, 0.279896,
		0.820892, -0.560719, -0.108311,
		35.703384, 35.133133, 31.245285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665417, 35.923374, 30.953722>,  <35.128757, 35.525639, 31.321104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665417, 35.923374, 30.953722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778534, 35.540733, 30.925585>,  <35.846405, 35.311150, 30.908703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778534, 35.540733, 30.925585>,  <35.665417, 35.923374, 30.953722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778534, 35.540733, 30.925585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210442, 0.133427, -0.968458,
		0.935812, 0.259066, 0.239040,
		0.282789, -0.956599, -0.070344,
		35.863369, 35.253754, 30.904482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251209, 35.923496, 30.455040>,  <35.665417, 35.923374, 30.953722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251209, 35.923496, 30.455040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097511, 35.554478, 30.469276>,  <36.005291, 35.333069, 30.477819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097511, 35.554478, 30.469276>,  <36.251209, 35.923496, 30.455040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097511, 35.554478, 30.469276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092069, -0.000070, -0.995752,
		0.918628, -0.385891, -0.084911,
		-0.384246, -0.922544, 0.035593,
		35.982239, 35.277714, 30.479954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559498, 35.706390, 29.824800>,  <36.251209, 35.923496, 30.455040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559498, 35.706390, 29.824800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.263134, 35.457901, 29.926891>,  <36.085316, 35.308807, 29.988146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.263134, 35.457901, 29.926891>,  <36.559498, 35.706390, 29.824800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263134, 35.457901, 29.926891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282882, -0.056014, -0.957518,
		0.609127, -0.781630, -0.134231,
		-0.740906, -0.621222, 0.255229,
		36.040863, 35.271534, 30.003460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613228, 35.161835, 29.343189>,  <36.559498, 35.706390, 29.824800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613228, 35.161835, 29.343189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234818, 35.129410, 29.468700>,  <36.007771, 35.109955, 29.544006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234818, 35.129410, 29.468700>,  <36.613228, 35.161835, 29.343189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234818, 35.129410, 29.468700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309347, -0.062716, -0.948879,
		0.096601, -0.994734, 0.034253,
		-0.946030, -0.081067, 0.313776,
		35.951008, 35.105091, 29.562834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344036, 34.602169, 29.043093>,  <36.613228, 35.161835, 29.343189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344036, 34.602169, 29.043093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.010906, 34.790443, 29.159615>,  <35.811028, 34.903408, 29.229527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.010906, 34.790443, 29.159615>,  <36.344036, 34.602169, 29.043093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010906, 34.790443, 29.159615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356466, -0.053439, -0.932779,
		-0.423480, -0.880681, 0.212289,
		-0.832825, 0.470687, 0.291302,
		35.761059, 34.931648, 29.247005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779011, 34.111004, 28.971512>,  <36.344036, 34.602169, 29.043093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779011, 34.111004, 28.971512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646931, 34.488487, 28.963762>,  <35.567684, 34.714977, 28.959112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646931, 34.488487, 28.963762>,  <35.779011, 34.111004, 28.971512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646931, 34.488487, 28.963762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300930, -0.124705, -0.945458,
		-0.894657, -0.306356, 0.325168,
		-0.330197, 0.943713, -0.019376,
		35.547871, 34.771603, 28.957949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113068, 34.018723, 28.662970>,  <35.779011, 34.111004, 28.971512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113068, 34.018723, 28.662970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231892, 34.399853, 28.638044>,  <35.303185, 34.628532, 28.623089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231892, 34.399853, 28.638044>,  <35.113068, 34.018723, 28.662970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231892, 34.399853, 28.638044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218464, 0.004294, -0.975835,
		-0.929532, 0.303492, 0.209434,
		0.297058, 0.952824, -0.062311,
		35.321011, 34.685699, 28.619350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535255, 34.401051, 28.364958>,  <35.113068, 34.018723, 28.662970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535255, 34.401051, 28.364958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866405, 34.612743, 28.290619>,  <35.065094, 34.739761, 28.246016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866405, 34.612743, 28.290619>,  <34.535255, 34.401051, 28.364958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866405, 34.612743, 28.290619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302230, 0.141754, -0.942636,
		-0.472530, 0.836551, 0.277305,
		0.827872, 0.529234, -0.185848,
		35.114769, 34.771515, 28.234865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220467, 34.883801, 27.965199>,  <34.535255, 34.401051, 28.364958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220467, 34.883801, 27.965199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609974, 34.910450, 27.878180>,  <34.843681, 34.926441, 27.825968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609974, 34.910450, 27.878180>,  <34.220467, 34.883801, 27.965199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609974, 34.910450, 27.878180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224734, 0.132440, -0.965378,
		-0.035506, 0.988949, 0.143939,
		0.973773, 0.066625, -0.217549,
		34.902107, 34.930439, 27.812916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256897, 35.423904, 27.470667>,  <34.220467, 34.883801, 27.965199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256897, 35.423904, 27.470667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610844, 35.239830, 27.441687>,  <34.823212, 35.129387, 27.424299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610844, 35.239830, 27.441687>,  <34.256897, 35.423904, 27.470667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610844, 35.239830, 27.441687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088307, 0.318396, -0.943836,
		0.457404, 0.828768, 0.322375,
		0.884864, -0.460182, -0.072449,
		34.876305, 35.101776, 27.419952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941563, 36.201500, 27.418919>,  <34.256897, 35.423904, 27.470667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941563, 36.201500, 27.418919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.547493, 36.261715, 27.386017>,  <33.311050, 36.297844, 27.366276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.547493, 36.261715, 27.386017>,  <33.941563, 36.201500, 27.418919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547493, 36.261715, 27.386017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063412, 0.125947, 0.990008,
		0.159396, 0.980548, -0.114534,
		-0.985176, 0.150541, -0.082254,
		33.251942, 36.306877, 27.361341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958103, 36.817440, 27.746874>,  <33.941563, 36.201500, 27.418919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958103, 36.817440, 27.746874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593189, 36.653732, 27.752907>,  <33.374241, 36.555508, 27.756527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593189, 36.653732, 27.752907>,  <33.958103, 36.817440, 27.746874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593189, 36.653732, 27.752907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035837, 0.116455, 0.992549,
		-0.407977, 0.904951, -0.120908,
		-0.912289, -0.409270, 0.015080,
		33.319504, 36.530952, 27.757431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519718, 37.346779, 27.985079>,  <33.958103, 36.817440, 27.746874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519718, 37.346779, 27.985079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.357998, 36.991726, 28.073299>,  <33.260967, 36.778694, 28.126232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.357998, 36.991726, 28.073299>,  <33.519718, 37.346779, 27.985079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357998, 36.991726, 28.073299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314399, 0.361320, 0.877839,
		-0.858891, 0.285570, -0.425154,
		-0.404301, -0.887636, 0.220551,
		33.236706, 36.725433, 28.139465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988209, 37.480167, 28.506004>,  <33.519718, 37.346779, 27.985079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988209, 37.480167, 28.506004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.030640, 37.084465, 28.546255>,  <33.056099, 36.847046, 28.570406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.030640, 37.084465, 28.546255>,  <32.988209, 37.480167, 28.506004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030640, 37.084465, 28.546255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286624, 0.066483, 0.955734,
		-0.952153, -0.130221, -0.276492,
		0.106075, -0.989254, 0.100626,
		33.062462, 36.787689, 28.576443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382729, 37.287956, 28.988327>,  <32.988209, 37.480167, 28.506004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382729, 37.287956, 28.988327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638466, 36.980450, 28.994635>,  <32.791908, 36.795948, 28.998419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638466, 36.980450, 28.994635>,  <32.382729, 37.287956, 28.988327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638466, 36.980450, 28.994635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213148, -0.157488, 0.964244,
		-0.738791, -0.619840, -0.264548,
		0.639340, -0.768762, 0.015767,
		32.830269, 36.749821, 28.999365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025501, 36.773899, 29.283384>,  <32.382729, 37.287956, 28.988327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025501, 36.773899, 29.283384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.398327, 36.638775, 29.335758>,  <32.622021, 36.557701, 29.367182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.398327, 36.638775, 29.335758>,  <32.025501, 36.773899, 29.283384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398327, 36.638775, 29.335758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191966, -0.153978, 0.969247,
		-0.307266, -0.928532, -0.208366,
		0.932061, -0.337816, 0.130934,
		32.677944, 36.537430, 29.375038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957701, 36.320396, 29.695486>,  <32.025501, 36.773899, 29.283384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957701, 36.320396, 29.695486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350323, 36.390739, 29.725483>,  <32.585896, 36.432945, 29.743481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350323, 36.390739, 29.725483>,  <31.957701, 36.320396, 29.695486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350323, 36.390739, 29.725483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014338, -0.323442, 0.946139,
		0.190643, -0.929763, -0.314955,
		0.981555, 0.175859, 0.074993,
		32.644791, 36.443497, 29.747980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280350, 35.706764, 29.961367>,  <31.957701, 36.320396, 29.695486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280350, 35.706764, 29.961367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.492954, 36.027725, 30.069916>,  <32.620518, 36.220303, 30.135046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.492954, 36.027725, 30.069916>,  <32.280350, 35.706764, 29.961367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492954, 36.027725, 30.069916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018269, -0.309441, 0.950743,
		0.846853, -0.510290, -0.149813,
		0.531513, 0.802403, 0.271373,
		32.652409, 36.268448, 30.151327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803314, 35.480152, 30.376661>,  <32.280350, 35.706764, 29.961367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803314, 35.480152, 30.376661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.811848, 35.873528, 30.448662>,  <32.816967, 36.109550, 30.491861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.811848, 35.873528, 30.448662>,  <32.803314, 35.480152, 30.376661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811848, 35.873528, 30.448662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162588, -0.181057, 0.969940,
		0.986463, 0.008571, -0.163758,
		0.021337, 0.983435, 0.180000,
		32.818249, 36.168556, 30.502663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351864, 35.507523, 30.829010>,  <32.803314, 35.480152, 30.376661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351864, 35.507523, 30.829010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168312, 35.855740, 30.900091>,  <33.058182, 36.064671, 30.942739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168312, 35.855740, 30.900091>,  <33.351864, 35.507523, 30.829010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168312, 35.855740, 30.900091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117439, -0.138822, 0.983329,
		0.880703, 0.472099, -0.038533,
		-0.458880, 0.870546, 0.177704,
		33.030647, 36.116905, 30.953402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686886, 35.694721, 31.324057>,  <33.351864, 35.507523, 30.829010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686886, 35.694721, 31.324057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371811, 35.938362, 31.361036>,  <33.182766, 36.084545, 31.383224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371811, 35.938362, 31.361036>,  <33.686886, 35.694721, 31.324057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371811, 35.938362, 31.361036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008995, -0.138678, 0.990297,
		0.616011, 0.780875, 0.103756,
		-0.787686, 0.609100, 0.092451,
		33.135506, 36.121094, 31.388771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830040, 36.279556, 31.796963>,  <33.686886, 35.694721, 31.324057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830040, 36.279556, 31.796963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431252, 36.248756, 31.801220>,  <33.191978, 36.230278, 31.803774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431252, 36.248756, 31.801220>,  <33.830040, 36.279556, 31.796963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431252, 36.248756, 31.801220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014630, -0.051408, 0.998571,
		-0.076340, 0.995705, 0.052379,
		-0.996974, -0.076998, 0.010643,
		33.132160, 36.225658, 31.804413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609108, 36.722576, 32.242920>,  <33.830040, 36.279556, 31.796963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609108, 36.722576, 32.242920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.312210, 36.454948, 32.227852>,  <33.134071, 36.294373, 32.218811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.312210, 36.454948, 32.227852>,  <33.609108, 36.722576, 32.242920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312210, 36.454948, 32.227852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043902, -0.007545, 0.999007,
		-0.668691, 0.743160, -0.023773,
		-0.742243, -0.669071, -0.037672,
		33.089539, 36.254227, 32.216549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091976, 37.020088, 32.646473>,  <33.609108, 36.722576, 32.242920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091976, 37.020088, 32.646473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009872, 36.628777, 32.634892>,  <32.960609, 36.393990, 32.627941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009872, 36.628777, 32.634892>,  <33.091976, 37.020088, 32.646473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009872, 36.628777, 32.634892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021924, -0.034177, 0.999175,
		-0.978461, 0.204459, 0.028463,
		-0.205263, -0.978278, -0.028958,
		32.948292, 36.335293, 32.626205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629658, 37.396484, 32.507793>,  <33.091976, 37.020088, 32.646473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629658, 37.396484, 32.507793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.736675, 37.781307, 32.486382>,  <33.800884, 38.012203, 32.473534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.736675, 37.781307, 32.486382>,  <33.629658, 37.396484, 32.507793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736675, 37.781307, 32.486382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179310, -0.104291, -0.978249,
		-0.946716, 0.252123, -0.200408,
		0.267540, 0.962059, -0.053526,
		33.816936, 38.069923, 32.470325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380211, 37.754932, 31.899786>,  <33.629658, 37.396484, 32.507793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380211, 37.754932, 31.899786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.679035, 38.002621, 31.996506>,  <33.858330, 38.151234, 32.054539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.679035, 38.002621, 31.996506>,  <33.380211, 37.754932, 31.899786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679035, 38.002621, 31.996506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219702, 0.113308, -0.968965,
		-0.627401, 0.776998, -0.051396,
		0.747060, 0.619221, 0.241797,
		33.903152, 38.188389, 32.069046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426292, 38.259056, 31.386465>,  <33.380211, 37.754932, 31.899786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426292, 38.259056, 31.386465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.786156, 38.265446, 31.560984>,  <34.002075, 38.269279, 31.665695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.786156, 38.265446, 31.560984>,  <33.426292, 38.259056, 31.386465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786156, 38.265446, 31.560984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436587, -0.035032, -0.898980,
		0.000928, 0.999258, -0.038490,
		0.899662, 0.015970, 0.436296,
		34.056053, 38.270237, 31.691872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791645, 38.850208, 31.243105>,  <33.426292, 38.259056, 31.386465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791645, 38.850208, 31.243105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067177, 38.569698, 31.316566>,  <34.232498, 38.401394, 31.360643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067177, 38.569698, 31.316566>,  <33.791645, 38.850208, 31.243105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067177, 38.569698, 31.316566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415003, 0.173760, -0.893074,
		0.594375, 0.691395, 0.410721,
		0.688833, -0.701271, 0.183652,
		34.273827, 38.359318, 31.371662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376408, 39.296783, 30.972670>,  <33.791645, 38.850208, 31.243105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376408, 39.296783, 30.972670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499821, 38.921143, 31.033192>,  <34.573868, 38.695759, 31.069506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499821, 38.921143, 31.033192>,  <34.376408, 39.296783, 30.972670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499821, 38.921143, 31.033192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586873, 0.062753, -0.807243,
		0.748588, 0.337863, 0.570495,
		0.308537, -0.939101, 0.151307,
		34.592381, 38.639412, 31.078583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132004, 39.284599, 30.992580>,  <34.376408, 39.296783, 30.972670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132004, 39.284599, 30.992580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.980335, 38.930084, 30.886202>,  <34.889336, 38.717377, 30.822374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.980335, 38.930084, 30.886202>,  <35.132004, 39.284599, 30.992580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980335, 38.930084, 30.886202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486514, 0.053531, -0.872032,
		0.787106, -0.460034, 0.410893,
		-0.379169, -0.886286, -0.265948,
		34.866585, 38.664200, 30.806417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752247, 38.782894, 30.736437>,  <35.132004, 39.284599, 30.992580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752247, 38.782894, 30.736437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.409077, 38.648373, 30.581076>,  <35.203175, 38.567657, 30.487860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.409077, 38.648373, 30.581076>,  <35.752247, 38.782894, 30.736437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409077, 38.648373, 30.581076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443652, -0.103695, -0.890180,
		0.259097, -0.936027, 0.238166,
		-0.857929, -0.336306, -0.388403,
		35.151699, 38.547482, 30.464556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921009, 38.114620, 30.428030>,  <35.752247, 38.782894, 30.736437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921009, 38.114620, 30.428030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573868, 38.211040, 30.254261>,  <35.365582, 38.268890, 30.150000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573868, 38.211040, 30.254261>,  <35.921009, 38.114620, 30.428030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573868, 38.211040, 30.254261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417432, -0.120364, -0.900701,
		-0.269398, -0.963021, 0.003838,
		-0.867856, 0.241045, -0.434422,
		35.313511, 38.283356, 30.123934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919281, 37.719296, 29.868269>,  <35.921009, 38.114620, 30.428030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919281, 37.719296, 29.868269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632248, 37.987358, 29.792421>,  <35.460026, 38.148197, 29.746912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632248, 37.987358, 29.792421>,  <35.919281, 37.719296, 29.868269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632248, 37.987358, 29.792421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301898, 0.053951, -0.951813,
		-0.627638, -0.740252, -0.241035,
		-0.717585, 0.670161, -0.189619,
		35.416973, 38.188408, 29.735537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461525, 37.429752, 29.389111>,  <35.919281, 37.719296, 29.868269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461525, 37.429752, 29.389111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401199, 37.823505, 29.352772>,  <35.365005, 38.059757, 29.330969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401199, 37.823505, 29.352772>,  <35.461525, 37.429752, 29.389111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401199, 37.823505, 29.352772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446023, -0.014258, -0.894908,
		-0.882224, -0.175484, -0.436906,
		-0.150813, 0.984379, -0.090849,
		35.355957, 38.118820, 29.325518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052864, 37.525574, 28.846025>,  <35.461525, 37.429752, 29.389111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052864, 37.525574, 28.846025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219349, 37.888378, 28.871622>,  <35.319241, 38.106060, 28.886980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219349, 37.888378, 28.871622>,  <35.052864, 37.525574, 28.846025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219349, 37.888378, 28.871622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058496, 0.043522, -0.997338,
		-0.907385, 0.418845, -0.034942,
		0.416210, 0.907014, 0.063992,
		35.344212, 38.160484, 28.890820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705162, 37.882225, 28.419083>,  <35.052864, 37.525574, 28.846025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705162, 37.882225, 28.419083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063625, 38.058472, 28.440107>,  <35.278702, 38.164219, 28.452723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063625, 38.058472, 28.440107>,  <34.705162, 37.882225, 28.419083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063625, 38.058472, 28.440107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018613, 0.081028, -0.996538,
		-0.443350, 0.894031, 0.064412,
		0.896155, 0.440617, 0.052564,
		35.332474, 38.190659, 28.455877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613495, 38.497532, 27.994915>,  <34.705162, 37.882225, 28.419083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613495, 38.497532, 27.994915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008495, 38.438076, 28.015890>,  <35.245495, 38.402405, 28.028475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008495, 38.438076, 28.015890>,  <34.613495, 38.497532, 27.994915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008495, 38.438076, 28.015890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085273, 0.224038, -0.970843,
		0.132554, 0.963179, 0.233912,
		0.987501, -0.148635, 0.052436,
		35.304745, 38.393486, 28.031620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910076, 38.982838, 27.612919>,  <34.613495, 38.497532, 27.994915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910076, 38.982838, 27.612919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.202488, 38.710121, 27.601933>,  <35.377934, 38.546490, 27.595341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.202488, 38.710121, 27.601933>,  <34.910076, 38.982838, 27.612919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202488, 38.710121, 27.601933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187445, 0.239361, -0.952665,
		0.656094, 0.691278, 0.302779,
		0.731030, -0.681792, -0.027467,
		35.421799, 38.505585, 27.593693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363907, 39.285488, 27.194523>,  <34.910076, 38.982838, 27.612919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363907, 39.285488, 27.194523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520512, 38.917538, 27.185146>,  <35.614475, 38.696770, 27.179520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520512, 38.917538, 27.185146>,  <35.363907, 39.285488, 27.194523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520512, 38.917538, 27.185146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267037, 0.137964, -0.953760,
		0.880571, 0.367152, 0.299655,
		0.391516, -0.919873, -0.023444,
		35.637966, 38.641575, 27.178114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092197, 39.329556, 26.923290>,  <35.363907, 39.285488, 27.194523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092197, 39.329556, 26.923290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.020008, 38.944000, 26.844961>,  <35.976696, 38.712666, 26.797964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.020008, 38.944000, 26.844961>,  <36.092197, 39.329556, 26.923290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020008, 38.944000, 26.844961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192851, 0.160551, -0.968004,
		0.964489, -0.212462, 0.156912,
		-0.180471, -0.963890, -0.195824,
		35.965866, 38.654835, 26.786215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516991, 39.189995, 26.416323>,  <36.092197, 39.329556, 26.923290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516991, 39.189995, 26.416323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257126, 38.888439, 26.377167>,  <36.101208, 38.707504, 26.353672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257126, 38.888439, 26.377167>,  <36.516991, 39.189995, 26.416323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257126, 38.888439, 26.377167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048924, 0.087039, -0.995003,
		0.758645, -0.651207, -0.019663,
		-0.649664, -0.753892, -0.097891,
		36.062225, 38.662273, 26.347799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815365, 38.776966, 25.934032>,  <36.516991, 39.189995, 26.416323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815365, 38.776966, 25.934032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437576, 38.645584, 25.930361>,  <36.210903, 38.566753, 25.928158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437576, 38.645584, 25.930361>,  <36.815365, 38.776966, 25.934032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437576, 38.645584, 25.930361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006857, 0.047637, -0.998841,
		0.328512, -0.943318, -0.047244,
		-0.944475, -0.328455, -0.009181,
		36.154232, 38.547047, 25.927607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815594, 38.299263, 25.408360>,  <36.815365, 38.776966, 25.934032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815594, 38.299263, 25.408360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428993, 38.383228, 25.467434>,  <36.197033, 38.433609, 25.502878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428993, 38.383228, 25.467434>,  <36.815594, 38.299263, 25.408360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428993, 38.383228, 25.467434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120267, 0.137919, -0.983114,
		-0.226742, -0.967942, -0.108053,
		-0.966500, 0.209918, 0.147684,
		36.139042, 38.446205, 25.511740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447849, 37.841919, 24.879490>,  <36.815594, 38.299263, 25.408360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447849, 37.841919, 24.879490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.264698, 38.176777, 24.999178>,  <36.154808, 38.377693, 25.070990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.264698, 38.176777, 24.999178>,  <36.447849, 37.841919, 24.879490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264698, 38.176777, 24.999178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187486, 0.238074, -0.952979,
		-0.869021, -0.492447, 0.047945,
		-0.457878, 0.837148, 0.299219,
		36.127335, 38.427921, 25.088943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937576, 37.968987, 24.413826>,  <36.447849, 37.841919, 24.879490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937576, 37.968987, 24.413826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942009, 38.319309, 24.606840>,  <35.944668, 38.529503, 24.722649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.942009, 38.319309, 24.606840>,  <35.937576, 37.968987, 24.413826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942009, 38.319309, 24.606840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452385, 0.434746, -0.778681,
		-0.891754, -0.209660, 0.401020,
		0.011083, 0.875807, 0.482533,
		35.945335, 38.582050, 24.751600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361423, 38.284389, 24.322178>,  <35.937576, 37.968987, 24.413826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361423, 38.284389, 24.322178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592682, 38.595436, 24.421021>,  <35.731438, 38.782063, 24.480326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592682, 38.595436, 24.421021>,  <35.361423, 38.284389, 24.322178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592682, 38.595436, 24.421021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377774, 0.523541, -0.763670,
		-0.723213, 0.348160, 0.596445,
		0.578143, 0.777618, 0.247106,
		35.766125, 38.828720, 24.495152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940643, 38.862156, 24.489145>,  <35.361423, 38.284389, 24.322178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940643, 38.862156, 24.489145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298061, 39.005753, 24.381289>,  <35.512512, 39.091911, 24.316574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298061, 39.005753, 24.381289>,  <34.940643, 38.862156, 24.489145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298061, 39.005753, 24.381289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439611, 0.577521, -0.687904,
		-0.091224, 0.733210, 0.673855,
		0.893544, 0.358988, -0.269643,
		35.566124, 39.113449, 24.300396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861713, 39.540070, 24.286392>,  <34.940643, 38.862156, 24.489145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861713, 39.540070, 24.286392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.217457, 39.498730, 24.108244>,  <35.430904, 39.473927, 24.001354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.217457, 39.498730, 24.108244>,  <34.861713, 39.540070, 24.286392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217457, 39.498730, 24.108244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233434, 0.734936, -0.636693,
		0.393122, 0.670215, 0.629497,
		0.889361, -0.103352, -0.445371,
		35.484264, 39.467724, 23.974632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912842, 40.299809, 24.148563>,  <34.861713, 39.540070, 24.286392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912842, 40.299809, 24.148563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.220741, 40.108093, 23.979914>,  <35.405483, 39.993065, 23.878723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.220741, 40.108093, 23.979914>,  <34.912842, 40.299809, 24.148563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220741, 40.108093, 23.979914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035806, 0.691877, -0.721127,
		0.637340, 0.539991, 0.549734,
		0.769751, -0.479286, -0.421626,
		35.451668, 39.964306, 23.853426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481335, 40.845837, 24.088928>,  <34.912842, 40.299809, 24.148563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481335, 40.845837, 24.088928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534546, 40.552299, 23.822462>,  <35.566475, 40.376175, 23.662582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534546, 40.552299, 23.822462>,  <35.481335, 40.845837, 24.088928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534546, 40.552299, 23.822462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035011, 0.675198, -0.736805,
		0.990493, 0.074695, 0.115515,
		0.133031, -0.733845, -0.666164,
		35.574455, 40.332146, 23.622612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125641, 41.082298, 23.627802>,  <35.481335, 40.845837, 24.088928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125641, 41.082298, 23.627802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.900013, 40.820541, 23.426371>,  <35.764637, 40.663486, 23.305511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.900013, 40.820541, 23.426371>,  <36.125641, 41.082298, 23.627802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900013, 40.820541, 23.426371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051387, 0.636498, -0.769565,
		0.824126, -0.408211, -0.392657,
		-0.564070, -0.654396, -0.503578,
		35.730793, 40.624222, 23.275297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436989, 41.002834, 23.099463>,  <36.125641, 41.082298, 23.627802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436989, 41.002834, 23.099463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066822, 40.896038, 22.991898>,  <35.844723, 40.831959, 22.927359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066822, 40.896038, 22.991898>,  <36.436989, 41.002834, 23.099463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066822, 40.896038, 22.991898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082389, 0.550897, -0.830496,
		0.369878, -0.790713, -0.487814,
		-0.925420, -0.266992, -0.268911,
		35.789196, 40.815941, 22.911224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159996, 40.716290, 22.972155>,  <36.436989, 41.002834, 23.099463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159996, 40.716290, 22.972155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.398167, 41.036022, 22.939835>,  <37.541069, 41.227863, 22.920443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.398167, 41.036022, 22.939835>,  <37.159996, 40.716290, 22.972155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398167, 41.036022, 22.939835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064905, 0.052386, 0.996515,
		0.800782, -0.598598, -0.020689,
		0.595429, 0.799334, -0.080802,
		37.576794, 41.275822, 22.915594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722691, 40.574528, 23.372364>,  <37.159996, 40.716290, 22.972155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722691, 40.574528, 23.372364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.735199, 40.974285, 23.366358>,  <37.742702, 41.214142, 23.362753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.735199, 40.974285, 23.366358>,  <37.722691, 40.574528, 23.372364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735199, 40.974285, 23.366358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143260, 0.010387, 0.989631,
		0.989191, -0.033098, -0.142849,
		0.031271, 0.999398, -0.015017,
		37.744579, 41.274105, 23.361853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349995, 40.776985, 23.866562>,  <37.722691, 40.574528, 23.372364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349995, 40.776985, 23.866562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.111343, 41.096050, 23.831306>,  <37.968151, 41.287487, 23.810154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.111343, 41.096050, 23.831306>,  <38.349995, 40.776985, 23.866562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111343, 41.096050, 23.831306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179481, 0.239674, 0.954119,
		0.782187, 0.553439, -0.286162,
		-0.596632, 0.797660, -0.088138,
		37.932354, 41.335350, 23.804865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685963, 41.321350, 24.320406>,  <38.349995, 40.776985, 23.866562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685963, 41.321350, 24.320406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.310299, 41.449482, 24.270823>,  <38.084900, 41.526360, 24.241074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.310299, 41.449482, 24.270823>,  <38.685963, 41.321350, 24.320406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310299, 41.449482, 24.270823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018406, 0.313434, 0.949431,
		0.342982, 0.893951, -0.288469,
		-0.939162, 0.320329, -0.123956,
		38.028549, 41.545582, 24.233635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638187, 42.011093, 24.606617>,  <38.685963, 41.321350, 24.320406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638187, 42.011093, 24.606617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.274155, 41.845612, 24.616320>,  <38.055733, 41.746323, 24.622141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.274155, 41.845612, 24.616320>,  <38.638187, 42.011093, 24.606617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274155, 41.845612, 24.616320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058485, 0.186158, 0.980778,
		-0.410271, 0.891174, -0.193615,
		-0.910086, -0.413708, 0.024255,
		38.001129, 41.721500, 24.623596>
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
