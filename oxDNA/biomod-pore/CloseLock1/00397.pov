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
	<23.980736, 35.230095, 34.793674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307545, 35.120518, 34.996624>,  <24.503630, 35.054771, 35.118393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307545, 35.120518, 34.996624>,  <23.980736, 35.230095, 34.793674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.307545, 35.120518, 34.996624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411168, -0.340107, -0.845735,
		0.404244, 0.899602, -0.165239,
		0.817024, -0.273942, 0.507374,
		24.552652, 35.038334, 35.148834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.511505, 35.608997, 34.515530>,  <23.980736, 35.230095, 34.793674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.511505, 35.608997, 34.515530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.629833, 35.265926, 34.683758>,  <24.700830, 35.060085, 34.784695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.629833, 35.265926, 34.683758>,  <24.511505, 35.608997, 34.515530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.629833, 35.265926, 34.683758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420273, -0.278521, -0.863595,
		0.857824, 0.432224, 0.278067,
		0.295819, -0.857676, 0.420574,
		24.718578, 35.008625, 34.809929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345354, 35.438736, 34.604015>,  <24.511505, 35.608997, 34.515530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345354, 35.438736, 34.604015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.082876, 35.152740, 34.507523>,  <24.925390, 34.981144, 34.449627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.082876, 35.152740, 34.507523>,  <25.345354, 35.438736, 34.604015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.082876, 35.152740, 34.507523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621222, -0.330391, -0.710581,
		0.428359, -0.616139, 0.660970,
		-0.656195, -0.714993, -0.241233,
		24.886017, 34.938244, 34.435154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.130198, 35.730701, 35.324245>,  <25.345354, 35.438736, 34.604015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.130198, 35.730701, 35.324245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476833, 35.914013, 35.403240>,  <25.684814, 36.023998, 35.450638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476833, 35.914013, 35.403240>,  <25.130198, 35.730701, 35.324245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476833, 35.914013, 35.403240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075593, 0.511741, -0.855808,
		-0.493261, 0.726707, 0.478112,
		0.866591, 0.458279, 0.197488,
		25.736811, 36.051495, 35.462486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015480, 36.429165, 35.471924>,  <25.130198, 35.730701, 35.324245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015480, 36.429165, 35.471924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.395624, 36.398415, 35.351318>,  <25.623711, 36.379967, 35.278954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.395624, 36.398415, 35.351318>,  <25.015480, 36.429165, 35.471924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.395624, 36.398415, 35.351318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201044, 0.587880, -0.783568,
		0.237489, 0.805287, 0.543242,
		0.950358, -0.076873, -0.301513,
		25.680731, 36.375351, 35.260864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181768, 37.073269, 35.237846>,  <25.015480, 36.429165, 35.471924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181768, 37.073269, 35.237846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469290, 36.834469, 35.095345>,  <25.641802, 36.691189, 35.009842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469290, 36.834469, 35.095345>,  <25.181768, 37.073269, 35.237846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469290, 36.834469, 35.095345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043439, 0.472869, -0.880061,
		0.693855, 0.648066, 0.313967,
		0.718803, -0.596996, -0.356254,
		25.684931, 36.655369, 34.988468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753418, 37.483341, 35.079033>,  <25.181768, 37.073269, 35.237846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753418, 37.483341, 35.079033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782661, 37.153530, 34.854603>,  <25.800207, 36.955643, 34.719944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782661, 37.153530, 34.854603>,  <25.753418, 37.483341, 35.079033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782661, 37.153530, 34.854603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013442, 0.563348, -0.826110,
		0.997233, 0.052853, 0.052268,
		0.073107, -0.824527, -0.561080,
		25.804594, 36.906174, 34.686279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352797, 37.481102, 34.695045>,  <25.753418, 37.483341, 35.079033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352797, 37.481102, 34.695045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071114, 37.254444, 34.523930>,  <25.902103, 37.118450, 34.421261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071114, 37.254444, 34.523930>,  <26.352797, 37.481102, 34.695045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071114, 37.254444, 34.523930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044697, 0.565946, -0.823229,
		0.708587, -0.598845, -0.373215,
		-0.704207, -0.566648, -0.427789,
		25.859852, 37.084450, 34.395592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435223, 37.590038, 34.036182>,  <26.352797, 37.481102, 34.695045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435223, 37.590038, 34.036182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079754, 37.411003, 33.996330>,  <25.866472, 37.303581, 33.972420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079754, 37.411003, 33.996330>,  <26.435223, 37.590038, 34.036182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079754, 37.411003, 33.996330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185577, 0.549751, -0.814454,
		0.419310, -0.705294, -0.571611,
		-0.888673, -0.447586, -0.099630,
		25.813152, 37.276726, 33.966442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389978, 37.259003, 33.375481>,  <26.435223, 37.590038, 34.036182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389978, 37.259003, 33.375481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006310, 37.317619, 33.472244>,  <25.776108, 37.352787, 33.530300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006310, 37.317619, 33.472244>,  <26.389978, 37.259003, 33.375481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006310, 37.317619, 33.472244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136289, 0.509978, -0.849322,
		-0.247826, -0.847613, -0.469184,
		-0.959170, 0.146539, 0.241907,
		25.718559, 37.361580, 33.544815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961441, 37.052658, 32.699223>,  <26.389978, 37.259003, 33.375481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961441, 37.052658, 32.699223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710905, 37.263466, 32.928986>,  <25.560583, 37.389950, 33.066841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710905, 37.263466, 32.928986>,  <25.961441, 37.052658, 32.699223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.710905, 37.263466, 32.928986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399688, 0.415514, -0.817066,
		-0.669287, -0.741346, -0.049608,
		-0.626342, 0.527024, 0.574405,
		25.523003, 37.421574, 33.101307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301626, 36.982483, 32.372833>,  <25.961441, 37.052658, 32.699223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301626, 36.982483, 32.372833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293076, 37.321777, 32.584511>,  <25.287945, 37.525352, 32.711517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293076, 37.321777, 32.584511>,  <25.301626, 36.982483, 32.372833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293076, 37.321777, 32.584511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357193, 0.487898, -0.796472,
		-0.933786, -0.206050, 0.292553,
		-0.021377, 0.848233, 0.529193,
		25.286663, 37.576248, 32.743267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.774271, 37.272972, 32.045242>,  <25.301626, 36.982483, 32.372833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.774271, 37.272972, 32.045242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.935638, 37.573578, 32.254044>,  <25.032459, 37.753941, 32.379322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.935638, 37.573578, 32.254044>,  <24.774271, 37.272972, 32.045242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.935638, 37.573578, 32.254044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147472, 0.616425, -0.773481,
		-0.903052, 0.235058, 0.359505,
		0.403421, 0.751511, 0.521999,
		25.056665, 37.799030, 32.410645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.289726, 37.892956, 31.926584>,  <24.774271, 37.272972, 32.045242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.289726, 37.892956, 31.926584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.639093, 38.045074, 32.048248>,  <24.848715, 38.136345, 32.121246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.639093, 38.045074, 32.048248>,  <24.289726, 37.892956, 31.926584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.639093, 38.045074, 32.048248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023660, 0.590721, -0.806529,
		-0.486393, 0.711635, 0.506950,
		0.873420, 0.380295, 0.304160,
		24.901119, 38.159164, 32.139496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.210236, 38.659000, 31.927965>,  <24.289726, 37.892956, 31.926584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.210236, 38.659000, 31.927965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.597359, 38.560986, 31.904966>,  <24.829632, 38.502178, 31.891167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.597359, 38.560986, 31.904966>,  <24.210236, 38.659000, 31.927965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.597359, 38.560986, 31.904966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084570, 0.531758, -0.842663,
		0.237057, 0.810673, 0.535362,
		0.967808, -0.245035, -0.057499,
		24.887701, 38.487476, 31.887716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.484882, 39.246807, 31.777632>,  <24.210236, 38.659000, 31.927965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.484882, 39.246807, 31.777632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.779932, 38.990047, 31.693846>,  <24.956961, 38.835991, 31.643574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.779932, 38.990047, 31.693846>,  <24.484882, 39.246807, 31.777632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.779932, 38.990047, 31.693846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186290, 0.491645, -0.850636,
		0.649007, 0.588427, 0.482228,
		0.737622, -0.641902, -0.209463,
		25.001219, 38.797478, 31.631006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910284, 39.708031, 31.442663>,  <24.484882, 39.246807, 31.777632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.910284, 39.708031, 31.442663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.066311, 39.352901, 31.344994>,  <25.159927, 39.139824, 31.286392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.066311, 39.352901, 31.344994>,  <24.910284, 39.708031, 31.442663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.066311, 39.352901, 31.344994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175003, 0.331830, -0.926964,
		0.904002, 0.318849, 0.284808,
		0.390069, -0.887820, -0.244176,
		25.183332, 39.086555, 31.271742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604431, 39.728504, 31.102991>,  <24.910284, 39.708031, 31.442663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604431, 39.728504, 31.102991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429987, 39.388763, 30.984051>,  <25.325321, 39.184921, 30.912687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429987, 39.388763, 30.984051>,  <25.604431, 39.728504, 31.102991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429987, 39.388763, 30.984051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129628, 0.267689, -0.954746,
		0.890508, -0.454919, -0.006642,
		-0.436110, -0.849348, -0.297349,
		25.299154, 39.133961, 30.894846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046083, 39.473778, 30.578791>,  <25.604431, 39.728504, 31.102991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046083, 39.473778, 30.578791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708847, 39.264946, 30.527199>,  <25.506506, 39.139648, 30.496244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708847, 39.264946, 30.527199>,  <26.046083, 39.473778, 30.578791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708847, 39.264946, 30.527199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128300, 0.037640, -0.991021,
		0.522242, -0.852068, 0.035248,
		-0.843091, -0.522076, -0.128978,
		25.455919, 39.108322, 30.488506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175255, 38.911209, 30.047710>,  <26.046083, 39.473778, 30.578791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175255, 38.911209, 30.047710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779715, 38.970673, 30.044218>,  <25.542391, 39.006351, 30.042122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779715, 38.970673, 30.044218>,  <26.175255, 38.911209, 30.047710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779715, 38.970673, 30.044218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033005, 0.161616, -0.986302,
		-0.145207, -0.975593, -0.164721,
		-0.988851, 0.148654, -0.008732,
		25.483059, 39.015270, 30.041599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868113, 38.553879, 29.495707>,  <26.175255, 38.911209, 30.047710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868113, 38.553879, 29.495707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609463, 38.848053, 29.576704>,  <25.454273, 39.024559, 29.625303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609463, 38.848053, 29.576704>,  <25.868113, 38.553879, 29.495707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609463, 38.848053, 29.576704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038596, 0.233575, -0.971572,
		-0.761830, -0.636060, -0.122651,
		-0.646626, 0.735439, 0.202494,
		25.415474, 39.068684, 29.637453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.314560, 38.516041, 29.078434>,  <25.868113, 38.553879, 29.495707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.314560, 38.516041, 29.078434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321699, 38.905769, 29.168217>,  <25.325983, 39.139606, 29.222086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321699, 38.905769, 29.168217>,  <25.314560, 38.516041, 29.078434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321699, 38.905769, 29.168217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088529, 0.225149, -0.970294,
		-0.995914, -0.002552, 0.090274,
		0.017849, 0.974321, 0.224455,
		25.327053, 39.198067, 29.235554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.098690, 38.943768, 28.426414>,  <25.314560, 38.516041, 29.078434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.098690, 38.943768, 28.426414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273636, 39.220459, 28.656275>,  <25.378603, 39.386475, 28.794191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273636, 39.220459, 28.656275>,  <25.098690, 38.943768, 28.426414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273636, 39.220459, 28.656275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061971, 0.614305, -0.786631,
		-0.897147, 0.379655, 0.225807,
		0.437364, 0.691730, 0.574650,
		25.404844, 39.427979, 28.828671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.779306, 39.528320, 28.236197>,  <25.098690, 38.943768, 28.426414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.779306, 39.528320, 28.236197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.120398, 39.640202, 28.412659>,  <25.325052, 39.707333, 28.518536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.120398, 39.640202, 28.412659>,  <24.779306, 39.528320, 28.236197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.120398, 39.640202, 28.412659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200725, 0.604247, -0.771100,
		-0.482247, 0.746091, 0.459115,
		0.852729, 0.279705, 0.441155,
		25.376217, 39.724113, 28.545006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.805061, 40.234455, 28.302389>,  <24.779306, 39.528320, 28.236197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.805061, 40.234455, 28.302389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165169, 40.069466, 28.246704>,  <25.381233, 39.970470, 28.213293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165169, 40.069466, 28.246704>,  <24.805061, 40.234455, 28.302389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.165169, 40.069466, 28.246704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140271, 0.577579, -0.804193,
		0.412115, 0.704463, 0.577835,
		0.900270, -0.412474, -0.139213,
		25.435249, 39.945724, 28.204941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316799, 40.798603, 28.361132>,  <24.805061, 40.234455, 28.302389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316799, 40.798603, 28.361132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433935, 40.492367, 28.132006>,  <25.504217, 40.308624, 27.994530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433935, 40.492367, 28.132006>,  <25.316799, 40.798603, 28.361132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433935, 40.492367, 28.132006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260508, 0.640295, -0.722605,
		0.919990, 0.062385, 0.386946,
		0.292839, -0.765592, -0.572813,
		25.521788, 40.262688, 27.960161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.015135, 40.904682, 28.174068>,  <25.316799, 40.798603, 28.361132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.015135, 40.904682, 28.174068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836020, 40.667244, 27.906597>,  <25.728550, 40.524780, 27.746115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836020, 40.667244, 27.906597>,  <26.015135, 40.904682, 28.174068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.836020, 40.667244, 27.906597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282928, 0.615352, -0.735726,
		0.848197, -0.518637, -0.107601,
		-0.447787, -0.593597, -0.668677,
		25.701683, 40.489166, 27.705994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328606, 41.381207, 27.603527>,  <26.015135, 40.904682, 28.174068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328606, 41.381207, 27.603527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473360, 41.057156, 27.788015>,  <26.560213, 40.862724, 27.898708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473360, 41.057156, 27.788015>,  <26.328606, 41.381207, 27.603527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473360, 41.057156, 27.788015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694072, -0.564440, -0.446847,
		0.622336, -0.158412, -0.766553,
		0.361887, -0.810132, 0.461220,
		26.581926, 40.814117, 27.926382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267014, 41.204437, 26.874256>,  <26.328606, 41.381207, 27.603527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.267014, 41.204437, 26.874256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561243, 41.425785, 27.030571>,  <26.737782, 41.558594, 27.124359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561243, 41.425785, 27.030571>,  <26.267014, 41.204437, 26.874256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561243, 41.425785, 27.030571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644733, -0.748927, -0.153063,
		0.207970, 0.364543, -0.907666,
		0.735573, 0.553369, 0.390787,
		26.781916, 41.591797, 27.147808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.847265, 40.854671, 26.694349>,  <26.267014, 41.204437, 26.874256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.847265, 40.854671, 26.694349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023163, 41.107048, 26.950018>,  <27.128702, 41.258472, 27.103418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023163, 41.107048, 26.950018>,  <26.847265, 40.854671, 26.694349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023163, 41.107048, 26.950018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760877, -0.639827, 0.108108,
		0.477169, 0.438791, -0.761428,
		0.439745, 0.630939, 0.639172,
		27.155087, 41.296329, 27.141769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532822, 40.987492, 26.388479>,  <26.847265, 40.854671, 26.694349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532822, 40.987492, 26.388479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488852, 40.988735, 26.786053>,  <27.462469, 40.989483, 27.024597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488852, 40.988735, 26.786053>,  <27.532822, 40.987492, 26.388479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488852, 40.988735, 26.786053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740332, -0.666977, 0.083967,
		0.663193, 0.745072, 0.071014,
		-0.109926, 0.003113, 0.993935,
		27.455873, 40.989670, 27.084232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235962, 41.015182, 26.845806>,  <27.532822, 40.987492, 26.388479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235962, 41.015182, 26.845806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963362, 40.797527, 27.041548>,  <27.799801, 40.666935, 27.158993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963362, 40.797527, 27.041548>,  <28.235962, 41.015182, 26.845806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963362, 40.797527, 27.041548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679753, -0.718385, 0.147846,
		0.271094, 0.433396, 0.859463,
		-0.681501, -0.544142, 0.489352,
		27.758911, 40.634285, 27.188353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476234, 40.793312, 27.566603>,  <28.235962, 41.015182, 26.845806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476234, 40.793312, 27.566603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250761, 40.532791, 27.363403>,  <28.115477, 40.376480, 27.241484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250761, 40.532791, 27.363403>,  <28.476234, 40.793312, 27.566603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250761, 40.532791, 27.363403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657916, -0.725880, 0.200612,
		-0.499406, -0.221140, 0.837669,
		-0.563684, -0.651303, -0.508000,
		28.081656, 40.337399, 27.211002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051548, 41.199734, 27.568966>,  <28.476234, 40.793312, 27.566603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051548, 41.199734, 27.568966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317095, 41.393032, 27.797266>,  <29.476423, 41.509010, 27.934246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317095, 41.393032, 27.797266>,  <29.051548, 41.199734, 27.568966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317095, 41.393032, 27.797266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430015, -0.377739, 0.820000,
		0.611853, -0.789803, -0.042967,
		0.663869, 0.483243, 0.570748,
		29.516256, 41.538006, 27.968491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123699, 40.901699, 28.117725>,  <29.051548, 41.199734, 27.568966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123699, 40.901699, 28.117725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234589, 41.236732, 28.306019>,  <29.301123, 41.437752, 28.418995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234589, 41.236732, 28.306019>,  <29.123699, 40.901699, 28.117725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234589, 41.236732, 28.306019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337703, -0.373736, 0.863874,
		0.899502, -0.398456, 0.179247,
		0.277225, 0.837588, 0.470736,
		29.317757, 41.488010, 28.447239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668537, 40.754734, 28.568815>,  <29.123699, 40.901699, 28.117725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668537, 40.754734, 28.568815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434568, 41.054699, 28.692427>,  <29.294188, 41.234676, 28.766594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434568, 41.054699, 28.692427>,  <29.668537, 40.754734, 28.568815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434568, 41.054699, 28.692427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260474, -0.534496, 0.804032,
		0.768129, 0.389801, 0.507970,
		-0.584920, 0.749913, 0.309029,
		29.259092, 41.279675, 28.785135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771236, 40.954842, 29.354801>,  <29.668537, 40.754734, 28.568815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771236, 40.954842, 29.354801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399944, 41.080845, 29.275646>,  <29.177170, 41.156448, 29.228153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399944, 41.080845, 29.275646>,  <29.771236, 40.954842, 29.354801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399944, 41.080845, 29.275646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328536, -0.444604, 0.833302,
		0.174518, 0.838507, 0.516187,
		-0.928228, 0.315012, -0.197888,
		29.121475, 41.175350, 29.216280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476053, 41.085957, 29.951309>,  <29.771236, 40.954842, 29.354801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476053, 41.085957, 29.951309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152449, 41.060860, 29.717537>,  <28.958286, 41.045803, 29.577272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152449, 41.060860, 29.717537>,  <29.476053, 41.085957, 29.951309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152449, 41.060860, 29.717537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482696, -0.496462, 0.721478,
		-0.335414, 0.865788, 0.371361,
		-0.809013, -0.062739, -0.584432,
		28.909744, 41.042038, 29.542208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944765, 41.264870, 30.248310>,  <29.476053, 41.085957, 29.951309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944765, 41.264870, 30.248310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776276, 41.034084, 29.968401>,  <28.675182, 40.895615, 29.800455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776276, 41.034084, 29.968401>,  <28.944765, 41.264870, 30.248310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776276, 41.034084, 29.968401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371591, -0.594044, 0.713465,
		-0.827340, 0.560557, 0.035830,
		-0.421222, -0.576964, -0.699775,
		28.649910, 40.860996, 29.758469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405296, 41.051533, 30.625103>,  <28.944765, 41.264870, 30.248310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405296, 41.051533, 30.625103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459473, 40.788868, 30.328333>,  <28.491980, 40.631271, 30.150270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459473, 40.788868, 30.328333>,  <28.405296, 41.051533, 30.625103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459473, 40.788868, 30.328333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277526, -0.743995, 0.607824,
		-0.951123, 0.123579, -0.283008,
		0.135442, -0.656658, -0.741927,
		28.500105, 40.591869, 30.105755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848434, 40.506889, 30.838724>,  <28.405296, 41.051533, 30.625103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848434, 40.506889, 30.838724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057505, 40.307205, 30.562292>,  <28.182947, 40.187393, 30.396433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057505, 40.307205, 30.562292>,  <27.848434, 40.506889, 30.838724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057505, 40.307205, 30.562292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003594, -0.811906, 0.583777,
		-0.852524, -0.302642, -0.426158,
		0.522676, -0.499215, -0.691082,
		28.214308, 40.157440, 30.354967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378641, 39.978313, 30.633066>,  <27.848434, 40.506889, 30.838724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378641, 39.978313, 30.633066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763971, 39.895351, 30.564964>,  <27.995169, 39.845573, 30.524103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763971, 39.895351, 30.564964>,  <27.378641, 39.978313, 30.633066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763971, 39.895351, 30.564964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116566, -0.894943, 0.430685,
		-0.241694, -0.395044, -0.886298,
		0.963326, -0.207406, -0.170253,
		28.052969, 39.833130, 30.513887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433460, 39.351917, 30.439703>,  <27.378641, 39.978313, 30.633066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433460, 39.351917, 30.439703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822580, 39.394672, 30.521904>,  <28.056053, 39.420326, 30.571224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822580, 39.394672, 30.521904>,  <27.433460, 39.351917, 30.439703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822580, 39.394672, 30.521904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016724, -0.852448, 0.522544,
		0.231035, -0.511769, -0.827475,
		0.972801, 0.106887, 0.205504,
		28.114422, 39.426739, 30.583555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744646, 38.723484, 30.356062>,  <27.433460, 39.351917, 30.439703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744646, 38.723484, 30.356062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011866, 38.913368, 30.585272>,  <28.172197, 39.027298, 30.722797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011866, 38.913368, 30.585272>,  <27.744646, 38.723484, 30.356062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011866, 38.913368, 30.585272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133326, -0.833974, 0.535454,
		0.732075, -0.281310, -0.620427,
		0.668049, 0.474712, 0.573026,
		28.212280, 39.055782, 30.757179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389385, 38.270676, 30.402241>,  <27.744646, 38.723484, 30.356062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389385, 38.270676, 30.402241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386732, 38.523140, 30.712490>,  <28.385141, 38.674618, 30.898640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386732, 38.523140, 30.712490>,  <28.389385, 38.270676, 30.402241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386732, 38.523140, 30.712490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108986, -0.770563, 0.627976,
		0.994021, 0.088696, -0.063678,
		-0.006631, 0.631162, 0.775623,
		28.384743, 38.712490, 30.945177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043537, 38.109470, 30.783947>,  <28.389385, 38.270676, 30.402241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043537, 38.109470, 30.783947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768089, 38.283539, 31.015959>,  <28.602821, 38.387978, 31.155165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768089, 38.283539, 31.015959>,  <29.043537, 38.109470, 30.783947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768089, 38.283539, 31.015959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117939, -0.722037, 0.681728,
		0.715467, 0.537859, 0.445886,
		-0.688620, 0.435167, 0.580028,
		28.561502, 38.414089, 31.189968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375425, 38.127094, 31.425209>,  <29.043537, 38.109470, 30.783947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375425, 38.127094, 31.425209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983425, 38.148060, 31.501993>,  <28.748224, 38.160641, 31.548063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983425, 38.148060, 31.501993>,  <29.375425, 38.127094, 31.425209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983425, 38.148060, 31.501993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105980, -0.678982, 0.726465,
		0.168417, 0.732281, 0.659849,
		-0.980002, 0.052419, 0.191959,
		28.689425, 38.163784, 31.559582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357132, 37.981800, 32.010677>,  <29.375425, 38.127094, 31.425209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357132, 37.981800, 32.010677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960478, 37.969223, 31.960609>,  <28.722485, 37.961678, 31.930569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960478, 37.969223, 31.960609>,  <29.357132, 37.981800, 32.010677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960478, 37.969223, 31.960609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070121, -0.682955, 0.727087,
		-0.108353, 0.729783, 0.675038,
		-0.991636, -0.031447, -0.125173,
		28.662987, 37.959789, 31.923058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066046, 38.064129, 32.692108>,  <29.357132, 37.981800, 32.010677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066046, 38.064129, 32.692108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783806, 37.898285, 32.462246>,  <28.614462, 37.798779, 32.324329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783806, 37.898285, 32.462246>,  <29.066046, 38.064129, 32.692108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783806, 37.898285, 32.462246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084351, -0.756050, 0.649056,
		-0.703574, 0.506445, 0.498494,
		-0.705598, -0.414611, -0.574656,
		28.572126, 37.773903, 32.289848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503414, 37.922249, 33.168953>,  <29.066046, 38.064129, 32.692108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503414, 37.922249, 33.168953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428869, 37.683220, 32.857010>,  <28.384142, 37.539803, 32.669846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428869, 37.683220, 32.857010>,  <28.503414, 37.922249, 33.168953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428869, 37.683220, 32.857010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225598, -0.746522, 0.625948,
		-0.956229, 0.292588, 0.004313,
		-0.186364, -0.597576, -0.779853,
		28.372959, 37.503948, 32.623055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906157, 37.498981, 33.322021>,  <28.503414, 37.922249, 33.168953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906157, 37.498981, 33.322021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039528, 37.282635, 33.013142>,  <28.119551, 37.152828, 32.827812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039528, 37.282635, 33.013142>,  <27.906157, 37.498981, 33.322021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039528, 37.282635, 33.013142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118222, -0.836592, 0.534918,
		-0.935334, -0.087066, -0.342886,
		0.333429, -0.540864, -0.772200,
		28.139557, 37.120377, 32.781483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335157, 37.128220, 33.020630>,  <27.906157, 37.498981, 33.322021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335157, 37.128220, 33.020630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679583, 36.938206, 32.948059>,  <27.886238, 36.824200, 32.904514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679583, 36.938206, 32.948059>,  <27.335157, 37.128220, 33.020630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679583, 36.938206, 32.948059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344136, -0.807057, 0.479823,
		-0.374354, -0.350721, -0.858401,
		0.861063, -0.475030, -0.181430,
		27.937901, 36.795696, 32.893631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140081, 36.468102, 33.056141>,  <27.335157, 37.128220, 33.020630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140081, 36.468102, 33.056141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535526, 36.410419, 33.073330>,  <27.772793, 36.375809, 33.083645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535526, 36.410419, 33.073330>,  <27.140081, 36.468102, 33.056141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535526, 36.410419, 33.073330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149185, -0.901982, 0.405181,
		-0.019669, -0.406979, -0.913226,
		0.988614, -0.144209, 0.042974,
		27.832109, 36.367157, 33.086224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287136, 35.820541, 32.989296>,  <27.140081, 36.468102, 33.056141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287136, 35.820541, 32.989296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636330, 35.917992, 33.158314>,  <27.845846, 35.976463, 33.259724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636330, 35.917992, 33.158314>,  <27.287136, 35.820541, 32.989296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636330, 35.917992, 33.158314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036963, -0.896868, 0.440752,
		0.486343, -0.369152, -0.791958,
		0.872986, 0.243630, 0.422540,
		27.898226, 35.991081, 33.285076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859838, 35.247971, 32.916920>,  <27.287136, 35.820541, 32.989296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859838, 35.247971, 32.916920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965397, 35.443550, 33.249496>,  <28.028732, 35.560898, 33.449043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965397, 35.443550, 33.249496>,  <27.859838, 35.247971, 32.916920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965397, 35.443550, 33.249496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151709, -0.872308, 0.464825,
		0.952545, 0.003471, -0.304377,
		0.263897, 0.488944, 0.831439,
		28.044567, 35.590233, 33.498928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407909, 34.854580, 33.024574>,  <27.859838, 35.247971, 32.916920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407909, 34.854580, 33.024574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326685, 35.044525, 33.367100>,  <28.277950, 35.158493, 33.572617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326685, 35.044525, 33.367100>,  <28.407909, 34.854580, 33.024574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326685, 35.044525, 33.367100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195411, -0.837288, 0.510650,
		0.959469, 0.271027, 0.077229,
		-0.203063, 0.474862, 0.856313,
		28.265766, 35.186985, 33.623993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917986, 34.377800, 33.343597>,  <28.407909, 34.854580, 33.024574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917986, 34.377800, 33.343597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244352, 34.395313, 33.112995>,  <29.440172, 34.405823, 32.974632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244352, 34.395313, 33.112995>,  <28.917986, 34.377800, 33.343597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244352, 34.395313, 33.112995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254225, 0.922732, -0.289716,
		0.519278, 0.382947, 0.764004,
		0.815917, 0.043785, -0.576509,
		29.489128, 34.408447, 32.940041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478849, 33.821999, 33.324257>,  <28.917986, 34.377800, 33.343597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478849, 33.821999, 33.324257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768015, 33.754982, 33.056129>,  <29.941515, 33.714771, 32.895252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768015, 33.754982, 33.056129>,  <29.478849, 33.821999, 33.324257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768015, 33.754982, 33.056129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682538, 0.022367, 0.730508,
		-0.107400, -0.985611, 0.130526,
		0.722916, -0.167545, -0.670314,
		29.984890, 33.704720, 32.855034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844635, 33.244671, 33.545628>,  <29.478849, 33.821999, 33.324257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844635, 33.244671, 33.545628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064194, 33.489323, 33.317722>,  <30.195929, 33.636112, 33.180981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064194, 33.489323, 33.317722>,  <29.844635, 33.244671, 33.545628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064194, 33.489323, 33.317722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734657, -0.027844, 0.677867,
		0.398737, -0.790657, -0.464618,
		0.548898, 0.611625, -0.569759,
		30.228863, 33.672810, 33.146793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470753, 32.875435, 33.277081>,  <29.844635, 33.244671, 33.545628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470753, 32.875435, 33.277081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440569, 33.265610, 33.359856>,  <30.422459, 33.499714, 33.409519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440569, 33.265610, 33.359856>,  <30.470753, 32.875435, 33.277081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440569, 33.265610, 33.359856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528543, -0.136852, 0.837803,
		0.845546, 0.172595, -0.505235,
		-0.075458, 0.975440, 0.206938,
		30.417931, 33.558243, 33.421936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199665, 33.376675, 33.531189>,  <30.470753, 32.875435, 33.277081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199665, 33.376675, 33.531189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864239, 33.553185, 33.658993>,  <30.662983, 33.659092, 33.735676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864239, 33.553185, 33.658993>,  <31.199665, 33.376675, 33.531189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864239, 33.553185, 33.658993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446701, 0.221187, 0.866911,
		0.311875, 0.869686, -0.382598,
		-0.838566, 0.441274, 0.319507,
		30.612669, 33.685566, 33.754845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225372, 34.112015, 33.679821>,  <31.199665, 33.376675, 33.531189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225372, 34.112015, 33.679821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979307, 33.901779, 33.914879>,  <30.831669, 33.775639, 34.055916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979307, 33.901779, 33.914879>,  <31.225372, 34.112015, 33.679821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979307, 33.901779, 33.914879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449075, 0.379039, 0.809112,
		-0.648002, 0.761634, 0.002858,
		-0.615163, -0.525589, 0.587648,
		30.794758, 33.744102, 34.091175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846611, 34.459660, 34.204472>,  <31.225372, 34.112015, 33.679821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846611, 34.459660, 34.204472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880184, 34.091923, 34.358234>,  <30.900328, 33.871281, 34.450493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880184, 34.091923, 34.358234>,  <30.846611, 34.459660, 34.204472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880184, 34.091923, 34.358234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213783, 0.393401, 0.894165,
		-0.973269, 0.007130, 0.229559,
		0.083934, -0.919339, 0.384409,
		30.905365, 33.816120, 34.473557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405527, 34.406723, 34.813946>,  <30.846611, 34.459660, 34.204472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405527, 34.406723, 34.813946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716759, 34.156681, 34.838722>,  <30.903498, 34.006657, 34.853588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716759, 34.156681, 34.838722>,  <30.405527, 34.406723, 34.813946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716759, 34.156681, 34.838722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084950, 0.202408, 0.975610,
		-0.622395, -0.753840, 0.210592,
		0.778080, -0.625105, 0.061939,
		30.950182, 33.969151, 34.857304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251427, 33.983242, 35.365028>,  <30.405527, 34.406723, 34.813946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251427, 33.983242, 35.365028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650229, 33.965351, 35.339787>,  <30.889509, 33.954617, 35.324642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650229, 33.965351, 35.339787>,  <30.251427, 33.983242, 35.365028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650229, 33.965351, 35.339787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059641, -0.074876, 0.995408,
		-0.049244, -0.996190, -0.071984,
		0.997004, -0.044725, -0.063101,
		30.949329, 33.951931, 35.320858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504021, 33.625042, 35.984238>,  <30.251427, 33.983242, 35.365028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504021, 33.625042, 35.984238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873068, 33.723221, 35.865219>,  <31.094496, 33.782127, 35.793808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873068, 33.723221, 35.865219>,  <30.504021, 33.625042, 35.984238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873068, 33.723221, 35.865219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342996, -0.169182, 0.923976,
		0.176443, -0.954534, -0.240276,
		0.922617, 0.245443, -0.297551,
		31.149853, 33.796852, 35.775955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054764, 33.083195, 36.262932>,  <30.504021, 33.625042, 35.984238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054764, 33.083195, 36.262932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245598, 33.423111, 36.173264>,  <31.360098, 33.627060, 36.119465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245598, 33.423111, 36.173264>,  <31.054764, 33.083195, 36.262932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245598, 33.423111, 36.173264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426768, -0.001033, 0.904361,
		0.768282, -0.527125, -0.363154,
		0.477087, 0.849787, -0.224167,
		31.388723, 33.678047, 36.106014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777325, 33.034714, 36.264664>,  <31.054764, 33.083195, 36.262932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777325, 33.034714, 36.264664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735998, 33.423592, 36.348732>,  <31.711203, 33.656918, 36.399174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735998, 33.423592, 36.348732>,  <31.777325, 33.034714, 36.264664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735998, 33.423592, 36.348732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551846, -0.119768, 0.825301,
		0.827521, 0.201248, -0.524126,
		-0.103317, 0.972191, 0.210169,
		31.705004, 33.715248, 36.411781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340218, 33.160156, 36.664303>,  <31.777325, 33.034714, 36.264664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340218, 33.160156, 36.664303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106110, 33.474194, 36.745384>,  <31.965645, 33.662617, 36.794033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106110, 33.474194, 36.745384>,  <32.340218, 33.160156, 36.664303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106110, 33.474194, 36.745384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333396, 0.005126, 0.942773,
		0.739125, 0.619357, -0.264747,
		-0.585271, 0.785092, 0.202702,
		31.930529, 33.709721, 36.806194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810165, 33.512592, 36.950127>,  <32.340218, 33.160156, 36.664303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810165, 33.512592, 36.950127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454887, 33.667610, 37.048862>,  <32.241722, 33.760620, 37.108105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454887, 33.667610, 37.048862>,  <32.810165, 33.512592, 36.950127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454887, 33.667610, 37.048862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326090, 0.153198, 0.932843,
		0.323699, 0.909034, -0.262442,
		-0.888192, 0.387540, 0.246837,
		32.188431, 33.783871, 37.122913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975590, 34.055706, 37.383427>,  <32.810165, 33.512592, 36.950127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975590, 34.055706, 37.383427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588196, 33.983459, 37.452038>,  <32.355759, 33.940113, 37.493202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588196, 33.983459, 37.452038>,  <32.975590, 34.055706, 37.383427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588196, 33.983459, 37.452038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176588, -0.012212, 0.984209,
		-0.175667, 0.983478, 0.043721,
		-0.968482, -0.180614, 0.171526,
		32.297649, 33.929276, 37.503494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861488, 34.413151, 37.943581>,  <32.975590, 34.055706, 37.383427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861488, 34.413151, 37.943581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556820, 34.154778, 37.923058>,  <32.374020, 33.999752, 37.910744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556820, 34.154778, 37.923058>,  <32.861488, 34.413151, 37.943581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556820, 34.154778, 37.923058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029117, -0.044980, 0.998563,
		-0.647315, 0.762066, 0.015452,
		-0.761666, -0.645935, -0.051305,
		32.328320, 33.960999, 37.907665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492546, 34.577049, 38.526604>,  <32.861488, 34.413151, 37.943581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492546, 34.577049, 38.526604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318287, 34.234295, 38.416359>,  <32.213730, 34.028645, 38.350212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318287, 34.234295, 38.416359>,  <32.492546, 34.577049, 38.526604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318287, 34.234295, 38.416359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229467, -0.190348, 0.954522,
		-0.870375, 0.479082, -0.113701,
		-0.435652, -0.856883, -0.275607,
		32.187592, 33.977230, 38.333675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859182, 34.505791, 38.794945>,  <32.492546, 34.577049, 38.526604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859182, 34.505791, 38.794945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956060, 34.121170, 38.743160>,  <32.014187, 33.890396, 38.712090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956060, 34.121170, 38.743160>,  <31.859182, 34.505791, 38.794945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956060, 34.121170, 38.743160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126322, -0.163548, 0.978415,
		-0.961969, -0.220613, -0.161075,
		0.242194, -0.961552, -0.129460,
		32.028717, 33.832703, 38.704323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356955, 34.077854, 39.117302>,  <31.859182, 34.505791, 38.794945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356955, 34.077854, 39.117302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697954, 33.870625, 39.089478>,  <31.902554, 33.746284, 39.072784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697954, 33.870625, 39.089478>,  <31.356955, 34.077854, 39.117302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697954, 33.870625, 39.089478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121102, -0.325198, 0.937859,
		-0.508505, -0.791102, -0.339972,
		0.852500, -0.518077, -0.069561,
		31.953705, 33.715202, 39.068611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162388, 33.520683, 39.540154>,  <31.356955, 34.077854, 39.117302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162388, 33.520683, 39.540154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559025, 33.494759, 39.495358>,  <31.797007, 33.479202, 39.468479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559025, 33.494759, 39.495358>,  <31.162388, 33.520683, 39.540154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559025, 33.494759, 39.495358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072817, -0.435969, 0.897011,
		-0.106961, -0.897625, -0.427585,
		0.991593, -0.064810, -0.111994,
		31.856503, 33.475315, 39.461758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364418, 32.887970, 39.857834>,  <31.162388, 33.520683, 39.540154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364418, 32.887970, 39.857834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700539, 33.104633, 39.848877>,  <31.902210, 33.234631, 39.843502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700539, 33.104633, 39.848877>,  <31.364418, 32.887970, 39.857834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700539, 33.104633, 39.848877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175335, -0.232454, 0.956673,
		0.512984, -0.807819, -0.290303,
		0.840301, 0.541657, -0.022393,
		31.952629, 33.267132, 39.842159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934441, 32.522255, 39.990005>,  <31.364418, 32.887970, 39.857834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934441, 32.522255, 39.990005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011967, 32.893494, 40.117172>,  <32.058483, 33.116238, 40.193474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011967, 32.893494, 40.117172>,  <31.934441, 32.522255, 39.990005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011967, 32.893494, 40.117172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249148, -0.360004, 0.899067,
		0.948874, -0.095044, -0.301007,
		0.193815, 0.928097, 0.317919,
		32.070110, 33.171921, 40.212547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395863, 32.367294, 40.483753>,  <31.934441, 32.522255, 39.990005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395863, 32.367294, 40.483753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306252, 32.745228, 40.579338>,  <32.252483, 32.971989, 40.636688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306252, 32.745228, 40.579338>,  <32.395863, 32.367294, 40.483753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306252, 32.745228, 40.579338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015375, -0.248592, 0.968486,
		0.974461, 0.213297, 0.070219,
		-0.224031, 0.944831, 0.238963,
		32.239040, 33.028679, 40.651028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933159, 32.624893, 40.910885>,  <32.395863, 32.367294, 40.483753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933159, 32.624893, 40.910885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642048, 32.885735, 40.995834>,  <32.467381, 33.042240, 41.046803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642048, 32.885735, 40.995834>,  <32.933159, 32.624893, 40.910885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642048, 32.885735, 40.995834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072765, -0.234497, 0.969390,
		0.681945, 0.720951, 0.123210,
		-0.727775, 0.652105, 0.212374,
		32.423714, 33.081367, 41.059547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168377, 32.946003, 41.455120>,  <32.933159, 32.624893, 40.910885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168377, 32.946003, 41.455120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772171, 33.000942, 41.453949>,  <32.534447, 33.033905, 41.453247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772171, 33.000942, 41.453949>,  <33.168377, 32.946003, 41.455120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772171, 33.000942, 41.453949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059153, -0.407194, 0.911424,
		0.123990, 0.902956, 0.411457,
		-0.990519, 0.137346, -0.002924,
		32.475014, 33.042145, 41.453072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036762, 33.338795, 42.079880>,  <33.168377, 32.946003, 41.455120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036762, 33.338795, 42.079880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692806, 33.172726, 41.961071>,  <32.486431, 33.073086, 41.889786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692806, 33.172726, 41.961071>,  <33.036762, 33.338795, 42.079880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692806, 33.172726, 41.961071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218965, -0.225624, 0.949288,
		-0.461130, 0.881322, 0.103105,
		-0.859892, -0.415169, -0.297021,
		32.434837, 33.048176, 41.871964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555847, 33.611557, 42.539696>,  <33.036762, 33.338795, 42.079880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555847, 33.611557, 42.539696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388332, 33.276783, 42.398750>,  <32.287823, 33.075920, 42.314182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388332, 33.276783, 42.398750>,  <32.555847, 33.611557, 42.539696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388332, 33.276783, 42.398750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223856, -0.280908, 0.933263,
		-0.880061, 0.469715, -0.069712,
		-0.418785, -0.836934, -0.352364,
		32.262695, 33.025703, 42.293041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828924, 33.543179, 42.874725>,  <32.555847, 33.611557, 42.539696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828924, 33.543179, 42.874725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932297, 33.177242, 42.750607>,  <31.994320, 32.957680, 42.676136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932297, 33.177242, 42.750607>,  <31.828924, 33.543179, 42.874725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932297, 33.177242, 42.750607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297558, -0.380976, 0.875395,
		-0.919061, -0.133897, -0.370673,
		0.258431, -0.914839, -0.310298,
		32.009827, 32.902790, 42.657516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238573, 33.043171, 43.033478>,  <31.828924, 33.543179, 42.874725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238573, 33.043171, 43.033478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535494, 32.777855, 42.995464>,  <31.713646, 32.618664, 42.972656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535494, 32.777855, 42.995464>,  <31.238573, 33.043171, 43.033478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535494, 32.777855, 42.995464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188196, -0.342496, 0.920478,
		-0.643094, -0.665388, -0.379064,
		0.742302, -0.663292, -0.095034,
		31.758184, 32.578869, 42.966953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890200, 32.414925, 43.160461>,  <31.238573, 33.043171, 43.033478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890200, 32.414925, 43.160461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280394, 32.333534, 43.193981>,  <31.514511, 32.284698, 43.214092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280394, 32.333534, 43.193981>,  <30.890200, 32.414925, 43.160461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280394, 32.333534, 43.193981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165420, -0.426908, 0.889036,
		-0.145124, -0.881105, -0.450102,
		0.975487, -0.203476, 0.083798,
		31.573040, 32.272491, 43.219120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923891, 31.787748, 43.467834>,  <30.890200, 32.414925, 43.160461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923891, 31.787748, 43.467834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274214, 31.962280, 43.550369>,  <31.484407, 32.067001, 43.599888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274214, 31.962280, 43.550369>,  <30.923891, 31.787748, 43.467834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274214, 31.962280, 43.550369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011967, -0.446992, 0.894458,
		0.482509, -0.780905, -0.396702,
		0.875809, 0.436332, 0.206333,
		31.536957, 32.093182, 43.612270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197165, 31.296375, 43.950279>,  <30.923891, 31.787748, 43.467834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197165, 31.296375, 43.950279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418947, 31.626255, 43.994907>,  <31.552017, 31.824183, 44.021683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418947, 31.626255, 43.994907>,  <31.197165, 31.296375, 43.950279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418947, 31.626255, 43.994907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075071, -0.183078, 0.980228,
		0.828820, -0.535119, -0.163420,
		0.554457, 0.824700, 0.111567,
		31.585285, 31.873665, 44.028378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817282, 31.084249, 44.249908>,  <31.197165, 31.296375, 43.950279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817282, 31.084249, 44.249908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814417, 31.473038, 44.343906>,  <31.812698, 31.706310, 44.400307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814417, 31.473038, 44.343906>,  <31.817282, 31.084249, 44.249908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814417, 31.473038, 44.343906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254831, -0.225469, 0.940332,
		0.966959, 0.066619, -0.246073,
		-0.007162, 0.971970, 0.234996,
		31.812269, 31.764629, 44.414406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495598, 31.226748, 44.716476>,  <31.817282, 31.084249, 44.249908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495598, 31.226748, 44.716476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255123, 31.540482, 44.777660>,  <32.110840, 31.728722, 44.814373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255123, 31.540482, 44.777660>,  <32.495598, 31.226748, 44.716476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255123, 31.540482, 44.777660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254560, 0.006523, 0.967035,
		0.757481, 0.620305, -0.203581,
		-0.601184, 0.784334, 0.152964,
		32.074768, 31.775782, 44.823551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818501, 31.693512, 45.244778>,  <32.495598, 31.226748, 44.716476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818501, 31.693512, 45.244778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424679, 31.763142, 45.252308>,  <32.188385, 31.804918, 45.256824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424679, 31.763142, 45.252308>,  <32.818501, 31.693512, 45.244778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424679, 31.763142, 45.252308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027868, -0.261935, 0.964683,
		0.172855, 0.949257, 0.262739,
		-0.984553, 0.174073, 0.018823,
		32.129314, 31.815363, 45.257954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737919, 31.993813, 45.822327>,  <32.818501, 31.693512, 45.244778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737919, 31.993813, 45.822327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366959, 31.872332, 45.734970>,  <32.144382, 31.799442, 45.682556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366959, 31.872332, 45.734970>,  <32.737919, 31.993813, 45.822327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366959, 31.872332, 45.734970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110231, -0.336035, 0.935377,
		-0.357466, 0.891541, 0.278160,
		-0.927398, -0.303703, -0.218396,
		32.088737, 31.781221, 45.669453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358345, 32.139442, 46.365105>,  <32.737919, 31.993813, 45.822327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358345, 32.139442, 46.365105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126087, 31.875307, 46.174606>,  <31.986732, 31.716825, 46.060307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126087, 31.875307, 46.174606>,  <32.358345, 32.139442, 46.365105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126087, 31.875307, 46.174606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287652, -0.380841, 0.878758,
		-0.761651, 0.647236, 0.031185,
		-0.580641, -0.660337, -0.476247,
		31.951895, 31.677206, 46.031731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596972, 32.220200, 46.596287>,  <32.358345, 32.139442, 46.365105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596972, 32.220200, 46.596287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623619, 31.851719, 46.442947>,  <31.639606, 31.630632, 46.350945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623619, 31.851719, 46.442947>,  <31.596972, 32.220200, 46.596287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623619, 31.851719, 46.442947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239636, -0.387730, 0.890079,
		-0.968575, 0.032570, -0.246582,
		0.066618, -0.921197, -0.383350,
		31.643604, 31.575359, 46.327942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084566, 31.758688, 46.921883>,  <31.596972, 32.220200, 46.596287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084566, 31.758688, 46.921883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325218, 31.481354, 46.763226>,  <31.469608, 31.314953, 46.668030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325218, 31.481354, 46.763226>,  <31.084566, 31.758688, 46.921883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325218, 31.481354, 46.763226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086164, -0.549997, 0.830710,
		-0.794115, -0.465602, -0.390634,
		0.601628, -0.693338, -0.396644,
		31.505707, 31.273352, 46.644234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756035, 31.204205, 47.093254>,  <31.084566, 31.758688, 46.921883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756035, 31.204205, 47.093254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116383, 31.059319, 46.997559>,  <31.332592, 30.972387, 46.940140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116383, 31.059319, 46.997559>,  <30.756035, 31.204205, 47.093254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116383, 31.059319, 46.997559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010723, -0.569531, 0.821900,
		-0.433957, -0.737859, -0.516957,
		0.900869, -0.362213, -0.239240,
		31.386642, 30.950655, 46.925785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764355, 30.581556, 47.479374>,  <30.756035, 31.204205, 47.093254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764355, 30.581556, 47.479374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144707, 30.638184, 47.369255>,  <31.372917, 30.672161, 47.303185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144707, 30.638184, 47.369255>,  <30.764355, 30.581556, 47.479374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144707, 30.638184, 47.369255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307894, -0.524794, 0.793594,
		-0.032125, -0.839374, -0.542604,
		0.950878, 0.141570, -0.275298,
		31.429970, 30.680655, 47.286667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124830, 29.984850, 47.571106>,  <30.764355, 30.581556, 47.479374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124830, 29.984850, 47.571106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444778, 30.224791, 47.563263>,  <31.636747, 30.368755, 47.558556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444778, 30.224791, 47.563263>,  <31.124830, 29.984850, 47.571106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444778, 30.224791, 47.563263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402365, -0.511719, 0.759109,
		0.445321, -0.615078, -0.650668,
		0.799870, 0.599853, -0.019607,
		31.684740, 30.404747, 47.557381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737749, 29.515673, 47.442139>,  <31.124830, 29.984850, 47.571106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737749, 29.515673, 47.442139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800573, 29.858805, 47.637878>,  <31.838268, 30.064684, 47.755322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800573, 29.858805, 47.637878>,  <31.737749, 29.515673, 47.442139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800573, 29.858805, 47.637878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524357, -0.492320, 0.694745,
		0.836888, 0.147475, -0.527134,
		0.157061, 0.857830, 0.489346,
		31.847692, 30.116154, 47.784683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439739, 29.519064, 47.701462>,  <31.737749, 29.515673, 47.442139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439739, 29.519064, 47.701462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250710, 29.799309, 47.915310>,  <32.137291, 29.967455, 48.043617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250710, 29.799309, 47.915310>,  <32.439739, 29.519064, 47.701462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250710, 29.799309, 47.915310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482860, -0.301631, 0.822110,
		0.737236, 0.646655, -0.195753,
		-0.472577, 0.700611, 0.534617,
		32.108936, 30.009493, 48.075695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866402, 29.512398, 48.230434>,  <32.439739, 29.519064, 47.701462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866402, 29.512398, 48.230434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562595, 29.707748, 48.402306>,  <32.380310, 29.824959, 48.505428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562595, 29.707748, 48.402306>,  <32.866402, 29.512398, 48.230434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562595, 29.707748, 48.402306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245065, -0.397043, 0.884477,
		0.602557, 0.777075, 0.181877,
		-0.759518, 0.488377, 0.429675,
		32.334740, 29.854261, 48.531208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132370, 29.726185, 48.833519>,  <32.866402, 29.512398, 48.230434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132370, 29.726185, 48.833519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738609, 29.723293, 48.903828>,  <32.502354, 29.721560, 48.946011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738609, 29.723293, 48.903828>,  <33.132370, 29.726185, 48.833519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738609, 29.723293, 48.903828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160485, -0.446113, 0.880470,
		0.072048, 0.894947, 0.440316,
		-0.984405, -0.007227, 0.175767,
		32.443287, 29.721125, 48.956558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019325, 29.967669, 49.488750>,  <33.132370, 29.726185, 48.833519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019325, 29.967669, 49.488750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672222, 29.778151, 49.428734>,  <32.463959, 29.664440, 49.392723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672222, 29.778151, 49.428734>,  <33.019325, 29.967669, 49.488750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672222, 29.778151, 49.428734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011103, -0.320316, 0.947246,
		-0.496862, 0.820314, 0.283218,
		-0.867758, -0.473795, -0.150045,
		32.411896, 29.636011, 49.383720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634293, 30.052826, 50.149879>,  <33.019325, 29.967669, 49.488750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634293, 30.052826, 50.149879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520790, 29.722897, 49.954269>,  <32.452690, 29.524939, 49.836903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520790, 29.722897, 49.954269>,  <32.634293, 30.052826, 50.149879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520790, 29.722897, 49.954269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089964, -0.530641, 0.842809,
		-0.954667, 0.195156, 0.224776,
		-0.283754, -0.824824, -0.489029,
		32.435665, 29.475449, 49.807560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295238, 29.683510, 50.643066>,  <32.634293, 30.052826, 50.149879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295238, 29.683510, 50.643066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293285, 29.396313, 50.364655>,  <32.292114, 29.223995, 50.197605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293285, 29.396313, 50.364655>,  <32.295238, 29.683510, 50.643066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293285, 29.396313, 50.364655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107177, -0.692409, 0.713501,
		-0.994228, -0.071118, 0.080330,
		-0.004878, -0.717992, -0.696034,
		32.291821, 29.180916, 50.155846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660782, 29.091928, 50.722179>,  <32.295238, 29.683510, 50.643066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660782, 29.091928, 50.722179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999962, 28.957806, 50.557961>,  <32.203472, 28.877333, 50.459431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999962, 28.957806, 50.557961>,  <31.660782, 29.091928, 50.722179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999962, 28.957806, 50.557961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092304, -0.669267, 0.737267,
		-0.521973, -0.663062, -0.536556,
		0.847953, -0.335307, -0.410542,
		32.254349, 28.857214, 50.434799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664652, 28.333166, 50.779686>,  <31.660782, 29.091928, 50.722179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664652, 28.333166, 50.779686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041004, 28.452370, 50.715267>,  <32.266815, 28.523891, 50.676617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041004, 28.452370, 50.715267>,  <31.664652, 28.333166, 50.779686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041004, 28.452370, 50.715267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338412, -0.805977, 0.485673,
		0.014936, -0.511460, -0.859177,
		0.940879, 0.298010, -0.161047,
		32.323269, 28.541773, 50.666954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108810, 27.811361, 50.543102>,  <31.664652, 28.333166, 50.779686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108810, 27.811361, 50.543102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320644, 28.050835, 50.783474>,  <32.447746, 28.194519, 50.927696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320644, 28.050835, 50.783474>,  <32.108810, 27.811361, 50.543102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320644, 28.050835, 50.783474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316556, -0.796738, 0.514783,
		0.786974, -0.082396, -0.611459,
		0.529589, 0.598682, 0.600929,
		32.479523, 28.230440, 50.963753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856060, 27.676369, 50.428894>,  <32.108810, 27.811361, 50.543102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856060, 27.676369, 50.428894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733433, 27.805002, 50.787247>,  <32.659855, 27.882183, 51.002258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733433, 27.805002, 50.787247>,  <32.856060, 27.676369, 50.428894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733433, 27.805002, 50.787247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314827, -0.853968, 0.414274,
		0.898276, 0.409050, 0.160557,
		-0.306569, 0.321585, 0.895879,
		32.641460, 27.901478, 51.056011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471889, 27.841806, 49.794041>,  <32.856060, 27.676369, 50.428894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471889, 27.841806, 49.794041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463825, 27.463312, 49.664898>,  <32.458984, 27.236216, 49.587414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463825, 27.463312, 49.664898>,  <32.471889, 27.841806, 49.794041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463825, 27.463312, 49.664898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558363, -0.257210, 0.788716,
		-0.829352, 0.196172, -0.523156,
		-0.020163, -0.946235, -0.322853,
		32.457775, 27.179441, 49.568043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823420, 27.491343, 49.815075>,  <32.471889, 27.841806, 49.794041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823420, 27.491343, 49.815075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053295, 27.164331, 49.829952>,  <32.191219, 26.968124, 49.838879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053295, 27.164331, 49.829952>,  <31.823420, 27.491343, 49.815075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053295, 27.164331, 49.829952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570354, -0.367514, 0.734595,
		-0.586883, -0.443376, -0.677485,
		0.574687, -0.817528, 0.037194,
		32.225700, 26.919073, 49.841110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314939, 26.943743, 49.860210>,  <31.823420, 27.491343, 49.815075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314939, 26.943743, 49.860210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678150, 26.814337, 49.966663>,  <31.896076, 26.736692, 50.030537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678150, 26.814337, 49.966663>,  <31.314939, 26.943743, 49.860210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678150, 26.814337, 49.966663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416396, -0.627470, 0.657948,
		-0.045866, -0.708251, -0.704469,
		0.908026, -0.323515, 0.266133,
		31.950558, 26.717281, 50.046505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470179, 26.155464, 49.846561>,  <31.314939, 26.943743, 49.860210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470179, 26.155464, 49.846561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665745, 26.378754, 50.114697>,  <31.783085, 26.512728, 50.275578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665745, 26.378754, 50.114697>,  <31.470179, 26.155464, 49.846561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665745, 26.378754, 50.114697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377420, -0.557428, 0.739478,
		0.786458, -0.614539, -0.061850,
		0.488916, 0.558225, 0.670333,
		31.812420, 26.546221, 50.315796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024063, 25.886633, 50.228989>,  <31.470179, 26.155464, 49.846561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024063, 25.886633, 50.228989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831818, 26.162035, 50.446236>,  <31.716471, 26.327276, 50.576584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831818, 26.162035, 50.446236>,  <32.024063, 25.886633, 50.228989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831818, 26.162035, 50.446236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457862, -0.725229, 0.514204,
		0.747914, -0.001539, 0.663794,
		-0.480611, 0.688506, 0.543113,
		31.687634, 26.368587, 50.609169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543629, 25.898041, 49.675087>,  <32.024063, 25.886633, 50.228989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543629, 25.898041, 49.675087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344337, 26.244576, 49.661026>,  <32.224762, 26.452496, 49.652588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344337, 26.244576, 49.661026>,  <32.543629, 25.898041, 49.675087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344337, 26.244576, 49.661026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489101, 0.247338, -0.836424,
		-0.715928, -0.433920, -0.546955,
		-0.498224, 0.866336, -0.035154,
		32.194870, 26.504477, 49.650478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244850, 25.945721, 49.104748>,  <32.543629, 25.898041, 49.675087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244850, 25.945721, 49.104748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292877, 26.325708, 49.220085>,  <32.321693, 26.553701, 49.289288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292877, 26.325708, 49.220085>,  <32.244850, 25.945721, 49.104748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292877, 26.325708, 49.220085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384582, 0.223257, -0.895685,
		-0.915248, 0.218436, -0.338535,
		0.120070, 0.949969, 0.288343,
		32.328899, 26.610699, 49.306587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903671, 26.342476, 48.665371>,  <32.244850, 25.945721, 49.104748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903671, 26.342476, 48.665371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178413, 26.588240, 48.820667>,  <32.343258, 26.735699, 48.913845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178413, 26.588240, 48.820667>,  <31.903671, 26.342476, 48.665371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178413, 26.588240, 48.820667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248092, 0.303890, -0.919838,
		-0.683140, 0.728114, 0.056297,
		0.686855, 0.614411, 0.388239,
		32.384468, 26.772564, 48.937138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953899, 26.896936, 48.214497>,  <31.903671, 26.342476, 48.665371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953899, 26.896936, 48.214497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302448, 26.945465, 48.404648>,  <32.511578, 26.974583, 48.518738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302448, 26.945465, 48.404648>,  <31.953899, 26.896936, 48.214497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302448, 26.945465, 48.404648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404675, 0.370097, -0.836222,
		-0.277391, 0.921037, 0.273396,
		0.871374, 0.121324, 0.475382,
		32.563862, 26.981863, 48.547264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138130, 27.557014, 48.079685>,  <31.953899, 26.896936, 48.214497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138130, 27.557014, 48.079685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477287, 27.381109, 48.198132>,  <32.680782, 27.275566, 48.269199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477287, 27.381109, 48.198132>,  <32.138130, 27.557014, 48.079685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477287, 27.381109, 48.198132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490743, 0.439661, -0.752243,
		0.200619, 0.783139, 0.588596,
		0.847894, -0.439764, 0.296115,
		32.731655, 27.249180, 48.286964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589203, 28.129320, 48.159523>,  <32.138130, 27.557014, 48.079685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589203, 28.129320, 48.159523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833443, 27.814985, 48.120270>,  <32.979988, 27.626385, 48.096718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833443, 27.814985, 48.120270>,  <32.589203, 28.129320, 48.159523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833443, 27.814985, 48.120270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528306, 0.496501, -0.688752,
		0.589969, 0.368708, 0.718325,
		0.610598, -0.785837, -0.098129,
		33.016621, 27.579233, 48.090832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175007, 28.382326, 48.031483>,  <32.589203, 28.129320, 48.159523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175007, 28.382326, 48.031483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253334, 28.015812, 47.891727>,  <33.300331, 27.795902, 47.807873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253334, 28.015812, 47.891727>,  <33.175007, 28.382326, 48.031483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253334, 28.015812, 47.891727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438635, 0.400498, -0.804488,
		0.877071, 0.004282, 0.480342,
		0.195821, -0.916287, -0.349387,
		33.312080, 27.740925, 47.786911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754963, 28.483248, 47.744263>,  <33.175007, 28.382326, 48.031483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754963, 28.483248, 47.744263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662968, 28.126036, 47.589546>,  <33.607773, 27.911709, 47.496716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662968, 28.126036, 47.589546>,  <33.754963, 28.483248, 47.744263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662968, 28.126036, 47.589546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343555, 0.297353, -0.890815,
		0.910537, -0.337756, 0.238419,
		-0.229984, -0.893030, -0.386789,
		33.593971, 27.858128, 47.473511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344803, 28.134817, 47.359425>,  <33.754963, 28.483248, 47.744263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344803, 28.134817, 47.359425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019211, 27.960213, 47.206120>,  <33.823856, 27.855450, 47.114136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019211, 27.960213, 47.206120>,  <34.344803, 28.134817, 47.359425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019211, 27.960213, 47.206120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280638, 0.282176, -0.917398,
		0.508605, -0.854302, -0.107183,
		-0.813979, -0.436514, -0.383266,
		33.775017, 27.829258, 47.091141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586597, 27.765146, 46.712875>,  <34.344803, 28.134817, 47.359425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586597, 27.765146, 46.712875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190041, 27.790028, 46.666809>,  <33.952106, 27.804956, 46.639168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190041, 27.790028, 46.666809>,  <34.586597, 27.765146, 46.712875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190041, 27.790028, 46.666809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129327, 0.329788, -0.935154,
		-0.020191, -0.942003, -0.334996,
		-0.991397, 0.062206, -0.115168,
		33.892620, 27.808689, 46.632259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426514, 27.445452, 46.026493>,  <34.586597, 27.765146, 46.712875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426514, 27.445452, 46.026493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118618, 27.670248, 46.147602>,  <33.933880, 27.805126, 46.220268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118618, 27.670248, 46.147602>,  <34.426514, 27.445452, 46.026493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118618, 27.670248, 46.147602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119393, 0.339183, -0.933113,
		-0.627096, -0.754401, -0.193984,
		-0.769738, 0.561991, 0.302771,
		33.887695, 27.838846, 46.238434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939835, 27.289909, 45.486671>,  <34.426514, 27.445452, 46.026493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939835, 27.289909, 45.486671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841873, 27.627029, 45.678387>,  <33.783096, 27.829302, 45.793415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841873, 27.627029, 45.678387>,  <33.939835, 27.289909, 45.486671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841873, 27.627029, 45.678387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228376, 0.430287, -0.873326,
		-0.942268, -0.323334, 0.087098,
		-0.244899, 0.842798, 0.479287,
		33.768402, 27.879869, 45.822174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265633, 27.400126, 45.254360>,  <33.939835, 27.289909, 45.486671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265633, 27.400126, 45.254360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398918, 27.753630, 45.385773>,  <33.478889, 27.965733, 45.464619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398918, 27.753630, 45.385773>,  <33.265633, 27.400126, 45.254360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398918, 27.753630, 45.385773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177813, 0.401096, -0.898613,
		-0.925933, 0.241013, 0.290795,
		0.333214, 0.883762, 0.328532,
		33.498882, 28.018759, 45.484333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800339, 27.809828, 45.007465>,  <33.265633, 27.400126, 45.254360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800339, 27.809828, 45.007465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117001, 28.039368, 45.091351>,  <33.306999, 28.177092, 45.141682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117001, 28.039368, 45.091351>,  <32.800339, 27.809828, 45.007465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117001, 28.039368, 45.091351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138344, 0.502698, -0.853320,
		-0.595098, 0.646524, 0.477352,
		0.791656, 0.573848, 0.209712,
		33.354496, 28.211521, 45.154263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600449, 28.516588, 44.902302>,  <32.800339, 27.809828, 45.007465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600449, 28.516588, 44.902302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999836, 28.537045, 44.893936>,  <33.239468, 28.549318, 44.888916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999836, 28.537045, 44.893936>,  <32.600449, 28.516588, 44.902302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999836, 28.537045, 44.893936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040764, 0.426375, -0.903628,
		-0.037298, 0.903100, 0.427808,
		0.998472, 0.051143, -0.020911,
		33.299377, 28.552387, 44.887661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811813, 29.251625, 44.773113>,  <32.600449, 28.516588, 44.902302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811813, 29.251625, 44.773113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102074, 29.007370, 44.646278>,  <33.276230, 28.860817, 44.570175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102074, 29.007370, 44.646278>,  <32.811813, 29.251625, 44.773113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102074, 29.007370, 44.646278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029771, 0.488279, -0.872179,
		0.687415, 0.623461, 0.372502,
		0.725654, -0.610639, -0.317089,
		33.319771, 28.824179, 44.551151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186340, 29.693369, 44.336792>,  <32.811813, 29.251625, 44.773113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186340, 29.693369, 44.336792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344707, 29.344379, 44.222225>,  <33.439728, 29.134985, 44.153484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344707, 29.344379, 44.222225>,  <33.186340, 29.693369, 44.336792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344707, 29.344379, 44.222225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172716, 0.377094, -0.909928,
		0.901896, 0.310790, 0.299990,
		0.395921, -0.872473, -0.286420,
		33.463486, 29.082638, 44.136299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899616, 29.867008, 44.061405>,  <33.186340, 29.693369, 44.336792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899616, 29.867008, 44.061405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745163, 29.524540, 43.924072>,  <33.652493, 29.319059, 43.841675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745163, 29.524540, 43.924072>,  <33.899616, 29.867008, 44.061405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745163, 29.524540, 43.924072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155167, 0.427179, -0.890753,
		0.909299, -0.290675, -0.297797,
		-0.386132, -0.856169, -0.343330,
		33.629322, 29.267689, 43.821072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294964, 29.701931, 43.407696>,  <33.899616, 29.867008, 44.061405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294964, 29.701931, 43.407696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945717, 29.510471, 43.370670>,  <33.736168, 29.395596, 43.348457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945717, 29.510471, 43.370670>,  <34.294964, 29.701931, 43.407696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945717, 29.510471, 43.370670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152121, 0.447865, -0.881066,
		0.463184, -0.755186, -0.463849,
		-0.873109, -0.478657, -0.092564,
		33.683784, 29.366877, 43.342903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275440, 29.517139, 42.682869>,  <34.294964, 29.701931, 43.407696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275440, 29.517139, 42.682869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890961, 29.491335, 42.790157>,  <33.660275, 29.475853, 42.854530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890961, 29.491335, 42.790157>,  <34.275440, 29.517139, 42.682869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890961, 29.491335, 42.790157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275867, 0.218841, -0.935952,
		0.001679, -0.973626, -0.228145,
		-0.961195, -0.064510, 0.268224,
		33.602604, 29.471983, 42.870625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985191, 28.983078, 42.324986>,  <34.275440, 29.517139, 42.682869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985191, 28.983078, 42.324986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676125, 29.213345, 42.432018>,  <33.490685, 29.351503, 42.496239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676125, 29.213345, 42.432018>,  <33.985191, 28.983078, 42.324986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676125, 29.213345, 42.432018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273782, 0.078108, -0.958615,
		-0.572742, -0.813946, 0.097255,
		-0.772664, 0.575665, 0.267580,
		33.444324, 29.386044, 42.512291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576141, 28.802710, 41.828022>,  <33.985191, 28.983078, 42.324986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576141, 28.802710, 41.828022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384468, 29.130531, 41.953697>,  <33.269463, 29.327225, 42.029102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384468, 29.130531, 41.953697>,  <33.576141, 28.802710, 41.828022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384468, 29.130531, 41.953697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327774, 0.164970, -0.930241,
		-0.814214, -0.548741, 0.189577,
		-0.479187, 0.819554, 0.314184,
		33.240711, 29.376398, 42.047951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777363, 28.895899, 41.566994>,  <33.576141, 28.802710, 41.828022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777363, 28.895899, 41.566994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847439, 29.270025, 41.689949>,  <32.889484, 29.494501, 41.763721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847439, 29.270025, 41.689949>,  <32.777363, 28.895899, 41.566994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847439, 29.270025, 41.689949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301114, 0.348164, -0.887757,
		-0.937357, 0.062969, 0.342633,
		0.175194, 0.935316, 0.307393,
		32.899998, 29.550621, 41.782166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085854, 29.324642, 41.527550>,  <32.777363, 28.895899, 41.566994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085854, 29.324642, 41.527550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419090, 29.544657, 41.504158>,  <32.619034, 29.676664, 41.490124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419090, 29.544657, 41.504158>,  <32.085854, 29.324642, 41.527550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419090, 29.544657, 41.504158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287932, 0.340968, -0.894895,
		-0.472285, 0.762366, 0.442430,
		0.833092, 0.550035, -0.058476,
		32.669018, 29.709667, 41.486614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855446, 29.968754, 41.301655>,  <32.085854, 29.324642, 41.527550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855446, 29.968754, 41.301655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250145, 29.954365, 41.238369>,  <32.486965, 29.945732, 41.200397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250145, 29.954365, 41.238369>,  <31.855446, 29.968754, 41.301655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250145, 29.954365, 41.238369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139939, 0.304819, -0.942074,
		0.082115, 0.951731, 0.295746,
		0.986749, -0.035972, -0.158215,
		32.546169, 29.943573, 41.190903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966835, 30.600758, 41.109253>,  <31.855446, 29.968754, 41.301655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966835, 30.600758, 41.109253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279694, 30.387890, 40.979610>,  <32.467407, 30.260170, 40.901825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279694, 30.387890, 40.979610>,  <31.966835, 30.600758, 41.109253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279694, 30.387890, 40.979610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019591, 0.498900, -0.866438,
		0.622788, 0.684030, 0.379786,
		0.782145, -0.532167, -0.324110,
		32.514336, 30.228239, 40.882378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229729, 31.040453, 40.653549>,  <31.966835, 30.600758, 41.109253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229729, 31.040453, 40.653549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446373, 30.713041, 40.576954>,  <32.576359, 30.516594, 40.530994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446373, 30.713041, 40.576954>,  <32.229729, 31.040453, 40.653549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446373, 30.713041, 40.576954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103936, 0.291253, -0.950983,
		0.834180, 0.495158, 0.242820,
		0.541609, -0.818529, -0.191492,
		32.608856, 30.467482, 40.519505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857456, 31.264791, 40.338387>,  <32.229729, 31.040453, 40.653549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857456, 31.264791, 40.338387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829960, 30.883194, 40.221653>,  <32.813461, 30.654236, 40.151611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829960, 30.883194, 40.221653>,  <32.857456, 31.264791, 40.338387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829960, 30.883194, 40.221653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124872, 0.281997, -0.951254,
		0.989788, -0.101835, 0.099742,
		-0.068744, -0.953995, -0.291834,
		32.809338, 30.596996, 40.134102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531906, 31.034355, 39.897289>,  <32.857456, 31.264791, 40.338387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531906, 31.034355, 39.897289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241711, 30.771748, 39.814682>,  <33.067593, 30.614183, 39.765118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241711, 30.771748, 39.814682>,  <33.531906, 31.034355, 39.897289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241711, 30.771748, 39.814682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162648, 0.128024, -0.978343,
		0.668742, -0.743365, 0.013902,
		-0.725486, -0.656520, -0.206521,
		33.024063, 30.574791, 39.752724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742798, 30.610128, 39.302528>,  <33.531906, 31.034355, 39.897289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742798, 30.610128, 39.302528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346165, 30.561424, 39.320095>,  <33.108185, 30.532202, 39.330635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346165, 30.561424, 39.320095>,  <33.742798, 30.610128, 39.302528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346165, 30.561424, 39.320095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070233, 0.221106, -0.972718,
		0.108726, -0.967619, -0.227798,
		-0.991587, -0.121758, 0.043919,
		33.048687, 30.524897, 39.333271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654144, 30.217154, 38.746185>,  <33.742798, 30.610128, 39.302528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654144, 30.217154, 38.746185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297810, 30.384714, 38.816536>,  <33.084007, 30.485250, 38.858746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297810, 30.384714, 38.816536>,  <33.654144, 30.217154, 38.746185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297810, 30.384714, 38.816536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017802, 0.354638, -0.934834,
		-0.453974, -0.835916, -0.308467,
		-0.890837, 0.418899, 0.175877,
		33.030560, 30.510384, 38.869301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222767, 30.087467, 38.082951>,  <33.654144, 30.217154, 38.746185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222767, 30.087467, 38.082951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044483, 30.403793, 38.250740>,  <32.937511, 30.593588, 38.351414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044483, 30.403793, 38.250740>,  <33.222767, 30.087467, 38.082951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044483, 30.403793, 38.250740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084749, 0.429206, -0.899222,
		-0.891156, -0.436342, -0.124282,
		-0.445711, 0.790814, 0.419469,
		32.910770, 30.641037, 38.376579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656662, 30.131500, 37.621834>,  <33.222767, 30.087467, 38.082951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656662, 30.131500, 37.621834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687580, 30.476112, 37.822548>,  <32.706131, 30.682878, 37.942978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687580, 30.476112, 37.822548>,  <32.656662, 30.131500, 37.621834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687580, 30.476112, 37.822548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266896, 0.502807, -0.822163,
		-0.960621, -0.070377, 0.268803,
		0.077295, 0.861529, 0.501790,
		32.710770, 30.734571, 37.973083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012142, 30.501997, 37.380905>,  <32.656662, 30.131500, 37.621834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012142, 30.501997, 37.380905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280956, 30.760952, 37.524715>,  <32.442245, 30.916325, 37.611000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280956, 30.760952, 37.524715>,  <32.012142, 30.501997, 37.380905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280956, 30.760952, 37.524715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153677, 0.596859, -0.787492,
		-0.724396, 0.473973, 0.500599,
		0.672037, 0.647386, 0.359524,
		32.482567, 30.955168, 37.632572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746851, 31.179434, 37.155880>,  <32.012142, 30.501997, 37.380905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746851, 31.179434, 37.155880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133900, 31.235647, 37.239742>,  <32.366131, 31.269375, 37.290058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133900, 31.235647, 37.239742>,  <31.746851, 31.179434, 37.155880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133900, 31.235647, 37.239742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123091, 0.462433, -0.878068,
		-0.220350, 0.875446, 0.430163,
		0.967623, 0.140534, 0.209657,
		32.424187, 31.277807, 37.302639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855900, 31.862347, 37.002247>,  <31.746851, 31.179434, 37.155880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855900, 31.862347, 37.002247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219025, 31.695610, 36.983814>,  <32.436897, 31.595568, 36.972755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219025, 31.695610, 36.983814>,  <31.855900, 31.862347, 37.002247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219025, 31.695610, 36.983814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205286, 0.537498, -0.817896,
		0.365702, 0.733035, 0.573517,
		0.907811, -0.416841, -0.046082,
		32.491367, 31.570559, 36.969990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304893, 32.405838, 36.810841>,  <31.855900, 31.862347, 37.002247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304893, 32.405838, 36.810841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505585, 32.070950, 36.723820>,  <32.625999, 31.870016, 36.671608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505585, 32.070950, 36.723820>,  <32.304893, 32.405838, 36.810841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505585, 32.070950, 36.723820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222415, 0.367905, -0.902872,
		0.835943, 0.404608, 0.370799,
		0.501729, -0.837220, -0.217556,
		32.656105, 31.819784, 36.658554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939732, 32.674564, 36.551437>,  <32.304893, 32.405838, 36.810841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939732, 32.674564, 36.551437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866047, 32.295208, 36.448189>,  <32.821835, 32.067596, 36.386238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866047, 32.295208, 36.448189>,  <32.939732, 32.674564, 36.551437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866047, 32.295208, 36.448189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059409, 0.251392, -0.966060,
		0.981090, -0.193293, 0.010033,
		-0.184211, -0.948388, -0.258121,
		32.810783, 32.010693, 36.370754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205151, 32.793354, 35.803272>,  <32.939732, 32.674564, 36.551437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205151, 32.793354, 35.803272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031940, 32.433586, 35.827019>,  <32.928013, 32.217724, 35.841267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031940, 32.433586, 35.827019>,  <33.205151, 32.793354, 35.803272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031940, 32.433586, 35.827019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182928, 0.023201, -0.982853,
		0.882624, -0.436461, -0.174576,
		-0.433027, -0.899424, 0.059363,
		32.902031, 32.163757, 35.844830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611431, 32.249802, 35.379837>,  <33.205151, 32.793354, 35.803272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611431, 32.249802, 35.379837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225727, 32.149029, 35.412659>,  <32.994305, 32.088566, 35.432354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225727, 32.149029, 35.412659>,  <33.611431, 32.249802, 35.379837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225727, 32.149029, 35.412659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097957, 0.051212, -0.993872,
		0.246186, -0.966389, -0.074060,
		-0.964260, -0.251932, 0.082056,
		32.936451, 32.073448, 35.437275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271309, 32.146183, 35.692207>,  <33.611431, 32.249802, 35.379837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271309, 32.146183, 35.692207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595940, 31.986528, 35.521545>,  <34.790718, 31.890736, 35.419147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595940, 31.986528, 35.521545>,  <34.271309, 32.146183, 35.692207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595940, 31.986528, 35.521545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248079, -0.425745, 0.870171,
		-0.528969, -0.812051, -0.246504,
		0.811571, -0.399141, -0.426659,
		34.839413, 31.866787, 35.393547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301258, 31.466915, 35.941334>,  <34.271309, 32.146183, 35.692207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301258, 31.466915, 35.941334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665001, 31.577553, 35.817039>,  <34.883247, 31.643936, 35.742462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665001, 31.577553, 35.817039>,  <34.301258, 31.466915, 35.941334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665001, 31.577553, 35.817039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409463, -0.463107, 0.786048,
		0.073512, -0.842037, -0.534387,
		0.909360, 0.276596, -0.310739,
		34.937809, 31.660532, 35.723816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663109, 30.887318, 35.854534>,  <34.301258, 31.466915, 35.941334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663109, 30.887318, 35.854534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898445, 31.201668, 35.930698>,  <35.039646, 31.390278, 35.976398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898445, 31.201668, 35.930698>,  <34.663109, 30.887318, 35.854534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898445, 31.201668, 35.930698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479752, -0.528800, 0.700149,
		0.650922, -0.320573, -0.688138,
		0.588336, 0.785878, 0.190412,
		35.074947, 31.437431, 35.987823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257431, 30.530668, 36.221622>,  <34.663109, 30.887318, 35.854534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257431, 30.530668, 36.221622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315083, 30.921606, 36.283627>,  <35.349674, 31.156168, 36.320831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315083, 30.921606, 36.283627>,  <35.257431, 30.530668, 36.221622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315083, 30.921606, 36.283627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629571, -0.211419, 0.747624,
		0.763458, -0.010160, -0.645778,
		0.144126, 0.977343, 0.155013,
		35.358322, 31.214809, 36.330132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957146, 30.734085, 36.190109>,  <35.257431, 30.530668, 36.221622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957146, 30.734085, 36.190109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814503, 31.014706, 36.436897>,  <35.728916, 31.183079, 36.584972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814503, 31.014706, 36.436897>,  <35.957146, 30.734085, 36.190109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814503, 31.014706, 36.436897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660328, -0.277900, 0.697667,
		0.660905, 0.656200, -0.364151,
		-0.356611, 0.701551, 0.616973,
		35.707520, 31.225170, 36.621990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502605, 31.144096, 36.368088>,  <35.957146, 30.734085, 36.190109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502605, 31.144096, 36.368088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224995, 31.197712, 36.651031>,  <36.058426, 31.229881, 36.820797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224995, 31.197712, 36.651031>,  <36.502605, 31.144096, 36.368088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224995, 31.197712, 36.651031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614989, -0.400450, 0.679285,
		0.374312, 0.906462, 0.195492,
		-0.694031, 0.134039, 0.707357,
		36.016785, 31.237925, 36.863239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907303, 31.271233, 36.976013>,  <36.502605, 31.144096, 36.368088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907303, 31.271233, 36.976013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557709, 31.173630, 37.144115>,  <36.347954, 31.115068, 37.244976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557709, 31.173630, 37.144115>,  <36.907303, 31.271233, 36.976013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557709, 31.173630, 37.144115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467576, -0.657838, 0.590442,
		0.132388, 0.712538, 0.689031,
		-0.873983, -0.244007, 0.420255,
		36.295513, 31.100428, 37.270191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074104, 31.091719, 37.734158>,  <36.907303, 31.271233, 36.976013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074104, 31.091719, 37.734158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700081, 30.959431, 37.683105>,  <36.475666, 30.880058, 37.652473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700081, 30.959431, 37.683105>,  <37.074104, 31.091719, 37.734158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700081, 30.959431, 37.683105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168899, -0.732171, 0.659847,
		-0.311670, 0.595441, 0.740482,
		-0.935059, -0.330721, -0.127626,
		36.419563, 30.860214, 37.644817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747894, 31.131800, 38.438328>,  <37.074104, 31.091719, 37.734158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747894, 31.131800, 38.438328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558949, 30.867682, 38.204788>,  <36.445580, 30.709209, 38.064663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558949, 30.867682, 38.204788>,  <36.747894, 31.131800, 38.438328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558949, 30.867682, 38.204788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231671, -0.732130, 0.640558,
		-0.850412, 0.167315, 0.498803,
		-0.472364, -0.660296, -0.583850,
		36.417240, 30.669592, 38.029633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087482, 30.914341, 38.799973>,  <36.747894, 31.131800, 38.438328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087482, 30.914341, 38.799973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191505, 30.612646, 38.558811>,  <36.253922, 30.431629, 38.414116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191505, 30.612646, 38.558811>,  <36.087482, 30.914341, 38.799973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191505, 30.612646, 38.558811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084349, -0.604255, 0.792313,
		-0.961901, -0.256905, -0.093524,
		0.260062, -0.754238, -0.602903,
		36.269524, 30.386375, 38.377941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703667, 30.318214, 39.002613>,  <36.087482, 30.914341, 38.799973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703667, 30.318214, 39.002613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003620, 30.161806, 38.789158>,  <36.183594, 30.067961, 38.661083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003620, 30.161806, 38.789158>,  <35.703667, 30.318214, 39.002613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003620, 30.161806, 38.789158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150150, -0.684986, 0.712916,
		-0.644301, -0.614733, -0.454951,
		0.749888, -0.391022, -0.533639,
		36.228588, 30.044500, 38.629066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588943, 29.665255, 39.036961>,  <35.703667, 30.318214, 39.002613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588943, 29.665255, 39.036961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976589, 29.681641, 38.939690>,  <36.209179, 29.691473, 38.881329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976589, 29.681641, 38.939690>,  <35.588943, 29.665255, 39.036961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976589, 29.681641, 38.939690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203493, -0.689870, 0.694744,
		-0.139299, -0.722773, -0.676901,
		0.969116, 0.040967, -0.243178,
		36.267323, 29.693932, 38.866737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765663, 29.024538, 39.062881>,  <35.588943, 29.665255, 39.036961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765663, 29.024538, 39.062881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123062, 29.203911, 39.053375>,  <36.337502, 29.311535, 39.047672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123062, 29.203911, 39.053375>,  <35.765663, 29.024538, 39.062881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123062, 29.203911, 39.053375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322545, -0.604041, 0.728765,
		0.312444, -0.658819, -0.684351,
		0.893501, 0.448432, -0.023770,
		36.391113, 29.338440, 39.046246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264290, 28.537066, 39.028027>,  <35.765663, 29.024538, 39.062881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264290, 28.537066, 39.028027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433090, 28.857906, 39.197044>,  <36.534370, 29.050411, 39.298454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433090, 28.857906, 39.197044>,  <36.264290, 28.537066, 39.028027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433090, 28.857906, 39.197044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231078, -0.545852, 0.805387,
		0.876652, -0.242232, -0.415698,
		0.422000, 0.802103, 0.422548,
		36.559689, 29.098537, 39.323811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854610, 28.261312, 39.437424>,  <36.264290, 28.537066, 39.028027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854610, 28.261312, 39.437424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742054, 28.617313, 39.580929>,  <36.674519, 28.830914, 39.667034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742054, 28.617313, 39.580929>,  <36.854610, 28.261312, 39.437424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742054, 28.617313, 39.580929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227941, -0.301179, 0.925924,
		0.932127, 0.342328, -0.118118,
		-0.281395, 0.890002, 0.358767,
		36.657635, 28.884314, 39.688560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299454, 28.430544, 39.934612>,  <36.854610, 28.261312, 39.437424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299454, 28.430544, 39.934612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972595, 28.641617, 40.027409>,  <36.776478, 28.768261, 40.083088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972595, 28.641617, 40.027409>,  <37.299454, 28.430544, 39.934612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972595, 28.641617, 40.027409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158988, -0.180528, 0.970635,
		0.554067, 0.830037, 0.063623,
		-0.817149, 0.527682, 0.231990,
		36.727451, 28.799921, 40.097004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464863, 28.667545, 40.570591>,  <37.299454, 28.430544, 39.934612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464863, 28.667545, 40.570591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072025, 28.742619, 40.577026>,  <36.836323, 28.787663, 40.580887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072025, 28.742619, 40.577026>,  <37.464863, 28.667545, 40.570591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072025, 28.742619, 40.577026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022848, -0.203458, 0.978817,
		0.186982, 0.960926, 0.204104,
		-0.982098, 0.187685, 0.016088,
		36.777397, 28.798923, 40.581852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345963, 28.988770, 41.143375>,  <37.464863, 28.667545, 40.570591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345963, 28.988770, 41.143375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969856, 28.873764, 41.070446>,  <36.744194, 28.804760, 41.026688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969856, 28.873764, 41.070446>,  <37.345963, 28.988770, 41.143375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969856, 28.873764, 41.070446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130779, -0.189424, 0.973147,
		-0.314331, 0.938858, 0.140507,
		-0.940262, -0.287515, -0.182325,
		36.687778, 28.787510, 41.015747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026344, 29.102165, 41.748638>,  <37.345963, 28.988770, 41.143375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026344, 29.102165, 41.748638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792290, 28.844200, 41.551987>,  <36.651855, 28.689421, 41.433998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792290, 28.844200, 41.551987>,  <37.026344, 29.102165, 41.748638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792290, 28.844200, 41.551987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329024, -0.365297, 0.870805,
		-0.741184, 0.671299, 0.001558,
		-0.585140, -0.644915, -0.491626,
		36.616749, 28.650726, 41.404499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383717, 29.226126, 41.905842>,  <37.026344, 29.102165, 41.748638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383717, 29.226126, 41.905842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385841, 28.842045, 41.794144>,  <36.387115, 28.611595, 41.727123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385841, 28.842045, 41.794144>,  <36.383717, 29.226126, 41.905842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385841, 28.842045, 41.794144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411738, -0.256581, 0.874435,
		-0.911287, 0.110336, -0.396715,
		0.005308, -0.960204, -0.279249,
		36.387432, 28.553984, 41.710369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766140, 28.997765, 42.229473>,  <36.383717, 29.226126, 41.905842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766140, 28.997765, 42.229473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951782, 28.650331, 42.159992>,  <36.063168, 28.441872, 42.118301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951782, 28.650331, 42.159992>,  <35.766140, 28.997765, 42.229473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951782, 28.650331, 42.159992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488451, -0.414549, 0.767831,
		-0.738934, -0.271506, -0.616653,
		0.464104, -0.868581, -0.173707,
		36.091015, 28.389757, 42.107880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264881, 28.341419, 42.371170>,  <35.766140, 28.997765, 42.229473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264881, 28.341419, 42.371170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640541, 28.205057, 42.388069>,  <35.865936, 28.123240, 42.398209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640541, 28.205057, 42.388069>,  <35.264881, 28.341419, 42.371170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640541, 28.205057, 42.388069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144542, -0.280595, 0.948880,
		-0.311630, -0.897243, -0.312796,
		0.939145, -0.340912, 0.042248,
		35.922287, 28.102785, 42.400745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258606, 27.725391, 42.663372>,  <35.264881, 28.341419, 42.371170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258606, 27.725391, 42.663372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636669, 27.842289, 42.721703>,  <35.863506, 27.912428, 42.756702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636669, 27.842289, 42.721703>,  <35.258606, 27.725391, 42.663372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636669, 27.842289, 42.721703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073546, -0.244590, 0.966833,
		0.318222, -0.924537, -0.209683,
		0.945159, 0.292246, 0.145830,
		35.920216, 27.929962, 42.765453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495007, 27.288168, 43.196720>,  <35.258606, 27.725391, 42.663372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495007, 27.288168, 43.196720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760349, 27.587475, 43.193836>,  <35.919556, 27.767059, 43.192104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760349, 27.587475, 43.193836>,  <35.495007, 27.288168, 43.196720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760349, 27.587475, 43.193836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088458, -0.068841, 0.993698,
		0.743055, -0.659816, -0.111856,
		0.663359, 0.748267, -0.007213,
		35.959358, 27.811954, 43.191673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047222, 26.992226, 43.521034>,  <35.495007, 27.288168, 43.196720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047222, 26.992226, 43.521034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062695, 27.389942, 43.560802>,  <36.071980, 27.628572, 43.584663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062695, 27.389942, 43.560802>,  <36.047222, 26.992226, 43.521034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062695, 27.389942, 43.560802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047018, -0.097577, 0.994117,
		0.998145, -0.043131, 0.042975,
		0.038684, 0.994293, 0.099424,
		36.074299, 27.688231, 43.590630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553307, 27.156128, 44.019123>,  <36.047222, 26.992226, 43.521034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553307, 27.156128, 44.019123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345795, 27.496351, 44.053574>,  <36.221287, 27.700485, 44.074242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345795, 27.496351, 44.053574>,  <36.553307, 27.156128, 44.019123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345795, 27.496351, 44.053574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465230, 0.196360, 0.863136,
		0.717236, 0.487845, -0.497573,
		-0.518780, 0.850559, 0.086124,
		36.190159, 27.751518, 44.079411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073536, 27.556517, 44.266502>,  <36.553307, 27.156128, 44.019123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073536, 27.556517, 44.266502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728855, 27.750296, 44.326870>,  <36.522045, 27.866564, 44.363091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728855, 27.750296, 44.326870>,  <37.073536, 27.556517, 44.266502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728855, 27.750296, 44.326870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236306, 0.119941, 0.964248,
		0.449027, 0.866559, -0.217832,
		-0.861704, 0.484449, 0.150916,
		36.470345, 27.895630, 44.372147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163494, 28.134645, 44.756752>,  <37.073536, 27.556517, 44.266502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163494, 28.134645, 44.756752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765316, 28.101543, 44.775650>,  <36.526409, 28.081682, 44.786991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765316, 28.101543, 44.775650>,  <37.163494, 28.134645, 44.756752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765316, 28.101543, 44.775650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019910, 0.304268, 0.952378,
		-0.093191, 0.948985, -0.301236,
		-0.995449, -0.082755, 0.047250,
		36.466682, 28.076717, 44.789825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989300, 28.711147, 45.131310>,  <37.163494, 28.134645, 44.756752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989300, 28.711147, 45.131310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688488, 28.448351, 45.152500>,  <36.507999, 28.290672, 45.165215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688488, 28.448351, 45.152500>,  <36.989300, 28.711147, 45.131310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688488, 28.448351, 45.152500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041558, 0.032954, 0.998592,
		-0.657814, 0.753176, 0.002521,
		-0.752033, -0.656993, 0.052978,
		36.462879, 28.251253, 45.168392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602253, 28.947618, 45.667450>,  <36.989300, 28.711147, 45.131310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602253, 28.947618, 45.667450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476986, 28.571001, 45.617779>,  <36.401825, 28.345030, 45.587975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476986, 28.571001, 45.617779>,  <36.602253, 28.947618, 45.667450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476986, 28.571001, 45.617779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075948, -0.155168, 0.984964,
		-0.946655, 0.299030, 0.120102,
		-0.313170, -0.941543, -0.124180,
		36.383034, 28.288538, 45.580524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025902, 28.894772, 46.088112>,  <36.602253, 28.947618, 45.667450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025902, 28.894772, 46.088112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140266, 28.515963, 46.029587>,  <36.208885, 28.288677, 45.994473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140266, 28.515963, 46.029587>,  <36.025902, 28.894772, 46.088112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140266, 28.515963, 46.029587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062362, -0.170747, 0.983339,
		-0.956226, -0.272020, -0.107876,
		0.285907, -0.947022, -0.146309,
		36.226040, 28.231855, 45.985695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593544, 28.529150, 46.477840>,  <36.025902, 28.894772, 46.088112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593544, 28.529150, 46.477840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871964, 28.245302, 46.434097>,  <36.039017, 28.074993, 46.407852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871964, 28.245302, 46.434097>,  <35.593544, 28.529150, 46.477840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871964, 28.245302, 46.434097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058509, -0.207868, 0.976406,
		-0.715607, -0.673227, -0.186205,
		0.696048, -0.709618, -0.109362,
		36.080776, 28.032417, 46.401287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352493, 27.979210, 46.868263>,  <35.593544, 28.529150, 46.477840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352493, 27.979210, 46.868263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746925, 27.920357, 46.837280>,  <35.983585, 27.885044, 46.818691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746925, 27.920357, 46.837280>,  <35.352493, 27.979210, 46.868263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746925, 27.920357, 46.837280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044705, -0.214110, 0.975786,
		-0.160157, -0.965665, -0.204552,
		0.986079, -0.147134, -0.077461,
		36.042747, 27.876217, 46.814041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410240, 27.389744, 47.155838>,  <35.352493, 27.979210, 46.868263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410240, 27.389744, 47.155838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775784, 27.551132, 47.174042>,  <35.995110, 27.647964, 47.184963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775784, 27.551132, 47.174042>,  <35.410240, 27.389744, 47.155838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775784, 27.551132, 47.174042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036963, -0.194281, 0.980249,
		0.404344, -0.894128, -0.192459,
		0.913860, 0.403472, 0.045507,
		36.049942, 27.672174, 47.187695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825905, 26.872318, 47.496086>,  <35.410240, 27.389744, 47.155838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825905, 26.872318, 47.496086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037144, 27.209806, 47.534569>,  <36.163887, 27.412298, 47.557659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037144, 27.209806, 47.534569>,  <35.825905, 26.872318, 47.496086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037144, 27.209806, 47.534569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012118, -0.120766, 0.992607,
		0.849099, -0.523024, -0.074000,
		0.528094, 0.843719, 0.096205,
		36.195572, 27.462921, 47.563431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312630, 26.681938, 47.997959>,  <35.825905, 26.872318, 47.496086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312630, 26.681938, 47.997959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305130, 27.081745, 48.007828>,  <36.300632, 27.321630, 48.013748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305130, 27.081745, 48.007828>,  <36.312630, 26.681938, 47.997959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305130, 27.081745, 48.007828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121616, -0.022218, 0.992329,
		0.992400, 0.021602, -0.121142,
		-0.018745, 0.999520, 0.024676,
		36.299507, 27.381601, 48.015232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844929, 26.901907, 48.447559>,  <36.312630, 26.681938, 47.997959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844929, 26.901907, 48.447559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612621, 27.227467, 48.440872>,  <36.473236, 27.422802, 48.436859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612621, 27.227467, 48.440872>,  <36.844929, 26.901907, 48.447559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612621, 27.227467, 48.440872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089742, 0.084418, 0.992381,
		0.809110, 0.574840, -0.122068,
		-0.580765, 0.813900, -0.016716,
		36.438393, 27.471636, 48.435856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207691, 27.345213, 48.831707>,  <36.844929, 26.901907, 48.447559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207691, 27.345213, 48.831707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833279, 27.485703, 48.840549>,  <36.608631, 27.569996, 48.845856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833279, 27.485703, 48.840549>,  <37.207691, 27.345213, 48.831707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833279, 27.485703, 48.840549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083320, 0.160154, 0.983569,
		0.341914, 0.922492, -0.179173,
		-0.936030, 0.351225, 0.022103,
		36.552471, 27.591070, 48.847179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256870, 28.117619, 49.120232>,  <37.207691, 27.345213, 48.831707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256870, 28.117619, 49.120232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892853, 27.961863, 49.177082>,  <36.674442, 27.868408, 49.211193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892853, 27.961863, 49.177082>,  <37.256870, 28.117619, 49.120232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892853, 27.961863, 49.177082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101512, 0.123077, 0.987192,
		-0.401894, 0.912813, -0.072477,
		-0.910042, -0.389389, 0.142125,
		36.619839, 27.845045, 49.219719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695408, 28.546000, 49.412769>,  <37.256870, 28.117619, 49.120232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695408, 28.546000, 49.412769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889950, 28.879490, 49.517349>,  <37.006676, 29.079584, 49.580097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889950, 28.879490, 49.517349>,  <36.695408, 28.546000, 49.412769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889950, 28.879490, 49.517349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101814, 0.243108, -0.964641,
		-0.867807, 0.495780, 0.033353,
		0.486358, 0.833727, 0.261449,
		37.035858, 29.129608, 49.595783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559517, 29.069090, 48.906162>,  <36.695408, 28.546000, 49.412769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559517, 29.069090, 48.906162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899864, 29.196096, 49.073589>,  <37.104073, 29.272301, 49.174046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899864, 29.196096, 49.073589>,  <36.559517, 29.069090, 48.906162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899864, 29.196096, 49.073589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338214, 0.278621, -0.898878,
		-0.402029, 0.906397, 0.129683,
		0.850873, 0.317514, 0.418569,
		37.155125, 29.291351, 49.199162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611805, 29.692112, 48.536484>,  <36.559517, 29.069090, 48.906162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611805, 29.692112, 48.536484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969044, 29.608984, 48.696075>,  <37.183388, 29.559107, 48.791828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969044, 29.608984, 48.696075>,  <36.611805, 29.692112, 48.536484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969044, 29.608984, 48.696075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449854, 0.414956, -0.790849,
		-0.001202, 0.885789, 0.464087,
		0.893101, -0.207821, 0.398975,
		37.236973, 29.546638, 48.815769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977779, 30.317549, 48.419144>,  <36.611805, 29.692112, 48.536484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977779, 30.317549, 48.419144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272701, 30.050976, 48.463421>,  <37.449654, 29.891031, 48.489986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272701, 30.050976, 48.463421>,  <36.977779, 30.317549, 48.419144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272701, 30.050976, 48.463421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533532, 0.473910, -0.700537,
		0.414402, 0.575566, 0.704979,
		0.737302, -0.666433, 0.110693,
		37.493893, 29.851046, 48.496628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659424, 30.612684, 48.445358>,  <36.977779, 30.317549, 48.419144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659424, 30.612684, 48.445358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728439, 30.244135, 48.306046>,  <37.769848, 30.023005, 48.222458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728439, 30.244135, 48.306046>,  <37.659424, 30.612684, 48.445358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728439, 30.244135, 48.306046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599523, 0.378780, -0.705052,
		0.781538, -0.087149, 0.617741,
		0.172543, -0.921375, -0.348278,
		37.780201, 29.967722, 48.201561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301308, 30.736135, 48.081654>,  <37.659424, 30.612684, 48.445358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301308, 30.736135, 48.081654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165909, 30.373594, 47.980507>,  <38.084667, 30.156069, 47.919819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165909, 30.373594, 47.980507>,  <38.301308, 30.736135, 48.081654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165909, 30.373594, 47.980507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353660, 0.126487, -0.926783,
		0.871977, -0.403145, 0.277724,
		-0.338499, -0.906353, -0.252870,
		38.064358, 30.101688, 47.904644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865490, 30.328831, 47.728806>,  <38.301308, 30.736135, 48.081654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865490, 30.328831, 47.728806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538902, 30.141714, 47.593422>,  <38.342949, 30.029444, 47.512192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538902, 30.141714, 47.593422>,  <38.865490, 30.328831, 47.728806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538902, 30.141714, 47.593422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250088, 0.241832, -0.937536,
		0.520423, -0.850110, -0.080458,
		-0.816466, -0.467794, -0.338457,
		38.293964, 30.001375, 47.491886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039490, 29.999012, 47.119335>,  <38.865490, 30.328831, 47.728806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039490, 29.999012, 47.119335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640755, 29.992373, 47.088264>,  <38.401512, 29.988388, 47.069622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640755, 29.992373, 47.088264>,  <39.039490, 29.999012, 47.119335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640755, 29.992373, 47.088264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072979, 0.194665, -0.978151,
		0.031355, -0.980729, -0.192839,
		-0.996840, -0.016597, -0.077676,
		38.341702, 29.987392, 47.064960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897629, 29.611164, 46.588112>,  <39.039490, 29.999012, 47.119335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897629, 29.611164, 46.588112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561783, 29.825693, 46.622528>,  <38.360275, 29.954411, 46.643177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561783, 29.825693, 46.622528>,  <38.897629, 29.611164, 46.588112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561783, 29.825693, 46.622528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074527, 0.270643, -0.959791,
		-0.538042, -0.799444, -0.267206,
		-0.839617, 0.536322, 0.086037,
		38.309898, 29.986589, 46.648338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326736, 29.379202, 46.054218>,  <38.897629, 29.611164, 46.588112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326736, 29.379202, 46.054218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261917, 29.758141, 46.164692>,  <38.223026, 29.985504, 46.230976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261917, 29.758141, 46.164692>,  <38.326736, 29.379202, 46.054218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261917, 29.758141, 46.164692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121700, 0.258559, -0.958299,
		-0.979249, -0.188904, 0.073392,
		-0.162050, 0.947345, 0.276183,
		38.213303, 30.042343, 46.247547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699116, 29.650589, 45.707886>,  <38.326736, 29.379202, 46.054218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699116, 29.650589, 45.707886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854900, 29.998573, 45.828873>,  <37.948372, 30.207363, 45.901463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854900, 29.998573, 45.828873>,  <37.699116, 29.650589, 45.707886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854900, 29.998573, 45.828873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331613, 0.438818, -0.835148,
		-0.859273, 0.224960, 0.459395,
		0.389465, 0.869961, 0.302465,
		37.971741, 30.259562, 45.919613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126053, 30.151733, 45.784466>,  <37.699116, 29.650589, 45.707886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126053, 30.151733, 45.784466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450546, 30.381311, 45.739761>,  <37.645241, 30.519058, 45.712940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450546, 30.381311, 45.739761>,  <37.126053, 30.151733, 45.784466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450546, 30.381311, 45.739761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420161, 0.439254, -0.794054,
		-0.406653, 0.691118, 0.597486,
		0.811233, 0.573945, -0.111757,
		37.693916, 30.553495, 45.706234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911545, 30.826723, 45.574177>,  <37.126053, 30.151733, 45.784466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911545, 30.826723, 45.574177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285389, 30.788164, 45.437229>,  <37.509693, 30.765030, 45.355061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285389, 30.788164, 45.437229>,  <36.911545, 30.826723, 45.574177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285389, 30.788164, 45.437229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283691, 0.378583, -0.881019,
		0.214542, 0.920534, 0.326480,
		0.934608, -0.096396, -0.342369,
		37.565773, 30.759245, 45.334518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024517, 31.435431, 45.239006>,  <36.911545, 30.826723, 45.574177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024517, 31.435431, 45.239006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295231, 31.177692, 45.096581>,  <37.457661, 31.023050, 45.011124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295231, 31.177692, 45.096581>,  <37.024517, 31.435431, 45.239006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295231, 31.177692, 45.096581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128756, 0.372612, -0.919012,
		0.724834, 0.667819, 0.169215,
		0.676785, -0.644343, -0.356067,
		37.498268, 30.984390, 44.989761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473000, 31.814724, 44.778484>,  <37.024517, 31.435431, 45.239006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473000, 31.814724, 44.778484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525600, 31.430542, 44.680313>,  <37.557159, 31.200033, 44.621410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525600, 31.430542, 44.680313>,  <37.473000, 31.814724, 44.778484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525600, 31.430542, 44.680313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022509, 0.250404, -0.967880,
		0.991061, 0.121752, 0.054547,
		0.131500, -0.960455, -0.245425,
		37.565052, 31.142405, 44.606686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102177, 31.791847, 44.411400>,  <37.473000, 31.814724, 44.778484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102177, 31.791847, 44.411400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875717, 31.472288, 44.330166>,  <37.739841, 31.280554, 44.281425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875717, 31.472288, 44.330166>,  <38.102177, 31.791847, 44.411400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875717, 31.472288, 44.330166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048909, 0.213383, -0.975744,
		0.822852, -0.562347, -0.081733,
		-0.566147, -0.798895, -0.203086,
		37.705872, 31.232620, 44.269241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317299, 31.670919, 43.758320>,  <38.102177, 31.791847, 44.411400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317299, 31.670919, 43.758320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982059, 31.454741, 43.788013>,  <37.780918, 31.325033, 43.805828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982059, 31.454741, 43.788013>,  <38.317299, 31.670919, 43.758320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982059, 31.454741, 43.788013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064341, -0.233059, -0.970332,
		0.541716, -0.808454, 0.230099,
		-0.838095, -0.540449, 0.074235,
		37.730629, 31.292606, 43.810284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450165, 31.059584, 43.555370>,  <38.317299, 31.670919, 43.758320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450165, 31.059584, 43.555370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055443, 31.096937, 43.502472>,  <37.818607, 31.119349, 43.470734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055443, 31.096937, 43.502472>,  <38.450165, 31.059584, 43.555370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055443, 31.096937, 43.502472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083062, -0.409143, -0.908682,
		-0.138963, -0.907680, 0.395989,
		-0.986808, 0.093381, -0.132249,
		37.759399, 31.124952, 43.462795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268456, 30.436308, 43.120537>,  <38.450165, 31.059584, 43.555370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268456, 30.436308, 43.120537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954193, 30.682667, 43.097145>,  <37.765636, 30.830482, 43.083111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954193, 30.682667, 43.097145>,  <38.268456, 30.436308, 43.120537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954193, 30.682667, 43.097145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003396, -0.090224, -0.995916,
		-0.618660, -0.782641, 0.068793,
		-0.785652, 0.615900, -0.058476,
		37.718498, 30.867437, 43.079601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819138, 30.075439, 42.611984>,  <38.268456, 30.436308, 43.120537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819138, 30.075439, 42.611984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726521, 30.462938, 42.647568>,  <37.670948, 30.695438, 42.668919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726521, 30.462938, 42.647568>,  <37.819138, 30.075439, 42.611984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726521, 30.462938, 42.647568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064665, 0.075914, -0.995015,
		-0.970672, -0.236144, 0.045066,
		-0.231546, 0.968748, 0.088958,
		37.657055, 30.753563, 42.674255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152439, 30.125937, 42.336800>,  <37.819138, 30.075439, 42.611984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152439, 30.125937, 42.336800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332954, 30.482426, 42.318634>,  <37.441261, 30.696320, 42.307735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332954, 30.482426, 42.318634>,  <37.152439, 30.125937, 42.336800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332954, 30.482426, 42.318634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028534, -0.036456, -0.998928,
		-0.891923, 0.452098, 0.008978,
		0.451286, 0.891223, -0.045416,
		37.468342, 30.749792, 42.305008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941265, 30.322241, 41.761925>,  <37.152439, 30.125937, 42.336800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941265, 30.322241, 41.761925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242970, 30.580122, 41.811626>,  <37.423992, 30.734852, 41.841450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242970, 30.580122, 41.811626>,  <36.941265, 30.322241, 41.761925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242970, 30.580122, 41.811626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144213, 0.021955, -0.989303,
		-0.640536, 0.764117, -0.076414,
		0.754266, 0.644704, 0.124259,
		37.469250, 30.773533, 41.848904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813847, 30.872164, 41.312080>,  <36.941265, 30.322241, 41.761925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813847, 30.872164, 41.312080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207535, 30.884022, 41.381847>,  <37.443748, 30.891136, 41.423710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207535, 30.884022, 41.381847>,  <36.813847, 30.872164, 41.312080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207535, 30.884022, 41.381847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167895, 0.154402, -0.973638,
		-0.055796, 0.987563, 0.146989,
		0.984225, 0.029647, 0.174422,
		37.502804, 30.892916, 41.434174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092426, 31.425905, 40.995983>,  <36.813847, 30.872164, 41.312080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092426, 31.425905, 40.995983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433678, 31.222797, 41.043877>,  <37.638428, 31.100933, 41.072613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433678, 31.222797, 41.043877>,  <37.092426, 31.425905, 40.995983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433678, 31.222797, 41.043877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269599, 0.232619, -0.934454,
		0.446634, 0.829493, 0.335349,
		0.853132, -0.507769, 0.119735,
		37.689617, 31.070467, 41.079796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560753, 31.925602, 40.851559>,  <37.092426, 31.425905, 40.995983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560753, 31.925602, 40.851559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740177, 31.570171, 40.813141>,  <37.847832, 31.356913, 40.790089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740177, 31.570171, 40.813141>,  <37.560753, 31.925602, 40.851559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740177, 31.570171, 40.813141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237344, 0.222034, -0.945711,
		0.861662, 0.401412, 0.310494,
		0.448560, -0.888577, -0.096046,
		37.874744, 31.303598, 40.784328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287422, 32.083248, 40.670124>,  <37.560753, 31.925602, 40.851559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287422, 32.083248, 40.670124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207958, 31.711931, 40.544388>,  <38.160282, 31.489141, 40.468948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207958, 31.711931, 40.544388>,  <38.287422, 32.083248, 40.670124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207958, 31.711931, 40.544388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487364, 0.184696, -0.853442,
		0.850301, -0.322739, 0.415725,
		-0.198656, -0.928293, -0.314338,
		38.148361, 31.433443, 40.450085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862408, 31.864742, 40.388523>,  <38.287422, 32.083248, 40.670124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862408, 31.864742, 40.388523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594658, 31.621056, 40.218441>,  <38.434010, 31.474844, 40.116394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594658, 31.621056, 40.218441>,  <38.862408, 31.864742, 40.388523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594658, 31.621056, 40.218441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443079, 0.132043, -0.886705,
		0.596340, -0.781933, 0.181545,
		-0.669372, -0.609217, -0.425201,
		38.393845, 31.438292, 40.090881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221024, 31.521498, 39.979115>,  <38.862408, 31.864742, 40.388523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221024, 31.521498, 39.979115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853485, 31.447235, 39.839825>,  <38.632961, 31.402678, 39.756248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853485, 31.447235, 39.839825>,  <39.221024, 31.521498, 39.979115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853485, 31.447235, 39.839825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356869, -0.014249, -0.934046,
		0.168449, -0.982512, 0.079348,
		-0.918841, -0.185656, -0.348228,
		38.577831, 31.391539, 39.735355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353104, 31.188873, 39.379642>,  <39.221024, 31.521498, 39.979115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353104, 31.188873, 39.379642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972210, 31.305746, 39.344131>,  <38.743675, 31.375870, 39.322823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972210, 31.305746, 39.344131>,  <39.353104, 31.188873, 39.379642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972210, 31.305746, 39.344131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128785, 0.120628, -0.984308,
		-0.276888, -0.948725, -0.152495,
		-0.952233, 0.292182, -0.088781,
		38.686539, 31.393400, 39.317497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093361, 30.943220, 38.764187>,  <39.353104, 31.188873, 39.379642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093361, 30.943220, 38.764187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833817, 31.238958, 38.836132>,  <38.678089, 31.416401, 38.879299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833817, 31.238958, 38.836132>,  <39.093361, 30.943220, 38.764187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833817, 31.238958, 38.836132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057331, 0.283211, -0.957343,
		-0.758748, -0.610866, -0.226151,
		-0.648856, 0.739348, 0.179864,
		38.639160, 31.460762, 38.890091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585003, 30.989861, 38.162128>,  <39.093361, 30.943220, 38.764187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585003, 30.989861, 38.162128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590748, 31.343040, 38.349827>,  <38.594196, 31.554949, 38.462448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590748, 31.343040, 38.349827>,  <38.585003, 30.989861, 38.162128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590748, 31.343040, 38.349827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098271, 0.465779, -0.879428,
		-0.995056, 0.058745, -0.080078,
		0.014363, 0.882949, 0.469249,
		38.595058, 31.607925, 38.490601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348789, 31.544685, 37.655762>,  <38.585003, 30.989861, 38.162128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348789, 31.544685, 37.655762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487679, 31.777899, 37.949566>,  <38.571014, 31.917828, 38.125847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487679, 31.777899, 37.949566>,  <38.348789, 31.544685, 37.655762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487679, 31.777899, 37.949566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103817, 0.754529, -0.648003,
		-0.932017, 0.301259, 0.201464,
		0.347227, 0.583035, 0.734509,
		38.591846, 31.952808, 38.169918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002274, 32.212482, 37.770626>,  <38.348789, 31.544685, 37.655762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002274, 32.212482, 37.770626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364536, 32.293907, 37.919407>,  <38.581894, 32.342762, 38.008675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364536, 32.293907, 37.919407>,  <38.002274, 32.212482, 37.770626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364536, 32.293907, 37.919407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108248, 0.737154, -0.666998,
		-0.409956, 0.644335, 0.645575,
		0.905659, 0.203558, 0.371949,
		38.636234, 32.354973, 38.030991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060917, 32.959873, 37.777954>,  <38.002274, 32.212482, 37.770626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060917, 32.959873, 37.777954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432861, 32.823154, 37.832397>,  <38.656029, 32.741123, 37.865063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432861, 32.823154, 37.832397>,  <38.060917, 32.959873, 37.777954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432861, 32.823154, 37.832397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362104, 0.784843, -0.502894,
		0.065062, 0.516910, 0.853564,
		0.929864, -0.341798, 0.136111,
		38.711823, 32.720615, 37.873230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424976, 33.563213, 37.926197>,  <38.060917, 32.959873, 37.777954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424976, 33.563213, 37.926197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665951, 33.269329, 37.801445>,  <38.810535, 33.092999, 37.726593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665951, 33.269329, 37.801445>,  <38.424976, 33.563213, 37.926197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665951, 33.269329, 37.801445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533142, 0.661202, -0.527800,
		0.593997, 0.151690, 0.790037,
		0.602435, -0.734713, -0.311879,
		38.846680, 33.048916, 37.707882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030304, 33.840939, 38.097908>,  <38.424976, 33.563213, 37.926197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030304, 33.840939, 38.097908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077740, 33.598515, 37.783295>,  <39.106201, 33.453060, 37.594528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077740, 33.598515, 37.783295>,  <39.030304, 33.840939, 38.097908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077740, 33.598515, 37.783295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583871, 0.683266, -0.438453,
		0.803138, -0.407239, 0.434886,
		0.118588, -0.606056, -0.786532,
		39.113316, 33.416698, 37.547337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639572, 34.114964, 37.821953>,  <39.030304, 33.840939, 38.097908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639572, 34.114964, 37.821953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517590, 33.861435, 37.537621>,  <39.444401, 33.709320, 37.367023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517590, 33.861435, 37.537621>,  <39.639572, 34.114964, 37.821953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517590, 33.861435, 37.537621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444588, 0.565317, -0.694808,
		0.842225, -0.527910, 0.109392,
		-0.304955, -0.633819, -0.710827,
		39.426102, 33.671288, 37.324371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178871, 33.952717, 37.507519>,  <39.639572, 34.114964, 37.821953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178871, 33.952717, 37.507519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887844, 33.893021, 37.239674>,  <39.713230, 33.857204, 37.078968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887844, 33.893021, 37.239674>,  <40.178871, 33.952717, 37.507519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887844, 33.893021, 37.239674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529338, 0.498768, -0.686318,
		0.436403, -0.853791, -0.283890,
		-0.727567, -0.149237, -0.669608,
		39.669575, 33.848248, 37.038792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541241, 33.879890, 36.858948>,  <40.178871, 33.952717, 37.507519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541241, 33.879890, 36.858948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166397, 33.949722, 36.738049>,  <39.941490, 33.991623, 36.665508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166397, 33.949722, 36.738049>,  <40.541241, 33.879890, 36.858948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166397, 33.949722, 36.738049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327206, 0.740881, -0.586542,
		0.121531, -0.648549, -0.751408,
		-0.937106, 0.174582, -0.302249,
		39.885265, 34.002098, 36.647373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512264, 33.751343, 36.086739>,  <40.541241, 33.879890, 36.858948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512264, 33.751343, 36.086739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234715, 34.012318, 36.208637>,  <40.068184, 34.168903, 36.281776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234715, 34.012318, 36.208637>,  <40.512264, 33.751343, 36.086739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234715, 34.012318, 36.208637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356665, 0.679026, -0.641649,
		-0.625564, -0.336531, -0.703859,
		-0.693873, 0.652434, 0.304745,
		40.026554, 34.208050, 36.300060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995720, 34.039497, 35.549652>,  <40.512264, 33.751343, 36.086739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995720, 34.039497, 35.549652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820820, 34.391796, 35.476879>,  <39.715881, 34.603176, 35.433216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820820, 34.391796, 35.476879>,  <39.995720, 34.039497, 35.549652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820820, 34.391796, 35.476879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887781, 0.390370, -0.243836,
		-0.143736, -0.268135, -0.952598,
		-0.437246, 0.880747, -0.181935,
		39.689648, 34.656021, 35.422298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974072, 34.299450, 34.770500>,  <39.995720, 34.039497, 35.549652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974072, 34.299450, 34.770500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022511, 34.554245, 35.075024>,  <40.051575, 34.707123, 35.257736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022511, 34.554245, 35.075024>,  <39.974072, 34.299450, 34.770500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022511, 34.554245, 35.075024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945794, 0.158787, -0.283302,
		-0.301344, 0.754346, -0.583227,
		0.121099, 0.636984, 0.761306,
		40.058842, 34.745338, 35.303417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225914, 34.896088, 34.425671>,  <39.974072, 34.299450, 34.770500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225914, 34.896088, 34.425671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344757, 34.850872, 34.804924>,  <40.416061, 34.823742, 35.032475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344757, 34.850872, 34.804924>,  <40.225914, 34.896088, 34.425671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344757, 34.850872, 34.804924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943341, 0.188421, -0.273138,
		-0.147772, 0.975561, 0.162618,
		0.297103, -0.113042, 0.948130,
		40.433887, 34.816959, 35.089363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662399, 35.559921, 34.827053>,  <40.225914, 34.896088, 34.425671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662399, 35.559921, 34.827053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755295, 35.180641, 34.913746>,  <40.811031, 34.953072, 34.965763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755295, 35.180641, 34.913746>,  <40.662399, 35.559921, 34.827053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755295, 35.180641, 34.913746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905820, 0.129666, -0.403331,
		0.354337, 0.289991, 0.889016,
		0.232238, -0.948204, 0.216734,
		40.824966, 34.896179, 34.978767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052452, 35.586575, 35.434811>,  <40.662399, 35.559921, 34.827053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052452, 35.586575, 35.434811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078106, 35.311970, 35.145096>,  <41.093498, 35.147205, 34.971268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078106, 35.311970, 35.145096>,  <41.052452, 35.586575, 35.434811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078106, 35.311970, 35.145096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762200, 0.502177, -0.408496,
		0.644157, -0.525853, 0.555465,
		0.064133, -0.686511, -0.724286,
		41.097347, 35.106018, 34.927811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827713, 35.431042, 35.338169>,  <41.052452, 35.586575, 35.434811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827713, 35.431042, 35.338169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612541, 35.333454, 35.015404>,  <41.483437, 35.274902, 34.821743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612541, 35.333454, 35.015404>,  <41.827713, 35.431042, 35.338169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612541, 35.333454, 35.015404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539501, 0.635868, -0.551916,
		0.647743, -0.732222, -0.210427,
		-0.537929, -0.243974, -0.806913,
		41.451164, 35.260262, 34.773331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322609, 35.169228, 34.728878>,  <41.827713, 35.431042, 35.338169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322609, 35.169228, 34.728878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972237, 35.347488, 34.654964>,  <41.762012, 35.454445, 34.610619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972237, 35.347488, 34.654964>,  <42.322609, 35.169228, 34.728878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972237, 35.347488, 34.654964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476340, 0.738159, -0.477724,
		-0.076504, -0.506470, -0.858857,
		-0.875926, 0.445656, -0.184780,
		41.709457, 35.481186, 34.599529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458336, 34.410645, 34.557209>,  <42.322609, 35.169228, 34.728878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458336, 34.410645, 34.557209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829536, 34.287766, 34.472889>,  <43.052258, 34.214039, 34.422295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829536, 34.287766, 34.472889>,  <42.458336, 34.410645, 34.557209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829536, 34.287766, 34.472889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331804, -0.424109, -0.842638,
		0.169451, 0.851917, -0.495503,
		0.928005, -0.307196, -0.210804,
		43.107937, 34.195606, 34.409649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545498, 34.665108, 33.801281>,  <42.458336, 34.410645, 34.557209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545498, 34.665108, 33.801281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814209, 34.385616, 33.899658>,  <42.975437, 34.217922, 33.958687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814209, 34.385616, 33.899658>,  <42.545498, 34.665108, 33.801281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814209, 34.385616, 33.899658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164290, -0.464293, -0.870311,
		0.722304, 0.544250, -0.426697,
		0.671779, -0.698730, 0.245946,
		43.015743, 34.175999, 33.973442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699783, 34.427612, 33.168468>,  <42.545498, 34.665108, 33.801281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699783, 34.427612, 33.168468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.803440, 34.141144, 33.427681>,  <42.865635, 33.969261, 33.583210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.803440, 34.141144, 33.427681>,  <42.699783, 34.427612, 33.168468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.803440, 34.141144, 33.427681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358997, -0.694305, -0.623748,
		0.896643, -0.071004, -0.437025,
		0.259139, -0.716170, 0.648033,
		42.881184, 33.926292, 33.622089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084030, 33.991718, 32.752644>,  <42.699783, 34.427612, 33.168468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084030, 33.991718, 32.752644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938339, 33.780117, 33.059238>,  <42.850925, 33.653156, 33.243195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938339, 33.780117, 33.059238>,  <43.084030, 33.991718, 32.752644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938339, 33.780117, 33.059238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416788, -0.643411, -0.642114,
		0.832842, -0.553337, 0.013868,
		-0.364229, -0.528999, 0.766484,
		42.829071, 33.621418, 33.289185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285583, 33.367184, 32.552708>,  <43.084030, 33.991718, 32.752644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285583, 33.367184, 32.552708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974415, 33.373497, 32.803974>,  <42.787716, 33.377285, 32.954735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974415, 33.373497, 32.803974>,  <43.285583, 33.367184, 32.552708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974415, 33.373497, 32.803974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571172, -0.434474, -0.696416,
		0.261930, -0.900546, 0.347000,
		-0.777917, 0.015785, 0.628169,
		42.741039, 33.378231, 32.992424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060123, 32.673447, 32.521740>,  <43.285583, 33.367184, 32.552708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060123, 32.673447, 32.521740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763527, 32.881763, 32.690952>,  <42.585567, 33.006756, 32.792480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763527, 32.881763, 32.690952>,  <43.060123, 32.673447, 32.521740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763527, 32.881763, 32.690952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658305, -0.442810, -0.608732,
		-0.129700, -0.729857, 0.671183,
		-0.741493, 0.520795, 0.423036,
		42.541080, 33.038002, 32.817863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588696, 32.222229, 32.630203>,  <43.060123, 32.673447, 32.521740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588696, 32.222229, 32.630203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384804, 32.565086, 32.600616>,  <42.262466, 32.770802, 32.582863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384804, 32.565086, 32.600616>,  <42.588696, 32.222229, 32.630203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384804, 32.565086, 32.600616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599087, -0.415343, -0.684533,
		-0.617468, -0.304614, 0.725220,
		-0.509734, 0.857146, -0.073971,
		42.231884, 32.822231, 32.578426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794155, 32.026493, 32.685837>,  <42.588696, 32.222229, 32.630203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794155, 32.026493, 32.685837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799252, 32.393230, 32.526218>,  <41.802307, 32.613274, 32.430447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799252, 32.393230, 32.526218>,  <41.794155, 32.026493, 32.685837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799252, 32.393230, 32.526218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754056, -0.253284, -0.606009,
		-0.656687, 0.308625, 0.688123,
		0.012739, 0.916841, -0.399049,
		41.803074, 32.668282, 32.406506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044464, 32.239254, 32.618568>,  <41.794155, 32.026493, 32.685837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044464, 32.239254, 32.618568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247875, 32.483261, 32.375496>,  <41.369923, 32.629665, 32.229652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247875, 32.483261, 32.375496>,  <41.044464, 32.239254, 32.618568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247875, 32.483261, 32.375496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745341, -0.041500, -0.665391,
		-0.431119, 0.791300, 0.433567,
		0.508531, 0.610018, -0.607680,
		41.400433, 32.666267, 32.193192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571354, 32.804585, 32.517113>,  <41.044464, 32.239254, 32.618568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571354, 32.804585, 32.517113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829578, 32.830894, 32.212765>,  <40.984512, 32.846680, 32.030155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829578, 32.830894, 32.212765>,  <40.571354, 32.804585, 32.517113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829578, 32.830894, 32.212765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752570, 0.224301, -0.619134,
		0.129942, 0.972298, 0.194298,
		0.645564, 0.065771, -0.760869,
		41.023247, 32.850624, 31.984505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479324, 33.417194, 32.159267>,  <40.571354, 32.804585, 32.517113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479324, 33.417194, 32.159267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677780, 33.186989, 31.899227>,  <40.796852, 33.048866, 31.743204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677780, 33.186989, 31.899227>,  <40.479324, 33.417194, 32.159267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677780, 33.186989, 31.899227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657751, 0.239619, -0.714105,
		0.566756, 0.781896, -0.259664,
		0.496136, -0.575518, -0.650099,
		40.826622, 33.014332, 31.704197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652115, 33.896702, 31.667683>,  <40.479324, 33.417194, 32.159267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652115, 33.896702, 31.667683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690804, 33.543537, 31.483896>,  <40.714016, 33.331638, 31.373625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690804, 33.543537, 31.483896>,  <40.652115, 33.896702, 31.667683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690804, 33.543537, 31.483896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695239, 0.270406, -0.665976,
		0.712241, 0.383854, -0.587681,
		0.096724, -0.882914, -0.459464,
		40.719822, 33.278664, 31.346058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740559, 34.040928, 30.941116>,  <40.652115, 33.896702, 31.667683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740559, 34.040928, 30.941116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652973, 33.650669, 30.946245>,  <40.600422, 33.416512, 30.949324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652973, 33.650669, 30.946245>,  <40.740559, 34.040928, 30.941116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652973, 33.650669, 30.946245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620352, 0.129058, -0.773632,
		0.753138, -0.177353, -0.633505,
		-0.218965, -0.975649, 0.012823,
		40.587284, 33.357975, 30.950092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765720, 33.806923, 30.173153>,  <40.740559, 34.040928, 30.941116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765720, 33.806923, 30.173153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547562, 33.550175, 30.388762>,  <40.416668, 33.396126, 30.518127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547562, 33.550175, 30.388762>,  <40.765720, 33.806923, 30.173153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547562, 33.550175, 30.388762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764700, 0.117736, -0.633539,
		0.343190, -0.757717, -0.555054,
		-0.545393, -0.641874, 0.539020,
		40.383945, 33.357613, 30.550468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591393, 33.243298, 29.669384>,  <40.765720, 33.806923, 30.173153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591393, 33.243298, 29.669384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327187, 33.253418, 29.969538>,  <40.168663, 33.259491, 30.149630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327187, 33.253418, 29.969538>,  <40.591393, 33.243298, 29.669384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327187, 33.253418, 29.969538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749246, -0.086713, -0.656590,
		0.048458, -0.995912, 0.076229,
		-0.660516, 0.025297, 0.750386,
		40.129032, 33.261005, 30.194653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100536, 32.877621, 29.429605>,  <40.591393, 33.243298, 29.669384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100536, 32.877621, 29.429605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907379, 33.083668, 29.712862>,  <39.791485, 33.207294, 29.882816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907379, 33.083668, 29.712862>,  <40.100536, 32.877621, 29.429605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907379, 33.083668, 29.712862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820329, 0.016835, -0.571644,
		-0.306386, -0.856954, 0.414437,
		-0.482896, 0.515118, 0.708142,
		39.762512, 33.238201, 29.925304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459759, 32.477161, 29.497683>,  <40.100536, 32.877621, 29.429605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459759, 32.477161, 29.497683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398338, 32.851448, 29.624710>,  <39.361485, 33.076019, 29.700928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398338, 32.851448, 29.624710>,  <39.459759, 32.477161, 29.497683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398338, 32.851448, 29.624710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843213, 0.043478, -0.535818,
		-0.515183, -0.350055, 0.782335,
		-0.153552, 0.935720, 0.317570,
		39.352272, 33.132164, 29.719982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830261, 32.538517, 29.508810>,  <39.459759, 32.477161, 29.497683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830261, 32.538517, 29.508810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896946, 32.932339, 29.530176>,  <38.936958, 33.168633, 29.542995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896946, 32.932339, 29.530176>,  <38.830261, 32.538517, 29.508810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896946, 32.932339, 29.530176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830958, 0.169456, -0.529899,
		-0.530768, 0.043956, 0.846377,
		0.166715, 0.984557, 0.053416,
		38.946960, 33.227707, 29.546202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126019, 32.898617, 29.750412>,  <38.830261, 32.538517, 29.508810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126019, 32.898617, 29.750412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356953, 33.156750, 29.550318>,  <38.495514, 33.311630, 29.430262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356953, 33.156750, 29.550318>,  <38.126019, 32.898617, 29.750412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356953, 33.156750, 29.550318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796902, 0.311886, -0.517373,
		-0.177860, 0.697334, 0.694328,
		0.577333, 0.645331, -0.500235,
		38.530151, 33.350349, 29.400248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570026, 33.287437, 29.451725>,  <38.126019, 32.898617, 29.750412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570026, 33.287437, 29.451725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896336, 33.433598, 29.272398>,  <38.092121, 33.521294, 29.164803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896336, 33.433598, 29.272398>,  <37.570026, 33.287437, 29.451725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896336, 33.433598, 29.272398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578361, 0.511788, -0.635273,
		-0.002688, 0.777530, 0.628840,
		0.815777, 0.365404, -0.448318,
		38.141068, 33.543221, 29.137903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604622, 34.085384, 29.456633>,  <37.570026, 33.287437, 29.451725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604622, 34.085384, 29.456633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808304, 33.950268, 29.139999>,  <37.930515, 33.869198, 28.950020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808304, 33.950268, 29.139999>,  <37.604622, 34.085384, 29.456633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808304, 33.950268, 29.139999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559990, 0.568395, -0.602775,
		0.653544, 0.750217, 0.100273,
		0.509207, -0.337788, -0.791585,
		37.961067, 33.848930, 28.902523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972313, 34.637981, 28.991079>,  <37.604622, 34.085384, 29.456633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972313, 34.637981, 28.991079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860779, 34.311180, 28.789188>,  <37.793858, 34.115097, 28.668053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860779, 34.311180, 28.789188>,  <37.972313, 34.637981, 28.991079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860779, 34.311180, 28.789188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555874, 0.565886, -0.608914,
		0.783106, 0.110781, -0.611941,
		-0.278833, -0.817007, -0.504730,
		37.777130, 34.066078, 28.637770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974564, 34.843391, 28.264257>,  <37.972313, 34.637981, 28.991079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974564, 34.843391, 28.264257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708572, 34.553352, 28.335863>,  <37.548977, 34.379330, 28.378826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708572, 34.553352, 28.335863>,  <37.974564, 34.843391, 28.264257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708572, 34.553352, 28.335863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693561, 0.510588, -0.508205,
		0.277094, -0.462100, -0.842426,
		-0.664975, -0.725095, 0.179014,
		37.509079, 34.335823, 28.389566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692963, 35.457584, 28.668554>,  <37.974564, 34.843391, 28.264257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692963, 35.457584, 28.668554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707550, 35.840988, 28.555466>,  <37.716301, 36.071030, 28.487614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707550, 35.840988, 28.555466>,  <37.692963, 35.457584, 28.668554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707550, 35.840988, 28.555466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929413, 0.136491, 0.342873,
		0.367235, 0.250261, 0.895828,
		0.036465, 0.958509, -0.282720,
		37.718491, 36.128540, 28.470650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400299, 35.844780, 29.173712>,  <37.692963, 35.457584, 28.668554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400299, 35.844780, 29.173712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350254, 36.024837, 28.820053>,  <37.320229, 36.132874, 28.607859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350254, 36.024837, 28.820053>,  <37.400299, 35.844780, 29.173712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350254, 36.024837, 28.820053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971297, 0.126141, 0.201668,
		0.202308, 0.884000, 0.421446,
		-0.125112, 0.450148, -0.884146,
		37.312721, 36.159882, 28.554810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305244, 36.681629, 29.055981>,  <37.400299, 35.844780, 29.173712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305244, 36.681629, 29.055981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118496, 36.387280, 28.859810>,  <37.006447, 36.210670, 28.742107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118496, 36.387280, 28.859810>,  <37.305244, 36.681629, 29.055981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118496, 36.387280, 28.859810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884100, 0.400943, 0.240025,
		0.020004, 0.545646, -0.837777,
		-0.466870, -0.735877, -0.490426,
		36.978436, 36.166515, 28.712683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288239, 37.009392, 28.391983>,  <37.305244, 36.681629, 29.055981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288239, 37.009392, 28.391983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449112, 37.367508, 28.468607>,  <37.545635, 37.582378, 28.514582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449112, 37.367508, 28.468607>,  <37.288239, 37.009392, 28.391983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449112, 37.367508, 28.468607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056213, -0.232980, 0.970856,
		0.913831, -0.379695, -0.144028,
		0.402185, 0.895294, 0.191560,
		37.569767, 37.636097, 28.526075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938042, 36.921299, 28.579906>,  <37.288239, 37.009392, 28.391983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938042, 36.921299, 28.579906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796524, 37.254078, 28.750875>,  <37.711613, 37.453747, 28.853456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796524, 37.254078, 28.750875>,  <37.938042, 36.921299, 28.579906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796524, 37.254078, 28.750875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116992, -0.414028, 0.902715,
		0.927978, 0.369380, 0.049149,
		-0.353794, 0.831949, 0.427423,
		37.690388, 37.503662, 28.879103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662106, 37.181496, 28.857088>,  <37.938042, 36.921299, 28.579906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662106, 37.181496, 28.857088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349262, 37.291138, 29.080936>,  <38.161556, 37.356922, 29.215246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349262, 37.291138, 29.080936>,  <38.662106, 37.181496, 28.857088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349262, 37.291138, 29.080936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483373, -0.299906, 0.822440,
		0.393271, 0.913740, 0.102062,
		-0.782105, 0.274108, 0.559622,
		38.114632, 37.373371, 29.248823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692059, 37.863953, 29.368404>,  <38.662106, 37.181496, 28.857088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692059, 37.863953, 29.368404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459305, 37.566391, 29.499872>,  <38.319653, 37.387856, 29.578753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459305, 37.566391, 29.499872>,  <38.692059, 37.863953, 29.368404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459305, 37.566391, 29.499872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650773, -0.183518, 0.736760,
		-0.487761, 0.642597, 0.590897,
		-0.581880, -0.743902, 0.328671,
		38.284740, 37.343220, 29.598475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492611, 38.000149, 30.052401>,  <38.692059, 37.863953, 29.368404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492611, 38.000149, 30.052401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517349, 37.612362, 29.957487>,  <38.532192, 37.379688, 29.900539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517349, 37.612362, 29.957487>,  <38.492611, 38.000149, 30.052401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517349, 37.612362, 29.957487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618159, -0.149450, 0.771715,
		-0.783617, -0.194405, 0.590044,
		0.061843, -0.969470, -0.237285,
		38.535904, 37.321522, 29.886301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280910, 37.622841, 30.683090>,  <38.492611, 38.000149, 30.052401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280910, 37.622841, 30.683090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534382, 37.429531, 30.441460>,  <38.686462, 37.313545, 30.296482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534382, 37.429531, 30.441460>,  <38.280910, 37.622841, 30.683090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534382, 37.429531, 30.441460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676310, -0.033031, 0.735876,
		-0.375580, -0.874848, 0.305909,
		0.633675, -0.483269, -0.604075,
		38.724483, 37.284550, 30.260237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473476, 36.996120, 31.038614>,  <38.280910, 37.622841, 30.683090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473476, 36.996120, 31.038614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738476, 37.107788, 30.760574>,  <38.897476, 37.174789, 30.593750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738476, 37.107788, 30.760574>,  <38.473476, 36.996120, 31.038614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738476, 37.107788, 30.760574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736805, -0.075671, 0.671858,
		0.134962, -0.957256, -0.255823,
		0.662498, 0.279167, -0.695098,
		38.937225, 37.191540, 30.552044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949047, 36.585339, 31.211636>,  <38.473476, 36.996120, 31.038614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949047, 36.585339, 31.211636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151333, 36.808411, 30.948349>,  <39.272705, 36.942253, 30.790377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151333, 36.808411, 30.948349>,  <38.949047, 36.585339, 31.211636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151333, 36.808411, 30.948349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828515, -0.101310, 0.550725,
		0.240443, -0.823853, -0.513278,
		0.505717, 0.557676, -0.658216,
		39.303047, 36.975712, 30.750885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401157, 36.097771, 30.921419>,  <38.949047, 36.585339, 31.211636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401157, 36.097771, 30.921419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573967, 36.458256, 30.907757>,  <39.677654, 36.674549, 30.899559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573967, 36.458256, 30.907757>,  <39.401157, 36.097771, 30.921419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573967, 36.458256, 30.907757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809358, -0.370725, 0.455525,
		0.397863, -0.224442, -0.889568,
		0.432024, 0.901215, -0.034156,
		39.703575, 36.728619, 30.897511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138474, 35.994144, 30.811443>,  <39.401157, 36.097771, 30.921419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138474, 35.994144, 30.811443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112030, 36.367092, 30.953604>,  <40.096165, 36.590862, 31.038900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112030, 36.367092, 30.953604>,  <40.138474, 35.994144, 30.811443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112030, 36.367092, 30.953604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760986, -0.183266, 0.622346,
		0.645391, 0.311598, -0.697407,
		-0.066110, 0.932374, 0.355400,
		40.092197, 36.646805, 31.060225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795216, 36.218731, 30.758123>,  <40.138474, 35.994144, 30.811443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795216, 36.218731, 30.758123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621883, 36.464657, 31.021708>,  <40.517883, 36.612213, 31.179857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621883, 36.464657, 31.021708>,  <40.795216, 36.218731, 30.758123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621883, 36.464657, 31.021708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805526, -0.063680, 0.589128,
		0.404166, 0.786098, -0.467653,
		-0.433332, 0.614813, 0.658960,
		40.491882, 36.649101, 31.219395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315228, 36.687481, 30.941914>,  <40.795216, 36.218731, 30.758123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315228, 36.687481, 30.941914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072212, 36.720734, 31.257885>,  <40.926403, 36.740685, 31.447468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072212, 36.720734, 31.257885>,  <41.315228, 36.687481, 30.941914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072212, 36.720734, 31.257885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789272, -0.048458, 0.612128,
		0.089168, 0.995359, -0.036176,
		-0.607535, 0.083135, 0.789930,
		40.889954, 36.745674, 31.494864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643433, 37.189137, 31.453499>,  <41.315228, 36.687481, 30.941914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643433, 37.189137, 31.453499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387566, 36.951019, 31.648003>,  <41.234043, 36.808147, 31.764706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387566, 36.951019, 31.648003>,  <41.643433, 37.189137, 31.453499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387566, 36.951019, 31.648003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633552, -0.050119, 0.772075,
		-0.435240, 0.801944, 0.409209,
		-0.639670, -0.595293, 0.486260,
		41.195663, 36.772430, 31.793880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739990, 37.469032, 32.026730>,  <41.643433, 37.189137, 31.453499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739990, 37.469032, 32.026730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578793, 37.109039, 32.093212>,  <41.482075, 36.893044, 32.133102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578793, 37.109039, 32.093212>,  <41.739990, 37.469032, 32.026730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578793, 37.109039, 32.093212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716059, -0.196968, 0.669673,
		-0.569958, 0.388888, 0.723819,
		-0.402997, -0.899983, 0.166203,
		41.457893, 36.839043, 32.143074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737778, 37.368073, 32.763145>,  <41.739990, 37.469032, 32.026730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737778, 37.368073, 32.763145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709805, 37.008358, 32.590454>,  <41.693020, 36.792530, 32.486839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709805, 37.008358, 32.590454>,  <41.737778, 37.368073, 32.763145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709805, 37.008358, 32.590454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751999, -0.331885, 0.569517,
		-0.655444, -0.284831, 0.699474,
		-0.069929, -0.899290, -0.431725,
		41.688828, 36.738571, 32.460938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924519, 37.033703, 33.274845>,  <41.737778, 37.368073, 32.763145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924519, 37.033703, 33.274845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961929, 36.764881, 32.981018>,  <41.984375, 36.603588, 32.804722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961929, 36.764881, 32.981018>,  <41.924519, 37.033703, 33.274845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961929, 36.764881, 32.981018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802258, -0.386057, 0.455349,
		-0.589606, -0.631905, 0.503052,
		0.093531, -0.672054, -0.734572,
		41.989990, 36.563267, 32.760647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998337, 36.363895, 33.634972>,  <41.924519, 37.033703, 33.274845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998337, 36.363895, 33.634972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151638, 36.333458, 33.266769>,  <42.243618, 36.315197, 33.045849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151638, 36.333458, 33.266769>,  <41.998337, 36.363895, 33.634972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151638, 36.333458, 33.266769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885164, -0.254409, 0.389564,
		-0.263827, -0.964099, -0.030148,
		0.383248, -0.076091, -0.920506,
		42.266613, 36.310631, 32.990616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411514, 35.753864, 33.648457>,  <41.998337, 36.363895, 33.634972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411514, 35.753864, 33.648457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573418, 35.946835, 33.337730>,  <42.670559, 36.062618, 33.151295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573418, 35.946835, 33.337730>,  <42.411514, 35.753864, 33.648457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573418, 35.946835, 33.337730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913998, -0.239380, 0.327575,
		-0.027922, -0.842592, -0.537828,
		0.404757, 0.482427, -0.776812,
		42.694843, 36.091564, 33.104687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854664, 35.255669, 33.393311>,  <42.411514, 35.753864, 33.648457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854664, 35.255669, 33.393311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987156, 35.613155, 33.272274>,  <43.066650, 35.827648, 33.199654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987156, 35.613155, 33.272274>,  <42.854664, 35.255669, 33.393311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987156, 35.613155, 33.272274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929111, -0.253049, 0.269664,
		0.164432, -0.370461, -0.914178,
		0.331232, 0.893714, -0.302590,
		43.086525, 35.881271, 33.181496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558487, 35.129459, 33.313232>,  <42.854664, 35.255669, 33.393311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558487, 35.129459, 33.313232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526566, 35.528168, 33.316883>,  <43.507412, 35.767391, 33.319073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526566, 35.528168, 33.316883>,  <43.558487, 35.129459, 33.313232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526566, 35.528168, 33.316883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929538, 0.071109, 0.361805,
		0.359987, 0.037357, -0.932209,
		-0.079804, 0.996769, 0.009126,
		43.502625, 35.827198, 33.319622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185223, 35.422787, 32.967010>,  <43.558487, 35.129459, 33.313232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185223, 35.422787, 32.967010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053143, 35.720032, 33.199821>,  <43.973892, 35.898376, 33.339508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053143, 35.720032, 33.199821>,  <44.185223, 35.422787, 32.967010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053143, 35.720032, 33.199821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873447, 0.006789, 0.486871,
		0.357847, 0.669137, -0.651307,
		-0.330205, 0.743108, 0.582027,
		43.954082, 35.942963, 33.374428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781307, 35.934525, 32.912369>,  <44.185223, 35.422787, 32.967010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781307, 35.934525, 32.912369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.556057, 35.964909, 33.241520>,  <44.420906, 35.983139, 33.439011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.556057, 35.964909, 33.241520>,  <44.781307, 35.934525, 32.912369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556057, 35.964909, 33.241520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824230, -0.020028, 0.565901,
		0.059469, 0.996909, -0.051333,
		-0.563123, 0.075964, 0.822874,
		44.387119, 35.987698, 33.488380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149017, 36.306805, 33.450813>,  <44.781307, 35.934525, 32.912369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149017, 36.306805, 33.450813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873096, 36.143898, 33.690250>,  <44.707546, 36.046154, 33.833912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873096, 36.143898, 33.690250>,  <45.149017, 36.306805, 33.450813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873096, 36.143898, 33.690250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667247, -0.036728, 0.743930,
		-0.280996, 0.912569, 0.297086,
		-0.689799, -0.407271, 0.598588,
		44.666157, 36.021717, 33.869827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.092869, 36.772903, 34.030594>,  <45.149017, 36.306805, 33.450813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.092869, 36.772903, 34.030594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967449, 36.409260, 34.140289>,  <44.892197, 36.191074, 34.206108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967449, 36.409260, 34.140289>,  <45.092869, 36.772903, 34.030594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967449, 36.409260, 34.140289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688888, -0.019008, 0.724619,
		-0.653544, 0.416126, 0.632234,
		-0.313550, -0.909108, 0.274242,
		44.873383, 36.136528, 34.222561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102200, 36.791607, 34.836479>,  <45.092869, 36.772903, 34.030594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102200, 36.791607, 34.836479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118641, 36.424957, 34.677425>,  <45.128506, 36.204967, 34.581993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118641, 36.424957, 34.677425>,  <45.102200, 36.791607, 34.836479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118641, 36.424957, 34.677425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851558, -0.176032, 0.493824,
		-0.522646, -0.358904, 0.773323,
		0.041106, -0.916625, -0.397630,
		45.130974, 36.149971, 34.558136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334522, 36.334274, 35.300209>,  <45.102200, 36.791607, 34.836479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334522, 36.334274, 35.300209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.433315, 36.126472, 34.973011>,  <45.492592, 36.001793, 34.776691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.433315, 36.126472, 34.973011>,  <45.334522, 36.334274, 35.300209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433315, 36.126472, 34.973011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849796, -0.289544, 0.440468,
		-0.465671, -0.803915, 0.369962,
		0.246978, -0.519505, -0.817995,
		45.507408, 35.970619, 34.727612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.543926, 35.738731, 35.544609>,  <45.334522, 36.334274, 35.300209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.543926, 35.738731, 35.544609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.725986, 35.814972, 35.196697>,  <45.835220, 35.860718, 34.987949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.725986, 35.814972, 35.196697>,  <45.543926, 35.738731, 35.544609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.725986, 35.814972, 35.196697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884246, -0.211540, 0.416364,
		-0.104633, -0.958604, -0.264821,
		0.455149, 0.190602, -0.869776,
		45.862530, 35.872154, 34.935764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033142, 35.274998, 35.386257>,  <45.543926, 35.738731, 35.544609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033142, 35.274998, 35.386257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170559, 35.612293, 35.220890>,  <46.253010, 35.814671, 35.121670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170559, 35.612293, 35.220890>,  <46.033142, 35.274998, 35.386257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.170559, 35.612293, 35.220890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910843, -0.191935, 0.365413,
		0.228782, -0.502097, -0.834001,
		0.343546, 0.843243, -0.413420,
		46.273624, 35.865265, 35.096863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.688007, 35.095768, 34.979313>,  <46.033142, 35.274998, 35.386257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.688007, 35.095768, 34.979313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720791, 35.484104, 35.069427>,  <46.740459, 35.717106, 35.123497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720791, 35.484104, 35.069427>,  <46.688007, 35.095768, 34.979313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.720791, 35.484104, 35.069427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951697, -0.143347, 0.271522,
		0.295899, 0.192156, -0.935692,
		0.081954, 0.970839, 0.225290,
		46.745377, 35.775356, 35.137016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351078, 35.008888, 34.593933>,  <46.688007, 35.095768, 34.979313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351078, 35.008888, 34.593933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567131, 34.802914, 34.860199>,  <47.696762, 34.679329, 35.019958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567131, 34.802914, 34.860199>,  <47.351078, 35.008888, 34.593933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.567131, 34.802914, 34.860199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838807, 0.265202, -0.475470,
		0.068302, 0.815175, 0.575174,
		0.540128, -0.514935, 0.665660,
		47.729168, 34.648434, 35.059898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.204372, 33.914700, 44.351616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.823532, 33.979298, 44.455475>,  <34.595028, 34.018055, 44.517792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.823532, 33.979298, 44.455475>,  <35.204372, 33.914700, 44.351616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823532, 33.979298, 44.455475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201303, 0.308138, -0.929800,
		-0.230164, -0.937534, -0.260870,
		-0.952103, 0.161493, 0.259651,
		34.537903, 34.027744, 44.533371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798466, 33.491089, 43.868073>,  <35.204372, 33.914700, 44.351616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798466, 33.491089, 43.868073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.564346, 33.774506, 44.025753>,  <34.423874, 33.944557, 44.120361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.564346, 33.774506, 44.025753>,  <34.798466, 33.491089, 43.868073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564346, 33.774506, 44.025753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407058, 0.163698, -0.898614,
		-0.701237, -0.686418, 0.192606,
		-0.585295, 0.708543, 0.394203,
		34.388756, 33.987068, 44.144012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185368, 33.382915, 43.495480>,  <34.798466, 33.491089, 43.868073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185368, 33.382915, 43.495480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.153679, 33.760601, 43.623341>,  <34.134666, 33.987213, 43.700058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.153679, 33.760601, 43.623341>,  <34.185368, 33.382915, 43.495480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153679, 33.760601, 43.623341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487819, 0.242924, -0.838463,
		-0.869342, -0.222359, 0.441362,
		-0.079223, 0.944216, 0.319655,
		34.129913, 34.043865, 43.719238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454144, 33.658592, 43.493408>,  <34.185368, 33.382915, 43.495480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454144, 33.658592, 43.493408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.712902, 33.960724, 43.451450>,  <33.868156, 34.142002, 43.426277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.712902, 33.960724, 43.451450>,  <33.454144, 33.658592, 43.493408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712902, 33.960724, 43.451450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436288, 0.253774, -0.863279,
		-0.625440, 0.604218, 0.493706,
		0.646898, 0.755328, -0.104893,
		33.906971, 34.187321, 43.419983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102055, 34.130623, 43.047646>,  <33.454144, 33.658592, 43.493408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102055, 34.130623, 43.047646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.466785, 34.294834, 43.050034>,  <33.685623, 34.393360, 43.051468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.466785, 34.294834, 43.050034>,  <33.102055, 34.130623, 43.047646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466785, 34.294834, 43.050034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117531, 0.274923, -0.954256,
		-0.393390, 0.869416, 0.298933,
		0.911828, 0.410529, 0.005969,
		33.740334, 34.417992, 43.051823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033623, 34.691238, 42.608616>,  <33.102055, 34.130623, 43.047646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033623, 34.691238, 42.608616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.426746, 34.617546, 42.603912>,  <33.662621, 34.573330, 42.601089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.426746, 34.617546, 42.603912>,  <33.033623, 34.691238, 42.608616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426746, 34.617546, 42.603912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003169, 0.080506, -0.996749,
		0.184576, 0.979581, 0.079706,
		0.982813, -0.184228, -0.011756,
		33.721592, 34.562279, 42.600388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321186, 35.180748, 42.100460>,  <33.033623, 34.691238, 42.608616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321186, 35.180748, 42.100460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.592094, 34.890678, 42.150146>,  <33.754639, 34.716637, 42.179958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.592094, 34.890678, 42.150146>,  <33.321186, 35.180748, 42.100460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592094, 34.890678, 42.150146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161877, -0.017820, -0.986650,
		0.717705, 0.688336, 0.105320,
		0.677270, -0.725173, 0.124215,
		33.795277, 34.673126, 42.187412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978447, 35.417931, 41.803135>,  <33.321186, 35.180748, 42.100460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978447, 35.417931, 41.803135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.980320, 35.018074, 41.813686>,  <33.981445, 34.778160, 41.820019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.980320, 35.018074, 41.813686>,  <33.978447, 35.417931, 41.803135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980320, 35.018074, 41.813686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180129, -0.025107, -0.983323,
		0.983632, 0.009355, 0.179947,
		0.004681, -0.999641, 0.026381,
		33.981724, 34.718182, 41.821602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435211, 35.302242, 41.287621>,  <33.978447, 35.417931, 41.803135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435211, 35.302242, 41.287621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.328651, 34.923859, 41.361584>,  <34.264717, 34.696827, 41.405960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.328651, 34.923859, 41.361584>,  <34.435211, 35.302242, 41.287621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328651, 34.923859, 41.361584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173387, -0.235741, -0.956223,
		0.948139, -0.222676, 0.226819,
		-0.266399, -0.945960, 0.184906,
		34.248734, 34.640072, 41.417057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023056, 34.801968, 41.133614>,  <34.435211, 35.302242, 41.287621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023056, 34.801968, 41.133614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.684196, 34.593380, 41.092796>,  <34.480881, 34.468227, 41.068306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.684196, 34.593380, 41.092796>,  <35.023056, 34.801968, 41.133614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684196, 34.593380, 41.092796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263040, -0.244709, -0.933235,
		0.461679, -0.817430, 0.344472,
		-0.847149, -0.521465, -0.102040,
		34.430050, 34.436939, 41.062183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198647, 34.213051, 40.740463>,  <35.023056, 34.801968, 41.133614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198647, 34.213051, 40.740463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.811520, 34.276463, 40.662281>,  <34.579243, 34.314510, 40.615372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.811520, 34.276463, 40.662281>,  <35.198647, 34.213051, 40.740463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811520, 34.276463, 40.662281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167214, -0.175347, -0.970203,
		-0.188092, -0.971657, 0.143193,
		-0.967812, 0.158543, -0.195456,
		34.521175, 34.324020, 40.603645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966774, 33.679081, 40.337128>,  <35.198647, 34.213051, 40.740463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966774, 33.679081, 40.337128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.708626, 33.975689, 40.263752>,  <34.553738, 34.153652, 40.219727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.708626, 33.975689, 40.263752>,  <34.966774, 33.679081, 40.337128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708626, 33.975689, 40.263752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200714, -0.067087, -0.977350,
		-0.737029, -0.667570, -0.105537,
		-0.645370, 0.741518, -0.183435,
		34.515015, 34.198143, 40.208721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785393, 33.549831, 39.709999>,  <34.966774, 33.679081, 40.337128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785393, 33.549831, 39.709999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.676003, 33.931644, 39.757465>,  <34.610367, 34.160732, 39.785946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.676003, 33.931644, 39.757465>,  <34.785393, 33.549831, 39.709999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676003, 33.931644, 39.757465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226427, 0.183783, -0.956533,
		-0.934847, -0.234724, -0.266393,
		-0.273480, 0.954530, 0.118661,
		34.593960, 34.218002, 39.793064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466019, 33.705696, 39.143600>,  <34.785393, 33.549831, 39.709999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466019, 33.705696, 39.143600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.548813, 34.063648, 39.301765>,  <34.598488, 34.278419, 39.396664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.548813, 34.063648, 39.301765>,  <34.466019, 33.705696, 39.143600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548813, 34.063648, 39.301765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242883, 0.344513, -0.906818,
		-0.947717, 0.283734, -0.146043,
		0.206981, 0.894878, 0.395415,
		34.610909, 34.332111, 39.420391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223549, 34.091446, 38.651054>,  <34.466019, 33.705696, 39.143600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223549, 34.091446, 38.651054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.478008, 34.315659, 38.863136>,  <34.630684, 34.450188, 38.990387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.478008, 34.315659, 38.863136>,  <34.223549, 34.091446, 38.651054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478008, 34.315659, 38.863136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405897, 0.341281, -0.847806,
		-0.656174, 0.754538, -0.010414,
		0.636148, 0.560535, 0.530204,
		34.668854, 34.483818, 39.022198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189274, 34.754597, 38.314327>,  <34.223549, 34.091446, 38.651054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189274, 34.754597, 38.314327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544109, 34.715271, 38.494732>,  <34.757011, 34.691677, 38.602974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544109, 34.715271, 38.494732>,  <34.189274, 34.754597, 38.314327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544109, 34.715271, 38.494732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458471, 0.301175, -0.836121,
		-0.053632, 0.948488, 0.312242,
		0.887089, -0.098311, 0.451007,
		34.810238, 34.685780, 38.630035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536587, 35.232269, 38.096584>,  <34.189274, 34.754597, 38.314327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536587, 35.232269, 38.096584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852238, 35.044701, 38.255272>,  <35.041630, 34.932159, 38.350483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852238, 35.044701, 38.255272>,  <34.536587, 35.232269, 38.096584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852238, 35.044701, 38.255272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565108, 0.301185, -0.768076,
		0.240682, 0.830302, 0.502665,
		0.789130, -0.468922, 0.396720,
		35.088978, 34.904022, 38.374287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068195, 35.615028, 37.836910>,  <34.536587, 35.232269, 38.096584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068195, 35.615028, 37.836910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.273975, 35.300793, 37.974426>,  <35.397442, 35.112251, 38.056934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.273975, 35.300793, 37.974426>,  <35.068195, 35.615028, 37.836910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273975, 35.300793, 37.974426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658423, 0.105022, -0.745285,
		0.549386, 0.609765, 0.571281,
		0.514446, -0.785593, 0.343785,
		35.428310, 35.065113, 38.077560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744160, 35.790565, 37.857605>,  <35.068195, 35.615028, 37.836910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744160, 35.790565, 37.857605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.721966, 35.392410, 37.826279>,  <35.708649, 35.153519, 37.807484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.721966, 35.392410, 37.826279>,  <35.744160, 35.790565, 37.857605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721966, 35.392410, 37.826279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703125, 0.016734, -0.710869,
		0.708898, -0.094509, 0.698951,
		-0.055488, -0.995383, -0.078314,
		35.705318, 35.093796, 37.802784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419716, 35.470222, 37.950890>,  <35.744160, 35.790565, 37.857605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419716, 35.470222, 37.950890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.215099, 35.196842, 37.742577>,  <36.092331, 35.032814, 37.617588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.215099, 35.196842, 37.742577>,  <36.419716, 35.470222, 37.950890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215099, 35.196842, 37.742577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755533, -0.069082, -0.651458,
		0.409264, -0.726718, 0.551710,
		-0.511539, -0.683454, -0.520787,
		36.061638, 34.991806, 37.586342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898052, 34.925613, 37.738983>,  <36.419716, 35.470222, 37.950890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898052, 34.925613, 37.738983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592846, 34.857021, 37.489697>,  <36.409721, 34.815865, 37.340122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.592846, 34.857021, 37.489697>,  <36.898052, 34.925613, 37.738983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592846, 34.857021, 37.489697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638379, -0.048674, -0.768181,
		0.101396, -0.983984, 0.146611,
		-0.763014, -0.171484, -0.623219,
		36.363941, 34.805576, 37.302731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878414, 35.039684, 37.055988>,  <36.898052, 34.925613, 37.738983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878414, 35.039684, 37.055988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602097, 35.317883, 37.135063>,  <36.436306, 35.484802, 37.182507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602097, 35.317883, 37.135063>,  <36.878414, 35.039684, 37.055988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602097, 35.317883, 37.135063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722857, -0.670592, -0.166684,
		0.016637, -0.258043, 0.965990,
		-0.690797, 0.695500, 0.197685,
		36.394859, 35.526531, 37.194370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209808, 35.677437, 37.334866>,  <36.878414, 35.039684, 37.055988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209808, 35.677437, 37.334866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.573864, 35.836765, 37.380436>,  <37.792297, 35.932362, 37.407776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.573864, 35.836765, 37.380436>,  <37.209808, 35.677437, 37.334866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573864, 35.836765, 37.380436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199001, -0.661505, 0.723056,
		0.363371, -0.635413, -0.681331,
		0.910143, 0.398323, 0.113924,
		37.846909, 35.956261, 37.414612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656597, 35.119816, 37.425903>,  <37.209808, 35.677437, 37.334866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656597, 35.119816, 37.425903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.835381, 35.432545, 37.599792>,  <37.942650, 35.620182, 37.704128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.835381, 35.432545, 37.599792>,  <37.656597, 35.119816, 37.425903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835381, 35.432545, 37.599792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198818, -0.560632, 0.803843,
		0.872182, -0.272852, -0.406019,
		0.446957, 0.781821, 0.434725,
		37.969467, 35.667091, 37.730209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227383, 34.856647, 37.731876>,  <37.656597, 35.119816, 37.425903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227383, 34.856647, 37.731876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157089, 35.211723, 37.902115>,  <38.114914, 35.424767, 38.004257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157089, 35.211723, 37.902115>,  <38.227383, 34.856647, 37.731876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157089, 35.211723, 37.902115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075045, -0.418988, 0.904885,
		0.981573, 0.190958, 0.007014,
		-0.175734, 0.887685, 0.425598,
		38.104370, 35.478027, 38.029793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559166, 34.680588, 38.390770>,  <38.227383, 34.856647, 37.731876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559166, 34.680588, 38.390770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.401241, 35.044514, 38.441948>,  <38.306488, 35.262867, 38.472656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.401241, 35.044514, 38.441948>,  <38.559166, 34.680588, 38.390770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401241, 35.044514, 38.441948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013046, -0.144799, 0.989375,
		0.918671, 0.388944, 0.069037,
		-0.394808, 0.909811, 0.127948,
		38.282799, 35.317455, 38.480331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002800, 35.044479, 38.886436>,  <38.559166, 34.680588, 38.390770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002800, 35.044479, 38.886436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631866, 35.193283, 38.902699>,  <38.409306, 35.282566, 38.912457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631866, 35.193283, 38.902699>,  <39.002800, 35.044479, 38.886436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631866, 35.193283, 38.902699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067581, 0.059626, 0.995930,
		0.368072, 0.926312, -0.080434,
		-0.927338, 0.372010, 0.040655,
		38.353664, 35.304886, 38.914894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971645, 35.662724, 39.345963>,  <39.002800, 35.044479, 38.886436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971645, 35.662724, 39.345963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603004, 35.509117, 39.323391>,  <38.381821, 35.416954, 39.309849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603004, 35.509117, 39.323391>,  <38.971645, 35.662724, 39.345963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603004, 35.509117, 39.323391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012876, -0.115043, 0.993277,
		-0.387924, 0.916132, 0.101079,
		-0.921601, -0.384014, -0.056424,
		38.326523, 35.393913, 39.306465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532387, 36.031040, 39.815517>,  <38.971645, 35.662724, 39.345963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532387, 36.031040, 39.815517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356464, 35.674759, 39.769520>,  <38.250912, 35.460991, 39.741920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356464, 35.674759, 39.769520>,  <38.532387, 36.031040, 39.815517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356464, 35.674759, 39.769520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056457, -0.100373, 0.993347,
		-0.896318, 0.443369, -0.006142,
		-0.439802, -0.890702, -0.114997,
		38.224525, 35.407547, 39.735020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092129, 35.938808, 40.415760>,  <38.532387, 36.031040, 39.815517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092129, 35.938808, 40.415760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120846, 35.558990, 40.293633>,  <38.138077, 35.331100, 40.220356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.120846, 35.558990, 40.293633>,  <38.092129, 35.938808, 40.415760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120846, 35.558990, 40.293633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083347, -0.299324, 0.950505,
		-0.993931, -0.093688, 0.057651,
		0.071794, -0.949541, -0.305316,
		38.142384, 35.274128, 40.202038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693253, 35.468739, 40.919556>,  <38.092129, 35.938808, 40.415760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693253, 35.468739, 40.919556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.939175, 35.205227, 40.746109>,  <38.086727, 35.047119, 40.642040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.939175, 35.205227, 40.746109>,  <37.693253, 35.468739, 40.919556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939175, 35.205227, 40.746109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184862, -0.414108, 0.891258,
		-0.766708, -0.628108, -0.132811,
		0.614804, -0.658783, -0.433613,
		38.123615, 35.007591, 40.616024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408192, 34.844936, 40.932903>,  <37.693253, 35.468739, 40.919556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408192, 34.844936, 40.932903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794590, 34.759476, 40.874649>,  <38.026428, 34.708199, 40.839695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794590, 34.759476, 40.874649>,  <37.408192, 34.844936, 40.932903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794590, 34.759476, 40.874649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008600, -0.589496, 0.807725,
		-0.258422, -0.779005, -0.571287,
		0.965994, -0.213647, -0.145639,
		38.084389, 34.695381, 40.830956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398079, 34.115532, 40.918552>,  <37.408192, 34.844936, 40.932903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398079, 34.115532, 40.918552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.754078, 34.270000, 41.015526>,  <37.967678, 34.362682, 41.073711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.754078, 34.270000, 41.015526>,  <37.398079, 34.115532, 40.918552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754078, 34.270000, 41.015526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091445, -0.369732, 0.924628,
		0.446699, -0.845087, -0.293748,
		0.889999, 0.386169, 0.242438,
		38.021076, 34.385853, 41.088257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656334, 33.624966, 41.323017>,  <37.398079, 34.115532, 40.918552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656334, 33.624966, 41.323017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885986, 33.943794, 41.397903>,  <38.023777, 34.135090, 41.442837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885986, 33.943794, 41.397903>,  <37.656334, 33.624966, 41.323017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885986, 33.943794, 41.397903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163050, -0.335384, 0.927865,
		0.802362, -0.502193, -0.322517,
		0.574134, 0.797069, 0.187217,
		38.058228, 34.182915, 41.454067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293758, 33.514900, 41.557636>,  <37.656334, 33.624966, 41.323017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293758, 33.514900, 41.557636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.343170, 33.890003, 41.687466>,  <38.372818, 34.115067, 41.765366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.343170, 33.890003, 41.687466>,  <38.293758, 33.514900, 41.557636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343170, 33.890003, 41.687466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110128, -0.312108, 0.943642,
		0.986211, -0.152310, 0.064720,
		0.123527, 0.937758, 0.324578,
		38.380230, 34.171329, 41.784840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703056, 33.294662, 42.190826>,  <38.293758, 33.514900, 41.557636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703056, 33.294662, 42.190826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.579823, 33.673893, 42.222416>,  <38.505882, 33.901432, 42.241367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.579823, 33.673893, 42.222416>,  <38.703056, 33.294662, 42.190826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579823, 33.673893, 42.222416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206860, -0.147779, 0.967146,
		0.928596, 0.281631, 0.241647,
		-0.308089, 0.948075, 0.078969,
		38.487396, 33.958317, 42.246105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057869, 33.722767, 42.750500>,  <38.703056, 33.294662, 42.190826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057869, 33.722767, 42.750500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.681080, 33.841381, 42.687557>,  <38.455006, 33.912548, 42.649792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.681080, 33.841381, 42.687557>,  <39.057869, 33.722767, 42.750500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681080, 33.841381, 42.687557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252479, -0.316866, 0.914248,
		0.221243, 0.900924, 0.373347,
		-0.941969, 0.296533, -0.157360,
		38.398491, 33.930340, 42.640350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955914, 34.104580, 43.286766>,  <39.057869, 33.722767, 42.750500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955914, 34.104580, 43.286766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.586842, 34.022041, 43.156483>,  <38.365398, 33.972519, 43.078312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.586842, 34.022041, 43.156483>,  <38.955914, 34.104580, 43.286766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586842, 34.022041, 43.156483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266134, -0.270409, 0.925231,
		-0.278994, 0.940372, 0.194584,
		-0.922678, -0.206349, -0.325707,
		38.310040, 33.960136, 43.058769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516396, 34.338535, 43.852985>,  <38.955914, 34.104580, 43.286766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516396, 34.338535, 43.852985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265633, 34.133572, 43.618233>,  <38.115177, 34.010593, 43.477383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265633, 34.133572, 43.618233>,  <38.516396, 34.338535, 43.852985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265633, 34.133572, 43.618233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524471, -0.279473, 0.804254,
		-0.576126, 0.811991, -0.093542,
		-0.626904, -0.512412, -0.586878,
		38.077560, 33.979847, 43.442169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891342, 34.614525, 44.040741>,  <38.516396, 34.338535, 43.852985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891342, 34.614525, 44.040741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.835011, 34.256508, 43.871475>,  <37.801212, 34.041698, 43.769917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.835011, 34.256508, 43.871475>,  <37.891342, 34.614525, 44.040741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835011, 34.256508, 43.871475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638561, -0.244518, 0.729692,
		-0.756575, 0.372982, -0.537102,
		-0.140831, -0.895039, -0.423168,
		37.792763, 33.987995, 43.744526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.138470, 34.584751, 43.915920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.293533, 34.217415, 43.947823>,  <37.386574, 33.997013, 43.966965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.293533, 34.217415, 43.947823>,  <37.138470, 34.584751, 43.915920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293533, 34.217415, 43.947823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465020, -0.120121, 0.877113,
		-0.795911, -0.377113, -0.473615,
		0.387661, -0.918344, 0.079759,
		37.409832, 33.941910, 43.971752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596344, 34.249992, 44.001453>,  <37.138470, 34.584751, 43.915920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596344, 34.249992, 44.001453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.825058, 33.938427, 44.104492>,  <36.962284, 33.751488, 44.166313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.825058, 33.938427, 44.104492>,  <36.596344, 34.249992, 44.001453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825058, 33.938427, 44.104492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593152, -0.175575, 0.785712,
		-0.566779, -0.602046, -0.562408,
		0.571780, -0.778918, 0.257593,
		36.996593, 33.704750, 44.181770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112644, 33.657372, 44.122154>,  <36.596344, 34.249992, 44.001453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112644, 33.657372, 44.122154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.466476, 33.605083, 44.301231>,  <36.678776, 33.573711, 44.408676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.466476, 33.605083, 44.301231>,  <36.112644, 33.657372, 44.122154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466476, 33.605083, 44.301231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466370, -0.254856, 0.847082,
		0.003370, -0.958103, -0.286403,
		0.884583, -0.130715, 0.447689,
		36.731850, 33.565868, 44.435539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134922, 33.007915, 44.352680>,  <36.112644, 33.657372, 44.122154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134922, 33.007915, 44.352680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406433, 33.184723, 44.587246>,  <36.569340, 33.290806, 44.727985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406433, 33.184723, 44.587246>,  <36.134922, 33.007915, 44.352680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406433, 33.184723, 44.587246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467318, -0.355981, 0.809253,
		0.566453, -0.823347, -0.035071,
		0.678781, 0.442015, 0.586412,
		36.610069, 33.317326, 44.763168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432598, 32.500851, 44.920078>,  <36.134922, 33.007915, 44.352680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432598, 32.500851, 44.920078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.489368, 32.873726, 45.053276>,  <36.523430, 33.097450, 45.133194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.489368, 32.873726, 45.053276>,  <36.432598, 32.500851, 44.920078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489368, 32.873726, 45.053276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247868, -0.292217, 0.923672,
		0.958341, -0.213637, 0.189584,
		0.141930, 0.932185, 0.332998,
		36.531948, 33.153381, 45.153175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914196, 32.466171, 45.470959>,  <36.432598, 32.500851, 44.920078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914196, 32.466171, 45.470959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758320, 32.819599, 45.574844>,  <36.664795, 33.031654, 45.637177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758320, 32.819599, 45.574844>,  <36.914196, 32.466171, 45.470959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758320, 32.819599, 45.574844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161203, -0.343093, 0.925365,
		0.906727, 0.318742, 0.276135,
		-0.389693, 0.883567, 0.259710,
		36.641411, 33.084671, 45.652756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178402, 32.648880, 46.180374>,  <36.914196, 32.466171, 45.470959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178402, 32.648880, 46.180374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.856903, 32.884403, 46.146225>,  <36.664001, 33.025719, 46.125736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.856903, 32.884403, 46.146225>,  <37.178402, 32.648880, 46.180374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856903, 32.884403, 46.146225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263730, -0.223963, 0.938236,
		0.533322, 0.776623, 0.335297,
		-0.803750, 0.588810, -0.085374,
		36.615780, 33.061047, 46.120613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160057, 33.082455, 46.714260>,  <37.178402, 32.648880, 46.180374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160057, 33.082455, 46.714260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.781574, 33.111961, 46.588249>,  <36.554485, 33.129665, 46.512642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.781574, 33.111961, 46.588249>,  <37.160057, 33.082455, 46.714260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781574, 33.111961, 46.588249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322762, -0.147301, 0.934948,
		0.022567, 0.986337, 0.163188,
		-0.946211, 0.073770, -0.315028,
		36.497711, 33.134090, 46.493740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759338, 33.669006, 46.995487>,  <37.160057, 33.082455, 46.714260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759338, 33.669006, 46.995487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.511471, 33.368969, 46.903076>,  <36.362751, 33.188946, 46.847630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.511471, 33.368969, 46.903076>,  <36.759338, 33.669006, 46.995487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511471, 33.368969, 46.903076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289016, -0.055593, 0.955709,
		-0.729715, 0.658991, -0.182339,
		-0.619667, -0.750094, -0.231026,
		36.325569, 33.143940, 46.833767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312859, 33.706383, 47.519867>,  <36.759338, 33.669006, 46.995487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312859, 33.706383, 47.519867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248123, 33.346031, 47.358757>,  <36.209282, 33.129822, 47.262089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248123, 33.346031, 47.358757>,  <36.312859, 33.706383, 47.519867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248123, 33.346031, 47.358757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251867, -0.356931, 0.899535,
		-0.954133, 0.247030, -0.169134,
		-0.161843, -0.900875, -0.402778,
		36.199570, 33.075768, 47.237923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683823, 33.340645, 47.792969>,  <36.312859, 33.706383, 47.519867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683823, 33.340645, 47.792969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.900917, 33.033707, 47.656368>,  <36.031174, 32.849545, 47.574409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.900917, 33.033707, 47.656368>,  <35.683823, 33.340645, 47.792969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900917, 33.033707, 47.656368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085296, -0.454848, 0.886476,
		-0.835561, -0.451994, -0.312314,
		0.542737, -0.767343, -0.341500,
		36.063740, 32.803505, 47.553917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407070, 32.864819, 48.131306>,  <35.683823, 33.340645, 47.792969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407070, 32.864819, 48.131306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.717712, 32.645969, 48.006382>,  <35.904099, 32.514660, 47.931427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.717712, 32.645969, 48.006382>,  <35.407070, 32.864819, 48.131306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717712, 32.645969, 48.006382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008414, -0.486684, 0.873537,
		-0.629931, -0.681022, -0.373358,
		0.776606, -0.547127, -0.312308,
		35.950695, 32.481831, 47.912689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256920, 32.090324, 48.259247>,  <35.407070, 32.864819, 48.131306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256920, 32.090324, 48.259247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.653519, 32.098240, 48.207802>,  <35.891479, 32.102989, 48.176937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.653519, 32.098240, 48.207802>,  <35.256920, 32.090324, 48.259247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653519, 32.098240, 48.207802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094960, -0.785749, 0.611213,
		-0.088961, -0.618229, -0.780947,
		0.991498, 0.019784, -0.128608,
		35.950970, 32.104176, 48.169220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412086, 31.427307, 48.063663>,  <35.256920, 32.090324, 48.259247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412086, 31.427307, 48.063663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711903, 31.610409, 48.254932>,  <35.891792, 31.720270, 48.369694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711903, 31.610409, 48.254932>,  <35.412086, 31.427307, 48.063663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711903, 31.610409, 48.254932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014906, -0.733848, 0.679150,
		0.661791, -0.501923, -0.556872,
		0.749540, 0.457756, 0.478173,
		35.936764, 31.747736, 48.398384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873253, 30.895382, 48.382725>,  <35.412086, 31.427307, 48.063663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873253, 30.895382, 48.382725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.977676, 31.220951, 48.590332>,  <36.040329, 31.416294, 48.714897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.977676, 31.220951, 48.590332>,  <35.873253, 30.895382, 48.382725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977676, 31.220951, 48.590332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019054, -0.533209, 0.845769,
		0.965136, -0.230682, -0.123689,
		0.261056, 0.813925, 0.519014,
		36.055992, 31.465128, 48.746037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291508, 30.581966, 48.907219>,  <35.873253, 30.895382, 48.382725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291508, 30.581966, 48.907219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.165527, 30.942324, 49.026680>,  <36.089939, 31.158539, 49.098358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.165527, 30.942324, 49.026680>,  <36.291508, 30.581966, 48.907219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165527, 30.942324, 49.026680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219491, -0.375276, 0.900551,
		0.923381, 0.218073, 0.315930,
		-0.314947, 0.900895, 0.298657,
		36.071045, 31.212593, 49.116276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602047, 30.677919, 49.593517>,  <36.291508, 30.581966, 48.907219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602047, 30.677919, 49.593517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.288700, 30.926414, 49.585518>,  <36.100693, 31.075512, 49.580719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.288700, 30.926414, 49.585518>,  <36.602047, 30.677919, 49.593517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288700, 30.926414, 49.585518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214611, -0.240142, 0.946717,
		0.583332, 0.745921, 0.321443,
		-0.783368, 0.621236, -0.020000,
		36.053688, 31.112785, 49.579517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647705, 30.995510, 50.243374>,  <36.602047, 30.677919, 49.593517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647705, 30.995510, 50.243374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274708, 31.068123, 50.118477>,  <36.050907, 31.111691, 50.043537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274708, 31.068123, 50.118477>,  <36.647705, 30.995510, 50.243374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274708, 31.068123, 50.118477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323386, -0.034646, 0.945633,
		0.160845, 0.982775, 0.091013,
		-0.932497, 0.181533, -0.312243,
		35.994957, 31.122583, 50.024803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357967, 31.359575, 50.785431>,  <36.647705, 30.995510, 50.243374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357967, 31.359575, 50.785431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.044899, 31.234764, 50.570000>,  <35.857059, 31.159878, 50.440739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.044899, 31.234764, 50.570000>,  <36.357967, 31.359575, 50.785431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044899, 31.234764, 50.570000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509409, -0.176121, 0.842309,
		-0.357678, 0.933606, -0.021105,
		-0.782668, -0.312026, -0.538582,
		35.810097, 31.141157, 50.408424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895729, 31.720535, 51.123871>,  <36.357967, 31.359575, 50.785431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895729, 31.720535, 51.123871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.694889, 31.447830, 50.911045>,  <35.574387, 31.284206, 50.783348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.694889, 31.447830, 50.911045>,  <35.895729, 31.720535, 51.123871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694889, 31.447830, 50.911045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615400, -0.150591, 0.773696,
		-0.607603, 0.715905, -0.343946,
		-0.502098, -0.681764, -0.532068,
		35.544258, 31.243301, 50.751423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265579, 31.967377, 51.276672>,  <35.895729, 31.720535, 51.123871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265579, 31.967377, 51.276672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219101, 31.581646, 51.181530>,  <35.191216, 31.350208, 51.124443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219101, 31.581646, 51.181530>,  <35.265579, 31.967377, 51.276672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219101, 31.581646, 51.181530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729400, -0.079696, 0.679430,
		-0.674148, 0.252437, -0.694118,
		-0.116195, -0.964326, -0.237855,
		35.184242, 31.292349, 51.110172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587578, 31.813774, 51.028088>,  <35.265579, 31.967377, 51.276672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587578, 31.813774, 51.028088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.767010, 31.510155, 51.216816>,  <34.874668, 31.327984, 51.330055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.767010, 31.510155, 51.216816>,  <34.587578, 31.813774, 51.028088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767010, 31.510155, 51.216816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692059, 0.039044, 0.720784,
		-0.565533, -0.649862, -0.507792,
		0.448584, -0.759049, 0.471824,
		34.901585, 31.282440, 51.358364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376732, 31.472954, 51.742416>,  <34.587578, 31.813774, 51.028088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376732, 31.472954, 51.742416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.068089, 31.465195, 51.488098>,  <33.882900, 31.460539, 51.335506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.068089, 31.465195, 51.488098>,  <34.376732, 31.472954, 51.742416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068089, 31.465195, 51.488098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140039, -0.980191, -0.140052,
		-0.620487, -0.197103, 0.759043,
		-0.771612, -0.019395, -0.635797,
		33.836605, 31.459375, 51.297359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898624, 30.883326, 51.903824>,  <34.376732, 31.472954, 51.742416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898624, 30.883326, 51.903824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.905315, 30.990377, 51.518475>,  <33.909328, 31.054609, 51.287266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.905315, 30.990377, 51.518475>,  <33.898624, 30.883326, 51.903824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905315, 30.990377, 51.518475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077825, -0.960937, -0.265601,
		-0.996827, -0.070533, -0.036899,
		0.016724, 0.267630, -0.963377,
		33.910332, 31.070667, 51.229462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086159, 31.050070, 51.925774>,  <33.898624, 30.883326, 51.903824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086159, 31.050070, 51.925774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.751858, 31.242792, 51.820412>,  <32.551277, 31.358425, 51.757195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.751858, 31.242792, 51.820412>,  <33.086159, 31.050070, 51.925774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751858, 31.242792, 51.820412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267953, -0.060871, -0.961507,
		-0.479293, -0.874162, -0.078229,
		-0.835751, 0.481805, -0.263409,
		32.501133, 31.387333, 51.741390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886620, 30.676025, 51.393650>,  <33.086159, 31.050070, 51.925774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886620, 30.676025, 51.393650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650173, 30.998085, 51.374374>,  <32.508305, 31.191320, 51.362808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650173, 30.998085, 51.374374>,  <32.886620, 30.676025, 51.393650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650173, 30.998085, 51.374374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175806, 0.070304, -0.981911,
		-0.787196, -0.588893, -0.183107,
		-0.591114, 0.805147, -0.048187,
		32.472839, 31.239630, 51.359917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432076, 30.531866, 50.897419>,  <32.886620, 30.676025, 51.393650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432076, 30.531866, 50.897419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.448483, 30.927299, 50.955414>,  <32.458328, 31.164558, 50.990211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.448483, 30.927299, 50.955414>,  <32.432076, 30.531866, 50.897419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448483, 30.927299, 50.955414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117611, 0.139325, -0.983238,
		-0.992212, 0.057385, -0.110553,
		0.041020, 0.988583, 0.144989,
		32.460789, 31.223875, 50.998909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060143, 30.774382, 50.274872>,  <32.432076, 30.531866, 50.897419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060143, 30.774382, 50.274872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.258545, 31.105591, 50.379448>,  <32.377586, 31.304317, 50.442192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.258545, 31.105591, 50.379448>,  <32.060143, 30.774382, 50.274872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258545, 31.105591, 50.379448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088070, 0.251563, -0.963826,
		-0.863840, 0.501090, 0.051853,
		0.496008, 0.828025, 0.261441,
		32.407349, 31.353998, 50.457882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793381, 31.335562, 49.879753>,  <32.060143, 30.774382, 50.274872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793381, 31.335562, 49.879753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.149693, 31.476221, 49.994892>,  <32.363480, 31.560616, 50.063976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.149693, 31.476221, 49.994892>,  <31.793381, 31.335562, 49.879753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149693, 31.476221, 49.994892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174537, 0.320097, -0.931169,
		-0.419581, 0.879706, 0.223761,
		0.890780, 0.351647, 0.287848,
		32.416927, 31.581715, 50.081245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905176, 31.916824, 49.364647>,  <31.793381, 31.335562, 49.879753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905176, 31.916824, 49.364647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.245903, 31.835365, 49.557701>,  <32.450340, 31.786489, 49.673534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.245903, 31.835365, 49.557701>,  <31.905176, 31.916824, 49.364647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245903, 31.835365, 49.557701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523496, 0.364248, -0.770244,
		-0.018941, 0.908764, 0.416881,
		0.851818, -0.203647, 0.482633,
		32.501450, 31.774271, 49.702492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317474, 32.567364, 49.493721>,  <31.905176, 31.916824, 49.364647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317474, 32.567364, 49.493721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.571941, 32.259068, 49.507893>,  <32.724621, 32.074089, 49.516396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.571941, 32.259068, 49.507893>,  <32.317474, 32.567364, 49.493721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571941, 32.259068, 49.507893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593075, 0.459117, -0.661418,
		0.493511, 0.441788, 0.749180,
		0.636168, -0.770737, 0.035434,
		32.762791, 32.027847, 49.518524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018909, 32.846977, 49.693501>,  <32.317474, 32.567364, 49.493721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018909, 32.846977, 49.693501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.047501, 32.515530, 49.471413>,  <33.064655, 32.316658, 49.338158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.047501, 32.515530, 49.471413>,  <33.018909, 32.846977, 49.693501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047501, 32.515530, 49.471413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511336, 0.508379, -0.692884,
		0.856404, -0.234380, 0.460042,
		0.071478, -0.828624, -0.555224,
		33.068943, 32.266941, 49.304844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633007, 32.876705, 49.264420>,  <33.018909, 32.846977, 49.693501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633007, 32.876705, 49.264420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.446362, 32.577866, 49.075054>,  <33.334373, 32.398563, 48.961433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.446362, 32.577866, 49.075054>,  <33.633007, 32.876705, 49.264420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446362, 32.577866, 49.075054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264442, 0.392932, -0.880724,
		0.844006, -0.536145, 0.014218,
		-0.466609, -0.747096, -0.473417,
		33.306377, 32.353737, 48.933029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111538, 32.593613, 48.935017>,  <33.633007, 32.876705, 49.264420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111538, 32.593613, 48.935017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.770725, 32.521946, 48.738266>,  <33.566238, 32.478947, 48.620216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.770725, 32.521946, 48.738266>,  <34.111538, 32.593613, 48.935017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770725, 32.521946, 48.738266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390079, 0.409332, -0.824794,
		0.349113, -0.894622, -0.278876,
		-0.852031, -0.179163, -0.491877,
		33.515118, 32.468197, 48.590702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378296, 32.340057, 48.331303>,  <34.111538, 32.593613, 48.935017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378296, 32.340057, 48.331303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990196, 32.389290, 48.247902>,  <33.757336, 32.418831, 48.197861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990196, 32.389290, 48.247902>,  <34.378296, 32.340057, 48.331303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990196, 32.389290, 48.247902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231389, 0.217787, -0.948171,
		-0.071296, -0.968204, -0.239788,
		-0.970245, 0.123085, -0.208504,
		33.699123, 32.426216, 48.185352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247326, 31.853678, 47.754681>,  <34.378296, 32.340057, 48.331303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247326, 31.853678, 47.754681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.985458, 32.156040, 47.752750>,  <33.828339, 32.337456, 47.751591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.985458, 32.156040, 47.752750>,  <34.247326, 31.853678, 47.754681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985458, 32.156040, 47.752750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266030, 0.224417, -0.937478,
		-0.707561, -0.615017, -0.348011,
		-0.654664, 0.755904, -0.004824,
		33.789059, 32.382812, 47.751305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980145, 31.945410, 47.103619>,  <34.247326, 31.853678, 47.754681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980145, 31.945410, 47.103619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.889263, 32.305187, 47.252956>,  <33.834732, 32.521053, 47.342560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.889263, 32.305187, 47.252956>,  <33.980145, 31.945410, 47.103619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889263, 32.305187, 47.252956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173112, 0.414563, -0.893403,
		-0.958337, -0.138357, -0.249896,
		-0.227206, 0.899441, 0.373340,
		33.821102, 32.575020, 47.364960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464291, 32.217148, 46.634552>,  <33.980145, 31.945410, 47.103619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464291, 32.217148, 46.634552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636173, 32.517990, 46.834427>,  <33.739304, 32.698498, 46.954353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636173, 32.517990, 46.834427>,  <33.464291, 32.217148, 46.634552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636173, 32.517990, 46.834427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165860, 0.478223, -0.862434,
		-0.887606, 0.453471, 0.080750,
		0.429705, 0.752108, 0.499686,
		33.765083, 32.743622, 46.984333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174809, 32.870697, 46.404007>,  <33.464291, 32.217148, 46.634552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174809, 32.870697, 46.404007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531506, 32.960667, 46.561085>,  <33.745525, 33.014648, 46.655331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531506, 32.960667, 46.561085>,  <33.174809, 32.870697, 46.404007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531506, 32.960667, 46.561085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215347, 0.552296, -0.805353,
		-0.398023, 0.802733, 0.444069,
		0.891741, 0.224920, 0.392693,
		33.799026, 33.028141, 46.678894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095127, 33.591667, 46.586414>,  <33.174809, 32.870697, 46.404007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095127, 33.591667, 46.586414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.468498, 33.467182, 46.515026>,  <33.692520, 33.392490, 46.472195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.468498, 33.467182, 46.515026>,  <33.095127, 33.591667, 46.586414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468498, 33.467182, 46.515026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090119, 0.684917, -0.723026,
		0.347252, 0.658812, 0.667370,
		0.933432, -0.311215, -0.178467,
		33.748528, 33.373817, 46.461487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448101, 34.227825, 46.389179>,  <33.095127, 33.591667, 46.586414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448101, 34.227825, 46.389179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.714725, 33.955700, 46.267281>,  <33.874699, 33.792423, 46.194141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.714725, 33.955700, 46.267281>,  <33.448101, 34.227825, 46.389179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714725, 33.955700, 46.267281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272208, 0.602709, -0.750097,
		0.693975, 0.417029, 0.586928,
		0.666559, -0.680315, -0.304746,
		33.914692, 33.751606, 46.175858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055523, 34.545898, 46.085686>,  <33.448101, 34.227825, 46.389179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055523, 34.545898, 46.085686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.101009, 34.174908, 45.943218>,  <34.128304, 33.952312, 45.857738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.101009, 34.174908, 45.943218>,  <34.055523, 34.545898, 46.085686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101009, 34.174908, 45.943218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280756, 0.373886, -0.883960,
		0.953018, 0.000527, 0.302913,
		0.113720, -0.927475, -0.356172,
		34.135124, 33.896664, 45.836369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638290, 34.544823, 45.743221>,  <34.055523, 34.545898, 46.085686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638290, 34.544823, 45.743221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442776, 34.242146, 45.569553>,  <34.325466, 34.060539, 45.465351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442776, 34.242146, 45.569553>,  <34.638290, 34.544823, 45.743221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442776, 34.242146, 45.569553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321791, 0.306204, -0.895929,
		0.810890, -0.577627, 0.093830,
		-0.488782, -0.756694, -0.434173,
		34.296143, 34.015137, 45.439301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056042, 34.462833, 45.189243>,  <34.638290, 34.544823, 45.743221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056042, 34.462833, 45.189243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.727734, 34.248619, 45.109707>,  <34.530750, 34.120090, 45.061985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.727734, 34.248619, 45.109707>,  <35.056042, 34.462833, 45.189243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727734, 34.248619, 45.109707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047420, 0.282998, -0.957948,
		0.569288, -0.795683, -0.206880,
		-0.820769, -0.535538, -0.198839,
		34.481503, 34.087959, 45.050056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.665688, 33.652996, 27.866463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.442219, 33.694252, 28.195642>,  <38.308136, 33.719006, 28.393150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.442219, 33.694252, 28.195642>,  <38.665688, 33.652996, 27.866463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442219, 33.694252, 28.195642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824088, -0.042940, 0.564832,
		0.093596, 0.993739, -0.061010,
		-0.558676, 0.103143, 0.822947,
		38.274616, 33.725197, 28.442526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075394, 33.950302, 28.310947>,  <38.665688, 33.652996, 27.866463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075394, 33.950302, 28.310947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.794712, 33.831738, 28.570101>,  <38.626305, 33.760597, 28.725594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.794712, 33.831738, 28.570101>,  <39.075394, 33.950302, 28.310947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794712, 33.831738, 28.570101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708051, -0.189016, 0.680395,
		-0.079216, 0.936170, 0.342507,
		-0.701704, -0.296410, 0.647883,
		38.584202, 33.742813, 28.764465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182472, 34.392784, 28.959246>,  <39.075394, 33.950302, 28.310947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182472, 34.392784, 28.959246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.994255, 34.047256, 29.031244>,  <38.881325, 33.839939, 29.074444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.994255, 34.047256, 29.031244>,  <39.182472, 34.392784, 28.959246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994255, 34.047256, 29.031244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606664, -0.168583, 0.776877,
		-0.640740, 0.474751, 0.603377,
		-0.470542, -0.863824, 0.179996,
		38.853092, 33.788109, 29.085243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124611, 34.496632, 29.631367>,  <39.182472, 34.392784, 28.959246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124611, 34.496632, 29.631367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.049610, 34.103966, 29.617586>,  <39.004612, 33.868366, 29.609318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.049610, 34.103966, 29.617586>,  <39.124611, 34.496632, 29.631367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049610, 34.103966, 29.617586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486452, -0.123268, 0.864968,
		-0.853351, 0.145423, 0.500643,
		-0.187499, -0.981660, -0.034450,
		38.993359, 33.809467, 29.607250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953571, 34.259022, 30.333527>,  <39.124611, 34.496632, 29.631367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953571, 34.259022, 30.333527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.075356, 33.923264, 30.153427>,  <39.148426, 33.721809, 30.045366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.075356, 33.923264, 30.153427>,  <38.953571, 34.259022, 30.333527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075356, 33.923264, 30.153427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643404, -0.167327, 0.747016,
		-0.702378, -0.517129, 0.489124,
		0.304460, -0.839392, -0.450250,
		39.166695, 33.671448, 30.018353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067165, 33.839165, 30.871101>,  <38.953571, 34.259022, 30.333527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067165, 33.839165, 30.871101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.279568, 33.644379, 30.593714>,  <39.407009, 33.527508, 30.427282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.279568, 33.644379, 30.593714>,  <39.067165, 33.839165, 30.871101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279568, 33.644379, 30.593714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692043, -0.223038, 0.686536,
		-0.488987, -0.844465, 0.218565,
		0.531007, -0.486964, -0.693468,
		39.438869, 33.498291, 30.385674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208374, 33.167793, 31.144529>,  <39.067165, 33.839165, 30.871101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208374, 33.167793, 31.144529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.493496, 33.195900, 30.865395>,  <39.664570, 33.212765, 30.697914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.493496, 33.195900, 30.865395>,  <39.208374, 33.167793, 31.144529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493496, 33.195900, 30.865395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643125, -0.462455, 0.610349,
		-0.279827, -0.883854, -0.374833,
		0.712803, 0.070272, -0.697835,
		39.707336, 33.216980, 30.656044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589493, 32.573982, 31.221972>,  <39.208374, 33.167793, 31.144529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589493, 32.573982, 31.221972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825211, 32.826000, 31.019672>,  <39.966640, 32.977211, 30.898293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825211, 32.826000, 31.019672>,  <39.589493, 32.573982, 31.221972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825211, 32.826000, 31.019672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773144, -0.258095, 0.579340,
		0.234478, -0.732417, -0.639207,
		0.589295, 0.630041, -0.505746,
		40.001999, 33.015011, 30.867949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178566, 32.105854, 30.909048>,  <39.589493, 32.573982, 31.221972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178566, 32.105854, 30.909048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.310448, 32.482746, 30.932688>,  <40.389576, 32.708881, 30.946873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.310448, 32.482746, 30.932688>,  <40.178566, 32.105854, 30.909048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310448, 32.482746, 30.932688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801033, -0.312330, 0.510682,
		0.499640, -0.121033, -0.857736,
		0.329707, 0.942232, 0.059101,
		40.409359, 32.765415, 30.950418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851917, 32.064976, 30.823751>,  <40.178566, 32.105854, 30.909048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851917, 32.064976, 30.823751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.829136, 32.436451, 30.970335>,  <40.815468, 32.659336, 31.058285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.829136, 32.436451, 30.970335>,  <40.851917, 32.064976, 30.823751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829136, 32.436451, 30.970335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792150, -0.181371, 0.582754,
		0.607663, 0.323479, -0.725332,
		-0.056954, 0.928690, 0.366457,
		40.812050, 32.715057, 31.080273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515354, 32.231960, 30.952833>,  <40.851917, 32.064976, 30.823751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515354, 32.231960, 30.952833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.298180, 32.503677, 31.150331>,  <41.167873, 32.666706, 31.268831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.298180, 32.503677, 31.150331>,  <41.515354, 32.231960, 30.952833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298180, 32.503677, 31.150331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751528, 0.130670, 0.646631,
		0.374731, 0.722144, -0.581450,
		-0.542938, 0.679289, 0.493746,
		41.135300, 32.707462, 31.298454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944317, 32.747490, 31.013607>,  <41.515354, 32.231960, 30.952833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944317, 32.747490, 31.013607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.663548, 32.795708, 31.294397>,  <41.495087, 32.824638, 31.462872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.663548, 32.795708, 31.294397>,  <41.944317, 32.747490, 31.013607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663548, 32.795708, 31.294397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712242, 0.114542, 0.692525,
		0.003072, 0.986078, -0.166254,
		-0.701927, 0.120541, 0.701975,
		41.452969, 32.831871, 31.504990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079525, 33.381725, 31.358698>,  <41.944317, 32.747490, 31.013607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079525, 33.381725, 31.358698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.861244, 33.153942, 31.604603>,  <41.730278, 33.017273, 31.752146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.861244, 33.153942, 31.604603>,  <42.079525, 33.381725, 31.358698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861244, 33.153942, 31.604603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526859, 0.337334, 0.780145,
		-0.651638, 0.749617, 0.115940,
		-0.545699, -0.569456, 0.614762,
		41.697533, 32.983105, 31.789032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895329, 33.908272, 31.979204>,  <42.079525, 33.381725, 31.358698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895329, 33.908272, 31.979204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.862637, 33.529686, 32.104115>,  <41.843021, 33.302532, 32.179062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.862637, 33.529686, 32.104115>,  <41.895329, 33.908272, 31.979204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862637, 33.529686, 32.104115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392616, 0.257414, 0.882944,
		-0.916064, 0.194767, 0.350561,
		-0.081730, -0.946469, 0.312276,
		41.838120, 33.245747, 32.197796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563400, 33.916428, 32.650852>,  <41.895329, 33.908272, 31.979204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563400, 33.916428, 32.650852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.769928, 33.574688, 32.627190>,  <41.893845, 33.369644, 32.612991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.769928, 33.574688, 32.627190>,  <41.563400, 33.916428, 32.650852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769928, 33.574688, 32.627190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471188, 0.225724, 0.852661,
		-0.715117, -0.468121, 0.519105,
		0.516323, -0.854348, -0.059154,
		41.924824, 33.318382, 32.609444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584148, 33.633495, 33.408211>,  <41.563400, 33.916428, 32.650852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584148, 33.633495, 33.408211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875870, 33.445206, 33.209602>,  <42.050903, 33.332233, 33.090435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875870, 33.445206, 33.209602>,  <41.584148, 33.633495, 33.408211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875870, 33.445206, 33.209602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597599, 0.084888, 0.797289,
		-0.333154, -0.878187, 0.343213,
		0.729304, -0.470724, -0.496523,
		42.094662, 33.303989, 33.060646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778824, 33.153904, 33.821457>,  <41.584148, 33.633495, 33.408211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778824, 33.153904, 33.821457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.083744, 33.225231, 33.572586>,  <42.266697, 33.268028, 33.423264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.083744, 33.225231, 33.572586>,  <41.778824, 33.153904, 33.821457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083744, 33.225231, 33.572586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592318, 0.195281, 0.781681,
		0.260893, -0.964399, 0.043236,
		0.762295, 0.178325, -0.622178,
		42.312431, 33.278728, 33.385933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341095, 32.811172, 34.212551>,  <41.778824, 33.153904, 33.821457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341095, 32.811172, 34.212551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.487354, 33.069340, 33.944302>,  <42.575108, 33.224239, 33.783352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.487354, 33.069340, 33.944302>,  <42.341095, 32.811172, 34.212551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487354, 33.069340, 33.944302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561182, 0.421950, 0.712062,
		0.742548, -0.636706, -0.207912,
		0.365645, 0.645417, -0.670626,
		42.597050, 33.262966, 33.743114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054462, 32.921650, 34.444157>,  <42.341095, 32.811172, 34.212551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054462, 32.921650, 34.444157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.049908, 33.220016, 34.177776>,  <43.047173, 33.399036, 34.017948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.049908, 33.220016, 34.177776>,  <43.054462, 32.921650, 34.444157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049908, 33.220016, 34.177776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464401, 0.593754, 0.657106,
		0.885552, -0.301781, -0.353166,
		-0.011392, 0.745912, -0.665947,
		43.046490, 33.443790, 33.977993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803623, 33.107204, 34.276287>,  <43.054462, 32.921650, 34.444157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803623, 33.107204, 34.276287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.575058, 33.424854, 34.193481>,  <43.437920, 33.615444, 34.143799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.575058, 33.424854, 34.193481>,  <43.803623, 33.107204, 34.276287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.575058, 33.424854, 34.193481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619109, 0.582721, 0.526441,
		0.538691, 0.172651, -0.824623,
		-0.571416, 0.794121, -0.207017,
		43.403633, 33.663090, 34.131378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236782, 33.596336, 34.073315>,  <43.803623, 33.107204, 34.276287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236782, 33.596336, 34.073315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.906815, 33.791653, 34.187214>,  <43.708836, 33.908844, 34.255554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.906815, 33.791653, 34.187214>,  <44.236782, 33.596336, 34.073315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906815, 33.791653, 34.187214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555986, 0.610104, 0.564493,
		0.101911, 0.623976, -0.774769,
		-0.824920, 0.488289, 0.284746,
		43.659340, 33.938141, 34.272636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.360973, 34.309307, 34.092010>,  <44.236782, 33.596336, 34.073315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.360973, 34.309307, 34.092010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.073288, 34.267563, 34.366772>,  <43.900677, 34.242516, 34.531628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.073288, 34.267563, 34.366772>,  <44.360973, 34.309307, 34.092010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.073288, 34.267563, 34.366772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559343, 0.499500, 0.661539,
		-0.412149, 0.860005, -0.300874,
		-0.719214, -0.104361, 0.686906,
		43.857525, 34.236256, 34.572845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937607, 34.730579, 34.407669>,  <44.360973, 34.309307, 34.092010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937607, 34.730579, 34.407669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.946457, 35.119160, 34.502144>,  <44.951767, 35.352310, 34.558830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.946457, 35.119160, 34.502144>,  <44.937607, 34.730579, 34.407669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.946457, 35.119160, 34.502144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747476, 0.172963, -0.641376,
		-0.663920, -0.162358, 0.729966,
		0.022125, 0.971454, 0.236192,
		44.953094, 35.410595, 34.573002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301731, 34.932476, 34.515076>,  <44.937607, 34.730579, 34.407669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301731, 34.932476, 34.515076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.470509, 35.291927, 34.467030>,  <44.571774, 35.507599, 34.438202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.470509, 35.291927, 34.467030>,  <44.301731, 34.932476, 34.515076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470509, 35.291927, 34.467030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709504, 0.244816, -0.660809,
		-0.564419, 0.364042, 0.740881,
		0.421942, 0.898631, -0.120111,
		44.597092, 35.561516, 34.430996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804310, 35.374855, 34.541786>,  <44.301731, 34.932476, 34.515076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804310, 35.374855, 34.541786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.079998, 35.587868, 34.345264>,  <44.245411, 35.715675, 34.227352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.079998, 35.587868, 34.345264>,  <43.804310, 35.374855, 34.541786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079998, 35.587868, 34.345264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678408, 0.236191, -0.695684,
		-0.254431, 0.812788, 0.524062,
		0.689222, 0.532531, -0.491307,
		44.286766, 35.747627, 34.197872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594654, 36.092091, 34.492725>,  <43.804310, 35.374855, 34.541786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594654, 36.092091, 34.492725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.844826, 36.068787, 34.181484>,  <43.994930, 36.054806, 33.994740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.844826, 36.068787, 34.181484>,  <43.594654, 36.092091, 34.492725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844826, 36.068787, 34.181484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735392, 0.289332, -0.612769,
		0.260829, 0.955454, 0.138114,
		0.625433, -0.058260, -0.778099,
		44.032455, 36.051308, 33.948055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502151, 36.778103, 34.219349>,  <43.594654, 36.092091, 34.492725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502151, 36.778103, 34.219349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.643753, 36.516785, 33.951653>,  <43.728714, 36.359993, 33.791035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.643753, 36.516785, 33.951653>,  <43.502151, 36.778103, 34.219349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643753, 36.516785, 33.951653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764729, 0.209746, -0.609259,
		0.538399, 0.727466, -0.425346,
		0.354000, -0.653299, -0.669241,
		43.749954, 36.320793, 33.750881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391537, 37.132141, 33.416183>,  <43.502151, 36.778103, 34.219349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391537, 37.132141, 33.416183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443375, 36.737282, 33.378765>,  <43.474480, 36.500366, 33.356316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443375, 36.737282, 33.378765>,  <43.391537, 37.132141, 33.416183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443375, 36.737282, 33.378765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767371, -0.040103, -0.639948,
		0.627969, 0.154718, -0.762704,
		0.129598, -0.987144, -0.093542,
		43.482254, 36.441139, 33.350704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486767, 36.999165, 32.665154>,  <43.391537, 37.132141, 33.416183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486767, 36.999165, 32.665154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.351017, 36.661098, 32.830330>,  <43.269566, 36.458260, 32.929436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.351017, 36.661098, 32.830330>,  <43.486767, 36.999165, 32.665154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351017, 36.661098, 32.830330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814449, 0.044376, -0.578537,
		0.470635, -0.532658, -0.703404,
		-0.339376, -0.845166, 0.412938,
		43.249203, 36.407547, 32.954212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267487, 36.659397, 32.105171>,  <43.486767, 36.999165, 32.665154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267487, 36.659397, 32.105171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.080688, 36.501213, 32.421532>,  <42.968609, 36.406303, 32.611347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.080688, 36.501213, 32.421532>,  <43.267487, 36.659397, 32.105171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080688, 36.501213, 32.421532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841813, -0.074958, -0.534539,
		0.270676, -0.915418, -0.297901,
		-0.466997, -0.395464, 0.790900,
		42.940590, 36.382576, 32.658802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844738, 36.147171, 31.805483>,  <43.267487, 36.659397, 32.105171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844738, 36.147171, 31.805483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.662449, 36.208813, 32.156155>,  <42.553074, 36.245796, 32.366558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.662449, 36.208813, 32.156155>,  <42.844738, 36.147171, 31.805483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662449, 36.208813, 32.156155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886114, 0.014807, -0.463230,
		-0.084366, -0.987944, 0.129804,
		-0.455723, 0.154102, 0.876681,
		42.525730, 36.255043, 32.419159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225651, 35.663990, 31.821899>,  <42.844738, 36.147171, 31.805483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225651, 35.663990, 31.821899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.146843, 35.927879, 32.111988>,  <42.099560, 36.086212, 32.286041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.146843, 35.927879, 32.111988>,  <42.225651, 35.663990, 31.821899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146843, 35.927879, 32.111988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952758, 0.045578, -0.300291,
		-0.231163, -0.750125, 0.619577,
		-0.197017, 0.659723, 0.725224,
		42.087738, 36.125797, 32.329556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592541, 35.545708, 31.901499>,  <42.225651, 35.663990, 31.821899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592541, 35.545708, 31.901499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.615105, 35.896893, 32.091656>,  <41.628643, 36.107605, 32.205750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.615105, 35.896893, 32.091656>,  <41.592541, 35.545708, 31.901499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615105, 35.896893, 32.091656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874842, 0.272913, -0.400213,
		-0.481113, -0.393315, 0.783475,
		0.056410, 0.877965, 0.475391,
		41.632027, 36.160282, 32.234272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960876, 35.685032, 32.349934>,  <41.592541, 35.545708, 31.901499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960876, 35.685032, 32.349934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.111553, 36.047298, 32.272099>,  <41.201962, 36.264660, 32.225399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.111553, 36.047298, 32.272099>,  <40.960876, 35.685032, 32.349934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111553, 36.047298, 32.272099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892355, 0.298403, -0.338611,
		-0.248604, 0.301196, 0.920586,
		0.376694, 0.905669, -0.194589,
		41.224560, 36.319000, 32.213722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379280, 36.090851, 32.552406>,  <40.960876, 35.685032, 32.349934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379280, 36.090851, 32.552406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.631844, 36.297127, 32.320755>,  <40.783382, 36.420891, 32.181763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.631844, 36.297127, 32.320755>,  <40.379280, 36.090851, 32.552406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631844, 36.297127, 32.320755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775426, 0.413691, -0.477047,
		-0.006426, 0.750284, 0.661085,
		0.631406, 0.515688, -0.579131,
		40.821266, 36.451832, 32.147015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075928, 36.752182, 32.479637>,  <40.379280, 36.090851, 32.552406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075928, 36.752182, 32.479637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.320461, 36.730648, 32.163822>,  <40.467182, 36.717728, 31.974333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.320461, 36.730648, 32.163822>,  <40.075928, 36.752182, 32.479637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320461, 36.730648, 32.163822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740121, 0.314318, -0.594496,
		0.280172, 0.947790, 0.152308,
		0.611331, -0.053835, -0.789542,
		40.503860, 36.714497, 31.926960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885067, 37.370674, 32.146690>,  <40.075928, 36.752182, 32.479637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885067, 37.370674, 32.146690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079636, 37.160892, 31.867163>,  <40.196377, 37.035023, 31.699446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.079636, 37.160892, 31.867163>,  <39.885067, 37.370674, 32.146690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079636, 37.160892, 31.867163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636615, 0.335070, -0.694585,
		0.598430, 0.782738, -0.170890,
		0.486418, -0.524452, -0.698819,
		40.225559, 37.003555, 31.657516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984894, 37.850533, 31.554127>,  <39.885067, 37.370674, 32.146690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984894, 37.850533, 31.554127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.031567, 37.488617, 31.390303>,  <40.059570, 37.271469, 31.292007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.031567, 37.488617, 31.390303>,  <39.984894, 37.850533, 31.554127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031567, 37.488617, 31.390303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599057, 0.264802, -0.755652,
		0.792159, 0.333519, -0.511125,
		0.116678, -0.904790, -0.409562,
		40.066570, 37.217178, 31.267433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034370, 38.020241, 30.802826>,  <39.984894, 37.850533, 31.554127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034370, 38.020241, 30.802826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.959545, 37.627602, 30.818193>,  <39.914650, 37.392017, 30.827414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.959545, 37.627602, 30.818193>,  <40.034370, 38.020241, 30.802826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959545, 37.627602, 30.818193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585057, 0.079910, -0.807045,
		0.789122, -0.173447, -0.589238,
		-0.187066, -0.981596, 0.038418,
		39.903427, 37.333122, 30.829720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954178, 37.874691, 30.122992>,  <40.034370, 38.020241, 30.802826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954178, 37.874691, 30.122992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.783085, 37.569477, 30.316822>,  <39.680428, 37.386349, 30.433121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.783085, 37.569477, 30.316822>,  <39.954178, 37.874691, 30.122992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783085, 37.569477, 30.316822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702543, -0.056676, -0.709381,
		0.568749, -0.643863, -0.511825,
		-0.427736, -0.763039, 0.484576,
		39.654762, 37.340565, 30.462194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000969, 37.237446, 29.675825>,  <39.954178, 37.874691, 30.122992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000969, 37.237446, 29.675825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.695660, 37.229836, 29.934143>,  <39.512474, 37.225269, 30.089134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.695660, 37.229836, 29.934143>,  <40.000969, 37.237446, 29.675825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695660, 37.229836, 29.934143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591840, -0.380291, -0.710707,
		0.259114, -0.924671, 0.279004,
		-0.763273, -0.019028, 0.645796,
		39.466679, 37.224129, 30.127882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645824, 36.654583, 29.532644>,  <40.000969, 37.237446, 29.675825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645824, 36.654583, 29.532644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.373566, 36.864212, 29.737415>,  <39.210209, 36.989990, 29.860277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.373566, 36.864212, 29.737415>,  <39.645824, 36.654583, 29.532644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373566, 36.864212, 29.737415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722228, -0.362770, -0.588884,
		-0.122906, -0.770549, 0.625418,
		-0.680647, 0.524072, 0.511926,
		39.169373, 37.021435, 29.890993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.733177, 35.243980, 41.801353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526661, 34.923683, 41.679859>,  <38.402752, 34.731506, 41.606964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526661, 34.923683, 41.679859>,  <38.733177, 35.243980, 41.801353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526661, 34.923683, 41.679859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040493, 0.331434, -0.942609,
		0.855454, -0.498961, -0.138693,
		-0.516293, -0.800742, -0.303731,
		38.371773, 34.683460, 41.588741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255676, 35.012562, 41.291145>,  <38.733177, 35.243980, 41.801353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255676, 35.012562, 41.291145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905823, 34.828415, 41.230381>,  <38.695911, 34.717926, 41.193924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905823, 34.828415, 41.230381>,  <39.255676, 35.012562, 41.291145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905823, 34.828415, 41.230381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021092, 0.276926, -0.960660,
		0.484322, -0.843431, -0.232499,
		-0.874635, -0.460365, -0.151911,
		38.643433, 34.690308, 41.184807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308647, 34.430546, 40.690353>,  <39.255676, 35.012562, 41.291145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308647, 34.430546, 40.690353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931980, 34.556908, 40.736774>,  <38.705982, 34.632725, 40.764629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931980, 34.556908, 40.736774>,  <39.308647, 34.430546, 40.690353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931980, 34.556908, 40.736774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095483, 0.079901, -0.992219,
		-0.322723, -0.945420, -0.045076,
		-0.941665, 0.315908, 0.116057,
		38.649479, 34.651680, 40.771591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973824, 34.224106, 40.033588>,  <39.308647, 34.430546, 40.690353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973824, 34.224106, 40.033588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708225, 34.478710, 40.190540>,  <38.548866, 34.631474, 40.284710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708225, 34.478710, 40.190540>,  <38.973824, 34.224106, 40.033588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708225, 34.478710, 40.190540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372318, 0.173632, -0.911719,
		-0.648450, -0.751467, 0.121694,
		-0.663997, 0.636513, 0.392377,
		38.509026, 34.669662, 40.308254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324123, 34.073330, 39.743053>,  <38.973824, 34.224106, 40.033588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324123, 34.073330, 39.743053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254711, 34.440285, 39.886322>,  <38.213062, 34.660458, 39.972282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254711, 34.440285, 39.886322>,  <38.324123, 34.073330, 39.743053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254711, 34.440285, 39.886322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349493, 0.282649, -0.893288,
		-0.920729, -0.280189, 0.271573,
		-0.173530, 0.917390, 0.358168,
		38.202652, 34.715500, 39.993771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604324, 34.297455, 39.481785>,  <38.324123, 34.073330, 39.743053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604324, 34.297455, 39.481785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825253, 34.618244, 39.572807>,  <37.957809, 34.810719, 39.627422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825253, 34.618244, 39.572807>,  <37.604324, 34.297455, 39.481785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825253, 34.618244, 39.572807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158952, 0.369276, -0.915625,
		-0.818335, 0.469551, 0.331435,
		0.552324, 0.801971, 0.227555,
		37.990952, 34.858837, 39.641075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178802, 34.920971, 39.364315>,  <37.604324, 34.297455, 39.481785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178802, 34.920971, 39.364315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561474, 35.034344, 39.337711>,  <37.791077, 35.102367, 39.321751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561474, 35.034344, 39.337711>,  <37.178802, 34.920971, 39.364315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561474, 35.034344, 39.337711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176536, 0.383126, -0.906669,
		-0.231501, 0.879135, 0.416567,
		0.956683, 0.283434, -0.066505,
		37.848480, 35.119373, 39.317760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089001, 35.649620, 38.961201>,  <37.178802, 34.920971, 39.364315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089001, 35.649620, 38.961201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476475, 35.553524, 38.936115>,  <37.708958, 35.495865, 38.921066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476475, 35.553524, 38.936115>,  <37.089001, 35.649620, 38.961201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476475, 35.553524, 38.936115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046074, 0.422115, -0.905371,
		0.243978, 0.874130, 0.419966,
		0.968686, -0.240240, -0.062712,
		37.767082, 35.481453, 38.917301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424591, 36.242950, 38.657673>,  <37.089001, 35.649620, 38.961201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424591, 36.242950, 38.657673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701099, 35.955017, 38.632420>,  <37.867004, 35.782257, 38.617268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701099, 35.955017, 38.632420>,  <37.424591, 36.242950, 38.657673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701099, 35.955017, 38.632420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412279, 0.464655, -0.783659,
		0.593435, 0.515696, 0.617974,
		0.691275, -0.719829, -0.063132,
		37.908482, 35.739067, 38.613480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064350, 36.575977, 38.659573>,  <37.424591, 36.242950, 38.657673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064350, 36.575977, 38.659573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061066, 36.230499, 38.457993>,  <38.059093, 36.023212, 38.337044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061066, 36.230499, 38.457993>,  <38.064350, 36.575977, 38.659573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061066, 36.230499, 38.457993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362814, 0.467048, -0.806370,
		0.931825, -0.189460, 0.309526,
		-0.008211, -0.863696, -0.503946,
		38.058601, 35.971390, 38.306808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650257, 36.610920, 38.246708>,  <38.064350, 36.575977, 38.659573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650257, 36.610920, 38.246708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415161, 36.333778, 38.079609>,  <38.274105, 36.167492, 37.979347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415161, 36.333778, 38.079609>,  <38.650257, 36.610920, 38.246708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415161, 36.333778, 38.079609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243568, 0.340864, -0.908012,
		0.771519, -0.635422, -0.031581,
		-0.587735, -0.692857, -0.417751,
		38.238842, 36.125923, 37.954285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013321, 36.350990, 37.839050>,  <38.650257, 36.610920, 38.246708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013321, 36.350990, 37.839050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662212, 36.242348, 37.681190>,  <38.451546, 36.177162, 37.586475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662212, 36.242348, 37.681190>,  <39.013321, 36.350990, 37.839050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662212, 36.242348, 37.681190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342755, 0.219502, -0.913421,
		0.334716, -0.937043, -0.099579,
		-0.877772, -0.271605, -0.394647,
		38.398880, 36.160866, 37.562798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065639, 36.097755, 37.188053>,  <39.013321, 36.350990, 37.839050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065639, 36.097755, 37.188053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674507, 36.168869, 37.143795>,  <38.439827, 36.211536, 37.117241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674507, 36.168869, 37.143795>,  <39.065639, 36.097755, 37.188053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674507, 36.168869, 37.143795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146617, 0.204015, -0.967926,
		-0.149512, -0.962689, -0.225559,
		-0.977829, 0.177788, -0.110643,
		38.381157, 36.222206, 37.110603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663532, 35.609283, 36.659668>,  <39.065639, 36.097755, 37.188053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663532, 35.609283, 36.659668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465961, 35.955708, 36.690582>,  <38.347420, 36.163563, 36.709129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465961, 35.955708, 36.690582>,  <38.663532, 35.609283, 36.659668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465961, 35.955708, 36.690582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105900, 0.148140, -0.983280,
		-0.863029, -0.477486, -0.164886,
		-0.493929, 0.866060, 0.077284,
		38.317783, 36.215527, 36.713768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021461, 34.894501, 36.432045>,  <38.663532, 35.609283, 36.659668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021461, 34.894501, 36.432045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320091, 34.655567, 36.314865>,  <39.499268, 34.512207, 36.244556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320091, 34.655567, 36.314865>,  <39.021461, 34.894501, 36.432045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320091, 34.655567, 36.314865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382647, -0.745731, 0.545405,
		-0.544248, -0.295091, -0.785313,
		0.746576, -0.597333, -0.292946,
		39.544064, 34.476368, 36.226982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713337, 34.237385, 36.160782>,  <39.021461, 34.894501, 36.432045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713337, 34.237385, 36.160782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070522, 34.156002, 36.321396>,  <39.284832, 34.107174, 36.417763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070522, 34.156002, 36.321396>,  <38.713337, 34.237385, 36.160782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070522, 34.156002, 36.321396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414554, -0.719302, 0.557450,
		0.175411, -0.664238, -0.726649,
		0.892959, -0.203452, 0.401536,
		39.338409, 34.094967, 36.441856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766174, 33.558140, 36.098682>,  <38.713337, 34.237385, 36.160782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766174, 33.558140, 36.098682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022053, 33.635410, 36.396267>,  <39.175579, 33.681770, 36.574818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022053, 33.635410, 36.396267>,  <38.766174, 33.558140, 36.098682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022053, 33.635410, 36.396267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328715, -0.806171, 0.491970,
		0.694795, -0.559261, -0.452203,
		0.639693, 0.193172, 0.743961,
		39.213959, 33.693363, 36.619453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063965, 32.976620, 36.248066>,  <38.766174, 33.558140, 36.098682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063965, 32.976620, 36.248066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149315, 33.184917, 36.578712>,  <39.200523, 33.309898, 36.777100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149315, 33.184917, 36.578712>,  <39.063965, 32.976620, 36.248066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149315, 33.184917, 36.578712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203579, -0.803829, 0.558941,
		0.955525, -0.287544, -0.065501,
		0.213372, 0.520748, 0.826616,
		39.213326, 33.341141, 36.826698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315262, 32.476772, 36.665657>,  <39.063965, 32.976620, 36.248066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315262, 32.476772, 36.665657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265404, 32.772366, 36.930496>,  <39.235489, 32.949722, 37.089397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265404, 32.772366, 36.930496>,  <39.315262, 32.476772, 36.665657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265404, 32.772366, 36.930496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069307, -0.672153, 0.737161,
		0.989778, 0.045998, 0.134999,
		-0.124648, 0.738982, 0.662094,
		39.228008, 32.994061, 37.129124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733921, 32.231884, 37.295502>,  <39.315262, 32.476772, 36.665657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733921, 32.231884, 37.295502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458225, 32.501904, 37.400761>,  <39.292809, 32.663918, 37.463917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458225, 32.501904, 37.400761>,  <39.733921, 32.231884, 37.295502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458225, 32.501904, 37.400761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251630, -0.563617, 0.786777,
		0.679430, 0.476066, 0.558333,
		-0.689244, 0.675053, 0.263146,
		39.251453, 32.704418, 37.479706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001514, 32.314579, 37.943958>,  <39.733921, 32.231884, 37.295502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001514, 32.314579, 37.943958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616131, 32.413670, 37.903221>,  <39.384899, 32.473122, 37.878780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616131, 32.413670, 37.903221>,  <40.001514, 32.314579, 37.943958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616131, 32.413670, 37.903221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237022, -0.611493, 0.754915,
		0.124735, 0.751471, 0.647867,
		-0.963463, 0.247723, -0.101840,
		39.327091, 32.487988, 37.872669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775341, 32.336742, 38.561295>,  <40.001514, 32.314579, 37.943958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775341, 32.336742, 38.561295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420250, 32.345867, 38.377373>,  <39.207195, 32.351341, 38.267017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420250, 32.345867, 38.377373>,  <39.775341, 32.336742, 38.561295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420250, 32.345867, 38.377373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408152, -0.501037, 0.763134,
		-0.212970, 0.865125, 0.454095,
		-0.887725, 0.022815, -0.459809,
		39.153931, 32.352711, 38.239429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369064, 32.408909, 39.110031>,  <39.775341, 32.336742, 38.561295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369064, 32.408909, 39.110031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118504, 32.307121, 38.815315>,  <38.968166, 32.246048, 38.638485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118504, 32.307121, 38.815315>,  <39.369064, 32.408909, 39.110031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118504, 32.307121, 38.815315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572991, -0.490522, 0.656559,
		-0.528486, 0.833447, 0.161458,
		-0.626406, -0.254468, -0.736792,
		38.930580, 32.230782, 38.594276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681660, 32.662434, 39.267361>,  <39.369064, 32.408909, 39.110031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681660, 32.662434, 39.267361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641716, 32.343628, 39.029102>,  <38.617748, 32.152344, 38.886147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641716, 32.343628, 39.029102>,  <38.681660, 32.662434, 39.267361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641716, 32.343628, 39.029102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655979, -0.397379, 0.641702,
		-0.748144, 0.454809, -0.483145,
		-0.099860, -0.797019, -0.595642,
		38.611759, 32.104523, 38.850410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926147, 32.506187, 39.243038>,  <38.681660, 32.662434, 39.267361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926147, 32.506187, 39.243038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134598, 32.182762, 39.133743>,  <38.259666, 31.988708, 39.068165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134598, 32.182762, 39.133743>,  <37.926147, 32.506187, 39.243038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134598, 32.182762, 39.133743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473995, -0.540420, 0.695180,
		-0.709759, -0.232760, -0.664880,
		0.521125, -0.808560, -0.273241,
		38.290936, 31.940195, 39.051769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534374, 31.948156, 39.109459>,  <37.926147, 32.506187, 39.243038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534374, 31.948156, 39.109459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893089, 31.794796, 39.197796>,  <38.108318, 31.702780, 39.250797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893089, 31.794796, 39.197796>,  <37.534374, 31.948156, 39.109459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893089, 31.794796, 39.197796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399061, -0.485303, 0.777966,
		-0.191097, -0.785802, -0.588215,
		0.896790, -0.383400, 0.220843,
		38.162125, 31.679775, 39.264050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419289, 31.231668, 39.173428>,  <37.534374, 31.948156, 39.109459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419289, 31.231668, 39.173428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770535, 31.264164, 39.362030>,  <37.981281, 31.283661, 39.475189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770535, 31.264164, 39.362030>,  <37.419289, 31.231668, 39.173428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770535, 31.264164, 39.362030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374642, -0.496201, 0.783216,
		0.297588, -0.864398, -0.405286,
		0.878114, 0.081239, 0.471504,
		38.033970, 31.288536, 39.503483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590893, 30.603880, 39.538609>,  <37.419289, 31.231668, 39.173428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590893, 30.603880, 39.538609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834732, 30.861683, 39.723213>,  <37.981037, 31.016365, 39.833977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834732, 30.861683, 39.723213>,  <37.590893, 30.603880, 39.538609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834732, 30.861683, 39.723213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266444, -0.381737, 0.885034,
		0.746590, -0.662484, -0.060981,
		0.609599, 0.644509, 0.461516,
		38.017612, 31.055035, 39.861668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462196, 30.007860, 39.103973>,  <37.590893, 30.603880, 39.538609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462196, 30.007860, 39.103973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122330, 29.797756, 39.085350>,  <36.918411, 29.671694, 39.074177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122330, 29.797756, 39.085350>,  <37.462196, 30.007860, 39.103973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122330, 29.797756, 39.085350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178570, 0.369687, -0.911835,
		0.496166, -0.766441, -0.407907,
		-0.849666, -0.525261, -0.046563,
		36.867432, 29.640179, 39.071381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492222, 29.669065, 38.509823>,  <37.462196, 30.007860, 39.103973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492222, 29.669065, 38.509823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107021, 29.702150, 38.612423>,  <36.875900, 29.722002, 38.673981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107021, 29.702150, 38.612423>,  <37.492222, 29.669065, 38.509823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107021, 29.702150, 38.612423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205352, 0.391160, -0.897120,
		-0.174535, -0.916598, -0.359701,
		-0.962999, 0.082714, 0.256497,
		36.818123, 29.726965, 38.689373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174831, 29.601248, 37.894428>,  <37.492222, 29.669065, 38.509823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174831, 29.601248, 37.894428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878014, 29.735865, 38.126328>,  <36.699924, 29.816635, 38.265469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878014, 29.735865, 38.126328>,  <37.174831, 29.601248, 37.894428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878014, 29.735865, 38.126328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392105, 0.483559, -0.782575,
		-0.543711, -0.808029, -0.226863,
		-0.742045, 0.336541, 0.579749,
		36.655399, 29.836826, 38.300251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420586, 29.402430, 37.569714>,  <37.174831, 29.601248, 37.894428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420586, 29.402430, 37.569714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394054, 29.720795, 37.810421>,  <36.378136, 29.911814, 37.954845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394054, 29.720795, 37.810421>,  <36.420586, 29.402430, 37.569714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394054, 29.720795, 37.810421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449085, 0.514743, -0.730317,
		-0.891024, -0.318684, 0.323292,
		-0.066328, 0.795915, 0.601764,
		36.374157, 29.959570, 37.990952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806633, 29.757715, 37.322056>,  <36.420586, 29.402430, 37.569714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806633, 29.757715, 37.322056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978718, 30.042328, 37.544277>,  <36.081970, 30.213097, 37.677608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978718, 30.042328, 37.544277>,  <35.806633, 29.757715, 37.322056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978718, 30.042328, 37.544277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501963, 0.700054, -0.507894,
		-0.750299, -0.060363, 0.658337,
		0.430214, 0.711534, 0.555550,
		36.107780, 30.255789, 37.710941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272858, 30.298082, 37.577583>,  <35.806633, 29.757715, 37.322056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272858, 30.298082, 37.577583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635708, 30.466387, 37.581223>,  <35.853416, 30.567369, 37.583405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635708, 30.466387, 37.581223>,  <35.272858, 30.298082, 37.577583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635708, 30.466387, 37.581223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371962, 0.811657, -0.450396,
		-0.196889, 0.405184, 0.892783,
		0.907127, 0.420759, 0.009093,
		35.907845, 30.592615, 37.583950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159557, 30.991846, 37.869240>,  <35.272858, 30.298082, 37.577583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159557, 30.991846, 37.869240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495312, 31.018181, 37.653427>,  <35.696766, 31.033981, 37.523941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495312, 31.018181, 37.653427>,  <35.159557, 30.991846, 37.869240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495312, 31.018181, 37.653427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334672, 0.844756, -0.417591,
		0.428280, 0.531087, 0.731111,
		0.839387, 0.065837, -0.539532,
		35.747128, 31.037931, 37.491570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173828, 31.700489, 37.725945>,  <35.159557, 30.991846, 37.869240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173828, 31.700489, 37.725945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465893, 31.574533, 37.483387>,  <35.641132, 31.498960, 37.337852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465893, 31.574533, 37.483387>,  <35.173828, 31.700489, 37.725945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465893, 31.574533, 37.483387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314114, 0.633450, -0.707159,
		0.606796, 0.706815, 0.363608,
		0.730158, -0.314887, -0.606396,
		35.684940, 31.480068, 37.301468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171669, 32.179062, 37.170238>,  <35.173828, 31.700489, 37.725945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171669, 32.179062, 37.170238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399357, 31.903555, 36.990643>,  <35.535969, 31.738251, 36.882885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399357, 31.903555, 36.990643>,  <35.171669, 32.179062, 37.170238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399357, 31.903555, 36.990643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306830, 0.328684, -0.893209,
		0.762791, 0.646191, -0.024243,
		0.569215, -0.688770, -0.448987,
		35.570122, 31.696924, 36.855946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462414, 32.485138, 36.630074>,  <35.171669, 32.179062, 37.170238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462414, 32.485138, 36.630074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452660, 32.095104, 36.541870>,  <35.446808, 31.861086, 36.488949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452660, 32.095104, 36.541870>,  <35.462414, 32.485138, 36.630074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452660, 32.095104, 36.541870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342798, 0.215361, -0.914390,
		0.939092, 0.053289, -0.339508,
		-0.024390, -0.975080, -0.220511,
		35.445343, 31.802580, 36.475716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882984, 32.441162, 36.087063>,  <35.462414, 32.485138, 36.630074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882984, 32.441162, 36.087063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650963, 32.115948, 36.067024>,  <35.511749, 31.920818, 36.055000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650963, 32.115948, 36.067024>,  <35.882984, 32.441162, 36.087063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650963, 32.115948, 36.067024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181580, 0.189014, -0.965040,
		0.794083, -0.550676, -0.257269,
		-0.580052, -0.813037, -0.050101,
		35.476948, 31.872036, 36.051994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091457, 31.866343, 35.571568>,  <35.882984, 32.441162, 36.087063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091457, 31.866343, 35.571568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697334, 31.908939, 35.624973>,  <35.460861, 31.934498, 35.657017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697334, 31.908939, 35.624973>,  <36.091457, 31.866343, 35.571568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697334, 31.908939, 35.624973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109345, 0.207149, -0.972179,
		-0.131186, -0.972496, -0.192462,
		-0.985309, 0.106492, 0.133512,
		35.401741, 31.940887, 35.665028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.127560, 27.567081, 42.363525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765621, 27.737131, 42.372604>,  <36.548458, 27.839161, 42.378052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765621, 27.737131, 42.372604>,  <37.127560, 27.567081, 42.363525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765621, 27.737131, 42.372604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066343, 0.193465, -0.978862,
		-0.420529, -0.884218, -0.203261,
		-0.904850, 0.425125, 0.022696,
		36.494167, 27.864668, 42.379414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730434, 27.275221, 41.829819>,  <37.127560, 27.567081, 42.363525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730434, 27.275221, 41.829819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542725, 27.617722, 41.916180>,  <36.430099, 27.823221, 41.967999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542725, 27.617722, 41.916180>,  <36.730434, 27.275221, 41.829819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542725, 27.617722, 41.916180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050219, 0.218225, -0.974606,
		-0.881624, -0.468199, -0.059407,
		-0.469274, 0.856252, 0.215905,
		36.401943, 27.874598, 41.980949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235996, 27.365421, 41.274536>,  <36.730434, 27.275221, 41.829819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235996, 27.365421, 41.274536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.282715, 27.738499, 41.411034>,  <36.310745, 27.962345, 41.492931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.282715, 27.738499, 41.411034>,  <36.235996, 27.365421, 41.274536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282715, 27.738499, 41.411034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066541, 0.350169, -0.934320,
		-0.990924, 0.086422, 0.102962,
		0.116800, 0.932691, 0.341240,
		36.317757, 28.018307, 41.513405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877583, 27.776915, 40.869564>,  <36.235996, 27.365421, 41.274536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877583, 27.776915, 40.869564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.098694, 28.067379, 41.033089>,  <36.231361, 28.241657, 41.131203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.098694, 28.067379, 41.033089>,  <35.877583, 27.776915, 40.869564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098694, 28.067379, 41.033089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198360, 0.591132, -0.781803,
		-0.809378, 0.351070, 0.470805,
		0.552776, 0.726163, 0.408811,
		36.264526, 28.285229, 41.155731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530376, 28.306652, 40.708569>,  <35.877583, 27.776915, 40.869564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530376, 28.306652, 40.708569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.885208, 28.464327, 40.804657>,  <36.098106, 28.558931, 40.862309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.885208, 28.464327, 40.804657>,  <35.530376, 28.306652, 40.708569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885208, 28.464327, 40.804657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038631, 0.581952, -0.812305,
		-0.459997, 0.711299, 0.531466,
		0.887079, 0.394189, 0.240219,
		36.151333, 28.582584, 40.876724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502728, 29.114958, 40.494656>,  <35.530376, 28.306652, 40.708569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502728, 29.114958, 40.494656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.888538, 29.017574, 40.535496>,  <36.120026, 28.959145, 40.559998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.888538, 29.017574, 40.535496>,  <35.502728, 29.114958, 40.494656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888538, 29.017574, 40.535496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227610, 0.570934, -0.788814,
		0.133752, 0.784068, 0.606093,
		0.964523, -0.243458, 0.102097,
		36.177895, 28.944536, 40.566124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869812, 29.736204, 40.265724>,  <35.502728, 29.114958, 40.494656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869812, 29.736204, 40.265724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117367, 29.422609, 40.246376>,  <36.265900, 29.234453, 40.234768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117367, 29.422609, 40.246376>,  <35.869812, 29.736204, 40.265724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117367, 29.422609, 40.246376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291057, 0.286089, -0.912929,
		0.729563, 0.550923, 0.405242,
		0.618889, -0.783988, -0.048370,
		36.303032, 29.187412, 40.231865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563114, 29.962597, 40.331192>,  <35.869812, 29.736204, 40.265724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563114, 29.962597, 40.331192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555511, 29.643707, 40.089840>,  <36.550949, 29.452374, 39.945030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555511, 29.643707, 40.089840>,  <36.563114, 29.962597, 40.331192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555511, 29.643707, 40.089840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327232, 0.565291, -0.757209,
		0.944753, -0.211841, 0.250131,
		-0.019011, -0.797226, -0.603382,
		36.549809, 29.404539, 39.908825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140800, 30.090118, 39.910950>,  <36.563114, 29.962597, 40.331192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140800, 30.090118, 39.910950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.933456, 29.794241, 39.739296>,  <36.809052, 29.616714, 39.636303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.933456, 29.794241, 39.739296>,  <37.140800, 30.090118, 39.910950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933456, 29.794241, 39.739296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135673, 0.424326, -0.895288,
		0.844332, -0.522303, -0.119597,
		-0.518360, -0.739694, -0.429135,
		36.777946, 29.572332, 39.610554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926937, 30.186094, 40.052254>,  <37.140800, 30.090118, 39.910950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926937, 30.186094, 40.052254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012012, 30.557917, 40.172714>,  <38.063057, 30.781010, 40.244991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012012, 30.557917, 40.172714>,  <37.926937, 30.186094, 40.052254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012012, 30.557917, 40.172714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195782, -0.261409, 0.945164,
		0.957306, -0.259980, 0.126393,
		0.212684, 0.929557, 0.301148,
		38.075817, 30.836784, 40.263058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324192, 30.027452, 40.655991>,  <37.926937, 30.186094, 40.052254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324192, 30.027452, 40.655991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.218395, 30.411865, 40.688156>,  <38.154919, 30.642513, 40.707455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.218395, 30.411865, 40.688156>,  <38.324192, 30.027452, 40.655991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218395, 30.411865, 40.688156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115278, -0.114295, 0.986736,
		0.957474, 0.251712, 0.141015,
		-0.264490, 0.961030, 0.080418,
		38.139050, 30.700174, 40.712280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751781, 30.378010, 41.166332>,  <38.324192, 30.027452, 40.655991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751781, 30.378010, 41.166332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.406002, 30.578480, 41.150551>,  <38.198536, 30.698761, 41.141083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.406002, 30.578480, 41.150551>,  <38.751781, 30.378010, 41.166332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406002, 30.578480, 41.150551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128583, -0.144542, 0.981109,
		0.486003, 0.853189, 0.189391,
		-0.864446, 0.501175, -0.039457,
		38.146667, 30.728832, 41.138714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781628, 30.894747, 41.743816>,  <38.751781, 30.378010, 41.166332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781628, 30.894747, 41.743816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.390202, 30.894373, 41.661449>,  <38.155346, 30.894148, 41.612030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.390202, 30.894373, 41.661449>,  <38.781628, 30.894747, 41.743816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390202, 30.894373, 41.661449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204819, 0.107735, 0.972853,
		0.021274, 0.994179, -0.105618,
		-0.978569, -0.000936, -0.205918,
		38.096630, 30.894093, 41.599674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502804, 31.538906, 41.952068>,  <38.781628, 30.894747, 41.743816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502804, 31.538906, 41.952068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.201439, 31.276669, 41.931839>,  <38.020618, 31.119326, 41.919701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.201439, 31.276669, 41.931839>,  <38.502804, 31.538906, 41.952068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201439, 31.276669, 41.931839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214738, 0.172617, 0.961297,
		-0.621491, 0.735118, -0.270833,
		-0.753416, -0.655595, -0.050578,
		37.975414, 31.079990, 41.916664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907234, 31.964190, 42.238724>,  <38.502804, 31.538906, 41.952068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907234, 31.964190, 42.238724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.811493, 31.575829, 42.241714>,  <37.754047, 31.342812, 42.243507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.811493, 31.575829, 42.241714>,  <37.907234, 31.964190, 42.238724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811493, 31.575829, 42.241714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291260, 0.079141, 0.953365,
		-0.926216, 0.226017, -0.301728,
		-0.239356, -0.970903, 0.007472,
		37.739685, 31.284557, 42.243958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262032, 31.991058, 42.632244>,  <37.907234, 31.964190, 42.238724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262032, 31.991058, 42.632244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.401043, 31.616856, 42.657688>,  <37.484451, 31.392334, 42.672955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.401043, 31.616856, 42.657688>,  <37.262032, 31.991058, 42.632244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401043, 31.616856, 42.657688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223208, -0.016645, 0.974629,
		-0.910715, -0.352910, -0.214598,
		0.347528, -0.935509, 0.063613,
		37.505302, 31.336203, 42.676773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744377, 31.713081, 42.962284>,  <37.262032, 31.991058, 42.632244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744377, 31.713081, 42.962284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.058220, 31.469223, 43.007412>,  <37.246525, 31.322908, 43.034489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.058220, 31.469223, 43.007412>,  <36.744377, 31.713081, 42.962284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058220, 31.469223, 43.007412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292919, -0.204121, 0.934095,
		-0.546440, -0.765940, -0.338731,
		0.784603, -0.609647, 0.112819,
		37.293602, 31.286329, 43.041256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491089, 31.143171, 43.276497>,  <36.744377, 31.713081, 42.962284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491089, 31.143171, 43.276497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.887604, 31.131937, 43.327984>,  <37.125511, 31.125196, 43.358875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.887604, 31.131937, 43.327984>,  <36.491089, 31.143171, 43.276497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887604, 31.131937, 43.327984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131431, -0.143639, 0.980864,
		-0.009055, -0.989232, -0.146078,
		0.991284, -0.028081, 0.128715,
		37.184990, 31.123512, 43.366600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628159, 30.559900, 43.758385>,  <36.491089, 31.143171, 43.276497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628159, 30.559900, 43.758385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.969299, 30.768715, 43.754086>,  <37.173985, 30.894003, 43.751507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.969299, 30.768715, 43.754086>,  <36.628159, 30.559900, 43.758385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969299, 30.768715, 43.754086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173149, -0.263327, 0.949041,
		0.492603, -0.811256, -0.314970,
		0.852855, 0.522037, -0.010752,
		37.225155, 30.925325, 43.750858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126465, 30.082218, 43.957642>,  <36.628159, 30.559900, 43.758385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126465, 30.082218, 43.957642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.282608, 30.443369, 44.029675>,  <37.376293, 30.660059, 44.072895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.282608, 30.443369, 44.029675>,  <37.126465, 30.082218, 43.957642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282608, 30.443369, 44.029675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257804, -0.294972, 0.920070,
		0.883830, -0.312732, -0.347911,
		0.390359, 0.902879, 0.180082,
		37.399715, 30.714233, 44.083698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746708, 29.907845, 44.229420>,  <37.126465, 30.082218, 43.957642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746708, 29.907845, 44.229420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.687565, 30.283798, 44.352547>,  <37.652077, 30.509371, 44.426422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.687565, 30.283798, 44.352547>,  <37.746708, 29.907845, 44.229420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687565, 30.283798, 44.352547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329047, -0.246756, 0.911504,
		0.932666, 0.236061, -0.272781,
		-0.147860, 0.939887, 0.307816,
		37.643208, 30.565763, 44.444893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365005, 30.075066, 44.611156>,  <37.746708, 29.907845, 44.229420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365005, 30.075066, 44.611156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.111610, 30.366730, 44.714706>,  <37.959572, 30.541729, 44.776836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.111610, 30.366730, 44.714706>,  <38.365005, 30.075066, 44.611156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111610, 30.366730, 44.714706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295833, -0.080898, 0.951808,
		0.714964, 0.679543, -0.164462,
		-0.633490, 0.729161, 0.258870,
		37.921562, 30.585478, 44.792366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810406, 30.607391, 44.952003>,  <38.365005, 30.075066, 44.611156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810406, 30.607391, 44.952003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.429943, 30.650333, 45.067780>,  <38.201664, 30.676100, 45.137245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.429943, 30.650333, 45.067780>,  <38.810406, 30.607391, 44.952003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429943, 30.650333, 45.067780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289695, -0.013519, 0.957024,
		0.106656, 0.994129, -0.018242,
		-0.951158, 0.107357, 0.289436,
		38.144596, 30.682541, 45.154610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.850977, 32.096577, 45.251308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.239784, 32.002712, 45.247044>,  <31.473068, 31.946394, 45.244484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.239784, 32.002712, 45.247044>,  <30.850977, 32.096577, 45.251308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239784, 32.002712, 45.247044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112746, 0.505861, -0.855215,
		0.206076, 0.830084, 0.518164,
		0.972019, -0.234660, -0.010658,
		31.531389, 31.932314, 45.243847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183554, 32.673752, 44.930141>,  <30.850977, 32.096577, 45.251308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183554, 32.673752, 44.930141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456318, 32.385048, 44.882717>,  <31.619976, 32.211826, 44.854263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.456318, 32.385048, 44.882717>,  <31.183554, 32.673752, 44.930141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456318, 32.385048, 44.882717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188854, 0.330341, -0.924775,
		0.706634, 0.608223, 0.361571,
		0.681911, -0.721762, -0.118565,
		31.660891, 32.168518, 44.847149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652653, 33.005016, 44.581581>,  <31.183554, 32.673752, 44.930141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652653, 33.005016, 44.581581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706728, 32.611732, 44.532551>,  <31.739172, 32.375763, 44.503132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706728, 32.611732, 44.532551>,  <31.652653, 33.005016, 44.581581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706728, 32.611732, 44.532551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203981, 0.148678, -0.967619,
		0.969596, 0.105807, 0.220655,
		0.135187, -0.983209, -0.122575,
		31.747284, 32.316769, 44.495777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235668, 32.985859, 44.310856>,  <31.652653, 33.005016, 44.581581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235668, 32.985859, 44.310856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053391, 32.640236, 44.225304>,  <31.944023, 32.432861, 44.173973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053391, 32.640236, 44.225304>,  <32.235668, 32.985859, 44.310856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053391, 32.640236, 44.225304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250740, 0.105949, -0.962239,
		0.854090, -0.492118, 0.168373,
		-0.455696, -0.864057, -0.213883,
		31.916681, 32.381020, 44.161140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704506, 32.506256, 43.930992>,  <32.235668, 32.985859, 44.310856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704506, 32.506256, 43.930992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.336941, 32.391262, 43.822956>,  <32.116402, 32.322266, 43.758133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.336941, 32.391262, 43.822956>,  <32.704506, 32.506256, 43.930992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336941, 32.391262, 43.822956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275147, 0.023489, -0.961115,
		0.282653, -0.957496, 0.057517,
		-0.918913, -0.287488, -0.270091,
		32.061268, 32.305016, 43.741928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895306, 32.047489, 43.387924>,  <32.704506, 32.506256, 43.930992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895306, 32.047489, 43.387924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503235, 32.112663, 43.342823>,  <32.267994, 32.151768, 43.315762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503235, 32.112663, 43.342823>,  <32.895306, 32.047489, 43.387924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503235, 32.112663, 43.342823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159493, 0.311150, -0.936882,
		-0.117571, -0.936289, -0.330968,
		-0.980173, 0.162937, -0.112749,
		32.209183, 32.161545, 43.308998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750561, 31.794872, 42.711929>,  <32.895306, 32.047489, 43.387924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750561, 31.794872, 42.711929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450611, 32.041515, 42.807835>,  <32.270641, 32.189503, 42.865379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450611, 32.041515, 42.807835>,  <32.750561, 31.794872, 42.711929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450611, 32.041515, 42.807835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012238, 0.375277, -0.926832,
		-0.661470, -0.692071, -0.288956,
		-0.749872, 0.616608, 0.239764,
		32.225651, 32.226498, 42.879765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429260, 31.770388, 42.089497>,  <32.750561, 31.794872, 42.711929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429260, 31.770388, 42.089497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.300385, 32.094765, 42.284870>,  <32.223061, 32.289391, 42.402092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.300385, 32.094765, 42.284870>,  <32.429260, 31.770388, 42.089497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300385, 32.094765, 42.284870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129010, 0.473517, -0.871285,
		-0.937843, -0.343731, -0.047942,
		-0.322189, 0.810944, 0.488429,
		32.203728, 32.338047, 42.431400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795668, 32.020683, 41.640869>,  <32.429260, 31.770388, 42.089497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795668, 32.020683, 41.640869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.912302, 32.334034, 41.860435>,  <31.982283, 32.522045, 41.992176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.912302, 32.334034, 41.860435>,  <31.795668, 32.020683, 41.640869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912302, 32.334034, 41.860435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064488, 0.588643, -0.805817,
		-0.954368, 0.199568, 0.222159,
		0.291587, 0.783373, 0.548912,
		31.999779, 32.569046, 42.025108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312735, 32.500725, 41.517769>,  <31.795668, 32.020683, 41.640869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312735, 32.500725, 41.517769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645803, 32.683372, 41.643089>,  <31.845644, 32.792961, 41.718281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645803, 32.683372, 41.643089>,  <31.312735, 32.500725, 41.517769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645803, 32.683372, 41.643089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019141, 0.589150, -0.807797,
		-0.553436, 0.666633, 0.499309,
		0.832672, 0.456621, 0.313296,
		31.895605, 32.820358, 41.737080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193926, 33.264313, 41.533123>,  <31.312735, 32.500725, 41.517769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193926, 33.264313, 41.533123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.586195, 33.196293, 41.494423>,  <31.821556, 33.155479, 41.471203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.586195, 33.196293, 41.494423>,  <31.193926, 33.264313, 41.533123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586195, 33.196293, 41.494423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001823, 0.502415, -0.864624,
		0.195639, 0.847738, 0.493016,
		0.980674, -0.170053, -0.096746,
		31.880398, 33.145275, 41.465401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423452, 33.905094, 41.195957>,  <31.193926, 33.264313, 41.533123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423452, 33.905094, 41.195957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.729919, 33.649338, 41.170135>,  <31.913799, 33.495884, 41.154644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.729919, 33.649338, 41.170135>,  <31.423452, 33.905094, 41.195957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729919, 33.649338, 41.170135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184501, 0.315070, -0.930962,
		0.615585, 0.701364, 0.359365,
		0.766168, -0.639390, -0.064550,
		31.959770, 33.457520, 41.150772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919622, 34.257210, 40.863811>,  <31.423452, 33.905094, 41.195957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919622, 34.257210, 40.863811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.026119, 33.876163, 40.804974>,  <32.090019, 33.647537, 40.769669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.026119, 33.876163, 40.804974>,  <31.919622, 34.257210, 40.863811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026119, 33.876163, 40.804974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332189, 0.233937, -0.913742,
		0.904856, 0.194415, 0.378733,
		0.266244, -0.952616, -0.147097,
		32.105991, 33.590378, 40.760845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654053, 34.253567, 40.568352>,  <31.919622, 34.257210, 40.863811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654053, 34.253567, 40.568352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463196, 33.924198, 40.445507>,  <32.348682, 33.726578, 40.371799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463196, 33.924198, 40.445507>,  <32.654053, 34.253567, 40.568352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463196, 33.924198, 40.445507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284146, 0.186146, -0.940537,
		0.831623, -0.536035, 0.145153,
		-0.477141, -0.823417, -0.307115,
		32.320053, 33.677174, 40.353371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256725, 33.981918, 41.035168>,  <32.654053, 34.253567, 40.568352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256725, 33.981918, 41.035168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.629898, 34.124214, 41.012917>,  <33.853802, 34.209591, 40.999565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.629898, 34.124214, 41.012917>,  <33.256725, 33.981918, 41.035168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629898, 34.124214, 41.012917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122684, -0.168822, 0.977981,
		0.338516, -0.919211, -0.201142,
		0.932929, 0.355739, -0.055623,
		33.909779, 34.230934, 40.996231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747677, 33.469433, 41.427944>,  <33.256725, 33.981918, 41.035168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747677, 33.469433, 41.427944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.896622, 33.840553, 41.418716>,  <33.985989, 34.063225, 41.413181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.896622, 33.840553, 41.418716>,  <33.747677, 33.469433, 41.427944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896622, 33.840553, 41.418716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211938, -0.060804, 0.975390,
		0.903565, -0.368087, -0.219278,
		0.372361, 0.927801, -0.023071,
		34.008331, 34.118893, 41.411797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173817, 33.395485, 41.973949>,  <33.747677, 33.469433, 41.427944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173817, 33.395485, 41.973949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.137173, 33.789444, 41.915176>,  <34.115185, 34.025818, 41.879913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.137173, 33.789444, 41.915176>,  <34.173817, 33.395485, 41.973949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137173, 33.789444, 41.915176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166885, 0.160649, 0.972801,
		0.981711, 0.064601, -0.179082,
		-0.091613, 0.984895, -0.146930,
		34.109688, 34.084911, 41.871098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758553, 33.741623, 42.354019>,  <34.173817, 33.395485, 41.973949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758553, 33.741623, 42.354019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477779, 34.015842, 42.276745>,  <34.309315, 34.180374, 42.230381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477779, 34.015842, 42.276745>,  <34.758553, 33.741623, 42.354019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477779, 34.015842, 42.276745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111610, 0.373748, 0.920791,
		0.703449, 0.624768, -0.338858,
		-0.701928, 0.685549, -0.193182,
		34.267200, 34.221508, 42.218792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987461, 34.327995, 42.620331>,  <34.758553, 33.741623, 42.354019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987461, 34.327995, 42.620331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590981, 34.380856, 42.617237>,  <34.353092, 34.412571, 42.615379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590981, 34.380856, 42.617237>,  <34.987461, 34.327995, 42.620331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590981, 34.380856, 42.617237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015139, 0.171228, 0.985115,
		0.131506, 0.976329, -0.171721,
		-0.991200, 0.132148, -0.007737,
		34.293621, 34.420502, 42.614918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897530, 34.935326, 43.010448>,  <34.987461, 34.327995, 42.620331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897530, 34.935326, 43.010448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.546318, 34.744030, 43.017933>,  <34.335590, 34.629253, 43.022423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.546318, 34.744030, 43.017933>,  <34.897530, 34.935326, 43.010448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546318, 34.744030, 43.017933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003562, 0.045615, 0.998953,
		-0.478591, 0.877045, -0.041755,
		-0.878031, -0.478238, 0.018707,
		34.282909, 34.600559, 43.023544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547607, 35.294662, 43.568539>,  <34.897530, 34.935326, 43.010448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547607, 35.294662, 43.568539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330639, 34.963989, 43.508713>,  <34.200459, 34.765583, 43.472816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330639, 34.963989, 43.508713>,  <34.547607, 35.294662, 43.568539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330639, 34.963989, 43.508713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004119, -0.180649, 0.983539,
		-0.840098, 0.532875, 0.101392,
		-0.542419, -0.826687, -0.149568,
		34.167912, 34.715984, 43.463840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020081, 35.301193, 44.090504>,  <34.547607, 35.294662, 43.568539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020081, 35.301193, 44.090504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.042542, 34.920460, 43.969936>,  <34.056019, 34.692020, 43.897598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.042542, 34.920460, 43.969936>,  <34.020081, 35.301193, 44.090504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042542, 34.920460, 43.969936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148169, -0.290605, 0.945301,
		-0.987367, -0.097738, 0.124716,
		0.056149, -0.951838, -0.301415,
		34.059387, 34.634907, 43.879513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511547, 34.879044, 44.412640>,  <34.020081, 35.301193, 44.090504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511547, 34.879044, 44.412640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.805103, 34.619682, 44.331676>,  <33.981239, 34.464066, 44.283096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.805103, 34.619682, 44.331676>,  <33.511547, 34.879044, 44.412640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805103, 34.619682, 44.331676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075566, -0.374069, 0.924317,
		-0.675049, -0.663054, -0.323524,
		0.733893, -0.648407, -0.202411,
		34.025272, 34.425159, 44.270954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293083, 34.292107, 44.780510>,  <33.511547, 34.879044, 44.412640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293083, 34.292107, 44.780510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.673519, 34.203548, 44.694340>,  <33.901779, 34.150414, 44.642635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.673519, 34.203548, 44.694340>,  <33.293083, 34.292107, 44.780510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673519, 34.203548, 44.694340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051633, -0.573632, 0.817484,
		-0.304565, -0.788625, -0.534145,
		0.951091, -0.221397, -0.215427,
		33.958847, 34.137131, 44.629711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337196, 33.481903, 44.874832>,  <33.293083, 34.292107, 44.780510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337196, 33.481903, 44.874832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.675896, 33.687996, 44.927830>,  <33.879116, 33.811653, 44.959629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.675896, 33.687996, 44.927830>,  <33.337196, 33.481903, 44.874832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675896, 33.687996, 44.927830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225563, -0.573256, 0.787717,
		0.481813, -0.637110, -0.601620,
		0.846745, 0.515236, 0.132494,
		33.929920, 33.842567, 44.967579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740158, 32.919716, 44.927727>,  <33.337196, 33.481903, 44.874832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740158, 32.919716, 44.927727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.897392, 33.249783, 45.090000>,  <33.991734, 33.447823, 45.187363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.897392, 33.249783, 45.090000>,  <33.740158, 32.919716, 44.927727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897392, 33.249783, 45.090000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075633, -0.468719, 0.880103,
		0.916387, -0.315270, -0.246656,
		0.393083, 0.825171, 0.405683,
		34.015316, 33.497334, 45.211704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318470, 32.704990, 45.306034>,  <33.740158, 32.919716, 44.927727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318470, 32.704990, 45.306034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.235168, 33.064621, 45.460068>,  <34.185188, 33.280399, 45.552486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.235168, 33.064621, 45.460068>,  <34.318470, 32.704990, 45.306034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235168, 33.064621, 45.460068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256297, -0.329791, 0.908598,
		0.943898, 0.287912, -0.161752,
		-0.208252, 0.899080, 0.385080,
		34.172691, 33.334347, 45.575592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761230, 32.790981, 45.870338>,  <34.318470, 32.704990, 45.306034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761230, 32.790981, 45.870338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479618, 33.061192, 45.957989>,  <34.310650, 33.223316, 46.010578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479618, 33.061192, 45.957989>,  <34.761230, 32.790981, 45.870338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479618, 33.061192, 45.957989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033752, -0.276375, 0.960457,
		0.709371, 0.683583, 0.171775,
		-0.704027, 0.675523, 0.219124,
		34.268410, 33.263847, 46.023727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348167, 33.199123, 45.922009>,  <34.761230, 32.790981, 45.870338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348167, 33.199123, 45.922009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.690628, 33.212692, 46.128254>,  <35.896103, 33.220833, 46.252003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.690628, 33.212692, 46.128254>,  <35.348167, 33.199123, 45.922009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690628, 33.212692, 46.128254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432093, 0.500230, -0.750377,
		-0.283379, 0.865228, 0.413615,
		0.856149, 0.033921, 0.515614,
		35.947472, 33.222870, 46.282936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630085, 33.894039, 45.995686>,  <35.348167, 33.199123, 45.922009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630085, 33.894039, 45.995686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.933105, 33.635685, 46.033520>,  <36.114918, 33.480675, 46.056221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.933105, 33.635685, 46.033520>,  <35.630085, 33.894039, 45.995686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933105, 33.635685, 46.033520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485536, 0.460675, -0.742989,
		0.436310, 0.608780, 0.662586,
		0.757554, -0.645883, 0.094587,
		36.160370, 33.441921, 46.061897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207146, 34.281078, 45.900490>,  <35.630085, 33.894039, 45.995686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207146, 34.281078, 45.900490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.315643, 33.903370, 45.825890>,  <36.380741, 33.676746, 45.781128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.315643, 33.903370, 45.825890>,  <36.207146, 34.281078, 45.900490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315643, 33.903370, 45.825890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630323, 0.320697, -0.706999,
		0.727408, 0.074211, 0.682181,
		0.271240, -0.944270, -0.186500,
		36.397015, 33.620090, 45.769939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713367, 34.430805, 45.525063>,  <36.207146, 34.281078, 45.900490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713367, 34.430805, 45.525063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.704765, 34.040825, 45.436512>,  <36.699604, 33.806835, 45.383381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.704765, 34.040825, 45.436512>,  <36.713367, 34.430805, 45.525063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704765, 34.040825, 45.436512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639131, 0.156871, -0.752930,
		0.768797, -0.157679, 0.619748,
		-0.021501, -0.974950, -0.221380,
		36.698315, 33.748341, 45.370098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424259, 34.049389, 45.443050>,  <36.713367, 34.430805, 45.525063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424259, 34.049389, 45.443050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.184067, 33.797470, 45.245960>,  <37.039951, 33.646317, 45.127705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.184067, 33.797470, 45.245960>,  <37.424259, 34.049389, 45.443050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184067, 33.797470, 45.245960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540491, 0.134451, -0.830538,
		0.589320, -0.765033, 0.259667,
		-0.600476, -0.629800, -0.492728,
		37.003925, 33.608532, 45.098141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834255, 33.497658, 45.100933>,  <37.424259, 34.049389, 45.443050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834255, 33.497658, 45.100933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.485729, 33.518303, 44.905735>,  <37.276611, 33.530689, 44.788616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.485729, 33.518303, 44.905735>,  <37.834255, 33.497658, 45.100933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485729, 33.518303, 44.905735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490258, 0.048392, -0.870233,
		-0.021302, -0.997494, -0.067469,
		-0.871317, 0.051615, -0.487998,
		37.224335, 33.533787, 44.759335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911098, 32.910389, 44.675419>,  <37.834255, 33.497658, 45.100933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911098, 32.910389, 44.675419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.633850, 33.147198, 44.510937>,  <37.467503, 33.289284, 44.412247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.633850, 33.147198, 44.510937>,  <37.911098, 32.910389, 44.675419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633850, 33.147198, 44.510937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551899, 0.068914, -0.831058,
		-0.463670, -0.802967, -0.374504,
		-0.693121, 0.592026, -0.411204,
		37.425915, 33.324806, 44.387577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827503, 32.652901, 43.912987>,  <37.911098, 32.910389, 44.675419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827503, 32.652901, 43.912987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.703320, 33.032436, 43.936028>,  <37.628811, 33.260159, 43.949852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.703320, 33.032436, 43.936028>,  <37.827503, 32.652901, 43.912987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703320, 33.032436, 43.936028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414924, 0.189782, -0.889843,
		-0.855251, -0.252358, -0.452616,
		-0.310457, 0.948840, 0.057602,
		37.610184, 33.317089, 43.953308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585506, 32.822685, 43.279335>,  <37.827503, 32.652901, 43.912987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585506, 32.822685, 43.279335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.636192, 33.196350, 43.412769>,  <37.666603, 33.420551, 43.492828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.636192, 33.196350, 43.412769>,  <37.585506, 32.822685, 43.279335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636192, 33.196350, 43.412769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153064, 0.313855, -0.937052,
		-0.980059, 0.169798, -0.103217,
		0.126714, 0.934165, 0.333587,
		37.674206, 33.476601, 43.512844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209751, 33.206455, 42.803505>,  <37.585506, 32.822685, 43.279335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209751, 33.206455, 42.803505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.478313, 33.426731, 43.001877>,  <37.639450, 33.558899, 43.120899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.478313, 33.426731, 43.001877>,  <37.209751, 33.206455, 42.803505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478313, 33.426731, 43.001877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322606, 0.385277, -0.864573,
		-0.667186, 0.740471, 0.081021,
		0.671407, 0.550694, 0.495932,
		37.679737, 33.591938, 43.150658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137672, 33.900967, 42.563778>,  <37.209751, 33.206455, 42.803505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137672, 33.900967, 42.563778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.498840, 33.889973, 42.735348>,  <37.715542, 33.883377, 42.838291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.498840, 33.889973, 42.735348>,  <37.137672, 33.900967, 42.563778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498840, 33.889973, 42.735348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389541, 0.474060, -0.789636,
		-0.181634, 0.880064, 0.438744,
		0.902921, -0.027484, 0.428926,
		37.769718, 33.881729, 42.864025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289543, 34.551964, 42.496193>,  <37.137672, 33.900967, 42.563778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289543, 34.551964, 42.496193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.631195, 34.345158, 42.518707>,  <37.836185, 34.221073, 42.532215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.631195, 34.345158, 42.518707>,  <37.289543, 34.551964, 42.496193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631195, 34.345158, 42.518707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348648, 0.488929, -0.799621,
		0.385894, 0.702601, 0.597862,
		0.854126, -0.517012, 0.056286,
		37.887432, 34.190056, 42.535595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893578, 35.060688, 42.351738>,  <37.289543, 34.551964, 42.496193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893578, 35.060688, 42.351738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.062344, 34.701191, 42.303986>,  <38.163605, 34.485493, 42.275333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.062344, 34.701191, 42.303986>,  <37.893578, 35.060688, 42.351738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062344, 34.701191, 42.303986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487935, 0.336069, -0.805591,
		0.764138, 0.281641, 0.580320,
		0.421915, -0.898741, -0.119380,
		38.188919, 34.431568, 42.268173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556545, 35.114510, 42.532173>,  <37.893578, 35.060688, 42.351738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556545, 35.114510, 42.532173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.462017, 34.832394, 42.264824>,  <38.405300, 34.663124, 42.104412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.462017, 34.832394, 42.264824>,  <38.556545, 35.114510, 42.532173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462017, 34.832394, 42.264824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462503, 0.523292, -0.715721,
		0.854543, -0.478265, 0.202531,
		-0.236322, -0.705285, -0.668375,
		38.391121, 34.620808, 42.064312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.559582, 39.914474, 28.487614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.191511, 40.071056, 28.485287>,  <25.970669, 40.165005, 28.483891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.191511, 40.071056, 28.485287>,  <26.559582, 39.914474, 28.487614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191511, 40.071056, 28.485287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226048, -0.519108, 0.824275,
		0.319649, 0.759795, 0.566160,
		-0.920178, 0.391458, -0.005818,
		25.915459, 40.188492, 28.483541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388344, 40.249763, 29.150743>,  <26.559582, 39.914474, 28.487614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388344, 40.249763, 29.150743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.062702, 40.105740, 28.968493>,  <25.867317, 40.019325, 28.859142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.062702, 40.105740, 28.968493>,  <26.388344, 40.249763, 29.150743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062702, 40.105740, 28.968493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240302, -0.505396, 0.828752,
		-0.528669, 0.784178, 0.324923,
		-0.814104, -0.360055, -0.455626,
		25.818472, 39.997723, 28.831804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859159, 40.333157, 29.655235>,  <26.388344, 40.249763, 29.150743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859159, 40.333157, 29.655235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.716497, 40.053173, 29.407732>,  <25.630899, 39.885185, 29.259230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.716497, 40.053173, 29.407732>,  <25.859159, 40.333157, 29.655235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.716497, 40.053173, 29.407732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386197, -0.492613, 0.779862,
		-0.850676, 0.517104, -0.094627,
		-0.356656, -0.699955, -0.618757,
		25.609501, 39.843185, 29.222105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.038282, 40.260223, 29.846781>,  <25.859159, 40.333157, 29.655235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.038282, 40.260223, 29.846781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.187025, 39.931583, 29.673946>,  <25.276270, 39.734398, 29.570246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.187025, 39.931583, 29.673946>,  <25.038282, 40.260223, 29.846781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187025, 39.931583, 29.673946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613584, -0.566825, 0.549749,
		-0.696591, 0.060694, -0.714897,
		0.371855, -0.821600, -0.432086,
		25.298582, 39.685104, 29.544321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.463076, 39.897533, 29.827658>,  <25.038282, 40.260223, 29.846781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.463076, 39.897533, 29.827658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.780649, 39.659122, 29.779627>,  <24.971193, 39.516075, 29.750809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.780649, 39.659122, 29.779627>,  <24.463076, 39.897533, 29.827658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.780649, 39.659122, 29.779627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356036, -0.615850, 0.702828,
		-0.492853, -0.515249, -0.701152,
		0.793936, -0.596027, -0.120076,
		25.018829, 39.480312, 29.743603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.146749, 39.210575, 30.003048>,  <24.463076, 39.897533, 29.827658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.146749, 39.210575, 30.003048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.543505, 39.167370, 30.029846>,  <24.781559, 39.141445, 30.045925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.543505, 39.167370, 30.029846>,  <24.146749, 39.210575, 30.003048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543505, 39.167370, 30.029846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116685, -0.564777, 0.816953,
		-0.050406, -0.818144, -0.572800,
		0.991889, -0.108016, 0.066997,
		24.841072, 39.134964, 30.049946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.208956, 38.455963, 30.176125>,  <24.146749, 39.210575, 30.003048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.208956, 38.455963, 30.176125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.516638, 38.689995, 30.278891>,  <24.701246, 38.830414, 30.340549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.516638, 38.689995, 30.278891>,  <24.208956, 38.455963, 30.176125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.516638, 38.689995, 30.278891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184656, -0.588424, 0.787184,
		0.611742, -0.558064, -0.560657,
		0.769204, 0.585082, 0.256914,
		24.747398, 38.865520, 30.355965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.749731, 37.984390, 30.561676>,  <24.208956, 38.455963, 30.176125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.749731, 37.984390, 30.561676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.915081, 38.334896, 30.660704>,  <25.014290, 38.545200, 30.720119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.915081, 38.334896, 30.660704>,  <24.749731, 37.984390, 30.561676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.915081, 38.334896, 30.660704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190715, -0.349174, 0.917445,
		0.890366, -0.332032, -0.311455,
		0.413373, 0.876261, 0.247569,
		25.039093, 38.597775, 30.734974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338625, 37.833740, 30.944391>,  <24.749731, 37.984390, 30.561676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.338625, 37.833740, 30.944391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.278557, 38.218208, 31.037001>,  <25.242516, 38.448891, 31.092566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.278557, 38.218208, 31.037001>,  <25.338625, 37.833740, 30.944391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278557, 38.218208, 31.037001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048064, -0.226804, 0.972754,
		0.987491, 0.157206, -0.012139,
		-0.150170, 0.961169, 0.231523,
		25.233505, 38.506557, 31.106457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949223, 38.052475, 31.261322>,  <25.338625, 37.833740, 30.944391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949223, 38.052475, 31.261322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.636045, 38.266407, 31.388418>,  <25.448139, 38.394764, 31.464676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.636045, 38.266407, 31.388418>,  <25.949223, 38.052475, 31.261322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636045, 38.266407, 31.388418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190661, -0.279881, 0.940912,
		0.592154, 0.797262, 0.117161,
		-0.782945, 0.534827, 0.317739,
		25.401161, 38.426853, 31.483740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174269, 38.447090, 31.882711>,  <25.949223, 38.052475, 31.261322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174269, 38.447090, 31.882711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.776936, 38.401577, 31.890089>,  <25.538536, 38.374271, 31.894516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.776936, 38.401577, 31.890089>,  <26.174269, 38.447090, 31.882711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776936, 38.401577, 31.890089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049177, -0.273631, 0.960577,
		-0.104248, 0.955081, 0.277402,
		-0.993335, -0.113781, 0.018443,
		25.478935, 38.367443, 31.895622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986538, 38.762104, 32.509628>,  <26.174269, 38.447090, 31.882711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986538, 38.762104, 32.509628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.664185, 38.547356, 32.409767>,  <25.470772, 38.418507, 32.349850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.664185, 38.547356, 32.409767>,  <25.986538, 38.762104, 32.509628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664185, 38.547356, 32.409767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133929, -0.245429, 0.960118,
		-0.576727, 0.807180, 0.125885,
		-0.805884, -0.536866, -0.249650,
		25.422419, 38.386295, 32.334873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576572, 38.848381, 33.028469>,  <25.986538, 38.762104, 32.509628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576572, 38.848381, 33.028469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.433075, 38.519203, 32.852261>,  <25.346977, 38.321697, 32.746536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.433075, 38.519203, 32.852261>,  <25.576572, 38.848381, 33.028469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433075, 38.519203, 32.852261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188802, -0.398210, 0.897654,
		-0.914142, 0.405200, -0.012518,
		-0.358744, -0.822947, -0.440523,
		25.325451, 38.272320, 32.720104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.097990, 38.588768, 33.504463>,  <25.576572, 38.848381, 33.028469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.097990, 38.588768, 33.504463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.142578, 38.260124, 33.280846>,  <25.169331, 38.062939, 33.146675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.142578, 38.260124, 33.280846>,  <25.097990, 38.588768, 33.504463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.142578, 38.260124, 33.280846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080352, -0.553257, 0.829127,
		-0.990514, -0.137341, 0.004348,
		0.111468, -0.821611, -0.559044,
		25.176018, 38.013641, 33.113132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.717392, 38.112709, 33.870785>,  <25.097990, 38.588768, 33.504463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.717392, 38.112709, 33.870785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.937948, 37.892162, 33.620358>,  <25.070282, 37.759834, 33.470100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.937948, 37.892162, 33.620358>,  <24.717392, 38.112709, 33.870785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.937948, 37.892162, 33.620358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085440, -0.709188, 0.699823,
		-0.829860, -0.439368, -0.343932,
		0.551392, -0.551369, -0.626066,
		25.103365, 37.726753, 33.432537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.445358, 37.392967, 33.854099>,  <24.717392, 38.112709, 33.870785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.445358, 37.392967, 33.854099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.834301, 37.384743, 33.761059>,  <25.067667, 37.379810, 33.705235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.834301, 37.384743, 33.761059>,  <24.445358, 37.392967, 33.854099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.834301, 37.384743, 33.761059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142246, -0.737812, 0.659848,
		-0.185179, -0.674693, -0.714491,
		0.972355, -0.020557, -0.232599,
		25.126007, 37.378574, 33.691280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.669222, 36.692680, 33.939575>,  <24.445358, 37.392967, 33.854099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.669222, 36.692680, 33.939575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.023138, 36.878574, 33.953217>,  <25.235487, 36.990112, 33.961399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.023138, 36.878574, 33.953217>,  <24.669222, 36.692680, 33.939575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.023138, 36.878574, 33.953217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366636, -0.739447, 0.564621,
		0.287617, -0.487069, -0.824645,
		0.884791, 0.464739, 0.034101,
		25.288576, 37.017998, 33.963448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.194874, 36.191593, 33.738220>,  <24.669222, 36.692680, 33.939575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.194874, 36.191593, 33.738220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.399668, 36.467590, 33.942879>,  <25.522545, 36.633186, 34.065674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.399668, 36.467590, 33.942879>,  <25.194874, 36.191593, 33.738220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.399668, 36.467590, 33.942879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477202, -0.723735, 0.498484,
		0.714246, -0.011058, -0.699807,
		0.511987, 0.689990, 0.511648,
		25.553265, 36.674587, 34.096375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922709, 35.876030, 33.928127>,  <25.194874, 36.191593, 33.738220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922709, 35.876030, 33.928127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.907536, 36.202324, 34.159000>,  <25.898432, 36.398098, 34.297523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.907536, 36.202324, 34.159000>,  <25.922709, 35.876030, 33.928127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907536, 36.202324, 34.159000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299175, -0.541837, 0.785434,
		0.953444, 0.202473, -0.223493,
		-0.037932, 0.815731, 0.577186,
		25.896156, 36.447044, 34.332157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575645, 35.840672, 34.389641>,  <25.922709, 35.876030, 33.928127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575645, 35.840672, 34.389641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.312008, 36.089527, 34.558655>,  <26.153826, 36.238842, 34.660065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.312008, 36.089527, 34.558655>,  <26.575645, 35.840672, 34.389641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312008, 36.089527, 34.558655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251749, -0.346909, 0.903481,
		0.708672, 0.701852, 0.072023,
		-0.659095, 0.622140, 0.422535,
		26.114279, 36.276169, 34.685413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953598, 36.153694, 34.898994>,  <26.575645, 35.840672, 34.389641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953598, 36.153694, 34.898994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.566830, 36.203060, 34.988289>,  <26.334768, 36.232677, 35.041866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.566830, 36.203060, 34.988289>,  <26.953598, 36.153694, 34.898994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566830, 36.203060, 34.988289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128919, -0.518722, 0.845167,
		0.220102, 0.845989, 0.485653,
		-0.966920, 0.123413, 0.223236,
		26.276754, 36.240086, 35.055260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645302, 35.934109, 34.628239>,  <26.953598, 36.153694, 34.898994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645302, 35.934109, 34.628239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.836535, 35.699245, 34.366955>,  <27.951273, 35.558327, 34.210186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.836535, 35.699245, 34.366955>,  <27.645302, 35.934109, 34.628239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836535, 35.699245, 34.366955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301960, 0.808252, -0.505519,
		0.824778, 0.044435, 0.563708,
		0.478081, -0.587158, -0.653211,
		27.979959, 35.523098, 34.170990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382504, 36.252186, 34.558441>,  <27.645302, 35.934109, 34.628239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382504, 36.252186, 34.558441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.268515, 36.041374, 34.238182>,  <28.200121, 35.914886, 34.046028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.268515, 36.041374, 34.238182>,  <28.382504, 36.252186, 34.558441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268515, 36.041374, 34.238182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168215, 0.794822, -0.583063,
		0.943660, -0.300838, -0.137850,
		-0.284974, -0.527024, -0.800647,
		28.183022, 35.883266, 33.997990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895113, 36.382065, 34.001553>,  <28.382504, 36.252186, 34.558441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895113, 36.382065, 34.001553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609324, 36.238453, 33.761345>,  <28.437849, 36.152287, 33.617222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609324, 36.238453, 33.761345>,  <28.895113, 36.382065, 34.001553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609324, 36.238453, 33.761345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237205, 0.683165, -0.690666,
		0.658220, -0.635911, -0.402944,
		-0.714479, -0.359029, -0.600514,
		28.394981, 36.130741, 33.581188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182529, 36.233021, 33.244255>,  <28.895113, 36.382065, 34.001553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182529, 36.233021, 33.244255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787882, 36.283894, 33.203438>,  <28.551094, 36.314415, 33.178947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787882, 36.283894, 33.203438>,  <29.182529, 36.233021, 33.244255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787882, 36.283894, 33.203438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159253, 0.617187, -0.770531,
		-0.035015, -0.776470, -0.629181,
		-0.986617, 0.127179, -0.102044,
		28.491898, 36.322048, 33.172825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108044, 36.303116, 32.577038>,  <29.182529, 36.233021, 33.244255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108044, 36.303116, 32.577038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741486, 36.434193, 32.668983>,  <28.521551, 36.512836, 32.724152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741486, 36.434193, 32.668983>,  <29.108044, 36.303116, 32.577038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741486, 36.434193, 32.668983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021690, 0.614087, -0.788940,
		-0.399685, -0.717996, -0.569855,
		-0.916396, 0.327688, 0.229868,
		28.466566, 36.532497, 32.737946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768854, 36.435455, 31.892742>,  <29.108044, 36.303116, 32.577038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768854, 36.435455, 31.892742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.569803, 36.654701, 32.161648>,  <28.450373, 36.786251, 32.322990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.569803, 36.654701, 32.161648>,  <28.768854, 36.435455, 31.892742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569803, 36.654701, 32.161648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096617, 0.735190, -0.670941,
		-0.861994, -0.398829, -0.312892,
		-0.497626, 0.548117, 0.672263,
		28.420515, 36.819138, 32.363327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214527, 36.772007, 31.519781>,  <28.768854, 36.435455, 31.892742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214527, 36.772007, 31.519781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.225529, 37.006996, 31.843290>,  <28.232130, 37.147991, 32.037395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.225529, 37.006996, 31.843290>,  <28.214527, 36.772007, 31.519781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225529, 37.006996, 31.843290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198734, 0.796143, -0.571543,
		-0.979667, -0.145011, 0.138649,
		0.027504, 0.587476, 0.808774,
		28.233780, 37.183239, 32.085922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630009, 37.274776, 31.472900>,  <28.214527, 36.772007, 31.519781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630009, 37.274776, 31.472900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915237, 37.427265, 31.708256>,  <28.086374, 37.518757, 31.849470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915237, 37.427265, 31.708256>,  <27.630009, 37.274776, 31.472900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915237, 37.427265, 31.708256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086778, 0.880785, -0.465496,
		-0.695702, 0.280872, 0.661143,
		0.713070, 0.381220, 0.588391,
		28.129158, 37.541630, 31.884773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434309, 37.901829, 31.559626>,  <27.630009, 37.274776, 31.472900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434309, 37.901829, 31.559626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.812956, 37.921909, 31.686995>,  <28.040144, 37.933956, 31.763416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.812956, 37.921909, 31.686995>,  <27.434309, 37.901829, 31.559626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812956, 37.921909, 31.686995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128226, 0.847651, -0.514826,
		-0.295755, 0.528174, 0.795965,
		0.946618, 0.050199, 0.318423,
		28.096941, 37.936970, 31.782522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544060, 38.528992, 31.979519>,  <27.434309, 37.901829, 31.559626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544060, 38.528992, 31.979519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.878593, 38.405273, 31.798464>,  <28.079313, 38.331043, 31.689831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.878593, 38.405273, 31.798464>,  <27.544060, 38.528992, 31.979519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878593, 38.405273, 31.798464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039804, 0.857730, -0.512557,
		0.546773, 0.410652, 0.729660,
		0.836334, -0.309295, -0.452638,
		28.129494, 38.312485, 31.662672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853559, 39.105442, 32.023228>,  <27.544060, 38.528992, 31.979519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853559, 39.105442, 32.023228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.066833, 38.886101, 31.765535>,  <28.194798, 38.754498, 31.610922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.066833, 38.886101, 31.765535>,  <27.853559, 39.105442, 32.023228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066833, 38.886101, 31.765535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219863, 0.825147, -0.520377,
		0.816930, 0.135816, 0.560518,
		0.533185, -0.548348, -0.644226,
		28.226789, 38.721596, 31.572268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596842, 39.492359, 31.950216>,  <27.853559, 39.105442, 32.023228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596842, 39.492359, 31.950216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.539602, 39.242046, 31.643515>,  <28.505259, 39.091858, 31.459494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.539602, 39.242046, 31.643515>,  <28.596842, 39.492359, 31.950216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539602, 39.242046, 31.643515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186599, 0.743775, -0.641856,
		0.971959, -0.234925, 0.010337,
		-0.143099, -0.625787, -0.766755,
		28.496672, 39.054310, 31.413488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082584, 39.625397, 31.534975>,  <28.596842, 39.492359, 31.950216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082584, 39.625397, 31.534975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.809698, 39.455853, 31.296673>,  <28.645967, 39.354126, 31.153692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.809698, 39.455853, 31.296673>,  <29.082584, 39.625397, 31.534975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809698, 39.455853, 31.296673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043937, 0.789576, -0.612078,
		0.729828, -0.443746, -0.520039,
		-0.682218, -0.423863, -0.595752,
		28.605034, 39.328693, 31.117947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369480, 39.550858, 30.862604>,  <29.082584, 39.625397, 31.534975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369480, 39.550858, 30.862604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.976357, 39.543262, 30.789145>,  <28.740482, 39.538708, 30.745068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.976357, 39.543262, 30.789145>,  <29.369480, 39.550858, 30.862604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976357, 39.543262, 30.789145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132660, 0.619211, -0.773938,
		0.128411, -0.784995, -0.606047,
		-0.982808, -0.018985, -0.183651,
		28.681515, 39.537567, 30.734049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344919, 39.592808, 30.251633>,  <29.369480, 39.550858, 30.862604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344919, 39.592808, 30.251633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.963230, 39.679062, 30.334547>,  <28.734217, 39.730812, 30.384295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.963230, 39.679062, 30.334547>,  <29.344919, 39.592808, 30.251633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963230, 39.679062, 30.334547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036031, 0.605101, -0.795333,
		-0.296927, -0.766391, -0.569630,
		-0.954220, 0.215631, 0.207284,
		28.676964, 39.743752, 30.396732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072540, 39.560921, 29.607309>,  <29.344919, 39.592808, 30.251633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072540, 39.560921, 29.607309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.809977, 39.757374, 29.836367>,  <28.652439, 39.875244, 29.973801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.809977, 39.757374, 29.836367>,  <29.072540, 39.560921, 29.607309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809977, 39.757374, 29.836367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068780, 0.716945, -0.693728,
		-0.751265, -0.494755, -0.436829,
		-0.656408, 0.491129, 0.572645,
		28.613054, 39.904713, 30.008160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492989, 39.718933, 29.123579>,  <29.072540, 39.560921, 29.607309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492989, 39.718933, 29.123579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497261, 39.987610, 29.419880>,  <28.499825, 40.148815, 29.597660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497261, 39.987610, 29.419880>,  <28.492989, 39.718933, 29.123579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497261, 39.987610, 29.419880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105292, 0.735919, -0.668832,
		-0.994384, 0.085138, -0.062864,
		0.010680, 0.671695, 0.740751,
		28.500465, 40.189117, 29.642105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056208, 40.220669, 28.798489>,  <28.492989, 39.718933, 29.123579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056208, 40.220669, 28.798489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.244822, 40.410110, 29.096041>,  <28.357990, 40.523773, 29.274572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.244822, 40.410110, 29.096041>,  <28.056208, 40.220669, 28.798489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244822, 40.410110, 29.096041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135698, 0.794533, -0.591865,
		-0.871345, 0.380028, 0.310382,
		0.471534, 0.473600, 0.743881,
		28.386282, 40.552189, 29.319204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835756, 40.917416, 28.762877>,  <28.056208, 40.220669, 28.798489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835756, 40.917416, 28.762877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.166969, 40.959282, 28.983206>,  <28.365698, 40.984402, 29.115404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.166969, 40.959282, 28.983206>,  <27.835756, 40.917416, 28.762877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166969, 40.959282, 28.983206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289633, 0.761338, -0.580066,
		-0.480078, 0.639850, 0.600097,
		0.828032, 0.104669, 0.550824,
		28.415379, 40.990685, 29.148453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973862, 41.630459, 28.793484>,  <27.835756, 40.917416, 28.762877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973862, 41.630459, 28.793484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.318892, 41.472729, 28.920277>,  <28.525909, 41.378090, 28.996351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.318892, 41.472729, 28.920277>,  <27.973862, 41.630459, 28.793484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318892, 41.472729, 28.920277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504165, 0.722238, -0.473486,
		-0.042229, 0.568227, 0.821787,
		0.862574, -0.394321, 0.316980,
		28.577663, 41.354431, 29.015371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346397, 42.143398, 29.107578>,  <27.973862, 41.630459, 28.793484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346397, 42.143398, 29.107578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.623219, 41.877319, 28.995455>,  <28.789310, 41.717670, 28.928181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.623219, 41.877319, 28.995455>,  <28.346397, 42.143398, 29.107578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623219, 41.877319, 28.995455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467320, 0.708830, -0.528367,
		0.550160, 0.234665, 0.801409,
		0.692052, -0.665201, -0.280306,
		28.830833, 41.677757, 28.911364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.786327, 31.123968, 45.537838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.437523, 30.930334, 45.566818>,  <38.228241, 30.814154, 45.584206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.437523, 30.930334, 45.566818>,  <38.786327, 31.123968, 45.537838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437523, 30.930334, 45.566818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093042, -0.018616, 0.995488,
		-0.480554, 0.874822, 0.061273,
		-0.872016, -0.484087, 0.072450,
		38.175919, 30.785109, 45.588554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552467, 31.386925, 46.184921>,  <38.786327, 31.123968, 45.537838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552467, 31.386925, 46.184921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.372871, 31.036961, 46.112320>,  <38.265114, 30.826982, 46.068760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.372871, 31.036961, 46.112320>,  <38.552467, 31.386925, 46.184921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372871, 31.036961, 46.112320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088555, -0.245699, 0.965293,
		-0.889139, 0.417331, 0.187794,
		-0.448987, -0.874910, -0.181504,
		38.238174, 30.774488, 46.057869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911888, 31.245506, 46.692726>,  <38.552467, 31.386925, 46.184921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911888, 31.245506, 46.692726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.006981, 30.883341, 46.552036>,  <38.064037, 30.666042, 46.467621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.006981, 30.883341, 46.552036>,  <37.911888, 31.245506, 46.692726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006981, 30.883341, 46.552036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054237, -0.373917, 0.925875,
		-0.969814, -0.201037, -0.138000,
		0.237735, -0.905412, -0.351727,
		38.078300, 30.611717, 46.446518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331757, 30.796381, 46.902554>,  <37.911888, 31.245506, 46.692726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331757, 30.796381, 46.902554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.648685, 30.565165, 46.824482>,  <37.838844, 30.426434, 46.777641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.648685, 30.565165, 46.824482>,  <37.331757, 30.796381, 46.902554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648685, 30.565165, 46.824482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185805, -0.533328, 0.825251,
		-0.581124, -0.617598, -0.529970,
		0.792320, -0.578044, -0.195177,
		37.886383, 30.391752, 46.765930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118042, 30.078741, 46.811867>,  <37.331757, 30.796381, 46.902554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118042, 30.078741, 46.811867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.504234, 30.075201, 46.916000>,  <37.735950, 30.073078, 46.978481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.504234, 30.075201, 46.916000>,  <37.118042, 30.078741, 46.811867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504234, 30.075201, 46.916000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224423, -0.535617, 0.814094,
		0.132236, -0.844415, -0.519112,
		0.965478, -0.008848, 0.260334,
		37.793877, 30.072546, 46.994099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190605, 29.424938, 47.117184>,  <37.118042, 30.078741, 46.811867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190605, 29.424938, 47.117184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520031, 29.628632, 47.217125>,  <37.717686, 29.750847, 47.277088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520031, 29.628632, 47.217125>,  <37.190605, 29.424938, 47.117184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520031, 29.628632, 47.217125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023513, -0.470754, 0.881951,
		0.566737, -0.720467, -0.399669,
		0.823563, 0.509232, 0.249854,
		37.767101, 29.781401, 47.292080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556866, 28.990068, 47.475647>,  <37.190605, 29.424938, 47.117184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556866, 28.990068, 47.475647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.710102, 29.328951, 47.622879>,  <37.802044, 29.532280, 47.711220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.710102, 29.328951, 47.622879>,  <37.556866, 28.990068, 47.475647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710102, 29.328951, 47.622879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084870, -0.364513, 0.927323,
		0.919803, -0.386489, -0.067740,
		0.383093, 0.847205, 0.368081,
		37.825031, 29.583113, 47.733303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973614, 28.682158, 48.056694>,  <37.556866, 28.990068, 47.475647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973614, 28.682158, 48.056694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.930431, 29.074608, 48.120861>,  <37.904522, 29.310078, 48.159359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.930431, 29.074608, 48.120861>,  <37.973614, 28.682158, 48.056694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930431, 29.074608, 48.120861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248165, -0.182845, 0.951305,
		0.962683, 0.062892, 0.263221,
		-0.107958, 0.981128, 0.160414,
		37.898045, 29.368946, 48.168983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351200, 28.904772, 48.716988>,  <37.973614, 28.682158, 48.056694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351200, 28.904772, 48.716988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.105145, 29.215054, 48.660580>,  <37.957512, 29.401222, 48.626736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.105145, 29.215054, 48.660580>,  <38.351200, 28.904772, 48.716988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105145, 29.215054, 48.660580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397714, -0.150862, 0.905022,
		0.680756, 0.612798, 0.401310,
		-0.615138, 0.775706, -0.141018,
		37.920605, 29.447765, 48.618275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443592, 29.376871, 49.301926>,  <38.351200, 28.904772, 48.716988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443592, 29.376871, 49.301926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.076229, 29.430864, 49.153168>,  <37.855812, 29.463261, 49.063911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.076229, 29.430864, 49.153168>,  <38.443592, 29.376871, 49.301926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076229, 29.430864, 49.153168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390124, -0.152593, 0.908030,
		0.065820, 0.979027, 0.192802,
		-0.918407, 0.134983, -0.371899,
		37.800709, 29.471359, 49.041599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219238, 29.798506, 49.745453>,  <38.443592, 29.376871, 49.301926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219238, 29.798506, 49.745453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882801, 29.645475, 49.592506>,  <37.680939, 29.553658, 49.500740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882801, 29.645475, 49.592506>,  <38.219238, 29.798506, 49.745453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882801, 29.645475, 49.592506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393979, -0.051036, 0.917702,
		-0.370606, 0.922513, -0.107802,
		-0.841090, -0.382578, -0.382364,
		37.630474, 29.530703, 49.477798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637558, 30.181309, 50.036324>,  <38.219238, 29.798506, 49.745453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637558, 30.181309, 50.036324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.455112, 29.859636, 49.883873>,  <37.345646, 29.666634, 49.792404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.455112, 29.859636, 49.883873>,  <37.637558, 30.181309, 50.036324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455112, 29.859636, 49.883873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643735, 0.002444, 0.765245,
		-0.614462, 0.594382, -0.518792,
		-0.456116, -0.804179, -0.381123,
		37.318279, 29.618383, 49.769535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940601, 30.288754, 50.278446>,  <37.637558, 30.181309, 50.036324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940601, 30.288754, 50.278446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001663, 29.915272, 50.148895>,  <37.038300, 29.691183, 50.071167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001663, 29.915272, 50.148895>,  <36.940601, 30.288754, 50.278446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001663, 29.915272, 50.148895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598850, -0.348089, 0.721257,
		-0.786178, 0.083852, -0.612285,
		0.152651, -0.933704, -0.323875,
		37.047459, 29.635160, 50.051731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217098, 30.020359, 50.188740>,  <36.940601, 30.288754, 50.278446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217098, 30.020359, 50.188740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538425, 29.800299, 50.279968>,  <36.731220, 29.668262, 50.334705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538425, 29.800299, 50.279968>,  <36.217098, 30.020359, 50.188740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538425, 29.800299, 50.279968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384956, -0.187470, 0.903695,
		-0.454411, -0.813751, -0.362381,
		0.803318, -0.550149, 0.228070,
		36.779423, 29.635254, 50.348389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661407, 29.813009, 50.610336>,  <36.217098, 30.020359, 50.188740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661407, 29.813009, 50.610336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522377, 30.186352, 50.646191>,  <35.438957, 30.410357, 50.667706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522377, 30.186352, 50.646191>,  <35.661407, 29.813009, 50.610336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522377, 30.186352, 50.646191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235295, -0.005719, 0.971907,
		0.907648, 0.358905, -0.217627,
		-0.347578, 0.933356, 0.089639,
		35.418102, 30.466358, 50.673084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086403, 30.046471, 50.966778>,  <35.661407, 29.813009, 50.610336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086403, 30.046471, 50.966778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093227, 30.446291, 50.976604>,  <35.097321, 30.686184, 50.982502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093227, 30.446291, 50.976604>,  <35.086403, 30.046471, 50.966778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093227, 30.446291, 50.976604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434318, 0.014725, -0.900639,
		-0.900598, 0.026034, -0.433872,
		0.017059, 0.999553, 0.024569,
		35.098347, 30.746157, 50.983974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880089, 30.248600, 50.225590>,  <35.086403, 30.046471, 50.966778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880089, 30.248600, 50.225590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.084320, 30.550583, 50.390198>,  <35.206860, 30.731773, 50.488964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.084320, 30.550583, 50.390198>,  <34.880089, 30.248600, 50.225590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084320, 30.550583, 50.390198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310987, 0.284064, -0.906970,
		-0.801622, 0.591057, -0.089745,
		0.510578, 0.754956, 0.411523,
		35.237492, 30.777069, 50.513653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771015, 30.738516, 49.819717>,  <34.880089, 30.248600, 50.225590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771015, 30.738516, 49.819717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094517, 30.889902, 49.999798>,  <35.288620, 30.980734, 50.107845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094517, 30.889902, 49.999798>,  <34.771015, 30.738516, 49.819717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094517, 30.889902, 49.999798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235090, 0.493622, -0.837299,
		-0.539116, 0.783008, 0.310247,
		0.808756, 0.378465, 0.450197,
		35.337143, 31.003441, 50.134857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839890, 31.361546, 49.549450>,  <34.771015, 30.738516, 49.819717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839890, 31.361546, 49.549450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.209232, 31.301376, 49.690754>,  <35.430836, 31.265274, 49.775536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.209232, 31.301376, 49.690754>,  <34.839890, 31.361546, 49.549450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209232, 31.301376, 49.690754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377611, 0.522306, -0.764596,
		-0.069494, 0.839386, 0.539075,
		0.923353, -0.150425, 0.353258,
		35.486237, 31.256248, 49.796730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152813, 32.064674, 49.606400>,  <34.839890, 31.361546, 49.549450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152813, 32.064674, 49.606400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.426434, 31.774538, 49.575542>,  <35.590607, 31.600456, 49.557030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.426434, 31.774538, 49.575542>,  <35.152813, 32.064674, 49.606400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426434, 31.774538, 49.575542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298890, 0.375191, -0.877437,
		0.665383, 0.577159, 0.473448,
		0.684054, -0.725341, -0.077138,
		35.631649, 31.556936, 49.552402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748741, 32.347050, 49.602581>,  <35.152813, 32.064674, 49.606400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748741, 32.347050, 49.602581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854504, 31.994083, 49.446922>,  <35.917961, 31.782305, 49.353527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854504, 31.994083, 49.446922>,  <35.748741, 32.347050, 49.602581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854504, 31.994083, 49.446922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378863, 0.466110, -0.799502,
		0.886877, 0.063959, 0.457556,
		0.264407, -0.882412, -0.389151,
		35.933826, 31.729361, 49.330177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447811, 32.508331, 49.347374>,  <35.748741, 32.347050, 49.602581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447811, 32.508331, 49.347374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335381, 32.176388, 49.154575>,  <36.267921, 31.977221, 49.038895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335381, 32.176388, 49.154575>,  <36.447811, 32.508331, 49.347374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335381, 32.176388, 49.154575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242368, 0.424582, -0.872346,
		0.928576, -0.362018, 0.081791,
		-0.281078, -0.829863, -0.481998,
		36.251057, 31.927429, 49.009975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048538, 32.273258, 48.894993>,  <36.447811, 32.508331, 49.347374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048538, 32.273258, 48.894993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.715256, 32.124832, 48.731003>,  <36.515285, 32.035778, 48.632610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.715256, 32.124832, 48.731003>,  <37.048538, 32.273258, 48.894993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715256, 32.124832, 48.731003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143024, 0.571569, -0.807993,
		0.534141, -0.731863, -0.423166,
		-0.833209, -0.371060, -0.409973,
		36.465294, 32.013512, 48.608009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224697, 32.092396, 48.202438>,  <37.048538, 32.273258, 48.894993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224697, 32.092396, 48.202438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.825603, 32.109295, 48.181515>,  <36.586147, 32.119434, 48.168961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.825603, 32.109295, 48.181515>,  <37.224697, 32.092396, 48.202438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825603, 32.109295, 48.181515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064568, 0.384644, -0.920804,
		-0.018782, -0.922098, -0.386501,
		-0.997736, 0.042250, -0.052314,
		36.526283, 32.121971, 48.165821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025177, 31.924892, 47.516178>,  <37.224697, 32.092396, 48.202438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025177, 31.924892, 47.516178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.707413, 32.127869, 47.649693>,  <36.516754, 32.249653, 47.729801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.707413, 32.127869, 47.649693>,  <37.025177, 31.924892, 47.516178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707413, 32.127869, 47.649693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153680, 0.363739, -0.918736,
		-0.587613, -0.781153, -0.210976,
		-0.794414, 0.507439, 0.333785,
		36.469090, 32.280102, 47.749828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506989, 31.732067, 47.096291>,  <37.025177, 31.924892, 47.516178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506989, 31.732067, 47.096291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.376026, 32.087353, 47.225216>,  <36.297451, 32.300526, 47.302570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.376026, 32.087353, 47.225216>,  <36.506989, 31.732067, 47.096291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376026, 32.087353, 47.225216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107889, 0.303739, -0.946627,
		-0.938705, -0.344701, -0.003616,
		-0.327402, 0.888214, 0.322311,
		36.277805, 32.353817, 47.321911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962078, 31.916969, 46.708324>,  <36.506989, 31.732067, 47.096291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962078, 31.916969, 46.708324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055317, 32.278614, 46.851570>,  <36.111259, 32.495602, 46.937519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055317, 32.278614, 46.851570>,  <35.962078, 31.916969, 46.708324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055317, 32.278614, 46.851570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271660, 0.414141, -0.868728,
		-0.933739, 0.105208, 0.342144,
		0.233093, 0.904112, 0.358119,
		36.125244, 32.549847, 46.959007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480743, 32.450241, 46.217129>,  <35.962078, 31.916969, 46.708324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480743, 32.450241, 46.217129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.731266, 32.678497, 46.429588>,  <35.881580, 32.815453, 46.557064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.731266, 32.678497, 46.429588>,  <35.480743, 32.450241, 46.217129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731266, 32.678497, 46.429588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098640, 0.617839, -0.780093,
		-0.773314, 0.540967, 0.330667,
		0.626304, 0.570640, 0.531144,
		35.919159, 32.849689, 46.588932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941593, 32.971622, 46.550869>,  <35.480743, 32.450241, 46.217129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941593, 32.971622, 46.550869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592560, 33.159615, 46.497631>,  <34.383141, 33.272408, 46.465687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592560, 33.159615, 46.497631>,  <34.941593, 32.971622, 46.550869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592560, 33.159615, 46.497631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207294, -0.109565, 0.972124,
		0.442292, 0.875853, 0.193028,
		-0.872587, 0.469976, -0.133099,
		34.330784, 33.300606, 46.457703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936481, 33.462399, 47.123592>,  <34.941593, 32.971622, 46.550869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936481, 33.462399, 47.123592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581142, 33.333519, 46.992729>,  <34.367939, 33.256191, 46.914211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581142, 33.333519, 46.992729>,  <34.936481, 33.462399, 47.123592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581142, 33.333519, 46.992729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258946, -0.236857, 0.936401,
		-0.379196, 0.916562, 0.126979,
		-0.888345, -0.322199, -0.327155,
		34.314640, 33.236858, 46.894581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384956, 33.652290, 47.689621>,  <34.936481, 33.462399, 47.123592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384956, 33.652290, 47.689621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.205471, 33.384094, 47.453281>,  <34.097782, 33.223175, 47.311478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.205471, 33.384094, 47.453281>,  <34.384956, 33.652290, 47.689621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205471, 33.384094, 47.453281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576917, -0.287598, 0.764496,
		-0.682516, 0.683906, -0.257771,
		-0.448709, -0.670493, -0.590847,
		34.070858, 33.182945, 47.276028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596081, 33.647404, 47.972706>,  <34.384956, 33.652290, 47.689621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596081, 33.647404, 47.972706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.643826, 33.312561, 47.759163>,  <33.672470, 33.111656, 47.631039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.643826, 33.312561, 47.759163>,  <33.596081, 33.647404, 47.972706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643826, 33.312561, 47.759163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611879, -0.485470, 0.624438,
		-0.781893, 0.252123, -0.570155,
		0.119358, -0.837110, -0.533854,
		33.679634, 33.061428, 47.599007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914192, 33.354313, 47.794132>,  <33.596081, 33.647404, 47.972706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914192, 33.354313, 47.794132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168922, 33.046146, 47.782013>,  <33.321758, 32.861248, 47.774742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168922, 33.046146, 47.782013>,  <32.914192, 33.354313, 47.794132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168922, 33.046146, 47.782013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573993, -0.499958, 0.648517,
		-0.514776, -0.395598, -0.760597,
		0.636819, -0.770418, -0.030296,
		33.359970, 32.815022, 47.772926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466640, 32.754532, 47.864544>,  <32.914192, 33.354313, 47.794132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466640, 32.754532, 47.864544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.835407, 32.622837, 47.946194>,  <33.056667, 32.543819, 47.995182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.835407, 32.622837, 47.946194>,  <32.466640, 32.754532, 47.864544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835407, 32.622837, 47.946194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351271, -0.488350, 0.798826,
		-0.163322, -0.808156, -0.565871,
		0.921919, -0.329241, 0.204123,
		33.111984, 32.524063, 48.007431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366306, 32.125618, 48.075733>,  <32.466640, 32.754532, 47.864544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366306, 32.125618, 48.075733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.722816, 32.222153, 48.229294>,  <32.936722, 32.280075, 48.321430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.722816, 32.222153, 48.229294>,  <32.366306, 32.125618, 48.075733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722816, 32.222153, 48.229294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254905, -0.433530, 0.864335,
		0.375031, -0.868221, -0.324876,
		0.891277, 0.241340, 0.383901,
		32.990200, 32.294556, 48.344463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323925, 31.462206, 47.667194>,  <32.366306, 32.125618, 48.075733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323925, 31.462206, 47.667194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137589, 31.109898, 47.633179>,  <32.025787, 30.898512, 47.612770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137589, 31.109898, 47.633179>,  <32.323925, 31.462206, 47.667194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137589, 31.109898, 47.633179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177262, 0.187046, -0.966226,
		0.866931, -0.435034, -0.243261,
		-0.465843, -0.880771, -0.085041,
		31.997835, 30.845667, 47.607666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609711, 31.115671, 47.066200>,  <32.323925, 31.462206, 47.667194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609711, 31.115671, 47.066200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.255943, 30.942486, 47.135880>,  <32.043682, 30.838575, 47.177685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.255943, 30.942486, 47.135880>,  <32.609711, 31.115671, 47.066200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255943, 30.942486, 47.135880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250877, 0.126339, -0.959739,
		0.393524, -0.892514, -0.220357,
		-0.884421, -0.432963, 0.174194,
		31.990618, 30.812597, 47.188137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618736, 30.539946, 46.716866>,  <32.609711, 31.115671, 47.066200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618736, 30.539946, 46.716866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256058, 30.703592, 46.757919>,  <32.038452, 30.801781, 46.782551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256058, 30.703592, 46.757919>,  <32.618736, 30.539946, 46.716866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256058, 30.703592, 46.757919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052042, 0.349976, -0.935312,
		-0.418571, -0.842698, -0.338612,
		-0.906692, 0.409116, 0.102634,
		31.984051, 30.826326, 46.788708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444607, 30.521038, 46.055202>,  <32.618736, 30.539946, 46.716866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444607, 30.521038, 46.055202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.153610, 30.731770, 46.231022>,  <31.979012, 30.858208, 46.336514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.153610, 30.731770, 46.231022>,  <32.444607, 30.521038, 46.055202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153610, 30.731770, 46.231022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156572, 0.496257, -0.853941,
		-0.668009, -0.690058, -0.278538,
		-0.727495, 0.526829, 0.439548,
		31.935362, 30.889818, 46.362885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896809, 30.477188, 45.647137>,  <32.444607, 30.521038, 46.055202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896809, 30.477188, 45.647137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.796419, 30.785595, 45.881245>,  <31.736185, 30.970640, 46.021709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.796419, 30.785595, 45.881245>,  <31.896809, 30.477188, 45.647137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796419, 30.785595, 45.881245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353673, 0.489784, -0.796886,
		-0.901071, -0.406991, 0.149766,
		-0.250972, 0.771019, 0.585272,
		31.721128, 31.016901, 46.056828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208992, 30.806293, 45.518303>,  <31.896809, 30.477188, 45.647137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208992, 30.806293, 45.518303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.398314, 31.105289, 45.704739>,  <31.511908, 31.284687, 45.816601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.398314, 31.105289, 45.704739>,  <31.208992, 30.806293, 45.518303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398314, 31.105289, 45.704739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115807, 0.577314, -0.808268,
		-0.873253, 0.328581, 0.359810,
		0.473305, 0.747491, 0.466090,
		31.540304, 31.329536, 45.844566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874905, 31.353703, 45.434422>,  <31.208992, 30.806293, 45.518303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874905, 31.353703, 45.434422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.231586, 31.519514, 45.507118>,  <31.445595, 31.619001, 45.550735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.231586, 31.519514, 45.507118>,  <30.874905, 31.353703, 45.434422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231586, 31.519514, 45.507118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069616, 0.522360, -0.849879,
		-0.447235, 0.745187, 0.494648,
		0.891703, 0.414531, 0.181741,
		31.499098, 31.643873, 45.561642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.318199, 27.643925, 49.309299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.711060, 27.710541, 49.274338>,  <35.946777, 27.750511, 49.253361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.711060, 27.710541, 49.274338>,  <35.318199, 27.643925, 49.309299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711060, 27.710541, 49.274338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117612, 0.181155, -0.976396,
		-0.146775, 0.969251, 0.197509,
		0.982153, 0.166540, -0.087406,
		36.005707, 27.760502, 49.248116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335243, 28.181705, 48.752403>,  <35.318199, 27.643925, 49.309299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335243, 28.181705, 48.752403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.699425, 28.018587, 48.780056>,  <35.917934, 27.920715, 48.796646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.699425, 28.018587, 48.780056>,  <35.335243, 28.181705, 48.752403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699425, 28.018587, 48.780056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163457, 0.201214, -0.965813,
		0.379946, 0.890626, 0.249853,
		0.910452, -0.407797, 0.069129,
		35.972561, 27.896248, 48.800797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788036, 28.574242, 48.366119>,  <35.335243, 28.181705, 48.752403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788036, 28.574242, 48.366119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.972733, 28.219744, 48.380867>,  <36.083549, 28.007044, 48.389717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.972733, 28.219744, 48.380867>,  <35.788036, 28.574242, 48.366119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972733, 28.219744, 48.380867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342942, 0.140031, -0.928861,
		0.818036, 0.441541, 0.368589,
		0.461744, -0.886246, 0.036873,
		36.111256, 27.953869, 48.391930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400028, 28.702234, 48.033176>,  <35.788036, 28.574242, 48.366119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400028, 28.702234, 48.033176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.383091, 28.303144, 48.012180>,  <36.372929, 28.063690, 47.999584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.383091, 28.303144, 48.012180>,  <36.400028, 28.702234, 48.033176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383091, 28.303144, 48.012180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325527, 0.035889, -0.944851,
		0.944584, -0.057096, 0.323266,
		-0.042345, -0.997723, -0.052486,
		36.370388, 28.003828, 47.996433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965870, 28.511848, 47.711903>,  <36.400028, 28.702234, 48.033176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965870, 28.511848, 47.711903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.740337, 28.184219, 47.669548>,  <36.605019, 27.987642, 47.644135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.740337, 28.184219, 47.669548>,  <36.965870, 28.511848, 47.711903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740337, 28.184219, 47.669548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238561, -0.038775, -0.970353,
		0.790684, -0.572378, 0.217261,
		-0.563833, -0.819073, -0.105888,
		36.571186, 27.938498, 47.637783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293396, 28.136530, 47.238312>,  <36.965870, 28.511848, 47.711903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293396, 28.136530, 47.238312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.920261, 27.993240, 47.222836>,  <36.696381, 27.907267, 47.213551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.920261, 27.993240, 47.222836>,  <37.293396, 28.136530, 47.238312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920261, 27.993240, 47.222836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070123, -0.075177, -0.994702,
		0.353418, -0.930604, 0.095248,
		-0.932834, -0.358225, -0.038688,
		36.640411, 27.885773, 47.211227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343159, 27.726170, 46.701550>,  <37.293396, 28.136530, 47.238312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343159, 27.726170, 46.701550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.946144, 27.759735, 46.736923>,  <36.707935, 27.779875, 46.758148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.946144, 27.759735, 46.736923>,  <37.343159, 27.726170, 46.701550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946144, 27.759735, 46.736923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080584, 0.092759, -0.992422,
		-0.091482, -0.992146, -0.085305,
		-0.992541, 0.083915, 0.088437,
		36.648380, 27.784908, 46.763454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022247, 27.145447, 46.306416>,  <37.343159, 27.726170, 46.701550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022247, 27.145447, 46.306416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.777378, 27.460928, 46.329025>,  <36.630455, 27.650217, 46.342590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.777378, 27.460928, 46.329025>,  <37.022247, 27.145447, 46.306416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777378, 27.460928, 46.329025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008079, 0.065244, -0.997836,
		-0.790683, -0.611305, -0.033568,
		-0.612173, 0.788701, 0.056526,
		36.593727, 27.697538, 46.345982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576176, 26.981792, 45.861244>,  <37.022247, 27.145447, 46.306416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576176, 26.981792, 45.861244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.466965, 27.364864, 45.897701>,  <36.401436, 27.594707, 45.919575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.466965, 27.364864, 45.897701>,  <36.576176, 26.981792, 45.861244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466965, 27.364864, 45.897701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101298, 0.065596, -0.992691,
		-0.956658, -0.280266, 0.079102,
		-0.273029, 0.957678, 0.091143,
		36.385056, 27.652168, 45.925045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050190, 27.032503, 45.489273>,  <36.576176, 26.981792, 45.861244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050190, 27.032503, 45.489273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.151089, 27.418304, 45.520523>,  <36.211628, 27.649786, 45.539272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.151089, 27.418304, 45.520523>,  <36.050190, 27.032503, 45.489273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151089, 27.418304, 45.520523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215563, 0.134718, -0.967152,
		-0.943347, 0.227120, 0.241893,
		0.252247, 0.964504, 0.078127,
		36.226765, 27.707655, 45.543961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441967, 27.403210, 45.267418>,  <36.050190, 27.032503, 45.489273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441967, 27.403210, 45.267418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.752148, 27.654203, 45.239296>,  <35.938255, 27.804800, 45.222424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.752148, 27.654203, 45.239296>,  <35.441967, 27.403210, 45.267418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752148, 27.654203, 45.239296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304583, 0.274200, -0.912164,
		-0.553090, 0.728751, 0.403749,
		0.775448, 0.627484, -0.070308,
		35.984783, 27.842449, 45.218204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201069, 28.020958, 45.035278>,  <35.441967, 27.403210, 45.267418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201069, 28.020958, 45.035278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.588291, 28.050550, 44.939445>,  <35.820625, 28.068306, 44.881947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.588291, 28.050550, 44.939445>,  <35.201069, 28.020958, 45.035278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588291, 28.050550, 44.939445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245764, 0.469399, -0.848095,
		0.049714, 0.879881, 0.472586,
		0.968054, 0.073982, -0.239579,
		35.878708, 28.072744, 44.867573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632607, 28.486050, 44.758934>,  <35.201069, 28.020958, 45.035278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632607, 28.486050, 44.758934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.234653, 28.482576, 44.799217>,  <33.995884, 28.480492, 44.823387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.234653, 28.482576, 44.799217>,  <34.632607, 28.486050, 44.758934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234653, 28.482576, 44.799217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100936, -0.138238, 0.985242,
		0.005365, 0.990361, 0.138407,
		-0.994878, -0.008684, 0.100705,
		33.936192, 28.479971, 44.829430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487793, 28.870243, 45.353592>,  <34.632607, 28.486050, 44.758934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487793, 28.870243, 45.353592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.158535, 28.651756, 45.291527>,  <33.960979, 28.520664, 45.254288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.158535, 28.651756, 45.291527>,  <34.487793, 28.870243, 45.353592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158535, 28.651756, 45.291527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138187, -0.072344, 0.987760,
		-0.550758, 0.834513, -0.015931,
		-0.823147, -0.546218, -0.155163,
		33.911591, 28.487890, 45.244976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025661, 29.145061, 45.904308>,  <34.487793, 28.870243, 45.353592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025661, 29.145061, 45.904308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.869438, 28.804115, 45.765205>,  <33.775703, 28.599546, 45.681744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.869438, 28.804115, 45.765205>,  <34.025661, 29.145061, 45.904308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869438, 28.804115, 45.765205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142304, -0.317322, 0.937580,
		-0.909515, 0.415663, 0.002636,
		-0.390554, -0.852367, -0.347760,
		33.752274, 28.548405, 45.660877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411427, 29.033449, 46.271244>,  <34.025661, 29.145061, 45.904308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411427, 29.033449, 46.271244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.529869, 28.674652, 46.139961>,  <33.600937, 28.459373, 46.061192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.529869, 28.674652, 46.139961>,  <33.411427, 29.033449, 46.271244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529869, 28.674652, 46.139961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312059, -0.415617, 0.854331,
		-0.902739, -0.150555, -0.402983,
		0.296111, -0.896993, -0.328212,
		33.618702, 28.405554, 46.041496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953438, 28.624256, 46.619518>,  <33.411427, 29.033449, 46.271244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953438, 28.624256, 46.619518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.221691, 28.365858, 46.473671>,  <33.382641, 28.210819, 46.386162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.221691, 28.365858, 46.473671>,  <32.953438, 28.624256, 46.619518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221691, 28.365858, 46.473671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253957, -0.661775, 0.705379,
		-0.696967, -0.380451, -0.607861,
		0.670629, -0.645997, -0.364617,
		33.422882, 28.172060, 46.364288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588451, 27.911604, 46.497536>,  <32.953438, 28.624256, 46.619518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588451, 27.911604, 46.497536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.983654, 27.868004, 46.541271>,  <33.220776, 27.841845, 46.567513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.983654, 27.868004, 46.541271>,  <32.588451, 27.911604, 46.497536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983654, 27.868004, 46.541271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154248, -0.666527, 0.729348,
		-0.006618, -0.737469, -0.675348,
		0.988010, -0.108998, 0.109342,
		33.280056, 27.835304, 46.574074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730396, 27.247606, 46.538456>,  <32.588451, 27.911604, 46.497536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730396, 27.247606, 46.538456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.032139, 27.442705, 46.714207>,  <33.213184, 27.559765, 46.819656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.032139, 27.442705, 46.714207>,  <32.730396, 27.247606, 46.538456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032139, 27.442705, 46.714207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239586, -0.418587, 0.876004,
		0.611186, -0.766086, -0.198906,
		0.754354, 0.487746, 0.439378,
		33.258446, 27.589029, 46.846020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958614, 26.796268, 47.069229>,  <32.730396, 27.247606, 46.538456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958614, 26.796268, 47.069229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.131607, 27.136265, 47.189545>,  <33.235401, 27.340263, 47.261734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.131607, 27.136265, 47.189545>,  <32.958614, 26.796268, 47.069229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131607, 27.136265, 47.189545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027833, -0.346025, 0.937812,
		0.901213, -0.397214, -0.173307,
		0.432481, 0.849993, 0.300787,
		33.261353, 27.391262, 47.279781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596409, 26.616545, 47.330822>,  <32.958614, 26.796268, 47.069229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596409, 26.616545, 47.330822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.456421, 26.959784, 47.481125>,  <33.372429, 27.165726, 47.571304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.456421, 26.959784, 47.481125>,  <33.596409, 26.616545, 47.330822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456421, 26.959784, 47.481125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072483, -0.375112, 0.924141,
		0.933951, 0.350661, 0.069082,
		-0.349973, 0.858096, 0.375753,
		33.351429, 27.217213, 47.593849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757465, 26.534885, 48.038986>,  <33.596409, 26.616545, 47.330822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757465, 26.534885, 48.038986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.507191, 26.846905, 48.036491>,  <33.357025, 27.034117, 48.034996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.507191, 26.846905, 48.036491>,  <33.757465, 26.534885, 48.038986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507191, 26.846905, 48.036491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319395, -0.248881, 0.914355,
		0.711687, 0.574095, 0.404866,
		-0.625690, 0.780047, -0.006238,
		33.319485, 27.080919, 48.034618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805664, 26.734644, 48.715252>,  <33.757465, 26.534885, 48.038986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805664, 26.734644, 48.715252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.476688, 26.914526, 48.575909>,  <33.279305, 27.022455, 48.492302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.476688, 26.914526, 48.575909>,  <33.805664, 26.734644, 48.715252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476688, 26.914526, 48.575909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429133, -0.088489, 0.898897,
		0.373413, 0.888782, 0.265760,
		-0.822440, 0.449706, -0.348363,
		33.229958, 27.049438, 48.471401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626678, 27.208166, 49.245918>,  <33.805664, 26.734644, 48.715252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626678, 27.208166, 49.245918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.304298, 27.158264, 49.014442>,  <33.110870, 27.128323, 48.875557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.304298, 27.158264, 49.014442>,  <33.626678, 27.208166, 49.245918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304298, 27.158264, 49.014442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572210, -0.086339, 0.815549,
		-0.151709, 0.988424, -0.001802,
		-0.805953, -0.124757, -0.578685,
		33.062511, 27.120836, 48.840836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114517, 27.672905, 49.542194>,  <33.626678, 27.208166, 49.245918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114517, 27.672905, 49.542194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.917244, 27.379747, 49.354729>,  <32.798882, 27.203854, 49.242249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.917244, 27.379747, 49.354729>,  <33.114517, 27.672905, 49.542194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917244, 27.379747, 49.354729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632349, -0.067952, 0.771698,
		-0.597417, 0.676943, -0.429931,
		-0.493181, -0.732892, -0.468660,
		32.769291, 27.159880, 49.214130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061863, 28.357729, 49.597710>,  <33.114517, 27.672905, 49.542194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061863, 28.357729, 49.597710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.757759, 28.466236, 49.833817>,  <32.575294, 28.531340, 49.975483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.757759, 28.466236, 49.833817>,  <33.061863, 28.357729, 49.597710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757759, 28.466236, 49.833817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310137, 0.646839, -0.696717,
		-0.570805, -0.712751, -0.407637,
		-0.760261, 0.271266, 0.590269,
		32.529682, 28.547615, 50.010899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381130, 28.340288, 49.224731>,  <33.061863, 28.357729, 49.597710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381130, 28.340288, 49.224731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.312916, 28.583250, 49.535080>,  <32.271988, 28.729027, 49.721291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.312916, 28.583250, 49.535080>,  <32.381130, 28.340288, 49.224731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312916, 28.583250, 49.535080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314314, 0.712737, -0.627066,
		-0.933875, -0.350807, 0.069367,
		-0.170539, 0.607404, 0.775871,
		32.261753, 28.765471, 49.767841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725767, 28.564655, 49.121181>,  <32.381130, 28.340288, 49.224731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725767, 28.564655, 49.121181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.909349, 28.838715, 49.347431>,  <32.019497, 29.003149, 49.483181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.909349, 28.838715, 49.347431>,  <31.725767, 28.564655, 49.121181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909349, 28.838715, 49.347431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340835, 0.723705, -0.600069,
		-0.820482, 0.082619, 0.565670,
		0.458956, 0.685146, 0.565628,
		32.047035, 29.044258, 49.517120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265297, 29.080162, 49.040592>,  <31.725767, 28.564655, 49.121181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265297, 29.080162, 49.040592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.601631, 29.248589, 49.176647>,  <31.803432, 29.349646, 49.258282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.601631, 29.248589, 49.176647>,  <31.265297, 29.080162, 49.040592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601631, 29.248589, 49.176647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074960, 0.712915, -0.697232,
		-0.536073, 0.560762, 0.631008,
		0.840837, 0.421068, 0.340140,
		31.853882, 29.374908, 49.278690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159077, 29.777044, 49.203018>,  <31.265297, 29.080162, 49.040592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159077, 29.777044, 49.203018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.552315, 29.770424, 49.130081>,  <31.788258, 29.766451, 49.086319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.552315, 29.770424, 49.130081>,  <31.159077, 29.777044, 49.203018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552315, 29.770424, 49.130081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127525, 0.652730, -0.746780,
		0.131384, 0.757410, 0.639585,
		0.983095, -0.016552, -0.182347,
		31.847242, 29.765459, 49.075378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338860, 30.397800, 49.175362>,  <31.159077, 29.777044, 49.203018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338860, 30.397800, 49.175362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.634556, 30.229361, 48.965141>,  <31.811974, 30.128296, 48.839008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.634556, 30.229361, 48.965141>,  <31.338860, 30.397800, 49.175362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634556, 30.229361, 48.965141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237445, 0.567292, -0.788543,
		0.630193, 0.707711, 0.319377,
		0.739241, -0.421099, -0.525546,
		31.856327, 30.103031, 48.807476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741924, 30.943893, 48.794445>,  <31.338860, 30.397800, 49.175362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741924, 30.943893, 48.794445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.843933, 30.642433, 48.552132>,  <31.905138, 30.461557, 48.406746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.843933, 30.642433, 48.552132>,  <31.741924, 30.943893, 48.794445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843933, 30.642433, 48.552132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016089, 0.623102, -0.781975,
		0.966801, 0.209169, 0.146781,
		0.255024, -0.753653, -0.605780,
		31.920441, 30.416338, 48.370396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045231, 31.295141, 48.377045>,  <31.741924, 30.943893, 48.794445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045231, 31.295141, 48.377045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.026428, 30.936914, 48.200069>,  <32.015148, 30.721979, 48.093884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.026428, 30.936914, 48.200069>,  <32.045231, 31.295141, 48.377045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026428, 30.936914, 48.200069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029641, 0.441482, -0.896780,
		0.998455, -0.055265, 0.005795,
		-0.047002, -0.895566, -0.442438,
		32.012329, 30.668245, 48.067337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800419, 31.351377, 48.329365>,  <32.045231, 31.295141, 48.377045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800419, 31.351377, 48.329365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.958565, 31.659853, 48.528946>,  <33.053452, 31.844938, 48.648697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.958565, 31.659853, 48.528946>,  <32.800419, 31.351377, 48.329365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958565, 31.659853, 48.528946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206822, -0.454523, 0.866391,
		0.894938, -0.445734, -0.020203,
		0.395363, 0.771187, 0.498957,
		33.077175, 31.891209, 48.678635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346390, 31.135513, 48.806007>,  <32.800419, 31.351377, 48.329365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346390, 31.135513, 48.806007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.217785, 31.482578, 48.957687>,  <33.140621, 31.690819, 49.048695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.217785, 31.482578, 48.957687>,  <33.346390, 31.135513, 48.806007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217785, 31.482578, 48.957687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078625, -0.423538, 0.902460,
		0.943637, 0.260334, 0.204391,
		-0.321508, 0.867665, 0.379197,
		33.121334, 31.742878, 49.071445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687885, 31.203676, 49.467274>,  <33.346390, 31.135513, 48.806007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687885, 31.203676, 49.467274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.388802, 31.468496, 49.487728>,  <33.209351, 31.627388, 49.500000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.388802, 31.468496, 49.487728>,  <33.687885, 31.203676, 49.467274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388802, 31.468496, 49.487728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210555, -0.309418, 0.927322,
		0.629756, 0.682604, 0.370754,
		-0.747712, 0.662051, 0.051132,
		33.164486, 31.667112, 49.503067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733822, 31.586557, 50.170635>,  <33.687885, 31.203676, 49.467274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733822, 31.586557, 50.170635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.369968, 31.662575, 50.022877>,  <33.151657, 31.708185, 49.934219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.369968, 31.662575, 50.022877>,  <33.733822, 31.586557, 50.170635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369968, 31.662575, 50.022877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365109, 0.058428, 0.929129,
		0.198159, 0.980035, 0.016239,
		-0.909631, 0.190045, -0.369398,
		33.097080, 31.719587, 49.912056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450001, 32.273880, 50.392418>,  <33.733822, 31.586557, 50.170635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450001, 32.273880, 50.392418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150070, 32.026497, 50.298378>,  <32.970112, 31.878067, 50.241955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150070, 32.026497, 50.298378>,  <33.450001, 32.273880, 50.392418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150070, 32.026497, 50.298378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284576, -0.019329, 0.958458,
		-0.597308, 0.785582, -0.161504,
		-0.749826, -0.618455, -0.235104,
		32.925121, 31.840960, 50.227848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239883, 32.287811, 51.002045>,  <33.450001, 32.273880, 50.392418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239883, 32.287811, 51.002045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.989857, 32.034653, 50.819290>,  <32.839840, 31.882759, 50.709637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.989857, 32.034653, 50.819290>,  <33.239883, 32.287811, 51.002045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989857, 32.034653, 50.819290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401339, -0.241449, 0.883532,
		-0.669495, 0.735629, -0.103084,
		-0.625063, -0.632892, -0.456886,
		32.802338, 31.844786, 50.682224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532059, 32.559780, 51.150188>,  <33.239883, 32.287811, 51.002045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532059, 32.559780, 51.150188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.524872, 32.166611, 51.076939>,  <32.520557, 31.930708, 51.032990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.524872, 32.166611, 51.076939>,  <32.532059, 32.559780, 51.150188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524872, 32.166611, 51.076939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367148, -0.163875, 0.915613,
		-0.929989, 0.083689, -0.357934,
		-0.017970, -0.982925, -0.183128,
		32.519482, 31.871733, 51.021999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911238, 32.438644, 51.317867>,  <32.532059, 32.559780, 51.150188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911238, 32.438644, 51.317867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.080662, 32.076370, 51.325195>,  <32.182316, 31.859007, 51.329594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.080662, 32.076370, 51.325195>,  <31.911238, 32.438644, 51.317867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080662, 32.076370, 51.325195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459723, -0.197480, 0.865827,
		-0.780546, -0.375153, -0.500008,
		0.423560, -0.905683, 0.018325,
		32.207729, 31.804665, 51.330692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389435, 31.910812, 51.462830>,  <31.911238, 32.438644, 51.317867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389435, 31.910812, 51.462830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.746380, 31.756392, 51.556343>,  <31.960546, 31.663738, 51.612453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.746380, 31.756392, 51.556343>,  <31.389435, 31.910812, 51.462830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746380, 31.756392, 51.556343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313616, -0.157899, 0.936330,
		-0.324560, -0.908862, -0.261975,
		0.892359, -0.386055, 0.233786,
		32.014088, 31.640575, 51.626480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.596756, 35.215797, 36.728218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917805, 34.978725, 36.701298>,  <36.110435, 34.836483, 36.685146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917805, 34.978725, 36.701298>,  <35.596756, 35.215797, 36.728218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917805, 34.978725, 36.701298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389806, -0.606567, 0.692912,
		-0.451496, -0.529913, -0.717874,
		0.802622, -0.592679, -0.067299,
		36.158592, 34.800922, 36.681107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455967, 34.575211, 36.455769>,  <35.596756, 35.215797, 36.728218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455967, 34.575211, 36.455769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742561, 34.613243, 36.732204>,  <35.914516, 34.636063, 36.898067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742561, 34.613243, 36.732204>,  <35.455967, 34.575211, 36.455769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742561, 34.613243, 36.732204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671886, -0.172443, 0.720300,
		0.187662, -0.980420, -0.059668,
		0.716486, 0.095083, 0.691092,
		35.957508, 34.641769, 36.939533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459187, 33.997623, 37.011314>,  <35.455967, 34.575211, 36.455769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459187, 33.997623, 37.011314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639862, 34.315754, 37.173019>,  <35.748268, 34.506634, 37.270042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639862, 34.315754, 37.173019>,  <35.459187, 33.997623, 37.011314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639862, 34.315754, 37.173019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514612, -0.137888, 0.846263,
		0.728802, -0.590284, 0.347004,
		0.451688, 0.795331, 0.404261,
		35.775368, 34.554352, 37.294296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690170, 33.766617, 37.671871>,  <35.459187, 33.997623, 37.011314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690170, 33.766617, 37.671871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693336, 34.165981, 37.694202>,  <35.695236, 34.405598, 37.707600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693336, 34.165981, 37.694202>,  <35.690170, 33.766617, 37.671871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693336, 34.165981, 37.694202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425285, -0.047167, 0.903829,
		0.905025, -0.030892, 0.424236,
		0.007912, 0.998409, 0.055825,
		35.695709, 34.465504, 37.710949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878651, 33.881039, 38.358662>,  <35.690170, 33.766617, 37.671871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878651, 33.881039, 38.358662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747978, 34.248470, 38.269672>,  <35.669575, 34.468929, 38.216278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747978, 34.248470, 38.269672>,  <35.878651, 33.881039, 38.358662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747978, 34.248470, 38.269672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261496, 0.138357, 0.955237,
		0.908239, 0.370236, 0.195005,
		-0.326682, 0.918576, -0.222476,
		35.649975, 34.524044, 38.202930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025234, 34.236153, 38.916046>,  <35.878651, 33.881039, 38.358662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025234, 34.236153, 38.916046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743309, 34.459080, 38.740486>,  <35.574154, 34.592834, 38.635151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743309, 34.459080, 38.740486>,  <36.025234, 34.236153, 38.916046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743309, 34.459080, 38.740486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431963, 0.153592, 0.888717,
		0.562708, 0.815970, 0.132487,
		-0.704817, 0.557318, -0.438896,
		35.531864, 34.626274, 38.608818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946281, 34.840530, 39.295296>,  <36.025234, 34.236153, 38.916046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946281, 34.840530, 39.295296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598362, 34.800011, 39.102135>,  <35.389610, 34.775700, 38.986237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598362, 34.800011, 39.102135>,  <35.946281, 34.840530, 39.295296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598362, 34.800011, 39.102135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492794, 0.227376, 0.839913,
		0.024714, 0.968524, -0.247692,
		-0.869795, -0.101303, -0.482902,
		35.337425, 34.769619, 38.957264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494453, 35.319386, 39.556896>,  <35.946281, 34.840530, 39.295296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494453, 35.319386, 39.556896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200394, 35.109158, 39.385628>,  <35.023960, 34.983021, 39.282867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200394, 35.109158, 39.385628>,  <35.494453, 35.319386, 39.556896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200394, 35.109158, 39.385628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465317, -0.068110, 0.882520,
		-0.492992, 0.848018, -0.194488,
		-0.735146, -0.525573, -0.428174,
		34.979851, 34.951485, 39.257175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028351, 35.453747, 39.966557>,  <35.494453, 35.319386, 39.556896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028351, 35.453747, 39.966557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902794, 35.116295, 39.792313>,  <34.827461, 34.913822, 39.687767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902794, 35.116295, 39.792313>,  <35.028351, 35.453747, 39.966557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902794, 35.116295, 39.792313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481653, -0.253891, 0.838778,
		-0.818219, 0.473098, -0.326645,
		-0.313892, -0.843634, -0.435607,
		34.808628, 34.863205, 39.661629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329166, 35.431988, 39.976566>,  <35.028351, 35.453747, 39.966557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329166, 35.431988, 39.976566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373970, 35.043060, 39.894539>,  <34.400852, 34.809704, 39.845322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373970, 35.043060, 39.894539>,  <34.329166, 35.431988, 39.976566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373970, 35.043060, 39.894539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736507, -0.219766, 0.639734,
		-0.667092, 0.079377, -0.740735,
		0.112008, -0.972318, -0.205066,
		34.407574, 34.751366, 39.833019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651039, 35.141472, 40.024479>,  <34.329166, 35.431988, 39.976566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651039, 35.141472, 40.024479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903893, 34.833199, 40.056622>,  <34.055607, 34.648235, 40.075909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903893, 34.833199, 40.056622>,  <33.651039, 35.141472, 40.024479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903893, 34.833199, 40.056622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385648, -0.222972, 0.895298,
		-0.672070, -0.596940, -0.438160,
		0.632137, -0.770679, 0.080356,
		34.093533, 34.601994, 40.080727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276134, 34.595161, 40.367046>,  <33.651039, 35.141472, 40.024479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276134, 34.595161, 40.367046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651443, 34.494663, 40.462151>,  <33.876629, 34.434364, 40.519211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651443, 34.494663, 40.462151>,  <33.276134, 34.595161, 40.367046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651443, 34.494663, 40.462151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298372, -0.240100, 0.923757,
		-0.174995, -0.937674, -0.300240,
		0.938270, -0.251236, 0.237759,
		33.932922, 34.419292, 40.533478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975330, 34.053440, 39.962593>,  <33.276134, 34.595161, 40.367046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975330, 34.053440, 39.962593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662670, 33.805843, 39.931950>,  <32.475075, 33.657284, 39.913563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662670, 33.805843, 39.931950>,  <32.975330, 34.053440, 39.962593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662670, 33.805843, 39.931950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096378, 0.241221, -0.965673,
		0.616225, -0.747435, -0.248208,
		-0.781650, -0.618994, -0.076610,
		32.428173, 33.620144, 39.908966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129082, 33.605480, 39.436470>,  <32.975330, 34.053440, 39.962593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129082, 33.605480, 39.436470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732983, 33.549824, 39.439365>,  <32.495323, 33.516430, 39.441101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732983, 33.549824, 39.439365>,  <33.129082, 33.605480, 39.436470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732983, 33.549824, 39.439365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007903, -0.107964, -0.994123,
		0.139109, -0.984369, 0.108011,
		-0.990246, -0.139145, 0.007239,
		32.435909, 33.508080, 39.441536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913780, 32.898243, 38.949715>,  <33.129082, 33.605480, 39.436470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913780, 32.898243, 38.949715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594105, 33.137192, 38.976391>,  <32.402298, 33.280560, 38.992397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594105, 33.137192, 38.976391>,  <32.913780, 32.898243, 38.949715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594105, 33.137192, 38.976391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061582, 0.028993, -0.997681,
		-0.597917, -0.801443, 0.013617,
		-0.799189, 0.597369, 0.066690,
		32.354347, 33.316402, 38.996399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485561, 32.593250, 38.457615>,  <32.913780, 32.898243, 38.949715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485561, 32.593250, 38.457615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338860, 32.960804, 38.515785>,  <32.250839, 33.181335, 38.550686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338860, 32.960804, 38.515785>,  <32.485561, 32.593250, 38.457615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338860, 32.960804, 38.515785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065310, 0.181362, -0.981245,
		-0.928021, -0.350381, -0.126528,
		-0.366758, 0.918880, 0.145424,
		32.228832, 33.236469, 38.559414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991446, 32.660828, 38.031525>,  <32.485561, 32.593250, 38.457615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991446, 32.660828, 38.031525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062622, 33.043674, 38.122971>,  <32.105328, 33.273380, 38.177837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062622, 33.043674, 38.122971>,  <31.991446, 32.660828, 38.031525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062622, 33.043674, 38.122971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153159, 0.202557, -0.967219,
		-0.972049, 0.207125, -0.110547,
		0.177943, 0.957115, 0.228618,
		32.116005, 33.330811, 38.191555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435610, 32.966026, 37.813442>,  <31.991446, 32.660828, 38.031525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435610, 32.966026, 37.813442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719679, 33.245949, 37.844234>,  <31.890120, 33.413902, 37.862709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719679, 33.245949, 37.844234>,  <31.435610, 32.966026, 37.813442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719679, 33.245949, 37.844234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231623, 0.335500, -0.913122,
		-0.664836, 0.630643, 0.400354,
		0.710172, 0.699807, 0.076981,
		31.932730, 33.455891, 37.867329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064434, 33.606487, 37.752213>,  <31.435610, 32.966026, 37.813442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064434, 33.606487, 37.752213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436295, 33.728848, 37.670063>,  <31.659410, 33.802261, 37.620773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436295, 33.728848, 37.670063>,  <31.064434, 33.606487, 37.752213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436295, 33.728848, 37.670063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330631, 0.446664, -0.831369,
		-0.162581, 0.840784, 0.516380,
		0.929651, 0.305896, -0.205370,
		31.715189, 33.820618, 37.608452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997862, 34.268295, 37.513271>,  <31.064434, 33.606487, 37.752213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997862, 34.268295, 37.513271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347813, 34.130554, 37.377029>,  <31.557783, 34.047909, 37.295284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347813, 34.130554, 37.377029>,  <30.997862, 34.268295, 37.513271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347813, 34.130554, 37.377029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239494, 0.303673, -0.922185,
		0.420986, 0.888373, 0.183208,
		0.874879, -0.344350, -0.340602,
		31.610277, 34.027248, 37.274849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229977, 34.746181, 37.077927>,  <30.997862, 34.268295, 37.513271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229977, 34.746181, 37.077927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427052, 34.412117, 36.980141>,  <31.545296, 34.211678, 36.921471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427052, 34.412117, 36.980141>,  <31.229977, 34.746181, 37.077927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427052, 34.412117, 36.980141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128494, 0.347666, -0.928772,
		0.860669, 0.426180, 0.278603,
		0.492685, -0.835164, -0.244464,
		31.574858, 34.161568, 36.906803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591841, 34.945877, 36.521767>,  <31.229977, 34.746181, 37.077927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591841, 34.945877, 36.521767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653009, 34.552544, 36.482449>,  <31.689711, 34.316544, 36.458858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653009, 34.552544, 36.482449>,  <31.591841, 34.945877, 36.521767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653009, 34.552544, 36.482449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048253, 0.091915, -0.994597,
		0.987060, 0.156839, -0.033393,
		0.152922, -0.983338, -0.098293,
		31.698887, 34.257542, 36.452961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022854, 34.802193, 35.896976>,  <31.591841, 34.945877, 36.521767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022854, 34.802193, 35.896976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832037, 34.457062, 35.963856>,  <31.717546, 34.249981, 36.003983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832037, 34.457062, 35.963856>,  <32.022854, 34.802193, 35.896976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832037, 34.457062, 35.963856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201436, -0.077837, -0.976404,
		0.855484, -0.499466, -0.136674,
		-0.477043, -0.862829, 0.167199,
		31.688925, 34.198212, 36.014015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293785, 34.288643, 35.441792>,  <32.022854, 34.802193, 35.896976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293785, 34.288643, 35.441792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934246, 34.138657, 35.532543>,  <31.718523, 34.048664, 35.586994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934246, 34.138657, 35.532543>,  <32.293785, 34.288643, 35.441792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934246, 34.138657, 35.532543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161392, -0.198102, -0.966803,
		0.407462, -0.905625, 0.117547,
		-0.898848, -0.374964, 0.226880,
		31.664591, 34.026169, 35.600609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255653, 33.699558, 35.059834>,  <32.293785, 34.288643, 35.441792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255653, 33.699558, 35.059834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868080, 33.754700, 35.141975>,  <31.635536, 33.787785, 35.191261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868080, 33.754700, 35.141975>,  <32.255653, 33.699558, 35.059834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868080, 33.754700, 35.141975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239261, -0.312059, -0.919442,
		-0.062669, -0.940008, 0.335348,
		-0.968931, 0.137857, 0.205351,
		31.577400, 33.796055, 35.203579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927547, 33.101086, 34.742161>,  <32.255653, 33.699558, 35.059834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927547, 33.101086, 34.742161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655264, 33.390549, 34.787682>,  <31.491894, 33.564228, 34.814995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655264, 33.390549, 34.787682>,  <31.927547, 33.101086, 34.742161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655264, 33.390549, 34.787682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458294, -0.299493, -0.836821,
		-0.571490, -0.621789, 0.535517,
		-0.680710, 0.723659, 0.113805,
		31.451052, 33.607647, 34.821823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337683, 32.966743, 35.182495>,  <31.927547, 33.101086, 34.742161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337683, 32.966743, 35.182495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251049, 33.036125, 34.798203>,  <31.199070, 33.077755, 34.567627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251049, 33.036125, 34.798203>,  <31.337683, 32.966743, 35.182495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251049, 33.036125, 34.798203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955676, -0.163366, -0.244938,
		-0.199436, -0.971198, -0.130384,
		-0.216583, 0.173454, -0.960732,
		31.186073, 33.088161, 34.509983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430626, 32.400826, 34.639229>,  <31.337683, 32.966743, 35.182495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430626, 32.400826, 34.639229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489470, 32.768803, 34.493866>,  <31.524776, 32.989590, 34.406647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489470, 32.768803, 34.493866>,  <31.430626, 32.400826, 34.639229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489470, 32.768803, 34.493866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966004, -0.212591, -0.147111,
		-0.212591, -0.329414, -0.919941,
		0.147111, 0.919941, -0.363411,
		31.533604, 33.044785, 34.384842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328243, 32.010349, 35.278538>,  <31.430626, 32.400826, 34.639229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328243, 32.010349, 35.278538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618822, 32.204666, 35.472973>,  <31.793169, 32.321255, 35.589634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618822, 32.204666, 35.472973>,  <31.328243, 32.010349, 35.278538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618822, 32.204666, 35.472973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601710, -0.107913, -0.791391,
		-0.331992, 0.867390, -0.370697,
		0.726448, 0.485788, 0.486091,
		31.836756, 32.350403, 35.618801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766481, 31.533716, 35.595882>,  <31.328243, 32.010349, 35.278538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766481, 31.533716, 35.595882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142708, 31.657038, 35.538910>,  <32.368443, 31.731031, 35.504726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142708, 31.657038, 35.538910>,  <31.766481, 31.533716, 35.595882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142708, 31.657038, 35.538910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240611, -0.308965, 0.920134,
		0.239675, -0.899716, -0.364783,
		0.940565, 0.308304, -0.142431,
		32.424877, 31.749529, 35.496181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261456, 31.059031, 35.722034>,  <31.766481, 31.533716, 35.595882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261456, 31.059031, 35.722034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509132, 31.368546, 35.775486>,  <32.657738, 31.554255, 35.807556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509132, 31.368546, 35.775486>,  <32.261456, 31.059031, 35.722034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509132, 31.368546, 35.775486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184777, -0.308969, 0.932950,
		0.763193, -0.552981, -0.334288,
		0.619188, 0.773790, 0.133625,
		32.694889, 31.600683, 35.815575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869976, 30.784851, 36.058678>,  <32.261456, 31.059031, 35.722034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869976, 30.784851, 36.058678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869892, 31.170967, 36.163151>,  <32.869843, 31.402636, 36.225834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869892, 31.170967, 36.163151>,  <32.869976, 30.784851, 36.058678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869892, 31.170967, 36.163151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179548, -0.256905, 0.949612,
		0.983749, 0.047094, -0.173262,
		-0.000209, 0.965289, 0.261185,
		32.869831, 31.460554, 36.241505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437000, 30.798241, 36.490211>,  <32.869976, 30.784851, 36.058678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437000, 30.798241, 36.490211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198917, 31.115034, 36.544613>,  <33.056068, 31.305111, 36.577251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198917, 31.115034, 36.544613>,  <33.437000, 30.798241, 36.490211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198917, 31.115034, 36.544613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080871, -0.109349, 0.990708,
		0.799496, 0.600671, 0.001037,
		-0.595203, 0.791983, 0.136001,
		33.020355, 31.352629, 36.585415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646469, 30.974585, 37.097481>,  <33.437000, 30.798241, 36.490211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646469, 30.974585, 37.097481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299316, 31.167141, 37.048428>,  <33.091022, 31.282675, 37.018997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299316, 31.167141, 37.048428>,  <33.646469, 30.974585, 37.097481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299316, 31.167141, 37.048428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287990, -0.286424, 0.913796,
		0.404768, 0.828387, 0.387219,
		-0.867885, 0.481390, -0.122632,
		33.038952, 31.311558, 37.011639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693283, 31.408020, 37.574932>,  <33.646469, 30.974585, 37.097481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693283, 31.408020, 37.574932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306149, 31.364828, 37.484043>,  <33.073868, 31.338913, 37.429512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306149, 31.364828, 37.484043>,  <33.693283, 31.408020, 37.574932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306149, 31.364828, 37.484043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182925, -0.317983, 0.930282,
		-0.172704, 0.941927, 0.288004,
		-0.967839, -0.107981, -0.227219,
		33.015797, 31.332434, 37.415878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399445, 31.865030, 38.061527>,  <33.693283, 31.408020, 37.574932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399445, 31.865030, 38.061527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153278, 31.580708, 37.925282>,  <33.005577, 31.410114, 37.843533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153278, 31.580708, 37.925282>,  <33.399445, 31.865030, 38.061527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153278, 31.580708, 37.925282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083604, -0.370837, 0.924927,
		-0.783755, 0.597693, 0.168793,
		-0.615417, -0.710805, -0.340615,
		32.968655, 31.367466, 37.823097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830196, 31.906227, 38.614311>,  <33.399445, 31.865030, 38.061527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830196, 31.906227, 38.614311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800415, 31.563042, 38.410999>,  <32.782547, 31.357130, 38.289013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800415, 31.563042, 38.410999>,  <32.830196, 31.906227, 38.614311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800415, 31.563042, 38.410999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137857, -0.495950, 0.857338,
		-0.987650, 0.133900, -0.081353,
		-0.074450, -0.857965, -0.508284,
		32.778080, 31.305653, 38.258514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172001, 31.598433, 38.786518>,  <32.830196, 31.906227, 38.614311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172001, 31.598433, 38.786518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419113, 31.302031, 38.681248>,  <32.567379, 31.124189, 38.618084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419113, 31.302031, 38.681248>,  <32.172001, 31.598433, 38.786518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419113, 31.302031, 38.681248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192250, -0.466849, 0.863187,
		-0.762488, -0.482664, -0.430868,
		0.617779, -0.741004, -0.263175,
		32.604446, 31.079729, 38.602295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786322, 31.063366, 39.002514>,  <32.172001, 31.598433, 38.786518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786322, 31.063366, 39.002514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152374, 30.907589, 38.960815>,  <32.372005, 30.814123, 38.935795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152374, 30.907589, 38.960815>,  <31.786322, 31.063366, 39.002514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152374, 30.907589, 38.960815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164301, -0.596399, 0.785693,
		-0.368157, -0.701884, -0.609770,
		0.915132, -0.389445, -0.104248,
		32.426914, 30.790756, 38.929543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721861, 30.432001, 39.273140>,  <31.786322, 31.063366, 39.002514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721861, 30.432001, 39.273140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118828, 30.480221, 39.282742>,  <32.357006, 30.509153, 39.288502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118828, 30.480221, 39.282742>,  <31.721861, 30.432001, 39.273140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118828, 30.480221, 39.282742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042891, -0.522632, 0.851479,
		0.115192, -0.843992, -0.523840,
		0.992417, 0.120551, 0.024003,
		32.416553, 30.516386, 39.289944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902464, 29.799871, 39.521336>,  <31.721861, 30.432001, 39.273140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902464, 29.799871, 39.521336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232170, 30.015436, 39.590805>,  <32.429993, 30.144775, 39.632488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232170, 30.015436, 39.590805>,  <31.902464, 29.799871, 39.521336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232170, 30.015436, 39.590805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193573, -0.556471, 0.808003,
		0.532088, -0.632389, -0.562997,
		0.824264, 0.538910, 0.173678,
		32.479450, 30.177109, 39.642910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454922, 29.362698, 39.820011>,  <31.902464, 29.799871, 39.521336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454922, 29.362698, 39.820011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556664, 29.732470, 39.933666>,  <32.617710, 29.954332, 40.001858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556664, 29.732470, 39.933666>,  <32.454922, 29.362698, 39.820011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556664, 29.732470, 39.933666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170140, -0.331988, 0.927813,
		0.952027, -0.187652, -0.241726,
		0.254356, 0.924430, 0.284135,
		32.632969, 30.009798, 40.018906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106770, 29.275978, 40.169582>,  <32.454922, 29.362698, 39.820011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106770, 29.275978, 40.169582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975060, 29.635778, 40.284454>,  <32.896034, 29.851658, 40.353378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975060, 29.635778, 40.284454>,  <33.106770, 29.275978, 40.169582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975060, 29.635778, 40.284454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350346, -0.166047, 0.921784,
		0.876831, 0.404138, -0.260461,
		-0.329279, 0.899500, 0.287184,
		32.876274, 29.905628, 40.370609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587402, 29.600912, 40.596245>,  <33.106770, 29.275978, 40.169582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587402, 29.600912, 40.596245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254448, 29.806612, 40.678879>,  <33.054676, 29.930033, 40.728458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254448, 29.806612, 40.678879>,  <33.587402, 29.600912, 40.596245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254448, 29.806612, 40.678879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216134, -0.042013, 0.975459,
		0.510310, 0.856610, -0.076175,
		-0.832388, 0.514251, 0.206582,
		33.004730, 29.960888, 40.740852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752327, 30.280987, 40.945122>,  <33.587402, 29.600912, 40.596245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752327, 30.280987, 40.945122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398582, 30.119576, 41.038990>,  <33.186337, 30.022728, 41.095310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398582, 30.119576, 41.038990>,  <33.752327, 30.280987, 40.945122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398582, 30.119576, 41.038990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223547, 0.075227, 0.971786,
		-0.409798, 0.911869, 0.023680,
		-0.884360, -0.403529, 0.234674,
		33.133274, 29.998516, 41.109394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764671, 30.348913, 41.639717>,  <33.752327, 30.280987, 40.945122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764671, 30.348913, 41.639717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411507, 30.169762, 41.583321>,  <33.199608, 30.062271, 41.549484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411507, 30.169762, 41.583321>,  <33.764671, 30.348913, 41.639717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411507, 30.169762, 41.583321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108039, -0.098440, 0.989261,
		-0.456948, 0.888659, 0.038525,
		-0.882908, -0.447878, -0.140991,
		33.146633, 30.035398, 41.541023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238285, 30.786297, 42.114174>,  <33.764671, 30.348913, 41.639717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238285, 30.786297, 42.114174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151146, 30.409294, 42.012806>,  <33.098862, 30.183092, 41.951984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151146, 30.409294, 42.012806>,  <33.238285, 30.786297, 42.114174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151146, 30.409294, 42.012806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065323, -0.244994, 0.967322,
		-0.973795, 0.227280, -0.008197,
		-0.217845, -0.942508, -0.253420,
		33.085793, 30.126541, 41.936779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692715, 30.572649, 42.494587>,  <33.238285, 30.786297, 42.114174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692715, 30.572649, 42.494587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860439, 30.230658, 42.372478>,  <32.961075, 30.025463, 42.299213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860439, 30.230658, 42.372478>,  <32.692715, 30.572649, 42.494587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860439, 30.230658, 42.372478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029204, -0.348786, 0.936747,
		-0.907374, -0.383871, -0.171218,
		0.419309, -0.854980, -0.305269,
		32.986233, 29.974163, 42.280899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465477, 30.084326, 43.018341>,  <32.692715, 30.572649, 42.494587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465477, 30.084326, 43.018341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728104, 29.858454, 42.818321>,  <32.885681, 29.722931, 42.698307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728104, 29.858454, 42.818321>,  <32.465477, 30.084326, 43.018341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728104, 29.858454, 42.818321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132548, -0.566270, 0.813492,
		-0.742528, -0.600395, -0.296948,
		0.656569, -0.564681, -0.500053,
		32.925076, 29.689049, 42.668304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353981, 29.372534, 43.161709>,  <32.465477, 30.084326, 43.018341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353981, 29.372534, 43.161709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744049, 29.372078, 43.073128>,  <32.978088, 29.371805, 43.019978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744049, 29.372078, 43.073128>,  <32.353981, 29.372534, 43.161709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744049, 29.372078, 43.073128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184525, -0.548730, 0.815381,
		-0.122444, -0.835999, -0.534895,
		0.975171, -0.001137, -0.221452,
		33.036602, 29.371737, 43.006691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544987, 28.767902, 43.300259>,  <32.353981, 29.372534, 43.161709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544987, 28.767902, 43.300259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899193, 28.953693, 43.304665>,  <33.111717, 29.065168, 43.307308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899193, 28.953693, 43.304665>,  <32.544987, 28.767902, 43.300259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899193, 28.953693, 43.304665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285982, -0.563604, 0.774961,
		0.366161, -0.683090, -0.631913,
		0.885517, 0.464476, 0.011018,
		33.164848, 29.093037, 43.307972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981312, 28.220205, 43.375534>,  <32.544987, 28.767902, 43.300259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981312, 28.220205, 43.375534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166813, 28.550983, 43.502716>,  <33.278114, 28.749451, 43.579025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166813, 28.550983, 43.502716>,  <32.981312, 28.220205, 43.375534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166813, 28.550983, 43.502716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394089, -0.513959, 0.761932,
		0.793492, -0.228045, -0.564239,
		0.463751, 0.826947, 0.317953,
		33.305939, 28.799068, 43.598103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686840, 28.004770, 43.552010>,  <32.981312, 28.220205, 43.375534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686840, 28.004770, 43.552010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628513, 28.339817, 43.762585>,  <33.593517, 28.540846, 43.888927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628513, 28.339817, 43.762585>,  <33.686840, 28.004770, 43.552010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628513, 28.339817, 43.762585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228546, -0.489208, 0.841690,
		0.962551, 0.243049, -0.120099,
		-0.145818, 0.837617, 0.526435,
		33.584766, 28.591103, 43.920517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339500, 28.168541, 44.069096>,  <33.686840, 28.004770, 43.552010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339500, 28.168541, 44.069096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009197, 28.331789, 44.224823>,  <33.811016, 28.429737, 44.318260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009197, 28.331789, 44.224823>,  <34.339500, 28.168541, 44.069096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009197, 28.331789, 44.224823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189720, -0.449045, 0.873135,
		0.531164, 0.794857, 0.293373,
		-0.825755, 0.408119, 0.389317,
		33.761471, 28.454226, 44.341618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203011, 28.372002, 44.300777>,  <34.339500, 28.168541, 44.069096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203011, 28.372002, 44.300777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579498, 28.246696, 44.351337>,  <35.805389, 28.171513, 44.381676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579498, 28.246696, 44.351337>,  <35.203011, 28.372002, 44.300777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579498, 28.246696, 44.351337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218263, 0.278363, -0.935348,
		0.257825, 0.907954, 0.330374,
		0.941216, -0.313264, 0.126403,
		35.861862, 28.152718, 44.389259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666634, 28.888050, 43.951363>,  <35.203011, 28.372002, 44.300777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666634, 28.888050, 43.951363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848461, 28.532091, 43.966591>,  <35.957558, 28.318516, 43.975727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848461, 28.532091, 43.966591>,  <35.666634, 28.888050, 43.951363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848461, 28.532091, 43.966591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169695, 0.044562, -0.984489,
		0.874398, 0.453978, 0.171268,
		0.454568, -0.889898, 0.038072,
		35.984833, 28.265121, 43.978012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214504, 29.052578, 43.546734>,  <35.666634, 28.888050, 43.951363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214504, 29.052578, 43.546734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178741, 28.654980, 43.571953>,  <36.157284, 28.416420, 43.587082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178741, 28.654980, 43.571953>,  <36.214504, 29.052578, 43.546734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178741, 28.654980, 43.571953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136814, -0.074954, -0.987757,
		0.986553, -0.079689, 0.142695,
		-0.089409, -0.993998, 0.063044,
		36.151920, 28.356781, 43.590866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829674, 28.725689, 43.258060>,  <36.214504, 29.052578, 43.546734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829674, 28.725689, 43.258060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542583, 28.449799, 43.219799>,  <36.370331, 28.284264, 43.196842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542583, 28.449799, 43.219799>,  <36.829674, 28.725689, 43.258060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542583, 28.449799, 43.219799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166710, -0.036824, -0.985318,
		0.676079, -0.723132, 0.141413,
		-0.717722, -0.689727, -0.095658,
		36.327267, 28.242880, 43.191101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202351, 28.187078, 42.790558>,  <36.829674, 28.725689, 43.258060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202351, 28.187078, 42.790558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804958, 28.144064, 42.805737>,  <36.566525, 28.118256, 42.814842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804958, 28.144064, 42.805737>,  <37.202351, 28.187078, 42.790558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804958, 28.144064, 42.805737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031791, -0.058382, -0.997788,
		0.109518, -0.992485, 0.054583,
		-0.993476, -0.107540, 0.037946,
		36.506916, 28.111803, 42.817120>
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
