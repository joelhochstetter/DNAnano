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
	<24.162283, 34.670155, 34.753941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351385, 34.871006, 35.043594>,  <24.464848, 34.991516, 35.217384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351385, 34.871006, 35.043594>,  <24.162283, 34.670155, 34.753941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.351385, 34.871006, 35.043594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073019, -0.841260, 0.535677,
		0.878163, -0.200369, -0.434376,
		0.472757, 0.502130, 0.724132,
		24.493212, 35.021645, 35.260834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948130, 34.463169, 34.859970>,  <24.162283, 34.670155, 34.753941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948130, 34.463169, 34.859970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812349, 34.624817, 35.199726>,  <24.730881, 34.721806, 35.403580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.812349, 34.624817, 35.199726>,  <24.948130, 34.463169, 34.859970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.812349, 34.624817, 35.199726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445020, -0.726550, 0.523529,
		0.828692, 0.555706, 0.066785,
		-0.339451, 0.404124, 0.849386,
		24.710514, 34.746056, 35.454540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469734, 34.525871, 35.374981>,  <24.948130, 34.463169, 34.859970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469734, 34.525871, 35.374981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147884, 34.462070, 35.603764>,  <24.954775, 34.423790, 35.741032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147884, 34.462070, 35.603764>,  <25.469734, 34.525871, 35.374981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.147884, 34.462070, 35.603764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529272, -0.629301, 0.569079,
		0.269163, 0.760617, 0.590774,
		-0.804626, -0.159505, 0.571957,
		24.906496, 34.414219, 35.775352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441154, 34.703037, 36.149319>,  <25.469734, 34.525871, 35.374981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441154, 34.703037, 36.149319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207050, 34.382744, 36.098248>,  <25.066587, 34.190567, 36.067604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207050, 34.382744, 36.098248>,  <25.441154, 34.703037, 36.149319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.207050, 34.382744, 36.098248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517604, -0.490143, 0.701318,
		-0.624145, 0.344369, 0.701322,
		-0.585260, -0.800731, -0.127674,
		25.031473, 34.142525, 36.059944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.372156, 34.488697, 36.835686>,  <25.441154, 34.703037, 36.149319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.372156, 34.488697, 36.835686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265642, 34.182995, 36.600735>,  <25.201733, 33.999573, 36.459766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265642, 34.182995, 36.600735>,  <25.372156, 34.488697, 36.835686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.265642, 34.182995, 36.600735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438372, -0.638731, 0.632339,
		-0.858441, -0.089105, 0.505113,
		-0.266287, -0.764253, -0.587375,
		25.185757, 33.953720, 36.424522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.485708, 34.996033, 37.439270>,  <25.372156, 34.488697, 36.835686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.485708, 34.996033, 37.439270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858921, 35.131989, 37.392075>,  <26.082850, 35.213562, 37.363758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858921, 35.131989, 37.392075>,  <25.485708, 34.996033, 37.439270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858921, 35.131989, 37.392075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222850, 0.803415, 0.552142,
		0.282467, -0.488872, 0.825358,
		0.933033, 0.339893, -0.117993,
		26.138830, 35.233955, 37.356678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804508, 35.219742, 38.070213>,  <25.485708, 34.996033, 37.439270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804508, 35.219742, 38.070213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033466, 35.412617, 37.804928>,  <26.170841, 35.528343, 37.645756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033466, 35.412617, 37.804928>,  <25.804508, 35.219742, 38.070213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033466, 35.412617, 37.804928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123212, 0.850218, 0.511809,
		0.810668, -0.211241, 0.546072,
		0.572394, 0.482190, -0.663217,
		26.205185, 35.557274, 37.605961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289654, 35.680210, 38.540169>,  <25.804508, 35.219742, 38.070213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289654, 35.680210, 38.540169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229494, 35.826813, 38.172897>,  <26.193398, 35.914776, 37.952534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229494, 35.826813, 38.172897>,  <26.289654, 35.680210, 38.540169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229494, 35.826813, 38.172897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115382, 0.915888, 0.384495,
		0.981869, 0.163770, -0.095462,
		-0.150401, 0.366509, -0.918178,
		26.184374, 35.936764, 37.897446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782196, 36.117092, 38.523613>,  <26.289654, 35.680210, 38.540169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782196, 36.117092, 38.523613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518625, 36.229614, 38.244560>,  <26.360483, 36.297127, 38.077129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518625, 36.229614, 38.244560>,  <26.782196, 36.117092, 38.523613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518625, 36.229614, 38.244560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125232, 0.955522, 0.267011,
		0.741710, 0.088575, -0.664847,
		-0.658926, 0.281304, -0.697628,
		26.320948, 36.314007, 38.035271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043287, 36.771233, 38.098370>,  <26.782196, 36.117092, 38.523613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043287, 36.771233, 38.098370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643711, 36.775246, 38.080410>,  <26.403965, 36.777653, 38.069633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643711, 36.775246, 38.080410>,  <27.043287, 36.771233, 38.098370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643711, 36.775246, 38.080410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010605, 0.899413, 0.436971,
		0.044770, 0.436984, -0.898354,
		-0.998941, 0.010036, -0.044901,
		26.344028, 36.778255, 38.066940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869047, 37.490803, 38.033337>,  <27.043287, 36.771233, 38.098370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869047, 37.490803, 38.033337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506884, 37.348480, 38.125977>,  <26.289585, 37.263088, 38.181561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506884, 37.348480, 38.125977>,  <26.869047, 37.490803, 38.033337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506884, 37.348480, 38.125977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091022, 0.695538, 0.712701,
		-0.414673, 0.624203, -0.662131,
		-0.905407, -0.355806, 0.231604,
		26.235262, 37.241737, 38.195457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304850, 37.994637, 37.838760>,  <26.869047, 37.490803, 38.033337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304850, 37.994637, 37.838760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192467, 37.742989, 38.128662>,  <26.125036, 37.591999, 38.302605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192467, 37.742989, 38.128662>,  <26.304850, 37.994637, 37.838760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192467, 37.742989, 38.128662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049499, 0.763668, 0.643709,
		-0.958443, 0.144980, -0.245699,
		-0.280957, -0.629120, 0.724755,
		26.108179, 37.554253, 38.346088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404617, 38.516029, 38.510136>,  <26.304850, 37.994637, 37.838760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404617, 38.516029, 38.510136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037838, 38.675362, 38.500813>,  <25.817770, 38.770962, 38.495216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037838, 38.675362, 38.500813>,  <26.404617, 38.516029, 38.510136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.037838, 38.675362, 38.500813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300272, -0.650389, 0.697733,
		0.262764, 0.646784, 0.715979,
		-0.916947, 0.398327, -0.023312,
		25.762754, 38.794861, 38.493820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351068, 38.023827, 39.006458>,  <26.404617, 38.516029, 38.510136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351068, 38.023827, 39.006458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963058, 37.971607, 39.088440>,  <25.730251, 37.940277, 39.137627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963058, 37.971607, 39.088440>,  <26.351068, 38.023827, 39.006458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963058, 37.971607, 39.088440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024660, -0.786191, -0.617491,
		0.241744, -0.604037, 0.759407,
		-0.970027, -0.130547, 0.204952,
		25.672050, 37.932442, 39.149925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104595, 37.274910, 39.314453>,  <26.351068, 38.023827, 39.006458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104595, 37.274910, 39.314453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841129, 37.471466, 39.086525>,  <25.683050, 37.589401, 38.949768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841129, 37.471466, 39.086525>,  <26.104595, 37.274910, 39.314453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841129, 37.471466, 39.086525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000174, -0.757401, -0.652951,
		-0.752434, -0.429978, 0.498961,
		-0.658668, 0.491389, -0.569819,
		25.643530, 37.618885, 38.915577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479372, 36.778549, 39.217514>,  <26.104595, 37.274910, 39.314453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479372, 36.778549, 39.217514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584307, 37.025497, 38.920856>,  <25.647268, 37.173664, 38.742863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584307, 37.025497, 38.920856>,  <25.479372, 36.778549, 39.217514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584307, 37.025497, 38.920856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031099, -0.762753, -0.645942,
		-0.964475, 0.192520, -0.180900,
		0.262338, 0.617369, -0.741643,
		25.663008, 37.210709, 38.698364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.127174, 36.617058, 38.587845>,  <25.479372, 36.778549, 39.217514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.127174, 36.617058, 38.587845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449163, 36.815613, 38.457848>,  <25.642357, 36.934746, 38.379848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449163, 36.815613, 38.457848>,  <25.127174, 36.617058, 38.587845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449163, 36.815613, 38.457848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077943, -0.631488, -0.771459,
		-0.588167, 0.595674, -0.547021,
		0.804975, 0.496383, -0.324991,
		25.690657, 36.964527, 38.360352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024549, 36.745998, 37.858952>,  <25.127174, 36.617058, 38.587845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.024549, 36.745998, 37.858952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418648, 36.757801, 37.926384>,  <25.655107, 36.764881, 37.966843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418648, 36.757801, 37.926384>,  <25.024549, 36.745998, 37.858952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.418648, 36.757801, 37.926384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149299, -0.629694, -0.762362,
		0.083660, 0.776283, -0.624809,
		0.985247, 0.029504, 0.168579,
		25.714222, 36.766651, 37.976959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.339640, 36.751537, 37.220814>,  <25.024549, 36.745998, 37.858952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.339640, 36.751537, 37.220814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637035, 36.620617, 37.454086>,  <25.815472, 36.542065, 37.594048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637035, 36.620617, 37.454086>,  <25.339640, 36.751537, 37.220814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637035, 36.620617, 37.454086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225797, -0.697972, -0.679596,
		0.629477, 0.636951, -0.445030,
		0.743487, -0.327304, 0.583180,
		25.860081, 36.522427, 37.629040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844950, 36.417763, 36.762608>,  <25.339640, 36.751537, 37.220814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844950, 36.417763, 36.762608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950289, 36.265800, 37.117306>,  <26.013493, 36.174622, 37.330124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950289, 36.265800, 37.117306>,  <25.844950, 36.417763, 36.762608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950289, 36.265800, 37.117306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160030, -0.889252, -0.428510,
		0.951335, 0.254753, -0.173385,
		0.263347, -0.379909, 0.886745,
		26.029293, 36.151829, 37.383327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612093, 36.372723, 36.850708>,  <25.844950, 36.417763, 36.762608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612093, 36.372723, 36.850708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377920, 36.103943, 37.032146>,  <26.237415, 35.942673, 37.141010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377920, 36.103943, 37.032146>,  <26.612093, 36.372723, 36.850708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377920, 36.103943, 37.032146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290808, -0.696315, -0.656183,
		0.756768, -0.252243, 0.603056,
		-0.585434, -0.671952, 0.453594,
		26.202290, 35.902359, 37.168224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094221, 35.940453, 37.029560>,  <26.612093, 36.372723, 36.850708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094221, 35.940453, 37.029560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752741, 35.732155, 37.028095>,  <26.547852, 35.607174, 37.027218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752741, 35.732155, 37.028095>,  <27.094221, 35.940453, 37.029560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752741, 35.732155, 37.028095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454594, -0.741788, -0.493048,
		0.254040, -0.422579, 0.869995,
		-0.853703, -0.520748, -0.003658,
		26.496630, 35.575932, 37.026997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300390, 35.228165, 37.058624>,  <27.094221, 35.940453, 37.029560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300390, 35.228165, 37.058624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.928640, 35.273449, 36.918087>,  <26.705589, 35.300621, 36.833763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.928640, 35.273449, 36.918087>,  <27.300390, 35.228165, 37.058624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.928640, 35.273449, 36.918087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160351, -0.733487, -0.660519,
		-0.332485, -0.670209, 0.663531,
		-0.929377, 0.113215, -0.351342,
		26.649828, 35.307415, 36.812683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984598, 34.494373, 36.981209>,  <27.300390, 35.228165, 37.058624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984598, 34.494373, 36.981209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843386, 34.779446, 36.738739>,  <26.758657, 34.950489, 36.593258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843386, 34.779446, 36.738739>,  <26.984598, 34.494373, 36.981209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843386, 34.779446, 36.738739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187361, -0.688624, -0.700495,
		-0.916659, -0.133723, 0.376635,
		-0.353032, 0.712682, -0.606179,
		26.737476, 34.993252, 36.556885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424303, 34.386784, 37.383396>,  <26.984598, 34.494373, 36.981209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424303, 34.386784, 37.383396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539398, 34.632351, 37.677422>,  <27.608456, 34.779690, 37.853836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539398, 34.632351, 37.677422>,  <27.424303, 34.386784, 37.383396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539398, 34.632351, 37.677422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477388, -0.757309, 0.445627,
		0.830246, 0.222684, -0.510983,
		0.287739, 0.613917, 0.735059,
		27.625719, 34.816525, 37.897938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112219, 34.324078, 37.409134>,  <27.424303, 34.386784, 37.383396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112219, 34.324078, 37.409134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932318, 34.404129, 37.757313>,  <27.824377, 34.452160, 37.966221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932318, 34.404129, 37.757313>,  <28.112219, 34.324078, 37.409134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932318, 34.404129, 37.757313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369367, -0.845655, 0.385273,
		0.813199, 0.494791, 0.306415,
		-0.449751, 0.200124, 0.870445,
		27.797392, 34.464165, 38.018448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684462, 34.461567, 37.944386>,  <28.112219, 34.324078, 37.409134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684462, 34.461567, 37.944386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340059, 34.279873, 38.035892>,  <28.133417, 34.170856, 38.090797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340059, 34.279873, 38.035892>,  <28.684462, 34.461567, 37.944386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340059, 34.279873, 38.035892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486208, -0.867120, 0.108185,
		0.149224, 0.204375, 0.967452,
		-0.861007, -0.454239, 0.228764,
		28.081757, 34.143600, 38.104523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019440, 35.095917, 38.181587>,  <28.684462, 34.461567, 37.944386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019440, 35.095917, 38.181587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905697, 34.886814, 38.503048>,  <28.837452, 34.761353, 38.695927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905697, 34.886814, 38.503048>,  <29.019440, 35.095917, 38.181587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905697, 34.886814, 38.503048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107809, 0.850379, 0.515007,
		-0.952638, 0.059805, -0.298170,
		-0.284357, -0.522760, 0.803656,
		28.820389, 34.729984, 38.744144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587040, 35.375206, 37.767502>,  <29.019440, 35.095917, 38.181587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587040, 35.375206, 37.767502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939524, 35.195347, 37.825859>,  <30.151014, 35.087433, 37.860874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939524, 35.195347, 37.825859>,  <29.587040, 35.375206, 37.767502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939524, 35.195347, 37.825859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391850, -0.522161, 0.757497,
		-0.264426, -0.724683, -0.636328,
		0.881211, -0.449647, 0.145894,
		30.203886, 35.060452, 37.869625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504086, 34.580753, 37.808781>,  <29.587040, 35.375206, 37.767502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504086, 34.580753, 37.808781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806746, 34.726665, 38.025822>,  <29.988340, 34.814213, 38.156048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806746, 34.726665, 38.025822>,  <29.504086, 34.580753, 37.808781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806746, 34.726665, 38.025822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351681, -0.472544, 0.808098,
		0.551185, -0.802268, -0.229262,
		0.756648, 0.364784, 0.542601,
		30.033739, 34.836102, 38.188602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772490, 34.081612, 38.220150>,  <29.504086, 34.580753, 37.808781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772490, 34.081612, 38.220150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893839, 34.407291, 38.418159>,  <29.966648, 34.602699, 38.536964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893839, 34.407291, 38.418159>,  <29.772490, 34.081612, 38.220150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893839, 34.407291, 38.418159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260102, -0.429016, 0.865039,
		0.916685, -0.391185, 0.081623,
		0.303373, 0.814198, 0.495021,
		29.984850, 34.651550, 38.566666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150406, 33.815197, 38.771904>,  <29.772490, 34.081612, 38.220150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150406, 33.815197, 38.771904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061853, 34.185833, 38.893513>,  <30.008722, 34.408215, 38.966476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061853, 34.185833, 38.893513>,  <30.150406, 33.815197, 38.771904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061853, 34.185833, 38.893513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027786, -0.305635, 0.951743,
		0.974791, 0.219146, 0.041915,
		-0.221381, 0.926587, 0.304019,
		29.995440, 34.463810, 38.984718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695534, 34.006351, 39.202934>,  <30.150406, 33.815197, 38.771904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695534, 34.006351, 39.202934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323696, 34.141636, 39.261547>,  <30.100594, 34.222805, 39.296715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323696, 34.141636, 39.261547>,  <30.695534, 34.006351, 39.202934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323696, 34.141636, 39.261547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023624, -0.342053, 0.939384,
		0.367830, 0.876706, 0.309980,
		-0.929593, 0.338211, 0.146529,
		30.044819, 34.243099, 39.305508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845549, 34.259697, 39.818237>,  <30.695534, 34.006351, 39.202934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845549, 34.259697, 39.818237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450586, 34.207413, 39.782578>,  <30.213610, 34.176044, 39.761181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450586, 34.207413, 39.782578>,  <30.845549, 34.259697, 39.818237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450586, 34.207413, 39.782578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026157, -0.420851, 0.906753,
		-0.156038, 0.897664, 0.412131,
		-0.987405, -0.130708, -0.089149,
		30.154366, 34.168201, 39.755833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533785, 34.462051, 40.522327>,  <30.845549, 34.259697, 39.818237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533785, 34.462051, 40.522327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343906, 34.201763, 40.285271>,  <30.229980, 34.045589, 40.143036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343906, 34.201763, 40.285271>,  <30.533785, 34.462051, 40.522327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343906, 34.201763, 40.285271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231307, -0.557442, 0.797342,
		-0.849212, 0.515577, 0.114099,
		-0.474695, -0.650721, -0.592644,
		30.201498, 34.006546, 40.107479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948967, 34.260902, 40.908138>,  <30.533785, 34.462051, 40.522327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948967, 34.260902, 40.908138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014376, 33.976288, 40.634796>,  <30.053621, 33.805519, 40.470791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014376, 33.976288, 40.634796>,  <29.948967, 34.260902, 40.908138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014376, 33.976288, 40.634796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295837, -0.696168, 0.654087,
		-0.941138, 0.095205, -0.324337,
		0.163520, -0.711538, -0.683356,
		30.063433, 33.762825, 40.429790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577290, 34.020061, 40.259930>,  <29.948967, 34.260902, 40.908138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577290, 34.020061, 40.259930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701546, 34.395676, 40.318874>,  <29.776100, 34.621044, 40.354240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701546, 34.395676, 40.318874>,  <29.577290, 34.020061, 40.259930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701546, 34.395676, 40.318874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118586, 0.115539, -0.986199,
		-0.943101, 0.323830, -0.075465,
		0.310641, 0.939034, 0.147366,
		29.794739, 34.677387, 40.363083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252110, 34.371059, 39.691292>,  <29.577290, 34.020061, 40.259930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252110, 34.371059, 39.691292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583109, 34.555370, 39.819622>,  <29.781708, 34.665958, 39.896622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583109, 34.555370, 39.819622>,  <29.252110, 34.371059, 39.691292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583109, 34.555370, 39.819622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257554, 0.196232, -0.946128,
		-0.498911, 0.865550, 0.043707,
		0.827498, 0.460777, 0.320829,
		29.831358, 34.693604, 39.915871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205650, 35.141869, 39.463272>,  <29.252110, 34.371059, 39.691292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205650, 35.141869, 39.463272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575319, 34.991707, 39.491493>,  <29.797121, 34.901611, 39.508427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575319, 34.991707, 39.491493>,  <29.205650, 35.141869, 39.463272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575319, 34.991707, 39.491493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157700, 0.206744, -0.965602,
		0.347905, 0.903508, 0.250268,
		0.924171, -0.375406, 0.070556,
		29.852571, 34.879086, 39.512661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616209, 35.694046, 39.295441>,  <29.205650, 35.141869, 39.463272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616209, 35.694046, 39.295441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804373, 35.346252, 39.235161>,  <29.917271, 35.137577, 39.198994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804373, 35.346252, 39.235161>,  <29.616209, 35.694046, 39.295441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804373, 35.346252, 39.235161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245447, 0.292959, -0.924084,
		0.847627, 0.397707, 0.351223,
		0.470408, -0.869485, -0.150704,
		29.945496, 35.085407, 39.189949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300022, 35.821301, 39.026573>,  <29.616209, 35.694046, 39.295441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300022, 35.821301, 39.026573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186514, 35.457615, 38.904720>,  <30.118410, 35.239403, 38.831608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186514, 35.457615, 38.904720>,  <30.300022, 35.821301, 39.026573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186514, 35.457615, 38.904720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440445, 0.158604, -0.883659,
		0.851753, -0.384928, 0.355453,
		-0.283769, -0.909217, -0.304631,
		30.101383, 35.184849, 38.813332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928057, 35.296818, 38.988667>,  <30.300022, 35.821301, 39.026573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928057, 35.296818, 38.988667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640419, 35.193497, 38.730618>,  <30.467836, 35.131504, 38.575787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640419, 35.193497, 38.730618>,  <30.928057, 35.296818, 38.988667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640419, 35.193497, 38.730618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632987, 0.139623, -0.761468,
		0.286763, -0.955921, 0.063101,
		-0.719093, -0.258303, -0.645124,
		30.424690, 35.116005, 38.537079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292759, 34.778080, 38.625500>,  <30.928057, 35.296818, 38.988667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292759, 34.778080, 38.625500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004480, 34.950050, 38.407963>,  <30.831512, 35.053230, 38.277439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004480, 34.950050, 38.407963>,  <31.292759, 34.778080, 38.625500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004480, 34.950050, 38.407963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650435, 0.147916, -0.745020,
		-0.239858, -0.890667, -0.386239,
		-0.720696, 0.429922, -0.543842,
		30.788271, 35.079025, 38.244808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969534, 34.382519, 37.932484>,  <31.292759, 34.778080, 38.625500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969534, 34.382519, 37.932484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013964, 34.780018, 37.927845>,  <31.040621, 35.018517, 37.925060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013964, 34.780018, 37.927845>,  <30.969534, 34.382519, 37.932484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013964, 34.780018, 37.927845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639233, -0.080376, -0.764801,
		-0.760950, 0.077534, -0.644162,
		0.111073, 0.993745, -0.011600,
		31.047285, 35.078140, 37.924366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271526, 34.399990, 37.291969>,  <30.969534, 34.382519, 37.932484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271526, 34.399990, 37.291969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342318, 34.773056, 37.417709>,  <31.384792, 34.996895, 37.493153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342318, 34.773056, 37.417709>,  <31.271526, 34.399990, 37.291969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342318, 34.773056, 37.417709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382996, 0.228958, -0.894926,
		-0.906638, 0.278778, -0.316686,
		0.176978, 0.932663, 0.314353,
		31.395411, 35.052856, 37.512016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050335, 34.908218, 36.815395>,  <31.271526, 34.399990, 37.291969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050335, 34.908218, 36.815395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356546, 35.066040, 37.018688>,  <31.540272, 35.160732, 37.140663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356546, 35.066040, 37.018688>,  <31.050335, 34.908218, 36.815395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356546, 35.066040, 37.018688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388298, 0.346534, -0.853896,
		-0.513024, 0.851026, 0.112078,
		0.765526, 0.394549, 0.508232,
		31.586205, 35.184406, 37.171158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170109, 34.511353, 36.209286>,  <31.050335, 34.908218, 36.815395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170109, 34.511353, 36.209286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429457, 34.614006, 36.495991>,  <31.585066, 34.675598, 36.668015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429457, 34.614006, 36.495991>,  <31.170109, 34.511353, 36.209286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429457, 34.614006, 36.495991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679816, -0.618991, -0.393319,
		0.342733, 0.742286, -0.575800,
		0.648370, 0.256635, 0.716767,
		31.623968, 34.690998, 36.711021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828545, 34.836143, 35.866219>,  <31.170109, 34.511353, 36.209286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828545, 34.836143, 35.866219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873316, 34.622734, 36.201557>,  <31.900179, 34.494686, 36.402760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873316, 34.622734, 36.201557>,  <31.828545, 34.836143, 35.866219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873316, 34.622734, 36.201557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757210, -0.500537, -0.419639,
		0.643511, 0.681771, 0.347969,
		0.111926, -0.533527, 0.838344,
		31.906893, 34.462677, 36.453060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478367, 35.074265, 36.225605>,  <31.828545, 34.836143, 35.866219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478367, 35.074265, 36.225605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402695, 34.682076, 36.247086>,  <32.357292, 34.446762, 36.259975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402695, 34.682076, 36.247086>,  <32.478367, 35.074265, 36.225605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402695, 34.682076, 36.247086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970014, -0.195105, -0.144935,
		0.152582, 0.024672, 0.987983,
		-0.189185, -0.980472, 0.053702,
		32.345940, 34.387936, 36.263195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752430, 34.668957, 36.876823>,  <32.478367, 35.074265, 36.225605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752430, 34.668957, 36.876823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736710, 34.522869, 36.504787>,  <32.727276, 34.435215, 36.281567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736710, 34.522869, 36.504787>,  <32.752430, 34.668957, 36.876823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736710, 34.522869, 36.504787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997896, 0.033685, -0.055392,
		0.051561, -0.930311, 0.363128,
		-0.039300, -0.365220, -0.930091,
		32.724918, 34.413303, 36.225761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290497, 34.747353, 37.356476>,  <32.752430, 34.668957, 36.876823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290497, 34.747353, 37.356476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422825, 34.995975, 37.640514>,  <33.502220, 35.145149, 37.810936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422825, 34.995975, 37.640514>,  <33.290497, 34.747353, 37.356476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422825, 34.995975, 37.640514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865756, 0.099543, -0.490467,
		-0.375537, 0.777021, -0.505184,
		0.330815, 0.621555, 0.710092,
		33.522068, 35.182442, 37.853542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401817, 35.504642, 37.163719>,  <33.290497, 34.747353, 37.356476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401817, 35.504642, 37.163719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640049, 35.402264, 37.468292>,  <33.782986, 35.340836, 37.651035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640049, 35.402264, 37.468292>,  <33.401817, 35.504642, 37.163719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640049, 35.402264, 37.468292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802594, 0.229323, -0.550685,
		-0.033669, 0.939097, 0.341999,
		0.595575, -0.255945, 0.761434,
		33.818722, 35.325481, 37.696724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914261, 36.054451, 37.287460>,  <33.401817, 35.504642, 37.163719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914261, 36.054451, 37.287460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063915, 35.708672, 37.421772>,  <34.153709, 35.501205, 37.502357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063915, 35.708672, 37.421772>,  <33.914261, 36.054451, 37.287460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063915, 35.708672, 37.421772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895207, 0.242125, -0.374140,
		0.242125, 0.440573, 0.864449,
		0.374140, -0.864449, 0.335779,
		34.176159, 35.449337, 37.522507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473907, 36.061897, 37.782215>,  <33.914261, 36.054451, 37.287460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473907, 36.061897, 37.782215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514378, 35.743397, 37.543636>,  <34.538662, 35.552296, 37.400490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514378, 35.743397, 37.543636>,  <34.473907, 36.061897, 37.782215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514378, 35.743397, 37.543636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835555, 0.393431, -0.383484,
		0.540010, -0.459568, 0.705114,
		0.101177, -0.796247, -0.596451,
		34.544731, 35.504524, 37.364700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203068, 35.929073, 37.780697>,  <34.473907, 36.061897, 37.782215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203068, 35.929073, 37.780697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071232, 35.761711, 37.442158>,  <34.992130, 35.661293, 37.239033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071232, 35.761711, 37.442158>,  <35.203068, 35.929073, 37.780697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071232, 35.761711, 37.442158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838643, 0.282000, -0.465997,
		0.433647, -0.863373, 0.257949,
		-0.329587, -0.418405, -0.846351,
		34.972355, 35.636189, 37.188251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775864, 35.538849, 37.511890>,  <35.203068, 35.929073, 37.780697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775864, 35.538849, 37.511890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566517, 35.613995, 37.179436>,  <35.440910, 35.659084, 36.979961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566517, 35.613995, 37.179436>,  <35.775864, 35.538849, 37.511890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566517, 35.613995, 37.179436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844719, 0.242564, -0.477087,
		0.111976, -0.951771, -0.285645,
		-0.523365, 0.187867, -0.831141,
		35.409508, 35.670357, 36.930092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088074, 35.161118, 36.929398>,  <35.775864, 35.538849, 37.511890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088074, 35.161118, 36.929398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868977, 35.453949, 36.767387>,  <35.737518, 35.629646, 36.670181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868977, 35.453949, 36.767387>,  <36.088074, 35.161118, 36.929398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868977, 35.453949, 36.767387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829671, 0.412884, -0.375730,
		-0.107836, -0.541838, -0.833537,
		-0.547738, 0.732079, -0.405024,
		35.704655, 35.673573, 36.645882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377804, 35.278214, 36.223358>,  <36.088074, 35.161118, 36.929398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377804, 35.278214, 36.223358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165928, 35.602409, 36.323383>,  <36.038803, 35.796928, 36.383400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165928, 35.602409, 36.323383>,  <36.377804, 35.278214, 36.223358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165928, 35.602409, 36.323383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730900, 0.585747, -0.350265,
		-0.430360, -0.002761, -0.902653,
		-0.529694, 0.810489, 0.250065,
		36.007019, 35.845554, 36.398403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465630, 35.896320, 35.745319>,  <36.377804, 35.278214, 36.223358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465630, 35.896320, 35.745319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323250, 36.059902, 36.081429>,  <36.237823, 36.158051, 36.283092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323250, 36.059902, 36.081429>,  <36.465630, 35.896320, 35.745319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323250, 36.059902, 36.081429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633668, 0.766498, -0.104623,
		-0.686852, 0.495212, -0.531976,
		-0.355948, 0.408957, 0.840271,
		36.216465, 36.182590, 36.333511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291985, 36.544338, 35.562820>,  <36.465630, 35.896320, 35.745319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291985, 36.544338, 35.562820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388802, 36.491604, 35.947327>,  <36.446892, 36.459961, 36.178032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388802, 36.491604, 35.947327>,  <36.291985, 36.544338, 35.562820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388802, 36.491604, 35.947327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592361, 0.804739, -0.038785,
		-0.768454, 0.578804, 0.272881,
		0.242047, -0.131840, 0.961266,
		36.461414, 36.452053, 36.235706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314045, 37.241634, 35.846382>,  <36.291985, 36.544338, 35.562820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314045, 37.241634, 35.846382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537148, 37.020828, 36.094315>,  <36.671009, 36.888344, 36.243073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537148, 37.020828, 36.094315>,  <36.314045, 37.241634, 35.846382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537148, 37.020828, 36.094315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733965, 0.676725, -0.057781,
		-0.387558, 0.487161, 0.782606,
		0.557758, -0.552012, 0.619829,
		36.704475, 36.855225, 36.280262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965900, 37.131622, 36.529331>,  <36.314045, 37.241634, 35.846382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965900, 37.131622, 36.529331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003155, 36.812801, 36.290657>,  <36.025509, 36.621510, 36.147453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003155, 36.812801, 36.290657>,  <35.965900, 37.131622, 36.529331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003155, 36.812801, 36.290657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893899, -0.330867, 0.302442,
		-0.438486, 0.505205, -0.743302,
		0.093139, -0.797053, -0.596683,
		36.031097, 36.573685, 36.111652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344387, 36.738708, 36.795372>,  <35.965900, 37.131622, 36.529331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344387, 36.738708, 36.795372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499336, 36.526436, 36.493824>,  <35.592304, 36.399071, 36.312897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499336, 36.526436, 36.493824>,  <35.344387, 36.738708, 36.795372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499336, 36.526436, 36.493824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673305, -0.721428, 0.161870,
		-0.629763, 0.444879, -0.636775,
		0.387375, -0.530683, -0.753868,
		35.615547, 36.367229, 36.267662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938789, 36.559967, 36.177456>,  <35.344387, 36.738708, 36.795372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938789, 36.559967, 36.177456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186600, 36.263924, 36.282089>,  <35.335285, 36.086300, 36.344872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186600, 36.263924, 36.282089>,  <34.938789, 36.559967, 36.177456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186600, 36.263924, 36.282089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771293, -0.511998, 0.378106,
		-0.145907, -0.436007, -0.888036,
		0.619530, -0.740105, 0.261586,
		35.372459, 36.041893, 36.360565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679195, 35.953911, 35.917847>,  <34.938789, 36.559967, 36.177456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679195, 35.953911, 35.917847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896713, 35.853203, 36.238071>,  <35.027225, 35.792778, 36.430206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896713, 35.853203, 36.238071>,  <34.679195, 35.953911, 35.917847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896713, 35.853203, 36.238071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816338, -0.379921, 0.435032,
		0.194622, -0.890097, -0.412129,
		0.543797, -0.251770, 0.800560,
		35.059853, 35.777672, 36.478241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574478, 35.152805, 36.051186>,  <34.679195, 35.953911, 35.917847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574478, 35.152805, 36.051186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703434, 35.328842, 36.386417>,  <34.780807, 35.434464, 36.587559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703434, 35.328842, 36.386417>,  <34.574478, 35.152805, 36.051186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703434, 35.328842, 36.386417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615937, -0.574771, 0.538758,
		0.718810, -0.689896, 0.085771,
		0.322388, 0.440094, 0.838083,
		34.800152, 35.460869, 36.637844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789772, 34.801888, 36.068127>,  <34.574478, 35.152805, 36.051186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789772, 34.801888, 36.068127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883083, 35.057171, 35.774658>,  <33.939072, 35.210342, 35.598579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883083, 35.057171, 35.774658>,  <33.789772, 34.801888, 36.068127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883083, 35.057171, 35.774658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483259, -0.730808, -0.482060,
		-0.843825, -0.242096, -0.478904,
		0.233282, 0.638208, -0.733669,
		33.953068, 35.248634, 35.554558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479397, 34.571789, 35.391087>,  <33.789772, 34.801888, 36.068127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479397, 34.571789, 35.391087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816620, 34.779850, 35.336407>,  <34.018955, 34.904686, 35.303600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816620, 34.779850, 35.336407>,  <33.479397, 34.571789, 35.391087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816620, 34.779850, 35.336407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296008, -0.660984, -0.689550,
		-0.449030, 0.540868, -0.711220,
		0.843061, 0.520155, -0.136700,
		34.069538, 34.935898, 35.295395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721695, 34.381809, 34.710606>,  <33.479397, 34.571789, 35.391087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721695, 34.381809, 34.710606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056461, 34.577705, 34.808361>,  <34.257320, 34.695244, 34.867016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056461, 34.577705, 34.808361>,  <33.721695, 34.381809, 34.710606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056461, 34.577705, 34.808361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453642, -0.370846, -0.810359,
		-0.306232, 0.789070, -0.532533,
		0.836918, 0.489737, 0.244390,
		34.307537, 34.724628, 34.881680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916042, 34.836475, 34.021065>,  <33.721695, 34.381809, 34.710606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916042, 34.836475, 34.021065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212433, 34.757294, 34.277740>,  <34.390266, 34.709785, 34.431747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212433, 34.757294, 34.277740>,  <33.916042, 34.836475, 34.021065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212433, 34.757294, 34.277740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515572, -0.444568, -0.732492,
		0.430272, 0.873599, -0.227358,
		0.740981, -0.197951, 0.641688,
		34.434727, 34.697906, 34.470245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515789, 34.949215, 33.587498>,  <33.916042, 34.836475, 34.021065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515789, 34.949215, 33.587498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628021, 34.713074, 33.890221>,  <34.695362, 34.571388, 34.071854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628021, 34.713074, 33.890221>,  <34.515789, 34.949215, 33.587498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628021, 34.713074, 33.890221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546179, -0.550179, -0.631658,
		0.789280, 0.590584, 0.168067,
		0.280580, -0.590350, 0.756810,
		34.712196, 34.535969, 34.117264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234798, 34.911285, 33.494011>,  <34.515789, 34.949215, 33.587498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234798, 34.911285, 33.494011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180901, 34.586281, 33.720875>,  <35.148560, 34.391277, 33.856991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180901, 34.586281, 33.720875>,  <35.234798, 34.911285, 33.494011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180901, 34.586281, 33.720875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498977, -0.550148, -0.669596,
		0.856075, 0.192773, 0.479556,
		-0.134747, -0.812512, 0.567158,
		35.140476, 34.342525, 33.891022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921513, 34.516453, 33.442013>,  <35.234798, 34.911285, 33.494011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921513, 34.516453, 33.442013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639099, 34.268360, 33.578732>,  <35.469650, 34.119503, 33.660763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639099, 34.268360, 33.578732>,  <35.921513, 34.516453, 33.442013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639099, 34.268360, 33.578732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440070, -0.762401, -0.474429,
		0.554845, -0.184547, 0.811226,
		-0.706034, -0.620231, 0.341801,
		35.427288, 34.082291, 33.681271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299789, 33.950943, 33.599651>,  <35.921513, 34.516453, 33.442013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299789, 33.950943, 33.599651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927940, 33.803959, 33.588509>,  <35.704830, 33.715771, 33.581821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927940, 33.803959, 33.588509>,  <36.299789, 33.950943, 33.599651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927940, 33.803959, 33.588509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321849, -0.772765, -0.547035,
		0.179484, -0.517502, 0.836646,
		-0.929623, -0.367458, -0.027858,
		35.649052, 33.693722, 33.580151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313858, 33.188812, 33.747280>,  <36.299789, 33.950943, 33.599651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313858, 33.188812, 33.747280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992607, 33.285294, 33.529362>,  <35.799858, 33.343182, 33.398609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992607, 33.285294, 33.529362>,  <36.313858, 33.188812, 33.747280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992607, 33.285294, 33.529362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253584, -0.689054, -0.678896,
		-0.539147, -0.683393, 0.492234,
		-0.803129, 0.241202, -0.544799,
		35.751667, 33.357655, 33.365921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084606, 32.551804, 33.526703>,  <36.313858, 33.188812, 33.747280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084606, 32.551804, 33.526703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900806, 32.819412, 33.293030>,  <35.790527, 32.979977, 33.152824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900806, 32.819412, 33.293030>,  <36.084606, 32.551804, 33.526703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900806, 32.819412, 33.293030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039396, -0.641731, -0.765918,
		-0.887305, -0.374951, 0.268516,
		-0.459497, 0.669025, -0.584183,
		35.762959, 33.020119, 33.117775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492306, 32.205082, 33.132687>,  <36.084606, 32.551804, 33.526703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492306, 32.205082, 33.132687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596390, 32.524490, 32.915562>,  <35.658840, 32.716137, 32.785286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596390, 32.524490, 32.915562>,  <35.492306, 32.205082, 33.132687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596390, 32.524490, 32.915562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166868, -0.590915, -0.789287,
		-0.951022, 0.114806, -0.287013,
		0.260215, 0.798523, -0.542816,
		35.674454, 32.764046, 32.752716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994259, 32.449711, 32.610535>,  <35.492306, 32.205082, 33.132687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994259, 32.449711, 32.610535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370796, 32.517040, 32.493549>,  <35.596718, 32.557438, 32.423359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370796, 32.517040, 32.493549>,  <34.994259, 32.449711, 32.610535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370796, 32.517040, 32.493549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159962, -0.540549, -0.825966,
		-0.297123, 0.824302, -0.481917,
		0.941345, 0.168325, -0.292466,
		35.653198, 32.567539, 32.405811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053768, 32.050278, 31.872820>,  <34.994259, 32.449711, 32.610535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053768, 32.050278, 31.872820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413155, 32.225662, 31.881899>,  <35.628784, 32.330894, 31.887346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413155, 32.225662, 31.881899>,  <35.053768, 32.050278, 31.872820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413155, 32.225662, 31.881899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240788, -0.448862, -0.860549,
		-0.367131, 0.778637, -0.508862,
		0.898463, 0.438462, 0.022695,
		35.682693, 32.357201, 31.888708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296223, 32.195293, 31.265297>,  <35.053768, 32.050278, 31.872820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296223, 32.195293, 31.265297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645855, 32.188812, 31.459501>,  <35.855633, 32.184921, 31.576023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645855, 32.188812, 31.459501>,  <35.296223, 32.195293, 31.265297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645855, 32.188812, 31.459501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441312, -0.391253, -0.807567,
		0.203045, 0.920140, -0.334835,
		0.874080, -0.016206, 0.485511,
		35.908077, 32.183952, 31.605154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720066, 32.577312, 30.795500>,  <35.296223, 32.195293, 31.265297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720066, 32.577312, 30.795500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947189, 32.365410, 31.047516>,  <36.083462, 32.238266, 31.198727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947189, 32.365410, 31.047516>,  <35.720066, 32.577312, 30.795500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947189, 32.365410, 31.047516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576652, -0.290212, -0.763708,
		0.587427, 0.796952, 0.140702,
		0.567805, -0.529759, 0.630042,
		36.117531, 32.206482, 31.236528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424355, 32.795666, 30.727425>,  <35.720066, 32.577312, 30.795500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424355, 32.795666, 30.727425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424374, 32.415230, 30.850985>,  <36.424385, 32.186966, 30.925121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424374, 32.415230, 30.850985>,  <36.424355, 32.795666, 30.727425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424374, 32.415230, 30.850985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552102, -0.257531, -0.793008,
		0.833777, 0.170581, 0.525089,
		0.000045, -0.951094, 0.308901,
		36.424389, 32.129902, 30.943655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097412, 32.644627, 30.593872>,  <36.424355, 32.795666, 30.727425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097412, 32.644627, 30.593872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921886, 32.293053, 30.668617>,  <36.816570, 32.082108, 30.713465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921886, 32.293053, 30.668617>,  <37.097412, 32.644627, 30.593872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921886, 32.293053, 30.668617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430996, -0.388346, -0.814512,
		0.788470, -0.276882, 0.549228,
		-0.438815, -0.878933, 0.186864,
		36.790241, 32.029373, 30.724676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672276, 32.159576, 30.535789>,  <37.097412, 32.644627, 30.593872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672276, 32.159576, 30.535789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329437, 31.956182, 30.502729>,  <37.123734, 31.834146, 30.482893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329437, 31.956182, 30.502729>,  <37.672276, 32.159576, 30.535789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329437, 31.956182, 30.502729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339626, -0.437099, -0.832826,
		0.387351, -0.741882, 0.547330,
		-0.857096, -0.508483, -0.082652,
		37.072308, 31.803638, 30.477934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890965, 31.430038, 30.398085>,  <37.672276, 32.159576, 30.535789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890965, 31.430038, 30.398085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514210, 31.458055, 30.266663>,  <37.288158, 31.474867, 30.187809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514210, 31.458055, 30.266663>,  <37.890965, 31.430038, 30.398085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514210, 31.458055, 30.266663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228868, -0.582137, -0.780216,
		-0.245912, -0.810068, 0.532275,
		-0.941885, 0.070044, -0.328553,
		37.231644, 31.479069, 30.168097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608360, 30.806398, 30.177114>,  <37.890965, 31.430038, 30.398085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608360, 30.806398, 30.177114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378536, 31.053011, 29.961796>,  <37.240643, 31.200979, 29.832605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378536, 31.053011, 29.961796>,  <37.608360, 30.806398, 30.177114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378536, 31.053011, 29.961796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019995, -0.646926, -0.762290,
		-0.818215, -0.448748, 0.359373,
		-0.574564, 0.616532, -0.538297,
		37.206165, 31.237970, 29.800306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350204, 30.330971, 29.750280>,  <37.608360, 30.806398, 30.177114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350204, 30.330971, 29.750280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240997, 30.686535, 29.603146>,  <37.175472, 30.899874, 29.514866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240997, 30.686535, 29.603146>,  <37.350204, 30.330971, 29.750280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240997, 30.686535, 29.603146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050204, -0.395006, -0.917306,
		-0.960698, -0.231973, 0.152470,
		-0.273017, 0.888909, -0.367836,
		37.159092, 30.953207, 29.492794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673214, 30.201233, 29.230057>,  <37.350204, 30.330971, 29.750280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673214, 30.201233, 29.230057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878002, 30.534472, 29.146305>,  <37.000874, 30.734415, 29.096054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878002, 30.534472, 29.146305>,  <36.673214, 30.201233, 29.230057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878002, 30.534472, 29.146305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154459, -0.150492, -0.976470,
		-0.845004, 0.532261, 0.051633,
		0.511967, 0.833097, -0.209379,
		37.031593, 30.784401, 29.083490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528652, 30.306206, 28.568853>,  <36.673214, 30.201233, 29.230057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528652, 30.306206, 28.568853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821075, 30.578918, 28.558100>,  <36.996529, 30.742546, 28.551647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821075, 30.578918, 28.558100>,  <36.528652, 30.306206, 28.568853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821075, 30.578918, 28.558100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089720, -0.135114, -0.986760,
		-0.676388, 0.718969, -0.159946,
		0.731061, 0.681782, -0.026884,
		37.040394, 30.783453, 28.550035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413673, 30.583824, 27.867109>,  <36.528652, 30.306206, 28.568853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413673, 30.583824, 27.867109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786064, 30.658827, 27.992405>,  <37.009499, 30.703829, 28.067581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786064, 30.658827, 27.992405>,  <36.413673, 30.583824, 27.867109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786064, 30.658827, 27.992405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345213, -0.173033, -0.922436,
		-0.118763, 0.966903, -0.225820,
		0.930980, 0.187507, 0.313238,
		37.065357, 30.715078, 28.086376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623650, 30.943224, 27.334301>,  <36.413673, 30.583824, 27.867109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623650, 30.943224, 27.334301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939808, 30.778778, 27.515966>,  <37.129501, 30.680111, 27.624966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939808, 30.778778, 27.515966>,  <36.623650, 30.943224, 27.334301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939808, 30.778778, 27.515966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282673, -0.412967, -0.865768,
		0.543483, 0.812677, -0.210195,
		0.790394, -0.411114, 0.454163,
		37.176926, 30.655443, 27.652216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052334, 31.051907, 26.801708>,  <36.623650, 30.943224, 27.334301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052334, 31.051907, 26.801708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228504, 30.786409, 27.043526>,  <37.334206, 30.627111, 27.188616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228504, 30.786409, 27.043526>,  <37.052334, 31.051907, 26.801708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228504, 30.786409, 27.043526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274428, -0.541610, -0.794574,
		0.854819, 0.515853, -0.056389,
		0.440424, -0.663742, 0.604543,
		37.360630, 30.587286, 27.224888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736343, 30.920712, 26.587461>,  <37.052334, 31.051907, 26.801708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736343, 30.920712, 26.587461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703354, 30.598633, 26.822359>,  <37.683559, 30.405386, 26.963299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703354, 30.598633, 26.822359>,  <37.736343, 30.920712, 26.587461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703354, 30.598633, 26.822359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446597, -0.556635, -0.700506,
		0.890926, 0.204491, 0.405505,
		-0.082471, -0.805196, 0.587246,
		37.678612, 30.357075, 26.998533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403847, 30.660442, 26.805016>,  <37.736343, 30.920712, 26.587461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403847, 30.660442, 26.805016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119709, 30.379017, 26.796864>,  <37.949226, 30.210161, 26.791971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119709, 30.379017, 26.796864>,  <38.403847, 30.660442, 26.805016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119709, 30.379017, 26.796864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536157, -0.522107, -0.663280,
		0.456018, -0.482082, 0.748094,
		-0.710340, -0.703564, -0.020381,
		37.906609, 30.167948, 26.790749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740856, 30.000193, 26.862385>,  <38.403847, 30.660442, 26.805016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740856, 30.000193, 26.862385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384132, 29.896008, 26.714422>,  <38.170097, 29.833496, 26.625645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384132, 29.896008, 26.714422>,  <38.740856, 30.000193, 26.862385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384132, 29.896008, 26.714422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449069, -0.608784, -0.654002,
		-0.054850, -0.749361, 0.659887,
		-0.891812, -0.260462, -0.369906,
		38.116589, 29.817869, 26.603451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863853, 29.419039, 26.489353>,  <38.740856, 30.000193, 26.862385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863853, 29.419039, 26.489353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491196, 29.455524, 26.348658>,  <38.267601, 29.477415, 26.264240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491196, 29.455524, 26.348658>,  <38.863853, 29.419039, 26.489353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491196, 29.455524, 26.348658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287669, -0.406270, -0.867290,
		-0.222008, -0.909190, 0.352260,
		-0.931643, 0.091211, -0.351741,
		38.211704, 29.482887, 26.243135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746872, 28.779192, 26.154728>,  <38.863853, 29.419039, 26.489353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746872, 28.779192, 26.154728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477089, 29.028246, 25.996017>,  <38.315220, 29.177677, 25.900791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477089, 29.028246, 25.996017>,  <38.746872, 28.779192, 26.154728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477089, 29.028246, 25.996017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321013, -0.236649, -0.917032,
		-0.664872, -0.745872, -0.040263,
		-0.674460, 0.622634, -0.396776,
		38.274750, 29.215036, 25.876986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411369, 28.388409, 25.597445>,  <38.746872, 28.779192, 26.154728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411369, 28.388409, 25.597445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365353, 28.782043, 25.543270>,  <38.337742, 29.018225, 25.510765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365353, 28.782043, 25.543270>,  <38.411369, 28.388409, 25.597445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365353, 28.782043, 25.543270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567376, -0.046820, -0.822127,
		-0.815383, -0.171420, -0.552960,
		-0.115039, 0.984085, -0.135436,
		38.330841, 29.077269, 25.502640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250584, 28.355108, 24.932091>,  <38.411369, 28.388409, 25.597445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250584, 28.355108, 24.932091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358677, 28.730146, 25.019627>,  <38.423531, 28.955170, 25.072147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358677, 28.730146, 25.019627>,  <38.250584, 28.355108, 24.932091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358677, 28.730146, 25.019627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457618, 0.074900, -0.885988,
		-0.847090, 0.339565, -0.408821,
		0.270230, 0.937596, 0.218838,
		38.439747, 29.011425, 25.085278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280506, 28.683661, 24.259975>,  <38.250584, 28.355108, 24.932091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280506, 28.683661, 24.259975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488415, 28.928177, 24.498693>,  <38.613159, 29.074886, 24.641924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488415, 28.928177, 24.498693>,  <38.280506, 28.683661, 24.259975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488415, 28.928177, 24.498693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697468, 0.099759, -0.709638,
		-0.493329, 0.785095, -0.374502,
		0.519774, 0.611289, 0.596793,
		38.644348, 29.111563, 24.677731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505981, 29.357376, 23.819872>,  <38.280506, 28.683661, 24.259975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505981, 29.357376, 23.819872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758331, 29.323294, 24.128347>,  <38.909740, 29.302843, 24.313433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758331, 29.323294, 24.128347>,  <38.505981, 29.357376, 23.819872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758331, 29.323294, 24.128347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769956, 0.191376, -0.608722,
		-0.095719, 0.977811, 0.186341,
		0.630877, -0.085208, 0.771190,
		38.947594, 29.297731, 24.359705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897190, 29.894043, 23.734011>,  <38.505981, 29.357376, 23.819872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897190, 29.894043, 23.734011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105911, 29.684982, 24.003693>,  <39.231144, 29.559546, 24.165503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105911, 29.684982, 24.003693>,  <38.897190, 29.894043, 23.734011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105911, 29.684982, 24.003693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844905, 0.207604, -0.492986,
		0.117693, 0.826883, 0.549920,
		0.521807, -0.522652, 0.674205,
		39.262455, 29.528187, 24.205954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476807, 30.305151, 23.980244>,  <38.897190, 29.894043, 23.734011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476807, 30.305151, 23.980244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566097, 29.917538, 24.022472>,  <39.619671, 29.684971, 24.047810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566097, 29.917538, 24.022472>,  <39.476807, 30.305151, 23.980244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566097, 29.917538, 24.022472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939137, 0.184792, -0.289608,
		0.261130, 0.163794, 0.951306,
		0.223230, -0.969032, 0.105571,
		39.633068, 29.626827, 24.054144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087833, 30.307013, 24.339422>,  <39.476807, 30.305151, 23.980244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087833, 30.307013, 24.339422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043976, 29.957052, 24.150730>,  <40.017662, 29.747076, 24.037516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043976, 29.957052, 24.150730>,  <40.087833, 30.307013, 24.339422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043976, 29.957052, 24.150730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892111, 0.122659, -0.434847,
		0.438310, -0.468513, 0.767060,
		-0.109644, -0.874900, -0.471728,
		40.011082, 29.694582, 24.009212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819176, 29.934399, 24.340532>,  <40.087833, 30.307013, 24.339422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819176, 29.934399, 24.340532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625057, 29.735893, 24.052584>,  <40.508587, 29.616791, 23.879814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625057, 29.735893, 24.052584>,  <40.819176, 29.934399, 24.340532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625057, 29.735893, 24.052584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726476, 0.229284, -0.647812,
		0.486540, -0.837348, 0.249252,
		-0.485295, -0.496263, -0.719870,
		40.479469, 29.587015, 23.836622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319118, 29.708157, 23.949255>,  <40.819176, 29.934399, 24.340532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319118, 29.708157, 23.949255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999470, 29.652946, 23.715214>,  <40.807678, 29.619820, 23.574789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999470, 29.652946, 23.715214>,  <41.319118, 29.708157, 23.949255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999470, 29.652946, 23.715214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505300, 0.373064, -0.778136,
		0.325688, -0.917481, -0.228378,
		-0.799124, -0.138030, -0.585105,
		40.759731, 29.611538, 23.539682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540825, 29.294950, 23.380384>,  <41.319118, 29.708157, 23.949255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540825, 29.294950, 23.380384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218391, 29.497103, 23.257212>,  <41.024933, 29.618395, 23.183308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218391, 29.497103, 23.257212>,  <41.540825, 29.294950, 23.380384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218391, 29.497103, 23.257212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478884, 0.251308, -0.841139,
		-0.347709, -0.825491, -0.444593,
		-0.806082, 0.505380, -0.307932,
		40.976566, 29.648716, 23.164831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605717, 29.134024, 22.684402>,  <41.540825, 29.294950, 23.380384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605717, 29.134024, 22.684402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347668, 29.437773, 22.718277>,  <41.192837, 29.620022, 22.738602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347668, 29.437773, 22.718277>,  <41.605717, 29.134024, 22.684402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347668, 29.437773, 22.718277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311837, 0.362847, -0.878123,
		-0.697550, -0.540088, -0.470880,
		-0.645122, 0.759373, 0.084684,
		41.154133, 29.665585, 22.743683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349396, 29.258850, 22.039894>,  <41.605717, 29.134024, 22.684402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349396, 29.258850, 22.039894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274803, 29.601931, 22.231550>,  <41.230049, 29.807779, 22.346544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274803, 29.601931, 22.231550>,  <41.349396, 29.258850, 22.039894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274803, 29.601931, 22.231550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385308, 0.512473, -0.767404,
		-0.903750, 0.041513, -0.426044,
		-0.186479, 0.857700, 0.479142,
		41.218861, 29.859241, 22.375294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882935, 29.707251, 21.610502>,  <41.349396, 29.258850, 22.039894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882935, 29.707251, 21.610502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091167, 29.951880, 21.848822>,  <41.216106, 30.098656, 21.991814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091167, 29.951880, 21.848822>,  <40.882935, 29.707251, 21.610502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091167, 29.951880, 21.848822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323695, 0.504352, -0.800532,
		-0.790075, 0.609598, 0.064593,
		0.520580, 0.611571, 0.595799,
		41.247341, 30.135351, 22.027561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559429, 30.269491, 21.471138>,  <40.882935, 29.707251, 21.610502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559429, 30.269491, 21.471138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938450, 30.317904, 21.589455>,  <41.165863, 30.346951, 21.660444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938450, 30.317904, 21.589455>,  <40.559429, 30.269491, 21.471138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938450, 30.317904, 21.589455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187883, 0.537743, -0.821908,
		-0.258534, 0.834377, 0.486801,
		0.947555, 0.121030, 0.295790,
		41.222717, 30.354212, 21.678192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829391, 30.987064, 21.341022>,  <40.559429, 30.269491, 21.471138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829391, 30.987064, 21.341022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154655, 30.755232, 21.362400>,  <41.349815, 30.616133, 21.375227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154655, 30.755232, 21.362400>,  <40.829391, 30.987064, 21.341022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154655, 30.755232, 21.362400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451289, 0.569840, -0.686746,
		0.367572, 0.582553, 0.724930,
		0.813160, -0.579581, 0.053442,
		41.398605, 30.581358, 21.378433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433064, 31.324495, 21.540573>,  <40.829391, 30.987064, 21.341022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433064, 31.324495, 21.540573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520569, 31.023458, 21.292139>,  <41.573071, 30.842836, 21.143078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520569, 31.023458, 21.292139>,  <41.433064, 31.324495, 21.540573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520569, 31.023458, 21.292139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631352, 0.594485, -0.497978,
		0.744001, -0.283186, 0.605201,
		0.218762, -0.752591, -0.621087,
		41.586197, 30.797682, 21.105812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033585, 31.502209, 21.313446>,  <41.433064, 31.324495, 21.540573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033585, 31.502209, 21.313446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890606, 31.249168, 21.038622>,  <41.804821, 31.097345, 20.873728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890606, 31.249168, 21.038622>,  <42.033585, 31.502209, 21.313446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890606, 31.249168, 21.038622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472862, 0.511814, -0.717250,
		0.805380, -0.581261, 0.116188,
		-0.357443, -0.632600, -0.687060,
		41.783375, 31.059389, 20.832504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555977, 31.069061, 20.985083>,  <42.033585, 31.502209, 21.313446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555977, 31.069061, 20.985083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260971, 31.107983, 20.717770>,  <42.083965, 31.131334, 20.557383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260971, 31.107983, 20.717770>,  <42.555977, 31.069061, 20.985083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260971, 31.107983, 20.717770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598120, 0.553581, -0.579483,
		0.313563, -0.827092, -0.466473,
		-0.737516, 0.097303, -0.668283,
		42.039715, 31.137173, 20.517284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817677, 30.996637, 20.277210>,  <42.555977, 31.069061, 20.985083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817677, 30.996637, 20.277210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510075, 31.251989, 20.290459>,  <42.325512, 31.405201, 20.298407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510075, 31.251989, 20.290459>,  <42.817677, 30.996637, 20.277210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510075, 31.251989, 20.290459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424443, 0.548661, -0.720291,
		-0.477991, -0.539852, -0.692881,
		-0.769008, 0.638381, 0.033119,
		42.279373, 31.443504, 20.300394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268299, 31.378414, 19.710546>,  <42.817677, 30.996637, 20.277210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268299, 31.378414, 19.710546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530064, 31.107691, 19.845411>,  <43.687122, 30.945257, 19.926331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530064, 31.107691, 19.845411>,  <43.268299, 31.378414, 19.710546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530064, 31.107691, 19.845411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643468, 0.732647, 0.221761,
		-0.397110, 0.071830, 0.914956,
		0.654410, -0.676808, 0.337162,
		43.726387, 30.904648, 19.946560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657585, 31.658731, 20.262972>,  <43.268299, 31.378414, 19.710546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657585, 31.658731, 20.262972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888493, 31.353001, 20.148035>,  <44.027039, 31.169561, 20.079073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888493, 31.353001, 20.148035>,  <43.657585, 31.658731, 20.262972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888493, 31.353001, 20.148035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792974, 0.608699, -0.026061,
		0.194823, -0.212810, 0.957474,
		0.577267, -0.764328, -0.287341,
		44.061672, 31.123703, 20.061832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193710, 31.439236, 20.775940>,  <43.657585, 31.658731, 20.262972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193710, 31.439236, 20.775940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319538, 31.353821, 20.405977>,  <44.395035, 31.302572, 20.184000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319538, 31.353821, 20.405977>,  <44.193710, 31.439236, 20.775940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319538, 31.353821, 20.405977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772030, 0.624460, 0.118402,
		0.552283, -0.751300, 0.361292,
		0.314568, -0.213536, -0.924905,
		44.413910, 31.289761, 20.128506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503201, 31.362503, 21.110399>,  <44.193710, 31.439236, 20.775940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503201, 31.362503, 21.110399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171642, 31.239759, 21.297489>,  <42.972706, 31.166113, 21.409744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171642, 31.239759, 21.297489>,  <43.503201, 31.362503, 21.110399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171642, 31.239759, 21.297489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033807, 0.807113, 0.589428,
		-0.558379, 0.504387, -0.658639,
		-0.828896, -0.306858, 0.467727,
		42.922974, 31.147701, 21.437807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314594, 32.030594, 21.313686>,  <43.503201, 31.362503, 21.110399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314594, 32.030594, 21.313686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089844, 31.770802, 21.518612>,  <42.954994, 31.614925, 21.641567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089844, 31.770802, 21.518612>,  <43.314594, 32.030594, 21.313686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089844, 31.770802, 21.518612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393663, 0.754634, 0.524935,
		-0.727545, 0.093271, -0.679690,
		-0.561878, -0.649483, 0.512313,
		42.921280, 31.575956, 21.672306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605419, 32.308514, 21.346704>,  <43.314594, 32.030594, 21.313686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605419, 32.308514, 21.346704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638737, 32.035698, 21.637327>,  <42.658726, 31.872009, 21.811701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638737, 32.035698, 21.637327>,  <42.605419, 32.308514, 21.346704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638737, 32.035698, 21.637327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541820, 0.580913, 0.607430,
		-0.836357, -0.444257, -0.321157,
		0.083291, -0.682038, 0.726558,
		42.663723, 31.831087, 21.855295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954613, 32.291161, 21.804178>,  <42.605419, 32.308514, 21.346704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954613, 32.291161, 21.804178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222103, 32.124626, 22.050583>,  <42.382595, 32.024704, 22.198425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222103, 32.124626, 22.050583>,  <41.954613, 32.291161, 21.804178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222103, 32.124626, 22.050583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461472, 0.417207, 0.782932,
		-0.582968, -0.807838, 0.086868,
		0.668724, -0.416337, 0.616013,
		42.422722, 31.999725, 22.235386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585217, 32.042374, 22.361456>,  <41.954613, 32.291161, 21.804178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585217, 32.042374, 22.361456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948605, 32.056183, 22.528069>,  <42.166637, 32.064468, 22.628036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948605, 32.056183, 22.528069>,  <41.585217, 32.042374, 22.361456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948605, 32.056183, 22.528069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355100, 0.589369, 0.725636,
		-0.220438, -0.807126, 0.547682,
		0.908466, 0.034524, 0.416530,
		42.221146, 32.066540, 22.653027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487007, 31.908466, 23.050728>,  <41.585217, 32.042374, 22.361456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487007, 31.908466, 23.050728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825951, 32.117283, 23.011833>,  <42.029316, 32.242573, 22.988497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825951, 32.117283, 23.011833>,  <41.487007, 31.908466, 23.050728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825951, 32.117283, 23.011833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265200, 0.574676, 0.774220,
		0.460052, -0.630257, 0.625403,
		0.847361, 0.522039, -0.097237,
		42.080158, 32.273895, 22.982662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633484, 31.914068, 23.727215>,  <41.487007, 31.908466, 23.050728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633484, 31.914068, 23.727215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868397, 32.185825, 23.551250>,  <42.009346, 32.348881, 23.445671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868397, 32.185825, 23.551250>,  <41.633484, 31.914068, 23.727215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868397, 32.185825, 23.551250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151633, 0.626247, 0.764737,
		0.795053, -0.382410, 0.470802,
		0.587281, 0.679395, -0.439913,
		42.044582, 32.389645, 23.419277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144547, 32.088573, 24.255795>,  <41.633484, 31.914068, 23.727215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144547, 32.088573, 24.255795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149326, 32.373142, 23.974728>,  <42.152195, 32.543884, 23.806087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149326, 32.373142, 23.974728>,  <42.144547, 32.088573, 24.255795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149326, 32.373142, 23.974728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169674, 0.691082, 0.702579,
		0.985428, -0.127623, -0.112448,
		0.011954, 0.711420, -0.702665,
		42.152912, 32.586567, 23.763927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736015, 32.384731, 24.327967>,  <42.144547, 32.088573, 24.255795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736015, 32.384731, 24.327967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510506, 32.658566, 24.143145>,  <42.375198, 32.822865, 24.032251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510506, 32.658566, 24.143145>,  <42.736015, 32.384731, 24.327967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510506, 32.658566, 24.143145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008659, 0.564310, 0.825518,
		0.825881, 0.461408, -0.324073,
		-0.563779, 0.684585, -0.462057,
		42.341373, 32.863941, 24.004528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989201, 32.949844, 24.644951>,  <42.736015, 32.384731, 24.327967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989201, 32.949844, 24.644951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646969, 33.084049, 24.487263>,  <42.441628, 33.164574, 24.392649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.646969, 33.084049, 24.487263>,  <42.989201, 32.949844, 24.644951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646969, 33.084049, 24.487263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103346, 0.635504, 0.765150,
		0.507246, 0.695390, -0.509053,
		-0.855583, 0.335511, -0.394222,
		42.390293, 33.184704, 24.368996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067562, 33.631134, 24.640108>,  <42.989201, 32.949844, 24.644951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067562, 33.631134, 24.640108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679276, 33.535774, 24.651970>,  <42.446304, 33.478558, 24.659086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679276, 33.535774, 24.651970>,  <43.067562, 33.631134, 24.640108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679276, 33.535774, 24.651970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121106, 0.592224, 0.796620,
		-0.207473, 0.769700, -0.603752,
		-0.970715, -0.238395, 0.029655,
		42.388062, 33.464256, 24.660866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725826, 34.298546, 24.801136>,  <43.067562, 33.631134, 24.640108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725826, 34.298546, 24.801136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458763, 34.014606, 24.890886>,  <42.298527, 33.844242, 24.944736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458763, 34.014606, 24.890886>,  <42.725826, 34.298546, 24.801136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458763, 34.014606, 24.890886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340406, 0.559126, 0.755977,
		-0.662086, 0.428355, -0.614942,
		-0.667657, -0.709852, 0.224375,
		42.258465, 33.801651, 24.958199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060787, 34.611023, 24.777193>,  <42.725826, 34.298546, 24.801136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060787, 34.611023, 24.777193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012512, 34.288494, 25.008804>,  <41.983547, 34.094975, 25.147772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012512, 34.288494, 25.008804>,  <42.060787, 34.611023, 24.777193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012512, 34.288494, 25.008804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505813, 0.551841, 0.663042,
		-0.854159, -0.212860, -0.474449,
		-0.120685, -0.806326, 0.579028,
		41.976307, 34.046597, 25.182512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491875, 34.772678, 25.039265>,  <42.060787, 34.611023, 24.777193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491875, 34.772678, 25.039265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598022, 34.471478, 25.280119>,  <41.661713, 34.290756, 25.424631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598022, 34.471478, 25.280119>,  <41.491875, 34.772678, 25.039265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598022, 34.471478, 25.280119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580522, 0.373841, 0.723352,
		-0.769788, -0.541509, -0.337927,
		0.265370, -0.753002, 0.602136,
		41.677635, 34.245579, 25.460760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922657, 34.691044, 25.431709>,  <41.491875, 34.772678, 25.039265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922657, 34.691044, 25.431709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192745, 34.473152, 25.630646>,  <41.354797, 34.342419, 25.750008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192745, 34.473152, 25.630646>,  <40.922657, 34.691044, 25.431709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192745, 34.473152, 25.630646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565864, 0.049964, 0.822983,
		-0.473149, -0.837125, -0.274504,
		0.675224, -0.544726, 0.497339,
		41.395313, 34.309734, 25.779848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608418, 34.184944, 25.716259>,  <40.922657, 34.691044, 25.431709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608418, 34.184944, 25.716259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935802, 34.264866, 25.931738>,  <41.132233, 34.312817, 26.061026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935802, 34.264866, 25.931738>,  <40.608418, 34.184944, 25.716259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935802, 34.264866, 25.931738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572213, 0.198857, 0.795631,
		0.051846, -0.959445, 0.277087,
		0.818465, 0.199803, 0.538697,
		41.181343, 34.324806, 26.093348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561958, 33.809464, 26.308140>,  <40.608418, 34.184944, 25.716259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561958, 33.809464, 26.308140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813316, 34.111004, 26.384911>,  <40.964130, 34.291927, 26.430973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813316, 34.111004, 26.384911>,  <40.561958, 33.809464, 26.308140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813316, 34.111004, 26.384911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596680, 0.308808, 0.740682,
		0.499093, -0.579959, 0.643859,
		0.628394, 0.753847, 0.191926,
		41.001835, 34.337158, 26.442488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798073, 33.774281, 26.999413>,  <40.561958, 33.809464, 26.308140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798073, 33.774281, 26.999413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842350, 34.159904, 26.902803>,  <40.868916, 34.391281, 26.844839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842350, 34.159904, 26.902803>,  <40.798073, 33.774281, 26.999413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842350, 34.159904, 26.902803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641375, 0.254928, 0.723637,
		0.759201, 0.074807, 0.646543,
		0.110689, 0.964062, -0.241521,
		40.875557, 34.449123, 26.830347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825741, 34.182499, 27.679083>,  <40.798073, 33.774281, 26.999413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825741, 34.182499, 27.679083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747543, 34.460747, 27.402561>,  <40.700626, 34.627693, 27.236649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747543, 34.460747, 27.402561>,  <40.825741, 34.182499, 27.679083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747543, 34.460747, 27.402561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566526, 0.495291, 0.658585,
		0.800520, 0.520388, 0.297261,
		-0.195489, 0.695617, -0.691304,
		40.688896, 34.669434, 27.195169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013073, 34.815697, 27.937344>,  <40.825741, 34.182499, 27.679083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013073, 34.815697, 27.937344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743778, 34.910706, 27.657246>,  <40.582203, 34.967709, 27.489187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743778, 34.910706, 27.657246>,  <41.013073, 34.815697, 27.937344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743778, 34.910706, 27.657246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402425, 0.676779, 0.616462,
		0.620333, 0.696817, -0.360045,
		-0.673232, 0.237520, -0.700244,
		40.541809, 34.981960, 27.447172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918430, 35.419678, 28.244446>,  <41.013073, 34.815697, 27.937344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918430, 35.419678, 28.244446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621864, 35.368557, 27.980940>,  <40.443924, 35.337887, 27.822836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621864, 35.368557, 27.980940>,  <40.918430, 35.419678, 28.244446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621864, 35.368557, 27.980940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625316, 0.487777, 0.609142,
		0.243483, 0.863563, -0.441560,
		-0.741415, -0.127799, -0.658765,
		40.399441, 35.330219, 27.783310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720768, 36.082161, 27.977518>,  <40.918430, 35.419678, 28.244446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720768, 36.082161, 27.977518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396042, 35.857883, 27.912313>,  <40.201206, 35.723316, 27.873192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396042, 35.857883, 27.912313>,  <40.720768, 36.082161, 27.977518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396042, 35.857883, 27.912313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535448, 0.603487, 0.590847,
		-0.232911, 0.566943, -0.790145,
		-0.811818, -0.560696, -0.163009,
		40.152496, 35.689674, 27.863411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093235, 36.482021, 28.131462>,  <40.720768, 36.082161, 27.977518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093235, 36.482021, 28.131462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935356, 36.114498, 28.131010>,  <39.840630, 35.893982, 28.130739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935356, 36.114498, 28.131010>,  <40.093235, 36.482021, 28.131462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935356, 36.114498, 28.131010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620950, 0.265837, 0.737395,
		-0.677225, 0.291752, -0.675461,
		-0.394699, -0.918810, -0.001132,
		39.816948, 35.838856, 28.130671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351208, 36.546196, 28.082796>,  <40.093235, 36.482021, 28.131462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351208, 36.546196, 28.082796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439575, 36.205437, 28.272730>,  <39.492596, 36.000980, 28.386690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439575, 36.205437, 28.272730>,  <39.351208, 36.546196, 28.082796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439575, 36.205437, 28.272730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561584, 0.286941, 0.776072,
		-0.797383, -0.438108, -0.415021,
		0.220917, -0.851896, 0.474836,
		39.505852, 35.949867, 28.415180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697506, 36.427979, 28.404161>,  <39.351208, 36.546196, 28.082796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697506, 36.427979, 28.404161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969875, 36.206394, 28.595774>,  <39.133297, 36.073444, 28.710741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969875, 36.206394, 28.595774>,  <38.697506, 36.427979, 28.404161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969875, 36.206394, 28.595774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423991, 0.235143, 0.874608,
		-0.597144, -0.798643, -0.074763,
		0.680919, -0.553966, 0.479031,
		39.174152, 36.040203, 28.739483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357727, 35.892040, 28.710199>,  <38.697506, 36.427979, 28.404161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357727, 35.892040, 28.710199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691456, 35.929619, 28.927483>,  <38.891693, 35.952168, 29.057854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691456, 35.929619, 28.927483>,  <38.357727, 35.892040, 28.710199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691456, 35.929619, 28.927483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545384, -0.003002, 0.838181,
		0.080379, -0.995572, 0.048735,
		0.834324, 0.093951, 0.543210,
		38.941753, 35.957802, 29.090446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171665, 35.510357, 29.257502>,  <38.357727, 35.892040, 28.710199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171665, 35.510357, 29.257502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489243, 35.692715, 29.418406>,  <38.679790, 35.802128, 29.514948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489243, 35.692715, 29.418406>,  <38.171665, 35.510357, 29.257502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489243, 35.692715, 29.418406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474139, 0.050111, 0.879023,
		0.380581, -0.888623, 0.255942,
		0.793946, 0.455892, 0.402259,
		38.727425, 35.829483, 29.539083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412659, 35.034286, 29.702478>,  <38.171665, 35.510357, 29.257502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412659, 35.034286, 29.702478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569759, 35.365383, 29.862768>,  <38.664021, 35.564041, 29.958942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569759, 35.365383, 29.862768>,  <38.412659, 35.034286, 29.702478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569759, 35.365383, 29.862768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577019, -0.117489, 0.808236,
		0.716094, -0.548665, 0.431481,
		0.392756, 0.827746, 0.400723,
		38.687588, 35.613708, 29.982985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582470, 34.742092, 30.319969>,  <38.412659, 35.034286, 29.702478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582470, 34.742092, 30.319969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565403, 35.141441, 30.335051>,  <38.555164, 35.381050, 30.344099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565403, 35.141441, 30.335051>,  <38.582470, 34.742092, 30.319969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565403, 35.141441, 30.335051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453916, -0.052988, 0.889468,
		0.890023, 0.020835, 0.455440,
		-0.042665, 0.998378, 0.037703,
		38.552605, 35.440956, 30.346361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800980, 34.947578, 30.958590>,  <38.582470, 34.742092, 30.319969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800980, 34.947578, 30.958590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617825, 35.290939, 30.866077>,  <38.507931, 35.496956, 30.810570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617825, 35.290939, 30.866077>,  <38.800980, 34.947578, 30.958590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617825, 35.290939, 30.866077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425711, 0.016674, 0.904705,
		0.780457, 0.512708, 0.357796,
		-0.457883, 0.858401, -0.231279,
		38.480461, 35.548458, 30.796694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042419, 35.523479, 31.468842>,  <38.800980, 34.947578, 30.958590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042419, 35.523479, 31.468842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686470, 35.637955, 31.326727>,  <38.472900, 35.706638, 31.241459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686470, 35.637955, 31.326727>,  <39.042419, 35.523479, 31.468842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686470, 35.637955, 31.326727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285781, 0.257361, 0.923090,
		0.355616, 0.922963, -0.147230,
		-0.889869, 0.286190, -0.355287,
		38.419510, 35.723812, 31.220140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842014, 36.057648, 31.854683>,  <39.042419, 35.523479, 31.468842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842014, 36.057648, 31.854683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494228, 35.931778, 31.702366>,  <38.285557, 35.856255, 31.610975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494228, 35.931778, 31.702366>,  <38.842014, 36.057648, 31.854683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494228, 35.931778, 31.702366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465885, 0.266055, 0.843899,
		-0.164244, 0.911149, -0.377930,
		-0.869468, -0.314677, -0.380793,
		38.233387, 35.837376, 31.588127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426365, 36.611511, 31.801805>,  <38.842014, 36.057648, 31.854683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426365, 36.611511, 31.801805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164825, 36.308914, 31.807570>,  <38.007904, 36.127357, 31.811028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164825, 36.308914, 31.807570>,  <38.426365, 36.611511, 31.801805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164825, 36.308914, 31.807570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492870, 0.440289, 0.750483,
		-0.574077, 0.483599, -0.660733,
		-0.653846, -0.756490, 0.014408,
		37.968670, 36.081966, 31.811892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766174, 36.901901, 31.736301>,  <38.426365, 36.611511, 31.801805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766174, 36.901901, 31.736301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718102, 36.545849, 31.912132>,  <37.689259, 36.332218, 32.017632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718102, 36.545849, 31.912132>,  <37.766174, 36.901901, 31.736301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718102, 36.545849, 31.912132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576489, 0.423054, 0.699061,
		-0.808219, -0.169399, -0.563992,
		-0.120179, -0.890129, 0.439577,
		37.682049, 36.278809, 32.044006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005703, 36.918522, 32.034973>,  <37.766174, 36.901901, 31.736301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005703, 36.918522, 32.034973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196209, 36.621696, 32.223656>,  <37.310513, 36.443600, 32.336864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196209, 36.621696, 32.223656>,  <37.005703, 36.918522, 32.034973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196209, 36.621696, 32.223656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538071, 0.178333, 0.823818,
		-0.695450, -0.646168, -0.314351,
		0.476266, -0.742067, 0.471706,
		37.339088, 36.399075, 32.365166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471012, 36.660679, 32.433216>,  <37.005703, 36.918522, 32.034973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471012, 36.660679, 32.433216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786972, 36.488136, 32.607567>,  <36.976547, 36.384613, 32.712177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786972, 36.488136, 32.607567>,  <36.471012, 36.660679, 32.433216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786972, 36.488136, 32.607567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501964, -0.046512, 0.863637,
		-0.352258, -0.900984, -0.253264,
		0.789903, -0.431352, 0.435877,
		37.023941, 36.358730, 32.738331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186405, 36.038929, 32.748299>,  <36.471012, 36.660679, 32.433216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186405, 36.038929, 32.748299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541298, 36.090717, 32.925411>,  <36.754234, 36.121792, 33.031681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541298, 36.090717, 32.925411>,  <36.186405, 36.038929, 32.748299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541298, 36.090717, 32.925411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333448, -0.483300, 0.809465,
		0.318800, -0.865828, -0.385627,
		0.887231, 0.129471, 0.442785,
		36.807468, 36.129559, 33.058247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340469, 35.429665, 33.059353>,  <36.186405, 36.038929, 32.748299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340469, 35.429665, 33.059353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587574, 35.690426, 33.235256>,  <36.735836, 35.846882, 33.340797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587574, 35.690426, 33.235256>,  <36.340469, 35.429665, 33.059353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587574, 35.690426, 33.235256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438448, -0.178688, 0.880814,
		0.652789, -0.736944, 0.175441,
		0.617762, 0.651908, 0.439758,
		36.772903, 35.885998, 33.367184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695560, 35.152039, 33.664761>,  <36.340469, 35.429665, 33.059353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695560, 35.152039, 33.664761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672379, 35.547520, 33.720066>,  <36.658470, 35.784809, 33.753250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672379, 35.547520, 33.720066>,  <36.695560, 35.152039, 33.664761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672379, 35.547520, 33.720066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501750, -0.148577, 0.852157,
		0.863069, -0.019987, 0.504690,
		-0.057953, 0.988699, 0.138261,
		36.654991, 35.844128, 33.761543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630688, 35.095268, 34.400150>,  <36.695560, 35.152039, 33.664761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630688, 35.095268, 34.400150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546844, 35.470131, 34.288582>,  <36.496536, 35.695049, 34.221642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546844, 35.470131, 34.288582>,  <36.630688, 35.095268, 34.400150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546844, 35.470131, 34.288582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399835, 0.178166, 0.899105,
		0.892297, 0.299986, 0.337363,
		-0.209613, 0.937158, -0.278922,
		36.483959, 35.751278, 34.204906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467068, 35.091557, 34.553905>,  <36.630688, 35.095268, 34.400150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467068, 35.091557, 34.553905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771099, 35.018005, 34.803211>,  <37.953518, 34.973873, 34.952797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771099, 35.018005, 34.803211>,  <37.467068, 35.091557, 34.553905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771099, 35.018005, 34.803211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610305, -0.127384, -0.781857,
		0.223162, 0.974660, 0.015401,
		0.760083, -0.183880, 0.623267,
		37.999123, 34.962841, 34.990192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030361, 35.542686, 34.381966>,  <37.467068, 35.091557, 34.553905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030361, 35.542686, 34.381966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201042, 35.238663, 34.578018>,  <38.303452, 35.056248, 34.695652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201042, 35.238663, 34.578018>,  <38.030361, 35.542686, 34.381966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201042, 35.238663, 34.578018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786448, 0.044237, -0.616070,
		0.446570, 0.648343, 0.616626,
		0.426702, -0.760063, 0.490133,
		38.329052, 35.010643, 34.725060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703255, 35.705017, 34.422161>,  <38.030361, 35.542686, 34.381966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703255, 35.705017, 34.422161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697994, 35.309578, 34.482162>,  <38.694836, 35.072315, 34.518162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697994, 35.309578, 34.482162>,  <38.703255, 35.705017, 34.422161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697994, 35.309578, 34.482162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826906, -0.095099, -0.554241,
		0.562187, 0.116748, 0.818728,
		-0.013154, -0.988598, 0.150003,
		38.694050, 35.012997, 34.527164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350018, 35.516357, 34.596302>,  <38.703255, 35.705017, 34.422161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350018, 35.516357, 34.596302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181740, 35.176952, 34.467903>,  <39.080772, 34.973309, 34.390865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181740, 35.176952, 34.467903>,  <39.350018, 35.516357, 34.596302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181740, 35.176952, 34.467903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728444, -0.105047, -0.677003,
		0.540729, -0.518637, 0.662289,
		-0.420691, -0.848516, -0.320997,
		39.055534, 34.922398, 34.371605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921589, 35.151226, 34.529560>,  <39.350018, 35.516357, 34.596302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921589, 35.151226, 34.529560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651409, 34.955196, 34.309158>,  <39.489304, 34.837578, 34.176918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651409, 34.955196, 34.309158>,  <39.921589, 35.151226, 34.529560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651409, 34.955196, 34.309158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648945, -0.040179, -0.759773,
		0.350206, -0.870754, 0.345170,
		-0.675445, -0.490074, -0.551001,
		39.448776, 34.808174, 34.143860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264236, 34.567322, 34.250366>,  <39.921589, 35.151226, 34.529560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264236, 34.567322, 34.250366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945133, 34.609959, 34.012974>,  <39.753670, 34.635540, 33.870537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945133, 34.609959, 34.012974>,  <40.264236, 34.567322, 34.250366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945133, 34.609959, 34.012974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595377, -0.016527, -0.803276,
		-0.095435, -0.994165, -0.050280,
		-0.797758, 0.106596, -0.593481,
		39.705807, 34.641937, 33.834930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315895, 34.088123, 33.646099>,  <40.264236, 34.567322, 34.250366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315895, 34.088123, 33.646099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049873, 34.366081, 33.536690>,  <39.890259, 34.532856, 33.471043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049873, 34.366081, 33.536690>,  <40.315895, 34.088123, 33.646099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049873, 34.366081, 33.536690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495986, 0.137193, -0.857424,
		-0.558297, -0.705900, -0.435901,
		-0.665058, 0.694898, -0.273522,
		39.850357, 34.574551, 33.454632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146500, 33.891129, 32.997681>,  <40.315895, 34.088123, 33.646099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146500, 33.891129, 32.997681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059761, 34.276173, 33.062626>,  <40.007717, 34.507198, 33.101593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059761, 34.276173, 33.062626>,  <40.146500, 33.891129, 32.997681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059761, 34.276173, 33.062626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521792, 0.254861, -0.814112,
		-0.825051, -0.091820, -0.557548,
		-0.216849, 0.962608, 0.162362,
		39.994705, 34.564957, 33.111336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958435, 34.115791, 32.267578>,  <40.146500, 33.891129, 32.997681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958435, 34.115791, 32.267578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026848, 34.460365, 32.458858>,  <40.067894, 34.667110, 32.573627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026848, 34.460365, 32.458858>,  <39.958435, 34.115791, 32.267578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026848, 34.460365, 32.458858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378251, 0.390754, -0.839188,
		-0.909767, 0.324406, -0.259009,
		0.171029, 0.861436, 0.478202,
		40.078156, 34.718796, 32.602318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757309, 34.591118, 31.850414>,  <39.958435, 34.115791, 32.267578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757309, 34.591118, 31.850414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005116, 34.791515, 32.092140>,  <40.153801, 34.911755, 32.237175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005116, 34.791515, 32.092140>,  <39.757309, 34.591118, 31.850414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005116, 34.791515, 32.092140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460971, 0.390936, -0.796665,
		-0.635374, 0.772123, 0.011248,
		0.619520, 0.500995, 0.604317,
		40.190971, 34.941814, 32.273434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805153, 35.179207, 31.559010>,  <39.757309, 34.591118, 31.850414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805153, 35.179207, 31.559010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134377, 35.172611, 31.786097>,  <40.331909, 35.168655, 31.922350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134377, 35.172611, 31.786097>,  <39.805153, 35.179207, 31.559010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134377, 35.172611, 31.786097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516993, 0.435597, -0.736868,
		-0.235148, 0.899991, 0.367044,
		0.823058, -0.016486, 0.567719,
		40.381294, 35.167664, 31.956411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085953, 35.733891, 31.382298>,  <39.805153, 35.179207, 31.559010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085953, 35.733891, 31.382298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371918, 35.498947, 31.534040>,  <40.543495, 35.357983, 31.625086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371918, 35.498947, 31.534040>,  <40.085953, 35.733891, 31.382298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371918, 35.498947, 31.534040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581293, 0.197748, -0.789300,
		0.388585, 0.784797, 0.482799,
		0.714913, -0.587358, 0.379355,
		40.586391, 35.322739, 31.647846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806213, 36.110992, 31.403315>,  <40.085953, 35.733891, 31.382298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806213, 36.110992, 31.403315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880867, 35.718105, 31.411375>,  <40.925659, 35.482372, 31.416212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880867, 35.718105, 31.411375>,  <40.806213, 36.110992, 31.403315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880867, 35.718105, 31.411375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675085, 0.113320, -0.728985,
		0.713742, 0.149660, 0.684233,
		0.186637, -0.982222, 0.020152,
		40.936859, 35.423439, 31.417421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517662, 36.097000, 31.267515>,  <40.806213, 36.110992, 31.403315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517662, 36.097000, 31.267515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405170, 35.718147, 31.205740>,  <41.337673, 35.490837, 31.168674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405170, 35.718147, 31.205740>,  <41.517662, 36.097000, 31.267515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405170, 35.718147, 31.205740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750331, -0.116696, -0.650680,
		0.598257, -0.298872, 0.743481,
		-0.281231, -0.947131, -0.154439,
		41.320801, 35.434010, 31.159409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174271, 35.816410, 31.147089>,  <41.517662, 36.097000, 31.267515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174271, 35.816410, 31.147089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905464, 35.552647, 31.012283>,  <41.744179, 35.394390, 30.931400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905464, 35.552647, 31.012283>,  <42.174271, 35.816410, 31.147089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905464, 35.552647, 31.012283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642491, -0.292870, -0.708120,
		0.368236, -0.692397, 0.620475,
		-0.672018, -0.659404, -0.337014,
		41.703857, 35.354824, 30.911179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660484, 35.331394, 30.981527>,  <42.174271, 35.816410, 31.147089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660484, 35.331394, 30.981527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307800, 35.243362, 30.814604>,  <42.096188, 35.190544, 30.714449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307800, 35.243362, 30.814604>,  <42.660484, 35.331394, 30.981527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307800, 35.243362, 30.814604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456982, -0.618226, -0.639503,
		-0.117253, -0.754561, 0.645669,
		-0.881714, -0.220076, -0.417310,
		42.043285, 35.177341, 30.689411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646736, 34.624031, 30.792532>,  <42.660484, 35.331394, 30.981527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646736, 34.624031, 30.792532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397324, 34.825996, 30.553778>,  <42.247677, 34.947178, 30.410524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397324, 34.825996, 30.553778>,  <42.646736, 34.624031, 30.792532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397324, 34.825996, 30.553778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404714, -0.444750, -0.799002,
		-0.668895, -0.739767, 0.072966,
		-0.623527, 0.504918, -0.596885,
		42.210266, 34.977470, 30.374712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391376, 34.084309, 30.377981>,  <42.646736, 34.624031, 30.792532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391376, 34.084309, 30.377981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331772, 34.417892, 30.165453>,  <42.296009, 34.618042, 30.037937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331772, 34.417892, 30.165453>,  <42.391376, 34.084309, 30.377981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331772, 34.417892, 30.165453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554477, -0.374426, -0.743209,
		-0.818750, -0.405351, -0.406620,
		-0.149011, 0.833964, -0.531319,
		42.287067, 34.668083, 30.006058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038799, 33.906593, 29.731745>,  <42.391376, 34.084309, 30.377981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038799, 33.906593, 29.731745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180874, 34.270119, 29.644207>,  <42.266121, 34.488235, 29.591684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180874, 34.270119, 29.644207>,  <42.038799, 33.906593, 29.731745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180874, 34.270119, 29.644207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358004, -0.348508, -0.866242,
		-0.863524, 0.229333, -0.449146,
		0.355189, 0.908817, -0.218843,
		42.287430, 34.542763, 29.578554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910622, 33.999092, 29.003345>,  <42.038799, 33.906593, 29.731745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910622, 33.999092, 29.003345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144032, 34.317650, 29.066916>,  <42.284077, 34.508785, 29.105057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144032, 34.317650, 29.066916>,  <41.910622, 33.999092, 29.003345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144032, 34.317650, 29.066916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471252, -0.172688, -0.864928,
		-0.661380, 0.579598, -0.476069,
		0.583522, 0.796395, 0.158924,
		42.319088, 34.556568, 29.114594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984985, 34.273464, 28.341494>,  <41.910622, 33.999092, 29.003345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984985, 34.273464, 28.341494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304543, 34.414261, 28.536581>,  <42.496277, 34.498741, 28.653633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304543, 34.414261, 28.536581>,  <41.984985, 34.273464, 28.341494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304543, 34.414261, 28.536581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552566, -0.109230, -0.826281,
		-0.237573, 0.929607, -0.281763,
		0.798893, 0.351995, 0.487719,
		42.544212, 34.519859, 28.682896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347557, 34.666382, 27.851559>,  <41.984985, 34.273464, 28.341494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347557, 34.666382, 27.851559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627048, 34.570457, 28.121155>,  <42.794743, 34.512901, 28.282913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627048, 34.570457, 28.121155>,  <42.347557, 34.666382, 27.851559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627048, 34.570457, 28.121155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595222, -0.327748, -0.733684,
		0.396848, 0.913822, -0.086264,
		0.698730, -0.239815, 0.673992,
		42.836666, 34.498512, 28.323353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047993, 34.817451, 27.522966>,  <42.347557, 34.666382, 27.851559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047993, 34.817451, 27.522966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146236, 34.575348, 27.825844>,  <43.205185, 34.430088, 28.007570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146236, 34.575348, 27.825844>,  <43.047993, 34.817451, 27.522966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146236, 34.575348, 27.825844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712605, -0.416811, -0.564325,
		0.657166, 0.678185, 0.328933,
		0.245614, -0.605255, 0.757192,
		43.219921, 34.393772, 28.053001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752045, 34.775051, 27.518766>,  <43.047993, 34.817451, 27.522966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752045, 34.775051, 27.518766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622627, 34.444454, 27.703041>,  <43.544975, 34.246098, 27.813606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622627, 34.444454, 27.703041>,  <43.752045, 34.775051, 27.518766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622627, 34.444454, 27.703041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611246, -0.554213, -0.565001,
		0.722287, 0.098792, 0.684501,
		-0.323542, -0.826491, 0.460687,
		43.525566, 34.196507, 27.841248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320095, 34.312798, 27.500622>,  <43.752045, 34.775051, 27.518766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320095, 34.312798, 27.500622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021946, 34.051968, 27.556074>,  <43.843056, 33.895470, 27.589346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021946, 34.051968, 27.556074>,  <44.320095, 34.312798, 27.500622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021946, 34.051968, 27.556074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318811, -0.531301, -0.784907,
		0.585473, -0.540851, 0.603905,
		-0.745374, -0.652073, 0.138633,
		43.798332, 33.856346, 27.597664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633087, 33.730892, 27.355360>,  <44.320095, 34.312798, 27.500622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633087, 33.730892, 27.355360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.250847, 33.614330, 27.337908>,  <44.021503, 33.544395, 27.327436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.250847, 33.614330, 27.337908>,  <44.633087, 33.730892, 27.355360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.250847, 33.614330, 27.337908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242755, -0.694696, -0.677102,
		0.167001, -0.657633, 0.734594,
		-0.955605, -0.291403, -0.043629,
		43.964165, 33.526909, 27.324820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.559212, 32.885696, 27.541092>,  <44.633087, 33.730892, 27.355360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.559212, 32.885696, 27.541092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.240379, 33.014179, 27.336548>,  <44.049080, 33.091267, 27.213821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.240379, 33.014179, 27.336548>,  <44.559212, 32.885696, 27.541092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.240379, 33.014179, 27.336548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109393, -0.755988, -0.645380,
		-0.593879, -0.570360, 0.567448,
		-0.797083, 0.321202, -0.511359,
		44.001255, 33.110538, 27.183140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033772, 32.263088, 27.412842>,  <44.559212, 32.885696, 27.541092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033772, 32.263088, 27.412842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.960835, 32.538300, 27.131882>,  <43.917072, 32.703426, 26.963305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.960835, 32.538300, 27.131882>,  <44.033772, 32.263088, 27.412842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960835, 32.538300, 27.131882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251013, -0.658133, -0.709826,
		-0.950655, -0.305742, -0.052700,
		-0.182340, 0.688028, -0.702403,
		43.906132, 32.744709, 26.921162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597424, 31.924871, 26.978676>,  <44.033772, 32.263088, 27.412842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597424, 31.924871, 26.978676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683762, 32.236595, 26.743359>,  <43.735565, 32.423630, 26.602169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683762, 32.236595, 26.743359>,  <43.597424, 31.924871, 26.978676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683762, 32.236595, 26.743359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275738, -0.626618, -0.728916,
		-0.936686, -0.004883, -0.350137,
		0.215843, 0.779311, -0.588291,
		43.748516, 32.470390, 26.566872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207539, 31.812529, 26.336288>,  <43.597424, 31.924871, 26.978676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207539, 31.812529, 26.336288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491074, 32.076286, 26.236090>,  <43.661194, 32.234539, 26.175970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491074, 32.076286, 26.236090>,  <43.207539, 31.812529, 26.336288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491074, 32.076286, 26.236090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231314, -0.552788, -0.800574,
		-0.666363, 0.509536, -0.544365,
		0.708840, 0.659393, -0.250495,
		43.703724, 32.274105, 26.160942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087673, 31.869587, 25.594948>,  <43.207539, 31.812529, 26.336288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087673, 31.869587, 25.594948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458946, 32.007957, 25.649801>,  <43.681709, 32.090981, 25.682713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458946, 32.007957, 25.649801>,  <43.087673, 31.869587, 25.594948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458946, 32.007957, 25.649801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283017, -0.416981, -0.863729,
		-0.241605, 0.840513, -0.484939,
		0.928186, 0.345927, 0.137134,
		43.737404, 32.111736, 25.690941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316818, 32.174789, 24.945349>,  <43.087673, 31.869587, 25.594948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316818, 32.174789, 24.945349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650322, 32.107773, 25.155785>,  <43.850426, 32.067562, 25.282045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650322, 32.107773, 25.155785>,  <43.316818, 32.174789, 24.945349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650322, 32.107773, 25.155785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387844, -0.500443, -0.774037,
		0.392959, 0.849404, -0.352272,
		0.833762, -0.167538, 0.526090,
		43.900452, 32.057510, 25.313612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869797, 32.415432, 24.604792>,  <43.316818, 32.174789, 24.945349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869797, 32.415432, 24.604792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037579, 32.127392, 24.825882>,  <44.138248, 31.954567, 24.958536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037579, 32.127392, 24.825882>,  <43.869797, 32.415432, 24.604792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.037579, 32.127392, 24.825882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290656, -0.470289, -0.833275,
		0.859985, 0.510177, 0.012036,
		0.419457, -0.720103, 0.552727,
		44.163414, 31.911362, 24.991699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617310, 32.349003, 24.428835>,  <43.869797, 32.415432, 24.604792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617310, 32.349003, 24.428835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510624, 31.996605, 24.585144>,  <44.446613, 31.785166, 24.678930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510624, 31.996605, 24.585144>,  <44.617310, 32.349003, 24.428835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510624, 31.996605, 24.585144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271012, -0.457660, -0.846817,
		0.924887, -0.119954, 0.360826,
		-0.266715, -0.880998, 0.390775,
		44.430611, 31.732306, 24.702377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.154991, 32.006695, 24.257710>,  <44.617310, 32.349003, 24.428835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.154991, 32.006695, 24.257710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.882286, 31.727148, 24.344238>,  <44.718662, 31.559422, 24.396156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.882286, 31.727148, 24.344238>,  <45.154991, 32.006695, 24.257710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.882286, 31.727148, 24.344238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312337, -0.545444, -0.777777,
		0.661552, -0.462690, 0.590142,
		-0.681758, -0.698863, 0.216324,
		44.677757, 31.517488, 24.409136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473495, 31.391043, 24.238058>,  <45.154991, 32.006695, 24.257710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473495, 31.391043, 24.238058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103371, 31.243361, 24.203455>,  <44.881294, 31.154751, 24.182693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103371, 31.243361, 24.203455>,  <45.473495, 31.391043, 24.238058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.103371, 31.243361, 24.203455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333915, -0.685190, -0.647314,
		0.179718, -0.627854, 0.757298,
		-0.925312, -0.369207, -0.086509,
		44.825775, 31.132599, 24.177502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.515186, 30.679697, 24.175545>,  <45.473495, 31.391043, 24.238058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.515186, 30.679697, 24.175545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142612, 30.716908, 24.034822>,  <44.919067, 30.739233, 23.950388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142612, 30.716908, 24.034822>,  <45.515186, 30.679697, 24.175545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142612, 30.716908, 24.034822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261890, -0.499879, -0.825551,
		-0.252657, -0.861085, 0.441245,
		-0.931438, 0.093024, -0.351807,
		44.863182, 30.744814, 23.929279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.256718, 30.018106, 24.146149>,  <45.515186, 30.679697, 24.175545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.256718, 30.018106, 24.146149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066608, 30.230412, 23.865463>,  <44.952541, 30.357794, 23.697052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066608, 30.230412, 23.865463>,  <45.256718, 30.018106, 24.146149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066608, 30.230412, 23.865463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281049, -0.664182, -0.692729,
		-0.833741, -0.526454, 0.166500,
		-0.475276, 0.530762, -0.701715,
		44.924026, 30.389641, 23.654949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274334, 29.339386, 23.976379>,  <45.256718, 30.018106, 24.146149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274334, 29.339386, 23.976379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380016, 28.984192, 24.126940>,  <45.443424, 28.771074, 24.217276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380016, 28.984192, 24.126940>,  <45.274334, 29.339386, 23.976379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380016, 28.984192, 24.126940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282650, 0.301846, 0.910493,
		-0.922121, -0.346943, -0.171241,
		0.264201, -0.887986, 0.376402,
		45.459278, 28.717796, 24.239861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749592, 29.233273, 24.344660>,  <45.274334, 29.339386, 23.976379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749592, 29.233273, 24.344660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039639, 29.014212, 24.511652>,  <45.213665, 28.882776, 24.611847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039639, 29.014212, 24.511652>,  <44.749592, 29.233273, 24.344660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039639, 29.014212, 24.511652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390439, 0.172425, 0.904338,
		-0.567246, -0.818747, -0.088797,
		0.725113, -0.547652, 0.417479,
		45.257172, 28.849916, 24.636896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442020, 28.778347, 24.773499>,  <44.749592, 29.233273, 24.344660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442020, 28.778347, 24.773499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812737, 28.827600, 24.915422>,  <45.035168, 28.857153, 25.000578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812737, 28.827600, 24.915422>,  <44.442020, 28.778347, 24.773499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812737, 28.827600, 24.915422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369816, 0.134460, 0.919324,
		0.065494, -0.983239, 0.170155,
		0.926794, 0.123136, 0.354811,
		45.090775, 28.864542, 25.021866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436249, 28.453894, 25.424101>,  <44.442020, 28.778347, 24.773499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.436249, 28.453894, 25.424101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751305, 28.700272, 25.430223>,  <44.940338, 28.848099, 25.433897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751305, 28.700272, 25.430223>,  <44.436249, 28.453894, 25.424101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751305, 28.700272, 25.430223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218391, 0.255867, 0.941721,
		0.576133, -0.745079, 0.336048,
		0.787640, 0.615946, 0.015305,
		44.987598, 28.885056, 25.434814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.858540, 28.220766, 26.019823>,  <44.436249, 28.453894, 25.424101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.858540, 28.220766, 26.019823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956482, 28.596666, 25.924393>,  <45.015247, 28.822206, 25.867134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956482, 28.596666, 25.924393>,  <44.858540, 28.220766, 26.019823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956482, 28.596666, 25.924393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154579, 0.280755, 0.947250,
		0.957158, -0.195060, 0.214009,
		0.244855, 0.939749, -0.238575,
		45.029938, 28.878592, 25.852819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.214352, 28.405857, 26.650623>,  <44.858540, 28.220766, 26.019823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.214352, 28.405857, 26.650623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085258, 28.733980, 26.461758>,  <45.007805, 28.930855, 26.348438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085258, 28.733980, 26.461758>,  <45.214352, 28.405857, 26.650623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085258, 28.733980, 26.461758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239143, 0.412002, 0.879241,
		0.915782, 0.396671, 0.063207,
		-0.322728, 0.820309, -0.472165,
		44.988441, 28.980072, 26.320108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483032, 28.948977, 27.068146>,  <45.214352, 28.405857, 26.650623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483032, 28.948977, 27.068146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192368, 29.123560, 26.855932>,  <45.017967, 29.228310, 26.728603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192368, 29.123560, 26.855932>,  <45.483032, 28.948977, 27.068146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192368, 29.123560, 26.855932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301625, 0.491149, 0.817188,
		0.617239, 0.753842, -0.225253,
		-0.726663, 0.436458, -0.530533,
		44.974369, 29.254498, 26.696772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499409, 29.691273, 27.165663>,  <45.483032, 28.948977, 27.068146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499409, 29.691273, 27.165663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121376, 29.605766, 27.066772>,  <44.894554, 29.554462, 27.007439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121376, 29.605766, 27.066772>,  <45.499409, 29.691273, 27.165663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121376, 29.605766, 27.066772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324733, 0.528655, 0.784266,
		-0.036954, 0.821479, -0.569040,
		-0.945083, -0.213768, -0.247225,
		44.837852, 29.541636, 26.992605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071445, 30.347069, 27.231030>,  <45.499409, 29.691273, 27.165663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071445, 30.347069, 27.231030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766422, 30.091232, 27.192198>,  <44.583408, 29.937731, 27.168900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766422, 30.091232, 27.192198>,  <45.071445, 30.347069, 27.231030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766422, 30.091232, 27.192198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555900, 0.571103, 0.604000,
		-0.330870, 0.514554, -0.791049,
		-0.762562, -0.639590, -0.097079,
		44.537655, 29.899355, 27.163074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364887, 30.773462, 27.030371>,  <45.071445, 30.347069, 27.231030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364887, 30.773462, 27.030371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.294849, 30.423130, 27.210264>,  <44.252827, 30.212931, 27.318201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.294849, 30.423130, 27.210264>,  <44.364887, 30.773462, 27.030371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.294849, 30.423130, 27.210264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659790, 0.443426, 0.606672,
		-0.730767, -0.190507, -0.655505,
		-0.175093, -0.875832, 0.449735,
		44.242321, 30.160381, 27.345184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689861, 30.772263, 27.021439>,  <44.364887, 30.773462, 27.030371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689861, 30.772263, 27.021439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761703, 30.484501, 27.289827>,  <43.804810, 30.311844, 27.450861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761703, 30.484501, 27.289827>,  <43.689861, 30.772263, 27.021439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761703, 30.484501, 27.289827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623794, 0.444118, 0.643149,
		-0.760673, -0.534060, -0.368994,
		0.179603, -0.719402, 0.670972,
		43.815586, 30.268681, 27.491119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021175, 30.674692, 27.324492>,  <43.689861, 30.772263, 27.021439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021175, 30.674692, 27.324492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.279575, 30.529593, 27.593145>,  <43.434616, 30.442533, 27.754337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.279575, 30.529593, 27.593145>,  <43.021175, 30.674692, 27.324492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279575, 30.529593, 27.593145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603896, 0.295304, 0.740341,
		-0.466895, -0.883860, -0.028295,
		0.646003, -0.362749, 0.671636,
		43.473377, 30.420769, 27.794636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624756, 30.333509, 27.843197>,  <43.021175, 30.674692, 27.324492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624756, 30.333509, 27.843197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976036, 30.416658, 28.015501>,  <43.186806, 30.466549, 28.118883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976036, 30.416658, 28.015501>,  <42.624756, 30.333509, 27.843197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976036, 30.416658, 28.015501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478147, 0.403799, 0.779949,
		-0.011809, -0.890918, 0.454011,
		0.878200, 0.207874, 0.430758,
		43.239494, 30.479021, 28.144728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553967, 30.059389, 28.529322>,  <42.624756, 30.333509, 27.843197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553967, 30.059389, 28.529322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830841, 30.347746, 28.515484>,  <42.996964, 30.520760, 28.507181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830841, 30.347746, 28.515484>,  <42.553967, 30.059389, 28.529322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830841, 30.347746, 28.515484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307628, 0.338061, 0.889426,
		0.652877, -0.605002, 0.455767,
		0.692182, 0.720893, -0.034597,
		43.038494, 30.564014, 28.505104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932178, 29.986122, 29.033205>,  <42.553967, 30.059389, 28.529322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932178, 29.986122, 29.033205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027405, 30.368231, 28.963032>,  <43.084541, 30.597496, 28.920929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027405, 30.368231, 28.963032>,  <42.932178, 29.986122, 29.033205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027405, 30.368231, 28.963032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201754, 0.225326, 0.953165,
		0.950062, -0.191526, 0.246374,
		0.238070, 0.955273, -0.175432,
		43.098827, 30.654812, 28.910402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269951, 30.256371, 29.678751>,  <42.932178, 29.986122, 29.033205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269951, 30.256371, 29.678751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168232, 30.589357, 29.481844>,  <43.107201, 30.789150, 29.363699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168232, 30.589357, 29.481844>,  <43.269951, 30.256371, 29.678751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168232, 30.589357, 29.481844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230922, 0.442015, 0.866775,
		0.939152, 0.334098, 0.079830,
		-0.254301, 0.832467, -0.492270,
		43.091942, 30.839098, 29.334164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646317, 30.872910, 29.976511>,  <43.269951, 30.256371, 29.678751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646317, 30.872910, 29.976511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310291, 31.009867, 29.808193>,  <43.108677, 31.092041, 29.707203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310291, 31.009867, 29.808193>,  <43.646317, 30.872910, 29.976511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310291, 31.009867, 29.808193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180530, 0.555022, 0.812010,
		0.511577, 0.758102, -0.404439,
		-0.840059, 0.342392, -0.420796,
		43.058273, 31.112585, 29.681955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533180, 31.577448, 30.030365>,  <43.646317, 30.872910, 29.976511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533180, 31.577448, 30.030365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152653, 31.493017, 29.940529>,  <42.924335, 31.442360, 29.886627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152653, 31.493017, 29.940529>,  <43.533180, 31.577448, 30.030365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152653, 31.493017, 29.940529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307568, 0.603098, 0.735986,
		-0.019899, 0.769233, -0.638658,
		-0.951318, -0.211076, -0.224590,
		42.867256, 31.429695, 29.873152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242546, 32.224903, 29.896730>,  <43.533180, 31.577448, 30.030365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242546, 32.224903, 29.896730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947567, 31.971161, 29.989473>,  <42.770576, 31.818916, 30.045118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947567, 31.971161, 29.989473>,  <43.242546, 32.224903, 29.896730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947567, 31.971161, 29.989473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355782, 0.656659, 0.664995,
		-0.574093, 0.407912, -0.709947,
		-0.737452, -0.634356, 0.231855,
		42.726330, 31.780853, 30.059031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673107, 32.687866, 30.000341>,  <43.242546, 32.224903, 29.896730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673107, 32.687866, 30.000341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568687, 32.352055, 30.190935>,  <42.506035, 32.150566, 30.305292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568687, 32.352055, 30.190935>,  <42.673107, 32.687866, 30.000341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568687, 32.352055, 30.190935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392174, 0.543264, 0.742337,
		-0.882074, 0.006919, -0.471060,
		-0.261046, -0.839534, 0.476485,
		42.490372, 32.100193, 30.333881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008778, 32.792393, 30.130877>,  <42.673107, 32.687866, 30.000341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008778, 32.792393, 30.130877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161327, 32.521748, 30.382828>,  <42.252857, 32.359360, 30.533998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161327, 32.521748, 30.382828>,  <42.008778, 32.792393, 30.130877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161327, 32.521748, 30.382828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282597, 0.563424, 0.776332,
		-0.880167, -0.474074, 0.023665,
		0.381372, -0.676614, 0.629879,
		42.275738, 32.318764, 30.571791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630283, 33.026550, 30.738791>,  <42.008778, 32.792393, 30.130877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630283, 33.026550, 30.738791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870193, 32.742573, 30.886438>,  <42.014141, 32.572186, 30.975027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870193, 32.742573, 30.886438>,  <41.630283, 33.026550, 30.738791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870193, 32.742573, 30.886438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109808, 0.383912, 0.916817,
		-0.792599, -0.590416, 0.152303,
		0.599774, -0.709945, 0.369121,
		42.050125, 32.529591, 30.997175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299545, 32.637383, 31.236431>,  <41.630283, 33.026550, 30.738791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299545, 32.637383, 31.236431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689083, 32.628307, 31.326859>,  <41.922806, 32.622864, 31.381115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689083, 32.628307, 31.326859>,  <41.299545, 32.637383, 31.236431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689083, 32.628307, 31.326859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182532, 0.514356, 0.837926,
		-0.135291, -0.857277, 0.496763,
		0.973847, -0.022688, 0.226069,
		41.981236, 32.621502, 31.394678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256783, 32.578114, 31.948143>,  <41.299545, 32.637383, 31.236431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256783, 32.578114, 31.948143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630394, 32.695332, 31.866449>,  <41.854561, 32.765663, 31.817432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630394, 32.695332, 31.866449>,  <41.256783, 32.578114, 31.948143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630394, 32.695332, 31.866449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046655, 0.466787, 0.883138,
		0.354131, -0.834407, 0.422322,
		0.934032, 0.293043, -0.204233,
		41.910603, 32.783245, 31.805180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669994, 32.311291, 32.512939>,  <41.256783, 32.578114, 31.948143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669994, 32.311291, 32.512939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886951, 32.608425, 32.355968>,  <42.017128, 32.786705, 32.261784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886951, 32.608425, 32.355968>,  <41.669994, 32.311291, 32.512939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886951, 32.608425, 32.355968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189645, 0.346796, 0.918568,
		0.818440, -0.572649, 0.047225,
		0.542394, 0.742837, -0.392431,
		42.049671, 32.831276, 32.238239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396763, 32.277912, 32.835815>,  <41.669994, 32.311291, 32.512939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396763, 32.277912, 32.835815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334690, 32.651791, 32.707905>,  <42.297447, 32.876118, 32.631161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334690, 32.651791, 32.707905>,  <42.396763, 32.277912, 32.835815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334690, 32.651791, 32.707905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187563, 0.345681, 0.919415,
		0.969917, 0.082696, -0.228957,
		-0.155178, 0.934701, -0.319772,
		42.288136, 32.932201, 32.611973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916569, 32.680149, 33.117393>,  <42.396763, 32.277912, 32.835815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916569, 32.680149, 33.117393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623188, 32.938126, 33.031513>,  <42.447159, 33.092911, 32.979984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623188, 32.938126, 33.031513>,  <42.916569, 32.680149, 33.117393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623188, 32.938126, 33.031513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059049, 0.254215, 0.965344,
		0.677169, 0.720713, -0.148372,
		-0.733454, 0.644940, -0.214704,
		42.403152, 33.131607, 32.967102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078732, 33.318073, 33.474739>,  <42.916569, 32.680149, 33.117393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078732, 33.318073, 33.474739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695805, 33.373627, 33.373337>,  <42.466049, 33.406960, 33.312496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695805, 33.373627, 33.373337>,  <43.078732, 33.318073, 33.474739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695805, 33.373627, 33.373337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211496, 0.261255, 0.941815,
		0.197032, 0.955226, -0.220730,
		-0.957313, 0.138884, -0.253502,
		42.408611, 33.415291, 33.297287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991554, 33.872265, 33.787605>,  <43.078732, 33.318073, 33.474739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991554, 33.872265, 33.787605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618748, 33.741661, 33.724693>,  <42.395065, 33.663300, 33.686947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618748, 33.741661, 33.724693>,  <42.991554, 33.872265, 33.787605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618748, 33.741661, 33.724693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288796, 0.406918, 0.866611,
		-0.218959, 0.853117, -0.473549,
		-0.932016, -0.326511, -0.157278,
		42.339142, 33.643707, 33.677509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499607, 34.471424, 34.006924>,  <42.991554, 33.872265, 33.787605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499607, 34.471424, 34.006924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274555, 34.140877, 34.016445>,  <42.139523, 33.942551, 34.022156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274555, 34.140877, 34.016445>,  <42.499607, 34.471424, 34.006924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.274555, 34.140877, 34.016445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390611, 0.291101, 0.873317,
		-0.728608, 0.482058, -0.486570,
		-0.562630, -0.826366, 0.023801,
		42.105766, 33.892967, 34.023586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815006, 34.787029, 34.264736>,  <42.499607, 34.471424, 34.006924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815006, 34.787029, 34.264736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869968, 34.399605, 34.347691>,  <41.902946, 34.167149, 34.397461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869968, 34.399605, 34.347691>,  <41.815006, 34.787029, 34.264736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869968, 34.399605, 34.347691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346317, 0.149176, 0.926181,
		-0.928000, -0.199085, -0.314931,
		0.137409, -0.968562, 0.207382,
		41.911190, 34.109035, 34.409904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229977, 34.641754, 34.696815>,  <41.815006, 34.787029, 34.264736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229977, 34.641754, 34.696815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472240, 34.337105, 34.788990>,  <41.617599, 34.154316, 34.844296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472240, 34.337105, 34.788990>,  <41.229977, 34.641754, 34.696815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472240, 34.337105, 34.788990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310692, 0.040261, 0.949657,
		-0.732562, -0.646764, -0.212247,
		0.605659, -0.761627, 0.230438,
		41.653938, 34.108616, 34.858120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855576, 34.195210, 35.035221>,  <41.229977, 34.641754, 34.696815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855576, 34.195210, 35.035221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223949, 34.082603, 35.143013>,  <41.444973, 34.015038, 35.207687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223949, 34.082603, 35.143013>,  <40.855576, 34.195210, 35.035221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223949, 34.082603, 35.143013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326511, -0.179890, 0.927917,
		-0.212750, -0.942543, -0.257587,
		0.920939, -0.281519, 0.269479,
		41.500233, 33.998146, 35.223858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826195, 33.455524, 35.237728>,  <40.855576, 34.195210, 35.035221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826195, 33.455524, 35.237728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127762, 33.647396, 35.417294>,  <41.308701, 33.762520, 35.525032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127762, 33.647396, 35.417294>,  <40.826195, 33.455524, 35.237728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127762, 33.647396, 35.417294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405170, -0.198414, 0.892451,
		0.517159, -0.854718, 0.044763,
		0.753913, 0.479676, 0.448918,
		41.353935, 33.791298, 35.551968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680847, 33.193878, 35.944771>,  <40.826195, 33.455524, 35.237728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680847, 33.193878, 35.944771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951199, 33.488022, 35.964481>,  <41.113411, 33.664509, 35.976307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951199, 33.488022, 35.964481>,  <40.680847, 33.193878, 35.944771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951199, 33.488022, 35.964481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224356, 0.141602, 0.964164,
		0.702033, -0.662715, 0.260689,
		0.675880, 0.735362, 0.049275,
		41.153961, 33.708630, 35.979263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050434, 33.086758, 36.540787>,  <40.680847, 33.193878, 35.944771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050434, 33.086758, 36.540787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076885, 33.475346, 36.449688>,  <41.092758, 33.708500, 36.395031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076885, 33.475346, 36.449688>,  <41.050434, 33.086758, 36.540787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076885, 33.475346, 36.449688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209578, 0.236676, 0.948715,
		0.975553, -0.015008, 0.219250,
		0.066130, 0.971472, -0.227745,
		41.096725, 33.766788, 36.381363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406799, 33.405483, 37.163208>,  <41.050434, 33.086758, 36.540787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406799, 33.405483, 37.163208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246777, 33.718296, 36.972050>,  <41.150764, 33.905983, 36.857357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246777, 33.718296, 36.972050>,  <41.406799, 33.405483, 37.163208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246777, 33.718296, 36.972050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402922, 0.318267, 0.858114,
		0.823169, 0.535849, 0.187772,
		-0.400057, 0.782031, -0.477893,
		41.126759, 33.952904, 36.828682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548763, 34.009403, 37.590523>,  <41.406799, 33.405483, 37.163208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548763, 34.009403, 37.590523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229679, 34.110592, 37.371555>,  <41.038227, 34.171307, 37.240177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229679, 34.110592, 37.371555>,  <41.548763, 34.009403, 37.590523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229679, 34.110592, 37.371555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481993, 0.278069, 0.830879,
		0.362408, 0.926651, -0.099888,
		-0.797711, 0.252972, -0.547414,
		40.990364, 34.186485, 37.207333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310341, 34.668770, 37.794422>,  <41.548763, 34.009403, 37.590523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310341, 34.668770, 37.794422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986988, 34.489685, 37.641541>,  <40.792976, 34.382233, 37.549812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986988, 34.489685, 37.641541>,  <41.310341, 34.668770, 37.794422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986988, 34.489685, 37.641541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551882, 0.350495, 0.756690,
		-0.204818, 0.822623, -0.530416,
		-0.808379, -0.447711, -0.382203,
		40.744476, 34.355373, 37.526878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726513, 35.097500, 37.857346>,  <41.310341, 34.668770, 37.794422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726513, 35.097500, 37.857346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561577, 34.733685, 37.836483>,  <40.462616, 34.515396, 37.823967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561577, 34.733685, 37.836483>,  <40.726513, 35.097500, 37.857346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561577, 34.733685, 37.836483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554925, 0.205344, 0.806159,
		-0.722522, 0.361351, -0.589396,
		-0.412336, -0.909538, -0.052157,
		40.437878, 34.460823, 37.820835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056889, 35.626770, 38.218384>,  <40.726513, 35.097500, 37.857346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056889, 35.626770, 38.218384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427975, 35.758404, 38.147903>,  <41.650627, 35.837383, 38.105618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427975, 35.758404, 38.147903>,  <41.056889, 35.626770, 38.218384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427975, 35.758404, 38.147903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363001, 0.685306, -0.631337,
		-0.087011, 0.649663, 0.755227,
		0.927717, 0.329081, -0.176199,
		41.706291, 35.857128, 38.095043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279942, 36.374382, 38.373066>,  <41.056889, 35.626770, 38.218384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279942, 36.374382, 38.373066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503128, 36.257191, 38.062496>,  <41.637039, 36.186874, 37.876152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503128, 36.257191, 38.062496>,  <41.279942, 36.374382, 38.373066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503128, 36.257191, 38.062496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515963, 0.610311, -0.601084,
		0.649966, 0.735992, 0.189367,
		0.557966, -0.292978, -0.776427,
		41.670517, 36.169296, 37.829567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268559, 36.992496, 37.872532>,  <41.279942, 36.374382, 38.373066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268559, 36.992496, 37.872532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426865, 36.688553, 37.666233>,  <41.521847, 36.506187, 37.542454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426865, 36.688553, 37.666233>,  <41.268559, 36.992496, 37.872532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426865, 36.688553, 37.666233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049402, 0.543171, -0.838168,
		0.917024, 0.357193, 0.177428,
		0.395761, -0.759854, -0.515746,
		41.545593, 36.460598, 37.511509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891922, 37.266884, 37.494770>,  <41.268559, 36.992496, 37.872532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891922, 37.266884, 37.494770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730190, 36.959202, 37.296844>,  <41.633152, 36.774593, 37.178089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730190, 36.959202, 37.296844>,  <41.891922, 37.266884, 37.494770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730190, 36.959202, 37.296844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085613, 0.570462, -0.816850,
		0.910599, -0.287911, -0.296507,
		-0.404326, -0.769208, -0.494813,
		41.608894, 36.728439, 37.148399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164402, 37.301441, 36.866638>,  <41.891922, 37.266884, 37.494770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164402, 37.301441, 36.866638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844669, 37.072315, 36.794033>,  <41.652828, 36.934837, 36.750469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844669, 37.072315, 36.794033>,  <42.164402, 37.301441, 36.866638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844669, 37.072315, 36.794033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176216, 0.512258, -0.840559,
		0.574469, -0.639901, -0.510404,
		-0.799333, -0.572817, -0.181515,
		41.604870, 36.900471, 36.739578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115788, 37.403522, 36.153000>,  <42.164402, 37.301441, 36.866638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115788, 37.403522, 36.153000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789139, 37.202393, 36.266350>,  <41.593151, 37.081715, 36.334358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789139, 37.202393, 36.266350>,  <42.115788, 37.403522, 36.153000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789139, 37.202393, 36.266350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529698, 0.457896, -0.713969,
		0.229242, -0.733145, -0.640271,
		-0.816620, -0.502822, 0.283376,
		41.544151, 37.051544, 36.351364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836796, 37.180275, 35.521904>,  <42.115788, 37.403522, 36.153000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836796, 37.180275, 35.521904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530815, 37.148670, 35.777596>,  <41.347229, 37.129707, 35.931011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530815, 37.148670, 35.777596>,  <41.836796, 37.180275, 35.521904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530815, 37.148670, 35.777596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631084, 0.290386, -0.719311,
		-0.128788, -0.953642, -0.271994,
		-0.764949, -0.079012, 0.639226,
		41.301331, 37.124966, 35.969364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399727, 36.740673, 35.248917>,  <41.836796, 37.180275, 35.521904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399727, 36.740673, 35.248917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220905, 37.003223, 35.492004>,  <41.113613, 37.160751, 35.637856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220905, 37.003223, 35.492004>,  <41.399727, 36.740673, 35.248917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220905, 37.003223, 35.492004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675434, 0.197721, -0.710419,
		-0.586458, -0.728067, 0.354945,
		-0.447053, 0.656373, 0.607716,
		41.086788, 37.200134, 35.674320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695667, 36.710419, 35.171665>,  <41.399727, 36.740673, 35.248917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695667, 36.710419, 35.171665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753151, 37.078022, 35.318512>,  <40.787643, 37.298584, 35.406620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753151, 37.078022, 35.318512>,  <40.695667, 36.710419, 35.171665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753151, 37.078022, 35.318512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708199, 0.354621, -0.610489,
		-0.691231, -0.172260, 0.701802,
		0.143711, 0.919005, 0.367120,
		40.796265, 37.353722, 35.428646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011913, 37.082775, 35.210293>,  <40.695667, 36.710419, 35.171665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011913, 37.082775, 35.210293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292706, 37.365181, 35.172821>,  <40.461182, 37.534622, 35.150337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292706, 37.365181, 35.172821>,  <40.011913, 37.082775, 35.210293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292706, 37.365181, 35.172821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477254, 0.368687, -0.797683,
		-0.528635, 0.604665, 0.595757,
		0.701978, 0.706010, -0.093678,
		40.503300, 37.576984, 35.144718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425983, 37.299042, 35.787312>,  <40.011913, 37.082775, 35.210293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425983, 37.299042, 35.787312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598663, 37.560234, 36.036232>,  <39.702271, 37.716949, 36.185585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598663, 37.560234, 36.036232>,  <39.425983, 37.299042, 35.787312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598663, 37.560234, 36.036232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483854, -0.749877, 0.451188,
		0.761264, 0.106327, -0.639665,
		0.431697, 0.652977, 0.622301,
		39.728172, 37.756126, 36.222923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692917, 37.813461, 35.254726>,  <39.425983, 37.299042, 35.787312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692917, 37.813461, 35.254726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043320, 37.869343, 35.070080>,  <40.253563, 37.902874, 34.959290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043320, 37.869343, 35.070080>,  <39.692917, 37.813461, 35.254726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043320, 37.869343, 35.070080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455408, 0.554723, -0.696337,
		0.158787, 0.820222, 0.549566,
		0.876008, 0.139708, -0.461619,
		40.306122, 37.911255, 34.931595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817181, 38.546417, 35.185123>,  <39.692917, 37.813461, 35.254726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817181, 38.546417, 35.185123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066998, 38.375942, 34.923344>,  <40.216888, 38.273659, 34.766273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066998, 38.375942, 34.923344>,  <39.817181, 38.546417, 35.185123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066998, 38.375942, 34.923344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392381, 0.553309, -0.734770,
		0.675264, 0.715691, 0.178338,
		0.624545, -0.426187, -0.654453,
		40.254360, 38.248085, 34.727009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067959, 39.043682, 34.767929>,  <39.817181, 38.546417, 35.185123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067959, 39.043682, 34.767929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091068, 38.689404, 34.583668>,  <40.104935, 38.476837, 34.473110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091068, 38.689404, 34.583668>,  <40.067959, 39.043682, 34.767929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091068, 38.689404, 34.583668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424026, 0.395964, -0.814503,
		0.903805, 0.242383, -0.352685,
		0.057771, -0.885699, -0.460651,
		40.108398, 38.423695, 34.445473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311024, 39.214188, 34.116062>,  <40.067959, 39.043682, 34.767929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311024, 39.214188, 34.116062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183575, 38.837826, 34.070152>,  <40.107105, 38.612007, 34.042606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183575, 38.837826, 34.070152>,  <40.311024, 39.214188, 34.116062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183575, 38.837826, 34.070152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415292, 0.247418, -0.875395,
		0.852063, -0.231256, -0.469584,
		-0.318624, -0.940906, -0.114777,
		40.087986, 38.555553, 34.035721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738861, 38.954861, 33.519684>,  <40.311024, 39.214188, 34.116062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738861, 38.954861, 33.519684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378429, 38.792385, 33.580441>,  <40.162170, 38.694901, 33.616894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378429, 38.792385, 33.580441>,  <40.738861, 38.954861, 33.519684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378429, 38.792385, 33.580441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238853, 0.172535, -0.955605,
		0.361951, -0.897353, -0.252487,
		-0.901078, -0.406189, 0.151887,
		40.108105, 38.670528, 33.626007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667603, 38.621555, 32.938229>,  <40.738861, 38.954861, 33.519684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667603, 38.621555, 32.938229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297470, 38.598183, 33.088081>,  <40.075390, 38.584160, 33.177994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297470, 38.598183, 33.088081>,  <40.667603, 38.621555, 32.938229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297470, 38.598183, 33.088081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367005, -0.110148, -0.923675,
		0.095239, -0.992196, 0.080478,
		-0.925331, -0.058434, 0.374631,
		40.019871, 38.580654, 33.200470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340649, 38.014469, 32.605724>,  <40.667603, 38.621555, 32.938229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340649, 38.014469, 32.605724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018307, 38.220196, 32.723072>,  <39.824902, 38.343632, 32.793480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018307, 38.220196, 32.723072>,  <40.340649, 38.014469, 32.605724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018307, 38.220196, 32.723072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325692, 0.028752, -0.945039,
		-0.494487, -0.857116, 0.144340,
		-0.805857, 0.514320, 0.293374,
		39.776550, 38.374493, 32.811085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758415, 37.628590, 32.320461>,  <40.340649, 38.014469, 32.605724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758415, 37.628590, 32.320461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631416, 38.002045, 32.386822>,  <39.555218, 38.226116, 32.426640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631416, 38.002045, 32.386822>,  <39.758415, 37.628590, 32.320461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631416, 38.002045, 32.386822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359056, 0.043567, -0.932299,
		-0.877655, -0.355567, 0.321395,
		-0.317493, 0.933635, 0.165905,
		39.536167, 38.282135, 32.436592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966419, 37.618462, 32.124664>,  <39.758415, 37.628590, 32.320461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966419, 37.618462, 32.124664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191410, 37.946598, 32.083359>,  <39.326405, 38.143478, 32.058575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191410, 37.946598, 32.083359>,  <38.966419, 37.618462, 32.124664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191410, 37.946598, 32.083359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230912, 0.035937, -0.972311,
		-0.793913, 0.570749, 0.209640,
		0.562479, 0.820338, -0.103262,
		39.360153, 38.192699, 32.052380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538376, 37.965553, 31.683104>,  <38.966419, 37.618462, 32.124664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538376, 37.965553, 31.683104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888947, 38.158115, 31.678802>,  <39.099289, 38.273655, 31.676222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888947, 38.158115, 31.678802>,  <38.538376, 37.965553, 31.683104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888947, 38.158115, 31.678802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186678, 0.319102, -0.929153,
		-0.443870, 0.816345, 0.369540,
		0.876431, 0.481408, -0.010754,
		39.151875, 38.302536, 31.675577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831619, 37.804268, 30.945505>,  <38.538376, 37.965553, 31.683104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831619, 37.804268, 30.945505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028126, 38.109314, 30.777185>,  <39.146030, 38.292343, 30.676193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028126, 38.109314, 30.777185>,  <38.831619, 37.804268, 30.945505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028126, 38.109314, 30.777185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095007, 0.433317, 0.896220,
		0.865813, -0.480260, 0.140419,
		0.491264, 0.762618, -0.420799,
		39.175507, 38.338100, 30.650946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549698, 37.950764, 31.204140>,  <38.831619, 37.804268, 30.945505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549698, 37.950764, 31.204140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381420, 38.288807, 31.072197>,  <39.280453, 38.491634, 30.993031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381420, 38.288807, 31.072197>,  <39.549698, 37.950764, 31.204140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381420, 38.288807, 31.072197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107653, 0.407534, 0.906823,
		0.900792, 0.345985, -0.262426,
		-0.420695, 0.845110, -0.329857,
		39.255211, 38.542339, 30.973240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020817, 38.445675, 31.443789>,  <39.549698, 37.950764, 31.204140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020817, 38.445675, 31.443789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645981, 38.578484, 31.400660>,  <39.421078, 38.658169, 31.374783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645981, 38.578484, 31.400660>,  <40.020817, 38.445675, 31.443789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645981, 38.578484, 31.400660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001881, 0.304065, 0.952649,
		0.349085, 0.892920, -0.284312,
		-0.937089, 0.332020, -0.107825,
		39.364853, 38.678089, 31.368313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986485, 39.065170, 31.684513>,  <40.020817, 38.445675, 31.443789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986485, 39.065170, 31.684513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625156, 38.894264, 31.699810>,  <39.408360, 38.791721, 31.708988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625156, 38.894264, 31.699810>,  <39.986485, 39.065170, 31.684513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625156, 38.894264, 31.699810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065493, -0.049256, 0.996637,
		-0.423942, 0.902785, 0.072477,
		-0.903318, -0.427263, 0.038244,
		39.354160, 38.766087, 31.711283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710091, 39.453609, 32.133709>,  <39.986485, 39.065170, 31.684513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710091, 39.453609, 32.133709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504391, 39.110615, 32.127285>,  <39.380970, 38.904816, 32.123432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504391, 39.110615, 32.127285>,  <39.710091, 39.453609, 32.133709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504391, 39.110615, 32.127285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046348, -0.046483, 0.997843,
		-0.856388, 0.512394, 0.063647,
		-0.514248, -0.857491, -0.016059,
		39.350117, 38.853367, 32.122467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156288, 39.522640, 32.538097>,  <39.710091, 39.453609, 32.133709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156288, 39.522640, 32.538097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262951, 39.137260, 32.527817>,  <39.326950, 38.906033, 32.521648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262951, 39.137260, 32.527817>,  <39.156288, 39.522640, 32.538097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262951, 39.137260, 32.527817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388593, 0.083074, 0.917657,
		-0.881980, -0.254688, 0.396542,
		0.266659, -0.963448, -0.025701,
		39.342949, 38.848225, 32.520107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831059, 39.158447, 33.081699>,  <39.156288, 39.522640, 32.538097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831059, 39.158447, 33.081699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134338, 38.916279, 32.984871>,  <39.316307, 38.770977, 32.926773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134338, 38.916279, 32.984871>,  <38.831059, 39.158447, 33.081699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134338, 38.916279, 32.984871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080500, -0.281507, 0.956177,
		-0.647035, -0.744459, -0.164702,
		0.758199, -0.605421, -0.242074,
		39.361797, 38.734653, 32.912251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694023, 38.593853, 33.546761>,  <38.831059, 39.158447, 33.081699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694023, 38.593853, 33.546761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076237, 38.605446, 33.429375>,  <39.305565, 38.612404, 33.358944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076237, 38.605446, 33.429375>,  <38.694023, 38.593853, 33.546761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076237, 38.605446, 33.429375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281078, -0.390573, 0.876612,
		-0.089210, -0.920116, -0.381351,
		0.955530, 0.028987, -0.293467,
		39.362896, 38.614143, 33.341335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987331, 38.109375, 33.997776>,  <38.694023, 38.593853, 33.546761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987331, 38.109375, 33.997776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334972, 38.237431, 33.846954>,  <39.543556, 38.314262, 33.756462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334972, 38.237431, 33.846954>,  <38.987331, 38.109375, 33.997776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334972, 38.237431, 33.846954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481581, -0.373708, 0.792731,
		0.112874, -0.870548, -0.478963,
		0.869103, 0.320138, -0.377058,
		39.595703, 38.333473, 33.733837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433277, 37.442059, 33.861732>,  <38.987331, 38.109375, 33.997776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433277, 37.442059, 33.861732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663898, 37.766937, 33.897339>,  <39.802269, 37.961864, 33.918701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663898, 37.766937, 33.897339>,  <39.433277, 37.442059, 33.861732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663898, 37.766937, 33.897339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515698, -0.446233, 0.731390,
		0.633755, -0.375778, -0.676125,
		0.576550, 0.812199, 0.089014,
		39.836864, 38.010597, 33.924042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081177, 37.175957, 33.992661>,  <39.433277, 37.442059, 33.861732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081177, 37.175957, 33.992661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089725, 37.549213, 34.136211>,  <40.094856, 37.773167, 34.222343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089725, 37.549213, 34.136211>,  <40.081177, 37.175957, 33.992661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089725, 37.549213, 34.136211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277269, -0.350415, 0.894612,
		0.960555, 0.080385, -0.266221,
		0.021374, 0.933139, 0.358881,
		40.096138, 37.829155, 34.243877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621307, 37.523460, 33.720409>,  <40.081177, 37.175957, 33.992661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621307, 37.523460, 33.720409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526165, 37.873283, 33.889439>,  <40.469078, 38.083176, 33.990856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526165, 37.873283, 33.889439>,  <40.621307, 37.523460, 33.720409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526165, 37.873283, 33.889439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431695, -0.294545, 0.852574,
		0.870094, 0.385214, -0.307484,
		-0.237856, 0.874559, 0.422577,
		40.454807, 38.135651, 34.016212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180645, 37.898277, 33.903408>,  <40.621307, 37.523460, 33.720409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180645, 37.898277, 33.903408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901043, 38.019279, 34.162601>,  <40.733280, 38.091881, 34.318119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901043, 38.019279, 34.162601>,  <41.180645, 37.898277, 33.903408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901043, 38.019279, 34.162601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512513, -0.420016, 0.748944,
		0.498722, 0.855616, 0.138557,
		-0.699004, 0.302503, 0.647986,
		40.691341, 38.110031, 34.356998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497234, 38.250336, 34.457253>,  <41.180645, 37.898277, 33.903408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497234, 38.250336, 34.457253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134007, 38.141178, 34.584339>,  <40.916069, 38.075684, 34.660591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134007, 38.141178, 34.584339>,  <41.497234, 38.250336, 34.457253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134007, 38.141178, 34.584339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374234, -0.188058, 0.908066,
		-0.188058, 0.943484, 0.272896,
		-0.908066, -0.272896, 0.317718,
		40.861588, 38.059311, 34.679653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426365, 38.490955, 35.102726>,  <41.497234, 38.250336, 34.457253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426365, 38.490955, 35.102726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144611, 38.207108, 35.095982>,  <40.975559, 38.036800, 35.091934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144611, 38.207108, 35.095982>,  <41.426365, 38.490955, 35.102726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144611, 38.207108, 35.095982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283290, -0.302822, 0.909970,
		-0.650837, 0.636192, 0.414331,
		-0.704385, -0.709618, -0.016861,
		40.933296, 37.994221, 35.090923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017578, 38.563499, 35.804211>,  <41.426365, 38.490955, 35.102726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017578, 38.563499, 35.804211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940464, 38.188377, 35.688728>,  <40.894196, 37.963303, 35.619438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940464, 38.188377, 35.688728>,  <41.017578, 38.563499, 35.804211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940464, 38.188377, 35.688728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189009, -0.324206, 0.926912,
		-0.962864, 0.124130, 0.239757,
		-0.192789, -0.937807, -0.288705,
		40.882626, 37.907036, 35.602116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655529, 38.260765, 36.329159>,  <41.017578, 38.563499, 35.804211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655529, 38.260765, 36.329159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820965, 37.953529, 36.133617>,  <40.920227, 37.769188, 36.016293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820965, 37.953529, 36.133617>,  <40.655529, 38.260765, 36.329159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820965, 37.953529, 36.133617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291220, -0.397121, 0.870336,
		-0.862633, -0.502326, 0.059438,
		0.413588, -0.768090, -0.488857,
		40.945042, 37.723103, 35.986961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347088, 37.678989, 36.544830>,  <40.655529, 38.260765, 36.329159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347088, 37.678989, 36.544830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687183, 37.523815, 36.402512>,  <40.891243, 37.430710, 36.317120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687183, 37.523815, 36.402512>,  <40.347088, 37.678989, 36.544830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687183, 37.523815, 36.402512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004765, -0.670224, 0.742144,
		-0.526368, -0.632698, -0.568005,
		0.850244, -0.387934, -0.355800,
		40.942257, 37.407436, 36.295773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356945, 36.979591, 36.606781>,  <40.347088, 37.678989, 36.544830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356945, 36.979591, 36.606781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743282, 36.986816, 36.503387>,  <40.975086, 36.991154, 36.441353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743282, 36.986816, 36.503387>,  <40.356945, 36.979591, 36.606781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743282, 36.986816, 36.503387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152901, -0.845103, 0.512272,
		-0.209187, -0.534299, -0.819003,
		0.965848, 0.018066, -0.258480,
		41.033035, 36.992237, 36.425842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552055, 36.253807, 36.409172>,  <40.356945, 36.979591, 36.606781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552055, 36.253807, 36.409172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894333, 36.435581, 36.508198>,  <41.099697, 36.544643, 36.567612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894333, 36.435581, 36.508198>,  <40.552055, 36.253807, 36.409172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894333, 36.435581, 36.508198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122986, -0.643268, 0.755699,
		0.502663, -0.616197, -0.606326,
		0.855690, 0.454431, 0.247563,
		41.151039, 36.571911, 36.582466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964569, 35.661739, 36.639790>,  <40.552055, 36.253807, 36.409172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964569, 35.661739, 36.639790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177250, 35.972656, 36.774315>,  <41.304859, 36.159206, 36.855030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177250, 35.972656, 36.774315>,  <40.964569, 35.661739, 36.639790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177250, 35.972656, 36.774315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206325, -0.504014, 0.838690,
		0.821415, -0.376542, -0.428360,
		0.531701, 0.777294, 0.336314,
		41.336761, 36.205845, 36.875210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127750, 35.285881, 37.240269>,  <40.964569, 35.661739, 36.639790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127750, 35.285881, 37.240269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483372, 35.466614, 37.210773>,  <41.696743, 35.575054, 37.193077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483372, 35.466614, 37.210773>,  <41.127750, 35.285881, 37.240269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483372, 35.466614, 37.210773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221932, -0.284484, 0.932639,
		0.400415, -0.845529, -0.353196,
		0.889052, 0.451828, -0.073738,
		41.750088, 35.602161, 37.188652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668766, 35.521065, 36.650108>,  <41.127750, 35.285881, 37.240269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668766, 35.521065, 36.650108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650318, 35.817684, 36.917835>,  <41.639252, 35.995655, 37.078472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650318, 35.817684, 36.917835>,  <41.668766, 35.521065, 36.650108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650318, 35.817684, 36.917835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528148, -0.550623, 0.646432,
		0.847899, 0.383311, -0.366252,
		-0.046118, 0.741544, 0.669317,
		41.636482, 36.040146, 37.118629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277512, 35.636597, 36.859043>,  <41.668766, 35.521065, 36.650108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277512, 35.636597, 36.859043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063358, 35.794670, 37.157623>,  <41.934864, 35.889515, 37.336773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063358, 35.794670, 37.157623>,  <42.277512, 35.636597, 36.859043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063358, 35.794670, 37.157623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589995, -0.457420, 0.665337,
		0.604374, 0.796614, 0.011737,
		-0.535385, 0.395187, 0.746451,
		41.902744, 35.913227, 37.381557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744335, 36.185112, 37.186653>,  <42.277512, 35.636597, 36.859043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744335, 36.185112, 37.186653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391136, 36.215168, 37.001328>,  <42.179214, 36.233200, 36.890133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391136, 36.215168, 37.001328>,  <42.744335, 36.185112, 37.186653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391136, 36.215168, 37.001328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297817, 0.852644, -0.429306,
		0.362785, -0.517061, -0.775264,
		-0.883002, 0.075142, -0.463316,
		42.126236, 36.237709, 36.862331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800190, 36.297813, 36.419022>,  <42.744335, 36.185112, 37.186653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800190, 36.297813, 36.419022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446587, 36.458424, 36.514778>,  <42.234425, 36.554790, 36.572231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446587, 36.458424, 36.514778>,  <42.800190, 36.297813, 36.419022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446587, 36.458424, 36.514778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232575, 0.821987, -0.519852,
		-0.405510, -0.403876, -0.820028,
		-0.884008, 0.401524, 0.239393,
		42.181385, 36.578880, 36.586597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702568, 36.322662, 35.660728>,  <42.800190, 36.297813, 36.419022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702568, 36.322662, 35.660728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974213, 36.195560, 35.396049>,  <43.137199, 36.119301, 35.237244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974213, 36.195560, 35.396049>,  <42.702568, 36.322662, 35.660728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974213, 36.195560, 35.396049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648998, -0.161243, 0.743507,
		-0.342947, -0.934362, 0.096721,
		0.679109, -0.317755, -0.661697,
		43.177944, 36.100235, 35.197540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884220, 35.515064, 35.770660>,  <42.702568, 36.322662, 35.660728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884220, 35.515064, 35.770660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189571, 35.762508, 35.696285>,  <43.372784, 35.910973, 35.651661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189571, 35.762508, 35.696285>,  <42.884220, 35.515064, 35.770660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189571, 35.762508, 35.696285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306016, -0.092846, 0.947488,
		0.568861, -0.780195, -0.260180,
		0.763382, 0.618608, -0.185936,
		43.418587, 35.948090, 35.640503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440117, 35.034584, 35.859398>,  <42.884220, 35.515064, 35.770660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440117, 35.034584, 35.859398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508675, 35.424946, 35.913403>,  <43.549809, 35.659164, 35.945805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508675, 35.424946, 35.913403>,  <43.440117, 35.034584, 35.859398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508675, 35.424946, 35.913403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275108, -0.178993, 0.944604,
		0.946013, -0.124757, -0.299158,
		0.171393, 0.975908, 0.135008,
		43.560093, 35.717720, 35.953903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.165176, 34.618328, 36.118389>,  <43.440117, 35.034584, 35.859398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.165176, 34.618328, 36.118389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115463, 34.276676, 35.916389>,  <44.085636, 34.071686, 35.795189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115463, 34.276676, 35.916389>,  <44.165176, 34.618328, 36.118389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115463, 34.276676, 35.916389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708427, 0.432735, -0.557559,
		0.694755, 0.288458, -0.658868,
		-0.124283, -0.854127, -0.504997,
		44.078178, 34.020439, 35.764889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233326, 34.638828, 35.337135>,  <44.165176, 34.618328, 36.118389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233326, 34.638828, 35.337135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985950, 34.338612, 35.430279>,  <43.837524, 34.158482, 35.486164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985950, 34.338612, 35.430279>,  <44.233326, 34.638828, 35.337135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985950, 34.338612, 35.430279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676284, 0.357407, -0.644127,
		0.400218, -0.555831, -0.728613,
		-0.618437, -0.750541, 0.232859,
		43.800419, 34.113449, 35.500137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966358, 34.798759, 35.058319>,  <44.233326, 34.638828, 35.337135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966358, 34.798759, 35.058319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003746, 34.400784, 35.043568>,  <45.026176, 34.161999, 35.034718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003746, 34.400784, 35.043568>,  <44.966358, 34.798759, 35.058319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003746, 34.400784, 35.043568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189636, 0.018571, -0.981679,
		0.977395, 0.098749, -0.186941,
		0.093468, -0.994939, -0.036877,
		45.031788, 34.102303, 35.032505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.363510, 34.463055, 34.567596>,  <44.966358, 34.798759, 35.058319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.363510, 34.463055, 34.567596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.115818, 34.149899, 34.591736>,  <44.967201, 33.962006, 34.606220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.115818, 34.149899, 34.591736>,  <45.363510, 34.463055, 34.567596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115818, 34.149899, 34.591736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250665, 0.124261, -0.960066,
		0.744124, -0.609629, -0.273188,
		-0.619230, -0.782887, 0.060347,
		44.930050, 33.915031, 34.609840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519867, 33.997318, 34.085651>,  <45.363510, 34.463055, 34.567596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.519867, 33.997318, 34.085651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135754, 33.932228, 34.176323>,  <44.905285, 33.893173, 34.230724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135754, 33.932228, 34.176323>,  <45.519867, 33.997318, 34.085651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135754, 33.932228, 34.176323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240605, 0.071434, -0.967991,
		0.141328, -0.984082, -0.107750,
		-0.960279, -0.162729, 0.226680,
		44.847672, 33.883411, 34.244328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189228, 33.432278, 33.682350>,  <45.519867, 33.997318, 34.085651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189228, 33.432278, 33.682350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908646, 33.697769, 33.786221>,  <44.740295, 33.857063, 33.848541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908646, 33.697769, 33.786221>,  <45.189228, 33.432278, 33.682350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908646, 33.697769, 33.786221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232155, 0.131688, -0.963723,
		-0.673845, -0.736290, 0.061715,
		-0.701453, 0.663728, 0.259671,
		44.698208, 33.896889, 33.864120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.100956, 33.254463, 32.985271>,  <45.189228, 33.432278, 33.682350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.100956, 33.254463, 32.985271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848190, 33.217812, 32.677429>,  <44.696533, 33.195820, 32.492725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848190, 33.217812, 32.677429>,  <45.100956, 33.254463, 32.985271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848190, 33.217812, 32.677429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287026, 0.950050, 0.122559,
		0.719933, 0.298343, -0.626648,
		-0.631912, -0.091630, -0.769605,
		44.658615, 33.190323, 32.446548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498981, 33.836620, 32.994152>,  <45.100956, 33.254463, 32.985271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498981, 33.836620, 32.994152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883739, 33.891693, 32.899658>,  <46.114594, 33.924736, 32.842960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883739, 33.891693, 32.899658>,  <45.498981, 33.836620, 32.994152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.883739, 33.891693, 32.899658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184506, -0.964454, 0.189169,
		-0.201791, -0.225547, -0.953105,
		0.961893, 0.137681, -0.236233,
		46.172306, 33.932999, 32.828789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797688, 33.165348, 33.194145>,  <45.498981, 33.836620, 32.994152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797688, 33.165348, 33.194145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043194, 33.341423, 32.931992>,  <46.190498, 33.447067, 32.774700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043194, 33.341423, 32.931992>,  <45.797688, 33.165348, 33.194145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.043194, 33.341423, 32.931992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737889, -0.024659, 0.674471,
		0.280733, -0.897567, -0.339945,
		0.613765, 0.440188, -0.655382,
		46.227322, 33.473480, 32.735378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333797, 32.829231, 32.924824>,  <45.797688, 33.165348, 33.194145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333797, 32.829231, 32.924824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457642, 33.209522, 32.918415>,  <46.531948, 33.437698, 32.914570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457642, 33.209522, 32.918415>,  <46.333797, 32.829231, 32.924824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457642, 33.209522, 32.918415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635631, -0.194402, 0.747115,
		0.707189, -0.241497, -0.664502,
		0.309607, 0.950730, -0.016024,
		46.550522, 33.494740, 32.913609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.142315, 32.817089, 32.759396>,  <46.333797, 32.829231, 32.924824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.142315, 32.817089, 32.759396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.019722, 33.127048, 32.980522>,  <46.946167, 33.313023, 33.113197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.019722, 33.127048, 32.980522>,  <47.142315, 32.817089, 32.759396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.019722, 33.127048, 32.980522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533982, -0.340809, 0.773765,
		0.787992, 0.532337, -0.309330,
		-0.306481, 0.774898, 0.552813,
		46.927776, 33.359516, 33.146366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.727997, 33.145111, 33.127708>,  <47.142315, 32.817089, 32.759396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.727997, 33.145111, 33.127708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.385906, 33.213017, 33.323574>,  <47.180653, 33.253757, 33.441093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.385906, 33.213017, 33.323574>,  <47.727997, 33.145111, 33.127708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.385906, 33.213017, 33.323574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330755, -0.548609, 0.767873,
		0.398991, 0.818663, 0.413034,
		-0.855224, 0.169761, 0.489667,
		47.129337, 33.263947, 33.470474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.827862, 33.584690, 33.733780>,  <47.727997, 33.145111, 33.127708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.827862, 33.584690, 33.733780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.525543, 33.322926, 33.742901>,  <47.344154, 33.165867, 33.748375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.525543, 33.322926, 33.742901>,  <47.827862, 33.584690, 33.733780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.525543, 33.322926, 33.742901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426375, -0.465396, 0.775636,
		-0.496974, 0.595943, 0.630768,
		-0.755792, -0.654415, 0.022805,
		47.298805, 33.126602, 33.749741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.561424, 34.311474, 33.747715>,  <47.827862, 33.584690, 33.733780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.561424, 34.311474, 33.747715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.190510, 34.406178, 33.863705>,  <46.967960, 34.463001, 33.933300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.190510, 34.406178, 33.863705>,  <47.561424, 34.311474, 33.747715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.190510, 34.406178, 33.863705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319795, -0.098306, -0.942373,
		-0.194609, -0.966582, 0.166873,
		-0.927285, 0.236760, 0.289977,
		46.912323, 34.477207, 33.950699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.271809, 34.754681, 34.305058>,  <47.561424, 34.311474, 33.747715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.271809, 34.754681, 34.305058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538616, 35.051811, 34.328022>,  <47.698700, 35.230091, 34.341801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538616, 35.051811, 34.328022>,  <47.271809, 34.754681, 34.305058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.538616, 35.051811, 34.328022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140961, 0.050161, 0.988743,
		0.731589, -0.667598, 0.138168,
		0.667014, 0.742830, 0.057408,
		47.738720, 35.274662, 34.345245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.812832, 34.514114, 34.649490>,  <47.271809, 34.754681, 34.305058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.812832, 34.514114, 34.649490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.724731, 34.903191, 34.678764>,  <47.671871, 35.136639, 34.696331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.724731, 34.903191, 34.678764>,  <47.812832, 34.514114, 34.649490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.724731, 34.903191, 34.678764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108435, -0.098982, 0.989163,
		0.969397, 0.209930, 0.127275,
		-0.220253, 0.972693, 0.073189,
		47.658657, 35.195000, 34.700722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.263203, 34.923100, 35.131805>,  <47.812832, 34.514114, 34.649490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.263203, 34.923100, 35.131805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.897640, 35.085342, 35.125305>,  <47.678303, 35.182686, 35.121407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.897640, 35.085342, 35.125305>,  <48.263203, 34.923100, 35.131805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.897640, 35.085342, 35.125305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037931, -0.045469, 0.998245,
		0.404153, 0.912918, 0.056939,
		-0.913905, 0.405603, -0.016251,
		47.623470, 35.207024, 35.120430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.038483, 28.347349, 29.565922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.707531, 28.459509, 29.371265>,  <39.508961, 28.526804, 29.254471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.707531, 28.459509, 29.371265>,  <40.038483, 28.347349, 29.565922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707531, 28.459509, 29.371265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232667, 0.617500, 0.751372,
		0.511186, 0.734895, -0.445666,
		-0.827378, 0.280399, -0.486643,
		39.459316, 28.543629, 29.225273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073647, 29.169962, 29.535328>,  <40.038483, 28.347349, 29.565922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073647, 29.169962, 29.535328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.696796, 29.049221, 29.476980>,  <39.470684, 28.976776, 29.441971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.696796, 29.049221, 29.476980>,  <40.073647, 29.169962, 29.535328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696796, 29.049221, 29.476980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302936, 0.580137, 0.756089,
		-0.143603, 0.756523, -0.638006,
		-0.942129, -0.301852, -0.145868,
		39.414158, 28.958666, 29.433220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690804, 29.770237, 29.781382>,  <40.073647, 29.169962, 29.535328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690804, 29.770237, 29.781382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.418045, 29.477766, 29.789343>,  <39.254391, 29.302284, 29.794119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.418045, 29.477766, 29.789343>,  <39.690804, 29.770237, 29.781382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418045, 29.477766, 29.789343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537675, 0.519511, 0.664088,
		-0.495905, 0.442139, -0.747389,
		-0.681897, -0.731178, 0.019901,
		39.213474, 29.258413, 29.795313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118717, 30.183876, 29.790398>,  <39.690804, 29.770237, 29.781382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118717, 30.183876, 29.790398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.029465, 29.810381, 29.902361>,  <38.975914, 29.586285, 29.969540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.029465, 29.810381, 29.902361>,  <39.118717, 30.183876, 29.790398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029465, 29.810381, 29.902361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660250, 0.356017, 0.661303,
		-0.717136, -0.037255, -0.695937,
		-0.223129, -0.933737, 0.279910,
		38.962524, 29.530260, 29.986334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326515, 30.151659, 29.870707>,  <39.118717, 30.183876, 29.790398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326515, 30.151659, 29.870707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435341, 29.849108, 30.108654>,  <38.500637, 29.667576, 30.251423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435341, 29.849108, 30.108654>,  <38.326515, 30.151659, 29.870707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435341, 29.849108, 30.108654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516858, 0.406581, 0.753359,
		-0.811688, -0.512427, -0.280324,
		0.272067, -0.756380, 0.594868,
		38.516960, 29.622194, 30.287115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775192, 30.058765, 30.336300>,  <38.326515, 30.151659, 29.870707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775192, 30.058765, 30.336300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073143, 29.873375, 30.528278>,  <38.251915, 29.762140, 30.643465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073143, 29.873375, 30.528278>,  <37.775192, 30.058765, 30.336300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073143, 29.873375, 30.528278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447658, 0.186219, 0.874600,
		-0.494732, -0.866320, -0.068770,
		0.744877, -0.463478, 0.479944,
		38.296608, 29.734331, 30.672262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508274, 29.606520, 30.812731>,  <37.775192, 30.058765, 30.336300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508274, 29.606520, 30.812731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.867573, 29.681810, 30.971588>,  <38.083153, 29.726984, 31.066902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.867573, 29.681810, 30.971588>,  <37.508274, 29.606520, 30.812731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867573, 29.681810, 30.971588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421274, 0.111313, 0.900076,
		0.125245, -0.975790, 0.179297,
		0.898243, 0.188263, 0.397134,
		38.137047, 29.738277, 31.090731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531803, 29.062500, 31.344303>,  <37.508274, 29.606520, 30.812731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531803, 29.062500, 31.344303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.791416, 29.352734, 31.435770>,  <37.947182, 29.526873, 31.490650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.791416, 29.352734, 31.435770>,  <37.531803, 29.062500, 31.344303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791416, 29.352734, 31.435770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360747, 0.028899, 0.932216,
		0.669792, -0.687528, 0.280509,
		0.649030, 0.725583, 0.228667,
		37.986126, 29.570408, 31.504370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703472, 28.943287, 32.098545>,  <37.531803, 29.062500, 31.344303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703472, 28.943287, 32.098545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.819530, 29.321529, 32.039696>,  <37.889168, 29.548475, 32.004387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.819530, 29.321529, 32.039696>,  <37.703472, 28.943287, 32.098545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819530, 29.321529, 32.039696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254725, 0.224503, 0.940592,
		0.922458, -0.235435, 0.306009,
		0.290149, 0.945605, -0.147123,
		37.906574, 29.605211, 31.995560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051949, 29.108374, 32.658875>,  <37.703472, 28.943287, 32.098545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051949, 29.108374, 32.658875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.963970, 29.469759, 32.511700>,  <37.911182, 29.686590, 32.423393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.963970, 29.469759, 32.511700>,  <38.051949, 29.108374, 32.658875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963970, 29.469759, 32.511700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214146, 0.323258, 0.921762,
		0.951717, 0.281529, 0.122374,
		-0.219945, 0.903463, -0.367939,
		37.897987, 29.740797, 32.401318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432747, 29.468733, 33.098778>,  <38.051949, 29.108374, 32.658875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432747, 29.468733, 33.098778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156204, 29.695976, 32.920216>,  <37.990280, 29.832323, 32.813076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156204, 29.695976, 32.920216>,  <38.432747, 29.468733, 33.098778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156204, 29.695976, 32.920216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194364, 0.448843, 0.872217,
		0.695882, 0.689777, -0.199890,
		-0.691355, 0.568109, -0.446409,
		37.948799, 29.866409, 32.786293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635040, 30.175222, 33.309547>,  <38.432747, 29.468733, 33.098778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635040, 30.175222, 33.309547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271889, 30.219431, 33.147785>,  <38.053997, 30.245956, 33.050728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271889, 30.219431, 33.147785>,  <38.635040, 30.175222, 33.309547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271889, 30.219431, 33.147785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224413, 0.686675, 0.691459,
		0.354117, 0.718514, -0.598614,
		-0.907877, 0.110521, -0.404407,
		37.999527, 30.252586, 33.026463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562538, 30.894947, 33.081478>,  <38.635040, 30.175222, 33.309547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562538, 30.894947, 33.081478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.204159, 30.732038, 33.152367>,  <37.989132, 30.634293, 33.194901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.204159, 30.732038, 33.152367>,  <38.562538, 30.894947, 33.081478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204159, 30.732038, 33.152367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175863, 0.691680, 0.700465,
		-0.407859, 0.596413, -0.691334,
		-0.895948, -0.407271, 0.177221,
		37.935375, 30.609858, 33.205532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168259, 31.452566, 33.232399>,  <38.562538, 30.894947, 33.081478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168259, 31.452566, 33.232399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988052, 31.132872, 33.391525>,  <37.879929, 30.941055, 33.487000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988052, 31.132872, 33.391525>,  <38.168259, 31.452566, 33.232399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988052, 31.132872, 33.391525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357607, 0.569839, 0.739865,
		-0.818018, 0.191059, -0.542534,
		-0.450514, -0.799237, 0.397814,
		37.852898, 30.893101, 33.510868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470852, 31.668703, 33.404629>,  <38.168259, 31.452566, 33.232399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470852, 31.668703, 33.404629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.530052, 31.342169, 33.627945>,  <37.565571, 31.146248, 33.761936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.530052, 31.342169, 33.627945>,  <37.470852, 31.668703, 33.404629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530052, 31.342169, 33.627945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251726, 0.514824, 0.819507,
		-0.956416, -0.261822, -0.129300,
		0.147998, -0.816337, 0.558293,
		37.574451, 31.097267, 33.795433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901649, 31.647406, 33.916351>,  <37.470852, 31.668703, 33.404629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901649, 31.647406, 33.916351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.191101, 31.416521, 34.067711>,  <37.364773, 31.277990, 34.158527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.191101, 31.416521, 34.067711>,  <36.901649, 31.647406, 33.916351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191101, 31.416521, 34.067711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161465, 0.391462, 0.905917,
		-0.671033, -0.716649, 0.190076,
		0.723632, -0.577210, 0.378398,
		37.408192, 31.243359, 34.181229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607090, 31.292389, 34.484154>,  <36.901649, 31.647406, 33.916351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607090, 31.292389, 34.484154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.998978, 31.266068, 34.559849>,  <37.234112, 31.250275, 34.605267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.998978, 31.266068, 34.559849>,  <36.607090, 31.292389, 34.484154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998978, 31.266068, 34.559849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169885, 0.227862, 0.958758,
		-0.106211, -0.971467, 0.212063,
		0.979724, -0.065804, 0.189240,
		37.292896, 31.246326, 34.616619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672359, 30.936831, 35.106728>,  <36.607090, 31.292389, 34.484154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672359, 30.936831, 35.106728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032700, 31.107054, 35.072411>,  <37.248905, 31.209188, 35.051819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032700, 31.107054, 35.072411>,  <36.672359, 30.936831, 35.106728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032700, 31.107054, 35.072411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010829, 0.219598, 0.975530,
		0.433988, -0.877881, 0.202434,
		0.900854, 0.425561, -0.085797,
		37.302956, 31.234722, 35.046673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029263, 30.725325, 35.677914>,  <36.672359, 30.936831, 35.106728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029263, 30.725325, 35.677914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201378, 31.054926, 35.530476>,  <37.304649, 31.252687, 35.442013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201378, 31.054926, 35.530476>,  <37.029263, 30.725325, 35.677914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201378, 31.054926, 35.530476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053394, 0.430852, 0.900842,
		0.901110, -0.367943, 0.229388,
		0.430290, 0.824006, -0.368599,
		37.330463, 31.302128, 35.419895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596806, 31.005455, 36.146832>,  <37.029263, 30.725325, 35.677914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596806, 31.005455, 36.146832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490864, 31.334509, 35.945587>,  <37.427299, 31.531942, 35.824841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490864, 31.334509, 35.945587>,  <37.596806, 31.005455, 36.146832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490864, 31.334509, 35.945587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174755, 0.554053, 0.813933,
		0.948322, 0.127648, -0.290500,
		-0.264850, 0.822637, -0.503114,
		37.411407, 31.581301, 35.794655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765770, 31.433655, 36.601654>,  <37.596806, 31.005455, 36.146832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765770, 31.433655, 36.601654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.590199, 31.698898, 36.359123>,  <37.484856, 31.858044, 36.213604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.590199, 31.698898, 36.359123>,  <37.765770, 31.433655, 36.601654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590199, 31.698898, 36.359123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126084, 0.622669, 0.772261,
		0.889631, 0.415416, -0.189701,
		-0.438930, 0.663109, -0.606323,
		37.458519, 31.897831, 36.177227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524086, 31.392748, 37.036198>,  <37.765770, 31.433655, 36.601654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524086, 31.392748, 37.036198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.817753, 31.636852, 37.155243>,  <38.993954, 31.783316, 37.226669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.817753, 31.636852, 37.155243>,  <38.524086, 31.392748, 37.036198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817753, 31.636852, 37.155243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453523, -0.114568, -0.883850,
		-0.505282, 0.783872, -0.360880,
		0.734171, 0.610261, 0.297615,
		39.038006, 31.819931, 37.244526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564220, 31.990551, 36.582485>,  <38.524086, 31.392748, 37.036198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564220, 31.990551, 36.582485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.922146, 31.974539, 36.760342>,  <39.136902, 31.964931, 36.867054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.922146, 31.974539, 36.760342>,  <38.564220, 31.990551, 36.582485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922146, 31.974539, 36.760342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444472, -0.013457, -0.895692,
		0.041838, 0.999108, 0.005751,
		0.894815, -0.040030, 0.444639,
		39.190590, 31.962530, 36.893734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964123, 32.423748, 36.094143>,  <38.564220, 31.990551, 36.582485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964123, 32.423748, 36.094143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.227665, 32.240116, 36.332520>,  <39.385792, 32.129936, 36.475548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.227665, 32.240116, 36.332520>,  <38.964123, 32.423748, 36.094143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227665, 32.240116, 36.332520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612821, -0.131916, -0.779133,
		0.436303, 0.878544, 0.194423,
		0.658855, -0.459084, 0.595946,
		39.425320, 32.102390, 36.511303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583519, 32.717552, 35.974579>,  <38.964123, 32.423748, 36.094143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583519, 32.717552, 35.974579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.687313, 32.370850, 36.144943>,  <39.749588, 32.162827, 36.247162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.687313, 32.370850, 36.144943>,  <39.583519, 32.717552, 35.974579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687313, 32.370850, 36.144943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678136, -0.150468, -0.719369,
		0.687605, 0.475485, 0.548737,
		0.259482, -0.866760, 0.425906,
		39.765156, 32.110821, 36.272717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224300, 32.676716, 35.732403>,  <39.583519, 32.717552, 35.974579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224300, 32.676716, 35.732403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.147911, 32.305099, 35.859150>,  <40.102077, 32.082130, 35.935200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.147911, 32.305099, 35.859150>,  <40.224300, 32.676716, 35.732403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147911, 32.305099, 35.859150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576611, -0.367422, -0.729740,
		0.794385, 0.043349, 0.605866,
		-0.190975, -0.929043, 0.316871,
		40.090618, 32.026386, 35.954212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788395, 32.324959, 35.763035>,  <40.224300, 32.676716, 35.732403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788395, 32.324959, 35.763035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.533554, 32.018353, 35.730644>,  <40.380650, 31.834391, 35.711212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.533554, 32.018353, 35.730644>,  <40.788395, 32.324959, 35.763035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533554, 32.018353, 35.730644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598249, -0.425523, -0.678990,
		0.485998, -0.481030, 0.729668,
		-0.637106, -0.766512, -0.080972,
		40.342422, 31.788399, 35.706352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209545, 31.825541, 35.586964>,  <40.788395, 32.324959, 35.763035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209545, 31.825541, 35.586964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.845520, 31.681446, 35.504974>,  <40.627106, 31.594990, 35.455780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.845520, 31.681446, 35.504974>,  <41.209545, 31.825541, 35.586964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845520, 31.681446, 35.504974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380995, -0.532394, -0.755910,
		0.163178, -0.766020, 0.621760,
		-0.910063, -0.360235, -0.204975,
		40.572502, 31.573376, 35.443481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207043, 31.022146, 35.623856>,  <41.209545, 31.825541, 35.586964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207043, 31.022146, 35.623856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.936356, 31.164391, 35.365990>,  <40.773941, 31.249737, 35.211269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.936356, 31.164391, 35.365990>,  <41.207043, 31.022146, 35.623856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936356, 31.164391, 35.365990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310530, -0.656057, -0.687866,
		-0.667563, -0.665673, 0.333526,
		-0.676706, 0.355623, -0.644671,
		40.733341, 31.271074, 35.172592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185925, 30.464209, 35.191692>,  <41.207043, 31.022146, 35.623856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185925, 30.464209, 35.191692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.004951, 30.745203, 34.971939>,  <40.896366, 30.913799, 34.840088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.004951, 30.745203, 34.971939>,  <41.185925, 30.464209, 35.191692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004951, 30.745203, 34.971939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281494, -0.472048, -0.835423,
		-0.846206, -0.532621, 0.015825,
		-0.452434, 0.702485, -0.549380,
		40.869221, 30.955948, 34.807125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871761, 30.161985, 34.626652>,  <41.185925, 30.464209, 35.191692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871761, 30.161985, 34.626652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.896461, 30.540150, 34.498665>,  <40.911282, 30.767048, 34.421871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.896461, 30.540150, 34.498665>,  <40.871761, 30.161985, 34.626652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896461, 30.540150, 34.498665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150454, -0.325736, -0.933413,
		-0.986687, 0.009495, -0.162355,
		0.061748, 0.945413, -0.319971,
		40.914986, 30.823774, 34.402672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568722, 30.068346, 33.916309>,  <40.871761, 30.161985, 34.626652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568722, 30.068346, 33.916309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.766510, 30.415920, 33.924740>,  <40.885185, 30.624466, 33.929798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.766510, 30.415920, 33.924740>,  <40.568722, 30.068346, 33.916309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766510, 30.415920, 33.924740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172911, -0.074572, -0.982110,
		-0.851820, 0.489273, -0.187123,
		0.494474, 0.868937, 0.021078,
		40.914852, 30.676601, 33.931065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284523, 30.438280, 33.417816>,  <40.568722, 30.068346, 33.916309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284523, 30.438280, 33.417816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.650288, 30.583952, 33.488495>,  <40.869747, 30.671356, 33.530903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.650288, 30.583952, 33.488495>,  <40.284523, 30.438280, 33.417816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650288, 30.583952, 33.488495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274643, -0.237516, -0.931750,
		-0.297357, 0.900532, -0.317208,
		0.914412, 0.364181, 0.176698,
		40.924610, 30.693207, 33.541504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395687, 30.928308, 32.874390>,  <40.284523, 30.438280, 33.417816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395687, 30.928308, 32.874390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.748142, 30.818211, 33.028187>,  <40.959614, 30.752151, 33.120464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.748142, 30.818211, 33.028187>,  <40.395687, 30.928308, 32.874390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748142, 30.818211, 33.028187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322328, -0.245324, -0.914287,
		0.345980, 0.929546, -0.127445,
		0.881137, -0.275246, 0.384496,
		41.012482, 30.735638, 33.143536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865490, 31.295328, 32.495007>,  <40.395687, 30.928308, 32.874390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865490, 31.295328, 32.495007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.031933, 30.968729, 32.655098>,  <41.131798, 30.772770, 32.751152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.031933, 30.968729, 32.655098>,  <40.865490, 31.295328, 32.495007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031933, 30.968729, 32.655098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331915, -0.273387, -0.902824,
		0.846572, 0.508516, 0.157249,
		0.416111, -0.816499, 0.400226,
		41.156765, 30.723780, 32.775166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501335, 31.152884, 32.202053>,  <40.865490, 31.295328, 32.495007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501335, 31.152884, 32.202053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.471447, 30.797674, 32.383526>,  <41.453514, 30.584549, 32.492409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.471447, 30.797674, 32.383526>,  <41.501335, 31.152884, 32.202053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471447, 30.797674, 32.383526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372721, -0.446853, -0.813266,
		0.924930, 0.108326, 0.364377,
		-0.074725, -0.888025, 0.453683,
		41.449028, 30.531267, 32.519630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039463, 30.821249, 31.949144>,  <41.501335, 31.152884, 32.202053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039463, 30.821249, 31.949144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.794552, 30.531118, 32.075012>,  <41.647606, 30.357040, 32.150532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.794552, 30.531118, 32.075012>,  <42.039463, 30.821249, 31.949144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794552, 30.531118, 32.075012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299813, -0.581265, -0.756467,
		0.731590, -0.368829, 0.573359,
		-0.612280, -0.725325, 0.314668,
		41.610867, 30.313520, 32.169411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438141, 30.213108, 31.788813>,  <42.039463, 30.821249, 31.949144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438141, 30.213108, 31.788813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.062737, 30.091595, 31.854443>,  <41.837494, 30.018686, 31.893820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.062737, 30.091595, 31.854443>,  <42.438141, 30.213108, 31.788813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062737, 30.091595, 31.854443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102538, -0.699013, -0.707720,
		0.329684, -0.647376, 0.687177,
		-0.938507, -0.303786, 0.164073,
		41.781185, 30.000460, 31.903664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531151, 29.549528, 31.695490>,  <42.438141, 30.213108, 31.788813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531151, 29.549528, 31.695490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.133587, 29.590090, 31.678249>,  <41.895050, 29.614428, 31.667906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.133587, 29.590090, 31.678249>,  <42.531151, 29.549528, 31.695490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133587, 29.590090, 31.678249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063605, -0.847437, -0.527072,
		-0.089974, -0.521121, 0.848727,
		-0.993911, 0.101406, -0.043101,
		41.835415, 29.620512, 31.665319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168812, 28.961166, 32.007710>,  <42.531151, 29.549528, 31.695490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168812, 28.961166, 32.007710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.947426, 29.114069, 31.711720>,  <41.814594, 29.205811, 31.534126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.947426, 29.114069, 31.711720>,  <42.168812, 28.961166, 32.007710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947426, 29.114069, 31.711720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043062, -0.900400, -0.432926,
		-0.831759, -0.207745, 0.514800,
		-0.553464, 0.382258, -0.739970,
		41.781387, 29.228746, 31.489729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.006638, 28.018456, 31.539446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.131741, 28.342417, 31.340956>,  <41.206802, 28.536793, 31.221863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.131741, 28.342417, 31.340956>,  <41.006638, 28.018456, 31.539446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131741, 28.342417, 31.340956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059053, -0.538003, -0.840872,
		-0.947995, 0.233686, -0.216092,
		0.312758, 0.809904, -0.496224,
		41.225567, 28.585388, 31.192089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539581, 28.090939, 30.984692>,  <41.006638, 28.018456, 31.539446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539581, 28.090939, 30.984692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.862522, 28.303171, 30.881407>,  <41.056286, 28.430510, 30.819435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.862522, 28.303171, 30.881407>,  <40.539581, 28.090939, 30.984692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862522, 28.303171, 30.881407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045035, -0.491721, -0.869588,
		-0.588355, 0.690431, -0.420884,
		0.807348, 0.530580, -0.258213,
		41.104725, 28.462345, 30.803944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410553, 28.261126, 30.210770>,  <40.539581, 28.090939, 30.984692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410553, 28.261126, 30.210770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.795250, 28.321455, 30.302246>,  <41.026070, 28.357653, 30.357132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.795250, 28.321455, 30.302246>,  <40.410553, 28.261126, 30.210770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795250, 28.321455, 30.302246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245227, -0.101885, -0.964097,
		-0.122110, 0.983296, -0.134974,
		0.961745, 0.150825, 0.228690,
		41.083775, 28.366703, 30.370853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764584, 28.711725, 29.736837>,  <40.410553, 28.261126, 30.210770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764584, 28.711725, 29.736837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.055382, 28.500410, 29.912287>,  <41.229862, 28.373621, 30.017557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.055382, 28.500410, 29.912287>,  <40.764584, 28.711725, 29.736837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055382, 28.500410, 29.912287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304366, -0.324675, -0.895515,
		0.615499, 0.784537, -0.075245,
		0.726995, -0.528287, 0.438623,
		41.273479, 28.341925, 30.043873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355026, 28.848022, 29.307262>,  <40.764584, 28.711725, 29.736837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355026, 28.848022, 29.307262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.440140, 28.508236, 29.500397>,  <41.491207, 28.304363, 29.616278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.440140, 28.508236, 29.500397>,  <41.355026, 28.848022, 29.307262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440140, 28.508236, 29.500397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268376, -0.424337, -0.864819,
		0.939521, 0.313597, 0.137686,
		0.212779, -0.849468, 0.482835,
		41.503975, 28.253395, 29.645247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034512, 28.718355, 29.188818>,  <41.355026, 28.848022, 29.307262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034512, 28.718355, 29.188818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.911236, 28.353136, 29.295671>,  <41.837269, 28.134005, 29.359783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.911236, 28.353136, 29.295671>,  <42.034512, 28.718355, 29.188818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911236, 28.353136, 29.295671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305814, -0.360982, -0.881005,
		0.900831, -0.189824, 0.390474,
		-0.308190, -0.913049, 0.267133,
		41.818779, 28.079222, 29.375811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611980, 28.278934, 29.067722>,  <42.034512, 28.718355, 29.188818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611980, 28.278934, 29.067722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.276340, 28.061352, 29.065588>,  <42.074959, 27.930803, 29.064306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.276340, 28.061352, 29.065588>,  <42.611980, 28.278934, 29.067722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276340, 28.061352, 29.065588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180984, -0.269903, -0.945726,
		0.512992, -0.794522, 0.324922,
		-0.839097, -0.543955, -0.005338,
		42.024612, 27.898165, 29.063986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889820, 27.607204, 28.827049>,  <42.611980, 28.278934, 29.067722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889820, 27.607204, 28.827049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.494667, 27.602543, 28.765137>,  <42.257576, 27.599747, 28.727989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.494667, 27.602543, 28.765137>,  <42.889820, 27.607204, 28.827049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494667, 27.602543, 28.765137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150758, -0.309380, -0.938912,
		-0.036946, -0.950867, 0.307387,
		-0.987880, -0.011652, -0.154781,
		42.198303, 27.599047, 28.718702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783226, 26.963907, 28.631859>,  <42.889820, 27.607204, 28.827049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783226, 26.963907, 28.631859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.466858, 27.165173, 28.492563>,  <42.277039, 27.285933, 28.408987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.466858, 27.165173, 28.492563>,  <42.783226, 26.963907, 28.631859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466858, 27.165173, 28.492563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191378, -0.337146, -0.921796,
		-0.581221, -0.795713, 0.170362,
		-0.790922, 0.503163, -0.348238,
		42.229580, 27.316122, 28.388092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458309, 26.416550, 28.153078>,  <42.783226, 26.963907, 28.631859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458309, 26.416550, 28.153078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.305122, 26.775576, 28.065706>,  <42.213211, 26.990992, 28.013283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.305122, 26.775576, 28.065706>,  <42.458309, 26.416550, 28.153078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305122, 26.775576, 28.065706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124379, -0.184199, -0.974988,
		-0.915349, -0.400558, -0.041096,
		-0.382969, 0.897566, -0.218427,
		42.190231, 27.044846, 28.000177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954788, 26.309944, 27.655958>,  <42.458309, 26.416550, 28.153078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954788, 26.309944, 27.655958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.079826, 26.689484, 27.638220>,  <42.154850, 26.917208, 27.627577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.079826, 26.689484, 27.638220>,  <41.954788, 26.309944, 27.655958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079826, 26.689484, 27.638220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195168, -0.109845, -0.974599,
		-0.929619, 0.296004, -0.219522,
		0.312599, 0.948850, -0.044343,
		42.173607, 26.974138, 27.624916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741520, 26.414370, 27.004057>,  <41.954788, 26.309944, 27.655958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741520, 26.414370, 27.004057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.010803, 26.693779, 27.101101>,  <42.172371, 26.861425, 27.159327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.010803, 26.693779, 27.101101>,  <41.741520, 26.414370, 27.004057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010803, 26.693779, 27.101101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372112, -0.036497, -0.927470,
		-0.639005, 0.714656, -0.284499,
		0.673206, 0.698523, 0.242611,
		42.212765, 26.903336, 27.173883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774670, 27.002136, 26.471365>,  <41.741520, 26.414370, 27.004057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774670, 27.002136, 26.471365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.133266, 27.018784, 26.647804>,  <42.348427, 27.028772, 26.753668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.133266, 27.018784, 26.647804>,  <41.774670, 27.002136, 26.471365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133266, 27.018784, 26.647804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443055, -0.086531, -0.892308,
		0.001031, 0.995379, -0.096014,
		0.896494, 0.041620, 0.441097,
		42.402214, 27.031269, 26.780134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131760, 27.263479, 25.957998>,  <41.774670, 27.002136, 26.471365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131760, 27.263479, 25.957998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.434258, 27.146589, 26.192158>,  <42.615757, 27.076456, 26.332653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.434258, 27.146589, 26.192158>,  <42.131760, 27.263479, 25.957998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434258, 27.146589, 26.192158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588443, -0.087387, -0.803802,
		0.286047, 0.952349, 0.105871,
		0.756249, -0.292224, 0.585400,
		42.661133, 27.058922, 26.367777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712502, 27.647305, 25.712811>,  <42.131760, 27.263479, 25.957998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712502, 27.647305, 25.712811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.864834, 27.324705, 25.893711>,  <42.956234, 27.131145, 26.002251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.864834, 27.324705, 25.893711>,  <42.712502, 27.647305, 25.712811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864834, 27.324705, 25.893711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597820, -0.158368, -0.785831,
		0.705393, 0.569632, 0.421829,
		0.380830, -0.806498, 0.452249,
		42.979084, 27.082756, 26.029387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438438, 27.664169, 25.594904>,  <42.712502, 27.647305, 25.712811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438438, 27.664169, 25.594904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.357475, 27.281887, 25.680370>,  <43.308899, 27.052517, 25.731651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.357475, 27.281887, 25.680370>,  <43.438438, 27.664169, 25.594904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357475, 27.281887, 25.680370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519405, -0.289734, -0.803911,
		0.830210, -0.051737, 0.555044,
		-0.202407, -0.955708, 0.213668,
		43.296753, 26.995174, 25.744471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031414, 27.250273, 25.518524>,  <43.438438, 27.664169, 25.594904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031414, 27.250273, 25.518524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.731674, 26.986885, 25.490526>,  <43.551830, 26.828854, 25.473728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.731674, 26.986885, 25.490526>,  <44.031414, 27.250273, 25.518524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731674, 26.986885, 25.490526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392811, -0.356933, -0.847525,
		0.533084, -0.662585, 0.526120,
		-0.749347, -0.658468, -0.069995,
		43.506870, 26.789345, 25.469528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.367004, 26.623108, 25.323595>,  <44.031414, 27.250273, 25.518524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.367004, 26.623108, 25.323595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.987526, 26.539354, 25.228830>,  <43.759838, 26.489101, 25.171972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.987526, 26.539354, 25.228830>,  <44.367004, 26.623108, 25.323595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987526, 26.539354, 25.228830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308191, -0.445011, -0.840823,
		0.070628, -0.870702, 0.486713,
		-0.948699, -0.209386, -0.236912,
		43.702915, 26.476538, 25.157757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358028, 25.870619, 25.113440>,  <44.367004, 26.623108, 25.323595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358028, 25.870619, 25.113440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.036720, 26.041134, 24.947048>,  <43.843937, 26.143442, 24.847214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.036720, 26.041134, 24.947048>,  <44.358028, 25.870619, 25.113440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036720, 26.041134, 24.947048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332974, -0.257671, -0.907047,
		-0.493849, -0.867112, 0.065036,
		-0.803269, 0.426288, -0.415977,
		43.795738, 26.169020, 24.822254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157059, 25.367899, 24.648287>,  <44.358028, 25.870619, 25.113440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157059, 25.367899, 24.648287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.951263, 25.680351, 24.506786>,  <43.827785, 25.867823, 24.421886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.951263, 25.680351, 24.506786>,  <44.157059, 25.367899, 24.648287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951263, 25.680351, 24.506786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459308, -0.097332, -0.882928,
		-0.724113, -0.616735, -0.308704,
		-0.514486, 0.781130, -0.353750,
		43.796917, 25.914690, 24.400661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963322, 25.113041, 24.009706>,  <44.157059, 25.367899, 24.648287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963322, 25.113041, 24.009706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.914169, 25.508320, 23.973110>,  <43.884678, 25.745487, 23.951153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.914169, 25.508320, 23.973110>,  <43.963322, 25.113041, 24.009706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914169, 25.508320, 23.973110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430965, -0.029909, -0.901873,
		-0.893963, -0.150251, -0.422202,
		-0.122879, 0.988196, -0.091490,
		43.877304, 25.804779, 23.945663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552212, 25.301901, 23.409050>,  <43.963322, 25.113041, 24.009706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552212, 25.301901, 23.409050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.795090, 25.611778, 23.479666>,  <43.940815, 25.797705, 23.522036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.795090, 25.611778, 23.479666>,  <43.552212, 25.301901, 23.409050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795090, 25.611778, 23.479666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343668, -0.055738, -0.937436,
		-0.716385, 0.629876, -0.300081,
		0.607195, 0.774693, 0.176538,
		43.977249, 25.844187, 23.532627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384590, 25.848791, 22.904709>,  <43.552212, 25.301901, 23.409050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384590, 25.848791, 22.904709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.759823, 25.909782, 23.029125>,  <43.984962, 25.946377, 23.103775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.759823, 25.909782, 23.029125>,  <43.384590, 25.848791, 22.904709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759823, 25.909782, 23.029125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338897, -0.218033, -0.915211,
		-0.071731, 0.963957, -0.256207,
		0.938085, 0.152476, 0.311042,
		44.041248, 25.955524, 23.122438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563484, 26.075706, 22.256418>,  <43.384590, 25.848791, 22.904709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563484, 26.075706, 22.256418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.890995, 25.987823, 22.468580>,  <44.087502, 25.935095, 22.595877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.890995, 25.987823, 22.468580>,  <43.563484, 26.075706, 22.256418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890995, 25.987823, 22.468580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463708, -0.291620, -0.836620,
		0.338487, 0.930960, -0.136894,
		0.818781, -0.219706, 0.530403,
		44.136631, 25.921911, 22.627701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862484, 25.836399, 22.151865>,  <43.563484, 26.075706, 22.256418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862484, 25.836399, 22.151865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.886040, 25.606890, 22.478622>,  <42.900173, 25.469183, 22.674677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.886040, 25.606890, 22.478622>,  <42.862484, 25.836399, 22.151865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886040, 25.606890, 22.478622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135597, -0.806131, -0.575991,
		0.989012, 0.144688, 0.030330,
		0.058889, -0.573775, 0.816893,
		42.903706, 25.434757, 22.723690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171638, 26.103807, 22.432722>,  <42.862484, 25.836399, 22.151865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171638, 26.103807, 22.432722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.789513, 26.060062, 22.322870>,  <41.560238, 26.033815, 22.256958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.789513, 26.060062, 22.322870>,  <42.171638, 26.103807, 22.432722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789513, 26.060062, 22.322870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287446, 0.560450, 0.776705,
		0.068973, 0.820935, -0.566840,
		-0.955310, -0.109364, -0.274631,
		41.502918, 26.027254, 22.240480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910240, 26.751091, 22.485998>,  <42.171638, 26.103807, 22.432722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910240, 26.751091, 22.485998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.587986, 26.515572, 22.512108>,  <41.394634, 26.374260, 22.527773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.587986, 26.515572, 22.512108>,  <41.910240, 26.751091, 22.485998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587986, 26.515572, 22.512108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366757, 0.582262, 0.725576,
		-0.465225, 0.560613, -0.685039,
		-0.805640, -0.588799, 0.065274,
		41.346294, 26.338932, 22.531691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336411, 27.274738, 22.653816>,  <41.910240, 26.751091, 22.485998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336411, 27.274738, 22.653816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.191490, 26.909475, 22.728527>,  <41.104538, 26.690317, 22.773354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.191490, 26.909475, 22.728527>,  <41.336411, 27.274738, 22.653816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191490, 26.909475, 22.728527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591349, 0.380094, 0.711221,
		-0.720450, 0.147221, -0.677701,
		-0.362297, -0.913156, 0.186779,
		41.082802, 26.635529, 22.784561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654209, 27.332867, 22.702761>,  <41.336411, 27.274738, 22.653816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654209, 27.332867, 22.702761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.796566, 27.020250, 22.907715>,  <40.881981, 26.832682, 23.030687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.796566, 27.020250, 22.907715>,  <40.654209, 27.332867, 22.702761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796566, 27.020250, 22.907715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422750, 0.354338, 0.834102,
		-0.833441, -0.513460, -0.204291,
		0.355890, -0.781539, 0.512385,
		40.903332, 26.785789, 23.061430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084011, 27.169849, 23.191954>,  <40.654209, 27.332867, 22.702761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084011, 27.169849, 23.191954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.373444, 26.940241, 23.345278>,  <40.547104, 26.802475, 23.437273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.373444, 26.940241, 23.345278>,  <40.084011, 27.169849, 23.191954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373444, 26.940241, 23.345278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293171, 0.247162, 0.923559,
		-0.624884, -0.780646, 0.010555,
		0.723582, -0.574023, 0.383310,
		40.590519, 26.768034, 23.460272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682537, 26.679092, 23.621708>,  <40.084011, 27.169849, 23.191954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682537, 26.679092, 23.621708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.064346, 26.734842, 23.727125>,  <40.293434, 26.768293, 23.790377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.064346, 26.734842, 23.727125>,  <39.682537, 26.679092, 23.621708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064346, 26.734842, 23.727125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268794, 0.019945, 0.962991,
		0.128964, -0.990038, 0.056502,
		0.954525, 0.139378, 0.263544,
		40.350704, 26.776655, 23.806189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980507, 26.233063, 24.213831>,  <39.682537, 26.679092, 23.621708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980507, 26.233063, 24.213831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.179859, 26.579781, 24.220652>,  <40.299469, 26.787811, 24.224743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.179859, 26.579781, 24.220652>,  <39.980507, 26.233063, 24.213831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179859, 26.579781, 24.220652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141341, 0.061831, 0.988028,
		0.855361, -0.494821, 0.153328,
		0.498377, 0.866793, 0.017050,
		40.329372, 26.839819, 24.225767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271164, 26.178186, 24.923052>,  <39.980507, 26.233063, 24.213831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271164, 26.178186, 24.923052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364136, 26.555332, 24.827568>,  <40.419918, 26.781620, 24.770277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364136, 26.555332, 24.827568>,  <40.271164, 26.178186, 24.923052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364136, 26.555332, 24.827568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100366, 0.267373, 0.958352,
		0.967420, -0.198795, 0.156778,
		0.232434, 0.942864, -0.238710,
		40.433865, 26.838192, 24.755955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822674, 26.362480, 25.408133>,  <40.271164, 26.178186, 24.923052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822674, 26.362480, 25.408133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.670116, 26.712824, 25.289871>,  <40.578583, 26.923031, 25.218914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.670116, 26.712824, 25.289871>,  <40.822674, 26.362480, 25.408133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670116, 26.712824, 25.289871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026860, 0.309194, 0.950620,
		0.924024, 0.370498, -0.094398,
		-0.381390, 0.875860, -0.295654,
		40.555698, 26.975582, 25.201176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152344, 26.842106, 25.865616>,  <40.822674, 26.362480, 25.408133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152344, 26.842106, 25.865616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844189, 27.051899, 25.720608>,  <40.659294, 27.177774, 25.633602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844189, 27.051899, 25.720608>,  <41.152344, 26.842106, 25.865616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844189, 27.051899, 25.720608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064251, 0.501834, 0.862574,
		0.634331, 0.687808, -0.352908,
		-0.770387, 0.524483, -0.362521,
		40.613071, 27.209244, 25.611851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183941, 27.642464, 26.084728>,  <41.152344, 26.842106, 25.865616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183941, 27.642464, 26.084728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807304, 27.539225, 25.998196>,  <40.581322, 27.477282, 25.946276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807304, 27.539225, 25.998196>,  <41.183941, 27.642464, 26.084728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807304, 27.539225, 25.998196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306243, 0.388969, 0.868860,
		-0.140106, 0.884357, -0.445289,
		-0.941587, -0.258099, -0.216332,
		40.524830, 27.461794, 25.933296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644592, 28.335981, 26.184761>,  <41.183941, 27.642464, 26.084728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644592, 28.335981, 26.184761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.437977, 28.000051, 26.251553>,  <40.314007, 27.798494, 26.291628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.437977, 28.000051, 26.251553>,  <40.644592, 28.335981, 26.184761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437977, 28.000051, 26.251553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331191, 0.375786, 0.865504,
		-0.789618, 0.391769, -0.472251,
		-0.516543, -0.839823, 0.166977,
		40.283012, 27.748104, 26.301645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994759, 28.530350, 26.375118>,  <40.644592, 28.335981, 26.184761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994759, 28.530350, 26.375118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.011215, 28.160200, 26.525846>,  <40.021091, 27.938110, 26.616283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.011215, 28.160200, 26.525846>,  <39.994759, 28.530350, 26.375118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011215, 28.160200, 26.525846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574052, 0.286787, 0.766954,
		-0.817785, -0.247870, -0.519412,
		0.041145, -0.925372, 0.376820,
		40.023560, 27.882589, 26.638893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373604, 28.441511, 26.774761>,  <39.994759, 28.530350, 26.375118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373604, 28.441511, 26.774761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.599895, 28.129864, 26.882782>,  <39.735668, 27.942875, 26.947594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.599895, 28.129864, 26.882782>,  <39.373604, 28.441511, 26.774761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599895, 28.129864, 26.882782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433406, -0.002337, 0.901196,
		-0.701508, -0.626871, -0.338996,
		0.565726, -0.779119, 0.270050,
		39.769615, 27.896128, 26.963797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887814, 27.948315, 27.038660>,  <39.373604, 28.441511, 26.774761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887814, 27.948315, 27.038660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.250393, 27.864843, 27.185526>,  <39.467941, 27.814760, 27.273645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.250393, 27.864843, 27.185526>,  <38.887814, 27.948315, 27.038660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250393, 27.864843, 27.185526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404426, -0.178503, 0.896982,
		-0.121634, -0.961558, -0.246196,
		0.906446, -0.208672, 0.367167,
		39.522327, 27.802240, 27.295675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668385, 27.579639, 27.549494>,  <38.887814, 27.948315, 27.038660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668385, 27.579639, 27.549494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039158, 27.688396, 27.652929>,  <39.261623, 27.753651, 27.714991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039158, 27.688396, 27.652929>,  <38.668385, 27.579639, 27.549494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039158, 27.688396, 27.652929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336553, 0.297723, 0.893361,
		0.165910, -0.915115, 0.367476,
		0.926934, 0.271893, 0.258589,
		39.317238, 27.769964, 27.730505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892685, 27.275162, 28.276230>,  <38.668385, 27.579639, 27.549494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892685, 27.275162, 28.276230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.117279, 27.595823, 28.194164>,  <39.252033, 27.788219, 28.144926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.117279, 27.595823, 28.194164>,  <38.892685, 27.275162, 28.276230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117279, 27.595823, 28.194164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290344, 0.423029, 0.858340,
		0.774880, -0.422374, 0.470278,
		0.561482, 0.801652, -0.205162,
		39.285725, 27.836319, 28.132616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243706, 27.416758, 28.927958>,  <38.892685, 27.275162, 28.276230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243706, 27.416758, 28.927958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281372, 27.751610, 28.712423>,  <39.303974, 27.952520, 28.583103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281372, 27.751610, 28.712423>,  <39.243706, 27.416758, 28.927958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281372, 27.751610, 28.712423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168933, 0.546830, 0.820024,
		0.981119, 0.013806, 0.192914,
		0.094170, 0.837130, -0.538837,
		39.309624, 28.002748, 28.550772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785694, 27.790684, 29.198235>,  <39.243706, 27.416758, 28.927958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785694, 27.790684, 29.198235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.569439, 28.058069, 28.993933>,  <39.439686, 28.218500, 28.871351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.569439, 28.058069, 28.993933>,  <39.785694, 27.790684, 29.198235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569439, 28.058069, 28.993933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046478, 0.582469, 0.811523,
		0.839973, 0.462476, -0.283833,
		-0.540634, 0.668465, -0.510753,
		39.407249, 28.258610, 28.840706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.252544, 30.509716, 33.516705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.876175, 30.590620, 33.408077>,  <41.650352, 30.639162, 33.342899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.876175, 30.590620, 33.408077>,  <42.252544, 30.509716, 33.516705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876175, 30.590620, 33.408077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129180, 0.526938, 0.840029,
		0.313005, 0.825486, -0.469681,
		-0.940925, 0.202260, -0.271570,
		41.593899, 30.651299, 33.326607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123917, 31.196016, 33.705143>,  <42.252544, 30.509716, 33.516705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123917, 31.196016, 33.705143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.763390, 31.026396, 33.669788>,  <41.547073, 30.924623, 33.648575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.763390, 31.026396, 33.669788>,  <42.123917, 31.196016, 33.705143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763390, 31.026396, 33.669788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292169, 0.444508, 0.846788,
		-0.319796, 0.789044, -0.524537,
		-0.901314, -0.424053, -0.088382,
		41.492996, 30.899179, 33.643272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665039, 31.784903, 33.909622>,  <42.123917, 31.196016, 33.705143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665039, 31.784903, 33.909622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.422466, 31.467138, 33.923172>,  <41.276924, 31.276480, 33.931301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.422466, 31.467138, 33.923172>,  <41.665039, 31.784903, 33.909622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422466, 31.467138, 33.923172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373889, 0.322493, 0.869600,
		-0.701745, 0.514691, -0.492593,
		-0.606433, -0.794413, 0.033871,
		41.240536, 31.228815, 33.933334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050098, 32.070858, 34.072487>,  <41.665039, 31.784903, 33.909622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050098, 32.070858, 34.072487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.992447, 31.682249, 34.147720>,  <40.957855, 31.449083, 34.192860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.992447, 31.682249, 34.147720>,  <41.050098, 32.070858, 34.072487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992447, 31.682249, 34.147720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648249, 0.236303, 0.723833,
		-0.747663, -0.017600, -0.663845,
		-0.144129, -0.971520, 0.188084,
		40.949207, 31.390793, 34.204147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381325, 31.850529, 34.085072>,  <41.050098, 32.070858, 34.072487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381325, 31.850529, 34.085072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.531609, 31.573009, 34.330830>,  <40.621780, 31.406498, 34.478287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.531609, 31.573009, 34.330830>,  <40.381325, 31.850529, 34.085072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531609, 31.573009, 34.330830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563781, 0.355065, 0.745707,
		-0.735522, -0.626556, -0.257750,
		0.375709, -0.693799, 0.614398,
		40.644321, 31.364870, 34.515148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771465, 31.642870, 34.465614>,  <40.381325, 31.850529, 34.085072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771465, 31.642870, 34.465614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.075459, 31.498453, 34.681789>,  <40.257854, 31.411804, 34.811497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.075459, 31.498453, 34.681789>,  <39.771465, 31.642870, 34.465614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075459, 31.498453, 34.681789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414288, 0.371599, 0.830831,
		-0.500791, -0.855315, 0.132833,
		0.759983, -0.361041, 0.540440,
		40.303452, 31.390141, 34.843922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385784, 31.214516, 34.967506>,  <39.771465, 31.642870, 34.465614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385784, 31.214516, 34.967506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.742966, 31.325075, 35.109627>,  <39.957275, 31.391411, 35.194897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.742966, 31.325075, 35.109627>,  <39.385784, 31.214516, 34.967506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742966, 31.325075, 35.109627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423013, 0.245337, 0.872279,
		0.153927, -0.929201, 0.335995,
		0.892954, 0.276398, 0.355299,
		40.010853, 31.407995, 35.216217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410366, 30.931242, 35.651707>,  <39.385784, 31.214516, 34.967506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410366, 30.931242, 35.651707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.729458, 31.170815, 35.679733>,  <39.920914, 31.314558, 35.696548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.729458, 31.170815, 35.679733>,  <39.410366, 30.931242, 35.651707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729458, 31.170815, 35.679733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223388, 0.185591, 0.956898,
		0.560113, -0.778997, 0.281845,
		0.797728, 0.598932, 0.070067,
		39.968777, 31.350494, 35.700752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887539, 30.758766, 36.163643>,  <39.410366, 30.931242, 35.651707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887539, 30.758766, 36.163643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.941566, 31.152138, 36.115276>,  <39.973984, 31.388161, 36.086258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.941566, 31.152138, 36.115276>,  <39.887539, 30.758766, 36.163643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941566, 31.152138, 36.115276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209334, 0.147602, 0.966640,
		0.968471, -0.105246, 0.225802,
		0.135064, 0.983431, -0.120917,
		39.982086, 31.447166, 36.079002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119381, 30.934883, 36.743137>,  <39.887539, 30.758766, 36.163643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119381, 30.934883, 36.743137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.982162, 31.276897, 36.587582>,  <39.899830, 31.482105, 36.494247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.982162, 31.276897, 36.587582>,  <40.119381, 30.934883, 36.743137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982162, 31.276897, 36.587582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404867, 0.238983, 0.882592,
		0.847584, 0.460220, 0.264193,
		-0.343049, 0.855035, -0.388886,
		39.879246, 31.533407, 36.470917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353268, 31.431366, 37.199291>,  <40.119381, 30.934883, 36.743137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353268, 31.431366, 37.199291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.070518, 31.616583, 36.985409>,  <39.900867, 31.727713, 36.857079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.070518, 31.616583, 36.985409>,  <40.353268, 31.431366, 37.199291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070518, 31.616583, 36.985409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337772, 0.443218, 0.830342,
		0.621478, 0.767560, -0.156897,
		-0.706877, 0.463044, -0.534710,
		39.858456, 31.755495, 36.824997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324425, 32.029694, 37.416172>,  <40.353268, 31.431366, 37.199291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324425, 32.029694, 37.416172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.967033, 32.001873, 37.238693>,  <39.752598, 31.985182, 37.132206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.967033, 32.001873, 37.238693>,  <40.324425, 32.029694, 37.416172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967033, 32.001873, 37.238693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437847, 0.354750, 0.826101,
		0.099947, 0.932371, -0.347412,
		-0.893476, -0.069547, -0.443692,
		39.698990, 31.981009, 37.105587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964722, 32.626534, 37.684105>,  <40.324425, 32.029694, 37.416172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964722, 32.626534, 37.684105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.693375, 32.359451, 37.561474>,  <39.530567, 32.199203, 37.487896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.693375, 32.359451, 37.561474>,  <39.964722, 32.626534, 37.684105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693375, 32.359451, 37.561474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525867, 0.149838, 0.837265,
		-0.513106, 0.729194, -0.452768,
		-0.678370, -0.667701, -0.306576,
		39.489864, 32.159142, 37.469501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279137, 32.927876, 37.803432>,  <39.964722, 32.626534, 37.684105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279137, 32.927876, 37.803432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.259735, 32.528500, 37.814480>,  <39.248093, 32.288876, 37.821110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.259735, 32.528500, 37.814480>,  <39.279137, 32.927876, 37.803432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259735, 32.528500, 37.814480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683603, 0.053345, 0.727902,
		-0.728241, 0.016426, -0.685125,
		-0.048505, -0.998441, 0.027619,
		39.245182, 32.228966, 37.822765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823658, 33.324699, 37.505447>,  <39.279137, 32.927876, 37.803432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823658, 33.324699, 37.505447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.999996, 33.668148, 37.610081>,  <40.105801, 33.874218, 37.672859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.999996, 33.668148, 37.610081>,  <39.823658, 33.324699, 37.505447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999996, 33.668148, 37.610081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548249, -0.026832, -0.835885,
		-0.710689, 0.511908, -0.482567,
		0.440844, 0.858621, 0.261584,
		40.132248, 33.925735, 37.688557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818882, 33.720711, 36.895065>,  <39.823658, 33.324699, 37.505447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818882, 33.720711, 36.895065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.105164, 33.903370, 37.106438>,  <40.276932, 34.012966, 37.233261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.105164, 33.903370, 37.106438>,  <39.818882, 33.720711, 36.895065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105164, 33.903370, 37.106438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587890, 0.014558, -0.808810,
		-0.377034, 0.889529, -0.258040,
		0.715703, 0.456648, 0.528434,
		40.319874, 34.040363, 37.264969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919716, 34.392216, 36.451893>,  <39.818882, 33.720711, 36.895065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919716, 34.392216, 36.451893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.235394, 34.308891, 36.682987>,  <40.424801, 34.258896, 36.821644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.235394, 34.308891, 36.682987>,  <39.919716, 34.392216, 36.451893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235394, 34.308891, 36.682987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600316, 0.063146, -0.797266,
		0.129597, 0.976022, 0.174886,
		0.789193, -0.208310, 0.577738,
		40.472153, 34.246399, 36.856308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551243, 34.967918, 36.242496>,  <39.919716, 34.392216, 36.451893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551243, 34.967918, 36.242496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.713459, 34.655312, 36.432137>,  <40.810791, 34.467747, 36.545921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.713459, 34.655312, 36.432137>,  <40.551243, 34.967918, 36.242496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713459, 34.655312, 36.432137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693949, -0.074359, -0.716174,
		0.594954, 0.619440, 0.512176,
		0.405542, -0.781514, 0.474100,
		40.835121, 34.420856, 36.574368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276058, 35.059025, 36.069401>,  <40.551243, 34.967918, 36.242496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276058, 35.059025, 36.069401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237900, 34.675369, 36.175945>,  <41.215004, 34.445175, 36.239872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237900, 34.675369, 36.175945>,  <41.276058, 35.059025, 36.069401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237900, 34.675369, 36.175945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545557, -0.274190, -0.791951,
		0.832627, 0.069767, 0.549423,
		-0.095394, -0.959142, 0.266360,
		41.209282, 34.387627, 36.255852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926693, 34.719276, 36.135948>,  <41.276058, 35.059025, 36.069401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926693, 34.719276, 36.135948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.674522, 34.415577, 36.071320>,  <41.523220, 34.233356, 36.032543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.674522, 34.415577, 36.071320>,  <41.926693, 34.719276, 36.135948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674522, 34.415577, 36.071320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576525, -0.318589, -0.752409,
		0.519792, -0.567486, 0.638573,
		-0.630424, -0.759250, -0.161570,
		41.485394, 34.187801, 36.022850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444157, 34.279388, 36.044922>,  <41.926693, 34.719276, 36.135948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444157, 34.279388, 36.044922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.106094, 34.140053, 35.882751>,  <41.903255, 34.056454, 35.785450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.106094, 34.140053, 35.882751>,  <42.444157, 34.279388, 36.044922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106094, 34.140053, 35.882751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517818, -0.345450, -0.782642,
		0.132567, -0.871394, 0.472333,
		-0.845157, -0.348335, -0.405428,
		41.852547, 34.035553, 35.761124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643074, 33.622860, 35.624531>,  <42.444157, 34.279388, 36.044922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643074, 33.622860, 35.624531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.283688, 33.740948, 35.494545>,  <42.068054, 33.811802, 35.416553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.283688, 33.740948, 35.494545>,  <42.643074, 33.622860, 35.624531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283688, 33.740948, 35.494545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172990, -0.442244, -0.880054,
		-0.403520, -0.846916, 0.346272,
		-0.898469, 0.295218, -0.324962,
		42.014149, 33.829514, 35.397057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395657, 33.014416, 35.121162>,  <42.643074, 33.622860, 35.624531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395657, 33.014416, 35.121162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.185734, 33.343193, 35.032635>,  <42.059780, 33.540459, 34.979519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.185734, 33.343193, 35.032635>,  <42.395657, 33.014416, 35.121162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185734, 33.343193, 35.032635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196898, -0.135737, -0.970982,
		-0.828136, -0.553156, -0.090604,
		-0.524807, 0.821945, -0.221324,
		42.028294, 33.589775, 34.966236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017406, 32.763725, 34.557381>,  <42.395657, 33.014416, 35.121162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017406, 32.763725, 34.557381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.963657, 33.154457, 34.490761>,  <41.931408, 33.388897, 34.450790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.963657, 33.154457, 34.490761>,  <42.017406, 32.763725, 34.557381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963657, 33.154457, 34.490761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009652, -0.166777, -0.985947,
		-0.990884, -0.134092, 0.012981,
		-0.134373, 0.976834, -0.166551,
		41.923347, 33.447506, 34.440796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320423, 32.888569, 34.169960>,  <42.017406, 32.763725, 34.557381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320423, 32.888569, 34.169960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.571453, 33.190533, 34.093788>,  <41.722069, 33.371712, 34.048084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.571453, 33.190533, 34.093788>,  <41.320423, 32.888569, 34.169960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571453, 33.190533, 34.093788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008594, -0.251293, -0.967873,
		-0.778511, 0.605773, -0.164192,
		0.627572, 0.754911, -0.190428,
		41.759724, 33.417007, 34.036659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150684, 33.187641, 33.601097>,  <41.320423, 32.888569, 34.169960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150684, 33.187641, 33.601097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.528992, 33.316185, 33.620033>,  <41.755978, 33.393311, 33.631397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.528992, 33.316185, 33.620033>,  <41.150684, 33.187641, 33.601097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528992, 33.316185, 33.620033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144535, -0.285804, -0.947325,
		-0.290905, 0.902796, -0.316754,
		0.945771, 0.321364, 0.047344,
		41.812721, 33.412594, 33.634235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169132, 33.653263, 33.128784>,  <41.150684, 33.187641, 33.601097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169132, 33.653263, 33.128784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.549702, 33.546162, 33.189575>,  <41.778046, 33.481899, 33.226051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.549702, 33.546162, 33.189575>,  <41.169132, 33.653263, 33.128784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549702, 33.546162, 33.189575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109093, -0.168414, -0.979661,
		0.287903, 0.948654, -0.131024,
		0.951425, -0.267754, 0.151978,
		41.835129, 33.465836, 33.235168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535717, 34.017792, 32.599506>,  <41.169132, 33.653263, 33.128784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535717, 34.017792, 32.599506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.794258, 33.742992, 32.732330>,  <41.949383, 33.578114, 32.812023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.794258, 33.742992, 32.732330>,  <41.535717, 34.017792, 32.599506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794258, 33.742992, 32.732330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324461, -0.146423, -0.934497,
		0.690618, 0.711755, 0.128263,
		0.646353, -0.686997, 0.332059,
		41.988163, 33.536892, 32.831947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567112, 34.693604, 32.264450>,  <41.535717, 34.017792, 32.599506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567112, 34.693604, 32.264450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.280479, 34.900505, 32.077278>,  <41.108498, 35.024647, 31.964975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.280479, 34.900505, 32.077278>,  <41.567112, 34.693604, 32.264450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280479, 34.900505, 32.077278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535717, 0.021472, 0.844125,
		0.446673, 0.855564, 0.261714,
		-0.716583, 0.517252, -0.467931,
		41.065506, 35.055679, 31.936899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426434, 35.245083, 32.666355>,  <41.567112, 34.693604, 32.264450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426434, 35.245083, 32.666355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.098743, 35.205868, 32.440342>,  <40.902130, 35.182339, 32.304733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.098743, 35.205868, 32.440342>,  <41.426434, 35.245083, 32.666355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098743, 35.205868, 32.440342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569021, 0.016441, 0.822159,
		-0.071313, 0.995047, -0.069255,
		-0.819225, -0.098038, -0.565030,
		40.852978, 35.176456, 32.270832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926052, 35.601837, 33.133854>,  <41.426434, 35.245083, 32.666355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926052, 35.601837, 33.133854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.702450, 35.414433, 32.860207>,  <40.568287, 35.301991, 32.696018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.702450, 35.414433, 32.860207>,  <40.926052, 35.601837, 33.133854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702450, 35.414433, 32.860207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665802, -0.238114, 0.707114,
		-0.494185, 0.850766, -0.178825,
		-0.559008, -0.468507, -0.684114,
		40.534748, 35.273880, 32.654972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267422, 35.764362, 33.373272>,  <40.926052, 35.601837, 33.133854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267422, 35.764362, 33.373272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.209377, 35.459599, 33.120785>,  <40.174549, 35.276741, 32.969292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.209377, 35.459599, 33.120785>,  <40.267422, 35.764362, 33.373272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209377, 35.459599, 33.120785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751046, -0.330496, 0.571579,
		-0.644106, 0.557018, -0.524269,
		-0.145111, -0.761908, -0.631221,
		40.165844, 35.231026, 32.931419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627430, 35.808628, 33.148834>,  <40.267422, 35.764362, 33.373272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627430, 35.808628, 33.148834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730824, 35.423553, 33.116802>,  <39.792858, 35.192509, 33.097584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730824, 35.423553, 33.116802>,  <39.627430, 35.808628, 33.148834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730824, 35.423553, 33.116802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779424, -0.256810, 0.571442,
		-0.570688, -0.085290, -0.816726,
		0.258482, -0.962691, -0.080081,
		39.808369, 35.134747, 33.092777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015289, 35.498169, 33.067192>,  <39.627430, 35.808628, 33.148834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015289, 35.498169, 33.067192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.270470, 35.223396, 33.206413>,  <39.423580, 35.058533, 33.289948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.270470, 35.223396, 33.206413>,  <39.015289, 35.498169, 33.067192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270470, 35.223396, 33.206413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673571, -0.278694, 0.684567,
		-0.373249, -0.671162, -0.640489,
		0.637956, -0.686929, 0.348053,
		39.461857, 35.017319, 33.310829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689095, 34.777981, 33.047459>,  <39.015289, 35.498169, 33.067192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689095, 34.777981, 33.047459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.984222, 34.769318, 33.317318>,  <39.161301, 34.764122, 33.479233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.984222, 34.769318, 33.317318>,  <38.689095, 34.777981, 33.047459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984222, 34.769318, 33.317318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628797, -0.385471, 0.675297,
		0.245435, -0.922466, -0.298024,
		0.737818, -0.021655, 0.674652,
		39.205566, 34.762821, 33.519714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587990, 34.195824, 33.343090>,  <38.689095, 34.777981, 33.047459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587990, 34.195824, 33.343090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.832512, 34.365215, 33.610512>,  <38.979225, 34.466850, 33.770966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.832512, 34.365215, 33.610512>,  <38.587990, 34.195824, 33.343090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832512, 34.365215, 33.610512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556394, -0.370774, 0.743607,
		0.562786, -0.826554, 0.008964,
		0.611308, 0.423480, 0.668556,
		39.015903, 34.492260, 33.811077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678856, 33.760616, 33.927322>,  <38.587990, 34.195824, 33.343090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678856, 33.760616, 33.927322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.782612, 34.126457, 34.051403>,  <38.844864, 34.345963, 34.125851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.782612, 34.126457, 34.051403>,  <38.678856, 33.760616, 33.927322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782612, 34.126457, 34.051403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537927, -0.129936, 0.832917,
		0.802093, -0.382912, 0.458285,
		0.259386, 0.914601, 0.310199,
		38.860428, 34.400837, 34.144463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699070, 33.711655, 34.710056>,  <38.678856, 33.760616, 33.927322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699070, 33.711655, 34.710056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.713581, 34.107822, 34.656754>,  <38.722286, 34.345524, 34.624771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.713581, 34.107822, 34.656754>,  <38.699070, 33.711655, 34.710056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713581, 34.107822, 34.656754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485553, 0.134012, 0.863875,
		0.873455, 0.033367, 0.485761,
		0.036273, 0.990418, -0.133255,
		38.724464, 34.404949, 34.616776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975780, 34.068020, 35.358475>,  <38.699070, 33.711655, 34.710056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975780, 34.068020, 35.358475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.775963, 34.351376, 35.159019>,  <38.656071, 34.521389, 35.039345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.775963, 34.351376, 35.159019>,  <38.975780, 34.068020, 35.358475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775963, 34.351376, 35.159019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482757, 0.250302, 0.839223,
		0.719307, 0.659949, 0.216943,
		-0.499543, 0.708389, -0.498639,
		38.626099, 34.563892, 35.009426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898609, 34.583797, 35.836140>,  <38.975780, 34.068020, 35.358475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898609, 34.583797, 35.836140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.611588, 34.674778, 35.572811>,  <38.439373, 34.729366, 35.414814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.611588, 34.674778, 35.572811>,  <38.898609, 34.583797, 35.836140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611588, 34.674778, 35.572811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559516, 0.374659, 0.739305,
		0.414799, 0.898831, -0.141576,
		-0.717554, 0.227449, -0.658319,
		38.396320, 34.743011, 35.375317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.702236, 34.796040, 29.238022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343399, 34.732056, 29.073275>,  <43.128098, 34.693665, 28.974426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343399, 34.732056, 29.073275>,  <43.702236, 34.796040, 29.238022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343399, 34.732056, 29.073275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424836, 0.568370, 0.704606,
		0.121388, 0.807074, -0.577837,
		-0.897095, -0.159955, -0.411868,
		43.074272, 34.684071, 28.949715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267044, 35.399399, 29.424702>,  <43.702236, 34.796040, 29.238022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267044, 35.399399, 29.424702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967148, 35.154221, 29.324949>,  <42.787212, 35.007114, 29.265097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967148, 35.154221, 29.324949>,  <43.267044, 35.399399, 29.424702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967148, 35.154221, 29.324949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505728, 0.287687, 0.813311,
		-0.426772, 0.735889, -0.525674,
		-0.749736, -0.612947, -0.249383,
		42.742226, 34.970337, 29.250134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580894, 35.777657, 29.388836>,  <43.267044, 35.399399, 29.424702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580894, 35.777657, 29.388836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491680, 35.391529, 29.443129>,  <42.438152, 35.159855, 29.475704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491680, 35.391529, 29.443129>,  <42.580894, 35.777657, 29.388836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491680, 35.391529, 29.443129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542231, 0.238563, 0.805651,
		-0.810087, 0.106091, -0.576631,
		-0.223036, -0.965315, 0.135731,
		42.424770, 35.101936, 29.483849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793373, 35.766380, 29.336922>,  <42.580894, 35.777657, 29.388836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793373, 35.766380, 29.336922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959766, 35.460365, 29.533567>,  <42.059601, 35.276756, 29.651554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959766, 35.460365, 29.533567>,  <41.793373, 35.766380, 29.336922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959766, 35.460365, 29.533567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735436, 0.034956, 0.676692,
		-0.534876, -0.643042, -0.548092,
		0.415982, -0.765033, 0.491613,
		42.084560, 35.230854, 29.681051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318409, 35.304192, 29.535963>,  <41.793373, 35.766380, 29.336922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318409, 35.304192, 29.535963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601131, 35.202492, 29.800020>,  <41.770763, 35.141472, 29.958454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601131, 35.202492, 29.800020>,  <41.318409, 35.304192, 29.535963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601131, 35.202492, 29.800020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642525, 0.159689, 0.749440,
		-0.295960, -0.953865, -0.050491,
		0.706802, -0.254246, 0.660144,
		41.813171, 35.126217, 29.998064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928757, 35.026867, 30.018879>,  <41.318409, 35.304192, 29.535963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928757, 35.026867, 30.018879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272316, 35.044357, 30.222988>,  <41.478451, 35.054852, 30.345453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272316, 35.044357, 30.222988>,  <40.928757, 35.026867, 30.018879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272316, 35.044357, 30.222988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509833, -0.021528, 0.860004,
		0.048588, -0.998812, 0.003802,
		0.858900, 0.043725, 0.510274,
		41.529987, 35.057476, 30.376070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963879, 34.404991, 30.516069>,  <40.928757, 35.026867, 30.018879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963879, 34.404991, 30.516069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190643, 34.710247, 30.640150>,  <41.326702, 34.893402, 30.714600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190643, 34.710247, 30.640150>,  <40.963879, 34.404991, 30.516069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190643, 34.710247, 30.640150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423272, -0.053204, 0.904439,
		0.706720, -0.644036, 0.292855,
		0.566910, 0.763143, 0.310203,
		41.360718, 34.939190, 30.733212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247684, 34.210934, 31.091682>,  <40.963879, 34.404991, 30.516069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247684, 34.210934, 31.091682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222939, 34.610104, 31.098885>,  <41.208092, 34.849606, 31.103205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222939, 34.610104, 31.098885>,  <41.247684, 34.210934, 31.091682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222939, 34.610104, 31.098885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454888, -0.044246, 0.889449,
		0.888397, 0.046836, 0.456680,
		-0.061864, 0.997922, 0.018003,
		41.204380, 34.909481, 31.104286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494164, 34.294182, 31.675184>,  <41.247684, 34.210934, 31.091682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494164, 34.294182, 31.675184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294636, 34.632156, 31.597969>,  <41.174919, 34.834942, 31.551640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294636, 34.632156, 31.597969>,  <41.494164, 34.294182, 31.675184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294636, 34.632156, 31.597969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444345, -0.058084, 0.893971,
		0.744134, 0.531708, 0.404416,
		-0.498821, 0.844934, -0.193039,
		41.144989, 34.885635, 31.540058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100983, 34.131260, 32.114422>,  <41.494164, 34.294182, 31.675184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100983, 34.131260, 32.114422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182442, 33.770412, 32.266582>,  <42.231319, 33.553902, 32.357880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182442, 33.770412, 32.266582>,  <42.100983, 34.131260, 32.114422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182442, 33.770412, 32.266582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166644, -0.350931, -0.921454,
		0.964757, 0.251047, 0.078865,
		0.203652, -0.902121, 0.380399,
		42.243538, 33.499775, 32.380703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764389, 33.830456, 31.822021>,  <42.100983, 34.131260, 32.114422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764389, 33.830456, 31.822021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528580, 33.526165, 31.930653>,  <42.387093, 33.343590, 31.995831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528580, 33.526165, 31.930653>,  <42.764389, 33.830456, 31.822021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528580, 33.526165, 31.930653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150423, -0.433728, -0.888399,
		0.793621, -0.482882, 0.370124,
		-0.589525, -0.760727, 0.271579,
		42.351723, 33.297947, 32.012127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158287, 33.232868, 31.603897>,  <42.764389, 33.830456, 31.822021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158287, 33.232868, 31.603897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782169, 33.110397, 31.663364>,  <42.556499, 33.036915, 31.699045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782169, 33.110397, 31.663364>,  <43.158287, 33.232868, 31.603897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782169, 33.110397, 31.663364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156118, -0.776121, -0.610952,
		0.302443, -0.551266, 0.777583,
		-0.940295, -0.306173, 0.148670,
		42.500080, 33.018547, 31.707966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216915, 32.487282, 31.753775>,  <43.158287, 33.232868, 31.603897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216915, 32.487282, 31.753775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843956, 32.554993, 31.626036>,  <42.620182, 32.595619, 31.549393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843956, 32.554993, 31.626036>,  <43.216915, 32.487282, 31.753775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843956, 32.554993, 31.626036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031334, -0.842365, -0.537995,
		-0.360077, -0.511631, 0.780114,
		-0.932396, 0.169276, -0.319348,
		42.564236, 32.605774, 31.530231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003586, 31.789976, 31.505978>,  <43.216915, 32.487282, 31.753775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003586, 31.789976, 31.505978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701786, 31.995558, 31.342718>,  <42.520706, 32.118908, 31.244762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701786, 31.995558, 31.342718>,  <43.003586, 31.789976, 31.505978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701786, 31.995558, 31.342718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103109, -0.706995, -0.699662,
		-0.648153, -0.485809, 0.586419,
		-0.754497, 0.513954, -0.408149,
		42.475437, 32.149746, 31.220272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396080, 31.437796, 31.484709>,  <43.003586, 31.789976, 31.505978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396080, 31.437796, 31.484709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363556, 31.703794, 31.187746>,  <42.344040, 31.863394, 31.009569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363556, 31.703794, 31.187746>,  <42.396080, 31.437796, 31.484709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363556, 31.703794, 31.187746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112615, -0.746234, -0.656089,
		-0.990306, 0.030259, 0.135565,
		-0.081310, 0.664996, -0.742407,
		42.339161, 31.903294, 30.965023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031136, 31.082302, 30.968704>,  <42.396080, 31.437796, 31.484709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031136, 31.082302, 30.968704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200817, 31.380936, 30.763702>,  <42.302628, 31.560116, 30.640701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200817, 31.380936, 30.763702>,  <42.031136, 31.082302, 30.968704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200817, 31.380936, 30.763702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075603, -0.534774, -0.841606,
		-0.902404, 0.395761, -0.170410,
		0.424206, 0.746585, -0.512503,
		42.328079, 31.604912, 30.609951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664341, 31.106009, 30.286016>,  <42.031136, 31.082302, 30.968704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664341, 31.106009, 30.286016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008083, 31.303196, 30.231640>,  <42.214329, 31.421509, 30.199013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008083, 31.303196, 30.231640>,  <41.664341, 31.106009, 30.286016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008083, 31.303196, 30.231640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047543, -0.341712, -0.938601,
		-0.509156, 0.800133, -0.317091,
		0.859360, 0.492971, -0.135944,
		42.265892, 31.451088, 30.190857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646477, 31.190462, 29.589285>,  <41.664341, 31.106009, 30.286016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646477, 31.190462, 29.589285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027733, 31.273233, 29.677563>,  <42.256485, 31.322897, 29.730530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027733, 31.273233, 29.677563>,  <41.646477, 31.190462, 29.589285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027733, 31.273233, 29.677563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279362, -0.322026, -0.904575,
		-0.116113, 0.923840, -0.364744,
		0.953139, 0.206928, 0.220694,
		42.313675, 31.335312, 29.743771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063484, 31.497643, 28.936968>,  <41.646477, 31.190462, 29.589285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063484, 31.497643, 28.936968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377243, 31.407909, 29.168274>,  <42.565498, 31.354069, 29.307056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377243, 31.407909, 29.168274>,  <42.063484, 31.497643, 28.936968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377243, 31.407909, 29.168274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531049, -0.238799, -0.812995,
		0.320471, 0.944801, -0.068182,
		0.784401, -0.224334, 0.578264,
		42.612564, 31.340609, 29.341753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651764, 31.863621, 28.687843>,  <42.063484, 31.497643, 28.936968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651764, 31.863621, 28.687843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785061, 31.557039, 28.907478>,  <42.865040, 31.373091, 29.039259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785061, 31.557039, 28.907478>,  <42.651764, 31.863621, 28.687843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785061, 31.557039, 28.907478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478854, -0.364088, -0.798836,
		0.812186, 0.529141, 0.245689,
		0.333244, -0.766453, 0.549089,
		42.885033, 31.327103, 29.072205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336292, 31.907200, 28.626150>,  <42.651764, 31.863621, 28.687843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336292, 31.907200, 28.626150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254810, 31.524569, 28.709538>,  <43.205921, 31.294989, 28.759571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254810, 31.524569, 28.709538>,  <43.336292, 31.907200, 28.626150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254810, 31.524569, 28.709538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571104, -0.289054, -0.768302,
		0.795202, -0.037447, 0.605188,
		-0.203703, -0.956580, 0.208470,
		43.193699, 31.237595, 28.772079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913662, 31.525404, 28.599281>,  <43.336292, 31.907200, 28.626150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913662, 31.525404, 28.599281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648319, 31.226723, 28.579689>,  <43.489113, 31.047514, 28.567934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648319, 31.226723, 28.579689>,  <43.913662, 31.525404, 28.599281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648319, 31.226723, 28.579689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629637, -0.521585, -0.575766,
		0.404378, -0.412776, 0.816146,
		-0.663352, -0.746702, -0.048982,
		43.449314, 31.002712, 28.564995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317257, 30.861378, 28.760973>,  <43.913662, 31.525404, 28.599281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317257, 30.861378, 28.760973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980965, 30.756969, 28.571218>,  <43.779190, 30.694324, 28.457365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980965, 30.756969, 28.571218>,  <44.317257, 30.861378, 28.760973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980965, 30.756969, 28.571218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528140, -0.588447, -0.612208,
		-0.119353, -0.765243, 0.632580,
		-0.840728, -0.261022, -0.474388,
		43.728745, 30.678663, 28.428902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.895046, 29.717815, 26.364061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.291393, 29.725283, 26.417480>,  <37.529202, 29.729763, 26.449532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.291393, 29.725283, 26.417480>,  <36.895046, 29.717815, 26.364061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291393, 29.725283, 26.417480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131297, 0.359239, 0.923963,
		-0.030727, -0.933059, 0.358409,
		0.990867, 0.018668, 0.133547,
		37.588654, 29.730883, 26.457544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066502, 29.226952, 26.838331>,  <36.895046, 29.717815, 26.364061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066502, 29.226952, 26.838331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.317692, 29.538223, 26.834711>,  <37.468407, 29.724987, 26.832539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.317692, 29.538223, 26.834711>,  <37.066502, 29.226952, 26.838331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317692, 29.538223, 26.834711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240234, 0.204903, 0.948843,
		0.740224, -0.593677, 0.315619,
		0.627977, 0.778179, -0.009053,
		37.506084, 29.771677, 26.831995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191467, 29.320065, 27.496588>,  <37.066502, 29.226952, 26.838331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191467, 29.320065, 27.496588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.360611, 29.650551, 27.347692>,  <37.462097, 29.848843, 27.258356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.360611, 29.650551, 27.347692>,  <37.191467, 29.320065, 27.496588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360611, 29.650551, 27.347692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017333, 0.403320, 0.914895,
		0.906030, -0.393324, 0.156227,
		0.422859, 0.826214, -0.372237,
		37.487469, 29.898415, 27.236021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752953, 29.589874, 27.981844>,  <37.191467, 29.320065, 27.496588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752953, 29.589874, 27.981844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.644379, 29.903294, 27.758284>,  <37.579235, 30.091347, 27.624147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.644379, 29.903294, 27.758284>,  <37.752953, 29.589874, 27.981844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644379, 29.903294, 27.758284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058306, 0.593023, 0.803072,
		0.960688, 0.185397, -0.206655,
		-0.271439, 0.783551, -0.558900,
		37.562946, 30.138359, 27.590614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145908, 30.081718, 28.254066>,  <37.752953, 29.589874, 27.981844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145908, 30.081718, 28.254066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865475, 30.284893, 28.053875>,  <37.697212, 30.406797, 27.933760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865475, 30.284893, 28.053875>,  <38.145908, 30.081718, 28.254066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865475, 30.284893, 28.053875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117330, 0.610120, 0.783573,
		0.703356, 0.608074, -0.368151,
		-0.701087, 0.507936, -0.500477,
		37.655148, 30.437273, 27.903732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288208, 30.835117, 28.451284>,  <38.145908, 30.081718, 28.254066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288208, 30.835117, 28.451284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.913715, 30.828606, 28.310881>,  <37.689018, 30.824699, 28.226639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.913715, 30.828606, 28.310881>,  <38.288208, 30.835117, 28.451284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913715, 30.828606, 28.310881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305847, 0.529561, 0.791216,
		0.173002, 0.848116, -0.500769,
		-0.936230, -0.016277, -0.351009,
		37.632847, 30.823723, 28.205578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072201, 31.511610, 28.566103>,  <38.288208, 30.835117, 28.451284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072201, 31.511610, 28.566103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.730228, 31.304117, 28.567787>,  <37.525047, 31.179621, 28.568798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.730228, 31.304117, 28.567787>,  <38.072201, 31.511610, 28.566103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730228, 31.304117, 28.567787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183923, 0.310700, 0.932544,
		-0.485049, 0.796482, -0.361033,
		-0.854927, -0.518731, 0.004213,
		37.473751, 31.148499, 28.569052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565300, 31.946190, 28.732317>,  <38.072201, 31.511610, 28.566103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565300, 31.946190, 28.732317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.448441, 31.581457, 28.847704>,  <37.378326, 31.362617, 28.916937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.448441, 31.581457, 28.847704>,  <37.565300, 31.946190, 28.732317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448441, 31.581457, 28.847704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143708, 0.340058, 0.929359,
		-0.945515, 0.230054, -0.230384,
		-0.292146, -0.911831, 0.288469,
		37.360798, 31.307907, 28.934244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916065, 32.114014, 28.994228>,  <37.565300, 31.946190, 28.732317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916065, 32.114014, 28.994228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.970619, 31.748913, 29.148262>,  <37.003353, 31.529854, 29.240683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.970619, 31.748913, 29.148262>,  <36.916065, 32.114014, 28.994228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970619, 31.748913, 29.148262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470006, 0.282563, 0.836214,
		-0.872063, -0.295038, -0.390460,
		0.136385, -0.912749, 0.385082,
		37.011536, 31.475088, 29.263786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311161, 32.015923, 29.281578>,  <36.916065, 32.114014, 28.994228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311161, 32.015923, 29.281578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571606, 31.759579, 29.444231>,  <36.727871, 31.605772, 29.541822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571606, 31.759579, 29.444231>,  <36.311161, 32.015923, 29.281578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571606, 31.759579, 29.444231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384496, 0.183410, 0.904723,
		-0.654382, -0.745424, -0.126988,
		0.651112, -0.640861, 0.406633,
		36.766941, 31.567320, 29.566221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972027, 31.638712, 29.811363>,  <36.311161, 32.015923, 29.281578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972027, 31.638712, 29.811363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.357704, 31.601309, 29.910629>,  <36.589111, 31.578867, 29.970188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.357704, 31.601309, 29.910629>,  <35.972027, 31.638712, 29.811363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357704, 31.601309, 29.910629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225734, 0.201758, 0.953068,
		-0.139187, -0.974962, 0.173426,
		0.964194, -0.093506, 0.248164,
		36.646961, 31.573257, 29.985079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928898, 31.158548, 30.336290>,  <35.972027, 31.638712, 29.811363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928898, 31.158548, 30.336290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.280323, 31.344080, 30.381872>,  <36.491180, 31.455399, 30.409222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.280323, 31.344080, 30.381872>,  <35.928898, 31.158548, 30.336290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280323, 31.344080, 30.381872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245920, 0.234765, 0.940430,
		0.409447, -0.854252, 0.320322,
		0.878565, 0.463830, 0.113953,
		36.543892, 31.483229, 30.416058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356480, 30.791666, 30.872406>,  <35.928898, 31.158548, 30.336290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356480, 30.791666, 30.872406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.444912, 31.178614, 30.822891>,  <36.497971, 31.410782, 30.793182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.444912, 31.178614, 30.822891>,  <36.356480, 30.791666, 30.872406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444912, 31.178614, 30.822891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235797, 0.176181, 0.955699,
		0.946322, -0.182095, 0.267053,
		0.221077, 0.967369, -0.123786,
		36.511234, 31.468824, 30.785755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686470, 30.958973, 31.456182>,  <36.356480, 30.791666, 30.872406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686470, 30.958973, 31.456182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.586296, 31.316530, 31.307461>,  <36.526192, 31.531065, 31.218227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.586296, 31.316530, 31.307461>,  <36.686470, 30.958973, 31.456182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586296, 31.316530, 31.307461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224223, 0.320045, 0.920486,
		0.941811, 0.313885, 0.120283,
		-0.250431, 0.893894, -0.371803,
		36.511166, 31.584698, 31.195921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498684, 30.859535, 31.843534>,  <36.686470, 30.958973, 31.456182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498684, 30.859535, 31.843534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.641270, 30.530878, 32.021450>,  <37.726822, 30.333685, 32.128201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.641270, 30.530878, 32.021450>,  <37.498684, 30.859535, 31.843534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641270, 30.530878, 32.021450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451313, -0.265414, -0.851981,
		0.818076, 0.504442, 0.276206,
		0.356466, -0.821641, 0.444790,
		37.748211, 30.284386, 32.154888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283260, 30.929514, 31.737558>,  <37.498684, 30.859535, 31.843534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283260, 30.929514, 31.737558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.152576, 30.558500, 31.810156>,  <38.074165, 30.335892, 31.853714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.152576, 30.558500, 31.810156>,  <38.283260, 30.929514, 31.737558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152576, 30.558500, 31.810156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610255, -0.353664, -0.708879,
		0.721697, -0.120844, 0.681579,
		-0.326714, -0.927534, 0.181493,
		38.054562, 30.280241, 31.864603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823017, 30.448893, 31.931097>,  <38.283260, 30.929514, 31.737558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823017, 30.448893, 31.931097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.555046, 30.196190, 31.775106>,  <38.394264, 30.044569, 31.681513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.555046, 30.196190, 31.775106>,  <38.823017, 30.448893, 31.931097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555046, 30.196190, 31.775106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717344, -0.415424, -0.559321,
		0.191349, -0.654452, 0.731490,
		-0.669927, -0.631756, -0.389976,
		38.354069, 30.006662, 31.658113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271748, 29.844578, 31.702719>,  <38.823017, 30.448893, 31.931097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271748, 29.844578, 31.702719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.925312, 29.825510, 31.503677>,  <38.717449, 29.814070, 31.384253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.925312, 29.825510, 31.503677>,  <39.271748, 29.844578, 31.702719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925312, 29.825510, 31.503677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429635, -0.579838, -0.692244,
		-0.255533, -0.813336, 0.522673,
		-0.866093, -0.047668, -0.497605,
		38.665485, 29.811211, 31.354397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287983, 29.238388, 31.366770>,  <39.271748, 29.844578, 31.702719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287983, 29.238388, 31.366770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.980907, 29.373802, 31.149130>,  <38.796661, 29.455051, 31.018545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.980907, 29.373802, 31.149130>,  <39.287983, 29.238388, 31.366770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980907, 29.373802, 31.149130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245840, -0.628516, -0.737923,
		-0.591786, -0.700259, 0.399283,
		-0.767693, 0.338533, -0.544098,
		38.750599, 29.475363, 30.985899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897724, 28.651497, 31.016685>,  <39.287983, 29.238388, 31.366770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897724, 28.651497, 31.016685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.813354, 28.971661, 30.792238>,  <38.762733, 29.163759, 30.657570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.813354, 28.971661, 30.792238>,  <38.897724, 28.651497, 31.016685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813354, 28.971661, 30.792238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296738, -0.494516, -0.816946,
		-0.931375, -0.338816, -0.133208,
		-0.210921, 0.800410, -0.561119,
		38.750076, 29.211784, 30.623903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694889, 28.301178, 30.389801>,  <38.897724, 28.651497, 31.016685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694889, 28.301178, 30.389801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.736431, 28.681034, 30.271551>,  <38.761356, 28.908949, 30.200602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.736431, 28.681034, 30.271551>,  <38.694889, 28.301178, 30.389801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736431, 28.681034, 30.271551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355073, -0.313048, -0.880865,
		-0.929052, -0.013486, -0.369704,
		0.103856, 0.949642, -0.295626,
		38.767590, 28.965927, 30.182863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263435, 28.292278, 29.784321>,  <38.694889, 28.301178, 30.389801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263435, 28.292278, 29.784321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.539780, 28.581469, 29.785742>,  <38.705585, 28.754982, 29.786594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.539780, 28.581469, 29.785742>,  <38.263435, 28.292278, 29.784321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539780, 28.581469, 29.785742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327084, -0.308170, -0.893335,
		-0.644765, 0.618335, -0.449377,
		0.690865, 0.722975, 0.003551,
		38.747040, 28.798361, 29.786806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217941, 28.650543, 29.133097>,  <38.263435, 28.292278, 29.784321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217941, 28.650543, 29.133097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.588612, 28.689116, 29.278408>,  <38.811016, 28.712259, 29.365595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.588612, 28.689116, 29.278408>,  <38.217941, 28.650543, 29.133097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588612, 28.689116, 29.278408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375741, -0.213700, -0.901749,
		-0.009323, 0.972128, -0.234263,
		0.926678, 0.096430, 0.363276,
		38.866615, 28.718044, 29.387390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424206, 29.042873, 28.618198>,  <38.217941, 28.650543, 29.133097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424206, 29.042873, 28.618198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.733044, 28.869963, 28.804537>,  <38.918346, 28.766216, 28.916340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.733044, 28.869963, 28.804537>,  <38.424206, 29.042873, 28.618198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733044, 28.869963, 28.804537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288433, -0.414818, -0.862979,
		0.566286, 0.800664, -0.195595,
		0.772092, -0.432276, 0.465844,
		38.964672, 28.740280, 28.944290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937561, 29.261805, 28.171076>,  <38.424206, 29.042873, 28.618198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937561, 29.261805, 28.171076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.095928, 28.952223, 28.368761>,  <39.190948, 28.766474, 28.487371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.095928, 28.952223, 28.368761>,  <38.937561, 29.261805, 28.171076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095928, 28.952223, 28.368761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360575, -0.363936, -0.858799,
		0.844532, 0.518215, 0.134979,
		0.395918, -0.773953, 0.494211,
		39.214703, 28.720037, 28.517025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653622, 29.179497, 27.996063>,  <38.937561, 29.261805, 28.171076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653622, 29.179497, 27.996063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.529564, 28.826296, 28.136984>,  <39.455132, 28.614374, 28.221537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.529564, 28.826296, 28.136984>,  <39.653622, 29.179497, 27.996063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529564, 28.826296, 28.136984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539698, -0.468601, -0.699385,
		0.782649, -0.026770, 0.621887,
		-0.310140, -0.883004, 0.352303,
		39.436523, 28.561394, 28.242674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216263, 28.726862, 27.914721>,  <39.653622, 29.179497, 27.996063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216263, 28.726862, 27.914721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.936859, 28.454353, 28.002316>,  <39.769218, 28.290848, 28.054873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.936859, 28.454353, 28.002316>,  <40.216263, 28.726862, 27.914721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936859, 28.454353, 28.002316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434025, -0.646637, -0.627282,
		0.568955, -0.343116, 0.747370,
		-0.698508, -0.681273, 0.218986,
		39.727306, 28.249971, 28.068012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537819, 28.089643, 28.112679>,  <40.216263, 28.726862, 27.914721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537819, 28.089643, 28.112679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.178322, 27.987085, 27.970396>,  <39.962624, 27.925550, 27.885027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.178322, 27.987085, 27.970396>,  <40.537819, 28.089643, 28.112679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178322, 27.987085, 27.970396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438190, -0.495553, -0.749945,
		0.016010, -0.829873, 0.557723,
		-0.898740, -0.256395, -0.355708,
		39.908699, 27.910168, 27.863684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869087, 27.600080, 28.551327>,  <40.537819, 28.089643, 28.112679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869087, 27.600080, 28.551327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.265705, 27.591564, 28.602535>,  <41.503674, 27.586454, 28.633261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.265705, 27.591564, 28.602535>,  <40.869087, 27.600080, 28.551327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265705, 27.591564, 28.602535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123162, 0.156622, 0.979949,
		-0.040913, -0.987429, 0.152675,
		0.991543, -0.021289, 0.128022,
		41.563168, 27.585178, 28.640942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058628, 27.055019, 29.054665>,  <40.869087, 27.600080, 28.551327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058628, 27.055019, 29.054665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.369381, 27.305815, 29.077793>,  <41.555832, 27.456291, 29.091669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.369381, 27.305815, 29.077793>,  <41.058628, 27.055019, 29.054665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369381, 27.305815, 29.077793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266093, 0.243703, 0.932633,
		0.570658, -0.739930, 0.356165,
		0.776881, 0.626987, 0.057819,
		41.602444, 27.493910, 29.095139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332222, 26.921738, 29.749905>,  <41.058628, 27.055019, 29.054665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332222, 26.921738, 29.749905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.500359, 27.270006, 29.647730>,  <41.601242, 27.478968, 29.586426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.500359, 27.270006, 29.647730>,  <41.332222, 26.921738, 29.749905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500359, 27.270006, 29.647730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043227, 0.300410, 0.952830,
		0.906336, -0.389471, 0.163911,
		0.420341, 0.870670, -0.255437,
		41.626461, 27.531208, 29.571098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863548, 27.140398, 30.258722>,  <41.332222, 26.921738, 29.749905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863548, 27.140398, 30.258722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.744617, 27.476997, 30.078287>,  <41.673260, 27.678957, 29.970026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.744617, 27.476997, 30.078287>,  <41.863548, 27.140398, 30.258722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744617, 27.476997, 30.078287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110949, 0.438800, 0.891709,
		0.948309, 0.315173, -0.037101,
		-0.297323, 0.841499, -0.451086,
		41.655422, 27.729446, 29.942961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295189, 27.720354, 30.535770>,  <41.863548, 27.140398, 30.258722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295189, 27.720354, 30.535770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.972656, 27.891350, 30.372272>,  <41.779137, 27.993948, 30.274174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.972656, 27.891350, 30.372272>,  <42.295189, 27.720354, 30.535770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972656, 27.891350, 30.372272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109883, 0.570776, 0.813720,
		0.581160, 0.701046, -0.413263,
		-0.806336, 0.427491, -0.408745,
		41.730755, 28.019598, 30.249649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391644, 28.431835, 30.587872>,  <42.295189, 27.720354, 30.535770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391644, 28.431835, 30.587872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.002819, 28.429590, 30.494011>,  <41.769524, 28.428244, 30.437695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.002819, 28.429590, 30.494011>,  <42.391644, 28.431835, 30.587872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002819, 28.429590, 30.494011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201809, 0.530495, 0.823315,
		0.119860, 0.847669, -0.516808,
		-0.972063, -0.005614, -0.234652,
		41.711201, 28.427906, 30.423615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167427, 29.077469, 30.366129>,  <42.391644, 28.431835, 30.587872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167427, 29.077469, 30.366129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.836514, 28.903191, 30.507988>,  <41.637966, 28.798624, 30.593103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.836514, 28.903191, 30.507988>,  <42.167427, 29.077469, 30.366129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836514, 28.903191, 30.507988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083136, 0.719279, 0.689729,
		-0.555602, 0.541116, -0.631268,
		-0.827281, -0.435696, 0.354647,
		41.588329, 28.772482, 30.614382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630825, 29.579327, 30.462536>,  <42.167427, 29.077469, 30.366129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630825, 29.579327, 30.462536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.503437, 29.289598, 30.707136>,  <41.427006, 29.115761, 30.853897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.503437, 29.289598, 30.707136>,  <41.630825, 29.579327, 30.462536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503437, 29.289598, 30.707136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038218, 0.634754, 0.771768,
		-0.947163, 0.269153, -0.174466,
		-0.318467, -0.724323, 0.611503,
		41.407898, 29.072302, 30.890587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014446, 29.772097, 30.820444>,  <41.630825, 29.579327, 30.462536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014446, 29.772097, 30.820444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.180099, 29.490105, 31.050747>,  <41.279491, 29.320910, 31.188929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.180099, 29.490105, 31.050747>,  <41.014446, 29.772097, 30.820444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180099, 29.490105, 31.050747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083986, 0.600254, 0.795388,
		-0.906333, -0.377753, 0.189377,
		0.414134, -0.704981, 0.575756,
		41.304340, 29.278610, 31.223475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615238, 29.668243, 31.493399>,  <41.014446, 29.772097, 30.820444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615238, 29.668243, 31.493399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.997467, 29.577507, 31.568693>,  <41.226803, 29.523066, 31.613871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.997467, 29.577507, 31.568693>,  <40.615238, 29.668243, 31.493399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997467, 29.577507, 31.568693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002144, 0.633220, 0.773969,
		-0.294762, -0.739983, 0.604599,
		0.955568, -0.226841, 0.188235,
		41.284138, 29.509455, 31.625164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665714, 29.330357, 32.151505>,  <40.615238, 29.668243, 31.493399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665714, 29.330357, 32.151505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.976921, 29.566906, 32.066692>,  <41.163647, 29.708836, 32.015804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.976921, 29.566906, 32.066692>,  <40.665714, 29.330357, 32.151505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976921, 29.566906, 32.066692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086676, 0.435322, 0.896093,
		0.622231, -0.678800, 0.389947,
		0.778021, 0.591376, -0.212035,
		41.210327, 29.744318, 32.003082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764885, 29.479658, 32.794003>,  <40.665714, 29.330357, 32.151505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764885, 29.479658, 32.794003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.057507, 29.685390, 32.614983>,  <41.233078, 29.808830, 32.507572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.057507, 29.685390, 32.614983>,  <40.764885, 29.479658, 32.794003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057507, 29.685390, 32.614983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106276, 0.562381, 0.820020,
		0.673453, -0.647449, 0.356749,
		0.731550, 0.514331, -0.447546,
		41.276970, 29.839689, 32.480721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342510, 29.399418, 33.129642>,  <40.764885, 29.479658, 32.794003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342510, 29.399418, 33.129642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.401505, 29.746828, 32.940365>,  <41.436901, 29.955275, 32.826797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.401505, 29.746828, 32.940365>,  <41.342510, 29.399418, 33.129642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401505, 29.746828, 32.940365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207254, 0.440663, 0.873420,
		0.967105, -0.226891, -0.115012,
		0.147490, 0.868526, -0.473191,
		41.445751, 30.007385, 32.798409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932281, 29.783068, 33.407940>,  <41.342510, 29.399418, 33.129642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932281, 29.783068, 33.407940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.700489, 30.057076, 33.231327>,  <41.561413, 30.221479, 33.125359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.700489, 30.057076, 33.231327>,  <41.932281, 29.783068, 33.407940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700489, 30.057076, 33.231327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109352, 0.471512, 0.875054,
		0.807613, 0.555363, -0.198326,
		-0.579485, 0.685018, -0.441529,
		41.526642, 30.262581, 33.098869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.316769, 30.054317, 28.661884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.052288, 30.156477, 28.379726>,  <43.893600, 30.217772, 28.210432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.052288, 30.156477, 28.379726>,  <44.316769, 30.054317, 28.661884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052288, 30.156477, 28.379726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476611, -0.583122, -0.657884,
		-0.579342, -0.771199, 0.263849,
		-0.661215, 0.255386, -0.705388,
		43.853928, 30.233095, 28.168108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163403, 29.465895, 28.436668>,  <44.316769, 30.054317, 28.661884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163403, 29.465895, 28.436668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.046368, 29.715197, 28.146580>,  <43.976147, 29.864779, 27.972527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.046368, 29.715197, 28.146580>,  <44.163403, 29.465895, 28.436668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046368, 29.715197, 28.146580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553232, -0.508263, -0.660002,
		-0.779953, -0.594323, -0.196095,
		-0.292587, 0.623257, -0.725220,
		43.958591, 29.902174, 27.929014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888599, 29.046156, 27.859440>,  <44.163403, 29.465895, 28.436668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888599, 29.046156, 27.859440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.012306, 29.394339, 27.706257>,  <44.086529, 29.603249, 27.614347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.012306, 29.394339, 27.706257>,  <43.888599, 29.046156, 27.859440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012306, 29.394339, 27.706257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475606, -0.490295, -0.730349,
		-0.823501, 0.043734, -0.565626,
		0.309265, 0.870458, -0.382959,
		44.105087, 29.655476, 27.591370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571716, 29.064917, 27.149700>,  <43.888599, 29.046156, 27.859440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571716, 29.064917, 27.149700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.883827, 29.315088, 27.149439>,  <44.071095, 29.465191, 27.149282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.883827, 29.315088, 27.149439>,  <43.571716, 29.064917, 27.149700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883827, 29.315088, 27.149439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396077, -0.494948, -0.773401,
		-0.484032, 0.603211, -0.633917,
		0.780280, 0.625430, -0.000653,
		44.117912, 29.502718, 27.149242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707523, 29.288252, 26.404516>,  <43.571716, 29.064917, 27.149700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707523, 29.288252, 26.404516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.049698, 29.377045, 26.591688>,  <44.255001, 29.430321, 26.703991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.049698, 29.377045, 26.591688>,  <43.707523, 29.288252, 26.404516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049698, 29.377045, 26.591688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517441, -0.327809, -0.790441,
		-0.022071, 0.918295, -0.395280,
		0.855434, 0.221980, 0.467929,
		44.306328, 29.443638, 26.732067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079548, 29.665993, 25.928156>,  <43.707523, 29.288252, 26.404516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079548, 29.665993, 25.928156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.347965, 29.548342, 26.200388>,  <44.509014, 29.477751, 26.363728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.347965, 29.548342, 26.200388>,  <44.079548, 29.665993, 25.928156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347965, 29.548342, 26.200388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666607, -0.162487, -0.727484,
		0.324557, 0.941854, 0.087030,
		0.671043, -0.294125, 0.680582,
		44.549278, 29.460104, 26.404562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698715, 30.118710, 25.727913>,  <44.079548, 29.665993, 25.928156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698715, 30.118710, 25.727913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.787048, 29.773169, 25.909018>,  <44.840050, 29.565844, 26.017681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.787048, 29.773169, 25.909018>,  <44.698715, 30.118710, 25.727913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.787048, 29.773169, 25.909018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555659, -0.270080, -0.786320,
		0.801546, 0.425227, 0.420365,
		0.220832, -0.863851, 0.452763,
		44.853298, 29.514013, 26.044846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385685, 30.103420, 25.613079>,  <44.698715, 30.118710, 25.727913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385685, 30.103420, 25.613079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.284706, 29.727192, 25.703939>,  <45.224117, 29.501455, 25.758455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.284706, 29.727192, 25.703939>,  <45.385685, 30.103420, 25.613079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284706, 29.727192, 25.703939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366479, -0.310207, -0.877192,
		0.895524, -0.138198, 0.423010,
		-0.252447, -0.940571, 0.227151,
		45.208973, 29.445021, 25.772085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.958439, 29.760342, 25.494871>,  <45.385685, 30.103420, 25.613079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.958439, 29.760342, 25.494871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.662796, 29.491238, 25.481489>,  <45.485413, 29.329775, 25.473459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.662796, 29.491238, 25.481489>,  <45.958439, 29.760342, 25.494871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.662796, 29.491238, 25.481489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405431, -0.404651, -0.819684,
		0.537914, -0.619395, 0.571837,
		-0.739103, -0.672761, -0.033454,
		45.441067, 29.289410, 25.471453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312618, 29.105387, 25.303347>,  <45.958439, 29.760342, 25.494871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312618, 29.105387, 25.303347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.931049, 29.004213, 25.238771>,  <45.702110, 28.943510, 25.200026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.931049, 29.004213, 25.238771>,  <46.312618, 29.105387, 25.303347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.931049, 29.004213, 25.238771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277195, -0.536804, -0.796871,
		0.114893, -0.804901, 0.582180,
		-0.953919, -0.252933, -0.161439,
		45.644875, 28.928333, 25.190340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268940, 28.356152, 25.221403>,  <46.312618, 29.105387, 25.303347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.268940, 28.356152, 25.221403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.948833, 28.507063, 25.034969>,  <45.756771, 28.597610, 24.923109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.948833, 28.507063, 25.034969>,  <46.268940, 28.356152, 25.221403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.948833, 28.507063, 25.034969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238851, -0.512389, -0.824868,
		-0.550022, -0.771439, 0.319934,
		-0.800266, 0.377279, -0.466084,
		45.708752, 28.620247, 24.895144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.996029, 27.820107, 24.934107>,  <46.268940, 28.356152, 25.221403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.996029, 27.820107, 24.934107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.851048, 28.104467, 24.693029>,  <45.764057, 28.275084, 24.548382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.851048, 28.104467, 24.693029>,  <45.996029, 27.820107, 24.934107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851048, 28.104467, 24.693029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319124, -0.512912, -0.796919,
		-0.875663, -0.481183, -0.040959,
		-0.362456, 0.710904, -0.602695,
		45.742310, 28.317739, 24.512220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572392, 27.599770, 24.378063>,  <45.996029, 27.820107, 24.934107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.572392, 27.599770, 24.378063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.718395, 27.938328, 24.222944>,  <45.805996, 28.141462, 24.129873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.718395, 27.938328, 24.222944>,  <45.572392, 27.599770, 24.378063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.718395, 27.938328, 24.222944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028044, -0.426345, -0.904126,
		-0.930583, 0.319135, -0.179354,
		0.365005, 0.846394, -0.387800,
		45.827896, 28.192245, 24.106604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.124058, 27.020975, 24.401093>,  <45.572392, 27.599770, 24.378063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.124058, 27.020975, 24.401093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.184349, 26.645872, 24.526241>,  <45.220524, 26.420811, 24.601330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.184349, 26.645872, 24.526241>,  <45.124058, 27.020975, 24.401093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184349, 26.645872, 24.526241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980520, 0.101497, -0.168162,
		0.125940, 0.332124, 0.934790,
		0.150729, -0.937759, 0.312872,
		45.229568, 26.364544, 24.620102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604984, 26.947142, 23.758291>,  <45.124058, 27.020975, 24.401093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604984, 26.947142, 23.758291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.391571, 26.616230, 23.687927>,  <44.263523, 26.417683, 23.645708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.391571, 26.616230, 23.687927>,  <44.604984, 26.947142, 23.758291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391571, 26.616230, 23.687927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513760, 0.151789, 0.844400,
		-0.671855, 0.540894, -0.506009,
		-0.533537, -0.827281, -0.175910,
		44.231510, 26.368046, 23.635155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925503, 27.163599, 23.869884>,  <44.604984, 26.947142, 23.758291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925503, 27.163599, 23.869884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.891365, 26.765100, 23.875669>,  <43.870884, 26.526001, 23.879141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.891365, 26.765100, 23.875669>,  <43.925503, 27.163599, 23.869884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891365, 26.765100, 23.875669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511768, 0.056284, 0.857278,
		-0.854874, 0.065761, -0.514651,
		-0.085342, -0.996247, 0.014461,
		43.865761, 26.466227, 23.880009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303139, 27.062078, 24.116037>,  <43.925503, 27.163599, 23.869884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303139, 27.062078, 24.116037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.439594, 26.692759, 24.186630>,  <43.521469, 26.471167, 24.228987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.439594, 26.692759, 24.186630>,  <43.303139, 27.062078, 24.116037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439594, 26.692759, 24.186630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426430, 0.015313, 0.904391,
		-0.837724, -0.383780, -0.388498,
		0.341137, -0.923298, 0.176484,
		43.541935, 26.415770, 24.239576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749512, 26.545509, 24.248131>,  <43.303139, 27.062078, 24.116037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749512, 26.545509, 24.248131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.084587, 26.433367, 24.435612>,  <43.285633, 26.366081, 24.548101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.084587, 26.433367, 24.435612>,  <42.749512, 26.545509, 24.248131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084587, 26.433367, 24.435612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473395, 0.055250, 0.879116,
		-0.272363, -0.958304, -0.086439,
		0.837685, -0.280359, 0.468705,
		43.335892, 26.349260, 24.576223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460022, 26.306479, 24.842010>,  <42.749512, 26.545509, 24.248131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460022, 26.306479, 24.842010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.848740, 26.340754, 24.929893>,  <43.081970, 26.361319, 24.982624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.848740, 26.340754, 24.929893>,  <42.460022, 26.306479, 24.842010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848740, 26.340754, 24.929893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229951, 0.137623, 0.963422,
		0.052311, -0.986772, 0.153444,
		0.971795, 0.085682, 0.219710,
		43.140278, 26.366461, 24.995806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599915, 25.894072, 25.468040>,  <42.460022, 26.306479, 24.842010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599915, 25.894072, 25.468040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.884171, 26.175232, 25.455914>,  <43.054726, 26.343929, 25.448637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.884171, 26.175232, 25.455914>,  <42.599915, 25.894072, 25.468040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884171, 26.175232, 25.455914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123752, 0.167298, 0.978109,
		0.692587, -0.691331, 0.205875,
		0.710639, 0.702903, -0.030315,
		43.097363, 26.386103, 25.446819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014397, 25.741018, 26.045155>,  <42.599915, 25.894072, 25.468040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014397, 25.741018, 26.045155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.073536, 26.126890, 25.957941>,  <43.109020, 26.358414, 25.905613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.073536, 26.126890, 25.957941>,  <43.014397, 25.741018, 26.045155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073536, 26.126890, 25.957941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101629, 0.234107, 0.966884,
		0.983775, -0.120792, 0.132652,
		0.147847, 0.964678, -0.218032,
		43.117889, 26.416294, 25.892530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496666, 26.013245, 26.598892>,  <43.014397, 25.741018, 26.045155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496666, 26.013245, 26.598892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.311359, 26.325966, 26.431957>,  <43.200176, 26.513599, 26.331797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.311359, 26.325966, 26.431957>,  <43.496666, 26.013245, 26.598892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311359, 26.325966, 26.431957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257295, 0.331981, 0.907517,
		0.848048, 0.527799, 0.047359,
		-0.463265, 0.781803, -0.417336,
		43.172379, 26.560507, 26.306757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655399, 26.531231, 27.070097>,  <43.496666, 26.013245, 26.598892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655399, 26.531231, 27.070097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.346184, 26.681477, 26.865616>,  <43.160656, 26.771624, 26.742928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.346184, 26.681477, 26.865616>,  <43.655399, 26.531231, 27.070097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346184, 26.681477, 26.865616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378150, 0.374169, 0.846759,
		0.509329, 0.847888, -0.147209,
		-0.773037, 0.375612, -0.511204,
		43.114273, 26.794161, 26.712255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496479, 27.171616, 27.428835>,  <43.655399, 26.531231, 27.070097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496479, 27.171616, 27.428835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.156319, 27.140730, 27.220661>,  <42.952221, 27.122198, 27.095757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.156319, 27.140730, 27.220661>,  <43.496479, 27.171616, 27.428835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156319, 27.140730, 27.220661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502062, 0.414861, 0.758831,
		0.157317, 0.906603, -0.391565,
		-0.850403, -0.077213, -0.520436,
		42.901199, 27.117567, 27.064531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122410, 27.766663, 27.576918>,  <43.496479, 27.171616, 27.428835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122410, 27.766663, 27.576918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.834621, 27.529825, 27.431709>,  <42.661949, 27.387722, 27.344585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.834621, 27.529825, 27.431709>,  <43.122410, 27.766663, 27.576918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834621, 27.529825, 27.431709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618837, 0.309255, 0.722081,
		-0.315273, 0.744169, -0.588910,
		-0.719474, -0.592093, -0.363020,
		42.618778, 27.352198, 27.322803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571133, 28.194998, 27.461157>,  <43.122410, 27.766663, 27.576918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571133, 28.194998, 27.461157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.460140, 27.813841, 27.510155>,  <42.393547, 27.585148, 27.539553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.460140, 27.813841, 27.510155>,  <42.571133, 28.194998, 27.461157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460140, 27.813841, 27.510155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474175, 0.246721, 0.845155,
		-0.835562, 0.176428, -0.520297,
		-0.277477, -0.952891, 0.122493,
		42.376896, 27.527973, 27.546902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873871, 28.204166, 27.567928>,  <42.571133, 28.194998, 27.461157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873871, 28.204166, 27.567928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.965714, 27.843102, 27.713522>,  <42.020821, 27.626463, 27.800879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.965714, 27.843102, 27.713522>,  <41.873871, 28.204166, 27.567928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965714, 27.843102, 27.713522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369751, 0.265039, 0.890527,
		-0.900314, -0.339053, -0.272905,
		0.229606, -0.902661, 0.363984,
		42.034595, 27.572304, 27.822718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209141, 27.925583, 27.929155>,  <41.873871, 28.204166, 27.567928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209141, 27.925583, 27.929155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.548210, 27.767994, 28.071272>,  <41.751652, 27.673441, 28.156542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.548210, 27.767994, 28.071272>,  <41.209141, 27.925583, 27.929155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548210, 27.767994, 28.071272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257470, 0.280038, 0.924818,
		-0.463845, -0.875423, 0.135946,
		0.847677, -0.393970, 0.355290,
		41.802513, 27.649803, 28.177858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614647, 27.402067, 27.837688>,  <41.209141, 27.925583, 27.929155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614647, 27.402067, 27.837688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.290043, 27.570288, 27.675413>,  <40.095280, 27.671221, 27.578049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.290043, 27.570288, 27.675413>,  <40.614647, 27.402067, 27.837688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290043, 27.570288, 27.675413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243381, -0.387922, -0.888978,
		-0.531239, -0.820153, 0.212448,
		-0.811512, 0.420554, -0.405688,
		40.046589, 27.696453, 27.553707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333359, 26.868877, 27.451447>,  <40.614647, 27.402067, 27.837688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333359, 26.868877, 27.451447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.181465, 27.215313, 27.321407>,  <40.090328, 27.423174, 27.243383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.181465, 27.215313, 27.321407>,  <40.333359, 26.868877, 27.451447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181465, 27.215313, 27.321407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052557, -0.371049, -0.927125,
		-0.923601, -0.334977, 0.186420,
		-0.379736, 0.866091, -0.325096,
		40.067543, 27.475140, 27.223879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095570, 26.583626, 26.777092>,  <40.333359, 26.868877, 27.451447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095570, 26.583626, 26.777092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.046429, 26.979950, 26.754477>,  <40.016945, 27.217745, 26.740908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.046429, 26.979950, 26.754477>,  <40.095570, 26.583626, 26.777092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046429, 26.979950, 26.754477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057596, -0.049754, -0.997099,
		-0.990752, -0.125756, -0.050954,
		-0.122856, 0.990813, -0.056536,
		40.009571, 27.277193, 26.737516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532726, 26.676086, 26.261377>,  <40.095570, 26.583626, 26.777092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532726, 26.676086, 26.261377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.775002, 26.993628, 26.283031>,  <39.920368, 27.184153, 26.296024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.775002, 26.993628, 26.283031>,  <39.532726, 26.676086, 26.261377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775002, 26.993628, 26.283031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135202, -0.035631, -0.990177,
		-0.784128, 0.607062, -0.128912,
		0.605692, 0.793855, 0.054137,
		39.956711, 27.231785, 26.299273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340824, 27.058416, 25.747944>,  <39.532726, 26.676086, 26.261377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340824, 27.058416, 25.747944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.702942, 27.210852, 25.822998>,  <39.920212, 27.302313, 25.868031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.702942, 27.210852, 25.822998>,  <39.340824, 27.058416, 25.747944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702942, 27.210852, 25.822998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214411, -0.028630, -0.976324,
		-0.366693, 0.924095, -0.107629,
		0.905298, 0.381088, 0.187638,
		39.974533, 27.325178, 25.879290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405239, 27.585367, 25.362869>,  <39.340824, 27.058416, 25.747944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405239, 27.585367, 25.362869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.784138, 27.475254, 25.428524>,  <40.011478, 27.409187, 25.467916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.784138, 27.475254, 25.428524>,  <39.405239, 27.585367, 25.362869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784138, 27.475254, 25.428524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160964, -0.034242, -0.986366,
		0.277149, 0.960754, 0.011874,
		0.947248, -0.275281, 0.164137,
		40.068314, 27.392670, 25.477764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880173, 28.033482, 24.960955>,  <39.405239, 27.585367, 25.362869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880173, 28.033482, 24.960955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.081764, 27.698111, 25.043945>,  <40.202717, 27.496887, 25.093740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.081764, 27.698111, 25.043945>,  <39.880173, 28.033482, 24.960955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081764, 27.698111, 25.043945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364259, -0.011485, -0.931227,
		0.783150, 0.544891, 0.299617,
		0.503976, -0.838428, 0.207476,
		40.232956, 27.446583, 25.106188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083477, 28.779076, 24.883066>,  <39.880173, 28.033482, 24.960955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083477, 28.779076, 24.883066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.841331, 29.019157, 24.673960>,  <39.696045, 29.163206, 24.548496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.841331, 29.019157, 24.673960>,  <40.083477, 28.779076, 24.883066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841331, 29.019157, 24.673960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638687, 0.025638, 0.769039,
		0.474982, 0.799437, 0.367822,
		-0.605368, 0.600203, -0.522767,
		39.659721, 29.199219, 24.517130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794304, 29.324551, 25.330572>,  <40.083477, 28.779076, 24.883066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794304, 29.324551, 25.330572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.532948, 29.313025, 25.027985>,  <39.376133, 29.306108, 24.846432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.532948, 29.313025, 25.027985>,  <39.794304, 29.324551, 25.330572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532948, 29.313025, 25.027985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752747, 0.130737, 0.645198,
		0.080308, 0.990999, -0.107112,
		-0.653393, -0.028813, -0.756470,
		39.336929, 29.304380, 24.801044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402264, 29.958965, 25.346138>,  <39.794304, 29.324551, 25.330572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402264, 29.958965, 25.346138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.163712, 29.697268, 25.160107>,  <39.020580, 29.540249, 25.048489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.163712, 29.697268, 25.160107>,  <39.402264, 29.958965, 25.346138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163712, 29.697268, 25.160107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690958, 0.123527, 0.712262,
		-0.408544, 0.746127, -0.525724,
		-0.596379, -0.654244, -0.465077,
		38.984798, 29.500994, 25.020584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804508, 30.252050, 25.266718>,  <39.402264, 29.958965, 25.346138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804508, 30.252050, 25.266718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.708584, 29.868416, 25.206532>,  <38.651028, 29.638235, 25.170420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.708584, 29.868416, 25.206532>,  <38.804508, 30.252050, 25.266718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708584, 29.868416, 25.206532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657287, 0.046336, 0.752214,
		-0.714468, 0.279289, -0.641508,
		-0.239810, -0.959088, -0.150468,
		38.636642, 29.580688, 25.161390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154282, 30.352766, 25.273041>,  <38.804508, 30.252050, 25.266718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154282, 30.352766, 25.273041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.214485, 29.964128, 25.346092>,  <38.250607, 29.730946, 25.389923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.214485, 29.964128, 25.346092>,  <38.154282, 30.352766, 25.273041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214485, 29.964128, 25.346092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611832, 0.053560, 0.789173,
		-0.776536, -0.230518, -0.586390,
		0.150511, -0.971593, 0.182630,
		38.259640, 29.672651, 25.400881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441780, 30.022846, 25.278660>,  <38.154282, 30.352766, 25.273041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441780, 30.022846, 25.278660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.699120, 29.790779, 25.478462>,  <37.853523, 29.651539, 25.598345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.699120, 29.790779, 25.478462>,  <37.441780, 30.022846, 25.278660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699120, 29.790779, 25.478462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614457, -0.002112, 0.788947,
		-0.456666, -0.814495, -0.357846,
		0.643350, -0.580166, 0.499508,
		37.892124, 29.616730, 25.628315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059788, 29.553278, 25.672943>,  <37.441780, 30.022846, 25.278660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059788, 29.553278, 25.672943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.412060, 29.534378, 25.861486>,  <37.623421, 29.523037, 25.974611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.412060, 29.534378, 25.861486>,  <37.059788, 29.553278, 25.672943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412060, 29.534378, 25.861486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464642, 0.107685, 0.878927,
		-0.092288, -0.993062, 0.072881,
		0.880676, -0.047251, 0.471356,
		37.676262, 29.520203, 26.002893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.214161, 31.050068, 22.854326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.455559, 30.868578, 23.116600>,  <44.600399, 30.759684, 23.273964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.455559, 30.868578, 23.116600>,  <44.214161, 31.050068, 22.854326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455559, 30.868578, 23.116600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646515, 0.202864, 0.735435,
		-0.466700, -0.867745, -0.170911,
		0.603498, -0.453724, 0.655687,
		44.636608, 30.732460, 23.313307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697231, 31.065466, 23.433830>,  <44.214161, 31.050068, 22.854326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697231, 31.065466, 23.433830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.058151, 30.971067, 23.578144>,  <44.274704, 30.914429, 23.664732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.058151, 30.971067, 23.578144>,  <43.697231, 31.065466, 23.433830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058151, 30.971067, 23.578144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276050, 0.326530, 0.903977,
		-0.331141, -0.915251, 0.229480,
		0.902298, -0.235996, 0.360783,
		44.328842, 30.900269, 23.686378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563976, 30.934971, 24.156803>,  <43.697231, 31.065466, 23.433830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563976, 30.934971, 24.156803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.962868, 30.963697, 24.164505>,  <44.202202, 30.980932, 24.169127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.962868, 30.963697, 24.164505>,  <43.563976, 30.934971, 24.156803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.962868, 30.963697, 24.164505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039353, 0.290076, 0.956194,
		0.063082, -0.954305, 0.292099,
		0.997232, 0.071813, 0.019256,
		44.262039, 30.985241, 24.170282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731579, 30.611675, 24.727299>,  <43.563976, 30.934971, 24.156803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731579, 30.611675, 24.727299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.023087, 30.870607, 24.637981>,  <44.197990, 31.025967, 24.584391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.023087, 30.870607, 24.637981>,  <43.731579, 30.611675, 24.727299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023087, 30.870607, 24.637981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039056, 0.364850, 0.930247,
		0.683646, -0.669213, 0.291173,
		0.728768, 0.647332, -0.223292,
		44.241718, 31.064806, 24.570993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149799, 30.576468, 25.269087>,  <43.731579, 30.611675, 24.727299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149799, 30.576468, 25.269087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.207813, 30.930782, 25.092747>,  <44.242622, 31.143372, 24.986942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.207813, 30.930782, 25.092747>,  <44.149799, 30.576468, 25.269087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207813, 30.930782, 25.092747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060343, 0.452650, 0.889644,
		0.987585, -0.102427, 0.119101,
		0.145035, 0.885786, -0.440849,
		44.251324, 31.196518, 24.960491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501343, 31.005365, 25.809370>,  <44.149799, 30.576468, 25.269087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501343, 31.005365, 25.809370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.394741, 31.286299, 25.545340>,  <44.330780, 31.454859, 25.386921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.394741, 31.286299, 25.545340>,  <44.501343, 31.005365, 25.809370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394741, 31.286299, 25.545340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009831, 0.682827, 0.730513,
		0.963783, 0.201176, -0.175074,
		-0.266507, 0.702335, -0.660075,
		44.314789, 31.497000, 25.347317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955780, 31.593996, 25.901751>,  <44.501343, 31.005365, 25.809370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955780, 31.593996, 25.901751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.635918, 31.739157, 25.710398>,  <44.444000, 31.826254, 25.595587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.635918, 31.739157, 25.710398>,  <44.955780, 31.593996, 25.901751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635918, 31.739157, 25.710398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079804, 0.725399, 0.683686,
		0.595129, 0.584892, -0.551110,
		-0.799658, 0.362901, -0.478383,
		44.396019, 31.848026, 25.566883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005001, 32.358734, 25.722595>,  <44.955780, 31.593996, 25.901751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005001, 32.358734, 25.722595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.612263, 32.286682, 25.746401>,  <44.376621, 32.243450, 25.760683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.612263, 32.286682, 25.746401>,  <45.005001, 32.358734, 25.722595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612263, 32.286682, 25.746401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110408, 0.797689, 0.592876,
		-0.154266, 0.575539, -0.803092,
		-0.981841, -0.180129, 0.059512,
		44.317711, 32.232643, 25.764254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675896, 33.065617, 25.700129>,  <45.005001, 32.358734, 25.722595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675896, 33.065617, 25.700129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.392372, 32.827702, 25.851818>,  <44.222256, 32.684952, 25.942831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.392372, 32.827702, 25.851818>,  <44.675896, 33.065617, 25.700129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392372, 32.827702, 25.851818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354955, 0.765326, 0.536920,
		-0.609585, 0.245967, -0.753595,
		-0.708811, -0.594791, 0.379224,
		44.179729, 32.649265, 25.965586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120010, 33.439945, 25.745754>,  <44.675896, 33.065617, 25.700129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120010, 33.439945, 25.745754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.007568, 33.144402, 25.990725>,  <43.940102, 32.967075, 26.137707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.007568, 33.144402, 25.990725>,  <44.120010, 33.439945, 25.745754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007568, 33.144402, 25.990725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440670, 0.666280, 0.601565,
		-0.852520, -0.100775, -0.512888,
		-0.281104, -0.738861, 0.612426,
		43.923237, 32.922745, 26.174452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421471, 33.563583, 26.027561>,  <44.120010, 33.439945, 25.745754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421471, 33.563583, 26.027561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.589096, 33.328106, 26.304060>,  <43.689671, 33.186817, 26.469959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.589096, 33.328106, 26.304060>,  <43.421471, 33.563583, 26.027561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589096, 33.328106, 26.304060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393057, 0.568664, 0.722584,
		-0.818471, -0.574507, 0.006913,
		0.419060, -0.588696, 0.691249,
		43.714813, 33.151497, 26.511435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946209, 33.375839, 26.480972>,  <43.421471, 33.563583, 26.027561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946209, 33.375839, 26.480972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.287891, 33.335453, 26.684984>,  <43.492901, 33.311222, 26.807392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.287891, 33.335453, 26.684984>,  <42.946209, 33.375839, 26.480972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287891, 33.335453, 26.684984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449071, 0.351115, 0.821616,
		-0.262034, -0.930873, 0.254585,
		0.854209, -0.100965, 0.510032,
		43.544155, 33.305164, 26.837994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195515, 33.373356, 26.228434>,  <42.946209, 33.375839, 26.480972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195515, 33.373356, 26.228434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.043144, 33.651352, 25.984505>,  <41.951721, 33.818150, 25.838148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.043144, 33.651352, 25.984505>,  <42.195515, 33.373356, 26.228434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043144, 33.651352, 25.984505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188557, -0.587295, -0.787103,
		-0.905173, -0.414817, 0.092673,
		-0.380930, 0.694990, -0.609820,
		41.928864, 33.859848, 25.801559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944809, 32.896519, 25.790358>,  <42.195515, 33.373356, 26.228434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944809, 32.896519, 25.790358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.929684, 33.253159, 25.609859>,  <41.920609, 33.467140, 25.501560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.929684, 33.253159, 25.609859>,  <41.944809, 32.896519, 25.790358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929684, 33.253159, 25.609859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188812, -0.437060, -0.879391,
		-0.981285, -0.118454, -0.151818,
		-0.037814, 0.891598, -0.451246,
		41.918339, 33.520638, 25.474485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534172, 32.768570, 25.199028>,  <41.944809, 32.896519, 25.790358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534172, 32.768570, 25.199028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.724373, 33.113060, 25.127272>,  <41.838493, 33.319756, 25.084217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.724373, 33.113060, 25.127272>,  <41.534172, 32.768570, 25.199028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724373, 33.113060, 25.127272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180344, -0.295022, -0.938316,
		-0.861029, 0.413821, -0.295602,
		0.475504, 0.861228, -0.179393,
		41.867023, 33.371429, 25.073454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132111, 33.048878, 24.664463>,  <41.534172, 32.768570, 25.199028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132111, 33.048878, 24.664463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.514423, 33.166500, 24.663658>,  <41.743813, 33.237072, 24.663176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.514423, 33.166500, 24.663658>,  <41.132111, 33.048878, 24.664463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514423, 33.166500, 24.663658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129279, -0.426327, -0.895283,
		-0.264120, 0.855439, -0.445493,
		0.955786, 0.294055, -0.002011,
		41.801159, 33.254715, 24.663055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174973, 33.452042, 24.034367>,  <41.132111, 33.048878, 24.664463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174973, 33.452042, 24.034367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.550808, 33.355820, 24.131773>,  <41.776310, 33.298088, 24.190216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.550808, 33.355820, 24.131773>,  <41.174973, 33.452042, 24.034367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550808, 33.355820, 24.131773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126127, -0.418055, -0.899623,
		0.318212, 0.875993, -0.362461,
		0.939592, -0.240555, 0.243516,
		41.832687, 33.283653, 24.204828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515644, 33.704636, 23.474096>,  <41.174973, 33.452042, 24.034367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515644, 33.704636, 23.474096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.771538, 33.446507, 23.641094>,  <41.925076, 33.291630, 23.741293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.771538, 33.446507, 23.641094>,  <41.515644, 33.704636, 23.474096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771538, 33.446507, 23.641094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207787, -0.377754, -0.902289,
		0.739974, 0.663977, -0.107574,
		0.639736, -0.645318, 0.417495,
		41.963459, 33.252911, 23.766342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087231, 33.656284, 22.958744>,  <41.515644, 33.704636, 23.474096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087231, 33.656284, 22.958744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.095554, 33.347279, 23.212606>,  <42.100548, 33.161877, 23.364923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.095554, 33.347279, 23.212606>,  <42.087231, 33.656284, 22.958744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095554, 33.347279, 23.212606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338594, -0.591838, -0.731493,
		0.940703, 0.230110, 0.249255,
		0.020806, -0.772514, 0.634657,
		42.101795, 33.115524, 23.403004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723232, 33.359035, 22.739182>,  <42.087231, 33.656284, 22.958744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723232, 33.359035, 22.739182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.562283, 33.060341, 22.951025>,  <42.465714, 32.881123, 23.078131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.562283, 33.060341, 22.951025>,  <42.723232, 33.359035, 22.739182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562283, 33.060341, 22.951025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493867, -0.664161, -0.561236,
		0.770839, 0.035731, 0.636027,
		-0.402371, -0.746735, 0.529608,
		42.441570, 32.836319, 23.109907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233643, 32.840321, 23.006115>,  <42.723232, 33.359035, 22.739182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233643, 32.840321, 23.006115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.874874, 32.663986, 22.992252>,  <42.659615, 32.558186, 22.983934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.874874, 32.663986, 22.992252>,  <43.233643, 32.840321, 23.006115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874874, 32.663986, 22.992252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412996, -0.807100, -0.421929,
		0.158033, -0.392747, 0.905967,
		-0.896917, -0.440839, -0.034655,
		42.605801, 32.531734, 22.981855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391045, 32.224834, 23.186228>,  <43.233643, 32.840321, 23.006115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391045, 32.224834, 23.186228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.036396, 32.184868, 23.005596>,  <42.823608, 32.160889, 22.897217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.036396, 32.184868, 23.005596>,  <43.391045, 32.224834, 23.186228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036396, 32.184868, 23.005596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359742, -0.762633, -0.537565,
		-0.290678, -0.639068, 0.712109,
		-0.886618, -0.099917, -0.451581,
		42.770412, 32.154892, 22.870121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300125, 31.505610, 23.001926>,  <43.391045, 32.224834, 23.186228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300125, 31.505610, 23.001926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.016586, 31.649763, 22.759386>,  <42.846462, 31.736256, 22.613863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.016586, 31.649763, 22.759386>,  <43.300125, 31.505610, 23.001926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016586, 31.649763, 22.759386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123747, -0.782758, -0.609899,
		-0.694423, -0.507358, 0.510258,
		-0.708846, 0.360385, -0.606350,
		42.803932, 31.757879, 22.577480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635818, 30.981138, 22.864733>,  <43.300125, 31.505610, 23.001926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635818, 30.981138, 22.864733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.646496, 31.235888, 22.556530>,  <42.652905, 31.388737, 22.371609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.646496, 31.235888, 22.556530>,  <42.635818, 30.981138, 22.864733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646496, 31.235888, 22.556530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073268, -0.769956, -0.633877,
		-0.996955, -0.039532, -0.067217,
		0.026695, 0.636872, -0.770507,
		42.654503, 31.426949, 22.325378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239948, 30.633059, 22.321989>,  <42.635818, 30.981138, 22.864733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239948, 30.633059, 22.321989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.480827, 30.913879, 22.169947>,  <42.625355, 31.082373, 22.078722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.480827, 30.913879, 22.169947>,  <42.239948, 30.633059, 22.321989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480827, 30.913879, 22.169947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311084, -0.644832, -0.698154,
		-0.735246, 0.302181, -0.606713,
		0.602196, 0.702053, -0.380106,
		42.661488, 31.124495, 22.055914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779999, 30.961752, 22.841541>,  <42.239948, 30.633059, 22.321989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779999, 30.961752, 22.841541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.605038, 30.711285, 22.583366>,  <41.500061, 30.561005, 22.428461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.605038, 30.711285, 22.583366>,  <41.779999, 30.961752, 22.841541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605038, 30.711285, 22.583366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685446, -0.232448, 0.690024,
		-0.582102, 0.744232, -0.327531,
		-0.437404, -0.626168, -0.645439,
		41.473816, 30.523434, 22.389734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053867, 30.989506, 23.003222>,  <41.779999, 30.961752, 22.841541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053867, 30.989506, 23.003222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.111969, 30.645567, 22.807440>,  <41.146832, 30.439203, 22.689972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.111969, 30.645567, 22.807440>,  <41.053867, 30.989506, 23.003222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111969, 30.645567, 22.807440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710611, -0.434882, 0.553091,
		-0.688428, 0.267471, -0.674185,
		0.145256, -0.859847, -0.489453,
		41.155544, 30.387613, 22.660604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385834, 30.758039, 22.850664>,  <41.053867, 30.989506, 23.003222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385834, 30.758039, 22.850664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.616062, 30.431774, 22.827301>,  <40.754200, 30.236015, 22.813284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.616062, 30.431774, 22.827301>,  <40.385834, 30.758039, 22.850664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616062, 30.431774, 22.827301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725612, -0.542350, 0.423490,
		-0.377103, -0.201367, -0.904016,
		0.575570, -0.815664, -0.058408,
		40.788734, 30.187075, 22.809778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910469, 30.223040, 22.825939>,  <40.385834, 30.758039, 22.850664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910469, 30.223040, 22.825939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.235703, 30.010031, 22.920023>,  <40.430843, 29.882225, 22.976473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.235703, 30.010031, 22.920023>,  <39.910469, 30.223040, 22.825939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235703, 30.010031, 22.920023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503800, -0.441213, 0.742642,
		-0.291694, -0.722326, -0.627025,
		0.813081, -0.532519, 0.235209,
		40.479626, 29.850275, 22.990585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722515, 29.554798, 22.765518>,  <39.910469, 30.223040, 22.825939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722515, 29.554798, 22.765518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.046535, 29.541842, 22.999704>,  <40.240948, 29.534067, 23.140217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.046535, 29.541842, 22.999704>,  <39.722515, 29.554798, 22.765518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046535, 29.541842, 22.999704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554162, -0.368616, 0.746342,
		0.191639, -0.929017, -0.316547,
		0.810049, -0.032390, 0.585467,
		40.289551, 29.532124, 23.175344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719139, 28.888422, 23.017324>,  <39.722515, 29.554798, 22.765518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719139, 28.888422, 23.017324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.917694, 29.160969, 23.232487>,  <40.036827, 29.324497, 23.361584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.917694, 29.160969, 23.232487>,  <39.719139, 28.888422, 23.017324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917694, 29.160969, 23.232487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433847, -0.341989, 0.833559,
		0.751918, -0.647133, 0.125852,
		0.496384, 0.681368, 0.537904,
		40.066608, 29.365379, 23.393858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072338, 28.487759, 23.550175>,  <39.719139, 28.888422, 23.017324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072338, 28.487759, 23.550175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.016319, 28.869942, 23.654093>,  <39.982708, 29.099251, 23.716444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.016319, 28.869942, 23.654093>,  <40.072338, 28.487759, 23.550175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016319, 28.869942, 23.654093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618755, -0.289288, 0.730380,
		0.773000, -0.058463, 0.631706,
		-0.140045, 0.955455, 0.259793,
		39.974304, 29.156578, 23.732031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004192, 28.428226, 24.195562>,  <40.072338, 28.487759, 23.550175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004192, 28.428226, 24.195562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.860630, 28.797667, 24.141680>,  <39.774490, 29.019331, 24.109350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.860630, 28.797667, 24.141680>,  <40.004192, 28.428226, 24.195562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860630, 28.797667, 24.141680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561843, -0.098537, 0.821354,
		0.745331, 0.370474, 0.554284,
		-0.358908, 0.923601, -0.134705,
		39.752956, 29.074747, 24.101269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652977, 28.064764, 24.535809>,  <40.004192, 28.428226, 24.195562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652977, 28.064764, 24.535809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.584991, 27.676168, 24.601923>,  <40.544201, 27.443010, 24.641592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.584991, 27.676168, 24.601923>,  <40.652977, 28.064764, 24.535809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584991, 27.676168, 24.601923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331829, -0.214355, -0.918663,
		0.927902, -0.101292, 0.358801,
		-0.169964, -0.971490, 0.165288,
		40.534004, 27.384722, 24.651510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281002, 27.660818, 24.373772>,  <40.652977, 28.064764, 24.535809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281002, 27.660818, 24.373772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992279, 27.387077, 24.332474>,  <40.819046, 27.222832, 24.307695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992279, 27.387077, 24.332474>,  <41.281002, 27.660818, 24.373772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992279, 27.387077, 24.332474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368114, -0.253292, -0.894615,
		0.586081, -0.683742, 0.434747,
		-0.721804, -0.684353, -0.103245,
		40.775738, 27.181772, 24.301500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616951, 27.065792, 24.190611>,  <41.281002, 27.660818, 24.373772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616951, 27.065792, 24.190611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.245590, 26.964630, 24.081724>,  <41.022774, 26.903933, 24.016392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.245590, 26.964630, 24.081724>,  <41.616951, 27.065792, 24.190611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245590, 26.964630, 24.081724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354628, -0.384423, -0.852325,
		0.110910, -0.887839, 0.446587,
		-0.928406, -0.252904, -0.272216,
		40.967068, 26.888760, 24.000059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693977, 26.259939, 23.930260>,  <41.616951, 27.065792, 24.190611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693977, 26.259939, 23.930260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.344292, 26.401596, 23.797390>,  <41.134480, 26.486589, 23.717669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.344292, 26.401596, 23.797390>,  <41.693977, 26.259939, 23.930260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344292, 26.401596, 23.797390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194942, -0.370571, -0.908116,
		-0.444696, -0.858639, 0.254920,
		-0.874210, 0.354141, -0.332177,
		41.082027, 26.507839, 23.697737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198566, 25.640385, 23.638865>,  <41.693977, 26.259939, 23.930260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198566, 25.640385, 23.638865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.108189, 25.998144, 23.484461>,  <41.053963, 26.212799, 23.391819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.108189, 25.998144, 23.484461>,  <41.198566, 25.640385, 23.638865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108189, 25.998144, 23.484461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208614, -0.342638, -0.916013,
		-0.951540, -0.287496, -0.109166,
		-0.225945, 0.894396, -0.386010,
		41.040405, 26.266462, 23.368658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782536, 25.438961, 23.106459>,  <41.198566, 25.640385, 23.638865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782536, 25.438961, 23.106459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.846832, 25.819418, 23.001015>,  <40.885410, 26.047693, 22.937748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.846832, 25.819418, 23.001015>,  <40.782536, 25.438961, 23.106459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846832, 25.819418, 23.001015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254896, -0.298025, -0.919896,
		-0.953515, 0.080670, -0.290347,
		0.160739, 0.951143, -0.263609,
		40.895054, 26.104761, 22.921932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353527, 25.511921, 22.622290>,  <40.782536, 25.438961, 23.106459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353527, 25.511921, 22.622290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.654507, 25.773476, 22.590647>,  <40.835094, 25.930408, 22.571661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.654507, 25.773476, 22.590647>,  <40.353527, 25.511921, 22.622290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654507, 25.773476, 22.590647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261897, -0.407229, -0.874971,
		-0.604347, 0.637650, -0.477668,
		0.752446, 0.653886, -0.079109,
		40.880241, 25.969641, 22.566914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256332, 25.862385, 22.010656>,  <40.353527, 25.511921, 22.622290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256332, 25.862385, 22.010656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649979, 25.906631, 22.066189>,  <40.886166, 25.933180, 22.099508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649979, 25.906631, 22.066189>,  <40.256332, 25.862385, 22.010656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649979, 25.906631, 22.066189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168100, -0.329447, -0.929090,
		-0.057037, 0.937672, -0.342810,
		0.984119, 0.110619, 0.138832,
		40.945213, 25.939817, 22.107838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604988, 26.222105, 21.443027>,  <40.256332, 25.862385, 22.010656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604988, 26.222105, 21.443027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.864357, 25.965059, 21.606291>,  <41.019978, 25.810833, 21.704248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.864357, 25.965059, 21.606291>,  <40.604988, 26.222105, 21.443027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864357, 25.965059, 21.606291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271986, -0.305208, -0.912618,
		0.711033, 0.702778, -0.023123,
		0.648425, -0.642612, 0.408159,
		41.058884, 25.772276, 21.728739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.230572, 32.495182, 36.032925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603226, 32.397030, 36.140137>,  <36.826820, 32.338139, 36.204464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603226, 32.397030, 36.140137>,  <36.230572, 32.495182, 36.032925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603226, 32.397030, 36.140137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136332, -0.447699, -0.883731,
		0.336845, 0.859858, -0.383640,
		0.931638, -0.245377, 0.268031,
		36.882717, 32.323418, 36.220547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696423, 32.669071, 35.512745>,  <36.230572, 32.495182, 36.032925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696423, 32.669071, 35.512745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970921, 32.448719, 35.702732>,  <37.135620, 32.316509, 35.816727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970921, 32.448719, 35.702732>,  <36.696423, 32.669071, 35.512745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970921, 32.448719, 35.702732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265564, -0.418163, -0.868686,
		0.677154, 0.722270, -0.140671,
		0.686249, -0.550877, 0.474970,
		37.176796, 32.283455, 35.845222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254589, 32.643990, 35.086987>,  <36.696423, 32.669071, 35.512745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254589, 32.643990, 35.086987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.292694, 32.310463, 35.304489>,  <37.315556, 32.110348, 35.434990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.292694, 32.310463, 35.304489>,  <37.254589, 32.643990, 35.086987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292694, 32.310463, 35.304489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348784, -0.483655, -0.802762,
		0.932349, 0.266124, 0.244750,
		0.095260, -0.833820, 0.543755,
		37.321274, 32.060318, 35.467617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855011, 32.360867, 34.993645>,  <37.254589, 32.643990, 35.086987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855011, 32.360867, 34.993645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.683094, 32.028282, 35.134468>,  <37.579945, 31.828732, 35.218964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.683094, 32.028282, 35.134468>,  <37.855011, 32.360867, 34.993645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683094, 32.028282, 35.134468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300512, -0.499404, -0.812581,
		0.851453, -0.243441, 0.464504,
		-0.429791, -0.831464, 0.352062,
		37.554157, 31.778843, 35.240086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442787, 31.801258, 35.056862>,  <37.855011, 32.360867, 34.993645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442787, 31.801258, 35.056862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074387, 31.650063, 35.019173>,  <37.853348, 31.559345, 34.996559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074387, 31.650063, 35.019173>,  <38.442787, 31.801258, 35.056862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074387, 31.650063, 35.019173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303452, -0.544460, -0.781972,
		0.244278, -0.748790, 0.616151,
		-0.921002, -0.377990, -0.094222,
		37.798084, 31.536665, 34.990906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604416, 31.072351, 34.783295>,  <38.442787, 31.801258, 35.056862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604416, 31.072351, 34.783295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.211269, 31.132704, 34.740932>,  <37.975384, 31.168915, 34.715515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.211269, 31.132704, 34.740932>,  <38.604416, 31.072351, 34.783295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211269, 31.132704, 34.740932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014350, -0.510144, -0.859969,
		-0.183779, -0.846752, 0.499236,
		-0.982863, 0.150880, -0.105905,
		37.916412, 31.177967, 34.709160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321251, 30.434402, 34.601482>,  <38.604416, 31.072351, 34.783295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321251, 30.434402, 34.601482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.029259, 30.679211, 34.479786>,  <37.854065, 30.826096, 34.406769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.029259, 30.679211, 34.479786>,  <38.321251, 30.434402, 34.601482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029259, 30.679211, 34.479786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104085, -0.539495, -0.835531,
		-0.675497, -0.578254, 0.457522,
		-0.729980, 0.612020, -0.304239,
		37.810265, 30.862816, 34.388515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831024, 30.001366, 34.362720>,  <38.321251, 30.434402, 34.601482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831024, 30.001366, 34.362720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712845, 30.346725, 34.199135>,  <37.641937, 30.553942, 34.100983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712845, 30.346725, 34.199135>,  <37.831024, 30.001366, 34.362720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712845, 30.346725, 34.199135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113571, -0.456778, -0.882301,
		-0.948585, -0.214224, 0.233010,
		-0.295444, 0.863401, -0.408963,
		37.624210, 30.605745, 34.076447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267780, 29.892250, 34.039898>,  <37.831024, 30.001366, 34.362720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267780, 29.892250, 34.039898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431236, 30.212486, 33.864594>,  <37.529308, 30.404629, 33.759411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431236, 30.212486, 33.864594>,  <37.267780, 29.892250, 34.039898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431236, 30.212486, 33.864594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091204, -0.441957, -0.892388,
		-0.908128, 0.404634, -0.107583,
		0.408637, 0.800591, -0.438258,
		37.553829, 30.452663, 33.733116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876060, 29.971666, 33.507587>,  <37.267780, 29.892250, 34.039898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876060, 29.971666, 33.507587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.197739, 30.187504, 33.407906>,  <37.390747, 30.317007, 33.348095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.197739, 30.187504, 33.407906>,  <36.876060, 29.971666, 33.507587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197739, 30.187504, 33.407906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080063, -0.317113, -0.945002,
		-0.588946, 0.779920, -0.211820,
		0.804197, 0.539596, -0.249205,
		37.438999, 30.349382, 33.333145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713734, 30.244228, 32.870796>,  <36.876060, 29.971666, 33.507587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713734, 30.244228, 32.870796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.111904, 30.267399, 32.901180>,  <37.350807, 30.281301, 32.919411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.111904, 30.267399, 32.901180>,  <36.713734, 30.244228, 32.870796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111904, 30.267399, 32.901180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088664, -0.264354, -0.960341,
		-0.035549, 0.962685, -0.268282,
		0.995427, 0.057926, 0.075958,
		37.410534, 30.284777, 32.923969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028648, 30.787064, 32.398975>,  <36.713734, 30.244228, 32.870796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028648, 30.787064, 32.398975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.285427, 30.486431, 32.459671>,  <37.439495, 30.306051, 32.496090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.285427, 30.486431, 32.459671>,  <37.028648, 30.787064, 32.398975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285427, 30.486431, 32.459671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016030, -0.211011, -0.977352,
		0.766579, 0.624978, -0.147506,
		0.641949, -0.751583, 0.151738,
		37.478012, 30.260956, 32.505192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906609, 31.397152, 31.980516>,  <37.028648, 30.787064, 32.398975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906609, 31.397152, 31.980516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662518, 31.632877, 31.768734>,  <36.516064, 31.774313, 31.641665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662518, 31.632877, 31.768734>,  <36.906609, 31.397152, 31.980516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662518, 31.632877, 31.768734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210210, 0.523915, 0.825424,
		0.763825, 0.614998, -0.195830,
		-0.610232, 0.589314, -0.529458,
		36.479446, 31.809671, 31.609896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049469, 32.038750, 32.184273>,  <36.906609, 31.397152, 31.980516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049469, 32.038750, 32.184273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701180, 32.112663, 32.001976>,  <36.492207, 32.157013, 31.892597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701180, 32.112663, 32.001976>,  <37.049469, 32.038750, 32.184273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701180, 32.112663, 32.001976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244723, 0.641024, 0.727460,
		0.426565, 0.744945, -0.512932,
		-0.870720, 0.184783, -0.455744,
		36.439964, 32.168098, 31.865253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915787, 32.842567, 32.218712>,  <37.049469, 32.038750, 32.184273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915787, 32.842567, 32.218712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.560181, 32.673637, 32.147953>,  <36.346817, 32.572281, 32.105499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.560181, 32.673637, 32.147953>,  <36.915787, 32.842567, 32.218712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560181, 32.673637, 32.147953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440232, 0.682168, 0.583817,
		-0.125886, 0.596898, -0.792379,
		-0.889015, -0.422325, -0.176898,
		36.293476, 32.546940, 32.094883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574459, 33.347912, 32.021618>,  <36.915787, 32.842567, 32.218712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574459, 33.347912, 32.021618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291031, 33.088943, 32.133881>,  <36.120975, 32.933563, 32.201241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291031, 33.088943, 32.133881>,  <36.574459, 33.347912, 32.021618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291031, 33.088943, 32.133881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372761, 0.681144, 0.630153,
		-0.599145, 0.341889, -0.723973,
		-0.708572, -0.647422, 0.280661,
		36.078461, 32.894718, 32.218079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062588, 33.814850, 32.077190>,  <36.574459, 33.347912, 32.021618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062588, 33.814850, 32.077190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.956669, 33.497734, 32.296776>,  <35.893116, 33.307465, 32.428528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.956669, 33.497734, 32.296776>,  <36.062588, 33.814850, 32.077190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956669, 33.497734, 32.296776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423777, 0.607040, 0.672246,
		-0.866197, -0.054632, -0.496708,
		-0.264796, -0.792791, 0.548968,
		35.877232, 33.259895, 32.461468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327229, 33.911709, 32.317890>,  <36.062588, 33.814850, 32.077190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327229, 33.911709, 32.317890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478046, 33.633411, 32.562443>,  <35.568535, 33.466434, 32.709175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478046, 33.633411, 32.562443>,  <35.327229, 33.911709, 32.317890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478046, 33.633411, 32.562443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429912, 0.453213, 0.780880,
		-0.820375, -0.557263, -0.128227,
		0.377042, -0.695741, 0.611378,
		35.591160, 33.424690, 32.745857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682163, 33.591934, 32.632160>,  <35.327229, 33.911709, 32.317890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682163, 33.591934, 32.632160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008221, 33.532112, 32.856007>,  <35.203854, 33.496220, 32.990314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008221, 33.532112, 32.856007>,  <34.682163, 33.591934, 32.632160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008221, 33.532112, 32.856007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495697, 0.319761, 0.807488,
		-0.299707, -0.935621, 0.186518,
		0.815144, -0.149554, 0.559620,
		35.252766, 33.487247, 33.023891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447872, 33.234337, 33.264515>,  <34.682163, 33.591934, 32.632160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447872, 33.234337, 33.264515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800339, 33.386265, 33.377144>,  <35.011818, 33.477421, 33.444721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800339, 33.386265, 33.377144>,  <34.447872, 33.234337, 33.264515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800339, 33.386265, 33.377144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412725, 0.327379, 0.849989,
		0.230663, -0.865193, 0.445237,
		0.881166, 0.379821, 0.281573,
		35.064690, 33.500210, 33.461617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454021, 33.215118, 33.981201>,  <34.447872, 33.234337, 33.264515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454021, 33.215118, 33.981201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755814, 33.464497, 33.899155>,  <34.936890, 33.614124, 33.849926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755814, 33.464497, 33.899155>,  <34.454021, 33.215118, 33.981201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755814, 33.464497, 33.899155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194666, 0.511036, 0.837226,
		0.626789, -0.591741, 0.506931,
		0.754481, 0.623446, -0.205120,
		34.982159, 33.651531, 33.837620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848591, 33.352512, 34.620953>,  <34.454021, 33.215118, 33.981201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848591, 33.352512, 34.620953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.954529, 33.663017, 34.392120>,  <35.018093, 33.849319, 34.254822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.954529, 33.663017, 34.392120>,  <34.848591, 33.352512, 34.620953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954529, 33.663017, 34.392120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275822, 0.629465, 0.726427,
		0.924001, -0.034601, 0.380822,
		0.264850, 0.776258, -0.572083,
		35.033985, 33.895893, 34.220497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185688, 33.777199, 35.038815>,  <34.848591, 33.352512, 34.620953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185688, 33.777199, 35.038815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030956, 34.007954, 34.751049>,  <34.938118, 34.146408, 34.578388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030956, 34.007954, 34.751049>,  <35.185688, 33.777199, 35.038815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030956, 34.007954, 34.751049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319512, 0.647977, 0.691403,
		0.865028, 0.497318, -0.066334,
		-0.386830, 0.576888, -0.719418,
		34.914906, 34.181019, 34.535225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454498, 34.378189, 35.221321>,  <35.185688, 33.777199, 35.038815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454498, 34.378189, 35.221321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148933, 34.481342, 34.984699>,  <34.965595, 34.543236, 34.842728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148933, 34.481342, 34.984699>,  <35.454498, 34.378189, 35.221321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148933, 34.481342, 34.984699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300776, 0.668734, 0.679947,
		0.570940, 0.697344, -0.433287,
		-0.763911, 0.257887, -0.591552,
		34.919762, 34.558708, 34.807232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517273, 35.077560, 35.235943>,  <35.454498, 34.378189, 35.221321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517273, 35.077560, 35.235943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.142563, 34.989460, 35.127171>,  <34.917736, 34.936600, 35.061909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.142563, 34.989460, 35.127171>,  <35.517273, 35.077560, 35.235943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142563, 34.989460, 35.127171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342620, 0.735329, 0.584724,
		0.071172, 0.640922, -0.764299,
		-0.936774, -0.220248, -0.271928,
		34.861530, 34.923386, 35.045593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171082, 35.615330, 35.003433>,  <35.517273, 35.077560, 35.235943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171082, 35.615330, 35.003433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.849514, 35.409760, 35.123161>,  <34.656574, 35.286415, 35.194996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.849514, 35.409760, 35.123161>,  <35.171082, 35.615330, 35.003433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849514, 35.409760, 35.123161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315426, 0.795097, 0.518003,
		-0.504202, 0.322020, -0.801301,
		-0.803919, -0.513930, 0.299316,
		34.608337, 35.255581, 35.212955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247410, 35.858421, 34.318436>,  <35.171082, 35.615330, 35.003433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247410, 35.858421, 34.318436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548996, 36.018703, 34.526653>,  <35.729950, 36.114872, 34.651585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548996, 36.018703, 34.526653>,  <35.247410, 35.858421, 34.318436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548996, 36.018703, 34.526653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457107, 0.249081, -0.853822,
		-0.471791, 0.881698, 0.004632,
		0.753967, 0.400708, 0.520544,
		35.775185, 36.138916, 34.682816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494083, 36.397606, 33.886127>,  <35.247410, 35.858421, 34.318436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494083, 36.397606, 33.886127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782951, 36.263165, 34.127956>,  <35.956272, 36.182499, 34.273052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782951, 36.263165, 34.127956>,  <35.494083, 36.397606, 33.886127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782951, 36.263165, 34.127956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658681, 0.067283, -0.749408,
		0.211198, 0.939420, 0.269972,
		0.722174, -0.336099, 0.604568,
		35.999603, 36.162334, 34.309326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033340, 36.932758, 33.879738>,  <35.494083, 36.397606, 33.886127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033340, 36.932758, 33.879738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181267, 36.579731, 33.995888>,  <36.270023, 36.367916, 34.065578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181267, 36.579731, 33.995888>,  <36.033340, 36.932758, 33.879738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181267, 36.579731, 33.995888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629923, 0.008442, -0.776612,
		0.682959, 0.470116, 0.559069,
		0.369817, -0.882564, 0.290371,
		36.292213, 36.314960, 34.083000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730339, 37.171970, 33.829243>,  <36.033340, 36.932758, 33.879738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730339, 37.171970, 33.829243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682030, 36.775093, 33.816761>,  <36.653042, 36.536968, 33.809273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682030, 36.775093, 33.816761>,  <36.730339, 37.171970, 33.829243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682030, 36.775093, 33.816761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732412, -0.067851, -0.677472,
		0.670063, -0.104675, 0.734886,
		-0.120777, -0.992189, -0.031201,
		36.645798, 36.477436, 33.807400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428741, 36.940826, 33.782990>,  <36.730339, 37.171970, 33.829243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428741, 36.940826, 33.782990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231972, 36.610592, 33.672421>,  <37.113911, 36.412449, 33.606079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231972, 36.610592, 33.672421>,  <37.428741, 36.940826, 33.782990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231972, 36.610592, 33.672421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553230, -0.051257, -0.831450,
		0.672268, -0.561938, 0.481955,
		-0.491927, -0.825590, -0.276423,
		37.084393, 36.362915, 33.589493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918755, 36.446037, 33.698013>,  <37.428741, 36.940826, 33.782990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918755, 36.446037, 33.698013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.602413, 36.325493, 33.484943>,  <37.412609, 36.253166, 33.357101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.602413, 36.325493, 33.484943>,  <37.918755, 36.446037, 33.698013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602413, 36.325493, 33.484943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575720, -0.071082, -0.814551,
		0.207611, -0.950857, 0.229715,
		-0.790850, -0.301361, -0.532670,
		37.365158, 36.235085, 33.325142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089035, 35.882023, 33.292374>,  <37.918755, 36.446037, 33.698013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089035, 35.882023, 33.292374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.757317, 36.019718, 33.116302>,  <37.558285, 36.102337, 33.010658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.757317, 36.019718, 33.116302>,  <38.089035, 35.882023, 33.292374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757317, 36.019718, 33.116302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415516, -0.146831, -0.897657,
		-0.373644, -0.927328, -0.021271,
		-0.829299, 0.344242, -0.440182,
		37.508526, 36.122990, 32.984249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872459, 35.366329, 33.001778>,  <38.089035, 35.882023, 33.292374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872459, 35.366329, 33.001778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.696400, 35.674961, 32.818066>,  <37.590763, 35.860138, 32.707836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.696400, 35.674961, 32.818066>,  <37.872459, 35.366329, 33.001778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696400, 35.674961, 32.818066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240641, -0.391422, -0.888189,
		-0.865078, -0.501458, -0.013389,
		-0.440149, 0.771575, -0.459282,
		37.564354, 35.906433, 32.680283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346039, 35.119595, 32.455257>,  <37.872459, 35.366329, 33.001778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346039, 35.119595, 32.455257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.439266, 35.483242, 32.317169>,  <37.495201, 35.701431, 32.234318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.439266, 35.483242, 32.317169>,  <37.346039, 35.119595, 32.455257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439266, 35.483242, 32.317169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268565, -0.401361, -0.875661,
		-0.934640, 0.111375, -0.337703,
		0.233067, 0.909123, -0.345217,
		37.509186, 35.755978, 32.213604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102364, 35.122066, 31.765284>,  <37.346039, 35.119595, 32.455257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102364, 35.122066, 31.765284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.374069, 35.415474, 31.774689>,  <37.537094, 35.591518, 31.780333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.374069, 35.415474, 31.774689>,  <37.102364, 35.122066, 31.765284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374069, 35.415474, 31.774689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288234, -0.237177, -0.927722,
		-0.674923, 0.636946, -0.372530,
		0.679265, 0.733517, 0.023514,
		37.577850, 35.635529, 31.781742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089851, 35.493309, 31.091810>,  <37.102364, 35.122066, 31.765284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089851, 35.493309, 31.091810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442883, 35.573967, 31.261703>,  <37.654701, 35.622360, 31.363640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442883, 35.573967, 31.261703>,  <37.089851, 35.493309, 31.091810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442883, 35.573967, 31.261703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460479, -0.188278, -0.867474,
		-0.094955, 0.961192, -0.259024,
		0.882577, 0.201646, 0.424731,
		37.707657, 35.634460, 31.389122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282005, 36.226280, 30.787918>,  <37.089851, 35.493309, 31.091810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282005, 36.226280, 30.787918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.634613, 36.075382, 30.901487>,  <37.846176, 35.984844, 30.969629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.634613, 36.075382, 30.901487>,  <37.282005, 36.226280, 30.787918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634613, 36.075382, 30.901487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292437, -0.035875, -0.955612,
		0.370687, 0.925418, 0.078696,
		0.881517, -0.377247, 0.283924,
		37.899067, 35.962208, 30.986664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787354, 36.562164, 30.423227>,  <37.282005, 36.226280, 30.787918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787354, 36.562164, 30.423227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.991573, 36.244900, 30.556034>,  <38.114105, 36.054543, 30.635717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.991573, 36.244900, 30.556034>,  <37.787354, 36.562164, 30.423227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991573, 36.244900, 30.556034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556867, 0.010789, -0.830531,
		0.655164, 0.608915, 0.447194,
		0.510548, -0.793162, 0.332016,
		38.144737, 36.006950, 30.655640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552021, 36.783466, 30.398067>,  <37.787354, 36.562164, 30.423227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552021, 36.783466, 30.398067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.526596, 36.384430, 30.386992>,  <38.511341, 36.145008, 30.380346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.526596, 36.384430, 30.386992>,  <38.552021, 36.783466, 30.398067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526596, 36.384430, 30.386992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629498, -0.018547, -0.776781,
		0.774398, -0.066802, 0.629162,
		-0.063560, -0.997594, -0.027689,
		38.507526, 36.085152, 30.378685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203083, 36.634697, 30.575554>,  <38.552021, 36.783466, 30.398067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203083, 36.634697, 30.575554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031689, 36.347580, 30.356037>,  <38.928852, 36.175308, 30.224327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031689, 36.347580, 30.356037>,  <39.203083, 36.634697, 30.575554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031689, 36.347580, 30.356037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732465, 0.079692, -0.676124,
		0.529053, -0.691678, 0.491614,
		-0.428482, -0.717796, -0.548791,
		38.903145, 36.132240, 30.191401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736565, 36.524250, 29.981369>,  <39.203083, 36.634697, 30.575554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736565, 36.524250, 29.981369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.430626, 36.296623, 29.860584>,  <39.247063, 36.160046, 29.788113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.430626, 36.296623, 29.860584>,  <39.736565, 36.524250, 29.981369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430626, 36.296623, 29.860584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444859, -0.127516, -0.886476,
		0.465958, -0.812345, 0.350684,
		-0.764842, -0.569066, -0.301962,
		39.201172, 36.125904, 29.769997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941856, 35.862736, 29.820520>,  <39.736565, 36.524250, 29.981369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941856, 35.862736, 29.820520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.623245, 35.901573, 29.581820>,  <39.432079, 35.924873, 29.438599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.623245, 35.901573, 29.581820>,  <39.941856, 35.862736, 29.820520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623245, 35.901573, 29.581820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540407, -0.328252, -0.774732,
		-0.271101, -0.939587, 0.208997,
		-0.796533, 0.097087, -0.596749,
		39.384285, 35.930698, 29.402794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026981, 35.361366, 29.368263>,  <39.941856, 35.862736, 29.820520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026981, 35.361366, 29.368263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741478, 35.556774, 29.167503>,  <39.570175, 35.674019, 29.047049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741478, 35.556774, 29.167503>,  <40.026981, 35.361366, 29.368263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741478, 35.556774, 29.167503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330275, -0.397160, -0.856261,
		-0.617631, -0.776927, 0.122131,
		-0.713758, 0.488516, -0.501898,
		39.527351, 35.703331, 29.016933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722118, 34.762573, 28.962421>,  <40.026981, 35.361366, 29.368263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722118, 34.762573, 28.962421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.664978, 35.124023, 28.800901>,  <39.630695, 35.340893, 28.703989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.664978, 35.124023, 28.800901>,  <39.722118, 34.762573, 28.962421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664978, 35.124023, 28.800901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249805, -0.361859, -0.898140,
		-0.957701, -0.229169, -0.174039,
		-0.142849, 0.903626, -0.403800,
		39.622124, 35.395111, 28.679762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347466, 34.642868, 28.295179>,  <39.722118, 34.762573, 28.962421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347466, 34.642868, 28.295179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.511917, 35.003727, 28.242863>,  <39.610588, 35.220242, 28.211473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.511917, 35.003727, 28.242863>,  <39.347466, 34.642868, 28.295179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511917, 35.003727, 28.242863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322629, -0.278193, -0.904720,
		-0.852576, 0.329756, -0.405431,
		0.411125, 0.902147, -0.130792,
		39.635254, 35.274372, 28.203625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233467, 34.845341, 27.514177>,  <39.347466, 34.642868, 28.295179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233467, 34.845341, 27.514177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.504253, 35.114086, 27.634382>,  <39.666725, 35.275333, 27.706505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.504253, 35.114086, 27.634382>,  <39.233467, 34.845341, 27.514177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504253, 35.114086, 27.634382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605273, -0.275895, -0.746677,
		-0.418757, 0.687371, -0.593434,
		0.676969, 0.671866, 0.300514,
		39.707344, 35.315647, 27.724537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511086, 35.072334, 26.879690>,  <39.233467, 34.845341, 27.514177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511086, 35.072334, 26.879690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.779488, 35.167984, 27.160425>,  <39.940529, 35.225372, 27.328865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.779488, 35.167984, 27.160425>,  <39.511086, 35.072334, 26.879690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779488, 35.167984, 27.160425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741125, -0.244485, -0.625269,
		0.022072, 0.939706, -0.341270,
		0.671004, 0.239123, 0.701836,
		39.980789, 35.239719, 27.370975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792171, 35.540062, 26.523525>,  <39.511086, 35.072334, 26.879690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792171, 35.540062, 26.523525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.002373, 35.352146, 26.807257>,  <40.128494, 35.239399, 26.977495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.002373, 35.352146, 26.807257>,  <39.792171, 35.540062, 26.523525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002373, 35.352146, 26.807257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598194, -0.388831, -0.700695,
		0.604986, 0.792534, 0.076691,
		0.525505, -0.469787, 0.709327,
		40.160023, 35.211208, 27.020054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446678, 35.521030, 26.243797>,  <39.792171, 35.540062, 26.523525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446678, 35.521030, 26.243797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.507870, 35.250668, 26.532169>,  <40.544586, 35.088448, 26.705193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.507870, 35.250668, 26.532169>,  <40.446678, 35.521030, 26.243797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507870, 35.250668, 26.532169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813906, -0.327585, -0.479839,
		0.560494, 0.660176, 0.500014,
		0.152981, -0.675911, 0.720930,
		40.553764, 35.047894, 26.748449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169254, 35.636166, 26.486368>,  <40.446678, 35.521030, 26.243797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169254, 35.636166, 26.486368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.043865, 35.264805, 26.566177>,  <40.968632, 35.041988, 26.614063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.043865, 35.264805, 26.566177>,  <41.169254, 35.636166, 26.486368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043865, 35.264805, 26.566177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886732, -0.361364, -0.288311,
		0.339767, 0.086544, 0.936519,
		-0.313472, -0.928400, 0.199521,
		40.949825, 34.986286, 26.626034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772110, 35.312691, 26.810286>,  <41.169254, 35.636166, 26.486368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772110, 35.312691, 26.810286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.545876, 35.006351, 26.687922>,  <41.410133, 34.822548, 26.614504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.545876, 35.006351, 26.687922>,  <41.772110, 35.312691, 26.810286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545876, 35.006351, 26.687922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815017, -0.462441, -0.349134,
		0.125921, -0.446787, 0.885734,
		-0.565589, -0.765852, -0.305908,
		41.376198, 34.776596, 26.596149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255787, 34.636223, 26.836040>,  <41.772110, 35.312691, 26.810286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255787, 34.636223, 26.836040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.942711, 34.555176, 26.600637>,  <41.754864, 34.506546, 26.459394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.942711, 34.555176, 26.600637>,  <42.255787, 34.636223, 26.836040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942711, 34.555176, 26.600637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589234, -0.545797, -0.595742,
		-0.200498, -0.813051, 0.546579,
		-0.782690, -0.202618, -0.588509,
		41.707905, 34.494389, 26.424086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371326, 33.932602, 26.642204>,  <42.255787, 34.636223, 26.836040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371326, 33.932602, 26.642204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.079037, 34.051540, 26.396400>,  <41.903664, 34.122906, 26.248919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.079037, 34.051540, 26.396400>,  <42.371326, 33.932602, 26.642204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079037, 34.051540, 26.396400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344215, -0.616869, -0.707806,
		-0.589535, -0.728737, 0.348412,
		-0.730729, 0.297347, -0.614508,
		41.859818, 34.140747, 26.212048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635365, 33.431679, 27.170855>,  <42.371326, 33.932602, 26.642204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635365, 33.431679, 27.170855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.032043, 33.411201, 27.218044>,  <43.270050, 33.398914, 27.246357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.032043, 33.411201, 27.218044>,  <42.635365, 33.431679, 27.170855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032043, 33.411201, 27.218044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076110, 0.505794, 0.859290,
		-0.103662, -0.861133, 0.497698,
		0.991696, -0.051196, 0.117972,
		43.329552, 33.395844, 27.253435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725113, 33.169125, 27.786795>,  <42.635365, 33.431679, 27.170855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725113, 33.169125, 27.786795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.059040, 33.377316, 27.715038>,  <43.259396, 33.502228, 27.671984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.059040, 33.377316, 27.715038>,  <42.725113, 33.169125, 27.786795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059040, 33.377316, 27.715038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125984, 0.497828, 0.858077,
		0.535915, -0.693738, 0.481168,
		0.834819, 0.520475, -0.179394,
		43.309486, 33.533459, 27.661221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223324, 33.046585, 28.336885>,  <42.725113, 33.169125, 27.786795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223324, 33.046585, 28.336885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.304165, 33.407249, 28.183956>,  <43.352669, 33.623646, 28.092199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.304165, 33.407249, 28.183956>,  <43.223324, 33.046585, 28.336885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304165, 33.407249, 28.183956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230619, 0.423215, 0.876187,
		0.951825, -0.088907, 0.293471,
		0.202101, 0.901656, -0.382323,
		43.364796, 33.677746, 28.069260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302177, 33.536747, 28.940859>,  <43.223324, 33.046585, 28.336885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.302177, 33.536747, 28.940859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.273037, 33.792709, 28.634863>,  <43.255554, 33.946285, 28.451265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.273037, 33.792709, 28.634863>,  <43.302177, 33.536747, 28.940859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273037, 33.792709, 28.634863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285498, 0.721552, 0.630757,
		0.955607, 0.264354, 0.130128,
		-0.072849, 0.639906, -0.764992,
		43.251183, 33.984680, 28.405365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688622, 34.087494, 29.223747>,  <43.302177, 33.536747, 28.940859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688622, 34.087494, 29.223747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.436920, 34.238308, 28.951899>,  <43.285900, 34.328796, 28.788790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.436920, 34.238308, 28.951899>,  <43.688622, 34.087494, 29.223747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436920, 34.238308, 28.951899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362830, 0.630805, 0.685887,
		0.687312, 0.678183, -0.260136,
		-0.629251, 0.377033, -0.679624,
		43.248146, 34.351418, 28.748011>
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
