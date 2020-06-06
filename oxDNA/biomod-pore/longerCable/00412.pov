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
	<24.568100, 34.721519, 35.076626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223169, 34.844818, 34.915939>,  <24.016211, 34.918797, 34.819527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223169, 34.844818, 34.915939>,  <24.568100, 34.721519, 35.076626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.223169, 34.844818, 34.915939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252115, -0.426643, -0.868570,
		-0.439130, -0.850267, 0.290189,
		-0.862324, 0.308254, -0.401717,
		23.964472, 34.937294, 34.795425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.210236, 34.299786, 35.525124>,  <24.568100, 34.721519, 35.076626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.210236, 34.299786, 35.525124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.610229, 34.301739, 35.525902>,  <24.850225, 34.302910, 35.526367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.610229, 34.301739, 35.525902>,  <24.210236, 34.299786, 35.525124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.610229, 34.301739, 35.525902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003012, 0.229565, 0.973289,
		0.004304, -0.973281, 0.229577,
		0.999986, 0.004881, 0.001944,
		24.910225, 34.303204, 35.526485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.522730, 33.832581, 35.995651>,  <24.210236, 34.299786, 35.525124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.522730, 33.832581, 35.995651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754694, 34.157570, 35.971680>,  <24.893873, 34.352562, 35.957298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754694, 34.157570, 35.971680>,  <24.522730, 33.832581, 35.995651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754694, 34.157570, 35.971680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012740, 0.082598, 0.996502,
		0.814581, -0.577118, 0.058251,
		0.579910, 0.812473, -0.059930,
		24.928667, 34.401310, 35.953701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.996643, 33.806396, 36.527870>,  <24.522730, 33.832581, 35.995651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.996643, 33.806396, 36.527870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979813, 34.191387, 36.420643>,  <24.969715, 34.422382, 36.356308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979813, 34.191387, 36.420643>,  <24.996643, 33.806396, 36.527870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.979813, 34.191387, 36.420643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087576, 0.270825, 0.958637,
		0.995269, 0.016859, -0.095685,
		-0.042076, 0.962481, -0.268067,
		24.967190, 34.480133, 36.340221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568998, 34.096367, 37.009773>,  <24.996643, 33.806396, 36.527870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568998, 34.096367, 37.009773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334898, 34.387066, 36.865929>,  <25.194437, 34.561485, 36.779621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334898, 34.387066, 36.865929>,  <25.568998, 34.096367, 37.009773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334898, 34.387066, 36.865929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068139, 0.397849, 0.914917,
		0.807983, 0.559961, -0.183323,
		-0.585253, 0.726746, -0.359610,
		25.159323, 34.605091, 36.758045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830500, 34.823532, 37.155617>,  <25.568998, 34.096367, 37.009773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830500, 34.823532, 37.155617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.432806, 34.842598, 37.117199>,  <25.194189, 34.854038, 37.094151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.432806, 34.842598, 37.117199>,  <25.830500, 34.823532, 37.155617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432806, 34.842598, 37.117199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061124, 0.483971, 0.872947,
		0.088090, 0.873785, -0.478268,
		-0.994235, 0.047664, -0.096043,
		25.134535, 34.856895, 37.088387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.685781, 35.578541, 37.256187>,  <25.830500, 34.823532, 37.155617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.685781, 35.578541, 37.256187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372711, 35.355976, 37.367779>,  <25.184870, 35.222439, 37.434734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372711, 35.355976, 37.367779>,  <25.685781, 35.578541, 37.256187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.372711, 35.355976, 37.367779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016948, 0.467087, 0.884049,
		-0.622201, 0.687194, -0.375007,
		-0.782674, -0.556412, 0.278975,
		25.137909, 35.189053, 37.451473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.017828, 35.961754, 37.290619>,  <25.685781, 35.578541, 37.256187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.017828, 35.961754, 37.290619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038004, 35.657967, 37.550056>,  <25.050110, 35.475697, 37.705719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038004, 35.657967, 37.550056>,  <25.017828, 35.961754, 37.290619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.038004, 35.657967, 37.550056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136584, 0.648560, 0.748809,
		-0.989344, 0.050818, 0.136443,
		0.050439, -0.759465, 0.648590,
		25.053135, 35.430126, 37.744633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567600, 36.109470, 37.837975>,  <25.017828, 35.961754, 37.290619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567600, 36.109470, 37.837975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.835072, 35.844162, 37.972401>,  <24.995554, 35.684978, 38.053059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.835072, 35.844162, 37.972401>,  <24.567600, 36.109470, 37.837975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.835072, 35.844162, 37.972401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319505, 0.664431, 0.675610,
		-0.671406, -0.344390, 0.656209,
		0.668678, -0.663270, 0.336068,
		25.035675, 35.645180, 38.073219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.606567, 36.372654, 38.490356>,  <24.567600, 36.109470, 37.837975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.606567, 36.372654, 38.490356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911516, 36.114532, 38.470886>,  <25.094486, 35.959660, 38.459206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911516, 36.114532, 38.470886>,  <24.606567, 36.372654, 38.490356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.911516, 36.114532, 38.470886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477886, 0.510669, 0.714732,
		-0.436365, -0.568152, 0.697702,
		0.762372, -0.645306, -0.048674,
		25.140228, 35.920940, 38.456284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.840734, 36.133488, 39.182579>,  <24.606567, 36.372654, 38.490356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.840734, 36.133488, 39.182579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151470, 36.100811, 38.932827>,  <25.337912, 36.081203, 38.782978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151470, 36.100811, 38.932827>,  <24.840734, 36.133488, 39.182579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151470, 36.100811, 38.932827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569865, 0.513059, 0.641891,
		0.267903, -0.854457, 0.445119,
		0.776841, -0.081694, -0.624376,
		25.384521, 36.076302, 38.745514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.383188, 36.177620, 39.609230>,  <24.840734, 36.133488, 39.182579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.383188, 36.177620, 39.609230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499126, 36.276913, 39.239502>,  <25.568689, 36.336491, 39.017666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499126, 36.276913, 39.239502>,  <25.383188, 36.177620, 39.609230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499126, 36.276913, 39.239502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677871, 0.628532, 0.381364,
		0.675633, -0.737107, 0.013905,
		0.289846, 0.248236, -0.924321,
		25.586081, 36.351383, 38.962204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188963, 36.144604, 39.651554>,  <25.383188, 36.177620, 39.609230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188963, 36.144604, 39.651554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049770, 36.342007, 39.332718>,  <25.966255, 36.460449, 39.141415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049770, 36.342007, 39.332718>,  <26.188963, 36.144604, 39.651554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049770, 36.342007, 39.332718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690750, 0.709820, 0.137916,
		0.633856, -0.502599, -0.587896,
		-0.347983, 0.493508, -0.797093,
		25.945375, 36.490059, 39.093590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740078, 36.205227, 39.185795>,  <26.188963, 36.144604, 39.651554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740078, 36.205227, 39.185795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467737, 36.495213, 39.144104>,  <26.304333, 36.669205, 39.119091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467737, 36.495213, 39.144104>,  <26.740078, 36.205227, 39.185795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467737, 36.495213, 39.144104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710618, 0.688325, 0.145709,
		0.177377, 0.025140, -0.983822,
		-0.680852, 0.724967, -0.104228,
		26.263481, 36.712704, 39.112835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849897, 36.553398, 38.556412>,  <26.740078, 36.205227, 39.185795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849897, 36.553398, 38.556412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676159, 36.746326, 38.860703>,  <26.571917, 36.862083, 39.043278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676159, 36.746326, 38.860703>,  <26.849897, 36.553398, 38.556412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676159, 36.746326, 38.860703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693165, 0.718306, -0.059654,
		-0.575211, 0.501402, -0.646320,
		-0.434345, 0.482319, 0.760731,
		26.545855, 36.891022, 39.088921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215776, 36.654015, 38.095684>,  <26.849897, 36.553398, 38.556412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215776, 36.654015, 38.095684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121071, 36.416134, 38.403000>,  <26.064247, 36.273407, 38.587391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121071, 36.416134, 38.403000>,  <26.215776, 36.654015, 38.095684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121071, 36.416134, 38.403000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531982, -0.582349, -0.614707,
		0.812981, -0.554258, -0.178491,
		-0.236762, -0.594700, 0.768294,
		26.050043, 36.237724, 38.633488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389688, 35.913261, 37.985386>,  <26.215776, 36.654015, 38.095684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389688, 35.913261, 37.985386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084026, 35.937737, 38.242233>,  <25.900629, 35.952423, 38.396343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084026, 35.937737, 38.242233>,  <26.389688, 35.913261, 37.985386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084026, 35.937737, 38.242233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545998, -0.591399, -0.593408,
		0.343440, -0.804054, 0.485331,
		-0.764157, 0.061190, 0.642122,
		25.854780, 35.956093, 38.434868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247112, 35.327644, 38.458111>,  <26.389688, 35.913261, 37.985386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247112, 35.327644, 38.458111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889351, 35.506397, 38.450760>,  <25.674694, 35.613647, 38.446350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889351, 35.506397, 38.450760>,  <26.247112, 35.327644, 38.458111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889351, 35.506397, 38.450760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384633, -0.789487, -0.478296,
		-0.228249, -0.420722, 0.878006,
		-0.894404, 0.446881, -0.018376,
		25.621029, 35.640461, 38.445248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830341, 34.889957, 38.731617>,  <26.247112, 35.327644, 38.458111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830341, 34.889957, 38.731617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580566, 35.122849, 38.523354>,  <25.430702, 35.262585, 38.398396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580566, 35.122849, 38.523354>,  <25.830341, 34.889957, 38.731617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580566, 35.122849, 38.523354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205610, -0.765615, -0.609556,
		-0.753523, -0.273580, 0.597794,
		-0.624442, 0.582227, -0.520658,
		25.393234, 35.297516, 38.367157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.405935, 34.448174, 38.529179>,  <25.830341, 34.889957, 38.731617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.405935, 34.448174, 38.529179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301956, 34.756050, 38.295940>,  <25.239569, 34.940777, 38.155998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301956, 34.756050, 38.295940>,  <25.405935, 34.448174, 38.529179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.301956, 34.756050, 38.295940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213929, -0.634753, -0.742512,
		-0.941627, -0.068275, 0.329663,
		-0.259950, 0.769693, -0.583094,
		25.223970, 34.986958, 38.121014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.645439, 34.461861, 38.404045>,  <25.405935, 34.448174, 38.529179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.645439, 34.461861, 38.404045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752310, 34.776550, 38.181450>,  <24.816431, 34.965363, 38.047894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752310, 34.776550, 38.181450>,  <24.645439, 34.461861, 38.404045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752310, 34.776550, 38.181450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287411, -0.486146, -0.825262,
		-0.919789, 0.380432, 0.096227,
		0.267176, 0.786724, -0.556492,
		24.832462, 35.012566, 38.014503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.088282, 34.533993, 37.822872>,  <24.645439, 34.461861, 38.404045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.088282, 34.533993, 37.822872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402269, 34.737827, 37.681934>,  <24.590662, 34.860126, 37.597370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402269, 34.737827, 37.681934>,  <24.088282, 34.533993, 37.822872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.402269, 34.737827, 37.681934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051874, -0.512666, -0.857019,
		-0.617362, 0.691010, -0.375992,
		0.784967, 0.509587, -0.352346,
		24.637760, 34.890705, 37.576229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.910051, 34.839432, 37.158215>,  <24.088282, 34.533993, 37.822872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.910051, 34.839432, 37.158215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307594, 34.808800, 37.190163>,  <24.546120, 34.790421, 37.209332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307594, 34.808800, 37.190163>,  <23.910051, 34.839432, 37.158215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.307594, 34.808800, 37.190163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037479, -0.446179, -0.894159,
		0.104110, 0.891662, -0.440569,
		0.993859, -0.076579, 0.079870,
		24.605753, 34.785828, 37.214123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.162558, 35.220585, 36.686123>,  <23.910051, 34.839432, 37.158215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.162558, 35.220585, 36.686123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.426119, 34.926609, 36.750259>,  <24.584255, 34.750225, 36.788742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.426119, 34.926609, 36.750259>,  <24.162558, 35.220585, 36.686123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.426119, 34.926609, 36.750259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172695, -0.355258, -0.918677,
		0.732135, 0.577630, -0.361001,
		0.658904, -0.734940, 0.160343,
		24.623791, 34.706127, 36.798363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.443933, 35.564754, 36.161888>,  <24.162558, 35.220585, 36.686123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.443933, 35.564754, 36.161888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656128, 35.288376, 36.358330>,  <24.783445, 35.122551, 36.476192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656128, 35.288376, 36.358330>,  <24.443933, 35.564754, 36.161888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.656128, 35.288376, 36.358330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409872, -0.298046, -0.862075,
		0.742017, 0.658608, 0.125090,
		0.530487, -0.690945, 0.491100,
		24.815273, 35.081093, 36.505661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072472, 35.714668, 35.906628>,  <24.443933, 35.564754, 36.161888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072472, 35.714668, 35.906628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041321, 35.340698, 36.045105>,  <25.022631, 35.116318, 36.128189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041321, 35.340698, 36.045105>,  <25.072472, 35.714668, 35.906628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.041321, 35.340698, 36.045105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394226, -0.347822, -0.850650,
		0.915708, 0.070232, 0.395660,
		-0.077876, -0.934926, 0.346190,
		25.017958, 35.060219, 36.148964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672937, 35.398060, 35.822750>,  <25.072472, 35.714668, 35.906628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672937, 35.398060, 35.822750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.406979, 35.099285, 35.822327>,  <25.247404, 34.920021, 35.822075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.406979, 35.099285, 35.822327>,  <25.672937, 35.398060, 35.822750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.406979, 35.099285, 35.822327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463786, -0.411739, -0.784457,
		0.585504, -0.522072, 0.620182,
		-0.664896, -0.746935, -0.001055,
		25.207510, 34.875206, 35.822010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.818521, 34.986214, 35.149498>,  <25.672937, 35.398060, 35.822750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.818521, 34.986214, 35.149498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891100, 35.370491, 35.233543>,  <25.934647, 35.601055, 35.283970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891100, 35.370491, 35.233543>,  <25.818521, 34.986214, 35.149498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891100, 35.370491, 35.233543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628179, 0.051160, -0.776385,
		-0.756616, 0.272864, -0.594203,
		0.181448, 0.960691, 0.210116,
		25.945534, 35.658699, 35.296577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620619, 35.412273, 34.616230>,  <25.818521, 34.986214, 35.149498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620619, 35.412273, 34.616230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924307, 35.578426, 34.816647>,  <26.106520, 35.678116, 34.936897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924307, 35.578426, 34.816647>,  <25.620619, 35.412273, 34.616230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924307, 35.578426, 34.816647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478933, 0.164703, -0.862262,
		-0.440688, 0.894614, -0.073892,
		0.759222, 0.415378, 0.501043,
		26.152073, 35.703041, 34.966961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875158, 36.082912, 34.259628>,  <25.620619, 35.412273, 34.616230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875158, 36.082912, 34.259628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152397, 35.914959, 34.493999>,  <26.318741, 35.814186, 34.634621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152397, 35.914959, 34.493999>,  <25.875158, 36.082912, 34.259628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152397, 35.914959, 34.493999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623529, -0.058636, -0.779598,
		0.361697, 0.905681, 0.221170,
		0.693099, -0.419885, 0.585927,
		26.360327, 35.788994, 34.669777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408600, 36.486946, 34.279293>,  <25.875158, 36.082912, 34.259628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408600, 36.486946, 34.279293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565548, 36.127274, 34.356766>,  <26.659718, 35.911469, 34.403248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565548, 36.127274, 34.356766>,  <26.408600, 36.486946, 34.279293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565548, 36.127274, 34.356766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726310, 0.173684, -0.665061,
		0.564375, 0.401621, 0.721236,
		0.392370, -0.899185, 0.193679,
		26.683258, 35.857517, 34.414871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130056, 36.617157, 34.494762>,  <26.408600, 36.486946, 34.279293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130056, 36.617157, 34.494762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124294, 36.236141, 34.373135>,  <27.120838, 36.007530, 34.300159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124294, 36.236141, 34.373135>,  <27.130056, 36.617157, 34.494762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124294, 36.236141, 34.373135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693553, 0.209538, -0.689259,
		0.720262, -0.220817, 0.657620,
		-0.014403, -0.952541, -0.304071,
		27.119974, 35.950378, 34.281914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771544, 36.564415, 34.227295>,  <27.130056, 36.617157, 34.494762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771544, 36.564415, 34.227295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577793, 36.237778, 34.101719>,  <27.461542, 36.041798, 34.026375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577793, 36.237778, 34.101719>,  <27.771544, 36.564415, 34.227295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577793, 36.237778, 34.101719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548574, -0.003959, -0.836093,
		0.681503, -0.577203, 0.449878,
		-0.484376, -0.816591, -0.313940,
		27.432480, 35.992802, 34.007538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234552, 35.987400, 34.137821>,  <27.771544, 36.564415, 34.227295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234552, 35.987400, 34.137821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921755, 35.915081, 33.899227>,  <27.734076, 35.871689, 33.756069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921755, 35.915081, 33.899227>,  <28.234552, 35.987400, 34.137821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921755, 35.915081, 33.899227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595740, 0.064543, -0.800580,
		0.183244, -0.981400, 0.057237,
		-0.781995, -0.180800, -0.596486,
		27.687157, 35.860840, 33.720280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790575, 36.117443, 33.598866>,  <28.234552, 35.987400, 34.137821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790575, 36.117443, 33.598866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016121, 36.216198, 33.283627>,  <29.151449, 36.275452, 33.094482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016121, 36.216198, 33.283627>,  <28.790575, 36.117443, 33.598866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016121, 36.216198, 33.283627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806498, 0.040847, 0.589824,
		0.177813, -0.968182, -0.176085,
		0.563864, 0.246891, -0.788100,
		29.185280, 36.290264, 33.047195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391460, 35.424519, 33.696831>,  <28.790575, 36.117443, 33.598866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391460, 35.424519, 33.696831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996288, 35.385284, 33.648872>,  <27.759186, 35.361744, 33.620098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996288, 35.385284, 33.648872>,  <28.391460, 35.424519, 33.696831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996288, 35.385284, 33.648872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147640, -0.361890, -0.920455,
		0.046890, -0.927046, 0.372003,
		-0.987929, -0.098083, -0.119900,
		27.699909, 35.355862, 33.612904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199877, 34.765079, 33.504993>,  <28.391460, 35.424519, 33.696831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199877, 34.765079, 33.504993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922506, 35.011944, 33.356255>,  <27.756084, 35.160061, 33.267010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922506, 35.011944, 33.356255>,  <28.199877, 34.765079, 33.504993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922506, 35.011944, 33.356255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101160, -0.427578, -0.898300,
		-0.713390, -0.660522, 0.234063,
		-0.693428, 0.617160, -0.371848,
		27.714478, 35.197090, 33.244701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723387, 34.425606, 33.134827>,  <28.199877, 34.765079, 33.504993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723387, 34.425606, 33.134827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720779, 34.800625, 32.995712>,  <27.719215, 35.025639, 32.912243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720779, 34.800625, 32.995712>,  <27.723387, 34.425606, 33.134827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720779, 34.800625, 32.995712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137734, -0.343640, -0.928946,
		-0.990448, -0.053956, -0.126893,
		-0.006517, 0.937550, -0.347789,
		27.718824, 35.081890, 32.891376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340837, 34.386978, 32.588470>,  <27.723387, 34.425606, 33.134827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340837, 34.386978, 32.588470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556143, 34.716423, 32.516998>,  <27.685326, 34.914089, 32.474113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556143, 34.716423, 32.516998>,  <27.340837, 34.386978, 32.588470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556143, 34.716423, 32.516998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013164, -0.203776, -0.978929,
		-0.842673, 0.529275, -0.098843,
		0.538265, 0.823616, -0.178684,
		27.717623, 34.963509, 32.463394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222132, 34.438725, 31.893473>,  <27.340837, 34.386978, 32.588470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222132, 34.438725, 31.893473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501083, 34.719948, 31.949137>,  <27.668455, 34.888683, 31.982534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501083, 34.719948, 31.949137>,  <27.222132, 34.438725, 31.893473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501083, 34.719948, 31.949137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253079, -0.059910, -0.965589,
		-0.670532, 0.708600, -0.219710,
		0.697379, 0.703062, 0.139160,
		27.710297, 34.930866, 31.990885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883230, 34.506855, 31.639179>,  <27.222132, 34.438725, 31.893473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883230, 34.506855, 31.639179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874901, 34.843338, 31.423058>,  <27.869904, 35.045227, 31.293385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874901, 34.843338, 31.423058>,  <27.883230, 34.506855, 31.639179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874901, 34.843338, 31.423058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160943, 0.536195, 0.828608,
		0.986744, -0.069705, -0.146552,
		-0.020822, 0.841211, -0.540306,
		27.868654, 35.095703, 31.260965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486620, 34.766682, 31.740396>,  <27.883230, 34.506855, 31.639179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486620, 34.766682, 31.740396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194740, 35.023102, 31.645239>,  <28.019611, 35.176952, 31.588144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194740, 35.023102, 31.645239>,  <28.486620, 34.766682, 31.740396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194740, 35.023102, 31.645239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084608, 0.429892, 0.898908,
		0.678512, 0.635807, -0.367930,
		-0.729701, 0.641049, -0.237892,
		27.975830, 35.215416, 31.573872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660156, 35.563000, 31.767775>,  <28.486620, 34.766682, 31.740396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660156, 35.563000, 31.767775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289404, 35.457966, 31.875061>,  <28.066952, 35.394947, 31.939432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289404, 35.457966, 31.875061>,  <28.660156, 35.563000, 31.767775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289404, 35.457966, 31.875061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178795, 0.319433, 0.930589,
		-0.330035, 0.910501, -0.249128,
		-0.926882, -0.262584, 0.268217,
		28.011339, 35.379192, 31.955526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209068, 36.159367, 32.193367>,  <28.660156, 35.563000, 31.767775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209068, 36.159367, 32.193367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063395, 35.797043, 32.279968>,  <27.975990, 35.579647, 32.331928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063395, 35.797043, 32.279968>,  <28.209068, 36.159367, 32.193367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063395, 35.797043, 32.279968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317922, 0.339415, 0.885281,
		-0.875383, 0.253574, -0.411587,
		-0.364184, -0.905813, 0.216501,
		27.954140, 35.525299, 32.344917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570740, 36.292812, 32.495281>,  <28.209068, 36.159367, 32.193367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570740, 36.292812, 32.495281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623924, 35.912781, 32.608185>,  <27.655834, 35.684761, 32.675926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623924, 35.912781, 32.608185>,  <27.570740, 36.292812, 32.495281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623924, 35.912781, 32.608185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473257, 0.189367, 0.860330,
		-0.870833, -0.247971, -0.424454,
		0.132959, -0.950079, 0.282261,
		27.663813, 35.627758, 32.692863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958384, 36.178104, 32.870548>,  <27.570740, 36.292812, 32.495281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958384, 36.178104, 32.870548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228786, 35.910854, 32.994888>,  <27.391027, 35.750504, 33.069492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228786, 35.910854, 32.994888>,  <26.958384, 36.178104, 32.870548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228786, 35.910854, 32.994888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451316, -0.041916, 0.891379,
		-0.582520, -0.742871, -0.329869,
		0.676007, -0.668121, 0.310853,
		27.431589, 35.710419, 33.088142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615059, 35.477535, 33.110664>,  <26.958384, 36.178104, 32.870548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615059, 35.477535, 33.110664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969223, 35.549458, 33.282116>,  <27.181721, 35.592609, 33.384987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969223, 35.549458, 33.282116>,  <26.615059, 35.477535, 33.110664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969223, 35.549458, 33.282116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391050, -0.210325, 0.896015,
		0.251258, -0.960955, -0.115912,
		0.885409, 0.179804, 0.428627,
		27.234846, 35.603397, 33.410706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726463, 34.913818, 33.529663>,  <26.615059, 35.477535, 33.110664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726463, 34.913818, 33.529663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939199, 35.216385, 33.681965>,  <27.066841, 35.397926, 33.773346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939199, 35.216385, 33.681965>,  <26.726463, 34.913818, 33.529663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939199, 35.216385, 33.681965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337507, -0.223037, 0.914518,
		0.776682, -0.614885, 0.136677,
		0.531840, 0.756420, 0.380757,
		27.098751, 35.443310, 33.796192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188585, 34.662327, 34.068493>,  <26.726463, 34.913818, 33.529663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188585, 34.662327, 34.068493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179094, 35.055458, 34.141689>,  <27.173401, 35.291336, 34.185608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179094, 35.055458, 34.141689>,  <27.188585, 34.662327, 34.068493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179094, 35.055458, 34.141689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339143, -0.180104, 0.923333,
		0.940436, -0.040154, 0.337592,
		-0.023726, 0.982828, 0.182994,
		27.171976, 35.350307, 34.196587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338345, 34.790077, 34.834148>,  <27.188585, 34.662327, 34.068493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338345, 34.790077, 34.834148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118700, 35.107327, 34.728745>,  <26.986914, 35.297676, 34.665501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118700, 35.107327, 34.728745>,  <27.338345, 34.790077, 34.834148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118700, 35.107327, 34.728745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478752, -0.040065, 0.877036,
		0.685037, 0.607746, 0.401708,
		-0.549109, 0.793120, -0.263513,
		26.953968, 35.345264, 34.649689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392742, 35.267452, 35.340405>,  <27.338345, 34.790077, 34.834148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392742, 35.267452, 35.340405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063784, 35.407009, 35.160652>,  <26.866409, 35.490742, 35.052799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063784, 35.407009, 35.160652>,  <27.392742, 35.267452, 35.340405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063784, 35.407009, 35.160652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500436, -0.067902, 0.863107,
		0.270614, 0.934701, 0.230438,
		-0.822394, 0.348888, -0.449383,
		26.817066, 35.511677, 35.025837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677685, 35.442642, 35.654335>,  <27.392742, 35.267452, 35.340405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677685, 35.442642, 35.654335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545715, 35.141911, 35.882683>,  <26.466534, 34.961472, 36.019691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545715, 35.141911, 35.882683>,  <26.677685, 35.442642, 35.654335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545715, 35.141911, 35.882683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702501, 0.208419, 0.680481,
		-0.630589, 0.625547, 0.459401,
		-0.329925, -0.751833, 0.570874,
		26.446737, 34.916359, 36.053944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604128, 35.687984, 36.456917>,  <26.677685, 35.442642, 35.654335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604128, 35.687984, 36.456917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669998, 35.293922, 36.437496>,  <26.709520, 35.057487, 36.425846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669998, 35.293922, 36.437496>,  <26.604128, 35.687984, 36.456917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669998, 35.293922, 36.437496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769377, 0.097495, 0.631311,
		-0.617205, -0.141311, 0.774009,
		0.164673, -0.985153, -0.048547,
		26.719400, 34.998375, 36.422932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668589, 35.402302, 37.126411>,  <26.604128, 35.687984, 36.456917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668589, 35.402302, 37.126411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878962, 35.179977, 36.868893>,  <27.005184, 35.046581, 36.714382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878962, 35.179977, 36.868893>,  <26.668589, 35.402302, 37.126411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878962, 35.179977, 36.868893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723920, -0.104812, 0.681875,
		-0.446471, -0.824675, 0.347239,
		0.525930, -0.555811, -0.643794,
		27.036741, 35.013233, 36.675755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723215, 34.693253, 37.317078>,  <26.668589, 35.402302, 37.126411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723215, 34.693253, 37.317078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051092, 34.806923, 37.118141>,  <27.247818, 34.875126, 36.998779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051092, 34.806923, 37.118141>,  <26.723215, 34.693253, 37.317078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051092, 34.806923, 37.118141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539494, -0.091248, 0.837030,
		0.192485, -0.954419, -0.228108,
		0.819692, 0.284179, -0.497340,
		27.296999, 34.892178, 36.968941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178272, 34.221073, 37.308556>,  <26.723215, 34.693253, 37.317078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178272, 34.221073, 37.308556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371681, 34.571205, 37.307690>,  <27.487726, 34.781284, 37.307171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371681, 34.571205, 37.307690>,  <27.178272, 34.221073, 37.308556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371681, 34.571205, 37.307690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415294, -0.227227, 0.880851,
		0.770544, -0.426808, -0.473389,
		0.483521, 0.875330, -0.002163,
		27.516737, 34.833805, 37.307041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875389, 34.200565, 37.467915>,  <27.178272, 34.221073, 37.308556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875389, 34.200565, 37.467915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732847, 34.558987, 37.573822>,  <27.647322, 34.774040, 37.637367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732847, 34.558987, 37.573822>,  <27.875389, 34.200565, 37.467915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732847, 34.558987, 37.573822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137298, -0.230081, 0.963438,
		0.924208, 0.379677, -0.041036,
		-0.356354, 0.896051, 0.264771,
		27.625940, 34.827801, 37.653252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220865, 34.373219, 38.063896>,  <27.875389, 34.200565, 37.467915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220865, 34.373219, 38.063896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909332, 34.623974, 38.055573>,  <27.722412, 34.774426, 38.050579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909332, 34.623974, 38.055573>,  <28.220865, 34.373219, 38.063896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909332, 34.623974, 38.055573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105654, -0.098414, 0.989521,
		0.618269, 0.772870, 0.142881,
		-0.778833, 0.626886, -0.020811,
		27.675682, 34.812038, 38.049328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310856, 34.921463, 38.505417>,  <28.220865, 34.373219, 38.063896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310856, 34.921463, 38.505417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918533, 34.854309, 38.465740>,  <27.683140, 34.814018, 38.441933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918533, 34.854309, 38.465740>,  <28.310856, 34.921463, 38.505417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918533, 34.854309, 38.465740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063142, -0.207850, 0.976121,
		-0.184489, 0.963646, 0.193260,
		-0.980804, -0.167880, -0.099192,
		27.624292, 34.803944, 38.435982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641127, 35.434906, 37.958931>,  <28.310856, 34.921463, 38.505417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641127, 35.434906, 37.958931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895285, 35.149418, 38.076828>,  <29.047779, 34.978123, 38.147564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895285, 35.149418, 38.076828>,  <28.641127, 35.434906, 37.958931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895285, 35.149418, 38.076828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730889, 0.432722, -0.527781,
		0.249150, 0.550771, 0.796602,
		0.635394, -0.713724, 0.294740,
		29.085903, 34.935299, 38.165249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179747, 35.654640, 38.434177>,  <28.641127, 35.434906, 37.958931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179747, 35.654640, 38.434177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282595, 35.359219, 38.184879>,  <29.344303, 35.181965, 38.035301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282595, 35.359219, 38.184879>,  <29.179747, 35.654640, 38.434177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282595, 35.359219, 38.184879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730881, 0.570536, -0.374569,
		0.632220, -0.359207, 0.686489,
		0.257119, -0.738552, -0.623242,
		29.359730, 35.137653, 37.997906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831289, 35.658886, 38.449936>,  <29.179747, 35.654640, 38.434177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831289, 35.658886, 38.449936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752510, 35.470684, 38.105881>,  <29.705242, 35.357761, 37.899448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752510, 35.470684, 38.105881>,  <29.831289, 35.658886, 38.449936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752510, 35.470684, 38.105881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800810, 0.428932, -0.417996,
		0.565610, -0.771130, 0.292308,
		-0.196949, -0.470506, -0.860137,
		29.693426, 35.329533, 37.847839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488684, 35.223541, 38.191692>,  <29.831289, 35.658886, 38.449936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488684, 35.223541, 38.191692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264244, 35.359695, 37.889881>,  <30.129580, 35.441387, 37.708794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264244, 35.359695, 37.889881>,  <30.488684, 35.223541, 38.191692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264244, 35.359695, 37.889881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767646, 0.554982, -0.320491,
		0.309658, -0.759035, -0.572693,
		-0.561099, 0.340383, -0.754525,
		30.095915, 35.461811, 37.663525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905966, 35.214130, 37.747799>,  <30.488684, 35.223541, 38.191692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905966, 35.214130, 37.747799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624655, 35.478020, 37.641842>,  <30.455868, 35.636353, 37.578270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624655, 35.478020, 37.641842>,  <30.905966, 35.214130, 37.747799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624655, 35.478020, 37.641842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710907, 0.650687, -0.266865,
		-0.003698, -0.375991, -0.926616,
		-0.703276, 0.659725, -0.264889,
		30.413671, 35.675938, 37.562374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028103, 35.546879, 36.960865>,  <30.905966, 35.214130, 37.747799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028103, 35.546879, 36.960865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856283, 35.755203, 37.255959>,  <30.753191, 35.880196, 37.433014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856283, 35.755203, 37.255959>,  <31.028103, 35.546879, 36.960865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856283, 35.755203, 37.255959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562523, 0.793396, -0.232574,
		-0.706440, 0.315089, -0.633768,
		-0.429548, 0.520809, 0.737731,
		30.727419, 35.911446, 37.477280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737078, 36.227707, 36.753483>,  <31.028103, 35.546879, 36.960865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737078, 36.227707, 36.753483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882936, 36.198635, 37.124805>,  <30.970451, 36.181190, 37.347599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882936, 36.198635, 37.124805>,  <30.737078, 36.227707, 36.753483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882936, 36.198635, 37.124805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832144, 0.472778, -0.289858,
		-0.417814, 0.878179, 0.232879,
		0.364648, -0.072682, 0.928304,
		30.992331, 36.176830, 37.403297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230711, 36.856640, 36.888657>,  <30.737078, 36.227707, 36.753483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230711, 36.856640, 36.888657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379778, 36.565567, 37.118996>,  <31.469217, 36.390923, 37.257198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379778, 36.565567, 37.118996>,  <31.230711, 36.856640, 36.888657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379778, 36.565567, 37.118996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921636, 0.362593, -0.138251,
		-0.108196, 0.582243, 0.805783,
		0.372667, -0.727680, 0.575848,
		31.491579, 36.347263, 37.291748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504992, 36.148499, 36.590210>,  <31.230711, 36.856640, 36.888657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504992, 36.148499, 36.590210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724438, 36.326736, 36.307236>,  <31.856106, 36.433681, 36.137451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724438, 36.326736, 36.307236>,  <31.504992, 36.148499, 36.590210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724438, 36.326736, 36.307236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057447, -0.864229, -0.499809,
		-0.834100, 0.233562, -0.499725,
		0.548613, 0.445598, -0.707436,
		31.889021, 36.460415, 36.095005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207972, 36.063595, 35.884552>,  <31.504992, 36.148499, 36.590210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207972, 36.063595, 35.884552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589077, 36.152527, 35.801792>,  <31.817741, 36.205887, 35.752136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589077, 36.152527, 35.801792>,  <31.207972, 36.063595, 35.884552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589077, 36.152527, 35.801792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004830, -0.692244, -0.721647,
		-0.303670, 0.686561, -0.660620,
		0.952765, 0.222334, -0.206897,
		31.874907, 36.219227, 35.739723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264734, 36.250767, 35.104794>,  <31.207972, 36.063595, 35.884552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264734, 36.250767, 35.104794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631054, 36.129292, 35.209930>,  <31.850845, 36.056408, 35.273014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631054, 36.129292, 35.209930>,  <31.264734, 36.250767, 35.104794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631054, 36.129292, 35.209930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067988, -0.762205, -0.643756,
		0.395838, 0.571681, -0.718674,
		0.915800, -0.303684, 0.262842,
		31.905794, 36.038185, 35.288784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610025, 36.288452, 34.465057>,  <31.264734, 36.250767, 35.104794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610025, 36.288452, 34.465057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828323, 36.043682, 34.694042>,  <31.959301, 35.896820, 34.831432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828323, 36.043682, 34.694042>,  <31.610025, 36.288452, 34.465057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828323, 36.043682, 34.694042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013863, -0.676482, -0.736329,
		0.837838, 0.409782, -0.360702,
		0.545743, -0.611924, 0.572462,
		31.992046, 35.860104, 34.865780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006248, 35.928818, 34.052223>,  <31.610025, 36.288452, 34.465057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006248, 35.928818, 34.052223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054134, 35.700508, 34.377155>,  <32.082867, 35.563522, 34.572113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054134, 35.700508, 34.377155>,  <32.006248, 35.928818, 34.052223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054134, 35.700508, 34.377155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283524, -0.764485, -0.578945,
		0.951463, 0.299626, 0.070306,
		0.119719, -0.570778, 0.812330,
		32.090050, 35.529274, 34.620853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754997, 35.664654, 34.287155>,  <32.006248, 35.928818, 34.052223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754997, 35.664654, 34.287155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480114, 35.415482, 34.436661>,  <32.315182, 35.265980, 34.526363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480114, 35.415482, 34.436661>,  <32.754997, 35.664654, 34.287155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480114, 35.415482, 34.436661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363282, -0.740232, -0.565758,
		0.629099, -0.253014, 0.734996,
		-0.687212, -0.622928, 0.373764,
		32.273949, 35.228603, 34.548790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019325, 35.101772, 34.152081>,  <32.754997, 35.664654, 34.287155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019325, 35.101772, 34.152081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669357, 34.948792, 34.270901>,  <32.459377, 34.857002, 34.342194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669357, 34.948792, 34.270901>,  <33.019325, 35.101772, 34.152081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669357, 34.948792, 34.270901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237584, -0.873516, -0.424880,
		0.421974, -0.301164, 0.855125,
		-0.874924, -0.382453, 0.297050,
		32.406879, 34.834057, 34.360016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202766, 34.472034, 34.528599>,  <33.019325, 35.101772, 34.152081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202766, 34.472034, 34.528599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827869, 34.444954, 34.391781>,  <32.602932, 34.428703, 34.309689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827869, 34.444954, 34.391781>,  <33.202766, 34.472034, 34.528599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827869, 34.444954, 34.391781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213002, -0.887827, -0.407914,
		-0.276058, -0.455170, 0.846529,
		-0.937242, -0.067705, -0.342044,
		32.546696, 34.424641, 34.289169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206268, 33.818489, 34.424309>,  <33.202766, 34.472034, 34.528599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206268, 33.818489, 34.424309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900791, 33.964268, 34.211159>,  <32.717506, 34.051735, 34.083271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900791, 33.964268, 34.211159>,  <33.206268, 33.818489, 34.424309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900791, 33.964268, 34.211159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053129, -0.787134, -0.614490,
		-0.643394, -0.497590, 0.581763,
		-0.763690, 0.364451, -0.532874,
		32.671684, 34.073605, 34.051296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759243, 33.274189, 34.223831>,  <33.206268, 33.818489, 34.424309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759243, 33.274189, 34.223831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695263, 33.562431, 33.953972>,  <32.656876, 33.735374, 33.792057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695263, 33.562431, 33.953972>,  <32.759243, 33.274189, 34.223831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695263, 33.562431, 33.953972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089402, -0.670062, -0.736902,
		-0.983068, -0.178186, 0.042756,
		-0.159955, 0.720601, -0.674647,
		32.647278, 33.778610, 33.751579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332561, 32.932636, 33.634033>,  <32.759243, 33.274189, 34.223831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332561, 32.932636, 33.634033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502449, 33.257767, 33.474571>,  <32.604382, 33.452847, 33.378895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502449, 33.257767, 33.474571>,  <32.332561, 32.932636, 33.634033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502449, 33.257767, 33.474571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255210, -0.529977, -0.808698,
		-0.868609, 0.241730, -0.432534,
		0.424719, 0.812829, -0.398650,
		32.629864, 33.501614, 33.354977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102901, 33.077053, 32.939430>,  <32.332561, 32.932636, 33.634033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102901, 33.077053, 32.939430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449589, 33.276005, 32.924381>,  <32.657600, 33.395374, 32.915352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449589, 33.276005, 32.924381>,  <32.102901, 33.077053, 32.939430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449589, 33.276005, 32.924381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189564, -0.398219, -0.897489,
		-0.461370, 0.770740, -0.439429,
		0.866720, 0.497375, -0.037622,
		32.709606, 33.425217, 32.913094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102516, 33.400089, 32.295227>,  <32.102901, 33.077053, 32.939430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102516, 33.400089, 32.295227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488453, 33.386467, 32.399475>,  <32.720016, 33.378292, 32.462025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488453, 33.386467, 32.399475>,  <32.102516, 33.400089, 32.295227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488453, 33.386467, 32.399475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221309, -0.429633, -0.875464,
		0.141785, 0.902361, -0.406991,
		0.964842, -0.034057, 0.260616,
		32.777905, 33.376251, 32.477661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436073, 33.746239, 31.832525>,  <32.102516, 33.400089, 32.295227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436073, 33.746239, 31.832525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709808, 33.511463, 32.005585>,  <32.874050, 33.370598, 32.109421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709808, 33.511463, 32.005585>,  <32.436073, 33.746239, 31.832525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709808, 33.511463, 32.005585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191967, -0.427391, -0.883451,
		0.703443, 0.687632, -0.179805,
		0.684337, -0.586941, 0.432648,
		32.915108, 33.335381, 32.135380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178757, 34.010540, 31.645489>,  <32.436073, 33.746239, 31.832525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178757, 34.010540, 31.645489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178413, 33.625954, 31.755453>,  <33.178207, 33.395203, 31.821432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178413, 33.625954, 31.755453>,  <33.178757, 34.010540, 31.645489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178413, 33.625954, 31.755453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054984, -0.274541, -0.960002,
		0.998487, 0.014296, 0.053100,
		-0.000854, -0.961469, 0.274912,
		33.178158, 33.337513, 31.837927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701183, 33.699600, 31.218506>,  <33.178757, 34.010540, 31.645489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701183, 33.699600, 31.218506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547451, 33.362076, 31.368313>,  <33.455212, 33.159561, 31.458197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547451, 33.362076, 31.368313>,  <33.701183, 33.699600, 31.218506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547451, 33.362076, 31.368313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139415, -0.347973, -0.927081,
		0.912606, -0.408522, 0.016098,
		-0.384335, -0.843815, 0.374516,
		33.432152, 33.108932, 31.480667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103634, 33.117729, 30.983360>,  <33.701183, 33.699600, 31.218506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103634, 33.117729, 30.983360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761505, 32.935547, 31.082138>,  <33.556229, 32.826237, 31.141405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761505, 32.935547, 31.082138>,  <34.103634, 33.117729, 30.983360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761505, 32.935547, 31.082138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004918, -0.483752, -0.875191,
		0.518073, -0.747356, 0.416004,
		-0.855322, -0.455459, 0.246944,
		33.504910, 32.798908, 31.156221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249828, 32.438210, 30.882437>,  <34.103634, 33.117729, 30.983360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249828, 32.438210, 30.882437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849861, 32.442978, 30.884613>,  <33.609882, 32.445839, 30.885918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849861, 32.442978, 30.884613>,  <34.249828, 32.438210, 30.882437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849861, 32.442978, 30.884613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010703, -0.503681, -0.863824,
		-0.007558, -0.863808, 0.503765,
		-0.999914, 0.011920, 0.005439,
		33.549889, 32.446552, 30.886244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882187, 31.736221, 30.854874>,  <34.249828, 32.438210, 30.882437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882187, 31.736221, 30.854874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611546, 31.995817, 30.715721>,  <33.449162, 32.151573, 30.632229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611546, 31.995817, 30.715721>,  <33.882187, 31.736221, 30.854874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611546, 31.995817, 30.715721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002428, -0.474408, -0.880302,
		-0.736344, -0.594770, 0.322561,
		-0.676603, 0.648988, -0.347883,
		33.408566, 32.190514, 30.611357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356544, 31.329201, 30.675299>,  <33.882187, 31.736221, 30.854874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356544, 31.329201, 30.675299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300213, 31.672792, 30.478395>,  <33.266415, 31.878948, 30.360252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300213, 31.672792, 30.478395>,  <33.356544, 31.329201, 30.675299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300213, 31.672792, 30.478395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119135, -0.508305, -0.852896,
		-0.982840, -0.061465, 0.173918,
		-0.140826, 0.858981, -0.492260,
		33.257965, 31.930487, 30.330717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750584, 31.174437, 30.251534>,  <33.356544, 31.329201, 30.675299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750584, 31.174437, 30.251534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948498, 31.493244, 30.113001>,  <33.067245, 31.684528, 30.029882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948498, 31.493244, 30.113001>,  <32.750584, 31.174437, 30.251534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948498, 31.493244, 30.113001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021458, -0.387205, -0.921744,
		-0.868749, 0.463499, -0.174482,
		0.494788, 0.797020, -0.346330,
		33.096935, 31.732349, 30.009102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533203, 31.167160, 29.672102>,  <32.750584, 31.174437, 30.251534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533203, 31.167160, 29.672102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846519, 31.413469, 29.637960>,  <33.034508, 31.561255, 29.617476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846519, 31.413469, 29.637960>,  <32.533203, 31.167160, 29.672102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846519, 31.413469, 29.637960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097986, -0.257873, -0.961197,
		-0.613889, 0.744531, -0.262326,
		0.783288, 0.615772, -0.085352,
		33.081505, 31.598202, 29.612354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412388, 31.424362, 29.046734>,  <32.533203, 31.167160, 29.672102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412388, 31.424362, 29.046734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799324, 31.518919, 29.083332>,  <33.031487, 31.575653, 29.105291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799324, 31.518919, 29.083332>,  <32.412388, 31.424362, 29.046734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799324, 31.518919, 29.083332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170519, -0.339796, -0.924912,
		-0.187551, 0.910307, -0.369007,
		0.967341, 0.236390, 0.091495,
		33.089527, 31.589836, 29.110781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559731, 31.944304, 28.486055>,  <32.412388, 31.424362, 29.046734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559731, 31.944304, 28.486055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916328, 31.798466, 28.593616>,  <33.130287, 31.710962, 28.658154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916328, 31.798466, 28.593616>,  <32.559731, 31.944304, 28.486055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916328, 31.798466, 28.593616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169682, -0.281636, -0.944399,
		0.420057, 0.887553, -0.189212,
		0.891493, -0.364596, 0.268905,
		33.183777, 31.689087, 28.674288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989059, 32.013470, 27.959576>,  <32.559731, 31.944304, 28.486055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989059, 32.013470, 27.959576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185398, 31.724127, 28.153824>,  <33.303200, 31.550522, 28.270372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185398, 31.724127, 28.153824>,  <32.989059, 32.013470, 27.959576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185398, 31.724127, 28.153824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216484, -0.438646, -0.872195,
		0.843924, 0.533240, -0.058711,
		0.490843, -0.723357, 0.485622,
		33.332649, 31.507120, 28.299511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646030, 31.993942, 27.651377>,  <32.989059, 32.013470, 27.959576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646030, 31.993942, 27.651377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585079, 31.636288, 27.819803>,  <33.548508, 31.421694, 27.920858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585079, 31.636288, 27.819803>,  <33.646030, 31.993942, 27.651377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585079, 31.636288, 27.819803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421355, -0.444156, -0.790686,
		0.894002, 0.056933, 0.444431,
		-0.152381, -0.894139, 0.421066,
		33.539364, 31.368046, 27.946123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230370, 31.725079, 27.673281>,  <33.646030, 31.993942, 27.651377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230370, 31.725079, 27.673281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986908, 31.408405, 27.694370>,  <33.840832, 31.218401, 27.707024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986908, 31.408405, 27.694370>,  <34.230370, 31.725079, 27.673281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986908, 31.408405, 27.694370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577124, -0.487339, -0.655308,
		0.544492, -0.368426, 0.753519,
		-0.608652, -0.791684, 0.052725,
		33.804314, 31.170900, 27.710188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658600, 31.173868, 27.787537>,  <34.230370, 31.725079, 27.673281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658600, 31.173868, 27.787537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318233, 31.019850, 27.644611>,  <34.114014, 30.927439, 27.558855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318233, 31.019850, 27.644611>,  <34.658600, 31.173868, 27.787537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318233, 31.019850, 27.644611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525259, -0.615766, -0.587312,
		0.006121, -0.687438, 0.726217,
		-0.850921, -0.385047, -0.357314,
		34.062958, 30.904335, 27.537416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721886, 30.392456, 27.760859>,  <34.658600, 31.173868, 27.787537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721886, 30.392456, 27.760859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428219, 30.479065, 27.503450>,  <34.252018, 30.531031, 27.349007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428219, 30.479065, 27.503450>,  <34.721886, 30.392456, 27.760859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428219, 30.479065, 27.503450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417513, -0.603446, -0.679364,
		-0.535425, -0.767445, 0.352631,
		-0.734169, 0.216521, -0.643518,
		34.207970, 30.544022, 27.310394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519882, 29.821562, 27.475483>,  <34.721886, 30.392456, 27.760859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519882, 29.821562, 27.475483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421280, 30.119364, 27.227306>,  <34.362118, 30.298046, 27.078402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421280, 30.119364, 27.227306>,  <34.519882, 29.821562, 27.475483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421280, 30.119364, 27.227306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407379, -0.501289, -0.763382,
		-0.879363, -0.440930, -0.179728,
		-0.246502, 0.744507, -0.620440,
		34.347328, 30.342716, 27.041174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401218, 29.504292, 26.844282>,  <34.519882, 29.821562, 27.475483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401218, 29.504292, 26.844282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454948, 29.883339, 26.728367>,  <34.487186, 30.110767, 26.658817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454948, 29.883339, 26.728367>,  <34.401218, 29.504292, 26.844282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454948, 29.883339, 26.728367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400289, -0.319405, -0.858924,
		-0.906491, -0.000626, -0.422224,
		0.134323, 0.947618, -0.289788,
		34.495247, 30.167624, 26.641430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244141, 29.449173, 26.161079>,  <34.401218, 29.504292, 26.844282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244141, 29.449173, 26.161079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440037, 29.795475, 26.202301>,  <34.557575, 30.003256, 26.227034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440037, 29.795475, 26.202301>,  <34.244141, 29.449173, 26.161079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440037, 29.795475, 26.202301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538093, -0.207132, -0.817039,
		-0.686010, 0.455591, -0.567298,
		0.489742, 0.865756, 0.103056,
		34.586960, 30.055202, 26.233217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170883, 29.772345, 25.451918>,  <34.244141, 29.449173, 26.161079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170883, 29.772345, 25.451918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463734, 29.949514, 25.658920>,  <34.639442, 30.055817, 25.783121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463734, 29.949514, 25.658920>,  <34.170883, 29.772345, 25.451918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463734, 29.949514, 25.658920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543636, 0.077833, -0.835704,
		-0.410433, 0.893174, -0.183806,
		0.732123, 0.442924, 0.517507,
		34.683372, 30.082392, 25.814173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233055, 30.345810, 25.039762>,  <34.170883, 29.772345, 25.451918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233055, 30.345810, 25.039762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572208, 30.322359, 25.250534>,  <34.775700, 30.308289, 25.376997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572208, 30.322359, 25.250534>,  <34.233055, 30.345810, 25.039762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572208, 30.322359, 25.250534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530006, 0.068167, -0.845250,
		0.013637, 0.995950, 0.088872,
		0.847884, -0.058629, 0.526930,
		34.826572, 30.304770, 25.408613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677650, 30.928997, 24.759094>,  <34.233055, 30.345810, 25.039762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677650, 30.928997, 24.759094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930096, 30.672880, 24.934237>,  <35.081562, 30.519211, 25.039322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930096, 30.672880, 24.934237>,  <34.677650, 30.928997, 24.759094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930096, 30.672880, 24.934237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624893, 0.085248, -0.776042,
		0.459566, 0.763387, 0.453915,
		0.631116, -0.640291, 0.437858,
		35.119431, 30.480793, 25.065594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421928, 31.192644, 24.744011>,  <34.677650, 30.928997, 24.759094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421928, 31.192644, 24.744011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444130, 30.793425, 24.732576>,  <35.457451, 30.553892, 24.725716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444130, 30.793425, 24.732576>,  <35.421928, 31.192644, 24.744011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444130, 30.793425, 24.732576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668669, 0.058419, -0.741262,
		0.741486, 0.022026, 0.670607,
		0.055503, -0.998049, -0.028588,
		35.460781, 30.494009, 24.723999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052769, 31.154644, 24.550705>,  <35.421928, 31.192644, 24.744011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052769, 31.154644, 24.550705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912407, 30.782537, 24.507864>,  <35.828190, 30.559273, 24.482159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912407, 30.782537, 24.507864>,  <36.052769, 31.154644, 24.550705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912407, 30.782537, 24.507864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618982, -0.144607, -0.771978,
		0.702657, -0.337186, 0.626561,
		-0.350905, -0.930266, -0.107102,
		35.807137, 30.503458, 24.475733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663429, 30.733772, 24.373936>,  <36.052769, 31.154644, 24.550705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663429, 30.733772, 24.373936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343750, 30.537617, 24.234907>,  <36.151943, 30.419924, 24.151489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343750, 30.537617, 24.234907>,  <36.663429, 30.733772, 24.373936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343750, 30.537617, 24.234907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530211, -0.302777, -0.791961,
		0.283131, -0.817218, 0.501987,
		-0.799195, -0.490388, -0.347573,
		36.103992, 30.390501, 24.130636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013680, 30.019358, 24.089909>,  <36.663429, 30.733772, 24.373936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013680, 30.019358, 24.089909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638756, 30.048748, 23.953646>,  <36.413799, 30.066381, 23.871889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638756, 30.048748, 23.953646>,  <37.013680, 30.019358, 24.089909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638756, 30.048748, 23.953646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256929, -0.514714, -0.817959,
		-0.235440, -0.854208, 0.463569,
		-0.937313, 0.073476, -0.340655,
		36.357563, 30.070791, 23.851450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755001, 29.305902, 23.919706>,  <37.013680, 30.019358, 24.089909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755001, 29.305902, 23.919706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538857, 29.559961, 23.698944>,  <36.409172, 29.712397, 23.566486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538857, 29.559961, 23.698944>,  <36.755001, 29.305902, 23.919706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538857, 29.559961, 23.698944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267054, -0.492544, -0.828301,
		-0.797933, -0.594967, 0.096531,
		-0.540357, 0.635149, -0.551905,
		36.376751, 29.750505, 23.533373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275269, 28.877672, 23.466234>,  <36.755001, 29.305902, 23.919706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275269, 28.877672, 23.466234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300121, 29.223862, 23.267401>,  <36.315033, 29.431576, 23.148100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300121, 29.223862, 23.267401>,  <36.275269, 28.877672, 23.466234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300121, 29.223862, 23.267401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012681, -0.498690, -0.866688,
		-0.997987, 0.047548, -0.041961,
		0.062135, 0.865475, -0.497083,
		36.318760, 29.483505, 23.118277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875198, 28.720268, 22.814047>,  <36.275269, 28.877672, 23.466234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875198, 28.720268, 22.814047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089211, 29.053455, 22.757597>,  <36.217617, 29.253366, 22.723728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089211, 29.053455, 22.757597>,  <35.875198, 28.720268, 22.814047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089211, 29.053455, 22.757597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054812, -0.200915, -0.978074,
		-0.843056, 0.515560, -0.153151,
		0.535026, 0.832965, -0.141124,
		36.249718, 29.303345, 22.715260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512276, 28.984467, 22.329237>,  <35.875198, 28.720268, 22.814047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512276, 28.984467, 22.329237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902214, 29.073532, 22.332977>,  <36.136177, 29.126972, 22.335222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902214, 29.073532, 22.332977>,  <35.512276, 28.984467, 22.329237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902214, 29.073532, 22.332977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071216, -0.271487, -0.959804,
		-0.211175, 0.936331, -0.280517,
		0.974850, 0.222664, 0.009350,
		36.194668, 29.140331, 22.335783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673710, 29.563763, 21.839369>,  <35.512276, 28.984467, 22.329237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673710, 29.563763, 21.839369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001522, 29.337080, 21.873335>,  <36.198212, 29.201071, 21.893715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001522, 29.337080, 21.873335>,  <35.673710, 29.563763, 21.839369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001522, 29.337080, 21.873335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015215, -0.126612, -0.991835,
		0.572830, 0.814134, -0.095140,
		0.819533, -0.566706, 0.084914,
		36.247383, 29.167068, 21.898809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131187, 29.869762, 21.363186>,  <35.673710, 29.563763, 21.839369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131187, 29.869762, 21.363186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265430, 29.499956, 21.435448>,  <36.345978, 29.278072, 21.478806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265430, 29.499956, 21.435448>,  <36.131187, 29.869762, 21.363186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265430, 29.499956, 21.435448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292633, -0.079966, -0.952875,
		0.895395, 0.372661, 0.243706,
		0.335611, -0.924516, 0.180654,
		36.366116, 29.222601, 21.489643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722553, 29.800728, 20.890995>,  <36.131187, 29.869762, 21.363186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722553, 29.800728, 20.890995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619953, 29.418875, 20.951508>,  <36.558392, 29.189764, 20.987816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619953, 29.418875, 20.951508>,  <36.722553, 29.800728, 20.890995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619953, 29.418875, 20.951508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468801, -0.259754, -0.844247,
		0.845240, -0.145632, 0.514160,
		-0.256505, -0.954631, 0.151281,
		36.543003, 29.132486, 20.996891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372967, 29.327961, 21.093086>,  <36.722553, 29.800728, 20.890995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372967, 29.327961, 21.093086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075958, 29.166546, 20.879236>,  <36.897755, 29.069696, 20.750927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075958, 29.166546, 20.879236>,  <37.372967, 29.327961, 21.093086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075958, 29.166546, 20.879236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602972, -0.055101, -0.795857,
		0.291700, -0.913302, 0.284236,
		-0.742520, -0.403538, -0.534623,
		36.853203, 29.045485, 20.718849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406509, 28.460915, 21.119989>,  <37.372967, 29.327961, 21.093086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406509, 28.460915, 21.119989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772423, 28.300505, 21.139416>,  <37.991970, 28.204258, 21.151072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772423, 28.300505, 21.139416>,  <37.406509, 28.460915, 21.119989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772423, 28.300505, 21.139416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165580, 0.481912, 0.860433,
		-0.368460, -0.779064, 0.507244,
		0.914779, -0.401025, 0.048568,
		38.046856, 28.180197, 21.153986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546734, 28.098547, 21.833290>,  <37.406509, 28.460915, 21.119989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546734, 28.098547, 21.833290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847633, 28.270647, 21.633688>,  <38.028172, 28.373907, 21.513927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847633, 28.270647, 21.633688>,  <37.546734, 28.098547, 21.833290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847633, 28.270647, 21.633688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109284, 0.665386, 0.738457,
		0.649740, -0.610043, 0.453525,
		0.752260, 0.430242, -0.498996,
		38.073307, 28.399723, 21.483986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068157, 28.371750, 22.371218>,  <37.546734, 28.098547, 21.833290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068157, 28.371750, 22.371218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159176, 28.567921, 22.034718>,  <38.213787, 28.685623, 21.832817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159176, 28.567921, 22.034718>,  <38.068157, 28.371750, 22.371218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159176, 28.567921, 22.034718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231863, 0.811779, 0.535962,
		0.945760, -0.317012, 0.071006,
		0.227547, 0.490427, -0.841251,
		38.227440, 28.715050, 21.782343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686699, 28.720201, 22.515860>,  <38.068157, 28.371750, 22.371218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686699, 28.720201, 22.515860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503948, 28.891764, 22.204142>,  <38.394299, 28.994701, 22.017111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503948, 28.891764, 22.204142>,  <38.686699, 28.720201, 22.515860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503948, 28.891764, 22.204142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299230, 0.899126, 0.319428,
		0.837689, -0.087248, -0.539134,
		-0.456879, 0.428907, -0.779295,
		38.366886, 29.020435, 21.970354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094460, 29.372910, 22.248203>,  <38.686699, 28.720201, 22.515860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094460, 29.372910, 22.248203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728828, 29.450455, 22.105724>,  <38.509449, 29.496981, 22.020237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728828, 29.450455, 22.105724>,  <39.094460, 29.372910, 22.248203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728828, 29.450455, 22.105724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025233, 0.903824, 0.427159,
		0.404748, 0.381470, -0.831060,
		-0.914080, 0.193862, -0.356195,
		38.454605, 29.508614, 21.998865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134911, 30.112757, 22.073111>,  <39.094460, 29.372910, 22.248203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134911, 30.112757, 22.073111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748211, 30.026627, 22.128288>,  <38.516190, 29.974949, 22.161394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748211, 30.026627, 22.128288>,  <39.134911, 30.112757, 22.073111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748211, 30.026627, 22.128288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139744, 0.896607, 0.420199,
		-0.214160, 0.386951, -0.896886,
		-0.966751, -0.215324, 0.137943,
		38.458187, 29.962029, 22.169672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759415, 30.668688, 21.782036>,  <39.134911, 30.112757, 22.073111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759415, 30.668688, 21.782036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499531, 30.494125, 22.031012>,  <38.343601, 30.389389, 22.180397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499531, 30.494125, 22.031012>,  <38.759415, 30.668688, 21.782036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499531, 30.494125, 22.031012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111947, 0.864800, 0.489478,
		-0.751894, 0.248339, -0.610724,
		-0.649710, -0.436404, 0.622437,
		38.304619, 30.363205, 22.217743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038815, 31.059153, 21.836996>,  <38.759415, 30.668688, 21.782036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038815, 31.059153, 21.836996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055847, 30.860584, 22.183811>,  <38.066067, 30.741444, 22.391901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055847, 30.860584, 22.183811>,  <38.038815, 31.059153, 21.836996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055847, 30.860584, 22.183811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373223, 0.797096, 0.474703,
		-0.926764, -0.343811, -0.151335,
		0.042579, -0.496420, 0.867038,
		38.068623, 30.711658, 22.443922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392067, 31.200207, 22.172489>,  <38.038815, 31.059153, 21.836996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392067, 31.200207, 22.172489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623497, 31.052763, 22.463524>,  <37.762356, 30.964296, 22.638145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623497, 31.052763, 22.463524>,  <37.392067, 31.200207, 22.172489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623497, 31.052763, 22.463524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341235, 0.700840, 0.626404,
		-0.740820, -0.610698, 0.279704,
		0.578571, -0.368607, 0.727588,
		37.797070, 30.942181, 22.681801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011021, 31.228901, 22.783222>,  <37.392067, 31.200207, 22.172489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011021, 31.228901, 22.783222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382565, 31.207382, 22.929821>,  <37.605492, 31.194471, 23.017780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382565, 31.207382, 22.929821>,  <37.011021, 31.228901, 22.783222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382565, 31.207382, 22.929821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247262, 0.646660, 0.721590,
		-0.275817, -0.760879, 0.587356,
		0.928863, -0.053796, 0.366497,
		37.661224, 31.191244, 23.039770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009651, 31.112370, 23.610109>,  <37.011021, 31.228901, 22.783222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009651, 31.112370, 23.610109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379333, 31.236988, 23.521769>,  <37.601143, 31.311758, 23.468763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379333, 31.236988, 23.521769>,  <37.009651, 31.112370, 23.610109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379333, 31.236988, 23.521769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031096, 0.515010, 0.856620,
		0.380615, -0.798565, 0.466290,
		0.924211, 0.311543, -0.220853,
		37.656597, 31.330452, 23.455513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408394, 31.080965, 24.287411>,  <37.009651, 31.112370, 23.610109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408394, 31.080965, 24.287411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608776, 31.344288, 24.062670>,  <37.729004, 31.502281, 23.927824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608776, 31.344288, 24.062670>,  <37.408394, 31.080965, 24.287411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608776, 31.344288, 24.062670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179613, 0.555974, 0.811561,
		0.846632, -0.507470, 0.160276,
		0.500952, 0.658306, -0.561854,
		37.759064, 31.541780, 23.894114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107925, 31.187527, 24.680717>,  <37.408394, 31.080965, 24.287411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107925, 31.187527, 24.680717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054440, 31.494995, 24.430511>,  <38.022346, 31.679476, 24.280388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054440, 31.494995, 24.430511>,  <38.107925, 31.187527, 24.680717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054440, 31.494995, 24.430511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264142, 0.635993, 0.725080,
		0.955170, -0.068272, -0.288079,
		-0.133713, 0.768669, -0.625515,
		38.014324, 31.725595, 24.242857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680321, 31.649246, 24.840284>,  <38.107925, 31.187527, 24.680717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680321, 31.649246, 24.840284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423100, 31.865593, 24.623417>,  <38.268768, 31.995401, 24.493296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423100, 31.865593, 24.623417>,  <38.680321, 31.649246, 24.840284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423100, 31.865593, 24.623417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083469, 0.753239, 0.652429,
		0.761258, 0.374293, -0.529519,
		-0.643054, 0.540866, -0.542168,
		38.230183, 32.027851, 24.460766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022423, 32.363949, 24.717806>,  <38.680321, 31.649246, 24.840284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022423, 32.363949, 24.717806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633564, 32.427559, 24.648941>,  <38.400249, 32.465725, 24.607622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633564, 32.427559, 24.648941>,  <39.022423, 32.363949, 24.717806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633564, 32.427559, 24.648941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003494, 0.724666, 0.689092,
		0.234341, 0.670501, -0.703927,
		-0.972148, 0.159023, -0.172162,
		38.341919, 32.475266, 24.597292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902122, 33.123386, 24.588375>,  <39.022423, 32.363949, 24.717806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902122, 33.123386, 24.588375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557198, 32.973320, 24.724411>,  <38.350243, 32.883278, 24.806032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557198, 32.973320, 24.724411>,  <38.902122, 33.123386, 24.588375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557198, 32.973320, 24.724411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114807, 0.798984, 0.590292,
		-0.493186, 0.469973, -0.732047,
		-0.862315, -0.375168, 0.340091,
		38.298504, 32.860771, 24.826439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500893, 33.663059, 24.640568>,  <38.902122, 33.123386, 24.588375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500893, 33.663059, 24.640568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320927, 33.389500, 24.870300>,  <38.212948, 33.225365, 25.008141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320927, 33.389500, 24.870300>,  <38.500893, 33.663059, 24.640568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320927, 33.389500, 24.870300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237656, 0.711596, 0.661174,
		-0.860868, 0.160980, -0.482692,
		-0.449918, -0.683898, 0.574332,
		38.185951, 33.184330, 25.042601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828304, 34.021297, 24.869614>,  <38.500893, 33.663059, 24.640568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828304, 34.021297, 24.869614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901329, 33.732056, 25.136086>,  <37.945145, 33.558510, 25.295969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901329, 33.732056, 25.136086>,  <37.828304, 34.021297, 24.869614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901329, 33.732056, 25.136086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263003, 0.616956, 0.741751,
		-0.947364, -0.310625, -0.077543,
		0.182565, -0.723103, 0.666178,
		37.956100, 33.515125, 25.335939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337322, 34.071808, 25.337849>,  <37.828304, 34.021297, 24.869614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337322, 34.071808, 25.337849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588593, 33.840698, 25.546301>,  <37.739353, 33.702034, 25.671371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588593, 33.840698, 25.546301>,  <37.337322, 34.071808, 25.337849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588593, 33.840698, 25.546301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308777, 0.429655, 0.848560,
		-0.714180, -0.693957, 0.091496,
		0.628175, -0.577772, 0.521128,
		37.777046, 33.667366, 25.702639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954288, 33.698215, 25.801085>,  <37.337322, 34.071808, 25.337849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954288, 33.698215, 25.801085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324944, 33.696732, 25.951456>,  <37.547337, 33.695843, 26.041679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324944, 33.696732, 25.951456>,  <36.954288, 33.698215, 25.801085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324944, 33.696732, 25.951456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347382, 0.373874, 0.859967,
		-0.143739, -0.927472, 0.345159,
		0.926641, -0.003709, 0.375928,
		37.602936, 33.695618, 26.064234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860184, 33.559563, 26.503475>,  <36.954288, 33.698215, 25.801085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860184, 33.559563, 26.503475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220501, 33.732677, 26.489223>,  <37.436691, 33.836548, 26.480673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220501, 33.732677, 26.489223>,  <36.860184, 33.559563, 26.503475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220501, 33.732677, 26.489223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245027, 0.574299, 0.781116,
		0.358521, -0.694892, 0.623368,
		0.900791, 0.432788, -0.035631,
		37.490738, 33.862514, 26.478535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083920, 33.598866, 27.214428>,  <36.860184, 33.559563, 26.503475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083920, 33.598866, 27.214428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306057, 33.873180, 27.026264>,  <37.439339, 34.037769, 26.913366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306057, 33.873180, 27.026264>,  <37.083920, 33.598866, 27.214428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306057, 33.873180, 27.026264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202266, 0.660051, 0.723478,
		0.806649, -0.306631, 0.505267,
		0.555343, 0.685791, -0.470409,
		37.472660, 34.078918, 26.885141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525661, 33.770580, 27.627102>,  <37.083920, 33.598866, 27.214428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525661, 33.770580, 27.627102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543808, 34.083630, 27.378767>,  <37.554695, 34.271461, 27.229767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543808, 34.083630, 27.378767>,  <37.525661, 33.770580, 27.627102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543808, 34.083630, 27.378767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240662, 0.611734, 0.753567,
		0.969548, 0.115222, 0.216103,
		0.045370, 0.782627, -0.620835,
		37.557419, 34.318417, 27.192516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934971, 34.236897, 27.872738>,  <37.525661, 33.770580, 27.627102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934971, 34.236897, 27.872738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707584, 34.468914, 27.639366>,  <37.571152, 34.608124, 27.499344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707584, 34.468914, 27.639366>,  <37.934971, 34.236897, 27.872738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707584, 34.468914, 27.639366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189821, 0.597550, 0.779039,
		0.800506, 0.553608, -0.229584,
		-0.568470, 0.580046, -0.583429,
		37.537045, 34.642929, 27.464338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133183, 34.898468, 28.052782>,  <37.934971, 34.236897, 27.872738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133183, 34.898468, 28.052782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794319, 34.962276, 27.850048>,  <37.591003, 35.000561, 27.728409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794319, 34.962276, 27.850048>,  <38.133183, 34.898468, 28.052782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794319, 34.962276, 27.850048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298326, 0.646540, 0.702131,
		0.439690, 0.746016, -0.500132,
		-0.847156, 0.159517, -0.506834,
		37.540173, 35.010132, 27.697998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004311, 35.633434, 28.136803>,  <38.133183, 34.898468, 28.052782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004311, 35.633434, 28.136803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662903, 35.465775, 28.012985>,  <37.458057, 35.365177, 27.938694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662903, 35.465775, 28.012985>,  <38.004311, 35.633434, 28.136803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662903, 35.465775, 28.012985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507988, 0.537130, 0.673380,
		-0.115981, 0.731988, -0.671374,
		-0.853520, -0.419148, -0.309544,
		37.406845, 35.340031, 27.920122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650253, 36.199112, 28.061312>,  <38.004311, 35.633434, 28.136803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650253, 36.199112, 28.061312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407238, 35.885483, 28.112110>,  <37.261429, 35.697308, 28.142590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407238, 35.885483, 28.112110>,  <37.650253, 36.199112, 28.061312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407238, 35.885483, 28.112110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455682, 0.475022, 0.752800,
		-0.650573, 0.399488, -0.645882,
		-0.607543, -0.784068, 0.126997,
		37.224976, 35.650261, 28.150209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882828, 36.466118, 27.992895>,  <37.650253, 36.199112, 28.061312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882828, 36.466118, 27.992895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895386, 36.124428, 28.200478>,  <36.902920, 35.919415, 28.325027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895386, 36.124428, 28.200478>,  <36.882828, 36.466118, 27.992895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895386, 36.124428, 28.200478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626406, 0.387778, 0.676198,
		-0.778865, -0.346308, -0.522915,
		0.031398, -0.854224, 0.518956,
		36.904804, 35.868160, 28.356165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301369, 36.513641, 28.221001>,  <36.882828, 36.466118, 27.992895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301369, 36.513641, 28.221001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471928, 36.243500, 28.461695>,  <36.574265, 36.081413, 28.606112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471928, 36.243500, 28.461695>,  <36.301369, 36.513641, 28.221001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471928, 36.243500, 28.461695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590264, 0.296328, 0.750851,
		-0.685401, -0.675342, -0.272284,
		0.426396, -0.675354, 0.601734,
		36.599846, 36.040894, 28.642216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815643, 36.132771, 28.507439>,  <36.301369, 36.513641, 28.221001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815643, 36.132771, 28.507439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105404, 36.098152, 28.781008>,  <36.279259, 36.077381, 28.945150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105404, 36.098152, 28.781008>,  <35.815643, 36.132771, 28.507439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105404, 36.098152, 28.781008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611259, 0.378086, 0.695280,
		-0.318758, -0.921716, 0.220982,
		0.724401, -0.086549, 0.683925,
		36.322723, 36.072189, 28.986185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479347, 35.917160, 29.190620>,  <35.815643, 36.132771, 28.507439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479347, 35.917160, 29.190620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827824, 36.054554, 29.330927>,  <36.036911, 36.136990, 29.415112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827824, 36.054554, 29.330927>,  <35.479347, 35.917160, 29.190620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827824, 36.054554, 29.330927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482996, 0.471697, 0.737710,
		0.087938, -0.812109, 0.576842,
		0.871195, 0.343485, 0.350766,
		36.089184, 36.157600, 29.436157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407700, 35.756992, 29.828840>,  <35.479347, 35.917160, 29.190620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407700, 35.756992, 29.828840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701771, 36.028141, 29.829189>,  <35.878212, 36.190830, 29.829399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701771, 36.028141, 29.829189>,  <35.407700, 35.756992, 29.828840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701771, 36.028141, 29.829189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318927, 0.344749, 0.882856,
		0.598166, -0.649332, 0.469644,
		0.735175, 0.677876, 0.000872,
		35.922325, 36.231503, 29.829451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761974, 35.724514, 30.414982>,  <35.407700, 35.756992, 29.828840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761974, 35.724514, 30.414982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860771, 36.094639, 30.299892>,  <35.920052, 36.316715, 30.230839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860771, 36.094639, 30.299892>,  <35.761974, 35.724514, 30.414982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860771, 36.094639, 30.299892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288434, 0.353667, 0.889789,
		0.925094, -0.136784, 0.354247,
		0.246994, 0.925316, -0.287722,
		35.934868, 36.372234, 30.213575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158615, 36.053917, 30.933947>,  <35.761974, 35.724514, 30.414982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158615, 36.053917, 30.933947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996944, 36.359184, 30.732267>,  <35.899940, 36.542343, 30.611259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996944, 36.359184, 30.732267>,  <36.158615, 36.053917, 30.933947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996944, 36.359184, 30.732267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146222, 0.490230, 0.859240,
		0.902918, 0.421009, -0.086547,
		-0.404176, 0.763168, -0.504198,
		35.875690, 36.588135, 30.581007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286133, 36.574963, 31.364511>,  <36.158615, 36.053917, 30.933947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286133, 36.574963, 31.364511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995899, 36.742184, 31.145874>,  <35.821758, 36.842518, 31.014692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995899, 36.742184, 31.145874>,  <36.286133, 36.574963, 31.364511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995899, 36.742184, 31.145874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397849, 0.393250, 0.828897,
		0.561472, 0.818893, -0.119012,
		-0.725580, 0.418054, -0.546594,
		35.778225, 36.867599, 30.981895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233341, 37.296425, 31.485483>,  <36.286133, 36.574963, 31.364511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233341, 37.296425, 31.485483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871658, 37.202206, 31.342978>,  <35.654648, 37.145676, 31.257473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871658, 37.202206, 31.342978>,  <36.233341, 37.296425, 31.485483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871658, 37.202206, 31.342978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426133, 0.553451, 0.715614,
		0.028614, 0.798880, -0.600810,
		-0.904208, -0.235549, -0.356266,
		35.600395, 37.131542, 31.236097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910492, 37.841980, 31.648544>,  <36.233341, 37.296425, 31.485483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910492, 37.841980, 31.648544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603775, 37.597256, 31.570858>,  <35.419746, 37.450420, 31.524246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603775, 37.597256, 31.570858>,  <35.910492, 37.841980, 31.648544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603775, 37.597256, 31.570858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564403, 0.498498, 0.657989,
		-0.305750, 0.614154, -0.727552,
		-0.766790, -0.611812, -0.194214,
		35.373737, 37.413712, 31.512594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345974, 38.228489, 31.812363>,  <35.910492, 37.841980, 31.648544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345974, 38.228489, 31.812363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208157, 37.852989, 31.809839>,  <35.125465, 37.627689, 31.808325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208157, 37.852989, 31.809839>,  <35.345974, 38.228489, 31.812363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208157, 37.852989, 31.809839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618388, 0.221900, 0.753895,
		-0.706317, 0.263653, -0.656965,
		-0.344547, -0.938748, -0.006308,
		35.104794, 37.571365, 31.807947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647846, 38.266678, 31.973938>,  <35.345974, 38.228489, 31.812363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647846, 38.266678, 31.973938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756496, 37.892632, 32.064964>,  <34.821686, 37.668205, 32.119579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756496, 37.892632, 32.064964>,  <34.647846, 38.266678, 31.973938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756496, 37.892632, 32.064964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530190, 0.051943, 0.846286,
		-0.803193, -0.350525, -0.481678,
		0.271625, -0.935112, 0.227565,
		34.837982, 37.612099, 32.133232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029861, 37.980221, 32.132332>,  <34.647846, 38.266678, 31.973938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029861, 37.980221, 32.132332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310745, 37.733459, 32.274506>,  <34.479275, 37.585403, 32.359810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310745, 37.733459, 32.274506>,  <34.029861, 37.980221, 32.132332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310745, 37.733459, 32.274506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441059, 0.014965, 0.897353,
		-0.558901, -0.786895, -0.261583,
		0.702208, -0.616906, 0.355431,
		34.521408, 37.548389, 32.381134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702236, 37.413689, 32.343605>,  <34.029861, 37.980221, 32.132332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702236, 37.413689, 32.343605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051533, 37.439774, 32.536770>,  <34.261108, 37.455425, 32.652668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051533, 37.439774, 32.536770>,  <33.702236, 37.413689, 32.343605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051533, 37.439774, 32.536770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487124, 0.090613, 0.868619,
		0.012891, -0.993748, 0.110896,
		0.873238, 0.065217, 0.482911,
		34.313503, 37.459339, 32.681644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487648, 37.101254, 32.973461>,  <33.702236, 37.413689, 32.343605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487648, 37.101254, 32.973461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841694, 37.272224, 33.047092>,  <34.054119, 37.374805, 33.091270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841694, 37.272224, 33.047092>,  <33.487648, 37.101254, 32.973461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841694, 37.272224, 33.047092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200451, -0.006817, 0.979680,
		0.419998, -0.904024, 0.079645,
		0.885111, 0.427428, 0.184075,
		34.107227, 37.400452, 33.102314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792675, 36.636875, 33.575222>,  <33.487648, 37.101254, 32.973461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792675, 36.636875, 33.575222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995880, 36.981052, 33.559387>,  <34.117802, 37.187557, 33.549885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995880, 36.981052, 33.559387>,  <33.792675, 36.636875, 33.575222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995880, 36.981052, 33.559387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032194, 0.064893, 0.997373,
		0.860749, -0.505402, 0.060668,
		0.508011, 0.860440, -0.039586,
		34.148285, 37.239185, 33.547512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434517, 36.597473, 33.928799>,  <33.792675, 36.636875, 33.575222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434517, 36.597473, 33.928799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301872, 36.974823, 33.932384>,  <34.222286, 37.201233, 33.934536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301872, 36.974823, 33.932384>,  <34.434517, 36.597473, 33.928799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301872, 36.974823, 33.932384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107528, 0.028357, 0.993798,
		0.937266, 0.330523, -0.110843,
		-0.331616, 0.943372, 0.008962,
		34.202389, 37.257835, 33.935074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955692, 37.048714, 34.260319>,  <34.434517, 36.597473, 33.928799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955692, 37.048714, 34.260319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609653, 37.245979, 34.296970>,  <34.402031, 37.364338, 34.318962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609653, 37.245979, 34.296970>,  <34.955692, 37.048714, 34.260319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609653, 37.245979, 34.296970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153502, 0.086370, 0.984367,
		0.477543, 0.865636, -0.150420,
		-0.865095, 0.493168, 0.091631,
		34.350124, 37.393929, 34.324459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665527, 37.024979, 34.436031>,  <34.955692, 37.048714, 34.260319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665527, 37.024979, 34.436031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957458, 36.833405, 34.631161>,  <36.132618, 36.718460, 34.748238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957458, 36.833405, 34.631161>,  <35.665527, 37.024979, 34.436031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957458, 36.833405, 34.631161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372852, -0.319235, -0.871246,
		0.573002, 0.817746, -0.054415,
		0.729829, -0.478937, 0.487821,
		36.176407, 36.689724, 34.777508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278641, 36.973003, 34.005398>,  <35.665527, 37.024979, 34.436031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278641, 36.973003, 34.005398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437305, 36.750378, 34.297398>,  <36.532505, 36.616802, 34.472599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437305, 36.750378, 34.297398>,  <36.278641, 36.973003, 34.005398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437305, 36.750378, 34.297398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674504, -0.362702, -0.643033,
		0.622660, 0.747454, 0.231532,
		0.396661, -0.556560, 0.730001,
		36.556305, 36.583408, 34.516399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937424, 37.241299, 34.101788>,  <36.278641, 36.973003, 34.005398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937424, 37.241299, 34.101788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912140, 36.860088, 34.220280>,  <36.896969, 36.631363, 34.291374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912140, 36.860088, 34.220280>,  <36.937424, 37.241299, 34.101788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912140, 36.860088, 34.220280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693397, -0.255413, -0.673769,
		0.717778, 0.162816, 0.676968,
		-0.063206, -0.953024, 0.296227,
		36.893177, 36.574181, 34.309147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606361, 36.938217, 34.079430>,  <36.937424, 37.241299, 34.101788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606361, 36.938217, 34.079430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380589, 36.608307, 34.065781>,  <37.245125, 36.410362, 34.057590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380589, 36.608307, 34.065781>,  <37.606361, 36.938217, 34.079430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380589, 36.608307, 34.065781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668519, -0.432468, -0.605023,
		0.484248, -0.364311, 0.795476,
		-0.564435, -0.824772, -0.034127,
		37.211258, 36.360874, 34.055542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111591, 36.337948, 34.058987>,  <37.606361, 36.938217, 34.079430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111591, 36.337948, 34.058987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766697, 36.177528, 33.935238>,  <37.559761, 36.081276, 33.860989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766697, 36.177528, 33.935238>,  <38.111591, 36.337948, 34.058987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766697, 36.177528, 33.935238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504760, -0.629688, -0.590518,
		0.042018, -0.665324, 0.745372,
		-0.862237, -0.401046, -0.309370,
		37.508026, 36.057213, 33.842426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165607, 35.691303, 34.148422>,  <38.111591, 36.337948, 34.058987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165607, 35.691303, 34.148422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887581, 35.746586, 33.866207>,  <37.720764, 35.779755, 33.696880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887581, 35.746586, 33.866207>,  <38.165607, 35.691303, 34.148422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887581, 35.746586, 33.866207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572074, -0.488054, -0.659193,
		-0.435440, -0.861802, 0.260170,
		-0.695071, 0.138202, -0.705533,
		37.679058, 35.788048, 33.654549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966320, 35.008984, 33.861023>,  <38.165607, 35.691303, 34.148422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966320, 35.008984, 33.861023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869709, 35.268677, 33.572533>,  <37.811745, 35.424492, 33.399437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869709, 35.268677, 33.572533>,  <37.966320, 35.008984, 33.861023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869709, 35.268677, 33.572533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636227, -0.455250, -0.622866,
		-0.732721, -0.609300, -0.303104,
		-0.241524, 0.649230, -0.721225,
		37.797253, 35.463448, 33.356167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876274, 34.633984, 33.339741>,  <37.966320, 35.008984, 33.861023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876274, 34.633984, 33.339741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926964, 34.993523, 33.171925>,  <37.957378, 35.209244, 33.071236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926964, 34.993523, 33.171925>,  <37.876274, 34.633984, 33.339741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926964, 34.993523, 33.171925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524352, -0.419731, -0.740864,
		-0.842019, -0.126103, -0.524502,
		0.126725, 0.898846, -0.419544,
		37.964981, 35.263176, 33.046062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056217, 34.526672, 32.702419>,  <37.876274, 34.633984, 33.339741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056217, 34.526672, 32.702419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148487, 34.915398, 32.682938>,  <38.203850, 35.148632, 32.671249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148487, 34.915398, 32.682938>,  <38.056217, 34.526672, 32.702419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148487, 34.915398, 32.682938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612346, -0.183887, -0.768907,
		-0.756189, 0.147541, -0.637503,
		0.230673, 0.971811, -0.048707,
		38.217690, 35.206940, 32.668327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861149, 34.764194, 32.071831>,  <38.056217, 34.526672, 32.702419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861149, 34.764194, 32.071831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172367, 34.983421, 32.194641>,  <38.359100, 35.114956, 32.268326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172367, 34.983421, 32.194641>,  <37.861149, 34.764194, 32.071831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172367, 34.983421, 32.194641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462992, -0.169958, -0.869915,
		-0.424590, 0.818986, -0.385986,
		0.778050, 0.548066, 0.307021,
		38.405781, 35.147842, 32.286747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130928, 35.119972, 31.456375>,  <37.861149, 34.764194, 32.071831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130928, 35.119972, 31.456375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437000, 35.187061, 31.705011>,  <38.620644, 35.227314, 31.854193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437000, 35.187061, 31.705011>,  <38.130928, 35.119972, 31.456375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437000, 35.187061, 31.705011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631916, -0.010844, -0.774961,
		-0.123236, 0.985775, -0.114282,
		0.765177, 0.167719, 0.621590,
		38.666553, 35.237377, 31.891489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469349, 35.749813, 31.240240>,  <38.130928, 35.119972, 31.456375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469349, 35.749813, 31.240240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749741, 35.569225, 31.461075>,  <38.917976, 35.460873, 31.593576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749741, 35.569225, 31.461075>,  <38.469349, 35.749813, 31.240240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749741, 35.569225, 31.461075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622440, 0.009416, -0.782611,
		0.348126, 0.892238, 0.287612,
		0.700983, -0.451468, 0.552086,
		38.960037, 35.433784, 31.626701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094601, 36.065048, 31.120180>,  <38.469349, 35.749813, 31.240240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094601, 36.065048, 31.120180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235474, 35.713852, 31.249861>,  <39.319996, 35.503136, 31.327669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235474, 35.713852, 31.249861>,  <39.094601, 36.065048, 31.120180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235474, 35.713852, 31.249861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594636, -0.057593, -0.801929,
		0.722755, 0.475208, 0.501799,
		0.352183, -0.877986, 0.324202,
		39.341129, 35.450455, 31.347122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842930, 36.102180, 30.983973>,  <39.094601, 36.065048, 31.120180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842930, 36.102180, 30.983973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737755, 35.716320, 30.991070>,  <39.674648, 35.484802, 30.995329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737755, 35.716320, 30.991070>,  <39.842930, 36.102180, 30.983973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737755, 35.716320, 30.991070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668592, -0.195439, -0.717488,
		0.695593, -0.176790, 0.696345,
		-0.262937, -0.964650, 0.017745,
		39.658875, 35.426926, 30.996393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419529, 35.751892, 30.787975>,  <39.842930, 36.102180, 30.983973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419529, 35.751892, 30.787975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148579, 35.468967, 30.707113>,  <39.986008, 35.299213, 30.658596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148579, 35.468967, 30.707113>,  <40.419529, 35.751892, 30.787975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148579, 35.468967, 30.707113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402839, -0.126714, -0.906457,
		0.615534, -0.695449, 0.370767,
		-0.677376, -0.707315, -0.202157,
		39.945366, 35.256775, 30.646465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789314, 35.127842, 30.449034>,  <40.419529, 35.751892, 30.787975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789314, 35.127842, 30.449034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406322, 35.055161, 30.359398>,  <40.176529, 35.011551, 30.305616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406322, 35.055161, 30.359398>,  <40.789314, 35.127842, 30.449034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406322, 35.055161, 30.359398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272096, -0.310564, -0.910776,
		0.095896, -0.933024, 0.346800,
		-0.957480, -0.181703, -0.224090,
		40.119080, 35.000648, 30.292171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677292, 34.390205, 30.178457>,  <40.789314, 35.127842, 30.449034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677292, 34.390205, 30.178457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359016, 34.588917, 30.039845>,  <40.168049, 34.708145, 29.956676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359016, 34.588917, 30.039845>,  <40.677292, 34.390205, 30.178457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359016, 34.588917, 30.039845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206144, -0.315855, -0.926143,
		-0.569542, -0.808361, 0.148916,
		-0.795693, 0.496778, -0.346532,
		40.120308, 34.737949, 29.935884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207443, 33.804115, 29.782732>,  <40.677292, 34.390205, 30.178457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207443, 33.804115, 29.782732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105961, 34.179855, 29.690432>,  <40.045071, 34.405300, 29.635052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105961, 34.179855, 29.690432>,  <40.207443, 33.804115, 29.782732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105961, 34.179855, 29.690432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057782, -0.223414, -0.973009,
		-0.965555, -0.260189, 0.002403,
		-0.253704, 0.939355, -0.230753,
		40.029850, 34.461662, 29.621206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699890, 33.757530, 29.286688>,  <40.207443, 33.804115, 29.782732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699890, 33.757530, 29.286688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824905, 34.126221, 29.194830>,  <39.899914, 34.347435, 29.139715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824905, 34.126221, 29.194830>,  <39.699890, 33.757530, 29.286688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824905, 34.126221, 29.194830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015778, -0.246762, -0.968948,
		-0.949774, 0.299211, -0.091666,
		0.312540, 0.921727, -0.229647,
		39.918667, 34.402740, 29.125937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259739, 34.101078, 28.817720>,  <39.699890, 33.757530, 29.286688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259739, 34.101078, 28.817720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601070, 34.300022, 28.755165>,  <39.805870, 34.419388, 28.717632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601070, 34.300022, 28.755165>,  <39.259739, 34.101078, 28.817720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601070, 34.300022, 28.755165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029667, -0.253146, -0.966973,
		-0.520526, 0.829787, -0.201262,
		0.853330, 0.497364, -0.156386,
		39.857071, 34.449230, 28.708250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169079, 34.207760, 28.154066>,  <39.259739, 34.101078, 28.817720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169079, 34.207760, 28.154066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550522, 34.318619, 28.201105>,  <39.779388, 34.385132, 28.229328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550522, 34.318619, 28.201105>,  <39.169079, 34.207760, 28.154066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550522, 34.318619, 28.201105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257058, -0.546211, -0.797230,
		-0.156716, 0.790471, -0.592111,
		0.953604, 0.277146, 0.117597,
		39.836601, 34.401764, 28.236383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361313, 34.512688, 27.525406>,  <39.169079, 34.207760, 28.154066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361313, 34.512688, 27.525406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697994, 34.402969, 27.711441>,  <39.900002, 34.337139, 27.823061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697994, 34.402969, 27.711441>,  <39.361313, 34.512688, 27.525406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697994, 34.402969, 27.711441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221341, -0.610376, -0.760559,
		0.492493, 0.743105, -0.453041,
		0.841700, -0.274293, 0.465086,
		39.950504, 34.320683, 27.850967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952057, 34.569962, 27.055984>,  <39.361313, 34.512688, 27.525406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952057, 34.569962, 27.055984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035416, 34.289558, 27.328796>,  <40.085430, 34.121319, 27.492483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035416, 34.289558, 27.328796>,  <39.952057, 34.569962, 27.055984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035416, 34.289558, 27.328796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348715, -0.598255, -0.721449,
		0.913767, 0.388179, 0.119778,
		0.208394, -0.701005, 0.682030,
		40.097935, 34.079258, 27.533405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580837, 34.293926, 26.781933>,  <39.952057, 34.569962, 27.055984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580837, 34.293926, 26.781933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449528, 34.029400, 27.051718>,  <40.370743, 33.870686, 27.213589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449528, 34.029400, 27.051718>,  <40.580837, 34.293926, 26.781933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449528, 34.029400, 27.051718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241335, -0.749053, -0.616990,
		0.913232, -0.039772, 0.405494,
		-0.328276, -0.661315, 0.674461,
		40.351044, 33.831005, 27.254055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154919, 33.865913, 26.930038>,  <40.580837, 34.293926, 26.781933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154919, 33.865913, 26.930038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823906, 33.661449, 27.022913>,  <40.625298, 33.538773, 27.078638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823906, 33.661449, 27.022913>,  <41.154919, 33.865913, 26.930038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823906, 33.661449, 27.022913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298904, -0.751218, -0.588495,
		0.475239, -0.417595, 0.774443,
		-0.827529, -0.511161, 0.232188,
		40.575645, 33.508102, 27.092569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438965, 33.172646, 26.907209>,  <41.154919, 33.865913, 26.930038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438965, 33.172646, 26.907209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039932, 33.144871, 26.907475>,  <40.800510, 33.128204, 26.907633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039932, 33.144871, 26.907475>,  <41.438965, 33.172646, 26.907209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039932, 33.144871, 26.907475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056449, -0.816443, -0.574661,
		0.040444, -0.573236, 0.818392,
		-0.997586, -0.069439, 0.000662,
		40.740658, 33.124039, 26.907673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266949, 32.475929, 26.965471>,  <41.438965, 33.172646, 26.907209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266949, 32.475929, 26.965471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928173, 32.608089, 26.798845>,  <40.724907, 32.687386, 26.698870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928173, 32.608089, 26.798845>,  <41.266949, 32.475929, 26.965471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928173, 32.608089, 26.798845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118245, -0.880902, -0.458291,
		-0.518374, -0.338888, 0.785139,
		-0.846939, 0.330405, -0.416565,
		40.674091, 32.707211, 26.673876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823952, 31.881628, 26.987782>,  <41.266949, 32.475929, 26.965471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823952, 31.881628, 26.987782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648945, 32.116768, 26.715601>,  <40.543941, 32.257851, 26.552292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648945, 32.116768, 26.715601>,  <40.823952, 31.881628, 26.987782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648945, 32.116768, 26.715601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132907, -0.790683, -0.597625,
		-0.889336, -0.171032, 0.424063,
		-0.437513, 0.587851, -0.680452,
		40.517693, 32.293121, 26.511465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147808, 31.522394, 26.796844>,  <40.823952, 31.881628, 26.987782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147808, 31.522394, 26.796844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241642, 31.767408, 26.494911>,  <40.297943, 31.914417, 26.313751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241642, 31.767408, 26.494911>,  <40.147808, 31.522394, 26.796844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241642, 31.767408, 26.494911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195034, -0.731053, -0.653853,
		-0.952330, 0.300602, -0.052029,
		0.234585, 0.612535, -0.754831,
		40.312019, 31.951168, 26.268461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666813, 31.407299, 26.280287>,  <40.147808, 31.522394, 26.796844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666813, 31.407299, 26.280287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951466, 31.565191, 26.047815>,  <40.122257, 31.659927, 25.908333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951466, 31.565191, 26.047815>,  <39.666813, 31.407299, 26.280287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951466, 31.565191, 26.047815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186971, -0.690995, -0.698260,
		-0.677216, 0.605567, -0.417931,
		0.711632, 0.394732, -0.581177,
		40.164955, 31.683611, 25.873463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369698, 31.594786, 25.614775>,  <39.666813, 31.407299, 26.280287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369698, 31.594786, 25.614775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762794, 31.543190, 25.561731>,  <39.998653, 31.512232, 25.529905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762794, 31.543190, 25.561731>,  <39.369698, 31.594786, 25.614775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762794, 31.543190, 25.561731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179559, -0.492581, -0.851541,
		0.044522, 0.860654, -0.507240,
		0.982739, -0.128991, -0.132607,
		40.057617, 31.504492, 25.521950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448723, 31.712622, 24.882383>,  <39.369698, 31.594786, 25.614775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448723, 31.712622, 24.882383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806602, 31.565229, 24.983366>,  <40.021332, 31.476793, 25.043955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806602, 31.565229, 24.983366>,  <39.448723, 31.712622, 24.882383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806602, 31.565229, 24.983366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135997, -0.313639, -0.939753,
		0.425463, 0.875129, -0.230500,
		0.894699, -0.368483, 0.252457,
		40.075012, 31.454685, 25.059103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825333, 31.914480, 24.261496>,  <39.448723, 31.712622, 24.882383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825333, 31.914480, 24.261496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017857, 31.615992, 24.445450>,  <40.133373, 31.436899, 24.555822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017857, 31.615992, 24.445450>,  <39.825333, 31.914480, 24.261496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017857, 31.615992, 24.445450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192259, -0.422004, -0.885974,
		0.855205, 0.514847, -0.059648,
		0.481312, -0.746221, 0.459883,
		40.162251, 31.392126, 24.583414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485817, 31.855709, 23.979525>,  <39.825333, 31.914480, 24.261496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485817, 31.855709, 23.979525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409237, 31.498905, 24.143312>,  <40.363289, 31.284822, 24.241585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409237, 31.498905, 24.143312>,  <40.485817, 31.855709, 23.979525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409237, 31.498905, 24.143312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239889, -0.447060, -0.861737,
		0.951735, -0.066752, 0.299573,
		-0.191450, -0.892010, 0.409469,
		40.351803, 31.231302, 24.266153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069160, 31.419325, 23.770475>,  <40.485817, 31.855709, 23.979525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069160, 31.419325, 23.770475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772995, 31.168457, 23.867172>,  <40.595295, 31.017937, 23.925190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772995, 31.168457, 23.867172>,  <41.069160, 31.419325, 23.770475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772995, 31.168457, 23.867172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327076, -0.650389, -0.685577,
		0.587198, -0.428546, 0.686692,
		-0.740418, -0.627170, 0.241740,
		40.550869, 30.980307, 23.939693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474419, 30.796926, 23.630920>,  <41.069160, 31.419325, 23.770475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474419, 30.796926, 23.630920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101578, 30.657339, 23.669716>,  <40.877872, 30.573587, 23.692993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101578, 30.657339, 23.669716>,  <41.474419, 30.796926, 23.630920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101578, 30.657339, 23.669716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181499, -0.681763, -0.708701,
		0.313439, -0.642978, 0.698810,
		-0.932102, -0.348968, 0.096991,
		40.821949, 30.552649, 23.698812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409431, 29.990499, 23.617296>,  <41.474419, 30.796926, 23.630920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409431, 29.990499, 23.617296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038807, 30.119087, 23.539179>,  <40.816433, 30.196239, 23.492308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038807, 30.119087, 23.539179>,  <41.409431, 29.990499, 23.617296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038807, 30.119087, 23.539179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079527, -0.674896, -0.733615,
		-0.367637, -0.664209, 0.650899,
		-0.926563, 0.321468, -0.195295,
		40.760838, 30.215528, 23.480591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919167, 29.503311, 23.707504>,  <41.409431, 29.990499, 23.617296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919167, 29.503311, 23.707504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760616, 29.729107, 23.417889>,  <40.665485, 29.864584, 23.244120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760616, 29.729107, 23.417889>,  <40.919167, 29.503311, 23.707504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760616, 29.729107, 23.417889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029214, -0.795996, -0.604596,
		-0.917622, -0.218497, 0.332008,
		-0.396380, 0.564490, -0.724040,
		40.641701, 29.898455, 23.200676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971268, 28.750664, 23.826612>,  <40.919167, 29.503311, 23.707504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971268, 28.750664, 23.826612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266933, 28.513823, 23.955021>,  <41.444332, 28.371717, 24.032066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266933, 28.513823, 23.955021>,  <40.971268, 28.750664, 23.826612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266933, 28.513823, 23.955021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145994, 0.324442, 0.934571,
		-0.657517, -0.737665, 0.153370,
		0.739160, -0.592105, 0.321021,
		41.488682, 28.336191, 24.051327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714756, 28.349564, 24.481571>,  <40.971268, 28.750664, 23.826612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714756, 28.349564, 24.481571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114204, 28.357697, 24.500931>,  <41.353874, 28.362576, 24.512547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114204, 28.357697, 24.500931>,  <40.714756, 28.349564, 24.481571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114204, 28.357697, 24.500931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052495, 0.389459, 0.919547,
		-0.000155, -0.920820, 0.389989,
		0.998621, 0.020330, 0.048399,
		41.413792, 28.363796, 24.515450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883781, 28.050228, 25.137762>,  <40.714756, 28.349564, 24.481571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883781, 28.050228, 25.137762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211674, 28.262640, 25.051920>,  <41.408409, 28.390087, 25.000416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211674, 28.262640, 25.051920>,  <40.883781, 28.050228, 25.137762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211674, 28.262640, 25.051920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075582, 0.271118, 0.959574,
		0.567744, -0.802810, 0.182107,
		0.819728, 0.531029, -0.214603,
		41.457592, 28.421947, 24.987539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353142, 27.915905, 25.726767>,  <40.883781, 28.050228, 25.137762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353142, 27.915905, 25.726767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479771, 28.248449, 25.544065>,  <41.555748, 28.447975, 25.434444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479771, 28.248449, 25.544065>,  <41.353142, 27.915905, 25.726767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479771, 28.248449, 25.544065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001651, 0.481998, 0.876171,
		0.948568, -0.276616, 0.153959,
		0.316571, 0.831361, -0.456751,
		41.574741, 28.497858, 25.407040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919632, 28.145348, 26.203381>,  <41.353142, 27.915905, 25.726767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919632, 28.145348, 26.203381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833607, 28.455526, 25.965918>,  <41.781990, 28.641634, 25.823439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833607, 28.455526, 25.965918>,  <41.919632, 28.145348, 26.203381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833607, 28.455526, 25.965918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165269, 0.628014, 0.760450,
		0.962515, 0.065431, -0.263219,
		-0.215062, 0.775446, -0.593660,
		41.769089, 28.688160, 25.787819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466942, 28.684706, 26.321110>,  <41.919632, 28.145348, 26.203381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466942, 28.684706, 26.321110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173031, 28.891947, 26.145988>,  <41.996685, 29.016291, 26.040916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173031, 28.891947, 26.145988>,  <42.466942, 28.684706, 26.321110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173031, 28.891947, 26.145988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001415, 0.644263, 0.764802,
		0.678306, 0.562579, -0.472658,
		-0.734778, 0.518101, -0.437804,
		41.952599, 29.047377, 26.014647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725948, 29.382204, 26.287497>,  <42.466942, 28.684706, 26.321110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725948, 29.382204, 26.287497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326382, 29.378275, 26.269287>,  <42.086643, 29.375917, 26.258362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326382, 29.378275, 26.269287>,  <42.725948, 29.382204, 26.287497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326382, 29.378275, 26.269287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035414, 0.795071, 0.605482,
		0.030246, 0.606437, -0.794556,
		-0.998915, -0.009825, -0.045524,
		42.026707, 29.375328, 26.255630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519047, 30.078920, 26.130110>,  <42.725948, 29.382204, 26.287497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519047, 30.078920, 26.130110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201118, 29.889425, 26.281813>,  <42.010361, 29.775728, 26.372833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201118, 29.889425, 26.281813>,  <42.519047, 30.078920, 26.130110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201118, 29.889425, 26.281813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178837, 0.780063, 0.599599,
		-0.579896, 0.408748, -0.704731,
		-0.794819, -0.473737, 0.379256,
		41.962673, 29.747305, 26.395590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056805, 30.574015, 26.128864>,  <42.519047, 30.078920, 26.130110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056805, 30.574015, 26.128864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896717, 30.295338, 26.367006>,  <41.800667, 30.128132, 26.509892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896717, 30.295338, 26.367006>,  <42.056805, 30.574015, 26.128864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896717, 30.295338, 26.367006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140517, 0.688620, 0.711377,
		-0.905584, 0.201046, -0.373494,
		-0.400215, -0.696694, 0.595353,
		41.776653, 30.086329, 26.545612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552845, 30.892517, 26.563751>,  <42.056805, 30.574015, 26.128864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552845, 30.892517, 26.563751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628487, 30.564999, 26.780569>,  <41.673870, 30.368488, 26.910660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628487, 30.564999, 26.780569>,  <41.552845, 30.892517, 26.563751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628487, 30.564999, 26.780569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117473, 0.529177, 0.840341,
		-0.974905, -0.222588, 0.003884,
		0.189105, -0.818796, 0.542045,
		41.685219, 30.319361, 26.943182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959869, 30.743399, 27.063412>,  <41.552845, 30.892517, 26.563751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959869, 30.743399, 27.063412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242207, 30.514095, 27.229864>,  <41.411610, 30.376513, 27.329737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242207, 30.514095, 27.229864>,  <40.959869, 30.743399, 27.063412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242207, 30.514095, 27.229864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029270, 0.563344, 0.825704,
		-0.707768, -0.594994, 0.380851,
		0.705838, -0.573259, 0.416132,
		41.453957, 30.342117, 27.354704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688076, 30.472422, 27.691187>,  <40.959869, 30.743399, 27.063412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688076, 30.472422, 27.691187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086765, 30.493595, 27.715658>,  <41.325977, 30.506298, 27.730341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086765, 30.493595, 27.715658>,  <40.688076, 30.472422, 27.691187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086765, 30.493595, 27.715658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080580, 0.582503, 0.808824,
		0.007175, -0.811103, 0.584859,
		0.996722, 0.052932, 0.061180,
		41.385780, 30.509474, 27.734013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741886, 30.458603, 28.340631>,  <40.688076, 30.472422, 27.691187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741886, 30.458603, 28.340631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109474, 30.571331, 28.230307>,  <41.330029, 30.638968, 28.164112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109474, 30.571331, 28.230307>,  <40.741886, 30.458603, 28.340631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109474, 30.571331, 28.230307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041452, 0.626533, 0.778292,
		0.392142, -0.726660, 0.564083,
		0.918970, 0.281818, -0.275811,
		41.385166, 30.655876, 28.147564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144161, 30.420366, 28.900406>,  <40.741886, 30.458603, 28.340631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144161, 30.420366, 28.900406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372509, 30.650055, 28.665670>,  <41.509518, 30.787868, 28.524830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372509, 30.650055, 28.665670>,  <41.144161, 30.420366, 28.900406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372509, 30.650055, 28.665670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182651, 0.608018, 0.772627,
		0.800466, -0.548256, 0.242217,
		0.570869, 0.574221, -0.586837,
		41.543770, 30.822321, 28.489618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892307, 30.490629, 29.173618>,  <41.144161, 30.420366, 28.900406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892307, 30.490629, 29.173618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818371, 30.807140, 28.940477>,  <41.774010, 30.997047, 28.800592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818371, 30.807140, 28.940477>,  <41.892307, 30.490629, 29.173618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818371, 30.807140, 28.940477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333518, 0.608381, 0.720166,
		0.924446, -0.061278, -0.376356,
		-0.184837, 0.791276, -0.582853,
		41.762920, 31.044523, 28.765621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370003, 30.973904, 29.434462>,  <41.892307, 30.490629, 29.173618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370003, 30.973904, 29.434462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098598, 31.171614, 29.217091>,  <41.935757, 31.290239, 29.086668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098598, 31.171614, 29.217091>,  <42.370003, 30.973904, 29.434462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098598, 31.171614, 29.217091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002708, 0.738084, 0.674703,
		0.734584, 0.459266, -0.499461,
		-0.678513, 0.494274, -0.543428,
		41.895046, 31.319897, 29.054062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659081, 31.647366, 29.482809>,  <42.370003, 30.973904, 29.434462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659081, 31.647366, 29.482809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277607, 31.696573, 29.373013>,  <42.048721, 31.726097, 29.307135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277607, 31.696573, 29.373013>,  <42.659081, 31.647366, 29.482809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277607, 31.696573, 29.373013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120648, 0.679486, 0.723701,
		0.275540, 0.723302, -0.633176,
		-0.953689, 0.123017, -0.274490,
		41.991501, 31.733479, 29.290665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497871, 32.360630, 29.366055>,  <42.659081, 31.647366, 29.482809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497871, 32.360630, 29.366055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140018, 32.206146, 29.455917>,  <41.925304, 32.113457, 29.509834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140018, 32.206146, 29.455917>,  <42.497871, 32.360630, 29.366055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140018, 32.206146, 29.455917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156156, 0.741378, 0.652667,
		-0.418620, 0.548817, -0.723572,
		-0.894635, -0.386209, 0.224655,
		41.871628, 32.090282, 29.523314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098827, 32.924061, 29.602795>,  <42.497871, 32.360630, 29.366055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098827, 32.924061, 29.602795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878464, 32.617294, 29.734451>,  <41.746246, 32.433235, 29.813446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878464, 32.617294, 29.734451>,  <42.098827, 32.924061, 29.602795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878464, 32.617294, 29.734451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187246, 0.497919, 0.846768,
		-0.813288, 0.404862, -0.417911,
		-0.550909, -0.766918, 0.329143,
		41.713192, 32.387218, 29.833195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459625, 33.274551, 29.904604>,  <42.098827, 32.924061, 29.602795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459625, 33.274551, 29.904604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469971, 32.908596, 30.065754>,  <41.476177, 32.689022, 30.162443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469971, 32.908596, 30.065754>,  <41.459625, 33.274551, 29.904604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469971, 32.908596, 30.065754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070108, 0.400357, 0.913674,
		-0.997204, -0.051874, -0.053787,
		0.025862, -0.914890, 0.402874,
		41.477730, 32.634129, 30.186617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853817, 33.195660, 30.261398>,  <41.459625, 33.274551, 29.904604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853817, 33.195660, 30.261398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098858, 32.925446, 30.425529>,  <41.245884, 32.763317, 30.524008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098858, 32.925446, 30.425529>,  <40.853817, 33.195660, 30.261398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098858, 32.925446, 30.425529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210936, 0.360583, 0.908562,
		-0.761726, -0.643139, 0.078398,
		0.612601, -0.675539, 0.410327,
		41.282639, 32.722786, 30.548628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514462, 33.052532, 30.854021>,  <40.853817, 33.195660, 30.261398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514462, 33.052532, 30.854021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880032, 32.911751, 30.934889>,  <41.099373, 32.827282, 30.983410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880032, 32.911751, 30.934889>,  <40.514462, 33.052532, 30.854021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880032, 32.911751, 30.934889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043211, 0.410896, 0.910658,
		-0.403578, -0.841008, 0.360319,
		0.913924, -0.351952, 0.202170,
		41.154209, 32.806164, 30.995541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438557, 32.660526, 31.511658>,  <40.514462, 33.052532, 30.854021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438557, 32.660526, 31.511658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820133, 32.766781, 31.455902>,  <41.049080, 32.830532, 31.422449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820133, 32.766781, 31.455902>,  <40.438557, 32.660526, 31.511658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820133, 32.766781, 31.455902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003535, 0.474578, 0.880207,
		0.299960, -0.839176, 0.453660,
		0.953945, 0.265631, -0.139388,
		41.106316, 32.846470, 31.414085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742653, 32.594013, 32.142296>,  <40.438557, 32.660526, 31.511658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742653, 32.594013, 32.142296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966251, 32.849552, 31.930866>,  <41.100410, 33.002876, 31.804008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966251, 32.849552, 31.930866>,  <40.742653, 32.594013, 32.142296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966251, 32.849552, 31.930866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123023, 0.694323, 0.709071,
		0.819993, -0.331341, 0.466717,
		0.558996, 0.638850, -0.528578,
		41.133949, 33.041206, 31.772293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378860, 32.712395, 32.533028>,  <40.742653, 32.594013, 32.142296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378860, 32.712395, 32.533028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352188, 33.017258, 32.275448>,  <41.336185, 33.200172, 32.120899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352188, 33.017258, 32.275448>,  <41.378860, 32.712395, 32.533028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352188, 33.017258, 32.275448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018520, 0.646225, 0.762922,
		0.997602, 0.038946, -0.057206,
		-0.066681, 0.762153, -0.643954,
		41.332184, 33.245903, 32.082260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823833, 33.260143, 32.796780>,  <41.378860, 32.712395, 32.533028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823833, 33.260143, 32.796780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556202, 33.439476, 32.559685>,  <41.395622, 33.547073, 32.417427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556202, 33.439476, 32.559685>,  <41.823833, 33.260143, 32.796780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556202, 33.439476, 32.559685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122763, 0.719925, 0.683109,
		0.732980, 0.529821, -0.426650,
		-0.669081, 0.448328, -0.592733,
		41.355476, 33.573975, 32.381866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105415, 33.916348, 32.747616>,  <41.823833, 33.260143, 32.796780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105415, 33.916348, 32.747616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710419, 33.899906, 32.686718>,  <41.473423, 33.890041, 32.650177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710419, 33.899906, 32.686718>,  <42.105415, 33.916348, 32.747616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710419, 33.899906, 32.686718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152778, 0.488676, 0.858985,
		0.039091, 0.871496, -0.488841,
		-0.987487, -0.041106, -0.152248,
		41.414173, 33.887573, 32.641045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873322, 34.319214, 33.306454>,  <42.105415, 33.916348, 32.747616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873322, 34.319214, 33.306454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529202, 34.177612, 33.159721>,  <41.322731, 34.092651, 33.071682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529202, 34.177612, 33.159721>,  <41.873322, 34.319214, 33.306454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529202, 34.177612, 33.159721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457004, 0.216688, 0.862666,
		-0.225902, 0.909794, -0.348199,
		-0.860299, -0.354006, -0.366830,
		41.271111, 34.071411, 33.049671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299404, 34.883648, 33.289162>,  <41.873322, 34.319214, 33.306454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299404, 34.883648, 33.289162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139580, 34.517002, 33.294441>,  <41.043686, 34.297016, 33.297607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139580, 34.517002, 33.294441>,  <41.299404, 34.883648, 33.289162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139580, 34.517002, 33.294441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586505, 0.266674, 0.764785,
		-0.704531, 0.297837, -0.644150,
		-0.399559, -0.916613, 0.013198,
		41.019711, 34.242020, 33.298401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647934, 34.991310, 33.204895>,  <41.299404, 34.883648, 33.289162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647934, 34.991310, 33.204895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661301, 34.624332, 33.363476>,  <40.669319, 34.404144, 33.458626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661301, 34.624332, 33.363476>,  <40.647934, 34.991310, 33.204895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661301, 34.624332, 33.363476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627956, 0.289325, 0.722470,
		-0.777531, -0.273096, -0.566449,
		0.033416, -0.917448, 0.396451,
		40.671326, 34.349098, 33.482410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948833, 34.924797, 33.487530>,  <40.647934, 34.991310, 33.204895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948833, 34.924797, 33.487530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161720, 34.623600, 33.642319>,  <40.289452, 34.442883, 33.735191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161720, 34.623600, 33.642319>,  <39.948833, 34.924797, 33.487530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161720, 34.623600, 33.642319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635101, -0.052869, 0.770618,
		-0.559810, -0.655903, -0.506364,
		0.532221, -0.752992, 0.386968,
		40.321388, 34.397701, 33.758408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476505, 34.542496, 33.645756>,  <39.948833, 34.924797, 33.487530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476505, 34.542496, 33.645756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781010, 34.433681, 33.881203>,  <39.963715, 34.368393, 34.022472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781010, 34.433681, 33.881203>,  <39.476505, 34.542496, 33.645756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781010, 34.433681, 33.881203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565031, 0.167076, 0.807976,
		-0.318144, -0.947672, -0.026521,
		0.761265, -0.272038, 0.588618,
		40.009388, 34.352070, 34.057789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197857, 34.059227, 34.110226>,  <39.476505, 34.542496, 33.645756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197857, 34.059227, 34.110226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518894, 34.244675, 34.260376>,  <39.711517, 34.355942, 34.350468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518894, 34.244675, 34.260376>,  <39.197857, 34.059227, 34.110226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518894, 34.244675, 34.260376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524674, 0.249207, 0.814010,
		0.283840, -0.850269, 0.443258,
		0.802591, 0.463615, 0.375380,
		39.759670, 34.383759, 34.372990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144108, 33.969421, 34.833206>,  <39.197857, 34.059227, 34.110226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144108, 33.969421, 34.833206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420902, 34.257881, 34.819935>,  <39.586979, 34.430958, 34.811974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420902, 34.257881, 34.819935>,  <39.144108, 33.969421, 34.833206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420902, 34.257881, 34.819935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340547, 0.366614, 0.865807,
		0.636537, -0.587828, 0.499277,
		0.691988, 0.721146, -0.033180,
		39.628498, 34.474224, 34.809982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491581, 33.931904, 35.576378>,  <39.144108, 33.969421, 34.833206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491581, 33.931904, 35.576378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586914, 34.286785, 35.418358>,  <39.644112, 34.499714, 35.323547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586914, 34.286785, 35.418358>,  <39.491581, 33.931904, 35.576378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586914, 34.286785, 35.418358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376380, 0.459357, 0.804568,
		0.895286, -0.043065, 0.443406,
		0.238330, 0.887207, -0.395047,
		39.658413, 34.552948, 35.299843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731422, 34.349201, 36.098316>,  <39.491581, 33.931904, 35.576378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731422, 34.349201, 36.098316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656761, 34.632282, 35.825752>,  <39.611965, 34.802132, 35.662212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656761, 34.632282, 35.825752>,  <39.731422, 34.349201, 36.098316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656761, 34.632282, 35.825752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231343, 0.642433, 0.730589,
		0.954799, 0.294006, 0.043810,
		-0.186653, 0.707701, -0.681411,
		39.600765, 34.844593, 35.621330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091637, 34.878044, 36.352882>,  <39.731422, 34.349201, 36.098316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091637, 34.878044, 36.352882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816353, 35.045895, 36.116142>,  <39.651184, 35.146603, 35.974098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816353, 35.045895, 36.116142>,  <40.091637, 34.878044, 36.352882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816353, 35.045895, 36.116142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298375, 0.579883, 0.758095,
		0.661318, 0.698321, -0.273875,
		-0.688209, 0.419624, -0.591848,
		39.609890, 35.171783, 35.938587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114094, 35.658970, 36.488998>,  <40.091637, 34.878044, 36.352882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114094, 35.658970, 36.488998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755909, 35.591888, 36.324066>,  <39.540997, 35.551640, 36.225105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755909, 35.591888, 36.324066>,  <40.114094, 35.658970, 36.488998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755909, 35.591888, 36.324066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434098, 0.533962, 0.725564,
		0.098492, 0.828710, -0.550943,
		-0.895465, -0.167701, -0.412333,
		39.487270, 35.541576, 36.200367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844074, 36.273457, 36.282787>,  <40.114094, 35.658970, 36.488998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844074, 36.273457, 36.282787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529503, 36.029861, 36.324100>,  <39.340759, 35.883705, 36.348888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529503, 36.029861, 36.324100>,  <39.844074, 36.273457, 36.282787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529503, 36.029861, 36.324100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400565, 0.630097, 0.665226,
		-0.470187, 0.481784, -0.739465,
		-0.786430, -0.608984, 0.103278,
		39.293575, 35.847168, 36.355083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152885, 36.685230, 36.226601>,  <39.844074, 36.273457, 36.282787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152885, 36.685230, 36.226601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058575, 36.344830, 36.414303>,  <39.001987, 36.140591, 36.526924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058575, 36.344830, 36.414303>,  <39.152885, 36.685230, 36.226601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058575, 36.344830, 36.414303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631049, 0.501289, 0.592018,
		-0.739043, -0.156541, -0.655217,
		-0.235779, -0.851002, 0.469260,
		38.987843, 36.089531, 36.555080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441319, 36.687881, 36.168358>,  <39.152885, 36.685230, 36.226601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441319, 36.687881, 36.168358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522415, 36.449718, 36.479328>,  <38.571072, 36.306820, 36.665909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522415, 36.449718, 36.479328>,  <38.441319, 36.687881, 36.168358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522415, 36.449718, 36.479328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614150, 0.541047, 0.574533,
		-0.762704, -0.593934, -0.255980,
		0.202738, -0.595409, 0.777423,
		38.583237, 36.271095, 36.712555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835007, 36.683956, 36.502686>,  <38.441319, 36.687881, 36.168358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835007, 36.683956, 36.502686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031670, 36.521889, 36.811001>,  <38.149666, 36.424648, 36.995991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031670, 36.521889, 36.811001>,  <37.835007, 36.683956, 36.502686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031670, 36.521889, 36.811001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612302, 0.468525, 0.636845,
		-0.619161, -0.785064, -0.017730,
		0.491657, -0.405165, 0.770788,
		38.179169, 36.400341, 37.042236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314259, 36.426273, 36.930645>,  <37.835007, 36.683956, 36.502686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314259, 36.426273, 36.930645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640491, 36.493050, 37.152256>,  <37.836231, 36.533115, 37.285221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640491, 36.493050, 37.152256>,  <37.314259, 36.426273, 36.930645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640491, 36.493050, 37.152256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561113, 0.462022, 0.686796,
		-0.141317, -0.871014, 0.470494,
		0.815587, 0.166945, 0.554028,
		37.885166, 36.543133, 37.318466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135021, 36.248520, 37.646893>,  <37.314259, 36.426273, 36.930645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135021, 36.248520, 37.646893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445759, 36.494541, 37.700901>,  <37.632202, 36.642155, 37.733307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445759, 36.494541, 37.700901>,  <37.135021, 36.248520, 37.646893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445759, 36.494541, 37.700901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480758, 0.440822, 0.757989,
		0.406688, -0.653744, 0.638140,
		0.776837, 0.615056, 0.135015,
		37.678810, 36.679058, 37.741405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263222, 36.288311, 38.382370>,  <37.135021, 36.248520, 37.646893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263222, 36.288311, 38.382370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459667, 36.602840, 38.232430>,  <37.577534, 36.791557, 38.142464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459667, 36.602840, 38.232430>,  <37.263222, 36.288311, 38.382370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459667, 36.602840, 38.232430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214915, 0.526392, 0.822632,
		0.844170, -0.323441, 0.427508,
		0.491110, 0.786319, -0.374852,
		37.606998, 36.838737, 38.119972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710281, 36.510548, 38.880886>,  <37.263222, 36.288311, 38.382370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710281, 36.510548, 38.880886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621357, 36.822834, 38.647285>,  <37.568005, 37.010208, 38.507126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621357, 36.822834, 38.647285>,  <37.710281, 36.510548, 38.880886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621357, 36.822834, 38.647285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193209, 0.551836, 0.811263,
		0.955641, 0.293185, 0.028164,
		-0.222308, 0.780718, -0.584003,
		37.554665, 37.057049, 38.472084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899395, 37.123608, 39.245113>,  <37.710281, 36.510548, 38.880886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899395, 37.123608, 39.245113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662666, 37.279369, 38.962807>,  <37.520630, 37.372826, 38.793423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662666, 37.279369, 38.962807>,  <37.899395, 37.123608, 39.245113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662666, 37.279369, 38.962807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381217, 0.636247, 0.670718,
		0.710226, 0.665997, -0.228096,
		-0.591822, 0.389407, -0.705768,
		37.485119, 37.396191, 38.751076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912914, 37.853619, 39.367569>,  <37.899395, 37.123608, 39.245113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912914, 37.853619, 39.367569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573532, 37.811745, 39.160042>,  <37.369904, 37.786621, 39.035526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573532, 37.811745, 39.160042>,  <37.912914, 37.853619, 39.367569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573532, 37.811745, 39.160042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520932, 0.338522, 0.783602,
		0.093599, 0.935117, -0.341753,
		-0.848451, -0.104686, -0.518818,
		37.318996, 37.780338, 39.004395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547188, 38.415764, 39.516106>,  <37.912914, 37.853619, 39.367569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547188, 38.415764, 39.516106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286495, 38.142883, 39.383537>,  <37.130077, 37.979156, 39.303997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286495, 38.142883, 39.383537>,  <37.547188, 38.415764, 39.516106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286495, 38.142883, 39.383537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688042, 0.347939, 0.636818,
		-0.319124, 0.643069, -0.696148,
		-0.651735, -0.682203, -0.331423,
		37.090973, 37.938221, 39.284111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040783, 38.850178, 39.343567>,  <37.547188, 38.415764, 39.516106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040783, 38.850178, 39.343567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884232, 38.484547, 39.386066>,  <36.790302, 38.265167, 39.411568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884232, 38.484547, 39.386066>,  <37.040783, 38.850178, 39.343567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884232, 38.484547, 39.386066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732061, 0.379224, 0.565929,
		-0.557595, 0.143710, -0.817579,
		-0.391375, -0.914077, 0.106248,
		36.766819, 38.210323, 39.417942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330826, 39.008438, 39.331669>,  <37.040783, 38.850178, 39.343567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330826, 39.008438, 39.331669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375908, 38.643440, 39.488968>,  <36.402958, 38.424442, 39.583347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375908, 38.643440, 39.488968>,  <36.330826, 39.008438, 39.331669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375908, 38.643440, 39.488968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611292, 0.248337, 0.751432,
		-0.783339, -0.325078, -0.529815,
		0.112702, -0.912498, 0.393250,
		36.409718, 38.369690, 39.606941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629520, 38.639603, 39.353195>,  <36.330826, 39.008438, 39.331669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629520, 38.639603, 39.353195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907173, 38.510731, 39.610687>,  <36.073765, 38.433407, 39.765182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907173, 38.510731, 39.610687>,  <35.629520, 38.639603, 39.353195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907173, 38.510731, 39.610687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634321, 0.149025, 0.758570,
		-0.340326, -0.934876, -0.100921,
		0.694129, -0.322177, 0.643729,
		36.115414, 38.414078, 39.803806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183460, 38.120716, 39.636158>,  <35.629520, 38.639603, 39.353195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183460, 38.120716, 39.636158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505867, 38.146862, 39.871468>,  <35.699310, 38.162548, 40.012653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505867, 38.146862, 39.871468>,  <35.183460, 38.120716, 39.636158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505867, 38.146862, 39.871468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591895, 0.086959, 0.801311,
		0.001219, -0.994065, 0.108777,
		0.806014, 0.065361, 0.588276,
		35.747673, 38.166470, 40.047951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135166, 37.663399, 40.156998>,  <35.183460, 38.120716, 39.636158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135166, 37.663399, 40.156998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363819, 37.965130, 40.286133>,  <35.501011, 38.146168, 40.363613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363819, 37.965130, 40.286133>,  <35.135166, 37.663399, 40.156998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363819, 37.965130, 40.286133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483540, -0.008181, 0.875284,
		0.662895, -0.656443, 0.360073,
		0.571629, 0.754332, 0.322840,
		35.535309, 38.191429, 40.382984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613735, 37.452839, 40.624050>,  <35.135166, 37.663399, 40.156998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613735, 37.452839, 40.624050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504551, 37.830650, 40.697113>,  <35.439041, 38.057335, 40.740952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504551, 37.830650, 40.697113>,  <35.613735, 37.452839, 40.624050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504551, 37.830650, 40.697113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378812, -0.280056, 0.882083,
		0.884304, 0.171580, 0.434242,
		-0.272961, 0.944526, 0.182658,
		35.422665, 38.114010, 40.751911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768448, 37.500366, 41.373539>,  <35.613735, 37.452839, 40.624050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768448, 37.500366, 41.373539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564571, 37.826332, 41.263172>,  <35.442245, 38.021912, 41.196953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564571, 37.826332, 41.263172>,  <35.768448, 37.500366, 41.373539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564571, 37.826332, 41.263172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448569, 0.021953, 0.893478,
		0.734164, 0.579167, 0.354356,
		-0.509694, 0.814913, -0.275914,
		35.411663, 38.070805, 41.180397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770515, 37.941334, 41.934624>,  <35.768448, 37.500366, 41.373539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770515, 37.941334, 41.934624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437431, 38.068771, 41.753479>,  <35.237579, 38.145233, 41.644791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437431, 38.068771, 41.753479>,  <35.770515, 37.941334, 41.934624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437431, 38.068771, 41.753479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489420, -0.040997, 0.871084,
		0.258957, 0.947004, 0.190065,
		-0.832712, 0.318595, -0.452866,
		35.187618, 38.164349, 41.617619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590939, 38.306999, 42.334419>,  <35.770515, 37.941334, 41.934624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590939, 38.306999, 42.334419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255363, 38.224079, 42.133137>,  <35.054020, 38.174328, 42.012367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255363, 38.224079, 42.133137>,  <35.590939, 38.306999, 42.334419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255363, 38.224079, 42.133137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452011, -0.249556, 0.856393,
		-0.303108, 0.945912, 0.115659,
		-0.838935, -0.207300, -0.503205,
		35.003681, 38.161888, 41.982174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019745, 38.506760, 42.772087>,  <35.590939, 38.306999, 42.334419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019745, 38.506760, 42.772087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879852, 38.249741, 42.499374>,  <34.795918, 38.095531, 42.335747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879852, 38.249741, 42.499374>,  <35.019745, 38.506760, 42.772087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879852, 38.249741, 42.499374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420887, -0.542398, 0.727088,
		-0.836983, 0.541239, -0.080744,
		-0.349733, -0.642545, -0.681779,
		34.774933, 38.056976, 42.294842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343292, 38.491264, 42.881153>,  <35.019745, 38.506760, 42.772087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343292, 38.491264, 42.881153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442848, 38.145905, 42.705608>,  <34.502583, 37.938690, 42.600281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442848, 38.145905, 42.705608>,  <34.343292, 38.491264, 42.881153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442848, 38.145905, 42.705608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653004, -0.484235, 0.582325,
		-0.715290, 0.141645, -0.684322,
		0.248889, -0.863396, -0.438864,
		34.517513, 37.886887, 42.573948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693447, 38.250263, 42.741074>,  <34.343292, 38.491264, 42.881153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693447, 38.250263, 42.741074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969013, 37.962524, 42.776699>,  <34.134354, 37.789879, 42.798077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969013, 37.962524, 42.776699>,  <33.693447, 38.250263, 42.741074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969013, 37.962524, 42.776699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601013, -0.498202, 0.624962,
		-0.405192, -0.484077, -0.775557,
		0.688914, -0.719350, 0.089069,
		34.175686, 37.746719, 42.803421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424149, 37.574261, 42.503910>,  <33.693447, 38.250263, 42.741074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424149, 37.574261, 42.503910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711452, 37.539223, 42.780006>,  <33.883835, 37.518200, 42.945663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711452, 37.539223, 42.780006>,  <33.424149, 37.574261, 42.503910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711452, 37.539223, 42.780006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483478, -0.776244, 0.404591,
		0.500356, -0.624317, -0.599894,
		0.718257, -0.087596, 0.690241,
		33.926929, 37.512943, 42.987080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685738, 36.839340, 42.557858>,  <33.424149, 37.574261, 42.503910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685738, 36.839340, 42.557858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750702, 37.051491, 42.890682>,  <33.789680, 37.178780, 43.090378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750702, 37.051491, 42.890682>,  <33.685738, 36.839340, 42.557858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750702, 37.051491, 42.890682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345037, -0.759493, 0.551471,
		0.924430, -0.376657, 0.059649,
		0.162412, 0.530377, 0.832059,
		33.799427, 37.210606, 43.140301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094563, 36.441082, 42.952633>,  <33.685738, 36.839340, 42.557858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094563, 36.441082, 42.952633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957611, 36.703640, 43.221535>,  <33.875439, 36.861176, 43.382877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957611, 36.703640, 43.221535>,  <34.094563, 36.441082, 42.952633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957611, 36.703640, 43.221535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295662, -0.754416, 0.586038,
		0.891831, 0.001886, 0.452366,
		-0.342377, 0.656394, 0.672254,
		33.854897, 36.900558, 43.423210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489994, 36.384117, 42.286331>,  <34.094563, 36.441082, 42.952633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489994, 36.384117, 42.286331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328388, 36.658821, 42.528038>,  <34.231426, 36.823643, 42.673061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328388, 36.658821, 42.528038>,  <34.489994, 36.384117, 42.286331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328388, 36.658821, 42.528038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901412, 0.411302, 0.135230,
		-0.155665, 0.599327, -0.785224,
		-0.404011, 0.686759, 0.604266,
		34.207184, 36.864849, 42.709316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621357, 36.905346, 41.714203>,  <34.489994, 36.384117, 42.286331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621357, 36.905346, 41.714203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506538, 37.206017, 41.951717>,  <34.437649, 37.386421, 42.094227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506538, 37.206017, 41.951717>,  <34.621357, 36.905346, 41.714203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506538, 37.206017, 41.951717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187583, 0.651981, -0.734665,
		-0.939371, -0.099497, -0.328150,
		-0.287045, 0.751679, 0.593788,
		34.420425, 37.431519, 42.129852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337227, 37.329006, 41.308594>,  <34.621357, 36.905346, 41.714203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337227, 37.329006, 41.308594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440853, 37.556007, 41.621216>,  <34.503029, 37.692207, 41.808788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440853, 37.556007, 41.621216>,  <34.337227, 37.329006, 41.308594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440853, 37.556007, 41.621216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318331, 0.713802, -0.623820,
		-0.911895, 0.410402, 0.004266,
		0.259062, 0.567501, 0.781556,
		34.518570, 37.726257, 41.855682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039356, 37.845234, 41.143311>,  <34.337227, 37.329006, 41.308594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039356, 37.845234, 41.143311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336754, 37.929905, 41.397053>,  <34.515194, 37.980705, 41.549297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336754, 37.929905, 41.397053>,  <34.039356, 37.845234, 41.143311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336754, 37.929905, 41.397053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433144, 0.570296, -0.697961,
		-0.509512, 0.793698, 0.332327,
		0.743495, 0.211674, 0.634358,
		34.559803, 37.993408, 41.587360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058041, 38.613483, 41.093967>,  <34.039356, 37.845234, 41.143311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058041, 38.613483, 41.093967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397854, 38.462830, 41.241722>,  <34.601742, 38.372437, 41.330376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397854, 38.462830, 41.241722>,  <34.058041, 38.613483, 41.093967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397854, 38.462830, 41.241722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509804, 0.406064, -0.758428,
		0.135653, 0.832622, 0.536971,
		0.849528, -0.376633, 0.369390,
		34.652714, 38.349838, 41.352539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551674, 39.121941, 40.984333>,  <34.058041, 38.613483, 41.093967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551674, 39.121941, 40.984333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764549, 38.785469, 41.022690>,  <34.892273, 38.583588, 41.045704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764549, 38.785469, 41.022690>,  <34.551674, 39.121941, 40.984333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764549, 38.785469, 41.022690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647236, 0.331218, -0.686572,
		0.545769, 0.427448, 0.720711,
		0.532187, -0.841179, 0.095891,
		34.924206, 38.533115, 41.051456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214230, 39.390896, 40.950390>,  <34.551674, 39.121941, 40.984333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214230, 39.390896, 40.950390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251709, 38.998825, 40.880562>,  <35.274197, 38.763584, 40.838665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251709, 38.998825, 40.880562>,  <35.214230, 39.390896, 40.950390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251709, 38.998825, 40.880562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723983, 0.187448, -0.663862,
		0.683425, -0.064184, 0.727194,
		0.093701, -0.980175, -0.174574,
		35.279819, 38.704773, 40.828190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962524, 39.168747, 41.172989>,  <35.214230, 39.390896, 40.950390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962524, 39.168747, 41.172989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780712, 38.966461, 40.879688>,  <35.671627, 38.845089, 40.703709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780712, 38.966461, 40.879688>,  <35.962524, 39.168747, 41.172989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780712, 38.966461, 40.879688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820388, 0.082961, -0.565757,
		0.346943, -0.858703, 0.377174,
		-0.454527, -0.505714, -0.733252,
		35.644356, 38.814747, 40.659714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510746, 39.037281, 40.657360>,  <35.962524, 39.168747, 41.172989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510746, 39.037281, 40.657360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212078, 38.777836, 40.598316>,  <36.032879, 38.622169, 40.562889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212078, 38.777836, 40.598316>,  <36.510746, 39.037281, 40.657360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212078, 38.777836, 40.598316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558052, -0.490022, -0.669668,
		0.362023, -0.582394, 0.727844,
		-0.746670, -0.648610, -0.147607,
		35.988075, 38.583252, 40.554035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698570, 38.345985, 40.903568>,  <36.510746, 39.037281, 40.657360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698570, 38.345985, 40.903568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418297, 38.340683, 40.618229>,  <36.250134, 38.337502, 40.447025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418297, 38.340683, 40.618229>,  <36.698570, 38.345985, 40.903568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418297, 38.340683, 40.618229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589485, -0.574012, -0.568347,
		-0.401934, -0.818740, 0.410017,
		-0.700683, -0.013261, -0.713349,
		36.208092, 38.336704, 40.404224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678215, 37.632912, 40.650688>,  <36.698570, 38.345985, 40.903568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678215, 37.632912, 40.650688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506870, 37.857315, 40.367344>,  <36.404064, 37.991959, 40.197338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506870, 37.857315, 40.367344>,  <36.678215, 37.632912, 40.650688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506870, 37.857315, 40.367344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536297, -0.473083, -0.698984,
		-0.727251, -0.679308, -0.098220,
		-0.428359, 0.561012, -0.708361,
		36.378361, 38.025620, 40.154835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597645, 37.190651, 40.048828>,  <36.678215, 37.632912, 40.650688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597645, 37.190651, 40.048828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516773, 37.557037, 39.910187>,  <36.468250, 37.776867, 39.827003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516773, 37.557037, 39.910187>,  <36.597645, 37.190651, 40.048828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516773, 37.557037, 39.910187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453813, -0.226000, -0.861962,
		-0.867858, -0.331563, -0.369984,
		-0.202178, 0.915964, -0.346603,
		36.456120, 37.831825, 39.806206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157978, 37.130314, 39.483833>,  <36.597645, 37.190651, 40.048828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157978, 37.130314, 39.483833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383362, 37.460754, 39.480518>,  <36.518593, 37.659019, 39.478531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383362, 37.460754, 39.480518>,  <36.157978, 37.130314, 39.483833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383362, 37.460754, 39.480518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472080, -0.330195, -0.817381,
		-0.677975, 0.456652, -0.576037,
		0.563463, 0.826100, -0.008288,
		36.552402, 37.708584, 39.478031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057217, 37.292000, 38.919437>,  <36.157978, 37.130314, 39.483833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057217, 37.292000, 38.919437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384914, 37.510036, 38.990677>,  <36.581532, 37.640858, 39.033421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384914, 37.510036, 38.990677>,  <36.057217, 37.292000, 38.919437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384914, 37.510036, 38.990677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411759, -0.342993, -0.844281,
		-0.399122, 0.765005, -0.505440,
		0.819242, 0.545090, 0.178101,
		36.630688, 37.673565, 39.044106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257656, 37.631405, 38.225227>,  <36.057217, 37.292000, 38.919437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257656, 37.631405, 38.225227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576855, 37.669743, 38.463223>,  <36.768375, 37.692745, 38.606018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576855, 37.669743, 38.463223>,  <36.257656, 37.631405, 38.225227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576855, 37.669743, 38.463223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601297, -0.192912, -0.775388,
		0.040467, 0.976524, -0.211572,
		0.798000, 0.095840, 0.594988,
		36.816254, 37.698494, 38.641720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791149, 37.840534, 37.795525>,  <36.257656, 37.631405, 38.225227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791149, 37.840534, 37.795525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986973, 37.699451, 38.114506>,  <37.104469, 37.614803, 38.305893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986973, 37.699451, 38.114506>,  <36.791149, 37.840534, 37.795525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986973, 37.699451, 38.114506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718274, -0.355397, -0.598143,
		0.494380, 0.865617, 0.079349,
		0.489563, -0.352704, 0.797451,
		37.133842, 37.593639, 38.353741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475239, 38.156849, 37.754761>,  <36.791149, 37.840534, 37.795525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475239, 38.156849, 37.754761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524834, 37.819584, 37.964024>,  <37.554592, 37.617226, 38.089581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524834, 37.819584, 37.964024>,  <37.475239, 38.156849, 37.754761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524834, 37.819584, 37.964024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589336, -0.361596, -0.722449,
		0.798317, 0.397892, 0.452075,
		0.123988, -0.843167, 0.523160,
		37.562031, 37.566635, 38.120972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156235, 37.866611, 37.525684>,  <37.475239, 38.156849, 37.754761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156235, 37.866611, 37.525684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969776, 37.558590, 37.699917>,  <37.857903, 37.373779, 37.804455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969776, 37.558590, 37.699917>,  <38.156235, 37.866611, 37.525684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969776, 37.558590, 37.699917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496535, -0.635204, -0.591581,
		0.732229, -0.059484, 0.678456,
		-0.466148, -0.770050, 0.435579,
		37.829933, 37.327576, 37.830589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635975, 37.448593, 37.621052>,  <38.156235, 37.866611, 37.525684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635975, 37.448593, 37.621052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306530, 37.222164, 37.635006>,  <38.108864, 37.086308, 37.643379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306530, 37.222164, 37.635006>,  <38.635975, 37.448593, 37.621052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306530, 37.222164, 37.635006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500493, -0.754370, -0.424774,
		0.266770, -0.332391, 0.904627,
		-0.823615, -0.566076, 0.034884,
		38.059444, 37.052341, 37.645470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995346, 36.893223, 37.887600>,  <38.635975, 37.448593, 37.621052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995346, 36.893223, 37.887600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649746, 36.770317, 37.728058>,  <38.442387, 36.696575, 37.632332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649746, 36.770317, 37.728058>,  <38.995346, 36.893223, 37.887600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649746, 36.770317, 37.728058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474516, -0.761784, -0.441044,
		-0.168325, -0.570328, 0.803986,
		-0.864003, -0.307265, -0.398857,
		38.390545, 36.678139, 37.608402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891106, 36.100563, 38.025658>,  <38.995346, 36.893223, 37.887600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891106, 36.100563, 38.025658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672333, 36.181126, 37.700623>,  <38.541069, 36.229465, 37.505600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672333, 36.181126, 37.700623>,  <38.891106, 36.100563, 38.025658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672333, 36.181126, 37.700623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541022, -0.655683, -0.526664,
		-0.638873, -0.727679, 0.249651,
		-0.546934, 0.201405, -0.812588,
		38.508255, 36.241547, 37.456844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879768, 35.467522, 37.719387>,  <38.891106, 36.100563, 38.025658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879768, 35.467522, 37.719387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798042, 35.723946, 37.423470>,  <38.749008, 35.877800, 37.245918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798042, 35.723946, 37.423470>,  <38.879768, 35.467522, 37.719387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798042, 35.723946, 37.423470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274179, -0.688011, -0.671912,
		-0.939724, -0.340118, -0.035194,
		-0.204315, 0.641061, -0.739794,
		38.736748, 35.916264, 37.201530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472622, 35.805653, 37.354946>,  <38.879768, 35.467522, 37.719387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472622, 35.805653, 37.354946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741920, 35.515255, 37.411041>,  <39.903500, 35.341015, 37.444698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741920, 35.515255, 37.411041>,  <39.472622, 35.805653, 37.354946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741920, 35.515255, 37.411041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721326, 0.603157, -0.340427,
		0.162561, 0.330351, 0.929754,
		0.673248, -0.725996, 0.140241,
		39.943893, 35.297455, 37.453114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107716, 36.020950, 37.663223>,  <39.472622, 35.805653, 37.354946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107716, 36.020950, 37.663223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207253, 35.680912, 37.477570>,  <40.266975, 35.476891, 37.366177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207253, 35.680912, 37.477570>,  <40.107716, 36.020950, 37.663223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207253, 35.680912, 37.477570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810076, 0.445346, -0.381371,
		0.530900, -0.281082, 0.799461,
		0.248840, -0.850094, -0.464132,
		40.281906, 35.425884, 37.338329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826031, 35.918789, 37.836895>,  <40.107716, 36.020950, 37.663223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826031, 35.918789, 37.836895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712318, 35.745766, 37.494648>,  <40.644093, 35.641953, 37.289299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712318, 35.745766, 37.494648>,  <40.826031, 35.918789, 37.836895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712318, 35.745766, 37.494648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803392, 0.379551, -0.458807,
		0.523210, -0.817824, 0.239615,
		-0.284277, -0.432556, -0.855618,
		40.627037, 35.615997, 37.237961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345112, 35.586479, 37.601498>,  <40.826031, 35.918789, 37.836895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345112, 35.586479, 37.601498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118732, 35.663658, 37.280880>,  <40.982903, 35.709965, 37.088509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118732, 35.663658, 37.280880>,  <41.345112, 35.586479, 37.601498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118732, 35.663658, 37.280880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784648, 0.424456, -0.451846,
		0.253038, -0.884652, -0.391617,
		-0.565951, 0.192947, -0.801543,
		40.948948, 35.721542, 37.040417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626125, 35.290791, 36.945259>,  <41.345112, 35.586479, 37.601498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626125, 35.290791, 36.945259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422840, 35.625523, 36.863838>,  <41.300869, 35.826363, 36.814987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422840, 35.625523, 36.863838>,  <41.626125, 35.290791, 36.945259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422840, 35.625523, 36.863838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812027, 0.386851, -0.436989,
		-0.286944, -0.387368, -0.876133,
		-0.508208, 0.836835, -0.203548,
		41.270378, 35.876572, 36.802773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714672, 35.720825, 36.245419>,  <41.626125, 35.290791, 36.945259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714672, 35.720825, 36.245419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619389, 35.997234, 36.518398>,  <41.562218, 36.163082, 36.682186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619389, 35.997234, 36.518398>,  <41.714672, 35.720825, 36.245419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619389, 35.997234, 36.518398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828917, 0.510832, -0.227920,
		-0.506117, 0.511403, -0.694487,
		-0.238207, 0.691026, 0.682451,
		41.547928, 36.204544, 36.723133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849533, 36.466785, 35.883484>,  <41.714672, 35.720825, 36.245419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849533, 36.466785, 35.883484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924667, 36.446728, 36.275852>,  <41.969746, 36.434692, 36.511272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924667, 36.446728, 36.275852>,  <41.849533, 36.466785, 35.883484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924667, 36.446728, 36.275852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883508, 0.444938, -0.146437,
		-0.429106, 0.894157, 0.127874,
		0.187834, -0.050140, 0.980920,
		41.981018, 36.431686, 36.570129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164944, 37.080032, 36.018253>,  <41.849533, 36.466785, 35.883484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164944, 37.080032, 36.018253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260483, 36.820499, 36.307243>,  <42.317806, 36.664780, 36.480637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260483, 36.820499, 36.307243>,  <42.164944, 37.080032, 36.018253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260483, 36.820499, 36.307243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968819, 0.209701, -0.131967,
		-0.065878, 0.731464, 0.678691,
		0.238851, -0.648835, 0.722470,
		42.332138, 36.625851, 36.523983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784847, 37.401672, 36.392498>,  <42.164944, 37.080032, 36.018253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784847, 37.401672, 36.392498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749794, 37.003796, 36.414036>,  <42.728760, 36.765068, 36.426960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749794, 37.003796, 36.414036>,  <42.784847, 37.401672, 36.392498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749794, 37.003796, 36.414036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893221, -0.102395, -0.437803,
		0.440995, 0.009731, 0.897457,
		-0.087635, -0.994696, 0.053848,
		42.723503, 36.705387, 36.430191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378597, 37.272194, 36.121330>,  <42.784847, 37.401672, 36.392498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378597, 37.272194, 36.121330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292118, 36.954258, 35.894531>,  <43.240231, 36.763496, 35.758450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292118, 36.954258, 35.894531>,  <43.378597, 37.272194, 36.121330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292118, 36.954258, 35.894531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831489, 0.154494, -0.533627,
		0.511745, -0.586825, 0.627498,
		-0.216201, -0.794839, -0.567000,
		43.227257, 36.715805, 35.724430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826618, 36.732719, 36.278465>,  <43.378597, 37.272194, 36.121330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826618, 36.732719, 36.278465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724850, 36.706707, 35.892502>,  <43.663788, 36.691101, 35.660923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724850, 36.706707, 35.892502>,  <43.826618, 36.732719, 36.278465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724850, 36.706707, 35.892502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960488, -0.133406, -0.244266,
		-0.112839, -0.988926, 0.096401,
		-0.254422, -0.065030, -0.964904,
		43.648521, 36.687199, 35.603031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113293, 36.074802, 35.937500>,  <43.826618, 36.732719, 36.278465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113293, 36.074802, 35.937500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084351, 36.374126, 35.673744>,  <44.066986, 36.553722, 35.515491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084351, 36.374126, 35.673744>,  <44.113293, 36.074802, 35.937500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084351, 36.374126, 35.673744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988148, -0.035959, -0.149233,
		-0.135384, -0.662371, -0.736841,
		-0.072351, 0.748312, -0.659389,
		44.062645, 36.598621, 35.475929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.394108, 35.885098, 35.268883>,  <44.113293, 36.074802, 35.937500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.394108, 35.885098, 35.268883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.413708, 36.282562, 35.309341>,  <44.425468, 36.521042, 35.333618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.413708, 36.282562, 35.309341>,  <44.394108, 35.885098, 35.268883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413708, 36.282562, 35.309341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947260, -0.014126, -0.320154,
		-0.316697, 0.111502, -0.941950,
		0.049004, 0.993664, 0.101148,
		44.428410, 36.580662, 35.339687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525787, 36.154591, 34.624062>,  <44.394108, 35.885098, 35.268883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525787, 36.154591, 34.624062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658005, 36.419750, 34.892780>,  <44.737335, 36.578846, 35.054012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658005, 36.419750, 34.892780>,  <44.525787, 36.154591, 34.624062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658005, 36.419750, 34.892780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905393, -0.021751, -0.424018,
		-0.266467, 0.748397, -0.607369,
		0.330545, 0.662894, 0.671797,
		44.757168, 36.618618, 35.094318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804180, 36.812420, 34.314373>,  <44.525787, 36.154591, 34.624062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804180, 36.812420, 34.314373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.990471, 36.744263, 34.661720>,  <45.102245, 36.703369, 34.870129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.990471, 36.744263, 34.661720>,  <44.804180, 36.812420, 34.314373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.990471, 36.744263, 34.661720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872218, -0.077347, -0.482963,
		0.149457, 0.982336, 0.112595,
		0.465723, -0.170389, 0.868372,
		45.130188, 36.693146, 34.922234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.489090, 37.238205, 34.411942>,  <44.804180, 36.812420, 34.314373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.489090, 37.238205, 34.411942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525517, 36.920216, 34.651848>,  <45.547375, 36.729424, 34.795792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525517, 36.920216, 34.651848>,  <45.489090, 37.238205, 34.411942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525517, 36.920216, 34.651848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956684, -0.097393, -0.274353,
		0.276517, 0.598776, 0.751669,
		0.091069, -0.794973, 0.599770,
		45.552837, 36.681725, 34.831779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.287987, 37.064457, 34.455597>,  <45.489090, 37.238205, 34.411942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.287987, 37.064457, 34.455597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143326, 36.745129, 34.648216>,  <46.056530, 36.553532, 34.763790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143326, 36.745129, 34.648216>,  <46.287987, 37.064457, 34.455597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.143326, 36.745129, 34.648216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884378, -0.457241, -0.093843,
		0.295102, 0.391934, 0.871380,
		-0.361650, -0.798322, 0.481551,
		46.034832, 36.505630, 34.792683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.765450, 36.900105, 34.943687>,  <46.287987, 37.064457, 34.455597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.765450, 36.900105, 34.943687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.581795, 36.554867, 34.859524>,  <46.471603, 36.347725, 34.809025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.581795, 36.554867, 34.859524>,  <46.765450, 36.900105, 34.943687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.581795, 36.554867, 34.859524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888345, -0.444365, -0.115685,
		0.006349, -0.240030, 0.970745,
		-0.459133, -0.863091, -0.210409,
		46.444054, 36.295940, 34.796402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.098385, 36.289871, 35.322884>,  <46.765450, 36.900105, 34.943687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.098385, 36.289871, 35.322884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.952236, 36.127377, 34.987869>,  <46.864548, 36.029881, 34.786861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.952236, 36.127377, 34.987869>,  <47.098385, 36.289871, 35.322884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.952236, 36.127377, 34.987869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827288, -0.554176, -0.092105,
		-0.426726, -0.726538, 0.538561,
		-0.365375, -0.406241, -0.837537,
		46.842625, 36.005505, 34.736607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882530, 35.445766, 35.237839>,  <47.098385, 36.289871, 35.322884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882530, 35.445766, 35.237839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.026165, 35.613903, 34.904522>,  <47.112347, 35.714787, 34.704533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.026165, 35.613903, 34.904522>,  <46.882530, 35.445766, 35.237839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.026165, 35.613903, 34.904522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812643, -0.579902, 0.057662,
		-0.458990, -0.697873, -0.549820,
		0.359083, 0.420341, -0.833290,
		47.133888, 35.740005, 34.654533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.332504, 34.895245, 34.971699>,  <46.882530, 35.445766, 35.237839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.332504, 34.895245, 34.971699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721344, 34.960327, 35.039291>,  <47.954647, 34.999374, 35.079845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721344, 34.960327, 35.039291>,  <47.332504, 34.895245, 34.971699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.721344, 34.960327, 35.039291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231279, -0.785143, -0.574509,
		0.039196, 0.597560, -0.800866,
		0.972098, 0.162705, 0.168977,
		48.012974, 35.009140, 35.089985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.541195, 29.419104, 30.651997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193775, 29.551516, 30.504459>,  <35.985325, 29.630962, 30.415937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193775, 29.551516, 30.504459>,  <36.541195, 29.419104, 30.651997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193775, 29.551516, 30.504459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226924, 0.396003, 0.889768,
		0.440604, 0.856504, -0.268828,
		-0.868547, 0.331032, -0.368842,
		35.933212, 29.650826, 30.393806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377380, 30.030521, 30.999598>,  <36.541195, 29.419104, 30.651997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377380, 30.030521, 30.999598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008152, 29.973251, 30.856806>,  <35.786613, 29.938889, 30.771130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.008152, 29.973251, 30.856806>,  <36.377380, 30.030521, 30.999598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008152, 29.973251, 30.856806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373333, 0.556750, 0.742059,
		0.092503, 0.818248, -0.567374,
		-0.923074, -0.143177, -0.356980,
		35.731232, 29.930298, 30.749712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062836, 30.681437, 31.035559>,  <36.377380, 30.030521, 30.999598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062836, 30.681437, 31.035559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764893, 30.414589, 31.040339>,  <35.586128, 30.254480, 31.043205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764893, 30.414589, 31.040339>,  <36.062836, 30.681437, 31.035559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764893, 30.414589, 31.040339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459615, 0.525988, 0.715605,
		-0.483678, 0.527531, -0.698403,
		-0.744855, -0.667119, 0.011948,
		35.541435, 30.214453, 31.043922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381981, 31.011114, 31.022600>,  <36.062836, 30.681437, 31.035559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381981, 31.011114, 31.022600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.345234, 30.651144, 31.193102>,  <35.323185, 30.435162, 31.295403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.345234, 30.651144, 31.193102>,  <35.381981, 31.011114, 31.022600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345234, 30.651144, 31.193102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511543, 0.409915, 0.755177,
		-0.854332, -0.148669, -0.498010,
		-0.091871, -0.899926, 0.426254,
		35.317673, 30.381166, 31.320978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666824, 30.943708, 31.140549>,  <35.381981, 31.011114, 31.022600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666824, 30.943708, 31.140549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.898140, 30.710077, 31.368387>,  <35.036930, 30.569899, 31.505091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.898140, 30.710077, 31.368387>,  <34.666824, 30.943708, 31.140549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898140, 30.710077, 31.368387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410595, 0.394943, 0.821847,
		-0.704981, -0.709134, -0.011431,
		0.578284, -0.584080, 0.569594,
		35.071625, 30.534853, 31.539265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181374, 30.671307, 31.750450>,  <34.666824, 30.943708, 31.140549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181374, 30.671307, 31.750450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.540970, 30.594889, 31.908091>,  <34.756729, 30.549038, 32.002674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.540970, 30.594889, 31.908091>,  <34.181374, 30.671307, 31.750450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540970, 30.594889, 31.908091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319105, 0.330607, 0.888184,
		-0.299975, -0.924230, 0.236250,
		0.898992, -0.191045, 0.394100,
		34.810669, 30.537575, 32.026321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040924, 30.405096, 32.517220>,  <34.181374, 30.671307, 31.750450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040924, 30.405096, 32.517220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.413918, 30.544016, 32.477516>,  <34.637714, 30.627369, 32.453693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.413918, 30.544016, 32.477516>,  <34.040924, 30.405096, 32.517220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413918, 30.544016, 32.477516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077290, 0.460281, 0.884402,
		0.352840, -0.817021, 0.456048,
		0.932486, 0.347300, -0.099258,
		34.693665, 30.648207, 32.447739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344154, 30.454506, 33.213196>,  <34.040924, 30.405096, 32.517220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344154, 30.454506, 33.213196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.569736, 30.712067, 33.006374>,  <34.705086, 30.866604, 32.882282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.569736, 30.712067, 33.006374>,  <34.344154, 30.454506, 33.213196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569736, 30.712067, 33.006374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078939, 0.665289, 0.742401,
		0.822024, -0.377865, 0.426022,
		0.563955, 0.643901, -0.517055,
		34.738922, 30.905237, 32.851257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834801, 30.746054, 33.744404>,  <34.344154, 30.454506, 33.213196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834801, 30.746054, 33.744404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.859032, 31.001814, 33.437809>,  <34.873569, 31.155270, 33.253853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.859032, 31.001814, 33.437809>,  <34.834801, 30.746054, 33.744404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859032, 31.001814, 33.437809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136588, 0.765981, 0.628185,
		0.988774, 0.066637, 0.133739,
		0.060581, 0.639400, -0.766484,
		34.877205, 31.193634, 33.207863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406914, 31.275629, 33.882324>,  <34.834801, 30.746054, 33.744404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406914, 31.275629, 33.882324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.157673, 31.460615, 33.630020>,  <35.008129, 31.571608, 33.478638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.157673, 31.460615, 33.630020>,  <35.406914, 31.275629, 33.882324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157673, 31.460615, 33.630020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002759, 0.805157, 0.593055,
		0.782133, 0.371276, -0.500422,
		-0.623106, 0.462467, -0.630764,
		34.970741, 31.599356, 33.440792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671356, 31.977114, 33.719101>,  <35.406914, 31.275629, 33.882324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671356, 31.977114, 33.719101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278030, 32.007835, 33.653145>,  <35.042034, 32.026268, 33.613571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278030, 32.007835, 33.653145>,  <35.671356, 31.977114, 33.719101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278030, 32.007835, 33.653145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045805, 0.772739, 0.633069,
		0.176042, 0.630060, -0.756329,
		-0.983316, 0.076803, -0.164894,
		34.983036, 32.030876, 33.603676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504616, 32.741146, 33.593765>,  <35.671356, 31.977114, 33.719101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504616, 32.741146, 33.593765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.169518, 32.548431, 33.696579>,  <34.968460, 32.432804, 33.758266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.169518, 32.548431, 33.696579>,  <35.504616, 32.741146, 33.593765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169518, 32.548431, 33.696579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269484, 0.774159, 0.572762,
		-0.474936, 0.410560, -0.778380,
		-0.837743, -0.481786, 0.257037,
		34.918194, 32.403896, 33.773689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015930, 33.309792, 33.760830>,  <35.504616, 32.741146, 33.593765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015930, 33.309792, 33.760830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.864048, 32.969608, 33.906460>,  <34.772919, 32.765499, 33.993835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.864048, 32.969608, 33.906460>,  <35.015930, 33.309792, 33.760830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864048, 32.969608, 33.906460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369886, 0.500289, 0.782877,
		-0.847942, 0.162599, -0.504535,
		-0.379708, -0.850454, 0.364073,
		34.750137, 32.714474, 34.015682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381176, 33.545109, 33.941250>,  <35.015930, 33.309792, 33.760830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381176, 33.545109, 33.941250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435326, 33.211258, 34.154816>,  <34.467815, 33.010948, 34.282955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435326, 33.211258, 34.154816>,  <34.381176, 33.545109, 33.941250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435326, 33.211258, 34.154816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270322, 0.487322, 0.830328,
		-0.953205, -0.256736, -0.159646,
		0.135376, -0.834628, 0.533919,
		34.475937, 32.960869, 34.314991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924992, 33.502644, 34.486454>,  <34.381176, 33.545109, 33.941250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924992, 33.502644, 34.486454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.175297, 33.239315, 34.653801>,  <34.325481, 33.081318, 34.754208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.175297, 33.239315, 34.653801>,  <33.924992, 33.502644, 34.486454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175297, 33.239315, 34.653801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072360, 0.485054, 0.871485,
		-0.776648, -0.575618, 0.255893,
		0.625764, -0.658321, 0.418368,
		34.363026, 33.041821, 34.779312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626354, 33.312237, 35.124752>,  <33.924992, 33.502644, 34.486454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626354, 33.312237, 35.124752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.019012, 33.241844, 35.154179>,  <34.254608, 33.199608, 35.171833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.019012, 33.241844, 35.154179>,  <33.626354, 33.312237, 35.124752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019012, 33.241844, 35.154179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011664, 0.329592, 0.944051,
		-0.190379, -0.927578, 0.321489,
		0.981641, -0.175977, 0.073567,
		34.313503, 33.189053, 35.176250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654716, 32.918434, 35.718666>,  <33.626354, 33.312237, 35.124752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654716, 32.918434, 35.718666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.035797, 33.034908, 35.683884>,  <34.264446, 33.104794, 35.663013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.035797, 33.034908, 35.683884>,  <33.654716, 32.918434, 35.718666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035797, 33.034908, 35.683884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044201, 0.150315, 0.987650,
		0.300663, -0.944783, 0.130335,
		0.952706, 0.291189, -0.086954,
		34.321609, 33.122265, 35.657799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110924, 32.506893, 36.135769>,  <33.654716, 32.918434, 35.718666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110924, 32.506893, 36.135769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.311039, 32.847008, 36.070385>,  <34.431107, 33.051079, 36.031155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.311039, 32.847008, 36.070385>,  <34.110924, 32.506893, 36.135769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311039, 32.847008, 36.070385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011538, 0.195317, 0.980672,
		0.865783, -0.488732, 0.107526,
		0.500287, 0.850290, -0.163464,
		34.461124, 33.102093, 36.021347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656689, 32.473694, 36.528427>,  <34.110924, 32.506893, 36.135769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656689, 32.473694, 36.528427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.565651, 32.858536, 36.468346>,  <34.511028, 33.089439, 36.432297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.565651, 32.858536, 36.468346>,  <34.656689, 32.473694, 36.528427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565651, 32.858536, 36.468346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023963, 0.148668, 0.988597,
		0.973460, 0.228602, -0.010782,
		-0.227598, 0.962101, -0.150201,
		34.497372, 33.147167, 36.423286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082031, 32.674511, 37.043461>,  <34.656689, 32.473694, 36.528427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082031, 32.674511, 37.043461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.870510, 33.004036, 36.961784>,  <34.743599, 33.201752, 36.912781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.870510, 33.004036, 36.961784>,  <35.082031, 32.674511, 37.043461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870510, 33.004036, 36.961784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100011, 0.299382, 0.948877,
		0.842831, 0.481349, -0.240705,
		-0.528804, 0.823817, -0.204188,
		34.711868, 33.251183, 36.900528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426640, 33.325668, 37.204407>,  <35.082031, 32.674511, 37.043461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426640, 33.325668, 37.204407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.037846, 33.419632, 37.207756>,  <34.804569, 33.476009, 37.209766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.037846, 33.419632, 37.207756>,  <35.426640, 33.325668, 37.204407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037846, 33.419632, 37.207756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072066, 0.263893, 0.961856,
		0.223737, 0.935510, -0.273428,
		-0.971982, 0.234908, 0.008376,
		34.746250, 33.490105, 37.210270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404636, 33.905483, 37.692207>,  <35.426640, 33.325668, 37.204407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404636, 33.905483, 37.692207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031132, 33.768509, 37.650578>,  <34.807030, 33.686325, 37.625599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031132, 33.768509, 37.650578>,  <35.404636, 33.905483, 37.692207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031132, 33.768509, 37.650578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217023, 0.310514, 0.925463,
		-0.284599, 0.886745, -0.364262,
		-0.933758, -0.342439, -0.104072,
		34.751003, 33.665775, 37.619354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616203, 34.234745, 37.025684>,  <35.404636, 33.905483, 37.692207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616203, 34.234745, 37.025684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996723, 34.209381, 37.146358>,  <36.225033, 34.194160, 37.218761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996723, 34.209381, 37.146358>,  <35.616203, 34.234745, 37.025684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996723, 34.209381, 37.146358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242144, -0.451937, -0.858557,
		0.190786, 0.889793, -0.414571,
		0.951298, -0.063414, 0.301681,
		36.282112, 34.190357, 37.236862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001965, 34.329906, 36.434479>,  <35.616203, 34.234745, 37.025684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001965, 34.329906, 36.434479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.291374, 34.195133, 36.675472>,  <36.465019, 34.114269, 36.820068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.291374, 34.195133, 36.675472>,  <36.001965, 34.329906, 36.434479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291374, 34.195133, 36.675472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384373, -0.528326, -0.757053,
		0.573387, 0.779324, -0.252748,
		0.723523, -0.336935, 0.602486,
		36.508430, 34.094051, 36.856216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640293, 34.455910, 36.134014>,  <36.001965, 34.329906, 36.434479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640293, 34.455910, 36.134014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.729492, 34.154095, 36.380894>,  <36.783012, 33.973003, 36.529022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.729492, 34.154095, 36.380894>,  <36.640293, 34.455910, 36.134014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729492, 34.154095, 36.380894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219734, -0.577942, -0.785939,
		0.949730, 0.310886, 0.036917,
		0.223002, -0.754542, 0.617201,
		36.796394, 33.927731, 36.566055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242531, 34.178738, 35.886238>,  <36.640293, 34.455910, 36.134014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242531, 34.178738, 35.886238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151802, 33.865417, 36.117756>,  <37.097366, 33.677425, 36.256664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151802, 33.865417, 36.117756>,  <37.242531, 34.178738, 35.886238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151802, 33.865417, 36.117756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484472, -0.606280, -0.630644,
		0.844891, 0.137366, 0.517001,
		-0.226819, -0.783297, 0.578791,
		37.083755, 33.630428, 36.291393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886978, 33.752857, 35.982090>,  <37.242531, 34.178738, 35.886238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886978, 33.752857, 35.982090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.581474, 33.510551, 36.071293>,  <37.398174, 33.365170, 36.124813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.581474, 33.510551, 36.071293>,  <37.886978, 33.752857, 35.982090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581474, 33.510551, 36.071293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411803, -0.723283, -0.554327,
		0.497086, -0.331536, 0.801866,
		-0.763756, -0.605760, 0.223007,
		37.352348, 33.328823, 36.138195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124359, 32.980892, 36.126228>,  <37.886978, 33.752857, 35.982090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124359, 32.980892, 36.126228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745468, 32.952934, 36.001095>,  <37.518131, 32.936161, 35.926014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745468, 32.952934, 36.001095>,  <38.124359, 32.980892, 36.126228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745468, 32.952934, 36.001095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240149, -0.801169, -0.548139,
		-0.212322, -0.594342, 0.775679,
		-0.947231, -0.069896, -0.312837,
		37.461300, 32.931965, 35.907246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893860, 32.273727, 36.253563>,  <38.124359, 32.980892, 36.126228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893860, 32.273727, 36.253563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637104, 32.410332, 35.978943>,  <37.483051, 32.492294, 35.814171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637104, 32.410332, 35.978943>,  <37.893860, 32.273727, 36.253563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637104, 32.410332, 35.978943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278224, -0.730606, -0.623544,
		-0.714539, -0.591262, 0.373956,
		-0.641892, 0.341503, -0.686549,
		37.444538, 32.512783, 35.772976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648720, 31.656946, 35.982788>,  <37.893860, 32.273727, 36.253563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648720, 31.656946, 35.982788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538761, 31.916082, 35.698608>,  <37.472786, 32.071564, 35.528103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538761, 31.916082, 35.698608>,  <37.648720, 31.656946, 35.982788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538761, 31.916082, 35.698608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095499, -0.716862, -0.690644,
		-0.956719, -0.257703, 0.135195,
		-0.274898, 0.647841, -0.710446,
		37.456291, 32.110435, 35.485474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449272, 31.280619, 35.515835>,  <37.648720, 31.656946, 35.982788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449272, 31.280619, 35.515835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490520, 31.606148, 35.287079>,  <37.515270, 31.801466, 35.149826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490520, 31.606148, 35.287079>,  <37.449272, 31.280619, 35.515835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490520, 31.606148, 35.287079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154649, -0.581080, -0.799017,
		-0.982573, -0.006048, -0.185778,
		0.103120, 0.813824, -0.571889,
		37.521458, 31.850294, 35.115513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134682, 31.098713, 34.876606>,  <37.449272, 31.280619, 35.515835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134682, 31.098713, 34.876606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.358566, 31.415489, 34.778992>,  <37.492897, 31.605555, 34.720425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.358566, 31.415489, 34.778992>,  <37.134682, 31.098713, 34.876606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358566, 31.415489, 34.778992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240036, -0.436796, -0.866944,
		-0.793163, 0.426660, -0.434574,
		0.559710, 0.791941, -0.244037,
		37.526478, 31.653072, 34.705780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893040, 31.444675, 34.273212>,  <37.134682, 31.098713, 34.876606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893040, 31.444675, 34.273212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.281425, 31.537287, 34.297272>,  <37.514458, 31.592854, 34.311707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.281425, 31.537287, 34.297272>,  <36.893040, 31.444675, 34.273212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281425, 31.537287, 34.297272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132098, -0.309319, -0.941739,
		-0.199431, 0.922343, -0.330923,
		0.970967, 0.231526, 0.060152,
		37.572716, 31.606745, 34.315319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935368, 31.778095, 33.726120>,  <36.893040, 31.444675, 34.273212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935368, 31.778095, 33.726120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303082, 31.658113, 33.828049>,  <37.523712, 31.586124, 33.889206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303082, 31.658113, 33.828049>,  <36.935368, 31.778095, 33.726120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303082, 31.658113, 33.828049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132005, -0.374957, -0.917596,
		0.370785, 0.877174, -0.305098,
		0.919289, -0.299957, 0.254819,
		37.578869, 31.568127, 33.904495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297760, 31.989752, 33.181553>,  <36.935368, 31.778095, 33.726120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297760, 31.989752, 33.181553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.499077, 31.707781, 33.381466>,  <37.619865, 31.538599, 33.501411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.499077, 31.707781, 33.381466>,  <37.297760, 31.989752, 33.181553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499077, 31.707781, 33.381466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208771, -0.462043, -0.861935,
		0.838520, 0.538140, -0.085372,
		0.503288, -0.704927, 0.499780,
		37.650063, 31.496304, 33.531399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880051, 31.996075, 32.891975>,  <37.297760, 31.989752, 33.181553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880051, 31.996075, 32.891975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863026, 31.631161, 33.054909>,  <37.852810, 31.412212, 33.152668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863026, 31.631161, 33.054909>,  <37.880051, 31.996075, 32.891975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863026, 31.631161, 33.054909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377324, -0.392190, -0.838936,
		0.925103, 0.117992, 0.360919,
		-0.042561, -0.912286, 0.407337,
		37.850258, 31.357475, 33.177109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613983, 31.800003, 32.981236>,  <37.880051, 31.996075, 32.891975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613983, 31.800003, 32.981236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.378067, 31.479330, 32.942348>,  <38.236515, 31.286926, 32.919018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.378067, 31.479330, 32.942348>,  <38.613983, 31.800003, 32.981236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378067, 31.479330, 32.942348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494592, -0.263435, -0.828239,
		0.638374, -0.536572, 0.551878,
		-0.589794, -0.801681, -0.097215,
		38.201130, 31.238827, 32.913185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997478, 31.252417, 32.672329>,  <38.613983, 31.800003, 32.981236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997478, 31.252417, 32.672329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.629002, 31.099619, 32.642696>,  <38.407917, 31.007940, 32.624916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.629002, 31.099619, 32.642696>,  <38.997478, 31.252417, 32.672329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629002, 31.099619, 32.642696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167741, -0.218073, -0.961409,
		0.351099, -0.898067, 0.264963,
		-0.921190, -0.381995, -0.074078,
		38.352646, 30.985020, 32.620472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146271, 30.566195, 32.282352>,  <38.997478, 31.252417, 32.672329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146271, 30.566195, 32.282352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.755760, 30.643179, 32.242668>,  <38.521454, 30.689369, 32.218857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.755760, 30.643179, 32.242668>,  <39.146271, 30.566195, 32.282352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755760, 30.643179, 32.242668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038801, -0.295266, -0.954627,
		-0.213019, -0.935830, 0.280794,
		-0.976277, 0.192459, -0.099208,
		38.462875, 30.700918, 32.212906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823792, 29.969904, 31.998489>,  <39.146271, 30.566195, 32.282352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823792, 29.969904, 31.998489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.599106, 30.282400, 31.889576>,  <38.464294, 30.469898, 31.824228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.599106, 30.282400, 31.889576>,  <38.823792, 29.969904, 31.998489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599106, 30.282400, 31.889576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044402, -0.357106, -0.933008,
		-0.826137, -0.511997, 0.235281,
		-0.561717, 0.781239, -0.272285,
		38.430592, 30.516771, 31.807890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.175636, 29.728123, 31.588791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118809, 30.121851, 31.546970>,  <38.084713, 30.358088, 31.521877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118809, 30.121851, 31.546970>,  <38.175636, 29.728123, 31.588791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118809, 30.121851, 31.546970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096098, -0.118839, -0.988252,
		-0.985181, -0.130352, 0.111474,
		-0.142068, 0.984320, -0.104551,
		38.076187, 30.417147, 31.515606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455147, 29.963099, 31.294859>,  <38.175636, 29.728123, 31.588791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455147, 29.963099, 31.294859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.739193, 30.232996, 31.214409>,  <37.909622, 30.394936, 31.166138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.739193, 30.232996, 31.214409>,  <37.455147, 29.963099, 31.294859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739193, 30.232996, 31.214409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079862, -0.206623, -0.975156,
		-0.699539, 0.708538, -0.092840,
		0.710118, 0.674745, -0.201126,
		37.952229, 30.435419, 31.154072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159092, 30.292145, 30.788883>,  <37.455147, 29.963099, 31.294859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159092, 30.292145, 30.788883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.549526, 30.377192, 30.770811>,  <37.783787, 30.428221, 30.759968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.549526, 30.377192, 30.770811>,  <37.159092, 30.292145, 30.788883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549526, 30.377192, 30.770811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012392, -0.261937, -0.965005,
		-0.217012, 0.941373, -0.258309,
		0.976090, 0.212618, -0.045178,
		37.842354, 30.440977, 30.757257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362011, 30.646688, 30.040247>,  <37.159092, 30.292145, 30.788883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362011, 30.646688, 30.040247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722683, 30.570963, 30.195751>,  <37.939087, 30.525528, 30.289053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722683, 30.570963, 30.195751>,  <37.362011, 30.646688, 30.040247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722683, 30.570963, 30.195751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298868, -0.376887, -0.876718,
		0.312492, 0.906707, -0.283252,
		0.901680, -0.189312, 0.388760,
		37.993187, 30.514170, 30.312380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894924, 30.813368, 29.537376>,  <37.362011, 30.646688, 30.040247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894924, 30.813368, 29.537376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.046680, 30.536255, 29.782688>,  <38.137733, 30.369987, 29.929874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.046680, 30.536255, 29.782688>,  <37.894924, 30.813368, 29.537376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046680, 30.536255, 29.782688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245306, -0.563800, -0.788641,
		0.892124, 0.449647, -0.043959,
		0.379394, -0.692783, 0.613280,
		38.160500, 30.328421, 29.966673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604828, 30.678041, 29.238640>,  <37.894924, 30.813368, 29.537376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604828, 30.678041, 29.238640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.516319, 30.371550, 29.479944>,  <38.463215, 30.187654, 29.624727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.516319, 30.371550, 29.479944>,  <38.604828, 30.678041, 29.238640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516319, 30.371550, 29.479944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272830, -0.642535, -0.716040,
		0.936270, 0.006147, 0.351228,
		-0.221275, -0.766232, 0.603263,
		38.449936, 30.141680, 29.660923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196407, 30.217249, 29.157518>,  <38.604828, 30.678041, 29.238640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196407, 30.217249, 29.157518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891087, 29.998028, 29.294340>,  <38.707893, 29.866495, 29.376432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891087, 29.998028, 29.294340>,  <39.196407, 30.217249, 29.157518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891087, 29.998028, 29.294340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283433, -0.759878, -0.585022,
		0.580544, -0.349601, 0.735356,
		-0.763305, -0.548055, 0.342055,
		38.662094, 29.833611, 29.396957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443016, 29.443970, 29.276096>,  <39.196407, 30.217249, 29.157518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443016, 29.443970, 29.276096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044464, 29.436449, 29.242912>,  <38.805332, 29.431936, 29.223001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044464, 29.436449, 29.242912>,  <39.443016, 29.443970, 29.276096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044464, 29.436449, 29.242912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067015, -0.774152, -0.629443,
		-0.052391, -0.632721, 0.772606,
		-0.996376, -0.018799, -0.082960,
		38.745552, 29.430809, 29.218023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224312, 28.684431, 29.360905>,  <39.443016, 29.443970, 29.276096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224312, 28.684431, 29.360905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.935978, 28.892551, 29.177740>,  <38.762978, 29.017424, 29.067841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.935978, 28.892551, 29.177740>,  <39.224312, 28.684431, 29.360905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935978, 28.892551, 29.177740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018747, -0.645790, -0.763285,
		-0.692853, -0.558787, 0.455754,
		-0.720835, 0.520300, -0.457913,
		38.719727, 29.048641, 29.040365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691292, 28.153614, 29.071211>,  <39.224312, 28.684431, 29.360905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691292, 28.153614, 29.071211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.631142, 28.482748, 28.852001>,  <38.595051, 28.680229, 28.720474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.631142, 28.482748, 28.852001>,  <38.691292, 28.153614, 29.071211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631142, 28.482748, 28.852001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038069, -0.558736, -0.828471,
		-0.987896, -0.103717, 0.115344,
		-0.150374, 0.822834, -0.548025,
		38.586029, 28.729599, 28.687593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218361, 27.894516, 28.534037>,  <38.691292, 28.153614, 29.071211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218361, 27.894516, 28.534037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356613, 28.242071, 28.392292>,  <38.439564, 28.450603, 28.307245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356613, 28.242071, 28.392292>,  <38.218361, 27.894516, 28.534037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356613, 28.242071, 28.392292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051421, -0.394604, -0.917411,
		-0.936960, 0.298865, -0.181067,
		0.345632, 0.868888, -0.354360,
		38.460304, 28.502737, 28.285984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913017, 27.867563, 27.812973>,  <38.218361, 27.894516, 28.534037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913017, 27.867563, 27.812973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201263, 28.144754, 27.821882>,  <38.374210, 28.311069, 27.827227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201263, 28.144754, 27.821882>,  <37.913017, 27.867563, 27.812973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201263, 28.144754, 27.821882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169787, -0.145232, -0.974721,
		-0.672225, 0.706180, -0.222315,
		0.720615, 0.692978, 0.022272,
		38.417446, 28.352648, 27.828564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891212, 28.268133, 27.153969>,  <37.913017, 27.867563, 27.812973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891212, 28.268133, 27.153969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.268925, 28.315298, 27.276892>,  <38.495552, 28.343597, 27.350645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.268925, 28.315298, 27.276892>,  <37.891212, 28.268133, 27.153969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268925, 28.315298, 27.276892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328329, -0.271349, -0.904748,
		-0.023294, 0.955231, -0.294943,
		0.944276, 0.117914, 0.307309,
		38.552208, 28.350672, 27.369085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188297, 28.562664, 26.601269>,  <37.891212, 28.268133, 27.153969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188297, 28.562664, 26.601269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.500519, 28.432661, 26.814850>,  <38.687851, 28.354658, 26.942999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.500519, 28.432661, 26.814850>,  <38.188297, 28.562664, 26.601269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500519, 28.432661, 26.814850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472413, -0.252660, -0.844387,
		0.409342, 0.911335, -0.043677,
		0.780555, -0.325010, 0.533951,
		38.734684, 28.335157, 26.975035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767944, 28.658911, 26.140265>,  <38.188297, 28.562664, 26.601269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767944, 28.658911, 26.140265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.889046, 28.396883, 26.417168>,  <38.961708, 28.239666, 26.583309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.889046, 28.396883, 26.417168>,  <38.767944, 28.658911, 26.140265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889046, 28.396883, 26.417168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562427, -0.463591, -0.684659,
		0.769425, 0.596630, 0.228075,
		0.302754, -0.655070, 0.692260,
		38.979874, 28.200361, 26.624846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431671, 28.715349, 26.066549>,  <38.767944, 28.658911, 26.140265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431671, 28.715349, 26.066549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.357414, 28.362041, 26.238770>,  <39.312862, 28.150057, 26.342102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.357414, 28.362041, 26.238770>,  <39.431671, 28.715349, 26.066549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357414, 28.362041, 26.238770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397303, -0.468223, -0.789251,
		0.898715, 0.024543, 0.437846,
		-0.185639, -0.883269, 0.430550,
		39.301723, 28.097061, 26.367935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041634, 28.365438, 26.072386>,  <39.431671, 28.715349, 26.066549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041634, 28.365438, 26.072386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.768826, 28.073795, 26.095196>,  <39.605141, 27.898809, 26.108883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.768826, 28.073795, 26.095196>,  <40.041634, 28.365438, 26.072386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768826, 28.073795, 26.095196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473312, -0.499494, -0.725590,
		0.557519, -0.467874, 0.685760,
		-0.682018, -0.729109, 0.057026,
		39.564220, 27.855062, 26.112303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357395, 27.712042, 26.107639>,  <40.041634, 28.365438, 26.072386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357395, 27.712042, 26.107639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.995834, 27.609793, 25.970455>,  <39.778900, 27.548443, 25.888145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.995834, 27.609793, 25.970455>,  <40.357395, 27.712042, 26.107639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995834, 27.609793, 25.970455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427738, -0.535561, -0.728159,
		0.002459, -0.804879, 0.593433,
		-0.903900, -0.255624, -0.342960,
		39.724663, 27.533106, 25.867567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398254, 27.007509, 26.042261>,  <40.357395, 27.712042, 26.107639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398254, 27.007509, 26.042261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.106396, 27.126635, 25.796032>,  <39.931282, 27.198109, 25.648294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.106396, 27.126635, 25.796032>,  <40.398254, 27.007509, 26.042261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106396, 27.126635, 25.796032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345195, -0.616667, -0.707504,
		-0.590308, -0.728717, 0.347142,
		-0.729642, 0.297814, -0.615573,
		39.887505, 27.215979, 25.611361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233360, 26.388620, 25.754690>,  <40.398254, 27.007509, 26.042261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233360, 26.388620, 25.754690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.062954, 26.661934, 25.517494>,  <39.960709, 26.825922, 25.375177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.062954, 26.661934, 25.517494>,  <40.233360, 26.388620, 25.754690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062954, 26.661934, 25.517494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257868, -0.536547, -0.803506,
		-0.867187, -0.495220, 0.052382,
		-0.426017, 0.683282, -0.592988,
		39.935150, 26.866919, 25.339598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806747, 26.048090, 25.328596>,  <40.233360, 26.388620, 25.754690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806747, 26.048090, 25.328596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.845528, 26.383394, 25.113964>,  <39.868793, 26.584578, 24.985186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.845528, 26.383394, 25.113964>,  <39.806747, 26.048090, 25.328596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845528, 26.383394, 25.113964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137308, -0.545230, -0.826965,
		-0.985773, 0.006495, -0.167959,
		0.096947, 0.838261, -0.536581,
		39.874611, 26.634872, 24.952990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267448, 26.042749, 24.862848>,  <39.806747, 26.048090, 25.328596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267448, 26.042749, 24.862848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.553898, 26.271498, 24.702785>,  <39.725769, 26.408747, 24.606749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.553898, 26.271498, 24.702785>,  <39.267448, 26.042749, 24.862848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553898, 26.271498, 24.702785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058657, -0.620596, -0.781934,
		-0.695500, 0.536492, -0.477970,
		0.716128, 0.571871, -0.400155,
		39.768738, 26.443060, 24.582739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068455, 26.224354, 24.107964>,  <39.267448, 26.042749, 24.862848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068455, 26.224354, 24.107964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444172, 26.182436, 24.238647>,  <39.669601, 26.157286, 24.317059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444172, 26.182436, 24.238647>,  <39.068455, 26.224354, 24.107964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444172, 26.182436, 24.238647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171202, -0.682048, -0.710986,
		0.297340, 0.723760, -0.622704,
		0.939297, -0.104796, 0.326709,
		39.725960, 26.150997, 24.336660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959919, 26.743784, 23.534267>,  <39.068455, 26.224354, 24.107964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959919, 26.743784, 23.534267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.756382, 26.799549, 23.194469>,  <38.634258, 26.833008, 22.990591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.756382, 26.799549, 23.194469>,  <38.959919, 26.743784, 23.534267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756382, 26.799549, 23.194469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639783, 0.599006, 0.481528,
		0.575984, 0.788516, -0.215606,
		-0.508841, 0.139412, -0.849497,
		38.603729, 26.841373, 22.939621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841541, 27.346037, 23.397766>,  <38.959919, 26.743784, 23.534267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841541, 27.346037, 23.397766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.532238, 27.171227, 23.213989>,  <38.346657, 27.066339, 23.103724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.532238, 27.171227, 23.213989>,  <38.841541, 27.346037, 23.397766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532238, 27.171227, 23.213989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634097, 0.532422, 0.560758,
		-0.000449, 0.724939, -0.688813,
		-0.773254, -0.437026, -0.459442,
		38.300262, 27.040119, 23.076157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413078, 27.883961, 23.203217>,  <38.841541, 27.346037, 23.397766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413078, 27.883961, 23.203217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.204876, 27.543871, 23.234680>,  <38.079952, 27.339817, 23.253559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.204876, 27.543871, 23.234680>,  <38.413078, 27.883961, 23.203217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204876, 27.543871, 23.234680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670610, 0.464090, 0.578708,
		-0.528537, 0.248473, -0.811732,
		-0.520510, -0.850225, 0.078660,
		38.048721, 27.288803, 23.258278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660965, 28.048859, 23.127972>,  <38.413078, 27.883961, 23.203217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660965, 28.048859, 23.127972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.644844, 27.694227, 23.312300>,  <37.635174, 27.481449, 23.422895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.644844, 27.694227, 23.312300>,  <37.660965, 28.048859, 23.127972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644844, 27.694227, 23.312300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787339, 0.312135, 0.531667,
		-0.615202, -0.341394, -0.710617,
		-0.040300, -0.886579, 0.460819,
		37.632755, 27.428253, 23.450546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912060, 27.841413, 23.178402>,  <37.660965, 28.048859, 23.127972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912060, 27.841413, 23.178402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104931, 27.636766, 23.462868>,  <37.220654, 27.513979, 23.633547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104931, 27.636766, 23.462868>,  <36.912060, 27.841413, 23.178402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104931, 27.636766, 23.462868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652540, 0.331902, 0.681200,
		-0.584550, -0.792521, -0.173815,
		0.482176, -0.511616, 0.711165,
		37.249584, 27.483282, 23.676218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479675, 27.632114, 23.573847>,  <36.912060, 27.841413, 23.178402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479675, 27.632114, 23.573847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.793716, 27.637291, 23.821539>,  <36.982143, 27.640396, 23.970154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.793716, 27.637291, 23.821539>,  <36.479675, 27.632114, 23.573847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793716, 27.637291, 23.821539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604461, 0.234000, 0.761492,
		-0.135047, -0.972150, 0.191536,
		0.785105, 0.012939, 0.619228,
		37.029247, 27.641172, 24.007307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244270, 27.356974, 24.134222>,  <36.479675, 27.632114, 23.573847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244270, 27.356974, 24.134222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.580727, 27.520571, 24.275761>,  <36.782600, 27.618729, 24.360683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.580727, 27.520571, 24.275761>,  <36.244270, 27.356974, 24.134222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580727, 27.520571, 24.275761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420695, 0.083668, 0.903336,
		0.339854, -0.908693, 0.242438,
		0.841140, 0.408994, 0.353848,
		36.833069, 27.643269, 24.381914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325657, 27.036472, 24.853449>,  <36.244270, 27.356974, 24.134222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325657, 27.036472, 24.853449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551163, 27.366842, 24.852114>,  <36.686466, 27.565065, 24.851313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.551163, 27.366842, 24.852114>,  <36.325657, 27.036472, 24.853449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551163, 27.366842, 24.852114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386633, 0.267479, 0.882592,
		0.729849, -0.496287, 0.470127,
		0.563768, 0.825926, -0.003339,
		36.720295, 27.614620, 24.851112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585526, 27.113716, 25.629538>,  <36.325657, 27.036472, 24.853449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585526, 27.113716, 25.629538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646149, 27.479105, 25.478489>,  <36.682522, 27.698338, 25.387859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646149, 27.479105, 25.478489>,  <36.585526, 27.113716, 25.629538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646149, 27.479105, 25.478489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172670, 0.400629, 0.899823,
		0.973250, -0.071170, 0.218447,
		0.151557, 0.913472, -0.377623,
		36.691616, 27.753147, 25.365202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025284, 27.420359, 26.038403>,  <36.585526, 27.113716, 25.629538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025284, 27.420359, 26.038403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.862194, 27.730862, 25.846079>,  <36.764339, 27.917164, 25.730684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.862194, 27.730862, 25.846079>,  <37.025284, 27.420359, 26.038403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862194, 27.730862, 25.846079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027674, 0.515821, 0.856249,
		0.912684, 0.362422, -0.188832,
		-0.407727, 0.776259, -0.480811,
		36.739876, 27.963739, 25.701836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404728, 27.969299, 26.215487>,  <37.025284, 27.420359, 26.038403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404728, 27.969299, 26.215487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.070072, 28.164139, 26.115269>,  <36.869278, 28.281042, 26.055138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.070072, 28.164139, 26.115269>,  <37.404728, 27.969299, 26.215487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070072, 28.164139, 26.115269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041951, 0.513037, 0.857341,
		0.546146, 0.706774, -0.449660,
		-0.836639, 0.487097, -0.250543,
		36.819080, 28.310268, 26.040106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432178, 28.617744, 26.466909>,  <37.404728, 27.969299, 26.215487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432178, 28.617744, 26.466909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.035927, 28.601160, 26.414845>,  <36.798176, 28.591209, 26.383606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.035927, 28.601160, 26.414845>,  <37.432178, 28.617744, 26.466909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035927, 28.601160, 26.414845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134683, 0.455772, 0.879848,
		0.022844, 0.889130, -0.457084,
		-0.990625, -0.041462, -0.130163,
		36.738739, 28.588722, 26.375795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242188, 29.194307, 26.780148>,  <37.432178, 28.617744, 26.466909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242188, 29.194307, 26.780148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889023, 29.015545, 26.722546>,  <36.677124, 28.908287, 26.687984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889023, 29.015545, 26.722546>,  <37.242188, 29.194307, 26.780148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889023, 29.015545, 26.722546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352786, 0.429015, 0.831558,
		-0.309848, 0.784997, -0.536445,
		-0.882914, -0.446907, -0.144006,
		36.624149, 28.881474, 26.679344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725315, 29.743851, 26.840708>,  <37.242188, 29.194307, 26.780148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725315, 29.743851, 26.840708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556057, 29.396650, 26.944651>,  <36.454502, 29.188330, 27.007015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556057, 29.396650, 26.944651>,  <36.725315, 29.743851, 26.840708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556057, 29.396650, 26.944651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270818, 0.394847, 0.877925,
		-0.864643, 0.301115, -0.402147,
		-0.423143, -0.868001, 0.259855,
		36.429115, 29.136250, 27.022608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065388, 29.850662, 27.119322>,  <36.725315, 29.743851, 26.840708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065388, 29.850662, 27.119322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.124733, 29.481571, 27.261623>,  <36.160339, 29.260117, 27.347004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.124733, 29.481571, 27.261623>,  <36.065388, 29.850662, 27.119322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124733, 29.481571, 27.261623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291478, 0.302952, 0.907337,
		-0.945002, -0.238312, -0.224007,
		0.148366, -0.922728, 0.355753,
		36.169243, 29.204752, 27.368349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465256, 29.659031, 27.463396>,  <36.065388, 29.850662, 27.119322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465256, 29.659031, 27.463396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763138, 29.441679, 27.618391>,  <35.941868, 29.311268, 27.711388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763138, 29.441679, 27.618391>,  <35.465256, 29.659031, 27.463396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763138, 29.441679, 27.618391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293429, 0.254891, 0.921374,
		-0.599422, -0.799856, 0.030377,
		0.744709, -0.543378, 0.387489,
		35.986549, 29.278666, 27.734638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156784, 29.418774, 28.060963>,  <35.465256, 29.659031, 27.463396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156784, 29.418774, 28.060963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535812, 29.315744, 28.136618>,  <35.763229, 29.253927, 28.182011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535812, 29.315744, 28.136618>,  <35.156784, 29.418774, 28.060963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535812, 29.315744, 28.136618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138716, 0.201656, 0.969584,
		-0.287880, -0.944982, 0.155353,
		0.947567, -0.257574, 0.189137,
		35.820084, 29.238472, 28.193359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094276, 28.924627, 28.595053>,  <35.156784, 29.418774, 28.060963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094276, 28.924627, 28.595053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.461189, 29.081528, 28.622580>,  <35.681335, 29.175667, 28.639095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.461189, 29.081528, 28.622580>,  <35.094276, 28.924627, 28.595053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461189, 29.081528, 28.622580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164803, 0.216578, 0.962255,
		0.362541, -0.893999, 0.263307,
		0.917281, 0.392250, 0.068815,
		35.736374, 29.199202, 28.643225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359608, 28.643824, 29.185469>,  <35.094276, 28.924627, 28.595053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359608, 28.643824, 29.185469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.554359, 28.987267, 29.121292>,  <35.671211, 29.193333, 29.082787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.554359, 28.987267, 29.121292>,  <35.359608, 28.643824, 29.185469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554359, 28.987267, 29.121292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118428, 0.246878, 0.961783,
		0.865403, -0.449272, 0.221883,
		0.486880, 0.858607, -0.160443,
		35.700424, 29.244848, 29.073160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877037, 28.607407, 29.684111>,  <35.359608, 28.643824, 29.185469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877037, 28.607407, 29.684111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821571, 28.991705, 29.587997>,  <35.788292, 29.222284, 29.530331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821571, 28.991705, 29.587997>,  <35.877037, 28.607407, 29.684111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821571, 28.991705, 29.587997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005863, 0.243417, 0.969904,
		0.990322, 0.133085, -0.039387,
		-0.138667, 0.960748, -0.240281,
		35.779972, 29.279930, 29.515913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356483, 28.864595, 30.104891>,  <35.877037, 28.607407, 29.684111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356483, 28.864595, 30.104891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118050, 29.176950, 30.030170>,  <35.974987, 29.364363, 29.985338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118050, 29.176950, 30.030170>,  <36.356483, 28.864595, 30.104891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118050, 29.176950, 30.030170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115580, 0.146780, 0.982394,
		0.794557, 0.607183, 0.002761,
		-0.596088, 0.780887, -0.186803,
		35.939224, 29.411217, 29.974129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.789272, 31.063541, 34.344620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.447525, 31.230272, 34.220482>,  <38.242477, 31.330311, 34.146000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.447525, 31.230272, 34.220482>,  <38.789272, 31.063541, 34.344620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447525, 31.230272, 34.220482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022610, 0.566818, 0.823533,
		0.519183, 0.710614, -0.474845,
		-0.854364, 0.416827, -0.310349,
		38.191216, 31.355320, 34.127377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800926, 31.837702, 34.475788>,  <38.789272, 31.063541, 34.344620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800926, 31.837702, 34.475788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.418697, 31.731508, 34.424549>,  <38.189362, 31.667791, 34.393806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.418697, 31.731508, 34.424549>,  <38.800926, 31.837702, 34.475788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418697, 31.731508, 34.424549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252493, 0.512943, 0.820449,
		-0.152113, 0.816337, -0.557185,
		-0.955567, -0.265486, -0.128094,
		38.132027, 31.651863, 34.386120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416130, 32.522392, 34.442055>,  <38.800926, 31.837702, 34.475788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416130, 32.522392, 34.442055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.149616, 32.243355, 34.547451>,  <37.989708, 32.075932, 34.610691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.149616, 32.243355, 34.547451>,  <38.416130, 32.522392, 34.442055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149616, 32.243355, 34.547451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238460, 0.534115, 0.811084,
		-0.706546, 0.477576, -0.522219,
		-0.666280, -0.697597, 0.263494,
		37.949734, 32.034077, 34.626499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805561, 32.964870, 34.505116>,  <38.416130, 32.522392, 34.442055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805561, 32.964870, 34.505116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.705639, 32.621830, 34.684948>,  <37.645683, 32.416008, 34.792847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.705639, 32.621830, 34.684948>,  <37.805561, 32.964870, 34.505116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705639, 32.621830, 34.684948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488551, 0.512501, 0.706159,
		-0.836010, -0.043237, -0.547008,
		-0.249810, -0.857598, 0.449580,
		37.630695, 32.364552, 34.819820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033180, 32.939289, 34.587448>,  <37.805561, 32.964870, 34.505116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033180, 32.939289, 34.587448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.188263, 32.697403, 34.865730>,  <37.281311, 32.552269, 35.032700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.188263, 32.697403, 34.865730>,  <37.033180, 32.939289, 34.587448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188263, 32.697403, 34.865730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383140, 0.580732, 0.718299,
		-0.838385, -0.545039, -0.006540,
		0.387703, -0.604717, 0.695704,
		37.304573, 32.515987, 35.074440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438961, 32.880211, 35.008747>,  <37.033180, 32.939289, 34.587448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438961, 32.880211, 35.008747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.754684, 32.768555, 35.227497>,  <36.944118, 32.701561, 35.358749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.754684, 32.768555, 35.227497>,  <36.438961, 32.880211, 35.008747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754684, 32.768555, 35.227497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379776, 0.477911, 0.792068,
		-0.482456, -0.832876, 0.271209,
		0.789308, -0.279139, 0.546877,
		36.991478, 32.684814, 35.391560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199596, 32.823601, 35.716686>,  <36.438961, 32.880211, 35.008747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199596, 32.823601, 35.716686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.587894, 32.827740, 35.812637>,  <36.820873, 32.830223, 35.870209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.587894, 32.827740, 35.812637>,  <36.199596, 32.823601, 35.716686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587894, 32.827740, 35.812637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200575, 0.584100, 0.786509,
		-0.131974, -0.811616, 0.569090,
		0.970749, 0.010346, 0.239875,
		36.879120, 32.830845, 35.884602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279091, 32.664455, 36.453224>,  <36.199596, 32.823601, 35.716686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279091, 32.664455, 36.453224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.622856, 32.846634, 36.360298>,  <36.829117, 32.955940, 36.304543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.622856, 32.846634, 36.360298>,  <36.279091, 32.664455, 36.453224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622856, 32.846634, 36.360298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066013, 0.549428, 0.832929,
		0.506996, -0.700497, 0.502253,
		0.859416, 0.455447, -0.232316,
		36.880680, 32.983269, 36.290604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575855, 32.738068, 37.051552>,  <36.279091, 32.664455, 36.453224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575855, 32.738068, 37.051552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749340, 33.011097, 36.816269>,  <36.853432, 33.174915, 36.675098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749340, 33.011097, 36.816269>,  <36.575855, 32.738068, 37.051552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749340, 33.011097, 36.816269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080315, 0.679487, 0.729279,
		0.897463, -0.269058, 0.349524,
		0.433715, 0.682573, -0.588205,
		36.879456, 33.215870, 36.639809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052979, 33.015003, 37.458176>,  <36.575855, 32.738068, 37.051552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052979, 33.015003, 37.458176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.965092, 33.273693, 37.166019>,  <36.912361, 33.428909, 36.990726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.965092, 33.273693, 37.166019>,  <37.052979, 33.015003, 37.458176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965092, 33.273693, 37.166019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280179, 0.675310, 0.682243,
		0.934465, 0.354539, 0.032824,
		-0.219716, 0.646728, -0.730388,
		36.899178, 33.467712, 36.946903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426674, 33.594334, 37.612232>,  <37.052979, 33.015003, 37.458176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426674, 33.594334, 37.612232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.141014, 33.738503, 37.372204>,  <36.969616, 33.825005, 37.228188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.141014, 33.738503, 37.372204>,  <37.426674, 33.594334, 37.612232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141014, 33.738503, 37.372204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051153, 0.828087, 0.558261,
		0.698118, 0.429379, -0.572944,
		-0.714153, 0.360425, -0.600066,
		36.926769, 33.846630, 37.192184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600048, 34.300522, 37.546307>,  <37.426674, 33.594334, 37.612232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600048, 34.300522, 37.546307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.211933, 34.253696, 37.461597>,  <36.979065, 34.225601, 37.410770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.211933, 34.253696, 37.461597>,  <37.600048, 34.300522, 37.546307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211933, 34.253696, 37.461597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234301, 0.673140, 0.701417,
		0.060444, 0.730191, -0.680564,
		-0.970283, -0.117060, -0.211772,
		36.920849, 34.218578, 37.398067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674480, 34.574738, 38.184696>,  <37.600048, 34.300522, 37.546307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674480, 34.574738, 38.184696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.896858, 34.867718, 38.341888>,  <38.030285, 35.043507, 38.436203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.896858, 34.867718, 38.341888>,  <37.674480, 34.574738, 38.184696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896858, 34.867718, 38.341888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829975, -0.515010, -0.214257,
		0.045458, 0.445283, -0.894235,
		0.555945, 0.732453, 0.392985,
		38.063641, 35.087452, 38.459785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192093, 34.950859, 37.684170>,  <37.674480, 34.574738, 38.184696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192093, 34.950859, 37.684170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.324402, 34.969883, 38.061176>,  <38.403786, 34.981297, 38.287380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.324402, 34.969883, 38.061176>,  <38.192093, 34.950859, 37.684170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324402, 34.969883, 38.061176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863356, -0.418526, -0.281872,
		0.381062, 0.906959, -0.179492,
		0.330768, 0.047555, 0.942513,
		38.423634, 34.984150, 38.343929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551079, 35.026546, 37.119556>,  <38.192093, 34.950859, 37.684170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551079, 35.026546, 37.119556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.690220, 35.356129, 36.940628>,  <38.773705, 35.553879, 36.833271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.690220, 35.356129, 36.940628>,  <38.551079, 35.026546, 37.119556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690220, 35.356129, 36.940628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328581, -0.553998, -0.764932,
		-0.878084, 0.119105, -0.463447,
		0.347856, 0.823954, -0.447321,
		38.794575, 35.603313, 36.806431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250977, 35.113323, 36.370991>,  <38.551079, 35.026546, 37.119556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250977, 35.113323, 36.370991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.567661, 35.357605, 36.364819>,  <38.757671, 35.504173, 36.361115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.567661, 35.357605, 36.364819>,  <38.250977, 35.113323, 36.370991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567661, 35.357605, 36.364819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318972, -0.434786, -0.842150,
		-0.521011, 0.661818, -0.539022,
		0.791710, 0.610703, -0.015427,
		38.805176, 35.540817, 36.360191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304871, 35.364307, 35.644718>,  <38.250977, 35.113323, 36.370991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304871, 35.364307, 35.644718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.660629, 35.459820, 35.800640>,  <38.874084, 35.517128, 35.894196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.660629, 35.459820, 35.800640>,  <38.304871, 35.364307, 35.644718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660629, 35.459820, 35.800640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455158, -0.383491, -0.803595,
		-0.042396, 0.892142, -0.449761,
		0.889401, 0.238781, 0.389807,
		38.927448, 35.531456, 35.917583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664089, 35.614044, 35.148224>,  <38.304871, 35.364307, 35.644718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664089, 35.614044, 35.148224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.938599, 35.472725, 35.402534>,  <39.103306, 35.387932, 35.555119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.938599, 35.472725, 35.402534>,  <38.664089, 35.614044, 35.148224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938599, 35.472725, 35.402534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562026, -0.297264, -0.771855,
		0.461687, 0.887026, -0.005443,
		0.686274, -0.353297, 0.635775,
		39.144482, 35.366737, 35.593266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263138, 35.740936, 34.776329>,  <38.664089, 35.614044, 35.148224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263138, 35.740936, 34.776329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.374710, 35.468910, 35.047539>,  <39.441654, 35.305695, 35.210262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.374710, 35.468910, 35.047539>,  <39.263138, 35.740936, 34.776329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374710, 35.468910, 35.047539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500697, -0.499490, -0.706974,
		0.819451, 0.536681, 0.201181,
		0.278932, -0.680061, 0.678022,
		39.458389, 35.264893, 35.250946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961296, 35.736717, 34.788666>,  <39.263138, 35.740936, 34.776329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961296, 35.736717, 34.788666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.858521, 35.376507, 34.928970>,  <39.796856, 35.160381, 35.013153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.858521, 35.376507, 34.928970>,  <39.961296, 35.736717, 34.788666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858521, 35.376507, 34.928970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617011, -0.432204, -0.657645,
		0.743828, 0.047448, 0.666685,
		-0.256940, -0.900527, 0.350761,
		39.781437, 35.106350, 35.034199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526321, 35.381123, 34.847061>,  <39.961296, 35.736717, 34.788666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526321, 35.381123, 34.847061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226727, 35.118034, 34.814999>,  <40.046970, 34.960182, 34.795761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226727, 35.118034, 34.814999>,  <40.526321, 35.381123, 34.847061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226727, 35.118034, 34.814999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559440, -0.562923, -0.608395,
		0.355028, -0.500525, 0.789576,
		-0.748988, -0.657717, -0.080160,
		40.002029, 34.920719, 34.790951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852741, 34.794361, 34.907181>,  <40.526321, 35.381123, 34.847061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852741, 34.794361, 34.907181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.509243, 34.674946, 34.740601>,  <40.303143, 34.603298, 34.640652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.509243, 34.674946, 34.740601>,  <40.852741, 34.794361, 34.907181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509243, 34.674946, 34.740601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511965, -0.533441, -0.673299,
		-0.021145, -0.791401, 0.610932,
		-0.858746, -0.298539, -0.416449,
		40.251617, 34.585384, 34.615665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948769, 34.014488, 34.883625>,  <40.852741, 34.794361, 34.907181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948769, 34.014488, 34.883625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.664936, 34.121891, 34.623043>,  <40.494637, 34.186333, 34.466694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.664936, 34.121891, 34.623043>,  <40.948769, 34.014488, 34.883625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664936, 34.121891, 34.623043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437931, -0.556240, -0.706267,
		-0.551979, -0.786458, 0.277134,
		-0.709603, 0.268479, -0.651447,
		40.452061, 34.202442, 34.427605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978886, 33.455074, 34.453239>,  <40.948769, 34.014488, 34.883625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978886, 33.455074, 34.453239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.776325, 33.736248, 34.253468>,  <40.654789, 33.904953, 34.133602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.776325, 33.736248, 34.253468>,  <40.978886, 33.455074, 34.453239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776325, 33.736248, 34.253468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336036, -0.372525, -0.865046,
		-0.794125, -0.605891, -0.047564,
		-0.506405, 0.702938, -0.499433,
		40.624405, 33.947128, 34.103638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699112, 33.110378, 33.881149>,  <40.978886, 33.455074, 34.453239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699112, 33.110378, 33.881149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.692905, 33.495331, 33.772652>,  <40.689182, 33.726303, 33.707554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.692905, 33.495331, 33.772652>,  <40.699112, 33.110378, 33.881149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692905, 33.495331, 33.772652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388394, -0.244170, -0.888556,
		-0.921363, -0.119140, -0.369996,
		-0.015521, 0.962386, -0.271242,
		40.688248, 33.784046, 33.691280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499413, 33.033409, 33.290516>,  <40.699112, 33.110378, 33.881149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499413, 33.033409, 33.290516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.674690, 33.392960, 33.291687>,  <40.779858, 33.608688, 33.292389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.674690, 33.392960, 33.291687>,  <40.499413, 33.033409, 33.290516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674690, 33.392960, 33.291687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293838, -0.140162, -0.945523,
		-0.849495, 0.415188, -0.325542,
		0.438198, 0.898874, 0.002931,
		40.806149, 33.662621, 33.292568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214802, 33.407318, 32.775436>,  <40.499413, 33.033409, 33.290516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214802, 33.407318, 32.775436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.544628, 33.621380, 32.848862>,  <40.742523, 33.749817, 32.892918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.544628, 33.621380, 32.848862>,  <40.214802, 33.407318, 32.775436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544628, 33.621380, 32.848862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266603, -0.081367, -0.960366,
		-0.499006, 0.840828, -0.209766,
		0.824570, 0.535153, 0.183564,
		40.792000, 33.781925, 32.903931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132378, 33.937828, 32.303204>,  <40.214802, 33.407318, 32.775436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132378, 33.937828, 32.303204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.518604, 33.931858, 32.407101>,  <40.750340, 33.928276, 32.469437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.518604, 33.931858, 32.407101>,  <40.132378, 33.937828, 32.303204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518604, 33.931858, 32.407101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255130, -0.141237, -0.956536,
		0.050957, 0.989863, -0.132567,
		0.965563, -0.014920, 0.259741,
		40.808273, 33.927383, 32.485023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792553, 34.653759, 32.308201>,  <40.132378, 33.937828, 32.303204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792553, 34.653759, 32.308201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544777, 34.896263, 32.108707>,  <39.396111, 35.041767, 31.989012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544777, 34.896263, 32.108707>,  <39.792553, 34.653759, 32.308201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544777, 34.896263, 32.108707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601095, 0.042344, 0.798055,
		0.504950, 0.794136, 0.338193,
		-0.619443, 0.606264, -0.498732,
		39.358944, 35.078144, 31.959087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649719, 35.232399, 32.705425>,  <39.792553, 34.653759, 32.308201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649719, 35.232399, 32.705425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.345882, 35.258305, 32.446560>,  <39.163582, 35.273849, 32.291241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.345882, 35.258305, 32.446560>,  <39.649719, 35.232399, 32.705425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345882, 35.258305, 32.446560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600674, 0.311720, 0.736221,
		0.249417, 0.947964, -0.197876,
		-0.759593, 0.064767, -0.647166,
		39.118004, 35.277733, 32.252411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316521, 35.856720, 32.856247>,  <39.649719, 35.232399, 32.705425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316521, 35.856720, 32.856247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046551, 35.631786, 32.665142>,  <38.884567, 35.496826, 32.550480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046551, 35.631786, 32.665142>,  <39.316521, 35.856720, 32.856247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046551, 35.631786, 32.665142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715419, 0.340128, 0.610319,
		-0.180700, 0.753722, -0.631863,
		-0.674925, -0.562331, -0.477766,
		38.844074, 35.463085, 32.521812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832642, 36.336525, 32.753780>,  <39.316521, 35.856720, 32.856247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832642, 36.336525, 32.753780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.629452, 35.992569, 32.733532>,  <38.507538, 35.786198, 32.721382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.629452, 35.992569, 32.733532>,  <38.832642, 36.336525, 32.753780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629452, 35.992569, 32.733532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729064, 0.397905, 0.556899,
		-0.458727, 0.319795, -0.829036,
		-0.507971, -0.859885, -0.050621,
		38.477062, 35.734604, 32.718346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106941, 36.490173, 32.646263>,  <38.832642, 36.336525, 32.753780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106941, 36.490173, 32.646263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.059685, 36.107731, 32.753517>,  <38.031330, 35.878265, 32.817871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.059685, 36.107731, 32.753517>,  <38.106941, 36.490173, 32.646263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059685, 36.107731, 32.753517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758077, 0.261252, 0.597550,
		-0.641374, -0.132671, -0.755670,
		-0.118143, -0.956110, 0.268135,
		38.024242, 35.820896, 32.833958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410900, 36.378696, 32.533329>,  <38.106941, 36.490173, 32.646263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410900, 36.378696, 32.533329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.542961, 36.099411, 32.787415>,  <37.622200, 35.931839, 32.939865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.542961, 36.099411, 32.787415>,  <37.410900, 36.378696, 32.533329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542961, 36.099411, 32.787415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784836, 0.170827, 0.595693,
		-0.524431, -0.695211, -0.491582,
		0.330157, -0.698212, 0.635214,
		37.642010, 35.889946, 32.977978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798073, 36.013668, 32.732193>,  <37.410900, 36.378696, 32.533329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798073, 36.013668, 32.732193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.068268, 35.926445, 33.013947>,  <37.230385, 35.874111, 33.182999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.068268, 35.926445, 33.013947>,  <36.798073, 36.013668, 32.732193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068268, 35.926445, 33.013947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630257, 0.325100, 0.705043,
		-0.382738, -0.920195, 0.082168,
		0.675491, -0.218060, 0.704388,
		37.270916, 35.861027, 33.225262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378254, 35.616089, 33.394260>,  <36.798073, 36.013668, 32.732193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378254, 35.616089, 33.394260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.730686, 35.727634, 33.547066>,  <36.942146, 35.794563, 33.638748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.730686, 35.727634, 33.547066>,  <36.378254, 35.616089, 33.394260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730686, 35.727634, 33.547066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454580, 0.276274, 0.846776,
		0.130594, -0.919733, 0.370185,
		0.881080, 0.278862, 0.382012,
		36.995010, 35.811295, 33.661671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475937, 35.293438, 34.062473>,  <36.378254, 35.616089, 33.394260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475937, 35.293438, 34.062473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687313, 35.632957, 34.055660>,  <36.814140, 35.836670, 34.051571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687313, 35.632957, 34.055660>,  <36.475937, 35.293438, 34.062473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687313, 35.632957, 34.055660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317122, 0.215967, 0.923467,
		0.787516, -0.482598, 0.383299,
		0.528443, 0.848798, -0.017035,
		36.845844, 35.887596, 34.050549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041508, 35.324078, 34.648449>,  <36.475937, 35.293438, 34.062473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041508, 35.324078, 34.648449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.970856, 35.697231, 34.522892>,  <36.928463, 35.921124, 34.447556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.970856, 35.697231, 34.522892>,  <37.041508, 35.324078, 34.648449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970856, 35.697231, 34.522892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261042, 0.263091, 0.928784,
		0.949030, 0.245996, 0.197051,
		-0.176635, 0.932882, -0.313897,
		36.917866, 35.977097, 34.428722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079575, 35.674446, 35.218853>,  <37.041508, 35.324078, 34.648449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079575, 35.674446, 35.218853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.898769, 35.952572, 34.995346>,  <36.790287, 36.119446, 34.861240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.898769, 35.952572, 34.995346>,  <37.079575, 35.674446, 35.218853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898769, 35.952572, 34.995346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335653, 0.447792, 0.828746,
		0.826449, 0.562159, 0.030974,
		-0.452017, 0.695313, -0.558767,
		36.763165, 36.161167, 34.827717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196522, 36.368912, 35.464100>,  <37.079575, 35.674446, 35.218853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196522, 36.368912, 35.464100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.858047, 36.418465, 35.256783>,  <36.654964, 36.448196, 35.132393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.858047, 36.418465, 35.256783>,  <37.196522, 36.368912, 35.464100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858047, 36.418465, 35.256783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421494, 0.439531, 0.793193,
		0.326068, 0.889644, -0.319708,
		-0.846182, 0.123880, -0.518296,
		36.604195, 36.455627, 35.101295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.137024, 34.576660, 28.350906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742306, 34.525928, 28.310598>,  <40.505474, 34.495487, 28.286413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742306, 34.525928, 28.310598>,  <41.137024, 34.576660, 28.350906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742306, 34.525928, 28.310598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152606, 0.519220, 0.840906,
		-0.054332, 0.845177, -0.531717,
		-0.986792, -0.126831, -0.100769,
		40.446266, 34.487881, 28.280367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859840, 35.255898, 28.586029>,  <41.137024, 34.576660, 28.350906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859840, 35.255898, 28.586029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569309, 34.982910, 28.618727>,  <40.394989, 34.819118, 28.638346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569309, 34.982910, 28.618727>,  <40.859840, 35.255898, 28.586029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569309, 34.982910, 28.618727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283352, 0.405644, 0.869002,
		-0.626227, 0.608018, -0.488010,
		-0.726327, -0.682471, 0.081742,
		40.351410, 34.778168, 28.643250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221184, 35.614346, 28.768604>,  <40.859840, 35.255898, 28.586029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221184, 35.614346, 28.768604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131340, 35.248306, 28.902561>,  <40.077435, 35.028683, 28.982935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131340, 35.248306, 28.902561>,  <40.221184, 35.614346, 28.768604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131340, 35.248306, 28.902561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240872, 0.385148, 0.890866,
		-0.944209, 0.119431, -0.306929,
		-0.224610, -0.915094, 0.334893,
		40.063957, 34.973778, 29.003029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818253, 35.708797, 29.238735>,  <40.221184, 35.614346, 28.768604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818253, 35.708797, 29.238735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865471, 35.322380, 29.330666>,  <39.893803, 35.090530, 29.385824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865471, 35.322380, 29.330666>,  <39.818253, 35.708797, 29.238735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865471, 35.322380, 29.330666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418631, 0.161458, 0.893689,
		-0.900451, -0.201713, -0.385357,
		0.118050, -0.966045, 0.229828,
		39.900887, 35.032566, 29.399614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081501, 35.408092, 29.476578>,  <39.818253, 35.708797, 29.238735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081501, 35.408092, 29.476578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406513, 35.228428, 29.625196>,  <39.601521, 35.120628, 29.714367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406513, 35.228428, 29.625196>,  <39.081501, 35.408092, 29.476578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406513, 35.228428, 29.625196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343494, 0.146037, 0.927731,
		-0.470965, -0.881432, -0.035626,
		0.812529, -0.449166, 0.371545,
		39.650272, 35.093678, 29.736660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870289, 34.773602, 29.973953>,  <39.081501, 35.408092, 29.476578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870289, 34.773602, 29.973953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251583, 34.849659, 30.067924>,  <39.480358, 34.895294, 30.124308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251583, 34.849659, 30.067924>,  <38.870289, 34.773602, 29.973953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251583, 34.849659, 30.067924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219860, -0.097104, 0.970687,
		0.207383, -0.976942, -0.050757,
		0.953234, 0.190144, 0.234928,
		39.537552, 34.906700, 30.138403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952587, 34.321568, 30.516645>,  <38.870289, 34.773602, 29.973953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952587, 34.321568, 30.516645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253277, 34.584232, 30.540966>,  <39.433693, 34.741833, 30.555559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253277, 34.584232, 30.540966>,  <38.952587, 34.321568, 30.516645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253277, 34.584232, 30.540966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011664, -0.078946, 0.996811,
		0.659371, -0.750039, -0.051686,
		0.751727, 0.656666, 0.060803,
		39.478794, 34.781231, 30.559208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518753, 34.138111, 30.925385>,  <38.952587, 34.321568, 30.516645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518753, 34.138111, 30.925385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537922, 34.536705, 30.952877>,  <39.549423, 34.775860, 30.969372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537922, 34.536705, 30.952877>,  <39.518753, 34.138111, 30.925385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537922, 34.536705, 30.952877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180694, -0.059023, 0.981767,
		0.982371, -0.059472, 0.177230,
		0.047927, 0.996484, 0.068729,
		39.552299, 34.835651, 30.973495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864071, 34.282032, 31.582712>,  <39.518753, 34.138111, 30.925385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864071, 34.282032, 31.582712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701397, 34.641392, 31.516401>,  <39.603790, 34.857006, 31.476616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701397, 34.641392, 31.516401>,  <39.864071, 34.282032, 31.582712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701397, 34.641392, 31.516401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207159, 0.086045, 0.974516,
		0.889769, 0.430667, 0.151118,
		-0.406689, 0.898400, -0.165776,
		39.579391, 34.910912, 31.466669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569149, 34.163067, 31.587433>,  <39.864071, 34.282032, 31.582712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569149, 34.163067, 31.587433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827145, 33.984901, 31.835817>,  <40.981941, 33.878002, 31.984848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827145, 33.984901, 31.835817>,  <40.569149, 34.163067, 31.587433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827145, 33.984901, 31.835817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496533, -0.373410, -0.783594,
		0.580895, 0.813740, -0.019685,
		0.644992, -0.445412, 0.620961,
		41.020641, 33.851276, 32.022106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224506, 34.304928, 31.362049>,  <40.569149, 34.163067, 31.587433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224506, 34.304928, 31.362049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240204, 33.963154, 31.569281>,  <41.249622, 33.758091, 31.693619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240204, 33.963154, 31.569281>,  <41.224506, 34.304928, 31.362049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240204, 33.963154, 31.569281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452564, -0.447054, -0.771576,
		0.890868, 0.264739, 0.369143,
		0.039239, -0.854433, 0.518078,
		41.251976, 33.706825, 31.724705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808807, 33.858768, 31.098505>,  <41.224506, 34.304928, 31.362049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808807, 33.858768, 31.098505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623119, 33.582844, 31.320734>,  <41.511707, 33.417290, 31.454071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623119, 33.582844, 31.320734>,  <41.808807, 33.858768, 31.098505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623119, 33.582844, 31.320734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100218, -0.664134, -0.740866,
		0.880034, -0.288244, 0.377434,
		-0.464216, -0.689813, 0.555573,
		41.483856, 33.375900, 31.487406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292240, 33.232475, 31.049107>,  <41.808807, 33.858768, 31.098505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292240, 33.232475, 31.049107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931488, 33.113873, 31.174770>,  <41.715038, 33.042709, 31.250170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931488, 33.113873, 31.174770>,  <42.292240, 33.232475, 31.049107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931488, 33.113873, 31.174770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004433, -0.733556, -0.679614,
		0.431966, -0.611537, 0.662893,
		-0.901879, -0.296509, 0.314161,
		41.660923, 33.024921, 31.269018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400032, 32.511219, 31.072193>,  <42.292240, 33.232475, 31.049107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400032, 32.511219, 31.072193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002693, 32.556763, 31.065363>,  <41.764290, 32.584087, 31.061264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002693, 32.556763, 31.065363>,  <42.400032, 32.511219, 31.072193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002693, 32.556763, 31.065363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074103, -0.745810, -0.662024,
		-0.088111, -0.656357, 0.749288,
		-0.993351, 0.113857, -0.017076,
		41.704689, 32.590919, 31.060240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036564, 31.832092, 31.080423>,  <42.400032, 32.511219, 31.072193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036564, 31.832092, 31.080423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811306, 32.111565, 30.903917>,  <41.676151, 32.279247, 30.798014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811306, 32.111565, 30.903917>,  <42.036564, 31.832092, 31.080423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811306, 32.111565, 30.903917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192512, -0.630217, -0.752174,
		-0.803621, -0.338634, 0.489408,
		-0.563145, 0.698680, -0.441265,
		41.642361, 32.321167, 30.771538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472874, 31.487648, 30.761503>,  <42.036564, 31.832092, 31.080423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472874, 31.487648, 30.761503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494926, 31.840525, 30.574440>,  <41.508156, 32.052250, 30.462202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494926, 31.840525, 30.574440>,  <41.472874, 31.487648, 30.761503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494926, 31.840525, 30.574440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099999, -0.461136, -0.881677,
		-0.993459, 0.095370, 0.062797,
		0.055128, 0.882190, -0.467656,
		41.511463, 32.105183, 30.434143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937939, 31.450153, 30.278629>,  <41.472874, 31.487648, 30.761503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937939, 31.450153, 30.278629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193752, 31.720430, 30.131968>,  <41.347240, 31.882597, 30.043970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193752, 31.720430, 30.131968>,  <40.937939, 31.450153, 30.278629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193752, 31.720430, 30.131968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067268, -0.425924, -0.902255,
		-0.765814, 0.601687, -0.226940,
		0.639534, 0.675694, -0.366653,
		41.385612, 31.923138, 30.021971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624805, 31.670408, 29.659159>,  <40.937939, 31.450153, 30.278629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624805, 31.670408, 29.659159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013237, 31.764036, 29.640308>,  <41.246296, 31.820213, 29.628998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013237, 31.764036, 29.640308>,  <40.624805, 31.670408, 29.659159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013237, 31.764036, 29.640308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074283, -0.483747, -0.872050,
		-0.226919, 0.843327, -0.487142,
		0.971077, 0.234071, -0.047127,
		41.304562, 31.834257, 29.626171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746883, 31.748459, 28.938614>,  <40.624805, 31.670408, 29.659159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746883, 31.748459, 28.938614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131649, 31.744514, 29.047886>,  <41.362507, 31.742147, 29.113449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131649, 31.744514, 29.047886>,  <40.746883, 31.748459, 28.938614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131649, 31.744514, 29.047886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253978, -0.337317, -0.906484,
		0.101086, 0.941340, -0.321965,
		0.961913, -0.009861, 0.273178,
		41.420223, 31.741556, 29.129839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048458, 32.058544, 28.386768>,  <40.746883, 31.748459, 28.938614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048458, 32.058544, 28.386768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303406, 31.820686, 28.582790>,  <41.456375, 31.677971, 28.700403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303406, 31.820686, 28.582790>,  <41.048458, 32.058544, 28.386768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303406, 31.820686, 28.582790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143177, -0.533507, -0.833589,
		0.757141, 0.601468, -0.254900,
		0.637368, -0.594649, 0.490056,
		41.494617, 31.642292, 28.729807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599800, 31.920460, 27.856787>,  <41.048458, 32.058544, 28.386768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599800, 31.920460, 27.856787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656521, 31.650747, 28.146679>,  <41.690552, 31.488920, 28.320614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656521, 31.650747, 28.146679>,  <41.599800, 31.920460, 27.856787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656521, 31.650747, 28.146679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190715, -0.699805, -0.688405,
		0.971350, 0.235833, 0.029363,
		0.141800, -0.674282, 0.724732,
		41.699062, 31.448463, 28.364100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191154, 31.607195, 27.699802>,  <41.599800, 31.920460, 27.856787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191154, 31.607195, 27.699802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984341, 31.365364, 27.942177>,  <41.860252, 31.220264, 28.087603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984341, 31.365364, 27.942177>,  <42.191154, 31.607195, 27.699802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984341, 31.365364, 27.942177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188837, -0.771024, -0.608163,
		0.834875, -0.200017, 0.512812,
		-0.517033, -0.604579, 0.605938,
		41.829231, 31.183990, 28.123959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592796, 31.120403, 27.802711>,  <42.191154, 31.607195, 27.699802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592796, 31.120403, 27.802711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231068, 30.974380, 27.891193>,  <42.014030, 30.886766, 27.944283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231068, 30.974380, 27.891193>,  <42.592796, 31.120403, 27.802711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231068, 30.974380, 27.891193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212563, -0.834551, -0.508273,
		0.370157, -0.412623, 0.832302,
		-0.904324, -0.365057, 0.221207,
		41.959770, 30.864862, 27.957556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.954498, 30.250639, 27.181013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.288483, 30.447535, 27.279434>,  <33.488873, 30.565672, 27.338486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.288483, 30.447535, 27.279434>,  <32.954498, 30.250639, 27.181013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288483, 30.447535, 27.279434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408200, 0.254126, 0.876808,
		0.369073, -0.832537, 0.413118,
		0.834960, 0.492241, 0.246050,
		33.538971, 30.595207, 27.353249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022453, 30.143112, 27.826221>,  <32.954498, 30.250639, 27.181013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022453, 30.143112, 27.826221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.253841, 30.468584, 27.803238>,  <33.392673, 30.663868, 27.789448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.253841, 30.468584, 27.803238>,  <33.022453, 30.143112, 27.826221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253841, 30.468584, 27.803238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332339, 0.299423, 0.894370,
		0.744935, -0.498267, 0.443623,
		0.578466, 0.813681, -0.057457,
		33.427380, 30.712688, 27.786001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375305, 30.222544, 28.503368>,  <33.022453, 30.143112, 27.826221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375305, 30.222544, 28.503368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.431412, 30.582291, 28.337734>,  <33.465076, 30.798138, 28.238354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.431412, 30.582291, 28.337734>,  <33.375305, 30.222544, 28.503368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431412, 30.582291, 28.337734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107959, 0.429620, 0.896533,
		0.984211, -0.081046, 0.157354,
		0.140263, 0.899365, -0.414087,
		33.473492, 30.852100, 28.213509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983376, 30.534739, 28.933580>,  <33.375305, 30.222544, 28.503368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983376, 30.534739, 28.933580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.775673, 30.827356, 28.756847>,  <33.651051, 31.002926, 28.650808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.775673, 30.827356, 28.756847>,  <33.983376, 30.534739, 28.933580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775673, 30.827356, 28.756847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208580, 0.609841, 0.764584,
		0.828774, 0.304858, -0.469250,
		-0.519258, 0.731543, -0.441833,
		33.619896, 31.046820, 28.624298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276920, 31.119036, 29.198500>,  <33.983376, 30.534739, 28.933580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276920, 31.119036, 29.198500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.951248, 31.292225, 29.043760>,  <33.755844, 31.396139, 28.950916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.951248, 31.292225, 29.043760>,  <34.276920, 31.119036, 29.198500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951248, 31.292225, 29.043760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054206, 0.720040, 0.691812,
		0.578081, 0.542287, -0.609710,
		-0.814176, 0.432974, -0.386847,
		33.706997, 31.422117, 28.927706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330349, 31.813894, 29.202513>,  <34.276920, 31.119036, 29.198500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330349, 31.813894, 29.202513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.934643, 31.757980, 29.185471>,  <33.697220, 31.724432, 29.175245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.934643, 31.757980, 29.185471>,  <34.330349, 31.813894, 29.202513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934643, 31.757980, 29.185471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126594, 0.674127, 0.727686,
		-0.072996, 0.725268, -0.684586,
		-0.989265, -0.139783, -0.042606,
		33.637863, 31.716045, 29.172689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033710, 32.443710, 29.333994>,  <34.330349, 31.813894, 29.202513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033710, 32.443710, 29.333994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.751728, 32.176846, 29.430269>,  <33.582539, 32.016727, 29.488035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.751728, 32.176846, 29.430269>,  <34.033710, 32.443710, 29.333994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751728, 32.176846, 29.430269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132318, 0.457114, 0.879510,
		-0.696794, 0.588173, -0.410524,
		-0.704960, -0.667158, 0.240688,
		33.540241, 31.976698, 29.502476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567451, 32.831894, 29.524879>,  <34.033710, 32.443710, 29.333994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567451, 32.831894, 29.524879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.449566, 32.480644, 29.675632>,  <33.378834, 32.269894, 29.766085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.449566, 32.480644, 29.675632>,  <33.567451, 32.831894, 29.524879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449566, 32.480644, 29.675632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247672, 0.451116, 0.857411,
		-0.922930, 0.159352, -0.350439,
		-0.294719, -0.878124, 0.376881,
		33.361149, 32.217209, 29.788696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809879, 32.960976, 29.712975>,  <33.567451, 32.831894, 29.524879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809879, 32.960976, 29.712975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.967003, 32.649464, 29.908607>,  <33.061279, 32.462555, 30.025988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.967003, 32.649464, 29.908607>,  <32.809879, 32.960976, 29.712975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967003, 32.649464, 29.908607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359427, 0.359515, 0.861140,
		-0.846470, -0.514055, -0.138692,
		0.392811, -0.778779, 0.489084,
		33.084846, 32.415829, 30.055332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382557, 32.816883, 30.191547>,  <32.809879, 32.960976, 29.712975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382557, 32.816883, 30.191547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.715008, 32.634239, 30.318506>,  <32.914478, 32.524654, 30.394682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.715008, 32.634239, 30.318506>,  <32.382557, 32.816883, 30.191547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715008, 32.634239, 30.318506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214032, 0.264131, 0.940439,
		-0.513248, -0.849554, 0.121796,
		0.831123, -0.456610, 0.317397,
		32.964344, 32.497257, 30.413725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209198, 32.518162, 30.765638>,  <32.382557, 32.816883, 30.191547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209198, 32.518162, 30.765638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.606609, 32.500542, 30.807501>,  <32.845058, 32.489971, 30.832619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.606609, 32.500542, 30.807501>,  <32.209198, 32.518162, 30.765638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606609, 32.500542, 30.807501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086337, 0.305565, 0.948249,
		-0.073751, -0.951152, 0.299786,
		0.993532, -0.044051, 0.104656,
		32.904671, 32.487328, 30.838898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321823, 32.292702, 31.480677>,  <32.209198, 32.518162, 30.765638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321823, 32.292702, 31.480677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.689899, 32.421757, 31.391996>,  <32.910744, 32.499191, 31.338787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.689899, 32.421757, 31.391996>,  <32.321823, 32.292702, 31.480677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689899, 32.421757, 31.391996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130964, 0.279982, 0.951030,
		0.368914, -0.904164, 0.215383,
		0.920191, 0.322641, -0.221702,
		32.965958, 32.518547, 31.325485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915421, 32.052444, 31.985834>,  <32.321823, 32.292702, 31.480677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915421, 32.052444, 31.985834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.053051, 32.393013, 31.827497>,  <33.135628, 32.597355, 31.732496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.053051, 32.393013, 31.827497>,  <32.915421, 32.052444, 31.985834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053051, 32.393013, 31.827497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163670, 0.360741, 0.918193,
		0.924567, -0.380714, -0.015231,
		0.344074, 0.851424, -0.395841,
		33.156273, 32.648441, 31.708746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446705, 32.233521, 32.462231>,  <32.915421, 32.052444, 31.985834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446705, 32.233521, 32.462231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.372437, 32.567627, 32.255211>,  <33.327873, 32.768089, 32.131001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.372437, 32.567627, 32.255211>,  <33.446705, 32.233521, 32.462231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372437, 32.567627, 32.255211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033093, 0.521094, 0.852858,
		0.982054, 0.175480, -0.069111,
		-0.185673, 0.835265, -0.517550,
		33.316734, 32.818207, 32.099945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198036, 32.158234, 32.586975>,  <33.446705, 32.233521, 32.462231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198036, 32.158234, 32.586975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.413979, 31.970129, 32.866230>,  <34.543545, 31.857265, 33.033783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.413979, 31.970129, 32.866230>,  <34.198036, 32.158234, 32.586975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413979, 31.970129, 32.866230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328767, -0.645713, -0.689179,
		0.774895, 0.601587, -0.193987,
		0.539860, -0.470265, 0.698142,
		34.575935, 31.829050, 33.075672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853851, 31.997791, 32.202644>,  <34.198036, 32.158234, 32.586975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853851, 31.997791, 32.202644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.873547, 31.760466, 32.524029>,  <34.885365, 31.618071, 32.716862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.873547, 31.760466, 32.524029>,  <34.853851, 31.997791, 32.202644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873547, 31.760466, 32.524029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193337, -0.783561, -0.590468,
		0.979896, 0.184414, 0.076127,
		0.049241, -0.593315, 0.803463,
		34.888317, 31.582472, 32.765068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526993, 31.706438, 32.326389>,  <34.853851, 31.997791, 32.202644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526993, 31.706438, 32.326389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.246799, 31.459690, 32.469936>,  <35.078682, 31.311642, 32.556065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.246799, 31.459690, 32.469936>,  <35.526993, 31.706438, 32.326389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246799, 31.459690, 32.469936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202133, -0.653754, -0.729210,
		0.684441, -0.438263, 0.582637,
		-0.700487, -0.616872, 0.358869,
		35.036652, 31.274628, 32.577599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924507, 31.076639, 32.345360>,  <35.526993, 31.706438, 32.326389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924507, 31.076639, 32.345360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.546497, 30.948004, 32.369064>,  <35.319691, 30.870823, 32.383289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.546497, 30.948004, 32.369064>,  <35.924507, 31.076639, 32.345360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546497, 30.948004, 32.369064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207119, -0.728896, -0.652543,
		0.253047, -0.604394, 0.755430,
		-0.945023, -0.321588, 0.059264,
		35.262989, 30.851528, 32.386845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972717, 30.338465, 32.477802>,  <35.924507, 31.076639, 32.345360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972717, 30.338465, 32.477802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.613361, 30.417622, 32.320969>,  <35.397747, 30.465117, 32.226868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.613361, 30.417622, 32.320969>,  <35.972717, 30.338465, 32.477802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613361, 30.417622, 32.320969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191892, -0.626155, -0.755717,
		-0.395057, -0.754167, 0.524558,
		-0.898392, 0.197893, -0.392086,
		35.343845, 30.476990, 32.203342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697586, 29.594110, 32.252499>,  <35.972717, 30.338465, 32.477802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697586, 29.594110, 32.252499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.509899, 29.881599, 32.047256>,  <35.397289, 30.054092, 31.924112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.509899, 29.881599, 32.047256>,  <35.697586, 29.594110, 32.252499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509899, 29.881599, 32.047256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050735, -0.558137, -0.828196,
		-0.881625, -0.414634, 0.225422,
		-0.469215, 0.718722, -0.513104,
		35.369133, 30.097216, 31.893326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409260, 29.196203, 31.787043>,  <35.697586, 29.594110, 32.252499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409260, 29.196203, 31.787043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.356346, 29.560369, 31.630251>,  <35.324596, 29.778870, 31.536177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.356346, 29.560369, 31.630251>,  <35.409260, 29.196203, 31.787043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356346, 29.560369, 31.630251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127077, -0.376612, -0.917613,
		-0.983032, -0.171200, -0.065872,
		-0.132287, 0.910414, -0.391978,
		35.316662, 29.833494, 31.512657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926960, 29.137711, 31.185219>,  <35.409260, 29.196203, 31.787043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926960, 29.137711, 31.185219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.123920, 29.480192, 31.122669>,  <35.242096, 29.685680, 31.085140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.123920, 29.480192, 31.122669>,  <34.926960, 29.137711, 31.185219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123920, 29.480192, 31.122669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036624, -0.199886, -0.979134,
		-0.869595, 0.476404, -0.129783,
		0.492405, 0.856204, -0.156372,
		35.271641, 29.737053, 31.075758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603752, 29.494741, 30.503059>,  <34.926960, 29.137711, 31.185219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603752, 29.494741, 30.503059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.966530, 29.654768, 30.555819>,  <35.184196, 29.750784, 30.587475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.966530, 29.654768, 30.555819>,  <34.603752, 29.494741, 30.503059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966530, 29.654768, 30.555819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226575, -0.199322, -0.953381,
		-0.355125, 0.894549, -0.271419,
		0.906945, 0.400066, 0.131898,
		35.238613, 29.774788, 30.595388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750622, 29.984573, 29.949694>,  <34.603752, 29.494741, 30.503059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750622, 29.984573, 29.949694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.119759, 29.906349, 30.082428>,  <35.341240, 29.859415, 30.162069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.119759, 29.906349, 30.082428>,  <34.750622, 29.984573, 29.949694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119759, 29.906349, 30.082428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326511, -0.059843, -0.943297,
		0.204330, 0.978864, 0.008627,
		0.922843, -0.195561, 0.331838,
		35.396610, 29.847681, 30.181980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175591, 30.447981, 29.634708>,  <34.750622, 29.984573, 29.949694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175591, 30.447981, 29.634708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.391968, 30.124365, 29.726648>,  <35.521793, 29.930195, 29.781813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.391968, 30.124365, 29.726648>,  <35.175591, 30.447981, 29.634708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391968, 30.124365, 29.726648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403339, 0.009730, -0.914999,
		0.738036, 0.587670, 0.331581,
		0.540944, -0.809042, 0.229849,
		35.554253, 29.881653, 29.795603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809589, 30.524809, 29.275707>,  <35.175591, 30.447981, 29.634708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809589, 30.524809, 29.275707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.799835, 30.130938, 29.344778>,  <35.793983, 29.894615, 29.386221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.799835, 30.130938, 29.344778>,  <35.809589, 30.524809, 29.275707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799835, 30.130938, 29.344778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246754, -0.173312, -0.953454,
		0.968771, 0.019359, 0.247199,
		-0.024385, -0.984677, 0.172676,
		35.792519, 29.835535, 29.396582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394302, 30.331081, 28.961668>,  <35.809589, 30.524809, 29.275707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394302, 30.331081, 28.961668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.195835, 29.985008, 28.990740>,  <36.076756, 29.777365, 29.008183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.195835, 29.985008, 28.990740>,  <36.394302, 30.331081, 28.961668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195835, 29.985008, 28.990740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245112, -0.219889, -0.944229,
		0.832911, -0.450679, 0.321168,
		-0.496165, -0.865181, 0.072681,
		36.046986, 29.725454, 29.012545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868603, 29.804417, 28.813150>,  <36.394302, 30.331081, 28.961668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868603, 29.804417, 28.813150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518761, 29.626663, 28.735590>,  <36.308857, 29.520012, 28.689054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518761, 29.626663, 28.735590>,  <36.868603, 29.804417, 28.813150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518761, 29.626663, 28.735590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330192, -0.253073, -0.909355,
		0.355031, -0.859347, 0.368069,
		-0.874600, -0.444383, -0.193901,
		36.256382, 29.493349, 28.677420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487598, 29.365307, 29.114950>,  <36.868603, 29.804417, 28.813150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487598, 29.365307, 29.114950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.884930, 29.389713, 29.154081>,  <38.123329, 29.404356, 29.177561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.884930, 29.389713, 29.154081>,  <37.487598, 29.365307, 29.114950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884930, 29.389713, 29.154081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114670, 0.434517, 0.893334,
		0.011998, -0.898595, 0.438615,
		0.993331, 0.061014, 0.097828,
		38.182930, 29.408018, 29.183430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715168, 29.076992, 29.883030>,  <37.487598, 29.365307, 29.114950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715168, 29.076992, 29.883030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.013760, 29.306072, 29.747511>,  <38.192913, 29.443520, 29.666199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.013760, 29.306072, 29.747511>,  <37.715168, 29.076992, 29.883030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013760, 29.306072, 29.747511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008141, 0.501262, 0.865257,
		0.665361, -0.648654, 0.369518,
		0.746477, 0.572700, -0.338801,
		38.237705, 29.477882, 29.645870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266582, 29.096672, 30.439846>,  <37.715168, 29.076992, 29.883030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266582, 29.096672, 30.439846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.320553, 29.407337, 30.193727>,  <38.352936, 29.593737, 30.046057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.320553, 29.407337, 30.193727>,  <38.266582, 29.096672, 30.439846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320553, 29.407337, 30.193727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055766, 0.625945, 0.777871,
		0.989285, -0.070642, 0.127767,
		0.134926, 0.776661, -0.615298,
		38.361031, 29.640335, 30.009138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811352, 29.485275, 30.715899>,  <38.266582, 29.096672, 30.439846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811352, 29.485275, 30.715899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.586700, 29.734049, 30.497622>,  <38.451912, 29.883312, 30.366655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.586700, 29.734049, 30.497622>,  <38.811352, 29.485275, 30.715899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586700, 29.734049, 30.497622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014304, 0.666731, 0.745161,
		0.827268, 0.410696, -0.383349,
		-0.561625, 0.621932, -0.545691,
		38.418213, 29.920628, 30.333914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249245, 30.115347, 30.728161>,  <38.811352, 29.485275, 30.715899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249245, 30.115347, 30.728161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.874573, 30.223864, 30.639591>,  <38.649769, 30.288973, 30.586449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.874573, 30.223864, 30.639591>,  <39.249245, 30.115347, 30.728161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874573, 30.223864, 30.639591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048766, 0.525092, 0.849647,
		0.346771, 0.806647, -0.478614,
		-0.936682, 0.271292, -0.221424,
		38.593567, 30.305252, 30.573164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107861, 30.900816, 30.804367>,  <39.249245, 30.115347, 30.728161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107861, 30.900816, 30.804367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.740124, 30.743624, 30.796659>,  <38.519482, 30.649307, 30.792034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.740124, 30.743624, 30.796659>,  <39.107861, 30.900816, 30.804367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740124, 30.743624, 30.796659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251211, 0.548581, 0.797466,
		-0.302820, 0.737986, -0.603056,
		-0.919344, -0.392983, -0.019269,
		38.464321, 30.625729, 30.790878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724018, 31.445616, 30.981089>,  <39.107861, 30.900816, 30.804367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724018, 31.445616, 30.981089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486351, 31.126499, 31.022066>,  <38.343750, 30.935030, 31.046652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486351, 31.126499, 31.022066>,  <38.724018, 31.445616, 30.981089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486351, 31.126499, 31.022066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255787, 0.308163, 0.916301,
		-0.762585, 0.518234, -0.387166,
		-0.594169, -0.797790, 0.102443,
		38.308102, 30.887161, 31.052799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992996, 31.647383, 31.143673>,  <38.724018, 31.445616, 30.981089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992996, 31.647383, 31.143673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.034172, 31.270578, 31.271437>,  <38.058876, 31.044497, 31.348095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.034172, 31.270578, 31.271437>,  <37.992996, 31.647383, 31.143673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034172, 31.270578, 31.271437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381155, 0.259248, 0.887418,
		-0.918762, -0.213096, -0.332364,
		0.102941, -0.942009, 0.319410,
		38.065056, 30.987976, 31.367260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598034, 31.536770, 31.685030>,  <37.992996, 31.647383, 31.143673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598034, 31.536770, 31.685030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843658, 31.223919, 31.727377>,  <37.991032, 31.036209, 31.752785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843658, 31.223919, 31.727377>,  <37.598034, 31.536770, 31.685030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843658, 31.223919, 31.727377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193623, -0.019247, 0.980887,
		-0.765141, -0.622822, -0.163257,
		0.614060, -0.782127, 0.105866,
		38.027878, 30.989281, 31.759136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206806, 31.001913, 32.060532>,  <37.598034, 31.536770, 31.685030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206806, 31.001913, 32.060532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.591621, 30.906254, 32.113140>,  <37.822510, 30.848858, 32.144703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.591621, 30.906254, 32.113140>,  <37.206806, 31.001913, 32.060532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591621, 30.906254, 32.113140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121725, 0.055331, 0.991020,
		-0.244278, -0.969405, 0.024120,
		0.962035, -0.239149, 0.131517,
		37.880234, 30.834509, 32.152596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193352, 30.425882, 32.465649>,  <37.206806, 31.001913, 32.060532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193352, 30.425882, 32.465649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.537910, 30.620703, 32.523312>,  <37.744644, 30.737595, 32.557907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.537910, 30.620703, 32.523312>,  <37.193352, 30.425882, 32.465649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537910, 30.620703, 32.523312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152822, -0.022147, 0.988006,
		0.484404, -0.873091, 0.055355,
		0.861393, 0.487053, 0.144156,
		37.796329, 30.766819, 32.566559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434662, 30.159557, 33.037239>,  <37.193352, 30.425882, 32.465649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434662, 30.159557, 33.037239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.680012, 30.474110, 33.007919>,  <37.827221, 30.662842, 32.990326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.680012, 30.474110, 33.007919>,  <37.434662, 30.159557, 33.037239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680012, 30.474110, 33.007919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045407, 0.127769, 0.990764,
		0.788483, -0.604385, 0.114078,
		0.613378, 0.786380, -0.073300,
		37.864025, 30.710024, 32.985928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060448, 30.133780, 33.579098>,  <37.434662, 30.159557, 33.037239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060448, 30.133780, 33.579098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.963757, 30.502768, 33.458687>,  <37.905743, 30.724161, 33.386440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.963757, 30.502768, 33.458687>,  <38.060448, 30.133780, 33.579098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963757, 30.502768, 33.458687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158477, 0.268526, 0.950146,
		0.957315, 0.277385, 0.081280,
		-0.241731, 0.922470, -0.301024,
		37.891239, 30.779509, 33.368382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103001, 30.512857, 34.200775>,  <38.060448, 30.133780, 33.579098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103001, 30.512857, 34.200775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.974216, 30.822582, 33.982864>,  <37.896946, 31.008417, 33.852116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.974216, 30.822582, 33.982864>,  <38.103001, 30.512857, 34.200775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974216, 30.822582, 33.982864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170082, 0.518753, 0.837835,
		0.931351, 0.362405, -0.035320,
		-0.321958, 0.774311, -0.544780,
		37.877628, 31.054876, 33.819431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.631470, 30.421631, 28.055023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.248917, 30.428705, 27.938389>,  <42.019386, 30.432951, 27.868408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.248917, 30.428705, 27.938389>,  <42.631470, 30.421631, 28.055023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248917, 30.428705, 27.938389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186456, -0.731429, -0.655931,
		-0.224875, -0.681688, 0.696227,
		-0.956381, 0.017687, -0.291585,
		41.962002, 30.434011, 27.850914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545216, 29.683554, 27.678238>,  <42.631470, 30.421631, 28.055023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545216, 29.683554, 27.678238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.199322, 29.872461, 27.609890>,  <41.991787, 29.985806, 27.568880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.199322, 29.872461, 27.609890>,  <42.545216, 29.683554, 27.678238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199322, 29.872461, 27.609890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218455, -0.660048, -0.718759,
		-0.452231, -0.584207, 0.673935,
		-0.864734, 0.472270, -0.170871,
		41.939903, 30.014143, 27.558628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048107, 29.252764, 27.519466>,  <42.545216, 29.683554, 27.678238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048107, 29.252764, 27.519466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.903309, 29.583527, 27.347334>,  <41.816429, 29.781984, 27.244055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.903309, 29.583527, 27.347334>,  <42.048107, 29.252764, 27.519466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903309, 29.583527, 27.347334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111011, -0.496595, -0.860854,
		-0.925546, -0.263855, 0.271562,
		-0.361996, 0.826906, -0.430331,
		41.794708, 29.831598, 27.218235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259293, 29.243710, 27.428183>,  <42.048107, 29.252764, 27.519466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259293, 29.243710, 27.428183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.409252, 29.500135, 27.160305>,  <41.499229, 29.653990, 26.999578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.409252, 29.500135, 27.160305>,  <41.259293, 29.243710, 27.428183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409252, 29.500135, 27.160305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271060, -0.615014, -0.740462,
		-0.886553, 0.459126, -0.056803,
		0.374900, 0.641062, -0.669693,
		41.521721, 29.692453, 26.959396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848633, 29.231682, 26.846842>,  <41.259293, 29.243710, 27.428183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848633, 29.231682, 26.846842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.195103, 29.371536, 26.704014>,  <41.402985, 29.455450, 26.618317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.195103, 29.371536, 26.704014>,  <40.848633, 29.231682, 26.846842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195103, 29.371536, 26.704014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070373, -0.622047, -0.779811,
		-0.494765, 0.700579, -0.514195,
		0.866173, 0.349638, -0.357069,
		41.454956, 29.476427, 26.596893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708973, 29.318110, 26.193697>,  <40.848633, 29.231682, 26.846842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708973, 29.318110, 26.193697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.108009, 29.336926, 26.214094>,  <41.347431, 29.348215, 26.226334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.108009, 29.336926, 26.214094>,  <40.708973, 29.318110, 26.193697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108009, 29.336926, 26.214094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066577, -0.442311, -0.894387,
		-0.019518, 0.895627, -0.444377,
		0.997590, 0.047042, 0.050995,
		41.407288, 29.351038, 26.229393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976528, 29.794476, 25.625946>,  <40.708973, 29.318110, 26.193697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976528, 29.794476, 25.625946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.273544, 29.546995, 25.728582>,  <41.451756, 29.398508, 25.790165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.273544, 29.546995, 25.728582>,  <40.976528, 29.794476, 25.625946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273544, 29.546995, 25.728582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057826, -0.322441, -0.944822,
		0.667296, 0.716410, -0.203650,
		0.742544, -0.618700, 0.256591,
		41.496307, 29.361385, 25.805559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427490, 29.706568, 25.064259>,  <40.976528, 29.794476, 25.625946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427490, 29.706568, 25.064259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.553600, 29.392252, 25.277102>,  <41.629265, 29.203663, 25.404806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.553600, 29.392252, 25.277102>,  <41.427490, 29.706568, 25.064259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553600, 29.392252, 25.277102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382850, -0.407734, -0.828963,
		0.868348, 0.465068, 0.172291,
		0.315275, -0.785790, 0.532106,
		41.648182, 29.156515, 25.436733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065769, 29.498714, 24.728008>,  <41.427490, 29.706568, 25.064259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065769, 29.498714, 24.728008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.940891, 29.188686, 24.947754>,  <41.865967, 29.002668, 25.079601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.940891, 29.188686, 24.947754>,  <42.065769, 29.498714, 24.728008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940891, 29.188686, 24.947754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178441, -0.615813, -0.767420,
		0.933110, -0.141553, 0.330557,
		-0.312191, -0.775072, 0.549363,
		41.847233, 28.956165, 25.112562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532917, 29.018391, 24.639557>,  <42.065769, 29.498714, 24.728008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532917, 29.018391, 24.639557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.205715, 28.817789, 24.752239>,  <42.009392, 28.697428, 24.819849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.205715, 28.817789, 24.752239>,  <42.532917, 29.018391, 24.639557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205715, 28.817789, 24.752239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061168, -0.562812, -0.824318,
		0.571947, -0.657067, 0.491060,
		-0.818007, -0.501503, 0.281707,
		41.960312, 28.667337, 24.836752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709278, 28.268969, 24.646626>,  <42.532917, 29.018391, 24.639557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709278, 28.268969, 24.646626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.311993, 28.290298, 24.605299>,  <42.073620, 28.303097, 24.580503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.311993, 28.290298, 24.605299>,  <42.709278, 28.268969, 24.646626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311993, 28.290298, 24.605299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053672, -0.577964, -0.814295,
		-0.103135, -0.814318, 0.571183,
		-0.993218, 0.053326, -0.103314,
		42.014027, 28.306295, 24.574305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480518, 27.610016, 24.488071>,  <42.709278, 28.268969, 24.646626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480518, 27.610016, 24.488071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.175625, 27.825447, 24.344439>,  <41.992691, 27.954706, 24.258259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.175625, 27.825447, 24.344439>,  <42.480518, 27.610016, 24.488071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175625, 27.825447, 24.344439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056101, -0.607609, -0.792252,
		-0.644873, -0.583732, 0.493352,
		-0.762228, 0.538579, -0.359082,
		41.946957, 27.987020, 24.236713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888359, 27.166075, 24.232561>,  <42.480518, 27.610016, 24.488071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888359, 27.166075, 24.232561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.853149, 27.503908, 24.021305>,  <41.832024, 27.706608, 23.894552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.853149, 27.503908, 24.021305>,  <41.888359, 27.166075, 24.232561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853149, 27.503908, 24.021305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090244, -0.534780, -0.840159,
		-0.992022, -0.026294, 0.123294,
		-0.088026, 0.844582, -0.528140,
		41.826740, 27.757282, 23.862864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318691, 27.105886, 23.796711>,  <41.888359, 27.166075, 24.232561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318691, 27.105886, 23.796711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.591366, 27.354736, 23.642687>,  <41.754971, 27.504045, 23.550272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.591366, 27.354736, 23.642687>,  <41.318691, 27.105886, 23.796711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591366, 27.354736, 23.642687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158977, -0.639666, -0.752033,
		-0.714167, 0.451433, -0.534953,
		0.681683, 0.622122, -0.385061,
		41.795872, 27.541372, 23.527168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729343, 27.306036, 24.189013>,  <41.318691, 27.105886, 23.796711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729343, 27.306036, 24.189013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.441082, 27.047672, 24.289776>,  <40.268124, 26.892654, 24.350233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.441082, 27.047672, 24.289776>,  <40.729343, 27.306036, 24.189013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441082, 27.047672, 24.289776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410970, 0.690623, 0.595099,
		-0.558352, 0.325336, -0.763151,
		-0.720657, -0.645907, 0.251907,
		40.224884, 26.853901, 24.365349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155014, 27.717175, 24.351212>,  <40.729343, 27.306036, 24.189013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155014, 27.717175, 24.351212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.052830, 27.373610, 24.528755>,  <39.991520, 27.167471, 24.635281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.052830, 27.373610, 24.528755>,  <40.155014, 27.717175, 24.351212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052830, 27.373610, 24.528755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510721, 0.509695, 0.692370,
		-0.820916, -0.049813, -0.568872,
		-0.255462, -0.858912, 0.443858,
		39.976192, 27.115936, 24.661913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410126, 27.716576, 24.514795>,  <40.155014, 27.717175, 24.351212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410126, 27.716576, 24.514795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.561569, 27.447542, 24.769129>,  <39.652435, 27.286121, 24.921730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.561569, 27.447542, 24.769129>,  <39.410126, 27.716576, 24.514795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561569, 27.447542, 24.769129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465376, 0.455486, 0.758919,
		-0.800050, -0.583237, -0.140553,
		0.378609, -0.672583, 0.635836,
		39.675152, 27.245768, 24.959879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857006, 27.468952, 24.884897>,  <39.410126, 27.716576, 24.514795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857006, 27.468952, 24.884897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.187283, 27.422235, 25.105656>,  <39.385448, 27.394205, 25.238110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.187283, 27.422235, 25.105656>,  <38.857006, 27.468952, 24.884897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187283, 27.422235, 25.105656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523257, 0.206996, 0.826653,
		-0.210786, -0.971346, 0.109804,
		0.825695, -0.116792, 0.551895,
		39.434990, 27.387197, 25.271225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563187, 27.149902, 25.482338>,  <38.857006, 27.468952, 24.884897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563187, 27.149902, 25.482338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.925522, 27.288046, 25.580475>,  <39.142921, 27.370932, 25.639357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.925522, 27.288046, 25.580475>,  <38.563187, 27.149902, 25.482338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925522, 27.288046, 25.580475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374792, 0.383372, 0.844131,
		0.197469, -0.856595, 0.476708,
		0.905835, 0.345356, 0.245341,
		39.197273, 27.391653, 25.654078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575710, 27.004997, 26.149084>,  <38.563187, 27.149902, 25.482338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575710, 27.004997, 26.149084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.880058, 27.264477, 26.142527>,  <39.062668, 27.420164, 26.138592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.880058, 27.264477, 26.142527>,  <38.575710, 27.004997, 26.149084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880058, 27.264477, 26.142527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314863, 0.391164, 0.864784,
		0.567397, -0.652826, 0.501876,
		0.760869, 0.648698, -0.016394,
		39.108318, 27.459085, 26.137608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844501, 27.031292, 26.898962>,  <38.575710, 27.004997, 26.149084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844501, 27.031292, 26.898962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.015331, 27.353905, 26.735445>,  <39.117828, 27.547472, 26.637335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.015331, 27.353905, 26.735445>,  <38.844501, 27.031292, 26.898962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015331, 27.353905, 26.735445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320187, 0.557694, 0.765805,
		0.845630, -0.196163, 0.496417,
		0.427072, 0.806534, -0.408794,
		39.143452, 27.595865, 26.612806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282864, 27.220284, 27.468710>,  <38.844501, 27.031292, 26.898962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282864, 27.220284, 27.468710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.205124, 27.526213, 27.223019>,  <39.158482, 27.709770, 27.075603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.205124, 27.526213, 27.223019>,  <39.282864, 27.220284, 27.468710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205124, 27.526213, 27.223019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229992, 0.573185, 0.786487,
		0.953590, 0.294118, 0.064507,
		-0.194346, 0.764822, -0.614228,
		39.146820, 27.755659, 27.038750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688927, 27.832254, 27.676771>,  <39.282864, 27.220284, 27.468710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688927, 27.832254, 27.676771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.385254, 27.978874, 27.461634>,  <39.203049, 28.066847, 27.332550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.385254, 27.978874, 27.461634>,  <39.688927, 27.832254, 27.676771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385254, 27.978874, 27.461634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315049, 0.516137, 0.796459,
		0.569544, 0.774108, -0.276363,
		-0.759187, 0.366550, -0.537845,
		39.157497, 28.088839, 27.300280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743671, 28.490814, 27.814159>,  <39.688927, 27.832254, 27.676771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743671, 28.490814, 27.814159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.368874, 28.461868, 27.677450>,  <39.143997, 28.444500, 27.595425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.368874, 28.461868, 27.677450>,  <39.743671, 28.490814, 27.814159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368874, 28.461868, 27.677450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300674, 0.665175, 0.683475,
		0.177877, 0.743173, -0.645022,
		-0.936992, -0.072367, -0.341772,
		39.087776, 28.440159, 27.574919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439533, 29.156347, 27.684355>,  <39.743671, 28.490814, 27.814159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439533, 29.156347, 27.684355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.121658, 28.924633, 27.756916>,  <38.930935, 28.785604, 27.800453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.121658, 28.924633, 27.756916>,  <39.439533, 29.156347, 27.684355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121658, 28.924633, 27.756916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266244, 0.601188, 0.753450,
		-0.545520, 0.550457, -0.631986,
		-0.794684, -0.579284, 0.181404,
		38.883255, 28.750847, 27.811337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919369, 29.624573, 27.800581>,  <39.439533, 29.156347, 27.684355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919369, 29.624573, 27.800581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.774799, 29.290096, 27.965582>,  <38.688057, 29.089411, 28.064583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.774799, 29.290096, 27.965582>,  <38.919369, 29.624573, 27.800581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774799, 29.290096, 27.965582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285338, 0.520373, 0.804856,
		-0.887669, 0.173191, -0.426672,
		-0.361422, -0.836192, 0.412501,
		38.666374, 29.039238, 28.089333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272751, 29.858236, 28.031143>,  <38.919369, 29.624573, 27.800581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272751, 29.858236, 28.031143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.362648, 29.523018, 28.230009>,  <38.416584, 29.321888, 28.349329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.362648, 29.523018, 28.230009>,  <38.272751, 29.858236, 28.031143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362648, 29.523018, 28.230009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124339, 0.481384, 0.867646,
		-0.966453, -0.256811, 0.003984,
		0.224739, -0.838044, 0.497167,
		38.430069, 29.271605, 28.379160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670681, 29.691528, 28.464573>,  <38.272751, 29.858236, 28.031143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670681, 29.691528, 28.464573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.998764, 29.514996, 28.610165>,  <38.195614, 29.409075, 28.697519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.998764, 29.514996, 28.610165>,  <37.670681, 29.691528, 28.464573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998764, 29.514996, 28.610165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176790, 0.409562, 0.894988,
		-0.544061, -0.798426, 0.257904,
		0.820209, -0.441333, 0.363980,
		38.244827, 29.382595, 28.719358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082661, 29.221176, 28.347874>,  <37.670681, 29.691528, 28.464573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082661, 29.221176, 28.347874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.685188, 29.191725, 28.313999>,  <36.446705, 29.174053, 28.293674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.685188, 29.191725, 28.313999>,  <37.082661, 29.221176, 28.347874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685188, 29.191725, 28.313999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107911, -0.419838, -0.901161,
		0.030798, -0.904608, 0.425131,
		-0.993683, -0.073631, -0.084686,
		36.387085, 29.169636, 28.288593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932610, 28.517708, 28.161715>,  <37.082661, 29.221176, 28.347874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932610, 28.517708, 28.161715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.634243, 28.754665, 28.039948>,  <36.455223, 28.896841, 27.966887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.634243, 28.754665, 28.039948>,  <36.932610, 28.517708, 28.161715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634243, 28.754665, 28.039948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026136, -0.482744, -0.875372,
		-0.665524, -0.645000, 0.375571,
		-0.745919, 0.592396, -0.304420,
		36.410469, 28.932384, 27.948622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401756, 28.069897, 27.853867>,  <36.932610, 28.517708, 28.161715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401756, 28.069897, 27.853867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.313972, 28.424274, 27.690435>,  <36.261303, 28.636902, 27.592377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.313972, 28.424274, 27.690435>,  <36.401756, 28.069897, 27.853867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313972, 28.424274, 27.690435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001581, -0.418465, -0.908231,
		-0.975620, -0.199968, 0.090436,
		-0.219462, 0.885945, -0.408579,
		36.248135, 28.690058, 27.567862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838657, 28.065929, 27.326797>,  <36.401756, 28.069897, 27.853867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838657, 28.065929, 27.326797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.031887, 28.401512, 27.226570>,  <36.147827, 28.602861, 27.166433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.031887, 28.401512, 27.226570>,  <35.838657, 28.065929, 27.326797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031887, 28.401512, 27.226570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034628, -0.267646, -0.962895,
		-0.874893, 0.473829, -0.100243,
		0.483077, 0.838958, -0.250569,
		36.176811, 28.653200, 27.151400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507069, 28.188902, 26.713091>,  <35.838657, 28.065929, 27.326797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507069, 28.188902, 26.713091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.826729, 28.428839, 26.697321>,  <36.018524, 28.572802, 26.687859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.826729, 28.428839, 26.697321>,  <35.507069, 28.188902, 26.713091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826729, 28.428839, 26.697321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009764, -0.078527, -0.996864,
		-0.601057, 0.796256, -0.068612,
		0.799147, 0.599842, -0.039424,
		36.066471, 28.608791, 26.685493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437443, 28.607470, 26.096041>,  <35.507069, 28.188902, 26.713091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437443, 28.607470, 26.096041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829983, 28.606016, 26.172913>,  <36.065506, 28.605145, 26.219036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829983, 28.606016, 26.172913>,  <35.437443, 28.607470, 26.096041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829983, 28.606016, 26.172913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189518, -0.148660, -0.970558,
		0.032095, 0.988882, -0.145200,
		0.981353, -0.003632, 0.192182,
		36.124390, 28.604927, 26.230568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711990, 28.869329, 25.541952>,  <35.437443, 28.607470, 26.096041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711990, 28.869329, 25.541952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.039619, 28.700251, 25.697098>,  <36.236198, 28.598803, 25.790186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.039619, 28.700251, 25.697098>,  <35.711990, 28.869329, 25.541952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039619, 28.700251, 25.697098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335942, -0.194641, -0.921552,
		0.465032, 0.885122, -0.017425,
		0.819077, -0.422697, 0.387864,
		36.285343, 28.573441, 25.813457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925606, 29.596899, 25.595175>,  <35.711990, 28.869329, 25.541952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925606, 29.596899, 25.595175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665878, 29.858788, 25.440397>,  <35.510044, 30.015921, 25.347530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665878, 29.858788, 25.440397>,  <35.925606, 29.596899, 25.595175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665878, 29.858788, 25.440397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313035, 0.233609, 0.920563,
		0.693108, 0.718863, 0.053265,
		-0.649316, 0.654723, -0.386946,
		35.471085, 30.055204, 25.324314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988979, 30.193405, 25.995867>,  <35.925606, 29.596899, 25.595175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988979, 30.193405, 25.995867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.628418, 30.180201, 25.823177>,  <35.412083, 30.172277, 25.719564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.628418, 30.180201, 25.823177>,  <35.988979, 30.193405, 25.995867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628418, 30.180201, 25.823177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430312, 0.178876, 0.884780,
		0.048017, 0.983318, -0.175445,
		-0.901402, -0.033012, -0.431722,
		35.357998, 30.170298, 25.693661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717644, 30.678627, 26.392775>,  <35.988979, 30.193405, 25.995867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717644, 30.678627, 26.392775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403381, 30.505754, 26.215702>,  <35.214825, 30.402031, 26.109459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403381, 30.505754, 26.215702>,  <35.717644, 30.678627, 26.392775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403381, 30.505754, 26.215702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543151, 0.139258, 0.828006,
		-0.296200, 0.890970, -0.344147,
		-0.785654, -0.432179, -0.442684,
		35.167686, 30.376101, 26.082897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192799, 31.211351, 26.368103>,  <35.717644, 30.678627, 26.392775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192799, 31.211351, 26.368103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.994247, 30.870991, 26.299314>,  <34.875118, 30.666775, 26.258041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.994247, 30.870991, 26.299314>,  <35.192799, 31.211351, 26.368103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994247, 30.870991, 26.299314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662091, 0.242951, 0.708950,
		-0.561467, 0.465766, -0.683971,
		-0.496376, -0.850903, -0.171971,
		34.845333, 30.615719, 26.247723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523487, 31.394478, 26.235847>,  <35.192799, 31.211351, 26.368103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523487, 31.394478, 26.235847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.501141, 31.009762, 26.343060>,  <34.487732, 30.778933, 26.407387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.501141, 31.009762, 26.343060>,  <34.523487, 31.394478, 26.235847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501141, 31.009762, 26.343060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773426, 0.211453, 0.597578,
		-0.631420, -0.173918, -0.755686,
		-0.055863, -0.961790, 0.268028,
		34.484383, 30.721226, 26.423468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864475, 31.151785, 26.233023>,  <34.523487, 31.394478, 26.235847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864475, 31.151785, 26.233023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.019424, 30.882635, 26.485111>,  <34.112396, 30.721146, 26.636364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.019424, 30.882635, 26.485111>,  <33.864475, 31.151785, 26.233023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019424, 30.882635, 26.485111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710326, 0.217924, 0.669288,
		-0.587688, -0.706928, -0.393543,
		0.387376, -0.672876, 0.630221,
		34.135635, 30.680773, 26.674177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222988, 30.783533, 26.467932>,  <33.864475, 31.151785, 26.233023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222988, 30.783533, 26.467932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.527267, 30.714134, 26.718126>,  <33.709835, 30.672495, 26.868242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.527267, 30.714134, 26.718126>,  <33.222988, 30.783533, 26.467932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527267, 30.714134, 26.718126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549874, 0.339812, 0.762998,
		-0.344927, -0.924352, 0.163093,
		0.760700, -0.173498, 0.625487,
		33.755478, 30.662085, 26.905773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.026978, 30.903852, 22.577969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.176811, 30.585373, 22.768023>,  <40.266712, 30.394285, 22.882055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.176811, 30.585373, 22.768023>,  <40.026978, 30.903852, 22.577969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176811, 30.585373, 22.768023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382552, 0.334081, 0.861420,
		-0.844597, -0.504435, -0.179447,
		0.374580, -0.796200, 0.475136,
		40.289185, 30.346514, 22.910563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616356, 30.847767, 23.203718>,  <40.026978, 30.903852, 22.577969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616356, 30.847767, 23.203718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.924656, 30.603794, 23.277391>,  <40.109638, 30.457411, 23.321594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.924656, 30.603794, 23.277391>,  <39.616356, 30.847767, 23.203718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924656, 30.603794, 23.277391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160022, 0.094495, 0.982580,
		-0.616710, -0.786800, -0.024770,
		0.770754, -0.609931, 0.184181,
		40.155884, 30.420815, 23.332645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478371, 30.408028, 23.775595>,  <39.616356, 30.847767, 23.203718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478371, 30.408028, 23.775595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.877552, 30.432913, 23.769636>,  <40.117062, 30.447844, 23.766062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.877552, 30.432913, 23.769636>,  <39.478371, 30.408028, 23.775595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877552, 30.432913, 23.769636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004744, 0.304198, 0.952597,
		0.063794, -0.950575, 0.303870,
		0.997952, 0.062211, -0.014896,
		40.176937, 30.451576, 23.765167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732712, 30.099867, 24.300678>,  <39.478371, 30.408028, 23.775595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732712, 30.099867, 24.300678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.016052, 30.354765, 24.179243>,  <40.186054, 30.507704, 24.106382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.016052, 30.354765, 24.179243>,  <39.732712, 30.099867, 24.300678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016052, 30.354765, 24.179243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006850, 0.423864, 0.905700,
		0.705832, -0.643629, 0.295878,
		0.708347, 0.637245, -0.303586,
		40.228558, 30.545938, 24.088167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306591, 30.069054, 24.814886>,  <39.732712, 30.099867, 24.300678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306591, 30.069054, 24.814886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.331024, 30.426378, 24.636780>,  <40.345684, 30.640774, 24.529915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.331024, 30.426378, 24.636780>,  <40.306591, 30.069054, 24.814886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331024, 30.426378, 24.636780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017925, 0.447010, 0.894349,
		0.997972, -0.046646, 0.043316,
		0.061080, 0.893312, -0.445267,
		40.349350, 30.694372, 24.503201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819290, 30.425285, 25.193548>,  <40.306591, 30.069054, 24.814886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819290, 30.425285, 25.193548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.628330, 30.717211, 24.997808>,  <40.513756, 30.892366, 24.880365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.628330, 30.717211, 24.997808>,  <40.819290, 30.425285, 25.193548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628330, 30.717211, 24.997808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020013, 0.547735, 0.836413,
		0.878458, 0.409097, -0.246883,
		-0.477401, 0.729812, -0.489349,
		40.485111, 30.936155, 24.851004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248394, 30.903612, 25.180420>,  <40.819290, 30.425285, 25.193548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248394, 30.903612, 25.180420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.892483, 31.083744, 25.150772>,  <40.678936, 31.191824, 25.132982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.892483, 31.083744, 25.150772>,  <41.248394, 30.903612, 25.180420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892483, 31.083744, 25.150772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254437, 0.624293, 0.738593,
		0.378883, 0.638327, -0.670065,
		-0.889781, 0.450329, -0.074120,
		40.625549, 31.218843, 25.128536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320259, 31.706514, 25.191797>,  <41.248394, 30.903612, 25.180420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320259, 31.706514, 25.191797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.937943, 31.642271, 25.290318>,  <40.708553, 31.603725, 25.349430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.937943, 31.642271, 25.290318>,  <41.320259, 31.706514, 25.191797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937943, 31.642271, 25.290318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031654, 0.776578, 0.629225,
		-0.292331, 0.609206, -0.737164,
		-0.955793, -0.160608, 0.246302,
		40.651203, 31.594090, 25.364208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040211, 32.321369, 25.197193>,  <41.320259, 31.706514, 25.191797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040211, 32.321369, 25.197193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.788883, 32.104778, 25.420626>,  <40.638088, 31.974823, 25.554686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.788883, 32.104778, 25.420626>,  <41.040211, 32.321369, 25.197193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788883, 32.104778, 25.420626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071675, 0.755250, 0.651506,
		-0.774646, 0.369318, -0.513350,
		-0.628320, -0.541481, 0.558581,
		40.600388, 31.942333, 25.588200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554585, 32.832424, 25.304892>,  <41.040211, 32.321369, 25.197193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554585, 32.832424, 25.304892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.450306, 32.547749, 25.565825>,  <40.387737, 32.376945, 25.722383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.450306, 32.547749, 25.565825>,  <40.554585, 32.832424, 25.304892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450306, 32.547749, 25.565825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199678, 0.700836, 0.684805,
		-0.944545, 0.048270, -0.324814,
		-0.260697, -0.711688, 0.652333,
		40.372097, 32.334244, 25.761524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933670, 33.023163, 25.554760>,  <40.554585, 32.832424, 25.304892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933670, 33.023163, 25.554760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.115540, 32.813099, 25.842505>,  <40.224663, 32.687061, 26.015150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.115540, 32.813099, 25.842505>,  <39.933670, 33.023163, 25.554760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115540, 32.813099, 25.842505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226101, 0.713157, 0.663541,
		-0.861482, -0.464342, 0.205513,
		0.454672, -0.525161, 0.719360,
		40.251942, 32.655552, 26.058313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527004, 33.149544, 26.133598>,  <39.933670, 33.023163, 25.554760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527004, 33.149544, 26.133598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.879665, 33.045555, 26.291128>,  <40.091263, 32.983162, 26.385645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.879665, 33.045555, 26.291128>,  <39.527004, 33.149544, 26.133598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879665, 33.045555, 26.291128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122195, 0.680322, 0.722655,
		-0.455797, -0.685256, 0.568043,
		0.881656, -0.259972, 0.393824,
		40.144161, 32.967564, 26.409275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795284, 33.057888, 26.284222>,  <39.527004, 33.149544, 26.133598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795284, 33.057888, 26.284222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.472279, 33.230141, 26.122988>,  <38.278477, 33.333492, 26.026247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.472279, 33.230141, 26.122988>,  <38.795284, 33.057888, 26.284222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472279, 33.230141, 26.122988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015117, -0.668034, -0.743977,
		-0.589653, -0.606866, 0.532937,
		-0.807515, 0.430632, -0.403083,
		38.230026, 33.359329, 26.002062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289658, 32.541843, 26.193434>,  <38.795284, 33.057888, 26.284222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289658, 32.541843, 26.193434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.162655, 32.822182, 25.937933>,  <38.086452, 32.990383, 25.784632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.162655, 32.822182, 25.937933>,  <38.289658, 32.541843, 26.193434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162655, 32.822182, 25.937933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127164, -0.698991, -0.703733,
		-0.939691, -0.142212, 0.311056,
		-0.317505, 0.700847, -0.638752,
		38.067402, 33.032436, 25.746307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653236, 32.285583, 25.787285>,  <38.289658, 32.541843, 26.193434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653236, 32.285583, 25.787285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.825932, 32.565430, 25.559551>,  <37.929550, 32.733337, 25.422911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.825932, 32.565430, 25.559551>,  <37.653236, 32.285583, 25.787285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825932, 32.565430, 25.559551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156770, -0.563382, -0.811187,
		-0.888269, 0.439477, -0.133557,
		0.431742, 0.699615, -0.569332,
		37.955456, 32.775314, 25.388752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237873, 32.251369, 25.193960>,  <37.653236, 32.285583, 25.787285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237873, 32.251369, 25.193960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.572071, 32.442902, 25.086130>,  <37.772591, 32.557819, 25.021433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.572071, 32.442902, 25.086130>,  <37.237873, 32.251369, 25.193960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572071, 32.442902, 25.086130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013324, -0.508091, -0.861200,
		-0.549336, 0.715937, -0.430888,
		0.835495, 0.478829, -0.269574,
		37.822720, 32.586552, 25.005259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013660, 32.475224, 24.498535>,  <37.237873, 32.251369, 25.193960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013660, 32.475224, 24.498535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.411346, 32.481247, 24.541086>,  <37.649956, 32.484863, 24.566616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.411346, 32.481247, 24.541086>,  <37.013660, 32.475224, 24.498535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411346, 32.481247, 24.541086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095104, -0.583966, -0.806188,
		0.049978, 0.811639, -0.582018,
		0.994212, 0.015060, 0.106375,
		37.709610, 32.485764, 24.572998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261658, 32.716461, 23.868235>,  <37.013660, 32.475224, 24.498535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261658, 32.716461, 23.868235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.550663, 32.512901, 24.055424>,  <37.724064, 32.390766, 24.167738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.550663, 32.512901, 24.055424>,  <37.261658, 32.716461, 23.868235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550663, 32.512901, 24.055424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199651, -0.494471, -0.845954,
		0.661904, 0.704643, -0.255660,
		0.722512, -0.508897, 0.467975,
		37.767418, 32.360233, 24.195816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765610, 32.661373, 23.341688>,  <37.261658, 32.716461, 23.868235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765610, 32.661373, 23.341688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.847610, 32.383652, 23.617634>,  <37.896812, 32.217018, 23.783201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.847610, 32.383652, 23.617634>,  <37.765610, 32.661373, 23.341688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847610, 32.383652, 23.617634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169246, -0.669072, -0.723670,
		0.964018, 0.265110, -0.019652,
		0.205001, -0.694305, 0.689866,
		37.909111, 32.175362, 23.824594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499287, 32.395710, 23.348953>,  <37.765610, 32.661373, 23.341688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499287, 32.395710, 23.348953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.247414, 32.115105, 23.482449>,  <38.096291, 31.946743, 23.562546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.247414, 32.115105, 23.482449>,  <38.499287, 32.395710, 23.348953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247414, 32.115105, 23.482449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264259, -0.597409, -0.757146,
		0.730523, -0.388570, 0.561560,
		-0.629685, -0.701510, 0.333738,
		38.058510, 31.904652, 23.582569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749321, 31.876656, 23.080862>,  <38.499287, 32.395710, 23.348953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749321, 31.876656, 23.080862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.412468, 31.708630, 23.216131>,  <38.210358, 31.607815, 23.297293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.412468, 31.708630, 23.216131>,  <38.749321, 31.876656, 23.080862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412468, 31.708630, 23.216131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177667, -0.808197, -0.561473,
		0.509167, -0.412751, 0.755238,
		-0.842130, -0.420065, 0.338175,
		38.159828, 31.582609, 23.317583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867867, 31.163462, 23.449032>,  <38.749321, 31.876656, 23.080862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867867, 31.163462, 23.449032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.489471, 31.157255, 23.319500>,  <38.262436, 31.153532, 23.241781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.489471, 31.157255, 23.319500>,  <38.867867, 31.163462, 23.449032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489471, 31.157255, 23.319500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167870, -0.877965, -0.448328,
		-0.277353, -0.478474, 0.833150,
		-0.945989, -0.015516, -0.323827,
		38.205673, 31.152601, 23.222351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703308, 30.495340, 23.519327>,  <38.867867, 31.163462, 23.449032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703308, 30.495340, 23.519327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.425568, 30.654581, 23.279530>,  <38.258923, 30.750126, 23.135651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.425568, 30.654581, 23.279530>,  <38.703308, 30.495340, 23.519327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425568, 30.654581, 23.279530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004983, -0.835689, -0.549181,
		-0.719618, -0.378337, 0.582246,
		-0.694352, 0.398102, -0.599491,
		38.217262, 30.774012, 23.099682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112469, 30.027956, 23.553308>,  <38.703308, 30.495340, 23.519327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112469, 30.027956, 23.553308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.096729, 30.226810, 23.206596>,  <38.087288, 30.346123, 22.998569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.096729, 30.226810, 23.206596>,  <38.112469, 30.027956, 23.553308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096729, 30.226810, 23.206596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103750, -0.860732, -0.498374,
		-0.993825, -0.109537, -0.017712,
		-0.039345, 0.497134, -0.866781,
		38.084927, 30.375950, 22.946562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545235, 29.718792, 23.126179>,  <38.112469, 30.027956, 23.553308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545235, 29.718792, 23.126179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.781178, 29.905977, 22.862942>,  <37.922741, 30.018288, 22.705000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.781178, 29.905977, 22.862942>,  <37.545235, 29.718792, 23.126179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781178, 29.905977, 22.862942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069965, -0.782281, -0.618984,
		-0.804474, 0.411153, -0.428690,
		0.589853, 0.467963, -0.658091,
		37.958134, 30.046366, 22.665514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276192, 29.603231, 22.461729>,  <37.545235, 29.718792, 23.126179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276192, 29.603231, 22.461729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.648125, 29.724504, 22.378311>,  <37.871284, 29.797268, 22.328260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.648125, 29.724504, 22.378311>,  <37.276192, 29.603231, 22.461729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648125, 29.724504, 22.378311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147480, -0.826254, -0.543649,
		-0.337138, 0.474746, -0.812991,
		0.929832, 0.303184, -0.208546,
		37.927074, 29.815460, 22.315748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969276, 30.326717, 22.301289>,  <37.276192, 29.603231, 22.461729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969276, 30.326717, 22.301289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.732738, 30.031731, 22.431801>,  <36.590816, 29.854738, 22.510109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.732738, 30.031731, 22.431801>,  <36.969276, 30.326717, 22.301289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732738, 30.031731, 22.431801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223772, 0.538774, 0.812187,
		-0.774752, 0.407268, -0.483624,
		-0.591342, -0.737465, 0.326280,
		36.555336, 29.810492, 22.529686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415543, 30.694870, 22.592794>,  <36.969276, 30.326717, 22.301289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415543, 30.694870, 22.592794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.381191, 30.331797, 22.757105>,  <36.360580, 30.113953, 22.855692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.381191, 30.331797, 22.757105>,  <36.415543, 30.694870, 22.592794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381191, 30.331797, 22.757105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371160, 0.411771, 0.832277,
		-0.924589, -0.080988, -0.372258,
		-0.085881, -0.907682, 0.410779,
		36.355427, 30.059492, 22.880339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802990, 30.717155, 22.865673>,  <36.415543, 30.694870, 22.592794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802990, 30.717155, 22.865673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.963779, 30.412632, 23.069174>,  <36.060253, 30.229918, 23.191275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.963779, 30.412632, 23.069174>,  <35.802990, 30.717155, 22.865673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963779, 30.412632, 23.069174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494601, 0.287051, 0.820349,
		-0.770574, -0.581390, -0.261155,
		0.401978, -0.761306, 0.508750,
		36.084373, 30.184240, 23.221798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200825, 30.230782, 23.306480>,  <35.802990, 30.717155, 22.865673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200825, 30.230782, 23.306480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.557880, 30.190893, 23.482325>,  <35.772114, 30.166960, 23.587831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.557880, 30.190893, 23.482325>,  <35.200825, 30.230782, 23.306480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557880, 30.190893, 23.482325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430345, 0.101771, 0.896909,
		-0.134183, -0.989797, 0.047928,
		0.892635, -0.099724, 0.439610,
		35.825672, 30.160976, 23.614208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098392, 29.591366, 23.700500>,  <35.200825, 30.230782, 23.306480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098392, 29.591366, 23.700500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.396091, 29.824148, 23.831604>,  <35.574711, 29.963818, 23.910267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.396091, 29.824148, 23.831604>,  <35.098392, 29.591366, 23.700500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396091, 29.824148, 23.831604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504404, 0.168059, 0.846955,
		0.437808, -0.795666, 0.418618,
		0.744245, 0.581956, 0.327759,
		35.619366, 29.998735, 23.929932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197517, 29.323818, 24.317394>,  <35.098392, 29.591366, 23.700500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197517, 29.323818, 24.317394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.406868, 29.662926, 24.351730>,  <35.532478, 29.866390, 24.372332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.406868, 29.662926, 24.351730>,  <35.197517, 29.323818, 24.317394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406868, 29.662926, 24.351730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121697, -0.025337, 0.992244,
		0.843367, -0.529763, 0.089910,
		0.523376, 0.847768, 0.085839,
		35.563881, 29.917255, 24.377481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636711, 29.239126, 24.851299>,  <35.197517, 29.323818, 24.317394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636711, 29.239126, 24.851299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.576618, 29.632788, 24.813622>,  <35.540562, 29.868984, 24.791016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.576618, 29.632788, 24.813622>,  <35.636711, 29.239126, 24.851299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576618, 29.632788, 24.813622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391242, 0.028318, 0.919852,
		0.907944, 0.175041, 0.380788,
		-0.150228, 0.984154, -0.094194,
		35.531551, 29.928034, 24.785364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314327, 29.069839, 25.142590>,  <35.636711, 29.239126, 24.851299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314327, 29.069839, 25.142590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.420284, 28.716709, 25.297743>,  <36.483856, 28.504831, 25.390835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.420284, 28.716709, 25.297743>,  <36.314327, 29.069839, 25.142590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420284, 28.716709, 25.297743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497928, -0.219246, -0.839047,
		0.825773, 0.415393, 0.381507,
		0.264890, -0.882825, 0.387883,
		36.499752, 28.451862, 25.414108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916710, 28.901865, 24.804890>,  <36.314327, 29.069839, 25.142590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916710, 28.901865, 24.804890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.849274, 28.545734, 24.974075>,  <36.808811, 28.332056, 25.075586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.849274, 28.545734, 24.974075>,  <36.916710, 28.901865, 24.804890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849274, 28.545734, 24.974075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610667, -0.431176, -0.664208,
		0.773734, 0.146314, 0.616383,
		-0.168587, -0.890325, 0.422965,
		36.798698, 28.278637, 25.100965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520302, 28.623325, 24.976398>,  <36.916710, 28.901865, 24.804890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520302, 28.623325, 24.976398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.276310, 28.309427, 24.932402>,  <37.129917, 28.121088, 24.906004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.276310, 28.309427, 24.932402>,  <37.520302, 28.623325, 24.976398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276310, 28.309427, 24.932402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594030, -0.360969, -0.718909,
		0.524458, -0.503858, 0.686346,
		-0.609978, -0.784747, -0.109993,
		37.093315, 28.074003, 24.899405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923222, 28.146416, 24.869579>,  <37.520302, 28.623325, 24.976398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923222, 28.146416, 24.869579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.574738, 28.021893, 24.717747>,  <37.365646, 27.947178, 24.626646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.574738, 28.021893, 24.717747>,  <37.923222, 28.146416, 24.869579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574738, 28.021893, 24.717747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488159, -0.467592, -0.736925,
		0.051921, -0.827312, 0.559338,
		-0.871209, -0.311308, -0.379582,
		37.313374, 27.928501, 24.603872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098278, 27.498354, 24.724508>,  <37.923222, 28.146416, 24.869579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098278, 27.498354, 24.724508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.755993, 27.519175, 24.518579>,  <37.550621, 27.531666, 24.395023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.755993, 27.519175, 24.518579>,  <38.098278, 27.498354, 24.724508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755993, 27.519175, 24.518579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306223, -0.751057, -0.584928,
		-0.417104, -0.658182, 0.626753,
		-0.855717, 0.052049, -0.514820,
		37.499279, 27.534790, 24.364134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937962, 26.840759, 24.607864>,  <38.098278, 27.498354, 24.724508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937962, 26.840759, 24.607864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.748165, 27.053688, 24.327438>,  <37.634289, 27.181446, 24.159184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.748165, 27.053688, 24.327438>,  <37.937962, 26.840759, 24.607864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748165, 27.053688, 24.327438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410481, -0.570730, -0.711177,
		-0.778695, -0.625219, 0.052296,
		-0.474488, 0.532324, -0.701065,
		37.605820, 27.213385, 24.117119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648220, 26.407475, 24.196712>,  <37.937962, 26.840759, 24.607864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648220, 26.407475, 24.196712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.654537, 26.728334, 23.957945>,  <37.658329, 26.920851, 23.814684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.654537, 26.728334, 23.957945>,  <37.648220, 26.407475, 24.196712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654537, 26.728334, 23.957945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477196, -0.530662, -0.700486,
		-0.878655, -0.273782, -0.391164,
		0.015796, 0.802148, -0.596917,
		37.659275, 26.968979, 23.778870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375515, 26.195478, 23.490107>,  <37.648220, 26.407475, 24.196712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375515, 26.195478, 23.490107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.595547, 26.526045, 23.442015>,  <37.727566, 26.724384, 23.413160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.595547, 26.526045, 23.442015>,  <37.375515, 26.195478, 23.490107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595547, 26.526045, 23.442015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573071, -0.478262, -0.665474,
		-0.607458, 0.297161, -0.736675,
		0.550076, 0.826414, -0.120230,
		37.760571, 26.773970, 23.405945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414280, 26.401213, 22.764294>,  <37.375515, 26.195478, 23.490107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414280, 26.401213, 22.764294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.739410, 26.497646, 22.976404>,  <37.934490, 26.555506, 23.103670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.739410, 26.497646, 22.976404>,  <37.414280, 26.401213, 22.764294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739410, 26.497646, 22.976404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571675, -0.504886, -0.646744,
		0.111810, 0.828836, -0.548206,
		0.812826, 0.241083, 0.530276,
		37.983257, 26.569971, 23.135487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.587025, 33.122742, 37.535549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916424, 33.348518, 37.558342>,  <34.114063, 33.483986, 37.572018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916424, 33.348518, 37.558342>,  <33.587025, 33.122742, 37.535549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916424, 33.348518, 37.558342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040749, 0.041336, -0.998314,
		-0.565848, 0.824436, 0.011040,
		0.823503, 0.564444, 0.056985,
		34.163475, 33.517853, 37.575436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481911, 33.741432, 37.089863>,  <33.587025, 33.122742, 37.535549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481911, 33.741432, 37.089863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874580, 33.673481, 37.124386>,  <34.110184, 33.632710, 37.145100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874580, 33.673481, 37.124386>,  <33.481911, 33.741432, 37.089863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874580, 33.673481, 37.124386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072624, -0.085213, -0.993713,
		0.176167, 0.981774, -0.071314,
		0.981678, -0.169880, 0.086312,
		34.169083, 33.622517, 37.150280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859955, 34.279621, 36.636192>,  <33.481911, 33.741432, 37.089863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859955, 34.279621, 36.636192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115723, 33.981182, 36.710472>,  <34.269184, 33.802120, 36.755039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115723, 33.981182, 36.710472>,  <33.859955, 34.279621, 36.636192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115723, 33.981182, 36.710472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262605, -0.015067, -0.964786,
		0.722622, 0.665666, 0.186295,
		0.639418, -0.746098, 0.185695,
		34.307549, 33.757351, 36.766182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396717, 34.416969, 36.214630>,  <33.859955, 34.279621, 36.636192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396717, 34.416969, 36.214630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.451248, 34.029274, 36.296608>,  <34.483967, 33.796658, 36.345795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.451248, 34.029274, 36.296608>,  <34.396717, 34.416969, 36.214630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451248, 34.029274, 36.296608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229813, -0.170289, -0.958221,
		0.963640, 0.177727, 0.199528,
		0.136324, -0.969234, 0.204941,
		34.492146, 33.738503, 36.358089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129288, 34.215046, 35.865738>,  <34.396717, 34.416969, 36.214630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129288, 34.215046, 35.865738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.935703, 33.869011, 35.918522>,  <34.819553, 33.661392, 35.950191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.935703, 33.869011, 35.918522>,  <35.129288, 34.215046, 35.865738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935703, 33.869011, 35.918522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392147, -0.349195, -0.851048,
		0.782307, -0.360127, 0.508236,
		-0.483959, -0.865084, 0.131955,
		34.790516, 33.609486, 35.958107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518734, 33.667171, 35.545177>,  <35.129288, 34.215046, 35.865738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518734, 33.667171, 35.545177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160496, 33.490997, 35.570232>,  <34.945553, 33.385292, 35.585266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160496, 33.490997, 35.570232>,  <35.518734, 33.667171, 35.545177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160496, 33.490997, 35.570232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170637, -0.470143, -0.865938,
		0.410836, -0.764843, 0.496213,
		-0.895598, -0.440431, 0.062641,
		34.891815, 33.358868, 35.589024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586514, 32.966263, 35.262760>,  <35.518734, 33.667171, 35.545177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586514, 32.966263, 35.262760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.193050, 33.035088, 35.241512>,  <34.956974, 33.076382, 35.228764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.193050, 33.035088, 35.241512>,  <35.586514, 32.966263, 35.262760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193050, 33.035088, 35.241512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055891, -0.572141, -0.818248,
		-0.171179, -0.801904, 0.572405,
		-0.983653, 0.172059, -0.053120,
		34.897953, 33.086704, 35.225578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360844, 32.333019, 34.835686>,  <35.586514, 32.966263, 35.262760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360844, 32.333019, 34.835686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.019989, 32.539402, 34.870686>,  <34.815475, 32.663231, 34.891685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.019989, 32.539402, 34.870686>,  <35.360844, 32.333019, 34.835686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019989, 32.539402, 34.870686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400111, -0.534561, -0.744416,
		-0.337313, -0.669352, 0.661958,
		-0.852133, 0.515958, 0.087501,
		34.764351, 32.694191, 34.896935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818634, 31.837635, 34.951645>,  <35.360844, 32.333019, 34.835686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818634, 31.837635, 34.951645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713768, 32.177231, 34.768131>,  <34.650848, 32.380989, 34.658024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713768, 32.177231, 34.768131>,  <34.818634, 31.837635, 34.951645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713768, 32.177231, 34.768131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194496, -0.512145, -0.836587,
		-0.945219, -0.130093, 0.299393,
		-0.262167, 0.848990, -0.458787,
		34.635117, 32.431927, 34.630497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139488, 31.704426, 34.604984>,  <34.818634, 31.837635, 34.951645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139488, 31.704426, 34.604984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.314518, 32.011463, 34.417652>,  <34.419537, 32.195686, 34.305252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.314518, 32.011463, 34.417652>,  <34.139488, 31.704426, 34.604984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314518, 32.011463, 34.417652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019114, -0.512779, -0.858308,
		-0.898980, 0.384523, -0.209706,
		0.437572, 0.767594, -0.468328,
		34.445789, 32.241741, 34.277153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781887, 31.710178, 34.022552>,  <34.139488, 31.704426, 34.604984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781887, 31.710178, 34.022552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.114334, 31.924040, 33.961372>,  <34.313801, 32.052357, 33.924664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.114334, 31.924040, 33.961372>,  <33.781887, 31.710178, 34.022552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114334, 31.924040, 33.961372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079244, -0.386092, -0.919050,
		-0.550427, 0.751715, -0.363255,
		0.831114, 0.534656, -0.152947,
		34.363667, 32.084438, 33.915489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742416, 32.066105, 33.278442>,  <33.781887, 31.710178, 34.022552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742416, 32.066105, 33.278442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.127640, 32.042187, 33.383465>,  <34.358776, 32.027836, 33.446476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.127640, 32.042187, 33.383465>,  <33.742416, 32.066105, 33.278442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127640, 32.042187, 33.383465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188820, -0.545203, -0.816763,
		0.191982, 0.836169, -0.513774,
		0.963063, -0.059793, 0.262554,
		34.416557, 32.024250, 33.462231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850830, 32.734333, 32.786518>,  <33.742416, 32.066105, 33.278442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850830, 32.734333, 32.786518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.587822, 32.922646, 32.551220>,  <33.430019, 33.035633, 32.410042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.587822, 32.922646, 32.551220>,  <33.850830, 32.734333, 32.786518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587822, 32.922646, 32.551220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293969, 0.558572, 0.775615,
		0.693724, 0.682908, -0.228876,
		-0.657517, 0.470780, -0.588249,
		33.390568, 33.063881, 32.374744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008980, 33.519814, 32.859577>,  <33.850830, 32.734333, 32.786518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008980, 33.519814, 32.859577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.631336, 33.468128, 32.738281>,  <33.404751, 33.437119, 32.665504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.631336, 33.468128, 32.738281>,  <34.008980, 33.519814, 32.859577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631336, 33.468128, 32.738281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319371, 0.586210, 0.744554,
		0.081559, 0.799789, -0.594714,
		-0.944113, -0.129209, -0.303241,
		33.348103, 33.429367, 32.647308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744812, 34.240547, 32.842659>,  <34.008980, 33.519814, 32.859577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744812, 34.240547, 32.842659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.418705, 34.009426, 32.858078>,  <33.223042, 33.870754, 32.867329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.418705, 34.009426, 32.858078>,  <33.744812, 34.240547, 32.842659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418705, 34.009426, 32.858078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285959, 0.459579, 0.840842,
		-0.503559, 0.674484, -0.539907,
		-0.815264, -0.577805, 0.038551,
		33.174126, 33.836086, 32.869644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132042, 34.611935, 32.896671>,  <33.744812, 34.240547, 32.842659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132042, 34.611935, 32.896671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.971413, 34.269768, 33.027512>,  <32.875034, 34.064468, 33.106014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.971413, 34.269768, 33.027512>,  <33.132042, 34.611935, 32.896671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971413, 34.269768, 33.027512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376463, 0.479776, 0.792521,
		-0.834876, 0.195111, -0.514698,
		-0.401569, -0.855421, 0.327102,
		32.850941, 34.013142, 33.125641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378925, 34.651260, 32.867477>,  <33.132042, 34.611935, 32.896671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378925, 34.651260, 32.867477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471954, 34.375210, 33.141594>,  <32.527771, 34.209579, 33.306065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471954, 34.375210, 33.141594>,  <32.378925, 34.651260, 32.867477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471954, 34.375210, 33.141594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364662, 0.591335, 0.719267,
		-0.901627, -0.417184, -0.114135,
		0.232574, -0.690131, 0.685294,
		32.541725, 34.168171, 33.347183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765507, 34.581699, 33.236195>,  <32.378925, 34.651260, 32.867477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765507, 34.581699, 33.236195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.007301, 34.399525, 33.497627>,  <32.152378, 34.290218, 33.654488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.007301, 34.399525, 33.497627>,  <31.765507, 34.581699, 33.236195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007301, 34.399525, 33.497627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361483, 0.574296, 0.734516,
		-0.709879, -0.680264, 0.182520,
		0.604485, -0.455440, 0.653584,
		32.188648, 34.262894, 33.693703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371824, 34.448429, 33.843964>,  <31.765507, 34.581699, 33.236195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371824, 34.448429, 33.843964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.735569, 34.407230, 34.005184>,  <31.953815, 34.382511, 34.101917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.735569, 34.407230, 34.005184>,  <31.371824, 34.448429, 33.843964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735569, 34.407230, 34.005184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297234, 0.516985, 0.802732,
		-0.291049, -0.849776, 0.439513,
		0.909364, -0.102996, 0.403050,
		32.008377, 34.376331, 34.126099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220167, 34.367615, 34.575390>,  <31.371824, 34.448429, 33.843964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220167, 34.367615, 34.575390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.588917, 34.511707, 34.518288>,  <31.810167, 34.598164, 34.484028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.588917, 34.511707, 34.518288>,  <31.220167, 34.367615, 34.575390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588917, 34.511707, 34.518288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210687, 0.775188, 0.595563,
		0.325204, -0.518957, 0.790522,
		0.921875, 0.360232, -0.142756,
		31.865479, 34.619778, 34.475460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528133, 34.478977, 35.247379>,  <31.220167, 34.367615, 34.575390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528133, 34.478977, 35.247379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.766153, 34.697544, 35.011635>,  <31.908964, 34.828682, 34.870186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.766153, 34.697544, 35.011635>,  <31.528133, 34.478977, 35.247379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766153, 34.697544, 35.011635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048417, 0.756363, 0.652358,
		0.802231, -0.359648, 0.476527,
		0.595047, 0.546414, -0.589365,
		31.944668, 34.861469, 34.834824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036320, 34.735046, 35.674549>,  <31.528133, 34.478977, 35.247379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036320, 34.735046, 35.674549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060730, 34.975937, 35.356155>,  <32.075378, 35.120472, 35.165119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060730, 34.975937, 35.356155>,  <32.036320, 34.735046, 35.674549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060730, 34.975937, 35.356155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050154, 0.794616, 0.605037,
		0.996875, -0.076847, 0.018291,
		0.061030, 0.602228, -0.795987,
		32.079041, 35.156605, 35.117359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560593, 35.159348, 35.881107>,  <32.036320, 34.735046, 35.674549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560593, 35.159348, 35.881107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.401592, 35.346378, 35.565292>,  <32.306194, 35.458599, 35.375805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.401592, 35.346378, 35.565292>,  <32.560593, 35.159348, 35.881107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401592, 35.346378, 35.565292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249262, 0.883098, 0.397499,
		0.883098, -0.038796, -0.467581,
		-0.397499, 0.467581, -0.789533,
		32.282341, 35.486652, 35.328434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098511, 35.711716, 35.566681>,  <32.560593, 35.159348, 35.881107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098511, 35.711716, 35.566681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.720268, 35.807095, 35.478168>,  <32.493320, 35.864323, 35.425060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.720268, 35.807095, 35.478168>,  <33.098511, 35.711716, 35.566681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720268, 35.807095, 35.478168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123851, 0.892893, 0.432900,
		0.300802, 0.381949, -0.873861,
		-0.945610, 0.238446, -0.221280,
		32.436584, 35.878628, 35.411785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122341, 36.399990, 35.395184>,  <33.098511, 35.711716, 35.566681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122341, 36.399990, 35.395184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732304, 36.359753, 35.474247>,  <32.498280, 36.335609, 35.521687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732304, 36.359753, 35.474247>,  <33.122341, 36.399990, 35.395184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732304, 36.359753, 35.474247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016241, 0.921214, 0.388718,
		-0.221194, 0.375827, -0.899904,
		-0.975095, -0.100598, 0.197663,
		32.439774, 36.329575, 35.533546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785328, 36.969952, 35.188660>,  <33.122341, 36.399990, 35.395184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785328, 36.969952, 35.188660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.507874, 36.829666, 35.440334>,  <32.341400, 36.745495, 35.591339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.507874, 36.829666, 35.440334>,  <32.785328, 36.969952, 35.188660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507874, 36.829666, 35.440334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229325, 0.935537, 0.268663,
		-0.682848, 0.042066, -0.729348,
		-0.693634, -0.350714, 0.629183,
		32.299782, 36.724453, 35.629089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417892, 36.886940, 34.838200>,  <32.785328, 36.969952, 35.188660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417892, 36.886940, 34.838200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.651043, 37.132217, 35.051464>,  <33.790932, 37.279385, 35.179420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.651043, 37.132217, 35.051464>,  <33.417892, 36.886940, 34.838200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651043, 37.132217, 35.051464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218806, 0.513462, -0.829747,
		-0.782550, 0.600295, 0.165113,
		0.582872, 0.613191, 0.533158,
		33.825905, 37.316174, 35.211411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142563, 37.624966, 34.899414>,  <33.417892, 36.886940, 34.838200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142563, 37.624966, 34.899414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538887, 37.579243, 34.870464>,  <33.776680, 37.551811, 34.853092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538887, 37.579243, 34.870464>,  <33.142563, 37.624966, 34.899414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538887, 37.579243, 34.870464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023635, 0.380499, -0.924479,
		0.133211, 0.917690, 0.374299,
		0.990806, -0.114304, -0.072376,
		33.836128, 37.544952, 34.848751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325821, 38.098858, 34.357922>,  <33.142563, 37.624966, 34.899414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325821, 38.098858, 34.357922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666740, 37.889683, 34.362190>,  <33.871292, 37.764175, 34.364754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666740, 37.889683, 34.362190>,  <33.325821, 38.098858, 34.357922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666740, 37.889683, 34.362190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117306, 0.171222, -0.978224,
		0.509727, 0.834994, 0.207277,
		0.852301, -0.522942, 0.010674,
		33.922432, 37.732800, 34.365391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898621, 38.515606, 33.988659>,  <33.325821, 38.098858, 34.357922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898621, 38.515606, 33.988659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997086, 38.128513, 33.967113>,  <34.056164, 37.896259, 33.954185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997086, 38.128513, 33.967113>,  <33.898621, 38.515606, 33.988659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997086, 38.128513, 33.967113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217079, 0.109209, -0.970026,
		0.944606, 0.227092, 0.236957,
		0.246163, -0.967731, -0.053863,
		34.070934, 37.838196, 33.950954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603413, 38.430283, 33.572048>,  <33.898621, 38.515606, 33.988659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603413, 38.430283, 33.572048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483158, 38.048817, 33.576900>,  <34.411007, 37.819939, 33.579811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483158, 38.048817, 33.576900>,  <34.603413, 38.430283, 33.572048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483158, 38.048817, 33.576900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367958, -0.127712, -0.921030,
		0.879901, -0.272430, 0.389303,
		-0.300635, -0.953662, 0.012131,
		34.392967, 37.762718, 33.580540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232666, 38.074310, 33.450947>,  <34.603413, 38.430283, 33.572048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232666, 38.074310, 33.450947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906857, 37.868210, 33.344311>,  <34.711372, 37.744549, 33.280327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906857, 37.868210, 33.344311>,  <35.232666, 38.074310, 33.450947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906857, 37.868210, 33.344311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481422, -0.343918, -0.806197,
		0.323707, -0.785008, 0.528182,
		-0.814522, -0.515250, -0.266592,
		34.662498, 37.713634, 33.264332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385189, 37.350636, 33.344646>,  <35.232666, 38.074310, 33.450947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385189, 37.350636, 33.344646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049362, 37.376762, 33.128922>,  <34.847866, 37.392437, 32.999485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049362, 37.376762, 33.128922>,  <35.385189, 37.350636, 33.344646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049362, 37.376762, 33.128922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503753, -0.278028, -0.817883,
		-0.203362, -0.958350, 0.200522,
		-0.839569, 0.065313, -0.539312,
		34.797493, 37.396358, 32.967129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443058, 36.793362, 32.888287>,  <35.385189, 37.350636, 33.344646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443058, 36.793362, 32.888287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140484, 37.009846, 32.741375>,  <34.958939, 37.139736, 32.653229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140484, 37.009846, 32.741375>,  <35.443058, 36.793362, 32.888287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140484, 37.009846, 32.741375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275100, -0.246183, -0.929362,
		-0.593399, -0.804042, 0.037335,
		-0.756438, 0.541211, -0.367277,
		34.913551, 37.172211, 32.631191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242634, 36.421478, 32.376030>,  <35.443058, 36.793362, 32.888287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242634, 36.421478, 32.376030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.081211, 36.775002, 32.281349>,  <34.984356, 36.987114, 32.224541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.081211, 36.775002, 32.281349>,  <35.242634, 36.421478, 32.376030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081211, 36.775002, 32.281349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157500, -0.187736, -0.969510,
		-0.901295, -0.428537, -0.063436,
		-0.403561, 0.883805, -0.236700,
		34.960144, 37.040142, 32.210339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704731, 36.328693, 31.801016>,  <35.242634, 36.421478, 32.376030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704731, 36.328693, 31.801016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837418, 36.706043, 31.801159>,  <34.917030, 36.932453, 31.801245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837418, 36.706043, 31.801159>,  <34.704731, 36.328693, 31.801016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837418, 36.706043, 31.801159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241681, -0.084615, -0.966660,
		-0.911895, 0.320747, -0.256065,
		0.331720, 0.943378, 0.000358,
		34.936935, 36.989056, 31.801266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381519, 36.616505, 31.196623>,  <34.704731, 36.328693, 31.801016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381519, 36.616505, 31.196623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.693188, 36.847542, 31.294012>,  <34.880188, 36.986164, 31.352446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.693188, 36.847542, 31.294012>,  <34.381519, 36.616505, 31.196623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693188, 36.847542, 31.294012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349568, -0.078000, -0.933659,
		-0.520285, 0.812589, -0.262683,
		0.779170, 0.577594, 0.243473,
		34.926937, 37.020821, 31.367054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415970, 36.945847, 30.701780>,  <34.381519, 36.616505, 31.196623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415970, 36.945847, 30.701780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.781696, 37.009739, 30.850647>,  <35.001133, 37.048073, 30.939966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.781696, 37.009739, 30.850647>,  <34.415970, 36.945847, 30.701780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781696, 37.009739, 30.850647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404294, -0.305932, -0.861947,
		-0.023818, 0.938559, -0.344296,
		0.914319, 0.159726, 0.372167,
		35.055992, 37.057655, 30.962297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778336, 37.339912, 30.273575>,  <34.415970, 36.945847, 30.701780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778336, 37.339912, 30.273575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088264, 37.189316, 30.476709>,  <35.274223, 37.098957, 30.598591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088264, 37.189316, 30.476709>,  <34.778336, 37.339912, 30.273575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088264, 37.189316, 30.476709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479777, -0.172893, -0.860187,
		0.411653, 0.910145, 0.046668,
		0.774826, -0.376489, 0.507839,
		35.320713, 37.076370, 30.629061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447105, 37.644806, 29.984268>,  <34.778336, 37.339912, 30.273575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447105, 37.644806, 29.984268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.584572, 37.316322, 30.166483>,  <35.667049, 37.119232, 30.275812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.584572, 37.316322, 30.166483>,  <35.447105, 37.644806, 29.984268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584572, 37.316322, 30.166483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552146, -0.215685, -0.805366,
		0.759626, 0.528296, 0.379304,
		0.343662, -0.821208, 0.455536,
		35.687672, 37.069962, 30.303144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223640, 37.559914, 29.798679>,  <35.447105, 37.644806, 29.984268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223640, 37.559914, 29.798679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.111645, 37.201408, 29.936268>,  <36.044449, 36.986305, 30.018822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.111645, 37.201408, 29.936268>,  <36.223640, 37.559914, 29.798679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111645, 37.201408, 29.936268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524924, -0.442926, -0.726822,
		0.803779, -0.022944, 0.594485,
		-0.279989, -0.896264, 0.343971,
		36.027649, 36.932529, 30.039459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805649, 37.163528, 29.922256>,  <36.223640, 37.559914, 29.798679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805649, 37.163528, 29.922256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525070, 36.881737, 29.879023>,  <36.356724, 36.712662, 29.853083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525070, 36.881737, 29.879023>,  <36.805649, 37.163528, 29.922256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525070, 36.881737, 29.879023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610404, -0.515513, -0.601377,
		0.367938, -0.487809, 0.791621,
		-0.701447, -0.704478, -0.108084,
		36.314636, 36.670395, 29.846598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177586, 36.498444, 29.936865>,  <36.805649, 37.163528, 29.922256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177586, 36.498444, 29.936865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.836121, 36.406910, 29.749718>,  <36.631241, 36.351990, 29.637430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.836121, 36.406910, 29.749718>,  <37.177586, 36.498444, 29.936865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836121, 36.406910, 29.749718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513025, -0.524384, -0.679578,
		-0.089830, -0.820156, 0.565045,
		-0.853660, -0.228836, -0.467866,
		36.580021, 36.338261, 29.609358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286335, 35.863289, 29.737564>,  <37.177586, 36.498444, 29.936865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286335, 35.863289, 29.737564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.956619, 35.920506, 29.518444>,  <36.758789, 35.954834, 29.386972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.956619, 35.920506, 29.518444>,  <37.286335, 35.863289, 29.737564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956619, 35.920506, 29.518444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324048, -0.674212, -0.663650,
		-0.464259, -0.724554, 0.509397,
		-0.824292, 0.143036, -0.547799,
		36.709332, 35.963417, 29.354105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075596, 35.221901, 29.505978>,  <37.286335, 35.863289, 29.737564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075596, 35.221901, 29.505978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927647, 35.476559, 29.235313>,  <36.838875, 35.629353, 29.072914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927647, 35.476559, 29.235313>,  <37.075596, 35.221901, 29.505978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927647, 35.476559, 29.235313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274484, -0.620921, -0.734244,
		-0.887609, -0.457312, 0.054914,
		-0.369876, 0.636649, -0.676661,
		36.816685, 35.667553, 29.032316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913933, 34.741596, 28.954557>,  <37.075596, 35.221901, 29.505978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913933, 34.741596, 28.954557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.891125, 35.093922, 28.766552>,  <36.877441, 35.305317, 28.653749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.891125, 35.093922, 28.766552>,  <36.913933, 34.741596, 28.954557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891125, 35.093922, 28.766552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295278, -0.434840, -0.850721,
		-0.953709, -0.187293, -0.235291,
		-0.057020, 0.880815, -0.470014,
		36.874020, 35.358166, 28.625547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574612, 34.539677, 28.342972>,  <36.913933, 34.741596, 28.954557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574612, 34.539677, 28.342972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742661, 34.896538, 28.276566>,  <36.843491, 35.110653, 28.236721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742661, 34.896538, 28.276566>,  <36.574612, 34.539677, 28.342972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742661, 34.896538, 28.276566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197343, -0.268386, -0.942881,
		-0.885750, 0.363365, -0.288815,
		0.420124, 0.892152, -0.166016,
		36.868698, 35.164185, 28.226761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269642, 34.815182, 27.739166>,  <36.574612, 34.539677, 28.342972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269642, 34.815182, 27.739166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.626343, 34.989227, 27.788887>,  <36.840363, 35.093655, 27.818720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.626343, 34.989227, 27.788887>,  <36.269642, 34.815182, 27.739166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626343, 34.989227, 27.788887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130198, 0.016370, -0.991353,
		-0.433387, 0.900226, -0.042053,
		0.891754, 0.435114, 0.124302,
		36.893867, 35.119762, 27.826178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424004, 35.253437, 27.181519>,  <36.269642, 34.815182, 27.739166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424004, 35.253437, 27.181519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776489, 35.155926, 27.343525>,  <36.987980, 35.097420, 27.440729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.776489, 35.155926, 27.343525>,  <36.424004, 35.253437, 27.181519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776489, 35.155926, 27.343525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305647, -0.359771, -0.881558,
		0.360618, 0.900631, -0.242524,
		0.881212, -0.243779, 0.405015,
		37.040852, 35.082790, 27.465029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935261, 35.404263, 26.632792>,  <36.424004, 35.253437, 27.181519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935261, 35.404263, 26.632792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125126, 35.170712, 26.896238>,  <37.239044, 35.030582, 27.054306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125126, 35.170712, 26.896238>,  <36.935261, 35.404263, 26.632792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125126, 35.170712, 26.896238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450190, -0.481942, -0.751705,
		0.756320, 0.653313, 0.034094,
		0.474667, -0.583878, 0.658618,
		37.267525, 34.995548, 27.093824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626915, 35.270912, 26.373308>,  <36.935261, 35.404263, 26.632792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626915, 35.270912, 26.373308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.611576, 34.976452, 26.643600>,  <37.602375, 34.799774, 26.805775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.611576, 34.976452, 26.643600>,  <37.626915, 35.270912, 26.373308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611576, 34.976452, 26.643600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349176, -0.643469, -0.681193,
		0.936272, 0.209829, 0.281720,
		-0.038344, -0.736152, 0.675729,
		37.600071, 34.755608, 26.846319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273083, 34.889011, 26.172108>,  <37.626915, 35.270912, 26.373308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273083, 34.889011, 26.172108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.050232, 34.657928, 26.410725>,  <37.916523, 34.519279, 26.553896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.050232, 34.657928, 26.410725>,  <38.273083, 34.889011, 26.172108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050232, 34.657928, 26.410725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288711, -0.808294, -0.513134,
		0.778623, -0.113653, 0.617113,
		-0.557128, -0.577705, 0.596544,
		37.883095, 34.484615, 26.589687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698036, 34.376965, 26.456032>,  <38.273083, 34.889011, 26.172108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698036, 34.376965, 26.456032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.326973, 34.227608, 26.458044>,  <38.104336, 34.137993, 26.459251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.326973, 34.227608, 26.458044>,  <38.698036, 34.376965, 26.456032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326973, 34.227608, 26.458044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271747, -0.684255, -0.676719,
		0.256121, -0.626399, 0.736224,
		-0.927661, -0.373389, 0.005030,
		38.048676, 34.115589, 26.459553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800373, 33.702419, 26.604975>,  <38.698036, 34.376965, 26.456032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800373, 33.702419, 26.604975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448605, 33.712578, 26.414831>,  <38.237541, 33.718674, 26.300745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.448605, 33.712578, 26.414831>,  <38.800373, 33.702419, 26.604975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448605, 33.712578, 26.414831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329605, -0.688001, -0.646541,
		-0.343469, -0.725266, 0.596673,
		-0.879426, 0.025400, -0.475358,
		38.184776, 33.720200, 26.272224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443890, 33.287060, 26.831650>,  <38.800373, 33.702419, 26.604975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443890, 33.287060, 26.831650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.828060, 33.177567, 26.852230>,  <40.058563, 33.111870, 26.864578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.828060, 33.177567, 26.852230>,  <39.443890, 33.287060, 26.831650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828060, 33.177567, 26.852230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070652, 0.418106, 0.905647,
		-0.269419, -0.866174, 0.420900,
		0.960428, -0.273735, 0.051449,
		40.116188, 33.095448, 26.867664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565025, 32.822945, 27.417038>,  <39.443890, 33.287060, 26.831650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565025, 32.822945, 27.417038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.887962, 33.046391, 27.340986>,  <40.081726, 33.180458, 27.295355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.887962, 33.046391, 27.340986>,  <39.565025, 32.822945, 27.417038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887962, 33.046391, 27.340986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119019, 0.469738, 0.874746,
		0.577958, -0.683590, 0.445725,
		0.807341, 0.558616, -0.190129,
		40.130165, 33.213974, 27.283947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971256, 32.840866, 28.078428>,  <39.565025, 32.822945, 27.417038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971256, 32.840866, 28.078428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.075886, 33.147984, 27.844479>,  <40.138664, 33.332253, 27.704109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.075886, 33.147984, 27.844479>,  <39.971256, 32.840866, 28.078428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075886, 33.147984, 27.844479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009602, 0.608010, 0.793871,
		0.965136, -0.202040, 0.166412,
		0.261574, 0.767791, -0.584873,
		40.154358, 33.378323, 27.669016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533615, 33.302204, 28.404352>,  <39.971256, 32.840866, 28.078428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533615, 33.302204, 28.404352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.359657, 33.538540, 28.132534>,  <40.255283, 33.680340, 27.969444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.359657, 33.538540, 28.132534>,  <40.533615, 33.302204, 28.404352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359657, 33.538540, 28.132534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074569, 0.728422, 0.681058,
		0.897389, 0.346861, -0.272728,
		-0.434893, 0.590837, -0.679543,
		40.229191, 33.715790, 27.928671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946899, 33.892673, 28.455276>,  <40.533615, 33.302204, 28.404352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946899, 33.892673, 28.455276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.620808, 34.029366, 28.268251>,  <40.425152, 34.111382, 28.156036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.620808, 34.029366, 28.268251>,  <40.946899, 33.892673, 28.455276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620808, 34.029366, 28.268251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025032, 0.785800, 0.617973,
		0.578591, 0.515497, -0.632056,
		-0.815234, 0.341732, -0.467561,
		40.376236, 34.131886, 28.127983>
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
