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
	<35.798725, 51.908176, 49.892525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092518, 52.179615, 49.895363>,  <36.268791, 52.342476, 49.897064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092518, 52.179615, 49.895363>,  <35.798725, 51.908176, 49.892525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092518, 52.179615, 49.895363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066909, 0.062010, 0.995830,
		0.675324, -0.731892, 0.090949,
		0.734480, 0.678594, 0.007094,
		36.312862, 52.383194, 49.897491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455441, 51.659107, 50.084225>,  <35.798725, 51.908176, 49.892525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455441, 51.659107, 50.084225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477348, 52.044174, 50.190258>,  <36.490494, 52.275215, 50.253876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477348, 52.044174, 50.190258>,  <36.455441, 51.659107, 50.084225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477348, 52.044174, 50.190258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056027, -0.268022, 0.961782,
		0.996926, -0.037822, -0.068614,
		0.054766, 0.962670, 0.265079,
		36.493778, 52.332973, 50.269783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709766, 50.939327, 50.211857>,  <36.455441, 51.659107, 50.084225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709766, 50.939327, 50.211857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917042, 51.169285, 50.465149>,  <37.041409, 51.307259, 50.617123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917042, 51.169285, 50.465149>,  <36.709766, 50.939327, 50.211857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917042, 51.169285, 50.465149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569707, -0.784236, 0.245782,
		0.637897, 0.233392, -0.733904,
		0.518191, 0.574894, 0.633226,
		37.072498, 51.341751, 50.655117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574024, 50.932991, 50.191673>,  <36.709766, 50.939327, 50.211857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574024, 50.932991, 50.191673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407665, 50.989487, 50.551025>,  <37.307850, 51.023384, 50.766636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407665, 50.989487, 50.551025>,  <37.574024, 50.932991, 50.191673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407665, 50.989487, 50.551025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384091, -0.868154, 0.314297,
		0.824318, 0.475774, 0.306819,
		-0.415900, 0.141235, 0.898376,
		37.282894, 51.031857, 50.820538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630497, 51.598919, 50.494217>,  <37.574024, 50.932991, 50.191673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630497, 51.598919, 50.494217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979576, 51.782341, 50.561302>,  <38.189022, 51.892395, 50.601555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979576, 51.782341, 50.561302>,  <37.630497, 51.598919, 50.494217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979576, 51.782341, 50.561302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476409, 0.874927, 0.086819,
		-0.106925, -0.155667, 0.982005,
		0.872698, 0.458553, 0.167713,
		38.241386, 51.919907, 50.611614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096092, 51.855492, 49.936634>,  <37.630497, 51.598919, 50.494217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096092, 51.855492, 49.936634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919117, 52.037407, 49.627464>,  <37.812931, 52.146557, 49.441963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919117, 52.037407, 49.627464>,  <38.096092, 51.855492, 49.936634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919117, 52.037407, 49.627464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864065, -0.014547, -0.503169,
		-0.240081, -0.890479, -0.386533,
		-0.442439, 0.454791, -0.772925,
		37.786385, 52.173843, 49.395588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156204, 51.576103, 49.234360>,  <38.096092, 51.855492, 49.936634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156204, 51.576103, 49.234360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120373, 51.971573, 49.282532>,  <38.098873, 52.208855, 49.311436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120373, 51.971573, 49.282532>,  <38.156204, 51.576103, 49.234360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120373, 51.971573, 49.282532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973563, 0.112426, -0.198836,
		-0.210123, 0.099433, -0.972605,
		-0.089576, 0.988673, 0.120428,
		38.093498, 52.268173, 49.318661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160957, 51.965008, 48.524849>,  <38.156204, 51.576103, 49.234360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160957, 51.965008, 48.524849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310734, 52.108635, 48.866810>,  <38.400600, 52.194813, 49.071987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310734, 52.108635, 48.866810>,  <38.160957, 51.965008, 48.524849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310734, 52.108635, 48.866810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920681, -0.034430, -0.388793,
		-0.110170, 0.932676, -0.343480,
		0.374444, 0.359069, 0.854904,
		38.423065, 52.216354, 49.123280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748768, 52.395306, 48.313339>,  <38.160957, 51.965008, 48.524849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748768, 52.395306, 48.313339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785969, 52.291950, 48.697960>,  <38.808289, 52.229939, 48.928734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785969, 52.291950, 48.697960>,  <38.748768, 52.395306, 48.313339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785969, 52.291950, 48.697960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995590, 0.012251, -0.093005,
		0.012251, 0.965964, 0.258384,
		0.093005, -0.258384, 0.961555,
		38.813869, 52.214436, 48.986427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163479, 52.902393, 48.765327>,  <38.748768, 52.395306, 48.313339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163479, 52.902393, 48.765327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200726, 52.512985, 48.848835>,  <39.223072, 52.279339, 48.898941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200726, 52.512985, 48.848835>,  <39.163479, 52.902393, 48.765327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200726, 52.512985, 48.848835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962349, 0.034223, -0.269653,
		0.255368, 0.226019, 0.940055,
		0.093118, -0.973521, 0.208770,
		39.228661, 52.220928, 48.911465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751514, 52.708530, 49.122490>,  <39.163479, 52.902393, 48.765327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751514, 52.708530, 49.122490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675850, 52.357605, 48.946060>,  <39.630451, 52.147049, 48.840202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675850, 52.357605, 48.946060>,  <39.751514, 52.708530, 49.122490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675850, 52.357605, 48.946060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980476, -0.144176, -0.133719,
		0.053721, -0.457756, 0.887453,
		-0.189160, -0.877310, -0.441074,
		39.619102, 52.094414, 48.813740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746662, 53.414513, 49.246754>,  <39.751514, 52.708530, 49.122490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746662, 53.414513, 49.246754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716537, 53.127190, 49.523407>,  <39.698463, 52.954796, 49.689400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716537, 53.127190, 49.523407>,  <39.746662, 53.414513, 49.246754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716537, 53.127190, 49.523407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901803, -0.345055, -0.260170,
		0.425535, 0.604127, 0.673759,
		-0.075308, -0.718309, 0.691636,
		39.693947, 52.911697, 49.730896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341328, 53.424736, 49.721115>,  <39.746662, 53.414513, 49.246754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341328, 53.424736, 49.721115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208061, 53.047646, 49.714554>,  <40.128101, 52.821392, 49.710617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208061, 53.047646, 49.714554>,  <40.341328, 53.424736, 49.721115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208061, 53.047646, 49.714554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942246, -0.332258, -0.042169,
		0.034303, -0.029506, 0.998976,
		-0.333162, -0.942727, -0.016404,
		40.108112, 52.764828, 49.709633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596676, 53.001484, 50.308605>,  <40.341328, 53.424736, 49.721115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596676, 53.001484, 50.308605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556782, 52.831429, 49.948761>,  <40.532845, 52.729393, 49.732853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556782, 52.831429, 49.948761>,  <40.596676, 53.001484, 50.308605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556782, 52.831429, 49.948761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971868, -0.235500, 0.003543,
		-0.213366, -0.873953, 0.436670,
		-0.099740, -0.425141, -0.899615,
		40.526859, 52.703888, 49.678875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788986, 52.204128, 50.294891>,  <40.596676, 53.001484, 50.308605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788986, 52.204128, 50.294891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838974, 52.391853, 49.945232>,  <40.868965, 52.504486, 49.735435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838974, 52.391853, 49.945232>,  <40.788986, 52.204128, 50.294891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838974, 52.391853, 49.945232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991876, -0.080208, 0.098734,
		-0.023777, -0.879384, -0.475520,
		0.124965, 0.469309, -0.874147,
		40.876465, 52.532646, 49.682987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241142, 51.734108, 49.760609>,  <40.788986, 52.204128, 50.294891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241142, 51.734108, 49.760609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276829, 52.118000, 49.654064>,  <41.298241, 52.348335, 49.590137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276829, 52.118000, 49.654064>,  <41.241142, 51.734108, 49.760609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276829, 52.118000, 49.654064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994788, -0.099116, -0.023927,
		-0.049365, -0.262841, -0.963575,
		0.089217, 0.959735, -0.266364,
		41.303593, 52.405922, 49.574154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568802, 51.888847, 49.041794>,  <41.241142, 51.734108, 49.760609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568802, 51.888847, 49.041794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644119, 52.169464, 49.316715>,  <41.689312, 52.337833, 49.481667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644119, 52.169464, 49.316715>,  <41.568802, 51.888847, 49.041794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644119, 52.169464, 49.316715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958356, -0.284240, 0.027572,
		0.214701, 0.653487, -0.725850,
		0.188298, 0.701543, 0.687300,
		41.700607, 52.379929, 49.522903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946495, 52.495979, 48.660625>,  <41.568802, 51.888847, 49.041794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946495, 52.495979, 48.660625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011517, 52.428757, 49.049538>,  <42.050529, 52.388424, 49.282887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011517, 52.428757, 49.049538>,  <41.946495, 52.495979, 48.660625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011517, 52.428757, 49.049538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980247, -0.085001, -0.178577,
		0.112656, 0.982106, 0.150920,
		0.162553, -0.168057, 0.972283,
		42.060284, 52.378338, 49.341221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346806, 53.067749, 49.122440>,  <41.946495, 52.495979, 48.660625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346806, 53.067749, 49.122440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409096, 52.688862, 49.234535>,  <42.446468, 52.461529, 49.301792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409096, 52.688862, 49.234535>,  <42.346806, 53.067749, 49.122440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409096, 52.688862, 49.234535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985940, 0.166450, 0.014729,
		-0.060597, 0.274005, 0.959817,
		0.155726, -0.947215, 0.280239,
		42.455814, 52.404697, 49.318607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829990, 53.015476, 49.797215>,  <42.346806, 53.067749, 49.122440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829990, 53.015476, 49.797215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877033, 52.715111, 49.537277>,  <42.905258, 52.534893, 49.381313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877033, 52.715111, 49.537277>,  <42.829990, 53.015476, 49.797215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877033, 52.715111, 49.537277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992956, 0.098427, 0.065963,
		0.014429, -0.653024, 0.757200,
		0.117604, -0.750914, -0.649844,
		42.912315, 52.489838, 49.342323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395287, 52.621902, 50.173641>,  <42.829990, 53.015476, 49.797215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395287, 52.621902, 50.173641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361843, 52.561924, 49.779579>,  <43.341778, 52.525936, 49.543144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361843, 52.561924, 49.779579>,  <43.395287, 52.621902, 50.173641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361843, 52.561924, 49.779579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996089, 0.015798, -0.086940,
		0.028599, -0.988568, 0.148036,
		-0.083607, -0.149944, -0.985153,
		43.336761, 52.516941, 49.484032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788643, 52.022133, 50.005905>,  <43.395287, 52.621902, 50.173641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788643, 52.022133, 50.005905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777576, 52.286129, 49.705597>,  <43.770935, 52.444527, 49.525414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777576, 52.286129, 49.705597>,  <43.788643, 52.022133, 50.005905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777576, 52.286129, 49.705597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999209, -0.003219, -0.039650,
		-0.028585, -0.751270, -0.659376,
		-0.027665, 0.659988, -0.750767,
		43.769276, 52.484127, 49.480366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446301, 52.321686, 50.231781>,  <43.788643, 52.022133, 50.005905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446301, 52.321686, 50.231781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459850, 52.195599, 50.611145>,  <44.467979, 52.119946, 50.838764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459850, 52.195599, 50.611145>,  <44.446301, 52.321686, 50.231781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459850, 52.195599, 50.611145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999411, 0.005481, -0.033879,
		0.005481, 0.949002, 0.315221,
		0.033879, -0.315221, 0.948413,
		44.470013, 52.101032, 50.895668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990501, 52.669140, 50.534370>,  <44.446301, 52.321686, 50.231781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990501, 52.669140, 50.534370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896912, 52.378387, 50.792641>,  <44.840759, 52.203938, 50.947605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896912, 52.378387, 50.792641>,  <44.990501, 52.669140, 50.534370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896912, 52.378387, 50.792641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925239, 0.037531, 0.377525,
		-0.298648, 0.685739, 0.663756,
		-0.233972, -0.726880, 0.645680,
		44.826721, 52.160324, 50.986343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087524, 52.936596, 51.108803>,  <44.990501, 52.669140, 50.534370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087524, 52.936596, 51.108803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148338, 52.542362, 51.138515>,  <45.184826, 52.305824, 51.156342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148338, 52.542362, 51.138515>,  <45.087524, 52.936596, 51.108803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148338, 52.542362, 51.138515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908337, 0.168949, 0.382596,
		-0.389629, 0.009303, 0.920925,
		0.152030, -0.985581, 0.074278,
		45.193947, 52.246689, 51.160797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159218, 52.740891, 51.841469>,  <45.087524, 52.936596, 51.108803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159218, 52.740891, 51.841469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366150, 52.484245, 51.614948>,  <45.490311, 52.330257, 51.479034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366150, 52.484245, 51.614948>,  <45.159218, 52.740891, 51.841469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366150, 52.484245, 51.614948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825685, 0.200260, 0.527390,
		-0.224975, -0.740421, 0.633374,
		0.517330, -0.641617, -0.566301,
		45.521347, 52.291759, 51.445057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.826286, 52.591755, 52.173504>,  <45.159218, 52.740891, 51.841469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.826286, 52.591755, 52.173504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875889, 52.466087, 51.797012>,  <45.905651, 52.390686, 51.571117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875889, 52.466087, 51.797012>,  <45.826286, 52.591755, 52.173504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875889, 52.466087, 51.797012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966477, 0.253156, 0.042834,
		0.224822, -0.914992, 0.335029,
		0.124008, -0.314168, -0.941234,
		45.913090, 52.371838, 51.514641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.438400, 52.176289, 52.057835>,  <45.826286, 52.591755, 52.173504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.438400, 52.176289, 52.057835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345238, 52.377346, 51.724823>,  <46.289341, 52.497978, 51.525017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345238, 52.377346, 51.724823>,  <46.438400, 52.176289, 52.057835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.345238, 52.377346, 51.724823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946705, 0.313042, -0.075853,
		0.222490, -0.805828, -0.548762,
		-0.232910, 0.502639, -0.832530,
		46.275364, 52.528137, 51.475063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.814312, 51.955750, 51.488113>,  <46.438400, 52.176289, 52.057835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.814312, 51.955750, 51.488113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.707893, 52.334785, 51.417358>,  <46.644043, 52.562206, 51.374905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.707893, 52.334785, 51.417358>,  <46.814312, 51.955750, 51.488113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.707893, 52.334785, 51.417358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954665, 0.284430, 0.087830,
		0.133538, -0.145497, -0.980305,
		-0.266049, 0.947592, -0.176883,
		46.628078, 52.619064, 51.364292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.269527, 52.274578, 50.912155>,  <46.814312, 51.955750, 51.488113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.269527, 52.274578, 50.912155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.129841, 52.549934, 51.166451>,  <47.046028, 52.715149, 51.319027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.129841, 52.549934, 51.166451>,  <47.269527, 52.274578, 50.912155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.129841, 52.549934, 51.166451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895785, 0.444354, 0.010907,
		-0.274983, 0.573291, -0.771830,
		-0.349219, 0.688395, 0.635735,
		47.025074, 52.756454, 51.357170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.630531, 52.841846, 50.845551>,  <47.269527, 52.274578, 50.912155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.630531, 52.841846, 50.845551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479897, 52.889053, 51.213085>,  <47.389515, 52.917377, 51.433605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479897, 52.889053, 51.213085>,  <47.630531, 52.841846, 50.845551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.479897, 52.889053, 51.213085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925168, 0.098635, 0.366517,
		-0.047373, 0.988100, -0.146333,
		-0.376589, 0.118020, 0.918832,
		47.366920, 52.924458, 51.488735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.996994, 53.427765, 51.233875>,  <47.630531, 52.841846, 50.845551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.996994, 53.427765, 51.233875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.849953, 53.144112, 51.474541>,  <47.761730, 52.973919, 51.618942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.849953, 53.144112, 51.474541>,  <47.996994, 53.427765, 51.233875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.849953, 53.144112, 51.474541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921201, -0.188945, 0.340131,
		-0.127516, 0.679287, 0.722710,
		-0.367599, -0.709133, 0.601666,
		47.739674, 52.931374, 51.655041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.114864, 53.684288, 51.933048>,  <47.996994, 53.427765, 51.233875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.114864, 53.684288, 51.933048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.116409, 53.289036, 51.871620>,  <48.117336, 53.051884, 51.834763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.116409, 53.289036, 51.871620>,  <48.114864, 53.684288, 51.933048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.116409, 53.289036, 51.871620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956475, -0.041162, 0.288895,
		-0.291787, -0.148002, 0.944963,
		0.003860, -0.988130, -0.153571,
		48.117569, 52.992596, 51.825550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.245560, 53.331409, 52.644917>,  <48.114864, 53.684288, 51.933048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.245560, 53.331409, 52.644917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.388546, 53.129208, 52.330799>,  <48.474339, 53.007885, 52.142330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.388546, 53.129208, 52.330799>,  <48.245560, 53.331409, 52.644917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.388546, 53.129208, 52.330799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875997, -0.110044, 0.469594,
		-0.323800, -0.855777, 0.403485,
		0.357467, -0.505506, -0.785290,
		48.495785, 52.977554, 52.095211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.362801, 52.625656, 52.828876>,  <48.245560, 53.331409, 52.644917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.362801, 52.625656, 52.828876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.607475, 52.797897, 52.563423>,  <48.754280, 52.901241, 52.404152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.607475, 52.797897, 52.563423>,  <48.362801, 52.625656, 52.828876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.607475, 52.797897, 52.563423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767491, -0.119619, 0.629800,
		0.191810, -0.894579, -0.403654,
		0.611691, 0.430603, -0.663637,
		48.790981, 52.927078, 52.364330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.050003, 52.252102, 52.611076>,  <48.362801, 52.625656, 52.828876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.050003, 52.252102, 52.611076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.042404, 52.650108, 52.650234>,  <49.037846, 52.888912, 52.673729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.042404, 52.650108, 52.650234>,  <49.050003, 52.252102, 52.611076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.042404, 52.650108, 52.650234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745859, -0.051101, 0.664141,
		0.665833, 0.085628, -0.741171,
		-0.018994, 0.995016, 0.097891,
		49.036705, 52.948612, 52.679600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.741737, 52.445225, 52.711281>,  <49.050003, 52.252102, 52.611076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.741737, 52.445225, 52.711281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.491638, 52.714592, 52.869049>,  <49.341579, 52.876213, 52.963711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.491638, 52.714592, 52.869049>,  <49.741737, 52.445225, 52.711281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.491638, 52.714592, 52.869049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581897, 0.065489, 0.810622,
		0.520058, 0.736355, -0.432807,
		-0.625249, 0.673419, 0.394424,
		49.304062, 52.916618, 52.987377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.207508, 52.917400, 53.025921>,  <49.741737, 52.445225, 52.711281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.207508, 52.917400, 53.025921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.849125, 52.971104, 53.195263>,  <49.634094, 53.003326, 53.296867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.849125, 52.971104, 53.195263>,  <50.207508, 52.917400, 53.025921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.849125, 52.971104, 53.195263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440506, 0.146968, 0.885638,
		0.056684, 0.979987, -0.190819,
		-0.895958, 0.134259, 0.423360,
		49.580338, 53.011383, 53.322269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.109406, 53.629910, 53.399368>,  <50.207508, 52.917400, 53.025921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.109406, 53.629910, 53.399368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.906303, 53.320145, 53.550346>,  <49.784443, 53.134285, 53.640934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.906303, 53.320145, 53.550346>,  <50.109406, 53.629910, 53.399368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.906303, 53.320145, 53.550346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591491, 0.005159, 0.806295,
		-0.626354, 0.632657, 0.455440,
		-0.507759, -0.774415, 0.377442,
		49.753975, 53.087822, 53.663578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.121994, 53.683365, 54.185669>,  <50.109406, 53.629910, 53.399368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.121994, 53.683365, 54.185669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.134518, 53.299625, 54.073479>,  <50.142033, 53.069382, 54.006165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.134518, 53.299625, 54.073479>,  <50.121994, 53.683365, 54.185669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.134518, 53.299625, 54.073479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613198, -0.203166, 0.763356,
		-0.789309, -0.195889, 0.581910,
		0.031309, -0.959349, -0.280479,
		50.143909, 53.011822, 53.989334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.674316, 53.056671, 54.560280>,  <50.121994, 53.683365, 54.185669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.674316, 53.056671, 54.560280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.045280, 53.063889, 54.410831>,  <50.267857, 53.068218, 54.321163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.045280, 53.063889, 54.410831>,  <49.674316, 53.056671, 54.560280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.045280, 53.063889, 54.410831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354649, 0.275132, 0.893603,
		0.118921, -0.961237, 0.248759,
		0.927406, 0.018046, -0.373620,
		50.323502, 53.069302, 54.298744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.174416, 52.629742, 54.939739>,  <49.674316, 53.056671, 54.560280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.174416, 52.629742, 54.939739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.362728, 52.945408, 54.781967>,  <50.475716, 53.134808, 54.687302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.362728, 52.945408, 54.781967>,  <50.174416, 52.629742, 54.939739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.362728, 52.945408, 54.781967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282100, 0.288955, 0.914835,
		0.835934, -0.541955, -0.086591,
		0.470779, 0.789170, -0.394434,
		50.503963, 53.182159, 54.663635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.865692, 52.732220, 55.231499>,  <50.174416, 52.629742, 54.939739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.865692, 52.732220, 55.231499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.744366, 53.097404, 55.122322>,  <50.671570, 53.316517, 55.056816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.744366, 53.097404, 55.122322>,  <50.865692, 52.732220, 55.231499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.744366, 53.097404, 55.122322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119368, 0.320587, 0.939668,
		0.945383, 0.252437, -0.206219,
		-0.303318, 0.912962, -0.272944,
		50.653370, 53.371292, 55.040440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.336533, 53.215851, 55.467434>,  <50.865692, 52.732220, 55.231499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.336533, 53.215851, 55.467434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.972092, 53.380096, 55.453079>,  <50.753426, 53.478642, 55.444466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.972092, 53.380096, 55.453079>,  <51.336533, 53.215851, 55.467434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.972092, 53.380096, 55.453079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000864, 0.085171, 0.996366,
		0.412174, 0.907825, -0.077245,
		-0.911105, 0.410610, -0.035890,
		50.698761, 53.503281, 55.442310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.264233, 53.910172, 55.847790>,  <51.336533, 53.215851, 55.467434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.264233, 53.910172, 55.847790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.919315, 53.707954, 55.835999>,  <50.712364, 53.586624, 55.828922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.919315, 53.707954, 55.835999>,  <51.264233, 53.910172, 55.847790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.919315, 53.707954, 55.835999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119783, 0.147055, 0.981849,
		-0.492034, 0.850176, -0.187360,
		-0.862296, -0.505545, -0.029481,
		50.660625, 53.556290, 55.827156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.680004, 54.512733, 55.697372>,  <51.264233, 53.910172, 55.847790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.680004, 54.512733, 55.697372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.969814, 54.784851, 55.653069>,  <52.143700, 54.948120, 55.626488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.969814, 54.784851, 55.653069>,  <51.680004, 54.512733, 55.697372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.969814, 54.784851, 55.653069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622899, -0.577472, 0.527753,
		0.295068, -0.451360, -0.842145,
		0.724522, 0.680295, -0.110759,
		52.187172, 54.988941, 55.619843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.272243, 54.230850, 55.266563>,  <51.680004, 54.512733, 55.697372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.272243, 54.230850, 55.266563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.386719, 54.537373, 55.496651>,  <52.455402, 54.721287, 55.634701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.386719, 54.537373, 55.496651>,  <52.272243, 54.230850, 55.266563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.386719, 54.537373, 55.496651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630222, -0.602737, 0.489417,
		0.721747, 0.222450, -0.655436,
		0.286184, 0.766306, 0.575217,
		52.472572, 54.767265, 55.669216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.995457, 54.311417, 55.342274>,  <52.272243, 54.230850, 55.266563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.995457, 54.311417, 55.342274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.835629, 54.465630, 55.674950>,  <52.739731, 54.558159, 55.874554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.835629, 54.465630, 55.674950>,  <52.995457, 54.311417, 55.342274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.835629, 54.465630, 55.674950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537947, -0.636004, 0.553275,
		0.742262, 0.668478, 0.046734,
		-0.399575, 0.385535, 0.831687,
		52.715755, 54.581291, 55.924458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.647064, 54.655521, 55.794731>,  <52.995457, 54.311417, 55.342274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.647064, 54.655521, 55.794731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.306480, 54.503639, 55.939415>,  <53.102127, 54.412510, 56.026226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.306480, 54.503639, 55.939415>,  <53.647064, 54.655521, 55.794731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.306480, 54.503639, 55.939415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524192, -0.636268, 0.566026,
		0.015221, 0.671556, 0.740797,
		-0.851464, -0.379704, 0.361709,
		53.051041, 54.389729, 56.047928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.125629, 54.851608, 56.267845>,  <53.647064, 54.655521, 55.794731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.125629, 54.851608, 56.267845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.408119, 54.974342, 56.012627>,  <54.577614, 55.047981, 55.859497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.408119, 54.974342, 56.012627>,  <54.125629, 54.851608, 56.267845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.408119, 54.974342, 56.012627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643832, 0.096530, 0.759054,
		0.294494, -0.946855, -0.129378,
		0.706225, 0.306834, -0.638043,
		54.619987, 55.066391, 55.821213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.699287, 54.385277, 56.248016>,  <54.125629, 54.851608, 56.267845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.699287, 54.385277, 56.248016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.797798, 54.761864, 56.155945>,  <54.856907, 54.987816, 56.100700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.797798, 54.761864, 56.155945>,  <54.699287, 54.385277, 56.248016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.797798, 54.761864, 56.155945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712723, -0.014985, 0.701286,
		0.656789, -0.336768, -0.674697,
		0.246281, 0.941469, -0.230180,
		54.871681, 55.044304, 56.086891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.352226, 54.226658, 56.129269>,  <54.699287, 54.385277, 56.248016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.352226, 54.226658, 56.129269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.311913, 54.606659, 56.247482>,  <55.287724, 54.834660, 56.318409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.311913, 54.606659, 56.247482>,  <55.352226, 54.226658, 56.129269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.311913, 54.606659, 56.247482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653014, -0.160942, 0.740048,
		0.750610, 0.267569, -0.604145,
		-0.100782, 0.950002, 0.295531,
		55.281677, 54.891659, 56.336140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.945282, 54.592255, 56.058552>,  <55.352226, 54.226658, 56.129269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.945282, 54.592255, 56.058552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.720428, 54.716267, 56.365250>,  <55.585518, 54.790672, 56.549267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.720428, 54.716267, 56.365250>,  <55.945282, 54.592255, 56.058552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.720428, 54.716267, 56.365250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635694, -0.431084, 0.640359,
		0.529058, 0.847378, 0.045244,
		-0.562130, 0.310026, 0.766742,
		55.551788, 54.809273, 56.595272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.378731, 55.122112, 55.649075>,  <55.945282, 54.592255, 56.058552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.378731, 55.122112, 55.649075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.535484, 54.880405, 55.371574>,  <56.629536, 54.735382, 55.205074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.535484, 54.880405, 55.371574>,  <56.378731, 55.122112, 55.649075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.535484, 54.880405, 55.371574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917753, 0.203935, 0.340794,
		-0.064451, -0.770242, 0.634486,
		0.391888, -0.604266, -0.693748,
		56.653049, 54.699127, 55.163448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.780384, 54.554577, 55.919415>,  <56.378731, 55.122112, 55.649075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.780384, 54.554577, 55.919415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.917618, 54.702797, 55.574165>,  <56.999958, 54.791729, 55.367016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.917618, 54.702797, 55.574165>,  <56.780384, 54.554577, 55.919415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.917618, 54.702797, 55.574165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881773, 0.189589, 0.431893,
		0.323678, -0.909256, -0.261698,
		0.343086, 0.370553, -0.863124,
		57.020542, 54.813961, 55.315228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.399162, 54.200745, 55.774944>,  <56.780384, 54.554577, 55.919415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.399162, 54.200745, 55.774944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.424484, 54.548824, 55.579498>,  <57.439678, 54.757671, 55.462231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.424484, 54.548824, 55.579498>,  <57.399162, 54.200745, 55.774944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.424484, 54.548824, 55.579498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890877, 0.171396, 0.420668,
		0.449812, -0.461926, -0.764391,
		0.063303, 0.870200, -0.488615,
		57.443474, 54.809883, 55.432915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.128368, 54.318104, 55.566879>,  <57.399162, 54.200745, 55.774944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.128368, 54.318104, 55.566879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.940628, 54.671303, 55.564545>,  <57.827984, 54.883221, 55.563145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.940628, 54.671303, 55.564545>,  <58.128368, 54.318104, 55.566879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.940628, 54.671303, 55.564545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731433, 0.392477, 0.557644,
		0.494689, 0.257457, -0.830060,
		-0.469349, 0.882993, -0.005841,
		57.799824, 54.936199, 55.562794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.629261, 54.799175, 55.368649>,  <58.128368, 54.318104, 55.566879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.629261, 54.799175, 55.368649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.331734, 54.927284, 55.603310>,  <58.153217, 55.004150, 55.744106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.331734, 54.927284, 55.603310>,  <58.629261, 54.799175, 55.368649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.331734, 54.927284, 55.603310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668017, 0.327049, 0.668425,
		0.022213, 0.889080, -0.457212,
		-0.743814, 0.320273, 0.586657,
		58.108589, 55.023365, 55.779308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.566265, 55.585033, 55.436947>,  <58.629261, 54.799175, 55.368649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.566265, 55.585033, 55.436947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.474442, 55.349892, 55.747231>,  <58.419346, 55.208809, 55.933403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.474442, 55.349892, 55.747231>,  <58.566265, 55.585033, 55.436947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.474442, 55.349892, 55.747231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683248, 0.470273, 0.558583,
		-0.693161, 0.658235, 0.293691,
		-0.229563, -0.587852, 0.775713,
		58.405571, 55.173534, 55.979946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.171638, 55.836712, 55.517097>,  <58.566265, 55.585033, 55.436947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.171638, 55.836712, 55.517097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.021774, 55.637482, 55.829903>,  <58.931854, 55.517944, 56.017586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.021774, 55.637482, 55.829903>,  <59.171638, 55.836712, 55.517097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.021774, 55.637482, 55.829903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827895, 0.199989, 0.524017,
		-0.417395, 0.843756, 0.337427,
		-0.374661, -0.498077, 0.782016,
		58.909374, 55.488060, 56.064507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.613415, 56.289680, 55.709965>,  <59.171638, 55.836712, 55.517097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.613415, 56.289680, 55.709965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.968590, 56.367317, 55.876770>,  <60.181694, 56.413898, 55.976852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.968590, 56.367317, 55.876770>,  <59.613415, 56.289680, 55.709965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.968590, 56.367317, 55.876770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044907, 0.938862, -0.341352,
		-0.457767, 0.284372, 0.842367,
		0.887937, 0.194088, 0.417010,
		60.234970, 56.425545, 56.001873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.112286, 56.960003, 55.805210>,  <59.613415, 56.289680, 55.709965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.112286, 56.960003, 55.805210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.971458, 56.827072, 56.155205>,  <59.886963, 56.747314, 56.365204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.971458, 56.827072, 56.155205>,  <60.112286, 56.960003, 55.805210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.971458, 56.827072, 56.155205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286567, 0.851676, 0.438779,
		-0.891027, 0.405222, -0.204611,
		-0.352065, -0.332330, 0.874990,
		59.865837, 56.727375, 56.417702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.272034, 57.623055, 55.621063>,  <60.112286, 56.960003, 55.805210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.272034, 57.623055, 55.621063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.362892, 57.934959, 55.854431>,  <60.417408, 58.122101, 55.994453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.362892, 57.934959, 55.854431>,  <60.272034, 57.623055, 55.621063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.362892, 57.934959, 55.854431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892290, -0.406648, 0.196100,
		0.390158, 0.476037, -0.788141,
		0.227145, 0.779760, 0.583420,
		60.431034, 58.168888, 56.029457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.916630, 57.789902, 55.503933>,  <60.272034, 57.623055, 55.621063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.916630, 57.789902, 55.503933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.818359, 57.909866, 55.872650>,  <60.759399, 57.981846, 56.093880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.818359, 57.909866, 55.872650>,  <60.916630, 57.789902, 55.503933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.818359, 57.909866, 55.872650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931057, -0.191642, 0.310494,
		0.269775, 0.934519, -0.232154,
		-0.245672, 0.299912, 0.921790,
		60.744659, 57.999840, 56.149189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.588215, 57.786030, 55.328011>,  <60.916630, 57.789902, 55.503933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.588215, 57.786030, 55.328011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.886665, 57.655972, 55.560417>,  <62.065735, 57.577934, 55.699860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.886665, 57.655972, 55.560417>,  <61.588215, 57.786030, 55.328011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.886665, 57.655972, 55.560417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114621, -0.796891, -0.593150,
		0.655869, 0.509159, -0.557309,
		0.746122, -0.325149, 0.581017,
		62.110500, 57.558426, 55.734722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.174778, 57.767231, 54.904915>,  <61.588215, 57.786030, 55.328011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.174778, 57.767231, 54.904915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.204758, 57.499775, 55.200836>,  <62.222744, 57.339302, 55.378387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.204758, 57.499775, 55.200836>,  <62.174778, 57.767231, 54.904915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.204758, 57.499775, 55.200836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252377, -0.705018, -0.662763,
		0.964722, 0.236381, 0.115910,
		0.074946, -0.668636, 0.739804,
		62.227242, 57.299183, 55.422779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.822651, 57.439491, 55.045105>,  <62.174778, 57.767231, 54.904915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.822651, 57.439491, 55.045105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.556000, 57.157639, 55.142349>,  <62.396011, 56.988525, 55.200695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.556000, 57.157639, 55.142349>,  <62.822651, 57.439491, 55.045105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.556000, 57.157639, 55.142349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407636, -0.617685, -0.672532,
		0.624055, -0.349225, 0.698997,
		-0.666625, -0.704633, 0.243113,
		62.356010, 56.946247, 55.215282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.180286, 56.892757, 55.282055>,  <62.822651, 57.439491, 55.045105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.180286, 56.892757, 55.282055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.835419, 56.762077, 55.127174>,  <62.628498, 56.683670, 55.034245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.835419, 56.762077, 55.127174>,  <63.180286, 56.892757, 55.282055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.835419, 56.762077, 55.127174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493714, -0.713201, -0.497585,
		-0.113590, -0.620171, 0.776199,
		-0.862174, -0.326700, -0.387200,
		62.576767, 56.664066, 55.011013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.838505, 56.887009, 55.128754>,  <63.180286, 56.892757, 55.282055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.838505, 56.887009, 55.128754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.115921, 56.599289, 55.112709>,  <64.282372, 56.426659, 55.103081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.115921, 56.599289, 55.112709>,  <63.838505, 56.887009, 55.128754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.115921, 56.599289, 55.112709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360642, -0.394854, 0.845001,
		-0.623648, -0.571576, -0.533258,
		0.693542, -0.719299, -0.040116,
		64.323982, 56.383499, 55.100674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.627674, 56.121578, 55.126461>,  <63.838505, 56.887009, 55.128754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.627674, 56.121578, 55.126461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.965858, 56.161442, 55.336327>,  <64.168770, 56.185360, 55.462246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.965858, 56.161442, 55.336327>,  <63.627674, 56.121578, 55.126461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.965858, 56.161442, 55.336327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464072, -0.349067, 0.814119,
		0.264275, -0.931784, -0.248873,
		0.845456, 0.099656, 0.524664,
		64.219498, 56.191338, 55.493725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.806248, 55.535908, 55.492867>,  <63.627674, 56.121578, 55.126461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.806248, 55.535908, 55.492867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.972862, 55.837177, 55.696526>,  <64.072830, 56.017941, 55.818722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.972862, 55.837177, 55.696526>,  <63.806248, 55.535908, 55.492867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.972862, 55.837177, 55.696526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422613, -0.335435, 0.841951,
		0.804922, -0.565870, 0.178582,
		0.416532, 0.753176, 0.509143,
		64.097824, 56.063129, 55.849270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.133171, 55.358776, 56.143314>,  <63.806248, 55.535908, 55.492867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.133171, 55.358776, 56.143314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.987778, 55.729031, 56.185410>,  <63.900543, 55.951183, 56.210667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.987778, 55.729031, 56.185410>,  <64.133171, 55.358776, 56.143314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.987778, 55.729031, 56.185410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479873, -0.282854, 0.830491,
		0.798501, 0.251369, 0.547001,
		-0.363481, 0.925639, 0.105233,
		63.878735, 56.006721, 56.216980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.162651, 55.446304, 56.793480>,  <64.133171, 55.358776, 56.143314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.162651, 55.446304, 56.793480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.897636, 55.716877, 56.664803>,  <63.738628, 55.879219, 56.587597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.897636, 55.716877, 56.664803>,  <64.162651, 55.446304, 56.793480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.897636, 55.716877, 56.664803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565987, -0.170794, 0.806528,
		0.490618, 0.716428, 0.496009,
		-0.662535, 0.676432, -0.321695,
		63.698875, 55.919807, 56.568295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.685577, 56.015099, 56.801296>,  <64.162651, 55.446304, 56.793480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.685577, 56.015099, 56.801296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.899185, 56.066391, 57.135574>,  <65.027351, 56.097164, 57.336140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.899185, 56.066391, 57.135574>,  <64.685577, 56.015099, 56.801296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.899185, 56.066391, 57.135574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104007, 0.990888, -0.085579,
		-0.839052, -0.041218, 0.542488,
		0.534018, 0.128228, 0.835693,
		65.059387, 56.104858, 57.386284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.281723, 56.492100, 57.283440>,  <64.685577, 56.015099, 56.801296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.281723, 56.492100, 57.283440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.673660, 56.515919, 57.359718>,  <64.908821, 56.530209, 57.405487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.673660, 56.515919, 57.359718>,  <64.281723, 56.492100, 57.283440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.673660, 56.515919, 57.359718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031561, 0.988699, -0.146555,
		-0.197273, 0.137582, 0.970646,
		0.979840, 0.059546, 0.190701,
		64.967613, 56.533783, 57.416927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.216270, 57.123966, 57.466061>,  <64.281723, 56.492100, 57.283440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.216270, 57.123966, 57.466061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.600891, 57.028027, 57.412537>,  <64.831665, 56.970463, 57.380421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.600891, 57.028027, 57.412537>,  <64.216270, 57.123966, 57.466061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.600891, 57.028027, 57.412537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212148, 0.958039, -0.192757,
		0.174430, 0.156956, 0.972080,
		0.961544, -0.239847, -0.133813,
		64.889351, 56.956074, 57.372395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.784996, 57.603962, 57.782681>,  <64.216270, 57.123966, 57.466061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.784996, 57.603962, 57.782681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.917442, 57.462772, 57.432648>,  <64.996910, 57.378059, 57.222630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.917442, 57.462772, 57.432648>,  <64.784996, 57.603962, 57.782681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.917442, 57.462772, 57.432648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086047, 0.934827, -0.344519,
		0.939655, 0.038781, 0.339917,
		0.331125, -0.352978, -0.875079,
		65.016777, 57.356880, 57.170124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.512009, 57.714703, 57.578907>,  <64.784996, 57.603962, 57.782681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.512009, 57.714703, 57.578907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.239731, 57.705063, 57.286034>,  <65.076363, 57.699280, 57.110310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.239731, 57.705063, 57.286034>,  <65.512009, 57.714703, 57.578907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.239731, 57.705063, 57.286034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039672, 0.996779, -0.069693,
		0.731500, -0.076486, -0.677538,
		-0.680686, -0.024101, -0.732179,
		65.035522, 57.697834, 57.066380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.876137, 58.029137, 57.015011>,  <65.512009, 57.714703, 57.578907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.876137, 58.029137, 57.015011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.478218, 58.064461, 56.994621>,  <65.239471, 58.085655, 56.982388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.478218, 58.064461, 56.994621>,  <65.876137, 58.029137, 57.015011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.478218, 58.064461, 56.994621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096236, 0.978383, -0.183046,
		0.033711, -0.186998, -0.981782,
		-0.994788, 0.088312, -0.050978,
		65.179779, 58.090954, 56.979328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.700325, 58.637592, 56.819195>,  <65.876137, 58.029137, 57.015011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.700325, 58.637592, 56.819195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.317841, 58.531403, 56.868477>,  <65.088348, 58.467690, 56.898045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.317841, 58.531403, 56.868477>,  <65.700325, 58.637592, 56.819195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.317841, 58.531403, 56.868477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287319, 0.931628, -0.222526,
		-0.055706, -0.248181, -0.967111,
		-0.956214, -0.265473, 0.123204,
		65.030975, 58.451759, 56.905437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.387184, 58.808884, 57.164101>,  <65.700325, 58.637592, 56.819195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.387184, 58.808884, 57.164101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.361656, 59.043785, 57.486855>,  <66.346344, 59.184727, 57.680508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.361656, 59.043785, 57.486855>,  <66.387184, 58.808884, 57.164101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.361656, 59.043785, 57.486855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852893, -0.451907, 0.261446,
		0.518171, -0.671503, 0.529700,
		-0.063813, 0.587251, 0.806886,
		66.342514, 59.219959, 57.728920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.066444, 58.406433, 57.670444>,  <66.387184, 58.808884, 57.164101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.066444, 58.406433, 57.670444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.023529, 58.733162, 57.897171>,  <65.997780, 58.929199, 58.033207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.023529, 58.733162, 57.897171>,  <66.066444, 58.406433, 57.670444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.023529, 58.733162, 57.897171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549165, -0.523940, 0.651080,
		0.828797, -0.241418, 0.504789,
		-0.107297, 0.816826, 0.566819,
		65.991341, 58.978210, 58.067215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.263092, 58.231541, 58.371830>,  <66.066444, 58.406433, 57.670444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.263092, 58.231541, 58.371830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.000641, 58.533356, 58.366516>,  <65.843170, 58.714443, 58.363327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.000641, 58.533356, 58.366516>,  <66.263092, 58.231541, 58.371830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.000641, 58.533356, 58.366516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506492, -0.427240, 0.748954,
		0.559439, 0.498134, 0.662489,
		-0.656121, 0.754539, -0.013286,
		65.803802, 58.759716, 58.362530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.888641, 58.251034, 58.096172>,  <66.263092, 58.231541, 58.371830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.888641, 58.251034, 58.096172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.788857, 57.864059, 58.079002>,  <66.728989, 57.631874, 58.068699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.788857, 57.864059, 58.079002>,  <66.888641, 58.251034, 58.096172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.788857, 57.864059, 58.079002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881786, -0.208600, -0.423012,
		0.400282, -0.143374, 0.905107,
		-0.249454, -0.967435, -0.042927,
		66.714020, 57.573830, 58.066124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.472610, 57.866085, 58.346733>,  <66.888641, 58.251034, 58.096172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.472610, 57.866085, 58.346733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.258186, 57.615005, 58.120941>,  <67.129532, 57.464359, 57.985466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.258186, 57.615005, 58.120941>,  <67.472610, 57.866085, 58.346733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.258186, 57.615005, 58.120941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841819, -0.447446, -0.301882,
		-0.063082, -0.637014, 0.768267,
		-0.536061, -0.627698, -0.564476,
		67.097366, 57.426697, 57.951599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.818443, 57.214832, 58.473743>,  <67.472610, 57.866085, 58.346733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.818443, 57.214832, 58.473743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.663483, 57.151550, 58.110451>,  <67.570503, 57.113583, 57.892475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.663483, 57.151550, 58.110451>,  <67.818443, 57.214832, 58.473743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.663483, 57.151550, 58.110451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878466, -0.362200, -0.311623,
		-0.279662, -0.918576, 0.279297,
		-0.387411, -0.158204, -0.908232,
		67.547256, 57.104088, 57.837982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.102921, 57.384842, 57.701004>,  <67.818443, 57.214832, 58.473743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.102921, 57.384842, 57.701004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.441521, 57.502197, 57.523300>,  <68.644676, 57.572609, 57.416676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.441521, 57.502197, 57.523300>,  <68.102921, 57.384842, 57.701004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.441521, 57.502197, 57.523300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436639, -0.860022, 0.264025,
		-0.304613, -0.417478, -0.856109,
		0.846497, 0.293385, -0.444261,
		68.695473, 57.590214, 57.390022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.457176, 57.007977, 57.237270>,  <68.102921, 57.384842, 57.701004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.457176, 57.007977, 57.237270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.756088, 57.231644, 57.380890>,  <68.935432, 57.365845, 57.467060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.756088, 57.231644, 57.380890>,  <68.457176, 57.007977, 57.237270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.756088, 57.231644, 57.380890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517621, -0.828630, 0.213170,
		0.416715, 0.026555, -0.908649,
		0.747273, 0.559167, 0.359048,
		68.980270, 57.399395, 57.488605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.112770, 56.836113, 56.809422>,  <68.457176, 57.007977, 57.237270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.112770, 56.836113, 56.809422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.167664, 56.957623, 57.186546>,  <69.200600, 57.030529, 57.412819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.167664, 56.957623, 57.186546>,  <69.112770, 56.836113, 56.809422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.167664, 56.957623, 57.186546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401271, -0.887264, 0.227473,
		0.905621, 0.347105, -0.243658,
		0.137232, 0.303777, 0.942808,
		69.208832, 57.048756, 57.469387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.847290, 56.870544, 56.975502>,  <69.112770, 56.836113, 56.809422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.847290, 56.870544, 56.975502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.598328, 56.804260, 57.281479>,  <69.448952, 56.764488, 57.465065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.598328, 56.804260, 57.281479>,  <69.847290, 56.870544, 56.975502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.598328, 56.804260, 57.281479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399696, -0.907581, 0.128609,
		0.672936, 0.385793, 0.631126,
		-0.622414, -0.165713, 0.764944,
		69.411606, 56.754547, 57.510963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.827606, 57.238079, 57.561245>,  <69.847290, 56.870544, 56.975502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.827606, 57.238079, 57.561245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.118065, 57.379284, 57.325249>,  <70.292343, 57.464008, 57.183651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.118065, 57.379284, 57.325249>,  <69.827606, 57.238079, 57.561245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.118065, 57.379284, 57.325249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542483, 0.233024, 0.807101,
		0.422402, -0.906134, -0.022296,
		0.726147, 0.353016, -0.589992,
		70.335907, 57.485188, 57.148251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.921127, 56.884575, 58.277012>,  <69.827606, 57.238079, 57.561245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.921127, 56.884575, 58.277012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.207771, 56.609020, 58.233376>,  <70.379761, 56.443687, 58.207195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.207771, 56.609020, 58.233376>,  <69.921127, 56.884575, 58.277012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.207771, 56.609020, 58.233376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628677, 0.705714, -0.326701,
		0.302047, 0.165534, 0.938811,
		0.716612, -0.688888, -0.109091,
		70.422752, 56.402355, 58.200649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.420181, 56.654449, 58.888199>,  <69.921127, 56.884575, 58.277012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.420181, 56.654449, 58.888199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.578560, 56.365623, 59.115128>,  <70.673584, 56.192329, 59.251286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.578560, 56.365623, 59.115128>,  <70.420181, 56.654449, 58.888199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.578560, 56.365623, 59.115128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845358, -0.527887, -0.081882,
		0.358605, -0.447168, -0.819417,
		0.395944, -0.722064, 0.567320,
		70.697342, 56.149006, 59.285324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.790222, 56.738579, 59.477787>,  <70.420181, 56.654449, 58.888199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.790222, 56.738579, 59.477787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.618240, 57.007195, 59.719177>,  <70.515053, 57.168362, 59.864010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.618240, 57.007195, 59.719177>,  <70.790222, 56.738579, 59.477787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.618240, 57.007195, 59.719177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675085, -0.204707, 0.708771,
		0.599500, 0.712134, -0.365329,
		-0.429954, 0.671536, 0.603472,
		70.489258, 57.208656, 59.900219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.280754, 57.141876, 59.345512>,  <70.790222, 56.738579, 59.477787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.280754, 57.141876, 59.345512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.381477, 57.139091, 59.732613>,  <71.441910, 57.137421, 59.964874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.381477, 57.139091, 59.732613>,  <71.280754, 57.141876, 59.345512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.381477, 57.139091, 59.732613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957041, 0.150338, -0.247934,
		-0.143765, 0.988610, 0.044516,
		0.251802, -0.006959, 0.967754,
		71.457016, 57.137005, 60.022938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.665756, 57.723442, 59.515228>,  <71.280754, 57.141876, 59.345512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.665756, 57.723442, 59.515228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.799904, 57.458214, 59.782921>,  <71.880394, 57.299076, 59.943535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.799904, 57.458214, 59.782921>,  <71.665756, 57.723442, 59.515228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.799904, 57.458214, 59.782921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930836, 0.342684, -0.126929,
		-0.145171, 0.665511, 0.732135,
		0.335364, -0.663071, 0.669229,
		71.900513, 57.259293, 59.983688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.897385, 57.913216, 60.063206>,  <71.665756, 57.723442, 59.515228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.897385, 57.913216, 60.063206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.109428, 57.574345, 60.048897>,  <72.236656, 57.371021, 60.040310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.109428, 57.574345, 60.048897>,  <71.897385, 57.913216, 60.063206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.109428, 57.574345, 60.048897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847920, 0.529829, 0.017676,
		0.003979, -0.039702, 0.999204,
		0.530109, -0.847175, -0.035772,
		72.268463, 57.320190, 60.038166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.175987, 57.766609, 60.629253>,  <71.897385, 57.913216, 60.063206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.175987, 57.766609, 60.629253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.415230, 57.632912, 60.337898>,  <72.558777, 57.552692, 60.163086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.415230, 57.632912, 60.337898>,  <72.175987, 57.766609, 60.629253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.415230, 57.632912, 60.337898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659245, 0.722002, 0.210023,
		0.455697, -0.605802, 0.652184,
		0.598110, -0.334242, -0.728386,
		72.594666, 57.532639, 60.119381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.821045, 57.840405, 60.935688>,  <72.175987, 57.766609, 60.629253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.821045, 57.840405, 60.935688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.893829, 57.794514, 60.545052>,  <72.937500, 57.766979, 60.310669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.893829, 57.794514, 60.545052>,  <72.821045, 57.840405, 60.935688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.893829, 57.794514, 60.545052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763192, 0.642721, 0.066699,
		0.620022, -0.757461, 0.204515,
		0.181968, -0.114729, -0.976588,
		72.948418, 57.760094, 60.252075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.459442, 57.671432, 60.863155>,  <72.821045, 57.840405, 60.935688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.459442, 57.671432, 60.863155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.380135, 57.866371, 60.522995>,  <73.332550, 57.983334, 60.318897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.380135, 57.866371, 60.522995>,  <73.459442, 57.671432, 60.863155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.380135, 57.866371, 60.522995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852138, 0.514412, 0.096130,
		0.484307, -0.705601, -0.517275,
		-0.198263, 0.487347, -0.850403,
		73.320656, 58.012573, 60.267876>
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
