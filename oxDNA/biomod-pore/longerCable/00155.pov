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
	<24.245626, 35.453651, 35.115574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178942, 35.061932, 35.161503>,  <24.138931, 34.826900, 35.189060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178942, 35.061932, 35.161503>,  <24.245626, 35.453651, 35.115574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178942, 35.061932, 35.161503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985743, -0.168220, -0.003512,
		0.022755, 0.112603, 0.993379,
		-0.166711, -0.979297, 0.114826,
		24.128929, 34.768143, 35.195950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.549416, 35.069859, 35.805317>,  <24.245626, 35.453651, 35.115574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.549416, 35.069859, 35.805317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.530432, 34.867615, 35.460735>,  <24.519041, 34.746269, 35.253986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.530432, 34.867615, 35.460735>,  <24.549416, 35.069859, 35.805317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.530432, 34.867615, 35.460735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973347, -0.217134, 0.073817,
		-0.224374, -0.834990, 0.502442,
		-0.047461, -0.505613, -0.861454,
		24.516193, 34.715931, 35.202301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.883722, 34.357891, 35.870934>,  <24.549416, 35.069859, 35.805317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.883722, 34.357891, 35.870934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920710, 34.489544, 35.495037>,  <24.942902, 34.568535, 35.269497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920710, 34.489544, 35.495037>,  <24.883722, 34.357891, 35.870934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920710, 34.489544, 35.495037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936436, -0.349530, -0.030274,
		-0.338433, -0.877211, -0.340534,
		0.092471, 0.329134, -0.939745,
		24.948450, 34.588284, 35.213112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.194994, 33.818604, 35.495541>,  <24.883722, 34.357891, 35.870934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.194994, 33.818604, 35.495541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267218, 34.168953, 35.316547>,  <25.310553, 34.379162, 35.209152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267218, 34.168953, 35.316547>,  <25.194994, 33.818604, 35.495541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267218, 34.168953, 35.316547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983275, -0.171771, 0.060541,
		-0.023838, -0.450932, -0.892240,
		0.180561, 0.875874, -0.447485,
		25.321386, 34.431717, 35.182301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650045, 33.744762, 34.902542>,  <25.194994, 33.818604, 35.495541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650045, 33.744762, 34.902542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667810, 34.109543, 35.065697>,  <25.678471, 34.328411, 35.163589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667810, 34.109543, 35.065697>,  <25.650045, 33.744762, 34.902542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667810, 34.109543, 35.065697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990090, -0.094628, 0.103761,
		0.133223, 0.399232, -0.907119,
		0.044414, 0.911953, 0.407883,
		25.681135, 34.383129, 35.188061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197594, 34.200237, 34.536636>,  <25.650045, 33.744762, 34.902542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197594, 34.200237, 34.536636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125650, 34.279984, 34.921947>,  <26.082485, 34.327831, 35.153133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125650, 34.279984, 34.921947>,  <26.197594, 34.200237, 34.536636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125650, 34.279984, 34.921947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983582, 0.051170, 0.173058,
		-0.014789, 0.978589, -0.205292,
		-0.179857, 0.199362, 0.963279,
		26.071693, 34.339790, 35.210930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509029, 34.778427, 34.842003>,  <26.197594, 34.200237, 34.536636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509029, 34.778427, 34.842003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469284, 34.480305, 35.105717>,  <26.445436, 34.301434, 35.263943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469284, 34.480305, 35.105717>,  <26.509029, 34.778427, 34.842003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469284, 34.480305, 35.105717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989415, -0.144422, -0.014146,
		0.105758, 0.650896, 0.751764,
		-0.099363, -0.745303, 0.659280,
		26.439474, 34.256714, 35.303501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025557, 34.947601, 35.187805>,  <26.509029, 34.778427, 34.842003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025557, 34.947601, 35.187805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920540, 34.567150, 35.252831>,  <26.857531, 34.338879, 35.291843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920540, 34.567150, 35.252831>,  <27.025557, 34.947601, 35.187805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920540, 34.567150, 35.252831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909009, -0.300308, -0.288994,
		0.323688, 0.071896, 0.943428,
		-0.262542, -0.951129, 0.162560,
		26.841778, 34.281811, 35.301598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567274, 34.651459, 35.455517>,  <27.025557, 34.947601, 35.187805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567274, 34.651459, 35.455517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350933, 34.323715, 35.379478>,  <27.221128, 34.127071, 35.333855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350933, 34.323715, 35.379478>,  <27.567274, 34.651459, 35.455517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350933, 34.323715, 35.379478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834057, -0.493208, -0.247174,
		0.108765, -0.292237, 0.950141,
		-0.540851, -0.819355, -0.190099,
		27.188679, 34.077908, 35.322449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829821, 34.028000, 35.857986>,  <27.567274, 34.651459, 35.455517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829821, 34.028000, 35.857986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638494, 33.931431, 35.520245>,  <27.523699, 33.873489, 35.317600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638494, 33.931431, 35.520245>,  <27.829821, 34.028000, 35.857986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638494, 33.931431, 35.520245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774488, -0.569211, -0.275984,
		-0.413986, -0.785947, 0.459241,
		-0.478314, -0.241423, -0.844352,
		27.495001, 33.859005, 35.266937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992233, 33.381790, 35.893143>,  <27.829821, 34.028000, 35.857986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992233, 33.381790, 35.893143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902126, 33.494461, 35.520065>,  <27.848063, 33.562061, 35.296219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902126, 33.494461, 35.520065>,  <27.992233, 33.381790, 35.893143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902126, 33.494461, 35.520065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807776, -0.481250, -0.340434,
		-0.544749, -0.830095, -0.119120,
		-0.225267, 0.281674, -0.932692,
		27.834547, 33.578964, 35.240257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976025, 32.855289, 35.422401>,  <27.992233, 33.381790, 35.893143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976025, 32.855289, 35.422401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039295, 33.172173, 35.186646>,  <28.077257, 33.362305, 35.045193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039295, 33.172173, 35.186646>,  <27.976025, 32.855289, 35.422401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039295, 33.172173, 35.186646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811746, -0.444177, -0.379177,
		-0.562182, -0.418459, -0.713332,
		0.158176, 0.792211, -0.589391,
		28.086748, 33.409836, 35.009827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759214, 32.729042, 35.396584>,  <27.976025, 32.855289, 35.422401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759214, 32.729042, 35.396584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841352, 32.684715, 35.007626>,  <28.890635, 32.658119, 34.774250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841352, 32.684715, 35.007626>,  <28.759214, 32.729042, 35.396584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841352, 32.684715, 35.007626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829657, 0.507319, -0.233018,
		0.519138, 0.854603, 0.012232,
		0.205343, -0.110820, -0.972396,
		28.902956, 32.651470, 34.715908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942770, 33.385036, 35.143845>,  <28.759214, 32.729042, 35.396584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942770, 33.385036, 35.143845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733370, 33.129360, 34.918495>,  <28.607731, 32.975956, 34.783287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733370, 33.129360, 34.918495>,  <28.942770, 33.385036, 35.143845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733370, 33.129360, 34.918495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767604, 0.640777, -0.013734,
		0.369773, 0.425256, -0.826090,
		-0.523499, -0.639189, -0.563370,
		28.576321, 32.937603, 34.749485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664387, 33.815548, 34.472008>,  <28.942770, 33.385036, 35.143845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664387, 33.815548, 34.472008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474876, 33.496952, 34.622284>,  <28.361170, 33.305794, 34.712448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474876, 33.496952, 34.622284>,  <28.664387, 33.815548, 34.472008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474876, 33.496952, 34.622284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848417, 0.527173, 0.047713,
		-0.236055, -0.296135, -0.925517,
		-0.473778, -0.796488, 0.375688,
		28.332743, 33.258007, 34.734989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211115, 33.845116, 33.970882>,  <28.664387, 33.815548, 34.472008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211115, 33.845116, 33.970882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123026, 33.627880, 34.294994>,  <28.070173, 33.497540, 34.489460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123026, 33.627880, 34.294994>,  <28.211115, 33.845116, 33.970882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123026, 33.627880, 34.294994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891290, 0.449568, 0.059083,
		-0.396364, -0.709184, -0.583055,
		-0.220223, -0.543090, 0.810281,
		28.056959, 33.464954, 34.538078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526402, 33.714920, 33.961685>,  <28.211115, 33.845116, 33.970882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526402, 33.714920, 33.961685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610600, 33.676643, 34.350845>,  <27.661118, 33.653679, 34.584343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610600, 33.676643, 34.350845>,  <27.526402, 33.714920, 33.961685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610600, 33.676643, 34.350845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924227, 0.304842, 0.229946,
		-0.318586, -0.947583, -0.024276,
		0.210493, -0.095694, 0.972901,
		27.673748, 33.647938, 34.642715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880510, 33.502594, 34.254063>,  <27.526402, 33.714920, 33.961685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880510, 33.502594, 34.254063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092117, 33.603203, 34.578255>,  <27.219082, 33.663570, 34.772770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092117, 33.603203, 34.578255>,  <26.880510, 33.502594, 34.254063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092117, 33.603203, 34.578255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841081, 0.282353, 0.461367,
		-0.112795, -0.925749, 0.360923,
		0.529018, 0.251526, 0.810478,
		27.250822, 33.678661, 34.821400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579147, 33.164978, 34.675476>,  <26.880510, 33.502594, 34.254063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579147, 33.164978, 34.675476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754780, 33.454819, 34.887951>,  <26.860159, 33.628723, 35.015434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754780, 33.454819, 34.887951>,  <26.579147, 33.164978, 34.675476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754780, 33.454819, 34.887951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896247, 0.311907, 0.315365,
		0.062834, -0.614544, 0.786376,
		0.439082, 0.724603, 0.531186,
		26.886505, 33.672199, 35.047306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416420, 33.104038, 35.503517>,  <26.579147, 33.164978, 34.675476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416420, 33.104038, 35.503517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465984, 33.486492, 35.397346>,  <26.495724, 33.715965, 35.333645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465984, 33.486492, 35.397346>,  <26.416420, 33.104038, 35.503517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465984, 33.486492, 35.397346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959887, 0.183298, 0.212175,
		0.251521, 0.228493, 0.940494,
		0.123910, 0.956134, -0.265431,
		26.503157, 33.773331, 35.317719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907736, 32.762344, 35.950645>,  <26.416420, 33.104038, 35.503517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907736, 32.762344, 35.950645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631617, 32.674171, 36.226295>,  <26.465944, 32.621269, 36.391685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631617, 32.674171, 36.226295>,  <26.907736, 32.762344, 35.950645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631617, 32.674171, 36.226295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247307, -0.966978, -0.061583,
		0.679947, 0.127915, 0.722018,
		-0.690299, -0.220434, 0.689128,
		26.424526, 32.608040, 36.433033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249052, 32.339050, 36.334461>,  <26.907736, 32.762344, 35.950645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249052, 32.339050, 36.334461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862732, 32.262508, 36.404446>,  <26.630939, 32.216583, 36.446438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862732, 32.262508, 36.404446>,  <27.249052, 32.339050, 36.334461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862732, 32.262508, 36.404446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159225, -0.970278, -0.182231,
		0.204631, -0.148141, 0.967564,
		-0.965802, -0.191351, 0.174961,
		26.572990, 32.205105, 36.456936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270189, 31.810524, 36.854229>,  <27.249052, 32.339050, 36.334461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270189, 31.810524, 36.854229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972343, 31.836531, 36.588501>,  <26.793636, 31.852135, 36.429066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972343, 31.836531, 36.588501>,  <27.270189, 31.810524, 36.854229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972343, 31.836531, 36.588501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158676, -0.949474, -0.270780,
		-0.648358, -0.307038, 0.696677,
		-0.744617, 0.065017, -0.664318,
		26.748959, 31.856035, 36.389206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713961, 31.424810, 37.087337>,  <27.270189, 31.810524, 36.854229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713961, 31.424810, 37.087337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728760, 31.428661, 36.687630>,  <26.737638, 31.430973, 36.447803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728760, 31.428661, 36.687630>,  <26.713961, 31.424810, 37.087337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728760, 31.428661, 36.687630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026717, -0.999606, -0.008643,
		-0.998958, -0.026378, -0.037241,
		0.036998, 0.009629, -0.999269,
		26.739859, 31.431551, 36.387848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087837, 31.049936, 37.094650>,  <26.713961, 31.424810, 37.087337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087837, 31.049936, 37.094650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756596, 31.259956, 37.016094>,  <25.557850, 31.385967, 36.968960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756596, 31.259956, 37.016094>,  <26.087837, 31.049936, 37.094650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.756596, 31.259956, 37.016094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060408, -0.431875, -0.899908,
		-0.557311, -0.733354, 0.389355,
		-0.828104, 0.525048, -0.196388,
		25.508163, 31.417471, 36.957176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515036, 30.598166, 36.899872>,  <26.087837, 31.049936, 37.094650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515036, 30.598166, 36.899872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.498926, 30.963551, 36.737904>,  <25.489260, 31.182781, 36.640724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.498926, 30.963551, 36.737904>,  <25.515036, 30.598166, 36.899872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.498926, 30.963551, 36.737904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130253, -0.396993, -0.908532,
		-0.990663, -0.089334, -0.102992,
		-0.040276, 0.913464, -0.404922,
		25.486843, 31.237589, 36.616428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.922503, 30.748930, 36.377106>,  <25.515036, 30.598166, 36.899872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.922503, 30.748930, 36.377106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264799, 30.939428, 36.296215>,  <25.470177, 31.053728, 36.247681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264799, 30.939428, 36.296215>,  <24.922503, 30.748930, 36.377106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264799, 30.939428, 36.296215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049153, -0.463916, -0.884515,
		-0.515066, 0.746974, -0.420401,
		0.855740, 0.476248, -0.202231,
		25.521521, 31.082302, 36.235546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854458, 31.202991, 35.911472>,  <24.922503, 30.748930, 36.377106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.854458, 31.202991, 35.911472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196829, 30.996786, 35.927643>,  <25.402250, 30.873062, 35.937347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196829, 30.996786, 35.927643>,  <24.854458, 31.202991, 35.911472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.196829, 30.996786, 35.927643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139485, -0.305466, -0.941931,
		0.497930, 0.800584, -0.333363,
		0.855926, -0.515515, 0.040431,
		25.453608, 30.842131, 35.939774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.141285, 31.342751, 35.307148>,  <24.854458, 31.202991, 35.911472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.141285, 31.342751, 35.307148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330965, 31.006918, 35.413158>,  <25.444775, 30.805418, 35.476765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330965, 31.006918, 35.413158>,  <25.141285, 31.342751, 35.307148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330965, 31.006918, 35.413158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136727, -0.367597, -0.919879,
		0.869734, 0.399973, -0.289109,
		0.474203, -0.839580, 0.265024,
		25.473227, 30.755045, 35.492664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.642990, 31.250002, 34.817471>,  <25.141285, 31.342751, 35.307148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.642990, 31.250002, 34.817471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559486, 30.893372, 34.978226>,  <25.509384, 30.679394, 35.074680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559486, 30.893372, 34.978226>,  <25.642990, 31.250002, 34.817471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559486, 30.893372, 34.978226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050143, -0.420162, -0.906063,
		0.976681, -0.168996, 0.132418,
		-0.208758, -0.891574, 0.401890,
		25.496859, 30.625898, 35.098793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648788, 31.181190, 33.988003>,  <25.642990, 31.250002, 34.817471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648788, 31.181190, 33.988003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988285, 31.065338, 33.811028>,  <26.191982, 30.995827, 33.704842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988285, 31.065338, 33.811028>,  <25.648788, 31.181190, 33.988003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988285, 31.065338, 33.811028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528416, -0.432182, -0.730750,
		0.020433, 0.854010, -0.519856,
		0.848740, -0.289631, -0.442442,
		26.242907, 30.978449, 33.678295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.541548, 30.500826, 33.605629>,  <25.648788, 31.181190, 33.988003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.541548, 30.500826, 33.605629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460049, 30.691099, 33.263351>,  <25.411148, 30.805264, 33.057983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460049, 30.691099, 33.263351>,  <25.541548, 30.500826, 33.605629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460049, 30.691099, 33.263351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978478, 0.128087, -0.161783,
		0.032645, -0.870240, -0.491545,
		-0.203750, 0.475685, -0.855693,
		25.398924, 30.833805, 33.006645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887842, 30.114100, 33.033878>,  <25.541548, 30.500826, 33.605629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887842, 30.114100, 33.033878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821800, 30.491381, 32.918564>,  <25.782175, 30.717749, 32.849377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821800, 30.491381, 32.918564>,  <25.887842, 30.114100, 33.033878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.821800, 30.491381, 32.918564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970552, 0.103392, -0.217575,
		-0.175411, -0.315717, -0.932499,
		-0.165105, 0.943204, -0.288284,
		25.772268, 30.774342, 32.832077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970215, 30.221905, 32.320724>,  <25.887842, 30.114100, 33.033878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970215, 30.221905, 32.320724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061644, 30.530107, 32.558739>,  <26.116501, 30.715031, 32.701550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061644, 30.530107, 32.558739>,  <25.970215, 30.221905, 32.320724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061644, 30.530107, 32.558739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968586, -0.118488, -0.218636,
		-0.097956, 0.626320, -0.773388,
		0.228573, 0.770509, 0.595038,
		26.130215, 30.761261, 32.737251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309553, 30.837946, 32.010101>,  <25.970215, 30.221905, 32.320724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309553, 30.837946, 32.010101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428181, 30.749006, 32.381607>,  <26.499357, 30.695642, 32.604511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428181, 30.749006, 32.381607>,  <26.309553, 30.837946, 32.010101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428181, 30.749006, 32.381607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947485, -0.053356, -0.315318,
		0.119667, 0.973506, 0.194850,
		0.296567, -0.222351, 0.928767,
		26.517151, 30.682301, 32.660236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000954, 30.985962, 32.007702>,  <26.309553, 30.837946, 32.010101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000954, 30.985962, 32.007702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967146, 30.789106, 32.354263>,  <26.946861, 30.670994, 32.562199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967146, 30.789106, 32.354263>,  <27.000954, 30.985962, 32.007702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967146, 30.789106, 32.354263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938125, -0.332354, -0.097271,
		0.335824, 0.804574, 0.489778,
		-0.084518, -0.492139, 0.866404,
		26.941790, 30.641464, 32.614185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.346117, 31.366133, 32.551258>,  <27.000954, 30.985962, 32.007702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.346117, 31.366133, 32.551258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327127, 30.968107, 32.586121>,  <27.315735, 30.729292, 32.607040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327127, 30.968107, 32.586121>,  <27.346117, 31.366133, 32.551258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327127, 30.968107, 32.586121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989498, -0.034921, 0.140265,
		-0.136529, 0.092904, 0.986270,
		-0.047473, -0.995062, 0.087161,
		27.312885, 30.669588, 32.612270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583542, 31.101295, 33.192261>,  <27.346117, 31.366133, 32.551258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583542, 31.101295, 33.192261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646994, 30.792658, 32.945854>,  <27.685064, 30.607475, 32.798012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646994, 30.792658, 32.945854>,  <27.583542, 31.101295, 33.192261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646994, 30.792658, 32.945854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969142, 0.002450, 0.246491,
		-0.188682, -0.636108, 0.748175,
		0.158628, -0.771596, -0.616016,
		27.694582, 30.561178, 32.761047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965002, 30.433805, 33.547512>,  <27.583542, 31.101295, 33.192261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965002, 30.433805, 33.547512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037230, 30.467569, 33.155540>,  <28.080566, 30.487827, 32.920357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037230, 30.467569, 33.155540>,  <27.965002, 30.433805, 33.547512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037230, 30.467569, 33.155540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982331, 0.034355, 0.183971,
		0.049195, -0.995838, -0.076716,
		0.180570, 0.084411, -0.979933,
		28.091400, 30.492893, 32.861561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391912, 29.868586, 33.222759>,  <27.965002, 30.433805, 33.547512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391912, 29.868586, 33.222759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454756, 30.225748, 33.053982>,  <28.492462, 30.440044, 32.952713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454756, 30.225748, 33.053982>,  <28.391912, 29.868586, 33.222759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454756, 30.225748, 33.053982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953938, -0.026637, 0.298819,
		0.255578, -0.449458, -0.855960,
		0.157107, 0.892904, -0.421947,
		28.501888, 30.493620, 32.927399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808443, 29.983496, 32.565575>,  <28.391912, 29.868586, 33.222759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808443, 29.983496, 32.565575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837267, 30.299025, 32.809727>,  <28.854561, 30.488342, 32.956219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837267, 30.299025, 32.809727>,  <28.808443, 29.983496, 32.565575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837267, 30.299025, 32.809727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959417, -0.222098, 0.173759,
		0.272629, 0.573088, -0.772816,
		0.072062, 0.788824, 0.610380,
		28.858885, 30.535671, 32.992840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364506, 30.547663, 32.384293>,  <28.808443, 29.983496, 32.565575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364506, 30.547663, 32.384293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286348, 30.558172, 32.776443>,  <29.239454, 30.564478, 33.011734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286348, 30.558172, 32.776443>,  <29.364506, 30.547663, 32.384293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286348, 30.558172, 32.776443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976513, -0.087343, 0.196963,
		0.090803, 0.995832, -0.008590,
		-0.195391, 0.026273, 0.980373,
		29.227732, 30.566053, 33.070557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734234, 31.147030, 32.786705>,  <29.364506, 30.547663, 32.384293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734234, 31.147030, 32.786705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642887, 30.850615, 33.039280>,  <29.588079, 30.672766, 33.190823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642887, 30.850615, 33.039280>,  <29.734234, 31.147030, 32.786705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642887, 30.850615, 33.039280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968033, -0.103730, 0.228366,
		-0.103730, 0.663400, 0.741040,
		-0.228366, -0.741040, 0.631433,
		29.574377, 30.628302, 33.228710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988554, 31.418751, 33.368797>,  <29.734234, 31.147030, 32.786705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988554, 31.418751, 33.368797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982908, 31.019238, 33.349895>,  <29.979521, 30.779530, 33.338554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982908, 31.019238, 33.349895>,  <29.988554, 31.418751, 33.368797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982908, 31.019238, 33.349895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917927, -0.031683, 0.395483,
		-0.396499, -0.037790, 0.917257,
		-0.014116, -0.998783, -0.047251,
		29.978674, 30.719603, 33.335720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077042, 31.145367, 34.013390>,  <29.988554, 31.418751, 33.368797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077042, 31.145367, 34.013390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230940, 30.903006, 33.734863>,  <30.323278, 30.757589, 33.567749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230940, 30.903006, 33.734863>,  <30.077042, 31.145367, 34.013390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230940, 30.903006, 33.734863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867670, -0.019900, 0.496742,
		-0.314834, -0.795289, 0.518068,
		0.384743, -0.605904, -0.696314,
		30.346363, 30.721235, 33.525970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315731, 30.594173, 34.370918>,  <30.077042, 31.145367, 34.013390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315731, 30.594173, 34.370918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520409, 30.633472, 34.029507>,  <30.643215, 30.657053, 33.824657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520409, 30.633472, 34.029507>,  <30.315731, 30.594173, 34.370918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520409, 30.633472, 34.029507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830223, 0.199154, 0.520642,
		0.221139, -0.975030, 0.020334,
		0.511691, 0.098252, -0.853533,
		30.673916, 30.662947, 33.773445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882105, 30.093805, 34.104923>,  <30.315731, 30.594173, 34.370918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882105, 30.093805, 34.104923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914944, 30.485731, 34.032013>,  <30.934647, 30.720886, 33.988266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914944, 30.485731, 34.032013>,  <30.882105, 30.093805, 34.104923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914944, 30.485731, 34.032013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828912, 0.034411, 0.558320,
		0.553322, -0.196927, -0.809355,
		0.082098, 0.979814, -0.182275,
		30.939573, 30.779675, 33.977329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484289, 30.305504, 33.927170>,  <30.882105, 30.093805, 34.104923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484289, 30.305504, 33.927170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340744, 30.630594, 34.110775>,  <31.254618, 30.825647, 34.220940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340744, 30.630594, 34.110775>,  <31.484289, 30.305504, 33.927170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340744, 30.630594, 34.110775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875849, 0.123212, 0.466592,
		0.322654, 0.569471, -0.756041,
		-0.358864, 0.812725, 0.459015,
		31.233086, 30.874413, 34.248478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788130, 30.999781, 33.788181>,  <31.484289, 30.305504, 33.927170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788130, 30.999781, 33.788181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663755, 30.982798, 34.167973>,  <31.589130, 30.972609, 34.395847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663755, 30.982798, 34.167973>,  <31.788130, 30.999781, 33.788181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663755, 30.982798, 34.167973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950319, -0.029222, 0.309904,
		0.014588, 0.998671, 0.049434,
		-0.310937, -0.042457, 0.949482,
		31.570475, 30.970060, 34.452816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278572, 31.305134, 34.134323>,  <31.788130, 30.999781, 33.788181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278572, 31.305134, 34.134323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101391, 31.096949, 34.426323>,  <31.995081, 30.972036, 34.601524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101391, 31.096949, 34.426323>,  <32.278572, 31.305134, 34.134323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101391, 31.096949, 34.426323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893407, -0.188200, 0.407928,
		-0.074926, 0.832884, 0.548352,
		-0.442957, -0.520465, 0.730004,
		31.968504, 30.940809, 34.645325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448704, 31.465385, 34.801170>,  <32.278572, 31.305134, 34.134323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448704, 31.465385, 34.801170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773273, 31.524952, 35.027237>,  <32.968014, 31.560692, 35.162876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773273, 31.524952, 35.027237>,  <32.448704, 31.465385, 34.801170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773273, 31.524952, 35.027237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481903, -0.717611, -0.502796,
		0.330696, 0.680337, -0.654050,
		0.811424, 0.148916, 0.565167,
		33.016701, 31.569628, 35.196789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958019, 31.493740, 34.274105>,  <32.448704, 31.465385, 34.801170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958019, 31.493740, 34.274105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017265, 31.382273, 34.653664>,  <33.052814, 31.315392, 34.881397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017265, 31.382273, 34.653664>,  <32.958019, 31.493740, 34.274105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017265, 31.382273, 34.653664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395668, -0.862647, -0.315099,
		0.906371, 0.422119, -0.017512,
		0.148116, -0.278668, 0.948897,
		33.061699, 31.298672, 34.938332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075062, 32.171993, 34.081177>,  <32.958019, 31.493740, 34.274105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075062, 32.171993, 34.081177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796146, 32.440186, 33.979797>,  <32.628796, 32.601101, 33.918968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796146, 32.440186, 33.979797>,  <33.075062, 32.171993, 34.081177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796146, 32.440186, 33.979797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550568, -0.274582, 0.788340,
		0.458978, 0.689243, 0.560611,
		-0.697291, 0.670485, -0.253448,
		32.586960, 32.641331, 33.903763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951153, 32.740154, 34.518551>,  <33.075062, 32.171993, 34.081177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951153, 32.740154, 34.518551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611813, 32.665157, 34.320503>,  <32.408207, 32.620159, 34.201675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611813, 32.665157, 34.320503>,  <32.951153, 32.740154, 34.518551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611813, 32.665157, 34.320503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453109, -0.226589, 0.862177,
		-0.273838, 0.955774, 0.107275,
		-0.848354, -0.187490, -0.495119,
		32.357307, 32.608910, 34.171967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328232, 33.090122, 34.795753>,  <32.951153, 32.740154, 34.518551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328232, 33.090122, 34.795753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193626, 32.766972, 34.602219>,  <32.112862, 32.573082, 34.486099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193626, 32.766972, 34.602219>,  <32.328232, 33.090122, 34.795753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193626, 32.766972, 34.602219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441212, -0.318649, 0.838924,
		-0.831920, 0.495783, -0.249215,
		-0.336513, -0.807875, -0.483836,
		32.092674, 32.524609, 34.457069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538433, 32.935467, 34.767288>,  <32.328232, 33.090122, 34.795753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538433, 32.935467, 34.767288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767742, 32.607796, 34.760227>,  <31.905327, 32.411194, 34.755989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767742, 32.607796, 34.760227>,  <31.538433, 32.935467, 34.767288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767742, 32.607796, 34.760227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400116, -0.298682, 0.866428,
		-0.715029, -0.489635, -0.498991,
		0.573273, -0.819175, -0.017655,
		31.939724, 32.362041, 34.754932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202389, 32.843552, 35.419048>,  <31.538433, 32.935467, 34.767288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202389, 32.843552, 35.419048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999557, 32.505489, 35.486675>,  <30.877859, 32.302650, 35.527252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999557, 32.505489, 35.486675>,  <31.202389, 32.843552, 35.419048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999557, 32.505489, 35.486675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451389, -0.427507, -0.783253,
		0.734250, -0.320854, 0.598273,
		-0.507076, -0.845157, 0.169067,
		30.847435, 32.251942, 35.537395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721209, 32.433182, 35.449577>,  <31.202389, 32.843552, 35.419048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721209, 32.433182, 35.449577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384909, 32.279415, 35.297073>,  <31.183128, 32.187153, 35.205570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384909, 32.279415, 35.297073>,  <31.721209, 32.433182, 35.449577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384909, 32.279415, 35.297073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397514, 0.039817, -0.916732,
		0.367591, -0.922299, 0.119336,
		-0.840749, -0.384420, -0.381263,
		31.132685, 32.164089, 35.182693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708828, 31.751518, 35.095844>,  <31.721209, 32.433182, 35.449577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708828, 31.751518, 35.095844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461494, 32.016819, 34.927197>,  <31.313095, 32.175999, 34.826008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461494, 32.016819, 34.927197>,  <31.708828, 31.751518, 35.095844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461494, 32.016819, 34.927197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572918, 0.013175, -0.819506,
		-0.537985, -0.748280, -0.388135,
		-0.618334, 0.663252, -0.421616,
		31.275993, 32.215794, 34.800713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491966, 31.624264, 34.359417>,  <31.708828, 31.751518, 35.095844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491966, 31.624264, 34.359417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450647, 32.018219, 34.415028>,  <31.425856, 32.254593, 34.448395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450647, 32.018219, 34.415028>,  <31.491966, 31.624264, 34.359417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450647, 32.018219, 34.415028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576556, 0.173185, -0.798492,
		-0.810502, -0.002325, -0.585732,
		-0.103297, 0.984886, 0.139027,
		31.419659, 32.313686, 34.456738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344435, 31.939709, 33.713943>,  <31.491966, 31.624264, 34.359417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344435, 31.939709, 33.713943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516254, 32.193531, 33.970951>,  <31.619347, 32.345825, 34.125156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516254, 32.193531, 33.970951>,  <31.344435, 31.939709, 33.713943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516254, 32.193531, 33.970951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539479, 0.390266, -0.746093,
		-0.724190, 0.667107, -0.174691,
		0.429548, 0.634555, 0.642517,
		31.645119, 32.383896, 34.163708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200720, 32.713364, 33.568558>,  <31.344435, 31.939709, 33.713943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200720, 32.713364, 33.568558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553558, 32.651711, 33.746613>,  <31.765261, 32.614719, 33.853447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553558, 32.651711, 33.746613>,  <31.200720, 32.713364, 33.568558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553558, 32.651711, 33.746613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470752, 0.323027, -0.821003,
		-0.017248, 0.933754, 0.357500,
		0.882097, -0.154133, 0.445138,
		31.818188, 32.605469, 33.880154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708654, 33.295578, 33.561905>,  <31.200720, 32.713364, 33.568558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708654, 33.295578, 33.561905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898016, 32.943443, 33.573914>,  <32.011631, 32.732162, 33.581120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898016, 32.943443, 33.573914>,  <31.708654, 33.295578, 33.561905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898016, 32.943443, 33.573914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510951, 0.246684, -0.823454,
		0.717509, 0.405165, 0.566588,
		0.473403, -0.880334, 0.030021,
		32.040035, 32.679344, 33.582920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364277, 33.428513, 33.621109>,  <31.708654, 33.295578, 33.561905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364277, 33.428513, 33.621109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306328, 33.074524, 33.444092>,  <32.271561, 32.862129, 33.337883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306328, 33.074524, 33.444092>,  <32.364277, 33.428513, 33.621109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306328, 33.074524, 33.444092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582897, 0.285075, -0.760896,
		0.799527, -0.368185, 0.474548,
		-0.144869, -0.884970, -0.442539,
		32.262867, 32.809032, 33.311329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077076, 33.217430, 33.387199>,  <32.364277, 33.428513, 33.621109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077076, 33.217430, 33.387199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774841, 33.033760, 33.200329>,  <32.593502, 32.923557, 33.088207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774841, 33.033760, 33.200329>,  <33.077076, 33.217430, 33.387199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774841, 33.033760, 33.200329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499461, 0.057602, -0.864419,
		0.423831, -0.886476, 0.185818,
		-0.755583, -0.459176, -0.467174,
		32.548168, 32.896008, 33.060177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346619, 32.631050, 32.905277>,  <33.077076, 33.217430, 33.387199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346619, 32.631050, 32.905277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028008, 32.849998, 32.802574>,  <32.836842, 32.981369, 32.740952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028008, 32.849998, 32.802574>,  <33.346619, 32.631050, 32.905277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028008, 32.849998, 32.802574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284723, -0.035032, -0.957969,
		-0.533364, -0.836153, -0.127947,
		-0.796527, 0.547376, -0.256757,
		32.789051, 33.014210, 32.725548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956905, 32.356377, 32.305496>,  <33.346619, 32.631050, 32.905277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956905, 32.356377, 32.305496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845539, 32.740536, 32.301109>,  <32.778721, 32.971031, 32.298477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845539, 32.740536, 32.301109>,  <32.956905, 32.356377, 32.305496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845539, 32.740536, 32.301109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311897, 0.079603, -0.946776,
		-0.908407, -0.267020, -0.321708,
		-0.278417, 0.960398, -0.010971,
		32.762012, 33.028656, 32.297817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034256, 32.437229, 31.686338>,  <32.956905, 32.356377, 32.305496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034256, 32.437229, 31.686338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914577, 32.802830, 31.795942>,  <32.842770, 33.022190, 31.861704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914577, 32.802830, 31.795942>,  <33.034256, 32.437229, 31.686338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914577, 32.802830, 31.795942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171712, 0.334049, -0.926782,
		-0.938615, -0.230238, -0.256891,
		-0.299194, 0.914003, 0.274009,
		32.824818, 33.077030, 31.878145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612846, 32.737251, 31.206575>,  <33.034256, 32.437229, 31.686338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612846, 32.737251, 31.206575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743652, 33.067547, 31.390406>,  <32.822136, 33.265724, 31.500704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743652, 33.067547, 31.390406>,  <32.612846, 32.737251, 31.206575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743652, 33.067547, 31.390406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170198, 0.426901, -0.888137,
		-0.929566, 0.368654, -0.000936,
		0.327016, 0.825742, 0.459577,
		32.841759, 33.315269, 31.528278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258556, 33.308361, 30.848150>,  <32.612846, 32.737251, 31.206575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258556, 33.308361, 30.848150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578156, 33.464970, 31.030716>,  <32.769917, 33.558933, 31.140255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578156, 33.464970, 31.030716>,  <32.258556, 33.308361, 30.848150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578156, 33.464970, 31.030716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277699, 0.432982, -0.857561,
		-0.533371, 0.811935, 0.237227,
		0.798999, 0.391520, 0.456413,
		32.817856, 33.582424, 31.167641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235397, 34.066601, 30.853226>,  <32.258556, 33.308361, 30.848150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235397, 34.066601, 30.853226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627071, 33.996082, 30.893438>,  <32.862076, 33.953770, 30.917566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627071, 33.996082, 30.893438>,  <32.235397, 34.066601, 30.853226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627071, 33.996082, 30.893438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179979, 0.525424, -0.831587,
		0.093787, 0.832375, 0.546220,
		0.979189, -0.176300, 0.100532,
		32.920830, 33.943192, 30.923597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537403, 34.706966, 30.621906>,  <32.235397, 34.066601, 30.853226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537403, 34.706966, 30.621906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873989, 34.492680, 30.650042>,  <33.075939, 34.364109, 30.666922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873989, 34.492680, 30.650042>,  <32.537403, 34.706966, 30.621906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873989, 34.492680, 30.650042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299927, 0.354844, -0.885511,
		0.449423, 0.766222, 0.459264,
		0.841464, -0.535715, 0.070336,
		33.126427, 34.331966, 30.671143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118484, 35.157253, 30.648190>,  <32.537403, 34.706966, 30.621906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118484, 35.157253, 30.648190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221924, 34.803661, 30.492390>,  <33.283989, 34.591507, 30.398909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221924, 34.803661, 30.492390>,  <33.118484, 35.157253, 30.648190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221924, 34.803661, 30.492390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167092, 0.438073, -0.883274,
		0.951424, 0.163331, 0.260991,
		0.258599, -0.883977, -0.389502,
		33.299503, 34.538467, 30.375540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710648, 35.235554, 30.356619>,  <33.118484, 35.157253, 30.648190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710648, 35.235554, 30.356619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569733, 34.910427, 30.171049>,  <33.485184, 34.715351, 30.059708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569733, 34.910427, 30.171049>,  <33.710648, 35.235554, 30.356619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569733, 34.910427, 30.171049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246445, 0.397640, -0.883825,
		0.902862, -0.425690, 0.060232,
		-0.352284, -0.812816, -0.463924,
		33.464046, 34.666584, 30.031872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182053, 35.144806, 29.904087>,  <33.710648, 35.235554, 30.356619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182053, 35.144806, 29.904087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886497, 34.922459, 29.751738>,  <33.709164, 34.789051, 29.660328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886497, 34.922459, 29.751738>,  <34.182053, 35.144806, 29.904087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886497, 34.922459, 29.751738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217336, 0.338430, -0.915549,
		0.637821, -0.759262, -0.129251,
		-0.738884, -0.555865, -0.380873,
		33.664833, 34.755699, 29.637476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415501, 34.840881, 29.301729>,  <34.182053, 35.144806, 29.904087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415501, 34.840881, 29.301729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018887, 34.850643, 29.250721>,  <33.780918, 34.856499, 29.220116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018887, 34.850643, 29.250721>,  <34.415501, 34.840881, 29.301729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018887, 34.850643, 29.250721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121992, 0.511300, -0.850700,
		0.044440, -0.859056, -0.509949,
		-0.991536, 0.024405, -0.127520,
		33.721424, 34.857964, 29.212465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345528, 34.762840, 28.559242>,  <34.415501, 34.840881, 29.301729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345528, 34.762840, 28.559242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006264, 34.918140, 28.703402>,  <33.802704, 35.011318, 28.789898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006264, 34.918140, 28.703402>,  <34.345528, 34.762840, 28.559242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006264, 34.918140, 28.703402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033187, 0.640053, -0.767614,
		-0.528699, -0.663020, -0.529983,
		-0.848160, 0.388248, 0.360399,
		33.751816, 35.034615, 28.811522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829601, 34.731884, 27.970015>,  <34.345528, 34.762840, 28.559242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829601, 34.731884, 27.970015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747898, 35.022812, 28.232096>,  <33.698875, 35.197369, 28.389343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747898, 35.022812, 28.232096>,  <33.829601, 34.731884, 27.970015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747898, 35.022812, 28.232096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111390, 0.682235, -0.722598,
		-0.972558, -0.074616, -0.220370,
		-0.204262, 0.727316, 0.655202,
		33.686619, 35.241005, 28.428656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432346, 35.189846, 27.525249>,  <33.829601, 34.731884, 27.970015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432346, 35.189846, 27.525249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546333, 35.385162, 27.855185>,  <33.614727, 35.502354, 28.053146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546333, 35.385162, 27.855185>,  <33.432346, 35.189846, 27.525249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546333, 35.385162, 27.855185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027351, 0.856027, -0.516206,
		-0.958146, 0.169664, 0.230587,
		0.284971, 0.488294, 0.824840,
		33.631824, 35.531651, 28.102636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906689, 35.597969, 27.548088>,  <33.432346, 35.189846, 27.525249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906689, 35.597969, 27.548088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205620, 35.758457, 27.759949>,  <33.384979, 35.854748, 27.887066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205620, 35.758457, 27.759949>,  <32.906689, 35.597969, 27.548088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205620, 35.758457, 27.759949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016896, 0.808336, -0.588480,
		-0.664245, 0.430836, 0.610867,
		0.747324, 0.401216, 0.529653,
		33.429817, 35.878822, 27.918844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694405, 36.312973, 27.659681>,  <32.906689, 35.597969, 27.548088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694405, 36.312973, 27.659681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091709, 36.319908, 27.705534>,  <33.330090, 36.324070, 27.733046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091709, 36.319908, 27.705534>,  <32.694405, 36.312973, 27.659681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091709, 36.319908, 27.705534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035501, 0.895773, -0.443092,
		-0.110368, 0.444174, 0.889117,
		0.993257, 0.017339, 0.114633,
		33.389687, 36.325111, 27.739923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886700, 36.885742, 28.034849>,  <32.694405, 36.312973, 27.659681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886700, 36.885742, 28.034849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233704, 36.781109, 27.865612>,  <33.441906, 36.718330, 27.764071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233704, 36.781109, 27.865612>,  <32.886700, 36.885742, 28.034849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233704, 36.781109, 27.865612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022248, 0.870119, -0.492340,
		0.496927, 0.417695, 0.760654,
		0.867507, -0.261580, -0.423092,
		33.493958, 36.702633, 27.738684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172352, 37.517086, 28.052414>,  <32.886700, 36.885742, 28.034849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172352, 37.517086, 28.052414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365719, 37.307247, 27.772099>,  <33.481739, 37.181343, 27.603909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365719, 37.307247, 27.772099>,  <33.172352, 37.517086, 28.052414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365719, 37.307247, 27.772099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048959, 0.815493, -0.576692,
		0.874020, 0.244473, 0.419908,
		0.483418, -0.524599, -0.700788,
		33.510746, 37.149868, 27.561863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828331, 37.919430, 27.972157>,  <33.172352, 37.517086, 28.052414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828331, 37.919430, 27.972157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751011, 37.683861, 27.658264>,  <33.704617, 37.542519, 27.469929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751011, 37.683861, 27.658264>,  <33.828331, 37.919430, 27.972157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751011, 37.683861, 27.658264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015475, 0.797889, -0.602607,
		0.981017, -0.128628, -0.145119,
		-0.193301, -0.588922, -0.784733,
		33.693020, 37.507183, 27.422844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341492, 38.049557, 27.500019>,  <33.828331, 37.919430, 27.972157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341492, 38.049557, 27.500019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025932, 37.891178, 27.312033>,  <33.836597, 37.796150, 27.199242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025932, 37.891178, 27.312033>,  <34.341492, 38.049557, 27.500019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025932, 37.891178, 27.312033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071666, 0.700264, -0.710278,
		0.610330, -0.594018, -0.524062,
		-0.788899, -0.395946, -0.469962,
		33.789265, 37.772392, 27.171043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547131, 38.098370, 26.768124>,  <34.341492, 38.049557, 27.500019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547131, 38.098370, 26.768124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150604, 38.046940, 26.757074>,  <33.912689, 38.016083, 26.750444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150604, 38.046940, 26.757074>,  <34.547131, 38.098370, 26.768124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150604, 38.046940, 26.757074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066042, 0.668371, -0.740891,
		0.113721, -0.732632, -0.671057,
		-0.991315, -0.128573, -0.027623,
		33.853210, 38.008369, 26.748787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350113, 38.044758, 26.061424>,  <34.547131, 38.098370, 26.768124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350113, 38.044758, 26.061424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007591, 38.127544, 26.250696>,  <33.802078, 38.177216, 26.364260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007591, 38.127544, 26.250696>,  <34.350113, 38.044758, 26.061424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007591, 38.127544, 26.250696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261791, 0.615823, -0.743120,
		-0.445199, -0.760214, -0.473151,
		-0.856308, 0.206969, 0.473181,
		33.750698, 38.189636, 26.392651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707680, 37.876106, 25.613235>,  <34.350113, 38.044758, 26.061424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707680, 37.876106, 25.613235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562073, 38.138443, 25.877771>,  <33.474709, 38.295845, 26.036493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562073, 38.138443, 25.877771>,  <33.707680, 37.876106, 25.613235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562073, 38.138443, 25.877771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396963, 0.533091, -0.747151,
		-0.842565, -0.534500, 0.066291,
		-0.364013, 0.655838, 0.661341,
		33.452869, 38.335194, 26.076174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075054, 37.990025, 25.294682>,  <33.707680, 37.876106, 25.613235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075054, 37.990025, 25.294682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100285, 38.272686, 25.576578>,  <33.115425, 38.442284, 25.745716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100285, 38.272686, 25.576578>,  <33.075054, 37.990025, 25.294682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100285, 38.272686, 25.576578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435254, 0.654932, -0.617753,
		-0.898095, -0.267774, 0.348886,
		0.063078, 0.706655, 0.704741,
		33.119209, 38.484684, 25.788000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450268, 38.326385, 25.354683>,  <33.075054, 37.990025, 25.294682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450268, 38.326385, 25.354683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733768, 38.583878, 25.470121>,  <32.903870, 38.738373, 25.539385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733768, 38.583878, 25.470121>,  <32.450268, 38.326385, 25.354683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733768, 38.583878, 25.470121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388565, 0.697657, -0.601907,
		-0.588807, 0.314462, 0.744594,
		0.708748, 0.643730, 0.288596,
		32.946392, 38.776997, 25.556700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059948, 38.897644, 25.441858>,  <32.450268, 38.326385, 25.354683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059948, 38.897644, 25.441858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433350, 39.039963, 25.424095>,  <32.657391, 39.125355, 25.413437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433350, 39.039963, 25.424095>,  <32.059948, 38.897644, 25.441858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433350, 39.039963, 25.424095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301609, 0.712233, -0.633843,
		-0.193890, 0.605092, 0.772186,
		0.933509, 0.355794, -0.044407,
		32.713402, 39.146702, 25.410772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928988, 39.643936, 25.592625>,  <32.059948, 38.897644, 25.441858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928988, 39.643936, 25.592625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293060, 39.629082, 25.427610>,  <32.511505, 39.620171, 25.328602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293060, 39.629082, 25.427610>,  <31.928988, 39.643936, 25.592625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293060, 39.629082, 25.427610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319902, 0.569650, -0.757074,
		0.263114, 0.821048, 0.506607,
		0.910183, -0.037132, -0.412538,
		32.566116, 39.617943, 25.303848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038841, 40.271755, 25.349665>,  <31.928988, 39.643936, 25.592625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038841, 40.271755, 25.349665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294579, 40.050526, 25.135992>,  <32.448021, 39.917789, 25.007788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294579, 40.050526, 25.135992>,  <32.038841, 40.271755, 25.349665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294579, 40.050526, 25.135992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207084, 0.545197, -0.812328,
		0.740509, 0.629978, 0.234037,
		0.639345, -0.553071, -0.534182,
		32.486382, 39.884605, 24.975737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429329, 40.795982, 24.984266>,  <32.038841, 40.271755, 25.349665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429329, 40.795982, 24.984266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465240, 40.448532, 24.789358>,  <32.486786, 40.240063, 24.672413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465240, 40.448532, 24.789358>,  <32.429329, 40.795982, 24.984266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465240, 40.448532, 24.789358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125983, 0.475412, -0.870696,
		0.987961, 0.139559, -0.066749,
		0.089780, -0.868624, -0.487271,
		32.492176, 40.187946, 24.643177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937908, 40.958054, 24.385958>,  <32.429329, 40.795982, 24.984266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937908, 40.958054, 24.385958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698261, 40.656647, 24.277687>,  <32.554474, 40.475803, 24.212725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698261, 40.656647, 24.277687>,  <32.937908, 40.958054, 24.385958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698261, 40.656647, 24.277687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061726, 0.380531, -0.922706,
		0.798278, -0.536101, -0.274495,
		-0.599117, -0.753520, -0.270678,
		32.518524, 40.430592, 24.196484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043320, 40.856236, 23.672392>,  <32.937908, 40.958054, 24.385958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043320, 40.856236, 23.672392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709595, 40.638405, 23.706694>,  <32.509357, 40.507706, 23.727274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709595, 40.638405, 23.706694>,  <33.043320, 40.856236, 23.672392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709595, 40.638405, 23.706694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319051, 0.350120, -0.880695,
		0.449581, -0.762137, -0.465858,
		-0.834317, -0.544576, 0.085753,
		32.459301, 40.475033, 23.732420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913059, 40.569584, 23.016674>,  <33.043320, 40.856236, 23.672392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913059, 40.569584, 23.016674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549671, 40.519108, 23.176052>,  <32.331638, 40.488823, 23.271679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549671, 40.519108, 23.176052>,  <32.913059, 40.569584, 23.016674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549671, 40.519108, 23.176052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416778, 0.344815, -0.841070,
		-0.031258, -0.930150, -0.365846,
		-0.908471, -0.126187, 0.398444,
		32.277130, 40.481251, 23.295586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433327, 40.248760, 22.480642>,  <32.913059, 40.569584, 23.016674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433327, 40.248760, 22.480642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197731, 40.423714, 22.752460>,  <32.056374, 40.528687, 22.915550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197731, 40.423714, 22.752460>,  <32.433327, 40.248760, 22.480642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197731, 40.423714, 22.752460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626473, 0.284070, -0.725835,
		-0.510508, -0.853228, 0.106695,
		-0.588993, 0.437386, 0.679544,
		32.021034, 40.554928, 22.956324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694054, 40.154449, 22.223074>,  <32.433327, 40.248760, 22.480642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694054, 40.154449, 22.223074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685127, 40.477421, 22.458889>,  <31.679771, 40.671204, 22.600378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685127, 40.477421, 22.458889>,  <31.694054, 40.154449, 22.223074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685127, 40.477421, 22.458889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392235, 0.535335, -0.748043,
		-0.919594, -0.247931, 0.304757,
		-0.022316, 0.807433, 0.589538,
		31.678432, 40.719650, 22.635750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063812, 40.615891, 21.915184>,  <31.694054, 40.154449, 22.223074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063812, 40.615891, 21.915184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260296, 40.873764, 22.149481>,  <31.378185, 41.028488, 22.290060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260296, 40.873764, 22.149481>,  <31.063812, 40.615891, 21.915184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260296, 40.873764, 22.149481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177981, 0.732562, -0.657020,
		-0.852664, 0.218483, 0.474583,
		0.491209, 0.644684, 0.585744,
		31.407660, 41.067169, 22.325205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636671, 41.210155, 22.089970>,  <31.063812, 40.615891, 21.915184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636671, 41.210155, 22.089970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017916, 41.330963, 22.097618>,  <31.246662, 41.403446, 22.102207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017916, 41.330963, 22.097618>,  <30.636671, 41.210155, 22.089970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017916, 41.330963, 22.097618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216222, 0.723845, -0.655207,
		-0.211723, 0.620351, 0.755207,
		0.953112, 0.302015, 0.019121,
		31.303848, 41.421566, 22.103354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579674, 41.979271, 22.069521>,  <30.636671, 41.210155, 22.089970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579674, 41.979271, 22.069521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969412, 41.922470, 21.999680>,  <31.203255, 41.888390, 21.957775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969412, 41.922470, 21.999680>,  <30.579674, 41.979271, 22.069521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969412, 41.922470, 21.999680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032902, 0.857364, -0.513658,
		0.222635, 0.494736, 0.840042,
		0.974347, -0.141997, -0.174601,
		31.261715, 41.879871, 21.947300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923935, 42.633259, 22.263197>,  <30.579674, 41.979271, 22.069521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923935, 42.633259, 22.263197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186707, 42.457123, 22.018396>,  <31.344370, 42.351440, 21.871515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186707, 42.457123, 22.018396>,  <30.923935, 42.633259, 22.263197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186707, 42.457123, 22.018396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149114, 0.719810, -0.677966,
		0.739061, 0.536633, 0.407202,
		0.656927, -0.440339, -0.612004,
		31.383785, 42.325020, 21.834795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340761, 43.124294, 22.168827>,  <30.923935, 42.633259, 22.263197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340761, 43.124294, 22.168827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415520, 42.861675, 21.876520>,  <31.460375, 42.704105, 21.701136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415520, 42.861675, 21.876520>,  <31.340761, 43.124294, 22.168827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415520, 42.861675, 21.876520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183529, 0.707443, -0.682526,
		0.965084, 0.261678, 0.011723,
		0.186895, -0.656544, -0.730767,
		31.471588, 42.664711, 21.657290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745619, 43.539066, 21.707808>,  <31.340761, 43.124294, 22.168827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745619, 43.539066, 21.707808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561768, 43.240196, 21.515779>,  <31.451458, 43.060875, 21.400562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561768, 43.240196, 21.515779>,  <31.745619, 43.539066, 21.707808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561768, 43.240196, 21.515779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203744, 0.614845, -0.761875,
		0.864426, -0.252366, -0.434832,
		-0.459626, -0.747179, -0.480070,
		31.423880, 43.016041, 21.371758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041126, 43.468105, 21.008909>,  <31.745619, 43.539066, 21.707808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041126, 43.468105, 21.008909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690252, 43.277294, 20.987041>,  <31.479727, 43.162807, 20.973921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690252, 43.277294, 20.987041>,  <32.041126, 43.468105, 21.008909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690252, 43.277294, 20.987041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264438, 0.574998, -0.774241,
		0.400768, -0.664698, -0.630525,
		-0.877187, -0.477026, -0.054670,
		31.427095, 43.134186, 20.970640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866470, 43.711597, 20.404165>,  <32.041126, 43.468105, 21.008909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866470, 43.711597, 20.404165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543974, 43.499172, 20.508434>,  <31.350477, 43.371716, 20.570995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543974, 43.499172, 20.508434>,  <31.866470, 43.711597, 20.404165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543974, 43.499172, 20.508434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494707, 0.363597, -0.789343,
		0.324407, -0.765359, -0.555865,
		-0.806242, -0.531059, 0.260676,
		31.302103, 43.339851, 20.586636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593424, 43.235043, 19.826113>,  <31.866470, 43.711597, 20.404165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593424, 43.235043, 19.826113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289082, 43.349785, 20.058943>,  <31.106476, 43.418633, 20.198641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289082, 43.349785, 20.058943>,  <31.593424, 43.235043, 19.826113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289082, 43.349785, 20.058943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533074, 0.235201, -0.812719,
		-0.370039, -0.928651, -0.026038,
		-0.760857, 0.286858, 0.582074,
		31.060825, 43.435841, 20.233564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053068, 43.048931, 19.514545>,  <31.593424, 43.235043, 19.826113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053068, 43.048931, 19.514545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895720, 43.317661, 19.765594>,  <30.801310, 43.478901, 19.916224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895720, 43.317661, 19.765594>,  <31.053068, 43.048931, 19.514545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895720, 43.317661, 19.765594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545249, 0.379170, -0.747618,
		-0.740245, -0.636302, 0.217157,
		-0.393372, 0.671825, 0.627622,
		30.777708, 43.519207, 19.953880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391344, 43.190796, 19.160473>,  <31.053068, 43.048931, 19.514545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391344, 43.190796, 19.160473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439810, 43.485783, 19.426245>,  <30.468889, 43.662773, 19.585707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439810, 43.485783, 19.426245>,  <30.391344, 43.190796, 19.160473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439810, 43.485783, 19.426245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517467, 0.618137, -0.591721,
		-0.847081, -0.272124, 0.456511,
		0.121165, 0.737465, 0.664428,
		30.476160, 43.707024, 19.625572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765261, 43.409664, 19.287411>,  <30.391344, 43.190796, 19.160473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765261, 43.409664, 19.287411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985336, 43.729706, 19.383013>,  <30.117382, 43.921730, 19.440374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985336, 43.729706, 19.383013>,  <29.765261, 43.409664, 19.287411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985336, 43.729706, 19.383013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682696, 0.595812, -0.423007,
		-0.480853, 0.069564, 0.874037,
		0.550188, 0.800106, 0.239007,
		30.150393, 43.969738, 19.454716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318325, 43.801498, 19.572712>,  <29.765261, 43.409664, 19.287411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318325, 43.801498, 19.572712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612267, 44.048443, 19.460384>,  <29.788631, 44.196609, 19.392988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612267, 44.048443, 19.460384>,  <29.318325, 43.801498, 19.572712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612267, 44.048443, 19.460384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677790, 0.653613, -0.336737,
		-0.024339, 0.437789, 0.898748,
		0.734853, 0.617358, -0.280821,
		29.832722, 44.233650, 19.376139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956388, 44.387070, 19.490871>,  <29.318325, 43.801498, 19.572712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956388, 44.387070, 19.490871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311251, 44.501072, 19.345692>,  <29.524168, 44.569473, 19.258585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311251, 44.501072, 19.345692>,  <28.956388, 44.387070, 19.490871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311251, 44.501072, 19.345692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444121, 0.740943, -0.503747,
		0.125354, 0.608094, 0.783906,
		0.887155, 0.285002, -0.362947,
		29.577396, 44.586571, 19.236807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164797, 45.076717, 19.685352>,  <28.956388, 44.387070, 19.490871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164797, 45.076717, 19.685352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336563, 44.991516, 19.334301>,  <29.439623, 44.940395, 19.123671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336563, 44.991516, 19.334301>,  <29.164797, 45.076717, 19.685352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336563, 44.991516, 19.334301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495398, 0.756974, -0.426113,
		0.755106, 0.617754, 0.219533,
		0.429413, -0.213004, -0.877629,
		29.465387, 44.927616, 19.071012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113293, 45.821083, 19.804594>,  <29.164797, 45.076717, 19.685352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113293, 45.821083, 19.804594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304146, 45.591354, 20.070677>,  <29.418657, 45.453518, 20.230328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304146, 45.591354, 20.070677>,  <29.113293, 45.821083, 19.804594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304146, 45.591354, 20.070677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527575, -0.418178, -0.739454,
		0.702857, 0.703766, 0.103469,
		0.477134, -0.574318, 0.665208,
		29.447287, 45.419060, 20.270239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869905, 45.861107, 19.686756>,  <29.113293, 45.821083, 19.804594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869905, 45.861107, 19.686756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839205, 45.507244, 19.870710>,  <29.820784, 45.294926, 19.981083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839205, 45.507244, 19.870710>,  <29.869905, 45.861107, 19.686756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839205, 45.507244, 19.870710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662325, -0.390010, -0.639702,
		0.745275, 0.255494, 0.615864,
		-0.076753, -0.884655, 0.459885,
		29.816179, 45.241848, 20.008677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472683, 46.313129, 19.864056>,  <29.869905, 45.861107, 19.686756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472683, 46.313129, 19.864056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244781, 46.591290, 20.039238>,  <30.108042, 46.758186, 20.144348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244781, 46.591290, 20.039238>,  <30.472683, 46.313129, 19.864056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244781, 46.591290, 20.039238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111746, -0.462407, 0.879598,
		0.814184, 0.550092, 0.185749,
		-0.569752, 0.695398, 0.437955,
		30.073856, 46.799908, 20.170624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933271, 46.503540, 20.321659>,  <30.472683, 46.313129, 19.864056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933271, 46.503540, 20.321659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541468, 46.507252, 20.402136>,  <30.306385, 46.509480, 20.450422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541468, 46.507252, 20.402136>,  <30.933271, 46.503540, 20.321659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541468, 46.507252, 20.402136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162785, -0.551758, 0.817963,
		0.118602, 0.833952, 0.538940,
		-0.979507, 0.009281, 0.201194,
		30.247616, 46.510036, 20.462494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738659, 46.761520, 20.977570>,  <30.933271, 46.503540, 20.321659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738659, 46.761520, 20.977570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495632, 46.464340, 20.865221>,  <30.349815, 46.286034, 20.797812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495632, 46.464340, 20.865221>,  <30.738659, 46.761520, 20.977570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495632, 46.464340, 20.865221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134268, -0.444607, 0.885605,
		-0.782838, 0.500352, 0.369883,
		-0.607567, -0.742949, -0.280873,
		30.313362, 46.241455, 20.780958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382477, 46.517948, 21.495262>,  <30.738659, 46.761520, 20.977570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382477, 46.517948, 21.495262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346706, 46.189785, 21.269367>,  <30.325245, 45.992886, 21.133831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346706, 46.189785, 21.269367>,  <30.382477, 46.517948, 21.495262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346706, 46.189785, 21.269367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052551, -0.570105, 0.819889,
		-0.994606, 0.043640, 0.094094,
		-0.089424, -0.820412, -0.564737,
		30.319880, 45.943661, 21.099947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952120, 46.175465, 21.804468>,  <30.382477, 46.517948, 21.495262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952120, 46.175465, 21.804468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241652, 45.995098, 21.595570>,  <30.415371, 45.886879, 21.470230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241652, 45.995098, 21.595570>,  <29.952120, 46.175465, 21.804468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241652, 45.995098, 21.595570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230123, -0.555796, 0.798833,
		-0.650473, -0.698400, -0.298534,
		0.723829, -0.450920, -0.522248,
		30.458799, 45.859821, 21.438894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801741, 45.504108, 22.043579>,  <29.952120, 46.175465, 21.804468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801741, 45.504108, 22.043579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158337, 45.465538, 21.866516>,  <30.372295, 45.442398, 21.760279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158337, 45.465538, 21.866516>,  <29.801741, 45.504108, 22.043579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158337, 45.465538, 21.866516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267058, -0.677426, 0.685401,
		-0.365955, -0.729244, -0.578170,
		0.891492, -0.096421, -0.442658,
		30.425783, 45.436611, 21.733719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061846, 44.802792, 22.223846>,  <29.801741, 45.504108, 22.043579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061846, 44.802792, 22.223846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384773, 44.993198, 22.084337>,  <30.578529, 45.107445, 22.000631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384773, 44.993198, 22.084337>,  <30.061846, 44.802792, 22.223846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384773, 44.993198, 22.084337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557135, -0.420009, 0.716375,
		0.194520, -0.772656, -0.604288,
		0.807318, 0.476019, -0.348774,
		30.626968, 45.136005, 21.979706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551647, 44.272610, 21.970093>,  <30.061846, 44.802792, 22.223846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551647, 44.272610, 21.970093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740908, 44.609528, 22.073372>,  <30.854464, 44.811680, 22.135340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740908, 44.609528, 22.073372>,  <30.551647, 44.272610, 21.970093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740908, 44.609528, 22.073372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702549, -0.537584, 0.466293,
		0.531560, -0.039231, -0.846112,
		0.473149, 0.842297, 0.258196,
		30.882853, 44.862217, 22.150831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239447, 44.047638, 22.014591>,  <30.551647, 44.272610, 21.970093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239447, 44.047638, 22.014591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253145, 44.383705, 22.231091>,  <31.261364, 44.585346, 22.360991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253145, 44.383705, 22.231091>,  <31.239447, 44.047638, 22.014591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253145, 44.383705, 22.231091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738489, -0.386174, 0.552723,
		0.673395, 0.380776, -0.633679,
		0.034247, 0.840166, 0.541246,
		31.263420, 44.635754, 22.393465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942430, 44.232746, 22.154755>,  <31.239447, 44.047638, 22.014591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942430, 44.232746, 22.154755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725317, 44.418663, 22.434570>,  <31.595049, 44.530212, 22.602459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725317, 44.418663, 22.434570>,  <31.942430, 44.232746, 22.154755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725317, 44.418663, 22.434570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545288, -0.438468, 0.714428,
		0.638787, 0.769229, -0.015455,
		-0.542782, 0.464794, 0.699538,
		31.562483, 44.558102, 22.644432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460342, 44.600315, 22.640232>,  <31.942430, 44.232746, 22.154755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460342, 44.600315, 22.640232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129509, 44.554829, 22.860413>,  <31.931007, 44.527538, 22.992521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129509, 44.554829, 22.860413>,  <32.460342, 44.600315, 22.640232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129509, 44.554829, 22.860413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554048, -0.329858, 0.764345,
		0.094654, 0.937157, 0.335825,
		-0.827086, -0.113714, 0.550452,
		31.881384, 44.520714, 23.025549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677162, 44.659672, 23.276489>,  <32.460342, 44.600315, 22.640232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677162, 44.659672, 23.276489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312973, 44.532181, 23.381908>,  <32.094460, 44.455685, 23.445160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312973, 44.532181, 23.381908>,  <32.677162, 44.659672, 23.276489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312973, 44.532181, 23.381908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366812, -0.327971, 0.870566,
		-0.191040, 0.889295, 0.415521,
		-0.910468, -0.318731, 0.263548,
		32.039833, 44.436562, 23.460974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686150, 44.818031, 24.034803>,  <32.677162, 44.659672, 23.276489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686150, 44.818031, 24.034803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377899, 44.569904, 23.976358>,  <32.192951, 44.421028, 23.941292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377899, 44.569904, 23.976358>,  <32.686150, 44.818031, 24.034803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377899, 44.569904, 23.976358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227016, -0.481432, 0.846574,
		-0.595487, 0.619218, 0.511824,
		-0.770622, -0.620316, -0.146114,
		32.146713, 44.383808, 23.932524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208183, 44.874397, 24.533520>,  <32.686150, 44.818031, 24.034803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208183, 44.874397, 24.533520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158127, 44.504391, 24.390030>,  <32.128094, 44.282387, 24.303936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158127, 44.504391, 24.390030>,  <32.208183, 44.874397, 24.533520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158127, 44.504391, 24.390030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068627, -0.368772, 0.926983,
		-0.989762, 0.091387, 0.109630,
		-0.125143, -0.925016, -0.358725,
		32.120583, 44.226887, 24.282412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775648, 44.534573, 25.005756>,  <32.208183, 44.874397, 24.533520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775648, 44.534573, 25.005756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960394, 44.229641, 24.824415>,  <32.071239, 44.046680, 24.715611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960394, 44.229641, 24.824415>,  <31.775648, 44.534573, 25.005756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960394, 44.229641, 24.824415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129001, -0.447966, 0.884695,
		-0.877520, -0.467091, -0.108557,
		0.461863, -0.762334, -0.453355,
		32.098953, 44.000942, 24.688410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524750, 43.935841, 25.341635>,  <31.775648, 44.534573, 25.005756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524750, 43.935841, 25.341635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846144, 43.799225, 25.146593>,  <32.038979, 43.717255, 25.029568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846144, 43.799225, 25.146593>,  <31.524750, 43.935841, 25.341635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846144, 43.799225, 25.146593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243790, -0.558465, 0.792896,
		-0.543103, -0.755960, -0.365464,
		0.803496, -0.341528, -0.487599,
		32.087189, 43.696762, 25.000311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475016, 43.226891, 25.418987>,  <31.524750, 43.935841, 25.341635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475016, 43.226891, 25.418987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855293, 43.301022, 25.319525>,  <32.083462, 43.345501, 25.259848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855293, 43.301022, 25.319525>,  <31.475016, 43.226891, 25.418987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855293, 43.301022, 25.319525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309886, -0.536316, 0.785071,
		0.012140, -0.823419, -0.567305,
		0.950696, 0.185330, -0.248655,
		32.140503, 43.356621, 25.244928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769045, 42.602512, 25.454823>,  <31.475016, 43.226891, 25.418987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769045, 42.602512, 25.454823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085678, 42.846699, 25.465578>,  <32.275658, 42.993210, 25.472033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085678, 42.846699, 25.465578>,  <31.769045, 42.602512, 25.454823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085678, 42.846699, 25.465578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434710, -0.593514, 0.677325,
		0.429446, -0.524469, -0.735193,
		0.791583, 0.610470, 0.026890,
		32.323154, 43.029839, 25.473644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373402, 42.269642, 25.333731>,  <31.769045, 42.602512, 25.454823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373402, 42.269642, 25.333731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480453, 42.581116, 25.560719>,  <32.544685, 42.768002, 25.696911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480453, 42.581116, 25.560719>,  <32.373402, 42.269642, 25.333731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480453, 42.581116, 25.560719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292620, -0.626823, 0.722126,
		0.918012, -0.027210, -0.395617,
		0.267631, 0.778686, 0.567469,
		32.560741, 42.814720, 25.730959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919334, 42.018063, 25.561314>,  <32.373402, 42.269642, 25.333731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919334, 42.018063, 25.561314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821934, 42.310883, 25.815811>,  <32.763493, 42.486576, 25.968510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821934, 42.310883, 25.815811>,  <32.919334, 42.018063, 25.561314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821934, 42.310883, 25.815811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309104, -0.563214, 0.766319,
		0.919327, 0.383265, -0.089138,
		-0.243499, 0.732051, 0.636246,
		32.748882, 42.530499, 26.006685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445759, 42.035046, 25.971674>,  <32.919334, 42.018063, 25.561314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445759, 42.035046, 25.971674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167423, 42.240829, 26.172127>,  <33.000423, 42.364300, 26.292398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167423, 42.240829, 26.172127>,  <33.445759, 42.035046, 25.971674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167423, 42.240829, 26.172127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131468, -0.594732, 0.793102,
		0.706062, 0.617754, 0.346203,
		-0.695840, 0.514464, 0.501132,
		32.958672, 42.395168, 26.322466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618160, 42.051773, 26.713875>,  <33.445759, 42.035046, 25.971674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618160, 42.051773, 26.713875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239597, 42.177094, 26.745268>,  <33.012459, 42.252285, 26.764103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239597, 42.177094, 26.745268>,  <33.618160, 42.051773, 26.713875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239597, 42.177094, 26.745268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091616, -0.493419, 0.864954,
		0.309717, 0.811406, 0.495677,
		-0.946405, 0.313303, 0.078482,
		32.955677, 42.271084, 26.768812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470013, 42.322697, 27.370213>,  <33.618160, 42.051773, 26.713875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470013, 42.322697, 27.370213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102928, 42.233681, 27.238590>,  <32.882675, 42.180271, 27.159616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102928, 42.233681, 27.238590>,  <33.470013, 42.322697, 27.370213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102928, 42.233681, 27.238590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184546, -0.494699, 0.849244,
		-0.351773, 0.840089, 0.412924,
		-0.917714, -0.222538, -0.329057,
		32.827614, 42.166920, 27.139874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924786, 42.446304, 27.944956>,  <33.470013, 42.322697, 27.370213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924786, 42.446304, 27.944956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742702, 42.201511, 27.686262>,  <32.633453, 42.054634, 27.531046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742702, 42.201511, 27.686262>,  <32.924786, 42.446304, 27.944956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742702, 42.201511, 27.686262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230496, -0.620599, 0.749485,
		-0.860035, 0.490240, 0.141441,
		-0.455205, -0.611982, -0.646735,
		32.606140, 42.017918, 27.492241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153118, 42.324547, 28.218355>,  <32.924786, 42.446304, 27.944956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153118, 42.324547, 28.218355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279720, 42.029518, 27.979753>,  <32.355682, 41.852501, 27.836592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279720, 42.029518, 27.979753>,  <32.153118, 42.324547, 28.218355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279720, 42.029518, 27.979753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085444, -0.648444, 0.756452,
		-0.944734, -0.188455, -0.268258,
		0.316507, -0.737567, -0.596505,
		32.374672, 41.808247, 27.800802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838200, 41.713409, 28.454750>,  <32.153118, 42.324547, 28.218355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838200, 41.713409, 28.454750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108086, 41.533070, 28.221001>,  <32.270016, 41.424866, 28.080751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108086, 41.533070, 28.221001>,  <31.838200, 41.713409, 28.454750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108086, 41.533070, 28.221001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118343, -0.847590, 0.517287,
		-0.728530, -0.279864, -0.625236,
		0.674714, -0.450851, -0.584375,
		32.310501, 41.397816, 28.045689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566551, 41.072693, 28.168991>,  <31.838200, 41.713409, 28.454750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566551, 41.072693, 28.168991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966099, 41.057999, 28.156906>,  <32.205826, 41.049183, 28.149656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966099, 41.057999, 28.156906>,  <31.566551, 41.072693, 28.168991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966099, 41.057999, 28.156906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012511, -0.815776, 0.578232,
		-0.045886, -0.577200, -0.815313,
		0.998868, -0.036733, -0.030211,
		32.265759, 41.046978, 28.147842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765718, 40.395775, 27.931017>,  <31.566551, 41.072693, 28.168991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765718, 40.395775, 27.931017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083618, 40.522427, 28.138136>,  <32.274357, 40.598419, 28.262407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083618, 40.522427, 28.138136>,  <31.765718, 40.395775, 27.931017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083618, 40.522427, 28.138136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065733, -0.893021, 0.445188,
		0.603367, -0.319777, -0.730541,
		0.794750, 0.316633, 0.517800,
		32.322044, 40.617416, 28.293476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252918, 39.842075, 27.899118>,  <31.765718, 40.395775, 27.931017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252918, 39.842075, 27.899118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411266, 40.047050, 28.203932>,  <32.506275, 40.170036, 28.386820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411266, 40.047050, 28.203932>,  <32.252918, 39.842075, 27.899118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411266, 40.047050, 28.203932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292759, -0.856952, 0.424176,
		0.870388, 0.055172, -0.489265,
		0.395874, 0.512435, 0.762033,
		32.530029, 40.200783, 28.432541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880653, 39.501938, 28.115030>,  <32.252918, 39.842075, 27.899118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880653, 39.501938, 28.115030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800186, 39.734337, 28.430492>,  <32.751907, 39.873775, 28.619770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800186, 39.734337, 28.430492>,  <32.880653, 39.501938, 28.115030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800186, 39.734337, 28.430492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231205, -0.754204, 0.614589,
		0.951880, 0.305977, 0.017393,
		-0.201168, 0.580994, 0.788655,
		32.739838, 39.908634, 28.667089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303978, 39.264984, 28.573473>,  <32.880653, 39.501938, 28.115030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303978, 39.264984, 28.573473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027462, 39.476337, 28.770622>,  <32.861553, 39.603149, 28.888912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027462, 39.476337, 28.770622>,  <33.303978, 39.264984, 28.573473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027462, 39.476337, 28.770622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008597, -0.688071, 0.725593,
		0.722526, 0.497358, 0.480199,
		-0.691290, 0.528388, 0.492873,
		32.820076, 39.634853, 28.918484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596901, 39.349113, 29.237303>,  <33.303978, 39.264984, 28.573473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596901, 39.349113, 29.237303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200596, 39.387829, 29.275288>,  <32.962811, 39.411057, 29.298079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200596, 39.387829, 29.275288>,  <33.596901, 39.349113, 29.237303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200596, 39.387829, 29.275288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014278, -0.621980, 0.782903,
		0.134836, 0.777029, 0.614854,
		-0.990765, 0.096784, 0.094960,
		32.903366, 39.416862, 29.303776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444084, 39.509861, 29.932991>,  <33.596901, 39.349113, 29.237303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444084, 39.509861, 29.932991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095673, 39.359718, 29.806242>,  <32.886623, 39.269630, 29.730192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095673, 39.359718, 29.806242>,  <33.444084, 39.509861, 29.932991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095673, 39.359718, 29.806242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055783, -0.716476, 0.695378,
		-0.488048, 0.588020, 0.645012,
		-0.871032, -0.375358, -0.316873,
		32.834362, 39.247112, 29.711180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952568, 39.408562, 30.521860>,  <33.444084, 39.509861, 29.932991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952568, 39.408562, 30.521860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872314, 39.141006, 30.235548>,  <32.824162, 38.980473, 30.063761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872314, 39.141006, 30.235548>,  <32.952568, 39.408562, 30.521860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872314, 39.141006, 30.235548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045024, -0.723567, 0.688784,
		-0.978631, 0.170422, 0.115058,
		-0.200637, -0.668885, -0.715778,
		32.812122, 38.940342, 30.020815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442726, 38.963310, 30.857626>,  <32.952568, 39.408562, 30.521860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442726, 38.963310, 30.857626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557461, 38.756935, 30.534754>,  <32.626301, 38.633110, 30.341030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557461, 38.756935, 30.534754>,  <32.442726, 38.963310, 30.857626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557461, 38.756935, 30.534754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218765, -0.855598, 0.469142,
		-0.932666, 0.042014, -0.358286,
		0.286838, -0.515933, -0.807178,
		32.643513, 38.602154, 30.292601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846598, 38.415840, 30.660526>,  <32.442726, 38.963310, 30.857626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846598, 38.415840, 30.660526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196030, 38.274197, 30.526981>,  <32.405689, 38.189209, 30.446854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196030, 38.274197, 30.526981>,  <31.846598, 38.415840, 30.660526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196030, 38.274197, 30.526981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164260, -0.860275, 0.482645,
		-0.458121, -0.366789, -0.809686,
		0.873581, -0.354109, -0.333861,
		32.458103, 38.167965, 30.426823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744438, 37.821945, 30.806410>,  <31.846598, 38.415840, 30.660526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744438, 37.821945, 30.806410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132736, 37.802620, 30.712330>,  <32.365715, 37.791023, 30.655882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132736, 37.802620, 30.712330>,  <31.744438, 37.821945, 30.806410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132736, 37.802620, 30.712330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061390, -0.897044, 0.437656,
		-0.232131, -0.439292, -0.867835,
		0.970746, -0.048317, -0.235199,
		32.423962, 37.788124, 30.641769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880117, 37.134861, 30.534336>,  <31.744438, 37.821945, 30.806410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880117, 37.134861, 30.534336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235874, 37.270809, 30.656626>,  <32.449329, 37.352379, 30.730000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235874, 37.270809, 30.656626>,  <31.880117, 37.134861, 30.534336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235874, 37.270809, 30.656626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095249, -0.791868, 0.603219,
		0.447110, -0.507379, -0.736654,
		0.889393, 0.339871, 0.305725,
		32.502693, 37.372772, 30.748343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408653, 36.480156, 30.439205>,  <31.880117, 37.134861, 30.534336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408653, 36.480156, 30.439205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581425, 36.750038, 30.678608>,  <32.685085, 36.911968, 30.822248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581425, 36.750038, 30.678608>,  <32.408653, 36.480156, 30.439205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581425, 36.750038, 30.678608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152358, -0.708645, 0.688919,
		0.888948, -0.206374, -0.408878,
		0.431924, 0.674709, 0.598505,
		32.711002, 36.952450, 30.858160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972263, 36.157017, 30.719088>,  <32.408653, 36.480156, 30.439205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972263, 36.157017, 30.719088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912449, 36.449711, 30.985081>,  <32.876560, 36.625328, 31.144676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912449, 36.449711, 30.985081>,  <32.972263, 36.157017, 30.719088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912449, 36.449711, 30.985081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221967, -0.630537, 0.743743,
		0.963519, 0.258821, -0.068133,
		-0.149536, 0.731734, 0.664984,
		32.867588, 36.669231, 31.184576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528748, 36.207279, 31.198345>,  <32.972263, 36.157017, 30.719088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528748, 36.207279, 31.198345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260433, 36.382408, 31.437796>,  <33.099445, 36.487484, 31.581467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260433, 36.382408, 31.437796>,  <33.528748, 36.207279, 31.198345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260433, 36.382408, 31.437796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346693, -0.528425, 0.774966,
		0.655627, 0.727378, 0.202671,
		-0.670789, 0.437824, 0.598626,
		33.059196, 36.513756, 31.617384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808006, 36.388889, 31.903219>,  <33.528748, 36.207279, 31.198345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808006, 36.388889, 31.903219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417515, 36.400066, 31.989189>,  <33.183220, 36.406773, 32.040771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417515, 36.400066, 31.989189>,  <33.808006, 36.388889, 31.903219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417515, 36.400066, 31.989189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174388, -0.487549, 0.855503,
		0.128694, 0.872648, 0.471087,
		-0.976231, 0.027947, 0.214924,
		33.124645, 36.408451, 32.053665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724056, 36.657169, 32.650261>,  <33.808006, 36.388889, 31.903219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724056, 36.657169, 32.650261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383766, 36.463467, 32.568512>,  <33.179592, 36.347244, 32.519463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383766, 36.463467, 32.568512>,  <33.724056, 36.657169, 32.650261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383766, 36.463467, 32.568512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075433, -0.497279, 0.864305,
		-0.520174, 0.719867, 0.459575,
		-0.850722, -0.484257, -0.204370,
		33.128548, 36.318188, 32.507202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616943, 37.320053, 32.254993>,  <33.724056, 36.657169, 32.650261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616943, 37.320053, 32.254993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878788, 37.482101, 32.510292>,  <34.035892, 37.579330, 32.663471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878788, 37.482101, 32.510292>,  <33.616943, 37.320053, 32.254993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878788, 37.482101, 32.510292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158979, 0.751626, -0.640143,
		-0.739063, 0.520511, 0.427614,
		0.654608, 0.405125, 0.638250,
		34.075169, 37.603638, 32.701767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521053, 37.966763, 32.366936>,  <33.616943, 37.320053, 32.254993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521053, 37.966763, 32.366936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894989, 38.004852, 32.503765>,  <34.119350, 38.027706, 32.585861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894989, 38.004852, 32.503765>,  <33.521053, 37.966763, 32.366936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894989, 38.004852, 32.503765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122976, 0.816921, -0.563487,
		-0.333104, 0.568834, 0.751977,
		0.934836, 0.095225, 0.342073,
		34.175438, 38.033421, 32.606388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590916, 38.678921, 32.648102>,  <33.521053, 37.966763, 32.366936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590916, 38.678921, 32.648102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961918, 38.571709, 32.543880>,  <34.184521, 38.507381, 32.481350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961918, 38.571709, 32.543880>,  <33.590916, 38.678921, 32.648102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961918, 38.571709, 32.543880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131387, 0.886317, -0.444050,
		0.349949, 0.377628, 0.857282,
		0.927509, -0.268031, -0.260551,
		34.240170, 38.491299, 32.465714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886753, 39.326820, 32.628410>,  <33.590916, 38.678921, 32.648102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886753, 39.326820, 32.628410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135281, 39.083187, 32.431240>,  <34.284397, 38.937008, 32.312939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135281, 39.083187, 32.431240>,  <33.886753, 39.326820, 32.628410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135281, 39.083187, 32.431240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277605, 0.759397, -0.588431,
		0.732733, 0.228764, 0.640913,
		0.621320, -0.609084, -0.492929,
		34.321678, 38.900463, 32.283360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495544, 39.623657, 32.575565>,  <33.886753, 39.326820, 32.628410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495544, 39.623657, 32.575565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559074, 39.361713, 32.280018>,  <34.597195, 39.204548, 32.102688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559074, 39.361713, 32.280018>,  <34.495544, 39.623657, 32.575565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559074, 39.361713, 32.280018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290100, 0.746288, -0.599080,
		0.943725, -0.119195, 0.308507,
		0.158828, -0.654864, -0.738869,
		34.606724, 39.165253, 32.058357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171074, 39.827454, 32.285507>,  <34.495544, 39.623657, 32.575565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171074, 39.827454, 32.285507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961479, 39.603882, 32.028435>,  <34.835724, 39.469738, 31.874191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961479, 39.603882, 32.028435>,  <35.171074, 39.827454, 32.285507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961479, 39.603882, 32.028435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203756, 0.650392, -0.731761,
		0.826997, -0.514381, -0.226910,
		-0.523984, -0.558930, -0.642681,
		34.804283, 39.436203, 31.835630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560635, 39.652252, 31.657869>,  <35.171074, 39.827454, 32.285507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560635, 39.652252, 31.657869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177074, 39.628204, 31.546946>,  <34.946938, 39.613777, 31.480391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177074, 39.628204, 31.546946>,  <35.560635, 39.652252, 31.657869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177074, 39.628204, 31.546946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171130, 0.657040, -0.734175,
		0.226341, -0.751455, -0.619746,
		-0.958897, -0.060117, -0.277312,
		34.889404, 39.610168, 31.463753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655590, 39.610153, 30.914419>,  <35.560635, 39.652252, 31.657869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655590, 39.610153, 30.914419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282131, 39.735844, 30.983196>,  <35.058056, 39.811256, 31.024462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282131, 39.735844, 30.983196>,  <35.655590, 39.610153, 30.914419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282131, 39.735844, 30.983196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045480, 0.580139, -0.813247,
		-0.355289, -0.751468, -0.555937,
		-0.933649, 0.314222, 0.171941,
		35.002037, 39.830109, 31.034779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424660, 39.830460, 30.247650>,  <35.655590, 39.610153, 30.914419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424660, 39.830460, 30.247650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128620, 39.978470, 30.472267>,  <34.950996, 40.067276, 30.607037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128620, 39.978470, 30.472267>,  <35.424660, 39.830460, 30.247650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128620, 39.978470, 30.472267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145057, 0.727521, -0.670576,
		-0.656663, -0.577751, -0.484766,
		-0.740103, 0.370023, 0.561543,
		34.906590, 40.089478, 30.640730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912003, 39.985149, 29.782024>,  <35.424660, 39.830460, 30.247650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912003, 39.985149, 29.782024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850586, 40.194649, 30.117193>,  <34.813736, 40.320347, 30.318295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850586, 40.194649, 30.117193>,  <34.912003, 39.985149, 29.782024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850586, 40.194649, 30.117193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210249, 0.811247, -0.545595,
		-0.965516, -0.259944, -0.014443,
		-0.153541, 0.523744, 0.837924,
		34.804523, 40.351772, 30.368570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463093, 40.476440, 29.612831>,  <34.912003, 39.985149, 29.782024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463093, 40.476440, 29.612831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625427, 40.622627, 29.947908>,  <34.722828, 40.710339, 30.148954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625427, 40.622627, 29.947908>,  <34.463093, 40.476440, 29.612831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625427, 40.622627, 29.947908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020232, 0.919935, -0.391550,
		-0.913723, 0.141956, 0.380735,
		0.405834, 0.365471, 0.837693,
		34.747177, 40.732269, 30.199217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091808, 41.063553, 29.687805>,  <34.463093, 40.476440, 29.612831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091808, 41.063553, 29.687805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414597, 41.123833, 29.916224>,  <34.608269, 41.160000, 30.053274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414597, 41.123833, 29.916224>,  <34.091808, 41.063553, 29.687805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414597, 41.123833, 29.916224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071923, 0.934627, -0.348279,
		-0.586201, 0.322121, 0.743375,
		0.806966, 0.150696, 0.571048,
		34.656685, 41.169041, 30.087538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051533, 41.627655, 30.076490>,  <34.091808, 41.063553, 29.687805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051533, 41.627655, 30.076490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437344, 41.549564, 30.005417>,  <34.668831, 41.502708, 29.962772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437344, 41.549564, 30.005417>,  <34.051533, 41.627655, 30.076490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437344, 41.549564, 30.005417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118018, 0.920988, -0.371285,
		0.236130, 0.337145, 0.911359,
		0.964528, -0.195228, -0.177684,
		34.726704, 41.490997, 29.952112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446728, 42.170052, 30.345743>,  <34.051533, 41.627655, 30.076490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446728, 42.170052, 30.345743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617680, 41.972260, 30.042997>,  <34.720249, 41.853584, 29.861349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617680, 41.972260, 30.042997>,  <34.446728, 42.170052, 30.345743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617680, 41.972260, 30.042997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107620, 0.803393, -0.585644,
		0.897646, 0.331744, 0.290135,
		0.427376, -0.494476, -0.756864,
		34.745892, 41.823917, 29.815939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888138, 42.755371, 30.030001>,  <34.446728, 42.170052, 30.345743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888138, 42.755371, 30.030001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875000, 42.478428, 29.741676>,  <34.867119, 42.312263, 29.568682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875000, 42.478428, 29.741676>,  <34.888138, 42.755371, 30.030001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875000, 42.478428, 29.741676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090724, 0.720286, -0.687719,
		0.995334, 0.042807, -0.086470,
		-0.032844, -0.692355, -0.720809,
		34.865147, 42.270721, 29.525434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415627, 42.889824, 29.609776>,  <34.888138, 42.755371, 30.030001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415627, 42.889824, 29.609776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138729, 42.692558, 29.399027>,  <34.972591, 42.574200, 29.272577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138729, 42.692558, 29.399027>,  <35.415627, 42.889824, 29.609776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138729, 42.692558, 29.399027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019461, 0.742567, -0.669489,
		0.721396, -0.453200, -0.523639,
		-0.692249, -0.493157, -0.526865,
		34.931057, 42.544609, 29.240965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627121, 42.802589, 28.955099>,  <35.415627, 42.889824, 29.609776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627121, 42.802589, 28.955099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229393, 42.771149, 28.926403>,  <34.990757, 42.752285, 28.909185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229393, 42.771149, 28.926403>,  <35.627121, 42.802589, 28.955099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229393, 42.771149, 28.926403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000116, 0.673322, -0.739349,
		0.106421, -0.735159, -0.669489,
		-0.994321, -0.078605, -0.071740,
		34.931095, 42.747566, 28.904881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566612, 42.759541, 28.260695>,  <35.627121, 42.802589, 28.955099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566612, 42.759541, 28.260695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196056, 42.831543, 28.392994>,  <34.973721, 42.874744, 28.472374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196056, 42.831543, 28.392994>,  <35.566612, 42.759541, 28.260695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196056, 42.831543, 28.392994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161250, 0.604108, -0.780418,
		-0.340284, -0.776307, -0.530617,
		-0.926394, 0.180002, 0.330748,
		34.918137, 42.885544, 28.492218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191818, 42.636665, 27.641123>,  <35.566612, 42.759541, 28.260695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191818, 42.636665, 27.641123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995029, 42.884621, 27.885647>,  <34.876957, 43.033394, 28.032362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995029, 42.884621, 27.885647>,  <35.191818, 42.636665, 27.641123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995029, 42.884621, 27.885647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241556, 0.577404, -0.779907,
		-0.836431, -0.531357, -0.134327,
		-0.491970, 0.619891, 0.611311,
		34.847439, 43.070587, 28.069040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454411, 42.678963, 27.374516>,  <35.191818, 42.636665, 27.641123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454411, 42.678963, 27.374516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509270, 43.000237, 27.606407>,  <34.542187, 43.193001, 27.745543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509270, 43.000237, 27.606407>,  <34.454411, 42.678963, 27.374516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509270, 43.000237, 27.606407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344782, 0.587369, -0.732204,
		-0.928609, -0.099456, 0.357483,
		0.137152, 0.803185, 0.579727,
		34.550415, 43.241192, 27.780325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968071, 43.027290, 27.211981>,  <34.454411, 42.678963, 27.374516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968071, 43.027290, 27.211981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196747, 43.296780, 27.399284>,  <34.333954, 43.458473, 27.511665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196747, 43.296780, 27.399284>,  <33.968071, 43.027290, 27.211981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196747, 43.296780, 27.399284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130140, 0.637955, -0.758997,
		-0.810081, 0.372973, 0.452392,
		0.571692, 0.673724, 0.468257,
		34.368256, 43.498898, 27.539761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625206, 43.665543, 27.254589>,  <33.968071, 43.027290, 27.211981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625206, 43.665543, 27.254589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017853, 43.736050, 27.283846>,  <34.253441, 43.778355, 27.301399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017853, 43.736050, 27.283846>,  <33.625206, 43.665543, 27.254589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017853, 43.736050, 27.283846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040464, 0.566782, -0.822873,
		-0.186500, 0.804791, 0.563498,
		0.981621, 0.176267, 0.073140,
		34.312340, 43.788929, 27.305788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702156, 44.349258, 27.156340>,  <33.625206, 43.665543, 27.254589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702156, 44.349258, 27.156340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056698, 44.188877, 27.063726>,  <34.269424, 44.092648, 27.008160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056698, 44.188877, 27.063726>,  <33.702156, 44.349258, 27.156340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056698, 44.188877, 27.063726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067374, 0.606434, -0.792274,
		0.458077, 0.686637, 0.564531,
		0.886356, -0.400957, -0.231532,
		34.322605, 44.068588, 26.994267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090790, 44.887783, 27.016392>,  <33.702156, 44.349258, 27.156340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090790, 44.887783, 27.016392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277645, 44.593616, 26.820047>,  <34.389759, 44.417118, 26.702240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277645, 44.593616, 26.820047>,  <34.090790, 44.887783, 27.016392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277645, 44.593616, 26.820047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201945, 0.629227, -0.750527,
		0.860813, 0.251472, 0.442450,
		0.467138, -0.735415, -0.490863,
		34.417786, 44.372993, 26.672789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489502, 45.275806, 26.575537>,  <34.090790, 44.887783, 27.016392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489502, 45.275806, 26.575537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529396, 44.905571, 26.429476>,  <34.553333, 44.683430, 26.341839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529396, 44.905571, 26.429476>,  <34.489502, 45.275806, 26.575537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529396, 44.905571, 26.429476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129357, 0.375927, -0.917576,
		0.986570, 0.044278, 0.157224,
		0.099733, -0.925591, -0.365150,
		34.559315, 44.627895, 26.319931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080936, 45.292252, 26.161180>,  <34.489502, 45.275806, 26.575537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080936, 45.292252, 26.161180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903194, 44.957619, 26.033010>,  <34.796551, 44.756840, 25.956108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903194, 44.957619, 26.033010>,  <35.080936, 45.292252, 26.161180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903194, 44.957619, 26.033010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263858, 0.219594, -0.939232,
		0.856113, -0.501898, 0.123163,
		-0.444353, -0.836586, -0.320427,
		34.769890, 44.706642, 25.936882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480389, 45.144089, 25.539732>,  <35.080936, 45.292252, 26.161180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480389, 45.144089, 25.539732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123371, 44.963837, 25.532843>,  <34.909161, 44.855686, 25.528709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123371, 44.963837, 25.532843>,  <35.480389, 45.144089, 25.539732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123371, 44.963837, 25.532843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073167, -0.107023, -0.991561,
		0.444983, -0.886273, 0.128494,
		-0.892545, -0.450629, -0.017222,
		34.855606, 44.828648, 25.527676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522270, 44.644321, 24.943535>,  <35.480389, 45.144089, 25.539732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522270, 44.644321, 24.943535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126553, 44.690384, 24.979376>,  <34.889122, 44.718021, 25.000879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126553, 44.690384, 24.979376>,  <35.522270, 44.644321, 24.943535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126553, 44.690384, 24.979376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110412, -0.189387, -0.975675,
		-0.095383, -0.975127, 0.200074,
		-0.989299, 0.115154, 0.089602,
		34.829762, 44.724930, 25.006256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232197, 44.070744, 24.525442>,  <35.522270, 44.644321, 24.943535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232197, 44.070744, 24.525442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979565, 44.380268, 24.544720>,  <34.827984, 44.565983, 24.556286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979565, 44.380268, 24.544720>,  <35.232197, 44.070744, 24.525442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979565, 44.380268, 24.544720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086172, -0.008288, -0.996246,
		-0.770503, -0.633367, 0.071915,
		-0.631585, 0.773807, 0.048192,
		34.790089, 44.612411, 24.559177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668343, 43.862415, 24.056511>,  <35.232197, 44.070744, 24.525442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668343, 43.862415, 24.056511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654736, 44.257149, 24.119749>,  <34.646572, 44.493988, 24.157692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654736, 44.257149, 24.119749>,  <34.668343, 43.862415, 24.056511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654736, 44.257149, 24.119749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145530, 0.151608, -0.977669,
		-0.988769, -0.056263, 0.138458,
		-0.034015, 0.986838, 0.158093,
		34.644531, 44.553200, 24.167177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121784, 43.990162, 23.668175>,  <34.668343, 43.862415, 24.056511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121784, 43.990162, 23.668175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296913, 44.346836, 23.714148>,  <34.401993, 44.560841, 23.741732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296913, 44.346836, 23.714148>,  <34.121784, 43.990162, 23.668175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296913, 44.346836, 23.714148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184739, 0.214335, -0.959131,
		-0.879874, 0.398700, 0.258570,
		0.437827, 0.891683, 0.114932,
		34.428261, 44.614342, 23.748627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669834, 44.526051, 23.362827>,  <34.121784, 43.990162, 23.668175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669834, 44.526051, 23.362827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047329, 44.656734, 23.383278>,  <34.273827, 44.735146, 23.395548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047329, 44.656734, 23.383278>,  <33.669834, 44.526051, 23.362827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047329, 44.656734, 23.383278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002268, 0.148215, -0.988953,
		-0.330679, 0.933430, 0.139136,
		0.943741, 0.326711, 0.051128,
		34.330452, 44.754749, 23.398617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614605, 45.265781, 23.039673>,  <33.669834, 44.526051, 23.362827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614605, 45.265781, 23.039673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990536, 45.135033, 22.999920>,  <34.216095, 45.056583, 22.976068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990536, 45.135033, 22.999920>,  <33.614605, 45.265781, 23.039673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990536, 45.135033, 22.999920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024333, 0.226112, -0.973797,
		0.340776, 0.917622, 0.204553,
		0.939830, -0.326869, -0.099382,
		34.272484, 45.036972, 22.970106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948021, 45.833523, 22.688616>,  <33.614605, 45.265781, 23.039673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948021, 45.833523, 22.688616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182446, 45.510880, 22.657856>,  <34.323101, 45.317295, 22.639400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182446, 45.510880, 22.657856>,  <33.948021, 45.833523, 22.688616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182446, 45.510880, 22.657856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214877, 0.246226, -0.945093,
		0.781255, 0.537359, 0.317626,
		0.586062, -0.806609, -0.076899,
		34.358265, 45.268898, 22.634787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494869, 46.058834, 22.254652>,  <33.948021, 45.833523, 22.688616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494869, 46.058834, 22.254652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537811, 45.661259, 22.245161>,  <34.563576, 45.422714, 22.239466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537811, 45.661259, 22.245161>,  <34.494869, 46.058834, 22.254652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537811, 45.661259, 22.245161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141347, 0.038883, -0.989196,
		0.984122, 0.102841, 0.144665,
		0.107355, -0.993938, -0.023729,
		34.570019, 45.363079, 22.238043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082184, 45.997856, 21.738403>,  <34.494869, 46.058834, 22.254652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082184, 45.997856, 21.738403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864651, 45.662441, 21.751717>,  <34.734131, 45.461193, 21.759705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864651, 45.662441, 21.751717>,  <35.082184, 45.997856, 21.738403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864651, 45.662441, 21.751717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028305, -0.057969, -0.997917,
		0.838717, -0.541757, 0.055260,
		-0.543832, -0.838534, 0.033285,
		34.701500, 45.410881, 21.761702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289612, 45.540546, 21.171766>,  <35.082184, 45.997856, 21.738403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289612, 45.540546, 21.171766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926136, 45.401474, 21.264202>,  <34.708050, 45.318031, 21.319664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926136, 45.401474, 21.264202>,  <35.289612, 45.540546, 21.171766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926136, 45.401474, 21.264202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178300, -0.177302, -0.967870,
		0.377482, -0.920697, 0.099121,
		-0.908689, -0.347680, 0.231089,
		34.653530, 45.297169, 21.333529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877319, 45.713276, 20.913877>,  <35.289612, 45.540546, 21.171766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877319, 45.713276, 20.913877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152981, 45.509422, 20.707829>,  <36.318378, 45.387112, 20.584200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152981, 45.509422, 20.707829>,  <35.877319, 45.713276, 20.913877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152981, 45.509422, 20.707829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185862, -0.562784, 0.805438,
		-0.700379, -0.650807, -0.293121,
		0.689148, -0.509631, -0.515122,
		36.359726, 45.356533, 20.553291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835480, 45.038883, 21.127985>,  <35.877319, 45.713276, 20.913877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835480, 45.038883, 21.127985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206692, 45.072685, 20.982866>,  <36.429420, 45.092964, 20.895796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206692, 45.072685, 20.982866>,  <35.835480, 45.038883, 21.127985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206692, 45.072685, 20.982866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354778, -0.497385, 0.791670,
		-0.113551, -0.863405, -0.491567,
		0.928029, 0.084502, -0.362796,
		36.485100, 45.098034, 20.874027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189167, 44.300777, 21.175825>,  <35.835480, 45.038883, 21.127985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189167, 44.300777, 21.175825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453274, 44.601181, 21.173655>,  <36.611740, 44.781422, 21.172352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453274, 44.601181, 21.173655>,  <36.189167, 44.300777, 21.175825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453274, 44.601181, 21.173655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483713, -0.419723, 0.768020,
		0.574512, -0.509725, -0.640403,
		0.660271, 0.751008, -0.005425,
		36.651356, 44.826485, 21.172028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767490, 43.937424, 21.476641>,  <36.189167, 44.300777, 21.175825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767490, 43.937424, 21.476641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851284, 44.325340, 21.526632>,  <36.901562, 44.558090, 21.556627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851284, 44.325340, 21.526632>,  <36.767490, 43.937424, 21.476641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851284, 44.325340, 21.526632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333116, -0.190950, 0.923348,
		0.919320, -0.151795, -0.363054,
		0.209485, 0.969792, 0.124979,
		36.914131, 44.616280, 21.564125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400631, 43.923698, 21.662260>,  <36.767490, 43.937424, 21.476641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400631, 43.923698, 21.662260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280979, 44.283180, 21.790537>,  <37.209187, 44.498871, 21.867504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280979, 44.283180, 21.790537>,  <37.400631, 43.923698, 21.662260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280979, 44.283180, 21.790537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250229, -0.250441, 0.935235,
		0.920819, 0.360003, -0.149969,
		-0.299129, 0.898709, 0.320694,
		37.191242, 44.552792, 21.886745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835636, 44.052898, 22.253531>,  <37.400631, 43.923698, 21.662260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835636, 44.052898, 22.253531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548092, 44.329983, 22.276814>,  <37.375565, 44.496235, 22.290783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548092, 44.329983, 22.276814>,  <37.835636, 44.052898, 22.253531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548092, 44.329983, 22.276814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074004, -0.006996, 0.997234,
		0.691206, 0.721178, -0.046234,
		-0.718859, 0.692715, 0.058206,
		37.332436, 44.537796, 22.294275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222218, 44.695816, 22.532146>,  <37.835636, 44.052898, 22.253531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222218, 44.695816, 22.532146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832970, 44.668823, 22.620222>,  <37.599422, 44.652630, 22.673067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832970, 44.668823, 22.620222>,  <38.222218, 44.695816, 22.532146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832970, 44.668823, 22.620222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230099, -0.245331, 0.941736,
		-0.009529, 0.967088, 0.254264,
		-0.973121, -0.067480, 0.220188,
		37.541035, 44.648579, 22.686279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139736, 45.062611, 23.120718>,  <38.222218, 44.695816, 22.532146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139736, 45.062611, 23.120718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835323, 44.804440, 23.094633>,  <37.652676, 44.649536, 23.078983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835323, 44.804440, 23.094633>,  <38.139736, 45.062611, 23.120718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835323, 44.804440, 23.094633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115711, -0.233970, 0.965334,
		-0.638310, 0.727105, 0.252742,
		-0.761033, -0.645427, -0.065211,
		37.607014, 44.610813, 23.075069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567574, 45.223484, 23.671959>,  <38.139736, 45.062611, 23.120718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567574, 45.223484, 23.671959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526340, 44.834888, 23.586561>,  <37.501602, 44.601730, 23.535322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526340, 44.834888, 23.586561>,  <37.567574, 45.223484, 23.671959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526340, 44.834888, 23.586561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064044, -0.207709, 0.976092,
		-0.992609, 0.114289, -0.040808,
		-0.103080, -0.971491, -0.213494,
		37.495415, 44.543442, 23.522512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063221, 45.035931, 24.113535>,  <37.567574, 45.223484, 23.671959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063221, 45.035931, 24.113535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264534, 44.706593, 24.008606>,  <37.385323, 44.508991, 23.945648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264534, 44.706593, 24.008606>,  <37.063221, 45.035931, 24.113535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264534, 44.706593, 24.008606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065029, -0.338796, 0.938610,
		-0.861672, -0.455326, -0.224051,
		0.503281, -0.823344, -0.262321,
		37.415520, 44.459591, 23.929909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981800, 44.701302, 24.677517>,  <37.063221, 45.035931, 24.113535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981800, 44.701302, 24.677517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198986, 44.424015, 24.487934>,  <37.329300, 44.257645, 24.374184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198986, 44.424015, 24.487934>,  <36.981800, 44.701302, 24.677517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198986, 44.424015, 24.487934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141628, -0.480723, 0.865359,
		-0.827724, -0.536989, -0.162839,
		0.542969, -0.693216, -0.473958,
		37.361877, 44.216049, 24.345747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773331, 44.073360, 24.944878>,  <36.981800, 44.701302, 24.677517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773331, 44.073360, 24.944878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117573, 43.949150, 24.783415>,  <37.324116, 43.874622, 24.686537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117573, 43.949150, 24.783415>,  <36.773331, 44.073360, 24.944878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117573, 43.949150, 24.783415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252425, -0.428308, 0.867660,
		-0.442323, -0.848602, -0.290217,
		0.860600, -0.310528, -0.403659,
		37.375751, 43.855991, 24.662317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887589, 43.342331, 25.006018>,  <36.773331, 44.073360, 24.944878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887589, 43.342331, 25.006018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269451, 43.455326, 24.968412>,  <37.498569, 43.523125, 24.945848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269451, 43.455326, 24.968412>,  <36.887589, 43.342331, 25.006018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269451, 43.455326, 24.968412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243020, -0.556957, 0.794192,
		0.171987, -0.781025, -0.600350,
		0.954653, 0.282488, -0.094015,
		37.555847, 43.540073, 24.940208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200630, 42.812263, 25.299713>,  <36.887589, 43.342331, 25.006018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200630, 42.812263, 25.299713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514088, 43.058804, 25.268681>,  <37.702164, 43.206726, 25.250061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514088, 43.058804, 25.268681>,  <37.200630, 42.812263, 25.299713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514088, 43.058804, 25.268681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481681, -0.524005, 0.702426,
		0.392285, -0.587822, -0.707516,
		0.783643, 0.616348, -0.077584,
		37.749180, 43.243710, 25.245405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840031, 42.484367, 25.164557>,  <37.200630, 42.812263, 25.299713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840031, 42.484367, 25.164557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892414, 42.821697, 25.373035>,  <37.923843, 43.024097, 25.498123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892414, 42.821697, 25.373035>,  <37.840031, 42.484367, 25.164557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892414, 42.821697, 25.373035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566461, -0.495105, 0.658781,
		0.813617, 0.208966, -0.542550,
		0.130956, 0.843329, 0.521197,
		37.931702, 43.074696, 25.529394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541187, 42.393272, 25.461372>,  <37.840031, 42.484367, 25.164557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541187, 42.393272, 25.461372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333733, 42.664482, 25.669720>,  <38.209259, 42.827206, 25.794727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333733, 42.664482, 25.669720>,  <38.541187, 42.393272, 25.461372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333733, 42.664482, 25.669720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401953, -0.344330, 0.848452,
		0.754619, 0.649403, -0.093951,
		-0.518637, 0.678022, 0.520867,
		38.178143, 42.867889, 25.825979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991337, 42.682728, 26.119837>,  <38.541187, 42.393272, 25.461372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991337, 42.682728, 26.119837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613506, 42.774277, 26.213978>,  <38.386806, 42.829208, 26.270462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613506, 42.774277, 26.213978>,  <38.991337, 42.682728, 26.119837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613506, 42.774277, 26.213978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136019, -0.379626, 0.915086,
		0.298785, 0.896382, 0.327454,
		-0.944577, 0.228874, 0.235352,
		38.330132, 42.842937, 26.284584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065845, 42.824966, 26.831295>,  <38.991337, 42.682728, 26.119837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065845, 42.824966, 26.831295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672543, 42.780743, 26.773355>,  <38.436562, 42.754208, 26.738592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672543, 42.780743, 26.773355>,  <39.065845, 42.824966, 26.831295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672543, 42.780743, 26.773355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093889, -0.373880, 0.922712,
		-0.156173, 0.920863, 0.357240,
		-0.983257, -0.110562, -0.144849,
		38.377563, 42.747574, 26.729900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748520, 43.064262, 27.368864>,  <39.065845, 42.824966, 26.831295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748520, 43.064262, 27.368864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510643, 42.791874, 27.197926>,  <38.367916, 42.628441, 27.095364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510643, 42.791874, 27.197926>,  <38.748520, 43.064262, 27.368864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510643, 42.791874, 27.197926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103398, -0.462354, 0.880646,
		-0.797278, 0.567898, 0.204546,
		-0.594690, -0.680970, -0.427344,
		38.332237, 42.587582, 27.069723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307003, 42.895016, 27.908325>,  <38.748520, 43.064262, 27.368864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307003, 42.895016, 27.908325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216824, 42.606068, 27.646837>,  <38.162716, 42.432697, 27.489944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216824, 42.606068, 27.646837>,  <38.307003, 42.895016, 27.908325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216824, 42.606068, 27.646837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105845, -0.648864, 0.753507,
		-0.968489, 0.239068, 0.069824,
		-0.225446, -0.722372, -0.653722,
		38.149189, 42.389355, 27.450720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584736, 42.700188, 27.968449>,  <38.307003, 42.895016, 27.908325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584736, 42.700188, 27.968449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751682, 42.382668, 27.791502>,  <37.851849, 42.192154, 27.685333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751682, 42.382668, 27.791502>,  <37.584736, 42.700188, 27.968449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751682, 42.382668, 27.791502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229648, -0.563124, 0.793821,
		-0.879243, -0.229724, -0.417323,
		0.417365, -0.793799, -0.442367,
		37.876892, 42.144527, 27.658792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042061, 42.201847, 27.865810>,  <37.584736, 42.700188, 27.968449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042061, 42.201847, 27.865810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405899, 42.036873, 27.885948>,  <37.624203, 41.937889, 27.898031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405899, 42.036873, 27.885948>,  <37.042061, 42.201847, 27.865810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405899, 42.036873, 27.885948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260903, -0.472642, 0.841748,
		-0.323373, -0.778784, -0.537518,
		0.909593, -0.412439, 0.050347,
		37.678776, 41.913139, 27.901052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906223, 41.480965, 27.879353>,  <37.042061, 42.201847, 27.865810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906223, 41.480965, 27.879353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266407, 41.549282, 28.039351>,  <37.482517, 41.590271, 28.135349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266407, 41.549282, 28.039351>,  <36.906223, 41.480965, 27.879353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266407, 41.549282, 28.039351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254059, -0.539914, 0.802463,
		0.353016, -0.824211, -0.442782,
		0.900463, 0.170790, 0.399996,
		37.536545, 41.600517, 28.159349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006584, 40.880215, 28.265099>,  <36.906223, 41.480965, 27.879353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006584, 40.880215, 28.265099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281979, 41.130180, 28.412323>,  <37.447216, 41.280159, 28.500658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281979, 41.130180, 28.412323>,  <37.006584, 40.880215, 28.265099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281979, 41.130180, 28.412323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164295, -0.359915, 0.918405,
		0.706398, -0.692777, -0.145124,
		0.688483, 0.624917, 0.368063,
		37.488522, 41.317654, 28.522741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461102, 40.543625, 28.650312>,  <37.006584, 40.880215, 28.265099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461102, 40.543625, 28.650312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468914, 40.921131, 28.782330>,  <37.473602, 41.147636, 28.861540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468914, 40.921131, 28.782330>,  <37.461102, 40.543625, 28.650312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468914, 40.921131, 28.782330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036610, -0.330558, 0.943075,
		0.999139, -0.006334, -0.041007,
		0.019529, 0.943764, 0.330042,
		37.474773, 41.204262, 28.881342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905403, 40.477337, 29.202322>,  <37.461102, 40.543625, 28.650312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905403, 40.477337, 29.202322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732986, 40.827263, 29.290773>,  <37.629536, 41.037220, 29.343843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732986, 40.827263, 29.290773>,  <37.905403, 40.477337, 29.202322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732986, 40.827263, 29.290773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098875, -0.197794, 0.975244,
		0.896899, 0.442234, -0.001240,
		-0.431041, 0.874818, 0.221127,
		37.603676, 41.089706, 29.357111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224152, 40.684265, 29.774929>,  <37.905403, 40.477337, 29.202322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224152, 40.684265, 29.774929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903072, 40.922646, 29.784092>,  <37.710426, 41.065674, 29.789591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903072, 40.922646, 29.784092>,  <38.224152, 40.684265, 29.774929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903072, 40.922646, 29.784092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132047, 0.140135, 0.981288,
		0.581589, 0.790699, -0.191179,
		-0.802694, 0.595951, 0.022908,
		37.662266, 41.101433, 29.790964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376827, 41.188618, 30.177898>,  <38.224152, 40.684265, 29.774929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376827, 41.188618, 30.177898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976830, 41.189289, 30.176300>,  <37.736832, 41.189690, 30.175341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976830, 41.189289, 30.176300>,  <38.376827, 41.188618, 30.177898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976830, 41.189289, 30.176300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003853, 0.078653, 0.996895,
		0.001985, 0.996901, -0.078646,
		-0.999991, 0.001676, -0.003997,
		37.676834, 41.189793, 30.175100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200329, 41.720406, 30.612032>,  <38.376827, 41.188618, 30.177898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200329, 41.720406, 30.612032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852070, 41.524647, 30.592188>,  <37.643116, 41.407192, 30.580280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852070, 41.524647, 30.592188>,  <38.200329, 41.720406, 30.612032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852070, 41.524647, 30.592188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123305, 0.119495, 0.985148,
		-0.476200, 0.863836, -0.164383,
		-0.870649, -0.489397, -0.049612,
		37.590874, 41.377827, 30.577305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716618, 42.014221, 31.026237>,  <38.200329, 41.720406, 30.612032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716618, 42.014221, 31.026237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602802, 41.631981, 30.995602>,  <37.534512, 41.402637, 30.977221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602802, 41.631981, 30.995602>,  <37.716618, 42.014221, 31.026237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602802, 41.631981, 30.995602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055046, -0.096048, 0.993854,
		-0.957083, 0.278575, 0.079931,
		-0.284539, -0.955600, -0.076591,
		37.517441, 41.345303, 30.972624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462383, 41.902279, 31.627357>,  <37.716618, 42.014221, 31.026237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462383, 41.902279, 31.627357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493324, 41.525394, 31.496967>,  <37.511890, 41.299263, 31.418734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493324, 41.525394, 31.496967>,  <37.462383, 41.902279, 31.627357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493324, 41.525394, 31.496967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282680, -0.292810, 0.913430,
		-0.956090, -0.162801, 0.243695,
		0.077351, -0.942209, -0.325973,
		37.516529, 41.242733, 31.399176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122997, 41.451542, 32.207577>,  <37.462383, 41.902279, 31.627357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122997, 41.451542, 32.207577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377918, 41.233730, 31.989464>,  <37.530872, 41.103043, 31.858595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377918, 41.233730, 31.989464>,  <37.122997, 41.451542, 32.207577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377918, 41.233730, 31.989464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326233, -0.450422, 0.831079,
		-0.698155, -0.707538, -0.109411,
		0.637301, -0.544528, -0.545286,
		37.569107, 41.070374, 31.825878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058968, 40.817390, 32.490273>,  <37.122997, 41.451542, 32.207577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058968, 40.817390, 32.490273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405323, 40.789734, 32.292095>,  <37.613136, 40.773140, 32.173191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405323, 40.789734, 32.292095>,  <37.058968, 40.817390, 32.490273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405323, 40.789734, 32.292095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353024, -0.617240, 0.703128,
		-0.354421, -0.783731, -0.510051,
		0.865887, -0.069143, -0.495438,
		37.665089, 40.768990, 32.143463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181488, 40.054813, 32.351841>,  <37.058968, 40.817390, 32.490273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181488, 40.054813, 32.351841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535641, 40.236279, 32.311283>,  <37.748135, 40.345158, 32.286949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535641, 40.236279, 32.311283>,  <37.181488, 40.054813, 32.351841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535641, 40.236279, 32.311283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423025, -0.695880, 0.580345,
		0.192725, -0.556721, -0.808034,
		0.885385, 0.453665, -0.101394,
		37.801258, 40.372379, 32.280865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648399, 39.613102, 32.112942>,  <37.181488, 40.054813, 32.351841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648399, 39.613102, 32.112942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905754, 39.871078, 32.277920>,  <38.060165, 40.025864, 32.376907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905754, 39.871078, 32.277920>,  <37.648399, 39.613102, 32.112942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905754, 39.871078, 32.277920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423068, -0.748559, 0.510562,
		0.638018, -0.153998, -0.754465,
		0.643387, 0.644938, 0.412442,
		38.098770, 40.064560, 32.401653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410156, 39.350529, 32.048988>,  <37.648399, 39.613102, 32.112942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410156, 39.350529, 32.048988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416615, 39.590622, 32.368855>,  <38.420490, 39.734676, 32.560772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416615, 39.590622, 32.368855>,  <38.410156, 39.350529, 32.048988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416615, 39.590622, 32.368855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550377, -0.673033, 0.494076,
		0.834760, 0.432140, -0.341220,
		0.016142, 0.600235, 0.799661,
		38.421455, 39.770691, 32.608753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016983, 39.186306, 32.381233>,  <38.410156, 39.350529, 32.048988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016983, 39.186306, 32.381233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796806, 39.361286, 32.665672>,  <38.664700, 39.466274, 32.836334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796806, 39.361286, 32.665672>,  <39.016983, 39.186306, 32.381233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796806, 39.361286, 32.665672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402249, -0.607398, 0.685029,
		0.731583, 0.663103, 0.158372,
		-0.550439, 0.437450, 0.711094,
		38.631676, 39.492519, 32.879002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545681, 39.373295, 32.982262>,  <39.016983, 39.186306, 32.381233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545681, 39.373295, 32.982262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163372, 39.338680, 33.094692>,  <38.933987, 39.317909, 33.162151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163372, 39.338680, 33.094692>,  <39.545681, 39.373295, 32.982262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163372, 39.338680, 33.094692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266869, -0.656825, 0.705239,
		0.123586, 0.749061, 0.650872,
		-0.955776, -0.086540, 0.281075,
		38.876640, 39.312717, 33.179016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703579, 39.337807, 33.682293>,  <39.545681, 39.373295, 32.982262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703579, 39.337807, 33.682293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325016, 39.215832, 33.639709>,  <39.097878, 39.142647, 33.614159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325016, 39.215832, 33.639709>,  <39.703579, 39.337807, 33.682293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325016, 39.215832, 33.639709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160617, -0.730293, 0.663984,
		-0.280219, 0.611298, 0.740130,
		-0.946403, -0.304939, -0.106457,
		39.041096, 39.124352, 33.607773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348392, 39.347431, 34.416733>,  <39.703579, 39.337807, 33.682293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348392, 39.347431, 34.416733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095650, 39.135887, 34.190083>,  <38.944004, 39.008961, 34.054092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095650, 39.135887, 34.190083>,  <39.348392, 39.347431, 34.416733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095650, 39.135887, 34.190083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033606, -0.749056, 0.661654,
		-0.774357, 0.399028, 0.491068,
		-0.631856, -0.528859, -0.566627,
		38.906094, 38.977230, 34.020096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764935, 39.169712, 34.839317>,  <39.348392, 39.347431, 34.416733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764935, 39.169712, 34.839317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789173, 38.894871, 34.549706>,  <38.803715, 38.729965, 34.375938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789173, 38.894871, 34.549706>,  <38.764935, 39.169712, 34.839317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789173, 38.894871, 34.549706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023263, -0.724194, 0.689204,
		-0.997891, -0.058606, -0.027898,
		0.060595, -0.687101, -0.724030,
		38.807350, 38.688740, 34.332497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720562, 38.488400, 35.107201>,  <38.764935, 39.169712, 34.839317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720562, 38.488400, 35.107201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675617, 38.144058, 35.305717>,  <38.648651, 37.937454, 35.424828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675617, 38.144058, 35.305717>,  <38.720562, 38.488400, 35.107201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675617, 38.144058, 35.305717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966326, 0.211024, 0.147251,
		-0.231492, -0.463037, -0.855575,
		-0.112364, -0.860852, 0.496295,
		38.641907, 37.885803, 35.454605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225422, 37.996803, 34.681744>,  <38.720562, 38.488400, 35.107201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225422, 37.996803, 34.681744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214737, 37.897087, 35.068970>,  <38.208328, 37.837257, 35.301304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214737, 37.897087, 35.068970>,  <38.225422, 37.996803, 34.681744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214737, 37.897087, 35.068970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991614, 0.129102, 0.005886,
		-0.126447, -0.959785, -0.250646,
		-0.026709, -0.249288, 0.968061,
		38.206722, 37.822300, 35.359386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562298, 37.639183, 34.754864>,  <38.225422, 37.996803, 34.681744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562298, 37.639183, 34.754864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681587, 37.730080, 35.125683>,  <37.753162, 37.784618, 35.348175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681587, 37.730080, 35.125683>,  <37.562298, 37.639183, 34.754864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681587, 37.730080, 35.125683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954423, 0.059017, 0.292564,
		0.011771, -0.972049, 0.234484,
		0.298225, 0.227241, 0.927051,
		37.771053, 37.798252, 35.403797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277042, 37.206955, 35.171379>,  <37.562298, 37.639183, 34.754864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277042, 37.206955, 35.171379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311817, 37.545242, 35.381977>,  <37.332684, 37.748215, 35.508335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311817, 37.545242, 35.381977>,  <37.277042, 37.206955, 35.171379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311817, 37.545242, 35.381977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993091, 0.031767, 0.112963,
		0.078811, -0.532677, 0.842641,
		0.086941, 0.845723, 0.526493,
		37.337898, 37.798958, 35.539925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086926, 37.155922, 35.900101>,  <37.277042, 37.206955, 35.171379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086926, 37.155922, 35.900101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048168, 37.542816, 35.806229>,  <37.024914, 37.774952, 35.749905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048168, 37.542816, 35.806229>,  <37.086926, 37.155922, 35.900101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048168, 37.542816, 35.806229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994044, -0.082233, 0.071509,
		0.049867, 0.240209, 0.969440,
		-0.096897, 0.967232, -0.234677,
		37.019100, 37.832985, 35.735825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385185, 37.394924, 36.083858>,  <37.086926, 37.155922, 35.900101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385185, 37.394924, 36.083858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551540, 37.750923, 36.009094>,  <36.651352, 37.964523, 35.964233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551540, 37.750923, 36.009094>,  <36.385185, 37.394924, 36.083858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551540, 37.750923, 36.009094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879981, 0.445702, 0.164264,
		0.229504, 0.096166, 0.968545,
		0.415886, 0.890001, -0.186915,
		36.676308, 38.017925, 35.953018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066402, 37.918026, 36.524982>,  <36.385185, 37.394924, 36.083858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066402, 37.918026, 36.524982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233238, 38.112850, 36.218044>,  <36.333340, 38.229744, 36.033882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233238, 38.112850, 36.218044>,  <36.066402, 37.918026, 36.524982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233238, 38.112850, 36.218044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832022, 0.544384, -0.106706,
		0.365757, 0.682951, 0.632298,
		0.417087, 0.487057, -0.767341,
		36.358364, 38.258968, 35.987843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766426, 38.669666, 36.511181>,  <36.066402, 37.918026, 36.524982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766426, 38.669666, 36.511181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913670, 38.607567, 36.144489>,  <36.002014, 38.570309, 35.924473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913670, 38.607567, 36.144489>,  <35.766426, 38.669666, 36.511181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913670, 38.607567, 36.144489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613121, 0.700688, -0.364855,
		0.698985, 0.696372, 0.162741,
		0.368106, -0.155248, -0.916731,
		36.024101, 38.560993, 35.869469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630840, 39.289684, 36.181580>,  <35.766426, 38.669666, 36.511181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630840, 39.289684, 36.181580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736973, 39.076275, 35.860344>,  <35.800652, 38.948231, 35.667603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736973, 39.076275, 35.860344>,  <35.630840, 39.289684, 36.181580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736973, 39.076275, 35.860344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625032, 0.539036, -0.564602,
		0.734121, 0.651765, -0.190444,
		0.265332, -0.533519, -0.803092,
		35.816574, 38.916218, 35.619415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814636, 39.721218, 35.700951>,  <35.630840, 39.289684, 36.181580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814636, 39.721218, 35.700951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707047, 39.399288, 35.489326>,  <35.642490, 39.206131, 35.362350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707047, 39.399288, 35.489326>,  <35.814636, 39.721218, 35.700951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707047, 39.399288, 35.489326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690835, 0.543968, -0.476283,
		0.671117, 0.237384, -0.702318,
		-0.268977, -0.804827, -0.529060,
		35.626354, 39.157841, 35.330608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753479, 40.024048, 35.103424>,  <35.814636, 39.721218, 35.700951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753479, 40.024048, 35.103424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569202, 39.671127, 35.064846>,  <35.458637, 39.459373, 35.041698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569202, 39.671127, 35.064846>,  <35.753479, 40.024048, 35.103424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569202, 39.671127, 35.064846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583458, 0.382938, -0.716195,
		0.668833, -0.273678, -0.691204,
		-0.460695, -0.882303, -0.096442,
		35.430992, 39.406437, 35.035915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669785, 39.802902, 34.426044>,  <35.753479, 40.024048, 35.103424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669785, 39.802902, 34.426044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376720, 39.574059, 34.573502>,  <35.200882, 39.436752, 34.661976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376720, 39.574059, 34.573502>,  <35.669785, 39.802902, 34.426044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376720, 39.574059, 34.573502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665843, 0.490371, -0.562307,
		0.140930, -0.657439, -0.740212,
		-0.732660, -0.572111, 0.368643,
		35.156921, 39.402424, 34.684093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288998, 39.578922, 33.845657>,  <35.669785, 39.802902, 34.426044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288998, 39.578922, 33.845657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047176, 39.534916, 34.161232>,  <34.902084, 39.508511, 34.350574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047176, 39.534916, 34.161232>,  <35.288998, 39.578922, 33.845657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047176, 39.534916, 34.161232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724517, 0.487555, -0.487200,
		-0.331050, -0.866133, -0.374459,
		-0.604550, -0.110014, 0.788934,
		34.865810, 39.501911, 34.397911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603413, 39.246593, 33.649734>,  <35.288998, 39.578922, 33.845657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603413, 39.246593, 33.649734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570099, 39.487480, 33.967327>,  <34.550110, 39.632011, 34.157883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570099, 39.487480, 33.967327>,  <34.603413, 39.246593, 33.649734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570099, 39.487480, 33.967327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724276, 0.510664, -0.463300,
		-0.684462, -0.613647, 0.393637,
		-0.083287, 0.602213, 0.793979,
		34.545113, 39.668144, 34.205521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878784, 39.287270, 33.811375>,  <34.603413, 39.246593, 33.649734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878784, 39.287270, 33.811375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067009, 39.608624, 33.957333>,  <34.179943, 39.801437, 34.044907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067009, 39.608624, 33.957333>,  <33.878784, 39.287270, 33.811375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067009, 39.608624, 33.957333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629078, 0.595432, -0.499722,
		-0.618738, 0.005603, 0.785578,
		0.470558, 0.803386, 0.364892,
		34.208176, 39.849640, 34.066799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353111, 39.753914, 34.055580>,  <33.878784, 39.287270, 33.811375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353111, 39.753914, 34.055580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685184, 39.972298, 34.010464>,  <33.884430, 40.103329, 33.983395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685184, 39.972298, 34.010464>,  <33.353111, 39.753914, 34.055580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685184, 39.972298, 34.010464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511770, 0.666110, -0.542577,
		-0.221096, 0.508160, 0.832400,
		0.830186, 0.545959, -0.112787,
		33.934238, 40.136086, 33.976627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123192, 40.465576, 34.111065>,  <33.353111, 39.753914, 34.055580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123192, 40.465576, 34.111065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482647, 40.517399, 33.943413>,  <33.698318, 40.548492, 33.842823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482647, 40.517399, 33.943413>,  <33.123192, 40.465576, 34.111065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482647, 40.517399, 33.943413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384599, 0.692276, -0.610604,
		0.211044, 0.709907, 0.671932,
		0.898634, 0.129560, -0.419131,
		33.752235, 40.556267, 33.817673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057034, 41.108997, 33.931126>,  <33.123192, 40.465576, 34.111065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057034, 41.108997, 33.931126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361786, 40.985107, 33.703579>,  <33.544636, 40.910774, 33.567051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361786, 40.985107, 33.703579>,  <33.057034, 41.108997, 33.931126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361786, 40.985107, 33.703579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338021, 0.559064, -0.757093,
		0.552526, 0.769101, 0.321244,
		0.761877, -0.309727, -0.568870,
		33.590347, 40.892189, 33.532917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499176, 41.637142, 33.660378>,  <33.057034, 41.108997, 33.931126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499176, 41.637142, 33.660378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521244, 41.330269, 33.404758>,  <33.534485, 41.146145, 33.251389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521244, 41.330269, 33.404758>,  <33.499176, 41.637142, 33.660378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521244, 41.330269, 33.404758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405298, 0.567718, -0.716541,
		0.912519, 0.298534, -0.279619,
		0.055167, -0.767186, -0.639048,
		33.537796, 41.100113, 33.213043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921120, 41.902878, 33.074589>,  <33.499176, 41.637142, 33.660378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921120, 41.902878, 33.074589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630028, 41.631054, 33.037472>,  <33.455372, 41.467960, 33.015202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630028, 41.631054, 33.037472>,  <33.921120, 41.902878, 33.074589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630028, 41.631054, 33.037472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609365, 0.702705, -0.367261,
		0.314781, -0.210721, -0.925478,
		-0.727727, -0.679560, -0.092792,
		33.411709, 41.427185, 33.009636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634747, 41.927563, 32.381279>,  <33.921120, 41.902878, 33.074589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634747, 41.927563, 32.381279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337421, 41.738377, 32.570503>,  <33.159027, 41.624866, 32.684036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337421, 41.738377, 32.570503>,  <33.634747, 41.927563, 32.381279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337421, 41.738377, 32.570503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665726, 0.592266, -0.453905,
		-0.065495, -0.652322, -0.755107,
		-0.743316, -0.472966, 0.473058,
		33.114426, 41.596485, 32.712421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081436, 41.725250, 31.785027>,  <33.634747, 41.927563, 32.381279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081436, 41.725250, 31.785027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883942, 41.779720, 32.128578>,  <32.765446, 41.812405, 32.334709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883942, 41.779720, 32.128578>,  <33.081436, 41.725250, 31.785027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883942, 41.779720, 32.128578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669072, 0.571406, -0.475224,
		-0.555484, -0.809290, -0.191013,
		-0.493741, 0.136178, 0.858881,
		32.735821, 41.820572, 32.386242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636753, 41.191410, 31.718008>,  <33.081436, 41.725250, 31.785027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636753, 41.191410, 31.718008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569492, 40.818741, 31.589190>,  <32.529137, 40.595139, 31.511898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569492, 40.818741, 31.589190>,  <32.636753, 41.191410, 31.718008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569492, 40.818741, 31.589190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807256, -0.317646, 0.497433,
		-0.565741, -0.176328, 0.805510,
		-0.168156, -0.931670, -0.322047,
		32.519047, 40.539238, 31.492575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651184, 40.776009, 32.284870>,  <32.636753, 41.191410, 31.718008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651184, 40.776009, 32.284870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775425, 40.607090, 31.944239>,  <32.849968, 40.505737, 31.739859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775425, 40.607090, 31.944239>,  <32.651184, 40.776009, 32.284870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775425, 40.607090, 31.944239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887720, -0.191420, 0.418703,
		-0.339828, -0.886015, 0.315427,
		0.310598, -0.422298, -0.851583,
		32.868603, 40.480400, 31.688765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525043, 40.029873, 32.641010>,  <32.651184, 40.776009, 32.284870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525043, 40.029873, 32.641010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496288, 40.289879, 32.943615>,  <32.479034, 40.445885, 33.125179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496288, 40.289879, 32.943615>,  <32.525043, 40.029873, 32.641010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496288, 40.289879, 32.943615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965991, 0.143508, -0.215096,
		-0.248381, -0.746244, 0.617597,
		-0.071884, 0.650019, 0.756511,
		32.474724, 40.484886, 33.170567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230549, 40.316673, 32.449642>,  <32.525043, 40.029873, 32.641010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230549, 40.316673, 32.449642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385670, 40.678543, 32.520264>,  <33.478741, 40.895664, 32.562637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385670, 40.678543, 32.520264>,  <33.230549, 40.316673, 32.449642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385670, 40.678543, 32.520264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666926, -0.407615, 0.623747,
		0.636256, -0.124139, -0.761425,
		0.387799, 0.904677, 0.176556,
		33.502010, 40.949947, 32.573231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934109, 40.073360, 32.554981>,  <33.230549, 40.316673, 32.449642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934109, 40.073360, 32.554981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816055, 40.416759, 32.722733>,  <33.745224, 40.622799, 32.823383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816055, 40.416759, 32.722733>,  <33.934109, 40.073360, 32.554981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816055, 40.416759, 32.722733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605473, -0.171502, 0.777168,
		0.739122, 0.483288, -0.469182,
		-0.295130, 0.858499, 0.419378,
		33.727516, 40.674309, 32.848545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527145, 40.305550, 32.750355>,  <33.934109, 40.073360, 32.554981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527145, 40.305550, 32.750355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231812, 40.479618, 32.956459>,  <34.054611, 40.584061, 33.080120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231812, 40.479618, 32.956459>,  <34.527145, 40.305550, 32.750355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231812, 40.479618, 32.956459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489651, -0.179500, 0.853242,
		0.463797, 0.882272, -0.080553,
		-0.738332, 0.435174, 0.515257,
		34.010311, 40.610168, 33.111034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879574, 40.634960, 33.265213>,  <34.527145, 40.305550, 32.750355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879574, 40.634960, 33.265213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511387, 40.623772, 33.421143>,  <34.290474, 40.617058, 33.514702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511387, 40.623772, 33.421143>,  <34.879574, 40.634960, 33.265213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511387, 40.623772, 33.421143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370636, -0.378916, 0.847969,
		0.123995, 0.925008, 0.359145,
		-0.920464, -0.027968, 0.389825,
		34.235249, 40.615383, 33.538090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895451, 40.993427, 33.807789>,  <34.879574, 40.634960, 33.265213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895451, 40.993427, 33.807789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593735, 40.738689, 33.871639>,  <34.412704, 40.585846, 33.909950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593735, 40.738689, 33.871639>,  <34.895451, 40.993427, 33.807789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593735, 40.738689, 33.871639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407535, -0.263533, 0.874337,
		-0.514750, 0.724554, 0.458316,
		-0.754286, -0.636845, 0.159628,
		34.367451, 40.547634, 33.919529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892235, 40.903366, 34.447819>,  <34.895451, 40.993427, 33.807789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892235, 40.903366, 34.447819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661655, 40.595058, 34.339283>,  <34.523308, 40.410072, 34.274162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661655, 40.595058, 34.339283>,  <34.892235, 40.903366, 34.447819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661655, 40.595058, 34.339283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315313, -0.516157, 0.796341,
		-0.753847, 0.373493, 0.540571,
		-0.576447, -0.770769, -0.271336,
		34.488720, 40.363827, 34.257881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560421, 40.696629, 35.081745>,  <34.892235, 40.903366, 34.447819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560421, 40.696629, 35.081745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562492, 40.380497, 34.836681>,  <34.563736, 40.190819, 34.689644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562492, 40.380497, 34.836681>,  <34.560421, 40.696629, 35.081745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562492, 40.380497, 34.836681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142475, -0.605831, 0.782732,
		-0.989785, -0.091340, 0.109467,
		0.005176, -0.790333, -0.612656,
		34.564045, 40.143398, 34.652885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074203, 40.121235, 35.307571>,  <34.560421, 40.696629, 35.081745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074203, 40.121235, 35.307571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403511, 39.989357, 35.122734>,  <34.601093, 39.910229, 35.011829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403511, 39.989357, 35.122734>,  <34.074203, 40.121235, 35.307571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403511, 39.989357, 35.122734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244378, -0.528898, 0.812740,
		-0.512356, -0.782029, -0.354855,
		0.823268, -0.329694, -0.462094,
		34.650490, 39.890446, 34.984104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970406, 39.366833, 35.336731>,  <34.074203, 40.121235, 35.307571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970406, 39.366833, 35.336731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249691, 39.379955, 35.050678>,  <34.417263, 39.387829, 34.879047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249691, 39.379955, 35.050678>,  <33.970406, 39.366833, 35.336731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249691, 39.379955, 35.050678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663311, -0.405397, 0.629025,
		-0.269280, -0.913552, -0.304813,
		0.698217, 0.032802, -0.715134,
		34.459156, 39.389797, 34.836140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214752, 38.678722, 35.298645>,  <33.970406, 39.366833, 35.336731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214752, 38.678722, 35.298645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493050, 38.908630, 35.126328>,  <34.660027, 39.046574, 35.022938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493050, 38.908630, 35.126328>,  <34.214752, 38.678722, 35.298645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493050, 38.908630, 35.126328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716821, -0.517217, 0.467605,
		0.045951, -0.634135, -0.771856,
		0.695741, 0.574770, -0.430794,
		34.701771, 39.081062, 34.997089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718716, 38.276012, 35.215046>,  <34.214752, 38.678722, 35.298645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718716, 38.276012, 35.215046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924622, 38.612694, 35.149872>,  <35.048164, 38.814705, 35.110767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924622, 38.612694, 35.149872>,  <34.718716, 38.276012, 35.215046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924622, 38.612694, 35.149872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839995, -0.457135, 0.292293,
		0.171542, -0.287327, -0.942346,
		0.514763, 0.841707, -0.162936,
		35.079052, 38.865208, 35.100990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278584, 38.013554, 34.824612>,  <34.718716, 38.276012, 35.215046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278584, 38.013554, 34.824612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385139, 38.351597, 35.010010>,  <35.449074, 38.554424, 35.121246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385139, 38.351597, 35.010010>,  <35.278584, 38.013554, 34.824612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385139, 38.351597, 35.010010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812242, -0.455722, 0.364118,
		0.518944, 0.279473, -0.807832,
		0.266386, 0.845111, 0.463493,
		35.465054, 38.605129, 35.149059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836506, 38.270081, 34.544647>,  <35.278584, 38.013554, 34.824612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836506, 38.270081, 34.544647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809067, 38.388828, 34.925629>,  <35.792603, 38.460075, 35.154217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809067, 38.388828, 34.925629>,  <35.836506, 38.270081, 34.544647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809067, 38.388828, 34.925629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918470, -0.353939, 0.176464,
		0.389496, 0.886903, -0.248386,
		-0.068593, 0.296867, 0.952452,
		35.788490, 38.477890, 35.211365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473049, 38.414169, 34.660114>,  <35.836506, 38.270081, 34.544647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473049, 38.414169, 34.660114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336147, 38.456234, 35.033596>,  <36.254005, 38.481472, 35.257687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336147, 38.456234, 35.033596>,  <36.473049, 38.414169, 34.660114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336147, 38.456234, 35.033596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873231, -0.331264, 0.357395,
		0.346887, 0.937659, 0.021547,
		-0.342252, 0.105160, 0.933705,
		36.233471, 38.487782, 35.313709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999149, 38.713684, 34.961678>,  <36.473049, 38.414169, 34.660114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999149, 38.713684, 34.961678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797924, 38.555202, 35.268909>,  <36.677189, 38.460114, 35.453251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797924, 38.555202, 35.268909>,  <36.999149, 38.713684, 34.961678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797924, 38.555202, 35.268909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851674, -0.378334, 0.362650,
		0.146909, 0.836592, 0.527762,
		-0.503060, -0.396205, 0.768084,
		36.647007, 38.436340, 35.499336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156483, 39.110092, 35.584854>,  <36.999149, 38.713684, 34.961678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156483, 39.110092, 35.584854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078220, 38.724812, 35.658566>,  <37.031265, 38.493645, 35.702793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078220, 38.724812, 35.658566>,  <37.156483, 39.110092, 35.584854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078220, 38.724812, 35.658566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948986, -0.138576, 0.283236,
		-0.247277, 0.230298, 0.941179,
		-0.195654, -0.963203, 0.184283,
		37.019524, 38.435852, 35.713852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561569, 38.957596, 36.190769>,  <37.156483, 39.110092, 35.584854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561569, 38.957596, 36.190769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490280, 38.611366, 36.003571>,  <37.447506, 38.403629, 35.891251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490280, 38.611366, 36.003571>,  <37.561569, 38.957596, 36.190769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490280, 38.611366, 36.003571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892448, -0.342517, 0.293631,
		-0.414456, -0.365331, 0.833522,
		-0.178223, -0.865572, -0.467997,
		37.436813, 38.351696, 35.863171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597874, 38.390396, 36.682564>,  <37.561569, 38.957596, 36.190769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597874, 38.390396, 36.682564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649323, 38.251015, 36.311180>,  <37.680191, 38.167385, 36.088352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649323, 38.251015, 36.311180>,  <37.597874, 38.390396, 36.682564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649323, 38.251015, 36.311180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877411, -0.396340, 0.270303,
		-0.462174, -0.849407, 0.254762,
		0.128625, -0.348458, -0.928457,
		37.687908, 38.146477, 36.032642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150146, 38.049206, 36.664879>,  <37.597874, 38.390396, 36.682564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150146, 38.049206, 36.664879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046108, 37.959709, 36.289158>,  <37.983685, 37.906013, 36.063725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046108, 37.959709, 36.289158>,  <38.150146, 38.049206, 36.664879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046108, 37.959709, 36.289158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840277, -0.531688, -0.106029,
		-0.475693, -0.816853, 0.326293,
		-0.260096, -0.223740, -0.939303,
		37.968079, 37.892586, 36.007366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265335, 37.353905, 36.605396>,  <38.150146, 38.049206, 36.664879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265335, 37.353905, 36.605396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228882, 37.470947, 36.224644>,  <38.207008, 37.541172, 35.996193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228882, 37.470947, 36.224644>,  <38.265335, 37.353905, 36.605396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228882, 37.470947, 36.224644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832061, -0.502804, -0.234227,
		-0.547146, -0.813369, -0.197643,
		-0.091137, 0.292608, -0.951880,
		38.201542, 37.558731, 35.939079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422108, 36.813393, 36.200851>,  <38.265335, 37.353905, 36.605396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422108, 36.813393, 36.200851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512341, 37.142662, 35.992432>,  <38.566483, 37.340225, 35.867382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512341, 37.142662, 35.992432>,  <38.422108, 36.813393, 36.200851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512341, 37.142662, 35.992432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917883, -0.358830, -0.169503,
		-0.326498, -0.440022, -0.836528,
		0.225586, 0.823178, -0.521046,
		38.580017, 37.389614, 35.836117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767071, 36.611931, 35.561363>,  <38.422108, 36.813393, 36.200851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767071, 36.611931, 35.561363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889034, 36.974014, 35.679768>,  <38.962212, 37.191265, 35.750809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889034, 36.974014, 35.679768>,  <38.767071, 36.611931, 35.561363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889034, 36.974014, 35.679768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946646, -0.253999, -0.198360,
		-0.104372, 0.340699, -0.934361,
		0.304908, 0.905212, 0.296011,
		38.980507, 37.245579, 35.768570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201897, 36.721481, 35.003567>,  <38.767071, 36.611931, 35.561363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201897, 36.721481, 35.003567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282219, 36.908443, 35.347942>,  <39.330414, 37.020622, 35.554565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282219, 36.908443, 35.347942>,  <39.201897, 36.721481, 35.003567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282219, 36.908443, 35.347942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920061, -0.391770, -0.001903,
		0.336399, 0.792495, -0.508712,
		0.200806, 0.467406, 0.860934,
		39.342461, 37.048664, 35.606224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764641, 37.244888, 34.910980>,  <39.201897, 36.721481, 35.003567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764641, 37.244888, 34.910980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765800, 37.099804, 35.283737>,  <39.766495, 37.012753, 35.507393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765800, 37.099804, 35.283737>,  <39.764641, 37.244888, 34.910980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765800, 37.099804, 35.283737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877588, -0.445839, -0.176256,
		0.479406, 0.818332, 0.317022,
		0.002896, -0.362713, 0.931896,
		39.766670, 36.990990, 35.563305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409023, 37.450710, 35.187672>,  <39.764641, 37.244888, 34.910980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409023, 37.450710, 35.187672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255283, 37.109570, 35.329052>,  <40.163040, 36.904884, 35.413879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255283, 37.109570, 35.329052>,  <40.409023, 37.450710, 35.187672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255283, 37.109570, 35.329052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865848, -0.465839, -0.182486,
		0.320282, 0.235893, 0.917482,
		-0.384351, -0.852848, 0.353447,
		40.139977, 36.853714, 35.435085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820507, 37.249683, 35.792538>,  <40.409023, 37.450710, 35.187672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820507, 37.249683, 35.792538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659851, 36.964451, 35.562683>,  <40.563457, 36.793312, 35.424770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659851, 36.964451, 35.562683>,  <40.820507, 37.249683, 35.792538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659851, 36.964451, 35.562683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915768, -0.307615, -0.258344,
		0.007454, -0.629993, 0.776565,
		-0.401638, -0.713079, -0.574634,
		40.539360, 36.750526, 35.390293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574696, 37.343700, 35.823444>,  <40.820507, 37.249683, 35.792538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574696, 37.343700, 35.823444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810112, 37.269333, 36.138165>,  <41.951363, 37.224712, 36.326996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810112, 37.269333, 36.138165>,  <41.574696, 37.343700, 35.823444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810112, 37.269333, 36.138165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377594, -0.923745, 0.064170,
		0.714869, -0.334857, -0.613868,
		0.588546, -0.185920, 0.786796,
		41.986675, 37.213558, 36.374203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339817, 37.155502, 35.694981>,  <41.574696, 37.343700, 35.823444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339817, 37.155502, 35.694981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407001, 37.395390, 35.382027>,  <42.447311, 37.539322, 35.194256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407001, 37.395390, 35.382027>,  <42.339817, 37.155502, 35.694981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407001, 37.395390, 35.382027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903837, -0.410517, -0.120645,
		-0.393536, -0.686883, -0.611000,
		0.167957, 0.599722, -0.782383,
		42.457390, 37.575306, 35.147312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504047, 36.867821, 35.046875>,  <42.339817, 37.155502, 35.694981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504047, 36.867821, 35.046875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682556, 37.225334, 35.029041>,  <42.789661, 37.439842, 35.018341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682556, 37.225334, 35.029041>,  <42.504047, 36.867821, 35.046875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682556, 37.225334, 35.029041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888467, -0.448478, -0.097429,
		-0.107076, 0.003867, -0.994243,
		0.446273, 0.893785, -0.044586,
		42.816437, 37.493469, 35.015667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931377, 36.858723, 34.453335>,  <42.504047, 36.867821, 35.046875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931377, 36.858723, 34.453335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101234, 37.113880, 34.710327>,  <43.203148, 37.266975, 34.864521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101234, 37.113880, 34.710327>,  <42.931377, 36.858723, 34.453335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101234, 37.113880, 34.710327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852664, -0.520349, -0.046927,
		0.304378, 0.567744, -0.764866,
		0.424640, 0.637890, 0.642477,
		43.228626, 37.305248, 34.903069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565891, 36.937878, 34.196751>,  <42.931377, 36.858723, 34.453335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565891, 36.937878, 34.196751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597496, 37.008530, 34.589191>,  <43.616459, 37.050919, 34.824657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597496, 37.008530, 34.589191>,  <43.565891, 36.937878, 34.196751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597496, 37.008530, 34.589191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821140, -0.569565, 0.036412,
		0.565232, 0.802745, -0.190036,
		0.079008, 0.176627, 0.981102,
		43.621197, 37.061520, 34.883522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242439, 37.301857, 34.482899>,  <43.565891, 36.937878, 34.196751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242439, 37.301857, 34.482899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067295, 37.017811, 34.703449>,  <43.962208, 36.847382, 34.835777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067295, 37.017811, 34.703449>,  <44.242439, 37.301857, 34.482899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067295, 37.017811, 34.703449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865218, -0.499478, 0.043815,
		0.244285, 0.496243, 0.833107,
		-0.437861, -0.710116, 0.551374,
		43.935936, 36.804775, 34.868862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669853, 37.272480, 35.113667>,  <44.242439, 37.301857, 34.482899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669853, 37.272480, 35.113667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473602, 36.944107, 34.996799>,  <44.355854, 36.747082, 34.926678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473602, 36.944107, 34.996799>,  <44.669853, 37.272480, 35.113667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.473602, 36.944107, 34.996799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870495, -0.476794, -0.122088,
		-0.039078, -0.314229, 0.948542,
		-0.490623, -0.820931, -0.292167,
		44.326416, 36.697826, 34.909149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823792, 36.767315, 35.715511>,  <44.669853, 37.272480, 35.113667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823792, 36.767315, 35.715511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727341, 36.593575, 35.368366>,  <44.669468, 36.489330, 35.160080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727341, 36.593575, 35.368366>,  <44.823792, 36.767315, 35.715511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727341, 36.593575, 35.368366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781008, -0.617686, 0.092146,
		-0.576093, -0.655591, 0.488177,
		-0.241130, -0.434355, -0.867867,
		44.655003, 36.463268, 35.108006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919827, 36.073509, 35.824287>,  <44.823792, 36.767315, 35.715511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919827, 36.073509, 35.824287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.943993, 36.097427, 35.425735>,  <44.958492, 36.111778, 35.186604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.943993, 36.097427, 35.425735>,  <44.919827, 36.073509, 35.824287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.943993, 36.097427, 35.425735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806204, -0.591486, 0.013389,
		-0.588545, -0.804095, -0.083942,
		0.060416, 0.059794, -0.996381,
		44.962116, 36.115364, 35.126820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996109, 35.393429, 35.492859>,  <44.919827, 36.073509, 35.824287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996109, 35.393429, 35.492859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210308, 35.627129, 35.248924>,  <45.338829, 35.767349, 35.102566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210308, 35.627129, 35.248924>,  <44.996109, 35.393429, 35.492859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210308, 35.627129, 35.248924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686001, -0.722086, -0.089411,
		-0.492591, -0.370468, -0.787469,
		0.535497, 0.584248, -0.609834,
		45.370956, 35.802402, 35.065975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.526981, 34.802269, 35.419823>,  <44.996109, 35.393429, 35.492859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.526981, 34.802269, 35.419823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642235, 35.185261, 35.413940>,  <45.711388, 35.415054, 35.410412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642235, 35.185261, 35.413940>,  <45.526981, 34.802269, 35.419823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642235, 35.185261, 35.413940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864595, -0.266726, -0.425833,
		-0.411647, 0.109983, -0.904683,
		0.288137, 0.957476, -0.014706,
		45.728676, 35.472504, 35.409527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.811024, 34.984455, 34.783722>,  <45.526981, 34.802269, 35.419823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.811024, 34.984455, 34.783722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984520, 35.230400, 35.047180>,  <46.088615, 35.377968, 35.205254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984520, 35.230400, 35.047180>,  <45.811024, 34.984455, 34.783722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.984520, 35.230400, 35.047180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897687, -0.357875, -0.257066,
		0.077651, 0.702755, -0.707182,
		0.433737, 0.614867, 0.658644,
		46.114639, 35.414860, 35.244774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.327133, 35.380157, 34.398270>,  <45.811024, 34.984455, 34.783722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.327133, 35.380157, 34.398270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.434822, 35.395874, 34.783180>,  <46.499435, 35.405304, 35.014126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.434822, 35.395874, 34.783180>,  <46.327133, 35.380157, 34.398270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.434822, 35.395874, 34.783180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919856, -0.306456, -0.244846,
		0.285275, 0.951074, -0.118648,
		0.269226, 0.039291, 0.962275,
		46.515591, 35.407661, 35.071861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.897869, 35.780434, 34.351738>,  <46.327133, 35.380157, 34.398270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.897869, 35.780434, 34.351738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.898113, 35.537155, 34.669250>,  <46.898262, 35.391186, 34.859760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.898113, 35.537155, 34.669250>,  <46.897869, 35.780434, 34.351738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.898113, 35.537155, 34.669250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880439, -0.376051, -0.288813,
		0.474159, 0.699056, 0.535251,
		0.000614, -0.608199, 0.793784,
		46.898296, 35.354694, 34.907387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.535484, 35.772758, 34.753582>,  <46.897869, 35.780434, 34.351738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.535484, 35.772758, 34.753582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.358379, 35.414429, 34.738297>,  <47.252117, 35.199429, 34.729126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.358379, 35.414429, 34.738297>,  <47.535484, 35.772758, 34.753582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.358379, 35.414429, 34.738297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842941, -0.401336, -0.358301,
		0.305639, -0.190851, 0.932824,
		-0.442758, -0.895826, -0.038212,
		47.225552, 35.145679, 34.726833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.792847, 35.153076, 35.185719>,  <47.535484, 35.772758, 34.753582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.792847, 35.153076, 35.185719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625435, 35.014988, 34.849705>,  <47.524986, 34.932137, 34.648098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625435, 35.014988, 34.849705>,  <47.792847, 35.153076, 35.185719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.625435, 35.014988, 34.849705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849248, -0.476579, -0.227266,
		-0.321888, -0.808516, 0.492636,
		-0.418528, -0.345216, -0.840036,
		47.499878, 34.911423, 34.597694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.851135, 38.363571, 23.936708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.500614, 38.175949, 23.892731>,  <35.290302, 38.063377, 23.866344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.500614, 38.175949, 23.892731>,  <35.851135, 38.363571, 23.936708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500614, 38.175949, 23.892731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113849, -0.423366, 0.898777,
		-0.468121, 0.775081, 0.424396,
		-0.876300, -0.469054, -0.109944,
		35.237724, 38.035233, 23.859747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582039, 38.383793, 24.636675>,  <35.851135, 38.363571, 23.936708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582039, 38.383793, 24.636675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.370884, 38.106544, 24.440344>,  <35.244190, 37.940193, 24.322546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.370884, 38.106544, 24.440344>,  <35.582039, 38.383793, 24.636675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370884, 38.106544, 24.440344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015180, -0.585517, 0.810518,
		-0.849178, 0.420413, 0.319610,
		-0.527889, -0.693125, -0.490826,
		35.212517, 37.898605, 24.293097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011341, 38.262615, 25.046688>,  <35.582039, 38.383793, 24.636675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011341, 38.262615, 25.046688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038364, 37.922470, 24.837954>,  <35.054581, 37.718384, 24.712713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038364, 37.922470, 24.837954>,  <35.011341, 38.262615, 25.046688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038364, 37.922470, 24.837954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055732, -0.518996, 0.852958,
		-0.996157, -0.086710, 0.012328,
		0.067562, -0.850367, -0.521835,
		35.058632, 37.667358, 24.681404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570560, 37.852112, 25.383375>,  <35.011341, 38.262615, 25.046688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570560, 37.852112, 25.383375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.824963, 37.594707, 25.213018>,  <34.977604, 37.440266, 25.110804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.824963, 37.594707, 25.213018>,  <34.570560, 37.852112, 25.383375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824963, 37.594707, 25.213018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049194, -0.516967, 0.854590,
		-0.770113, -0.564477, -0.297138,
		0.636008, -0.643514, -0.425892,
		35.015766, 37.401653, 25.085251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538624, 37.335938, 25.825129>,  <34.570560, 37.852112, 25.383375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538624, 37.335938, 25.825129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.857574, 37.214283, 25.616632>,  <35.048946, 37.141293, 25.491535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.857574, 37.214283, 25.616632>,  <34.538624, 37.335938, 25.825129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857574, 37.214283, 25.616632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272883, -0.588664, 0.760927,
		-0.538254, -0.748986, -0.386397,
		0.797381, -0.304131, -0.521236,
		35.096786, 37.123043, 25.460260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504543, 36.606182, 25.850681>,  <34.538624, 37.335938, 25.825129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504543, 36.606182, 25.850681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.885517, 36.702900, 25.776482>,  <35.114101, 36.760929, 25.731962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.885517, 36.702900, 25.776482>,  <34.504543, 36.606182, 25.850681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885517, 36.702900, 25.776482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299221, -0.626474, 0.719721,
		0.057815, -0.740990, -0.669023,
		0.952431, 0.241796, -0.185500,
		35.171246, 36.775440, 25.720831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844013, 36.039074, 25.953033>,  <34.504543, 36.606182, 25.850681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844013, 36.039074, 25.953033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167210, 36.274529, 25.942806>,  <35.361130, 36.415802, 25.936670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167210, 36.274529, 25.942806>,  <34.844013, 36.039074, 25.953033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167210, 36.274529, 25.942806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402266, -0.519427, 0.753908,
		0.430499, -0.619437, -0.656482,
		0.807993, 0.588637, -0.025566,
		35.409607, 36.451118, 25.935137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552963, 35.627338, 25.913429>,  <34.844013, 36.039074, 25.953033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552963, 35.627338, 25.913429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611736, 35.988525, 26.074957>,  <35.646999, 36.205238, 26.171873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611736, 35.988525, 26.074957>,  <35.552963, 35.627338, 25.913429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611736, 35.988525, 26.074957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404655, -0.427396, 0.808447,
		0.902588, 0.044622, -0.428186,
		0.146930, 0.902963, 0.403819,
		35.655815, 36.259415, 26.196102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213688, 35.577297, 26.209133>,  <35.552963, 35.627338, 25.913429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213688, 35.577297, 26.209133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068989, 35.893532, 26.406765>,  <35.982170, 36.083271, 26.525343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068989, 35.893532, 26.406765>,  <36.213688, 35.577297, 26.209133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068989, 35.893532, 26.406765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435680, -0.325176, 0.839311,
		0.824210, 0.518878, -0.226811,
		-0.361747, 0.790586, 0.494078,
		35.960464, 36.130707, 26.554989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739422, 35.747879, 26.580139>,  <36.213688, 35.577297, 26.209133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739422, 35.747879, 26.580139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.428135, 35.928524, 26.754688>,  <36.241364, 36.036911, 26.859417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.428135, 35.928524, 26.754688>,  <36.739422, 35.747879, 26.580139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428135, 35.928524, 26.754688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364611, -0.240829, 0.899478,
		0.511305, 0.859098, 0.022756,
		-0.778220, 0.451610, 0.436373,
		36.194668, 36.064007, 26.885601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028896, 35.973213, 27.223227>,  <36.739422, 35.747879, 26.580139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028896, 35.973213, 27.223227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.633011, 35.957668, 27.278311>,  <36.395481, 35.948341, 27.311361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.633011, 35.957668, 27.278311>,  <37.028896, 35.973213, 27.223227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633011, 35.957668, 27.278311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141057, -0.103348, 0.984592,
		-0.024031, 0.993886, 0.107766,
		-0.989710, -0.038862, 0.137711,
		36.336098, 35.946011, 27.319624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914410, 36.483902, 27.737030>,  <37.028896, 35.973213, 27.223227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914410, 36.483902, 27.737030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636124, 36.197052, 27.720459>,  <36.469151, 36.024944, 27.710516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636124, 36.197052, 27.720459>,  <36.914410, 36.483902, 27.737030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636124, 36.197052, 27.720459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002505, -0.055250, 0.998469,
		-0.718314, 0.694753, 0.036642,
		-0.695715, -0.717123, -0.041428,
		36.427410, 35.981915, 27.708031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511223, 36.697300, 28.309557>,  <36.914410, 36.483902, 27.737030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511223, 36.697300, 28.309557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.418705, 36.311916, 28.255533>,  <36.363194, 36.080685, 28.223120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.418705, 36.311916, 28.255533>,  <36.511223, 36.697300, 28.309557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418705, 36.311916, 28.255533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172271, -0.177188, 0.968983,
		-0.957510, 0.200855, 0.206960,
		-0.231295, -0.963464, -0.135058,
		36.349316, 36.022877, 28.215015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918056, 36.609867, 28.731590>,  <36.511223, 36.697300, 28.309557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918056, 36.609867, 28.731590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.086262, 36.250092, 28.683969>,  <36.187187, 36.034225, 28.655397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.086262, 36.250092, 28.683969>,  <35.918056, 36.609867, 28.731590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086262, 36.250092, 28.683969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049102, -0.153589, 0.986914,
		-0.905955, -0.409168, -0.108751,
		0.420517, -0.899440, -0.119054,
		36.212418, 35.980259, 28.648252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465237, 36.175228, 29.157833>,  <35.918056, 36.609867, 28.731590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465237, 36.175228, 29.157833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.817581, 35.993256, 29.105509>,  <36.028988, 35.884071, 29.074114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.817581, 35.993256, 29.105509>,  <35.465237, 36.175228, 29.157833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817581, 35.993256, 29.105509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004033, -0.269117, 0.963099,
		-0.473353, -0.848887, -0.235221,
		0.880864, -0.454937, -0.130810,
		36.081841, 35.856773, 29.066265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485149, 35.576675, 29.499487>,  <35.465237, 36.175228, 29.157833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485149, 35.576675, 29.499487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.877663, 35.637501, 29.452225>,  <36.113171, 35.673996, 29.423868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.877663, 35.637501, 29.452225>,  <35.485149, 35.576675, 29.499487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877663, 35.637501, 29.452225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163221, -0.331176, 0.929345,
		0.102190, -0.931235, -0.349798,
		0.981283, 0.152064, -0.118154,
		36.172047, 35.683121, 29.416779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793766, 35.109985, 30.001808>,  <35.485149, 35.576675, 29.499487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793766, 35.109985, 30.001808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120972, 35.317162, 29.901735>,  <36.317295, 35.441467, 29.841692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120972, 35.317162, 29.901735>,  <35.793766, 35.109985, 30.001808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120972, 35.317162, 29.901735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427901, -0.257293, 0.866430,
		0.384386, -0.815807, -0.432096,
		0.818015, 0.517938, -0.250184,
		36.366375, 35.472542, 29.826679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411129, 34.721004, 30.251579>,  <35.793766, 35.109985, 30.001808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411129, 34.721004, 30.251579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.524113, 35.099373, 30.187763>,  <36.591904, 35.326393, 30.149473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.524113, 35.099373, 30.187763>,  <36.411129, 34.721004, 30.251579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524113, 35.099373, 30.187763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439932, 0.020058, 0.897808,
		0.852453, -0.323782, -0.410474,
		0.282461, 0.945919, -0.159540,
		36.608852, 35.383148, 30.139900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041019, 34.744667, 30.595938>,  <36.411129, 34.721004, 30.251579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041019, 34.744667, 30.595938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.923653, 35.127052, 30.593065>,  <36.853233, 35.356483, 30.591343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.923653, 35.127052, 30.593065>,  <37.041019, 34.744667, 30.595938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923653, 35.127052, 30.593065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375256, 0.122078, 0.918848,
		0.879256, 0.266908, -0.394548,
		-0.293414, 0.955959, -0.007179,
		36.835629, 35.413841, 30.590912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612057, 35.204033, 30.897615>,  <37.041019, 34.744667, 30.595938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612057, 35.204033, 30.897615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278877, 35.423668, 30.925062>,  <37.078972, 35.555450, 30.941530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278877, 35.423668, 30.925062>,  <37.612057, 35.204033, 30.897615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278877, 35.423668, 30.925062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247237, 0.258349, 0.933879,
		0.495053, 0.794833, -0.350945,
		-0.832944, 0.549087, 0.068616,
		37.028996, 35.588394, 30.945646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849731, 35.727554, 31.246090>,  <37.612057, 35.204033, 30.897615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849731, 35.727554, 31.246090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456200, 35.766071, 31.306490>,  <37.220081, 35.789181, 31.342730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.456200, 35.766071, 31.306490>,  <37.849731, 35.727554, 31.246090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456200, 35.766071, 31.306490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160697, 0.102449, 0.981673,
		0.079057, 0.990067, -0.116266,
		-0.983833, 0.096292, 0.151001,
		37.161049, 35.794960, 31.351789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738434, 36.263756, 31.786362>,  <37.849731, 35.727554, 31.246090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738434, 36.263756, 31.786362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.405754, 36.041676, 31.788382>,  <37.206146, 35.908428, 31.789595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.405754, 36.041676, 31.788382>,  <37.738434, 36.263756, 31.786362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405754, 36.041676, 31.788382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075712, 0.122420, 0.989586,
		-0.550036, 0.822658, -0.143852,
		-0.831702, -0.555200, 0.005051,
		37.156242, 35.875114, 31.789896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199986, 36.771126, 31.729084>,  <37.738434, 36.263756, 31.786362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199986, 36.771126, 31.729084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.536591, 36.985676, 31.754877>,  <38.738552, 37.114407, 31.770353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.536591, 36.985676, 31.754877>,  <38.199986, 36.771126, 31.729084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536591, 36.985676, 31.754877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165717, 0.369894, -0.914175,
		-0.514196, 0.758602, 0.400157,
		0.841511, 0.536378, 0.064485,
		38.789043, 37.146587, 31.774223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079407, 37.387619, 31.467855>,  <38.199986, 36.771126, 31.729084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079407, 37.387619, 31.467855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478947, 37.384079, 31.449039>,  <38.718670, 37.381954, 31.437750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478947, 37.384079, 31.449039>,  <38.079407, 37.387619, 31.467855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478947, 37.384079, 31.449039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038466, 0.436349, -0.898955,
		0.028484, 0.899734, 0.435508,
		0.998854, -0.008854, -0.047038,
		38.778603, 37.381424, 31.434929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182354, 38.009163, 31.219240>,  <38.079407, 37.387619, 31.467855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182354, 38.009163, 31.219240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.512753, 37.793079, 31.154848>,  <38.710991, 37.663429, 31.116213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.512753, 37.793079, 31.154848>,  <38.182354, 38.009163, 31.219240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512753, 37.793079, 31.154848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045928, 0.349132, -0.935947,
		0.561807, 0.765692, 0.313191,
		0.825992, -0.540206, -0.160978,
		38.760551, 37.631016, 31.106554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633415, 38.431263, 30.998377>,  <38.182354, 38.009163, 31.219240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633415, 38.431263, 30.998377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.763760, 38.078762, 30.861439>,  <38.841969, 37.867260, 30.779276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.763760, 38.078762, 30.861439>,  <38.633415, 38.431263, 30.998377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763760, 38.078762, 30.861439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133146, 0.315721, -0.939464,
		0.935993, 0.351721, -0.014453,
		0.325866, -0.881256, -0.342343,
		38.861519, 37.814384, 30.758736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173771, 38.587925, 30.498756>,  <38.633415, 38.431263, 30.998377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173771, 38.587925, 30.498756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.046276, 38.219933, 30.407509>,  <38.969780, 37.999138, 30.352760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.046276, 38.219933, 30.407509>,  <39.173771, 38.587925, 30.498756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046276, 38.219933, 30.407509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339251, 0.335456, -0.878850,
		0.885051, -0.202734, -0.419027,
		-0.318738, -0.919983, -0.228118,
		38.950653, 37.943939, 30.339073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528374, 38.417572, 29.909605>,  <39.173771, 38.587925, 30.498756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528374, 38.417572, 29.909605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.222805, 38.159729, 29.921724>,  <39.039467, 38.005024, 29.928995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.222805, 38.159729, 29.921724>,  <39.528374, 38.417572, 29.909605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222805, 38.159729, 29.921724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273585, 0.280989, -0.919889,
		0.584450, -0.711008, -0.391006,
		-0.763917, -0.644603, 0.030297,
		38.993629, 37.966347, 29.930813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496365, 38.281754, 29.201103>,  <39.528374, 38.417572, 29.909605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496365, 38.281754, 29.201103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.147331, 38.146576, 29.342180>,  <38.937912, 38.065472, 29.426826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.147331, 38.146576, 29.342180>,  <39.496365, 38.281754, 29.201103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147331, 38.146576, 29.342180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423485, 0.163553, -0.891017,
		0.243429, -0.926847, -0.285827,
		-0.872584, -0.337943, 0.352692,
		38.885555, 38.045193, 29.447989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247463, 38.006710, 28.613342>,  <39.496365, 38.281754, 29.201103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247463, 38.006710, 28.613342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936623, 38.062721, 28.858784>,  <38.750118, 38.096329, 29.006048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936623, 38.062721, 28.858784>,  <39.247463, 38.006710, 28.613342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936623, 38.062721, 28.858784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524843, 0.393895, -0.754577,
		-0.347355, -0.908427, -0.232605,
		-0.777100, 0.140025, 0.613603,
		38.703491, 38.104729, 29.042864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651909, 37.611691, 28.382587>,  <39.247463, 38.006710, 28.613342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651909, 37.611691, 28.382587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508102, 37.903305, 28.615568>,  <38.421818, 38.078274, 28.755356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508102, 37.903305, 28.615568>,  <38.651909, 37.611691, 28.382587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508102, 37.903305, 28.615568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609999, 0.288736, -0.737924,
		-0.706150, -0.620591, 0.340908,
		-0.359517, 0.729039, 0.582451,
		38.400246, 38.122017, 28.790304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931026, 37.489471, 28.331602>,  <38.651909, 37.611691, 28.382587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931026, 37.489471, 28.331602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.982552, 37.865818, 28.456932>,  <38.013466, 38.091625, 28.532129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.982552, 37.865818, 28.456932>,  <37.931026, 37.489471, 28.331602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982552, 37.865818, 28.456932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606050, 0.324776, -0.726102,
		-0.784927, -0.096359, 0.612049,
		0.128812, 0.940870, 0.313324,
		38.021194, 38.148079, 28.550930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321281, 37.769394, 28.297911>,  <37.931026, 37.489471, 28.331602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321281, 37.769394, 28.297911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571117, 38.081718, 28.291912>,  <37.721020, 38.269112, 28.288313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571117, 38.081718, 28.291912>,  <37.321281, 37.769394, 28.297911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571117, 38.081718, 28.291912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481284, 0.369730, -0.794774,
		-0.615021, 0.503625, 0.606721,
		0.624591, 0.780808, -0.014995,
		37.758495, 38.315960, 28.287413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903805, 38.348198, 28.118589>,  <37.321281, 37.769394, 28.297911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903805, 38.348198, 28.118589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273342, 38.496403, 28.080160>,  <37.495064, 38.585327, 28.057102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273342, 38.496403, 28.080160>,  <36.903805, 38.348198, 28.118589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273342, 38.496403, 28.080160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320453, 0.611416, -0.723519,
		-0.209336, 0.699205, 0.683587,
		0.923844, 0.370517, -0.096071,
		37.550495, 38.607559, 28.051338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843143, 39.004074, 28.040993>,  <36.903805, 38.348198, 28.118589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843143, 39.004074, 28.040993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.200352, 38.926056, 27.878777>,  <37.414677, 38.879246, 27.781446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.200352, 38.926056, 27.878777>,  <36.843143, 39.004074, 28.040993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200352, 38.926056, 27.878777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233881, 0.568746, -0.788560,
		0.384457, 0.799052, 0.462286,
		0.893024, -0.195047, -0.405542,
		37.468258, 38.867542, 27.757114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067429, 39.569302, 27.702091>,  <36.843143, 39.004074, 28.040993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067429, 39.569302, 27.702091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293602, 39.283073, 27.538023>,  <37.429306, 39.111336, 27.439583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293602, 39.283073, 27.538023>,  <37.067429, 39.569302, 27.702091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293602, 39.283073, 27.538023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087962, 0.442147, -0.892619,
		0.820091, 0.540795, 0.187061,
		0.565432, -0.715575, -0.410170,
		37.463230, 39.068401, 27.414972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607681, 39.877701, 27.287315>,  <37.067429, 39.569302, 27.702091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607681, 39.877701, 27.287315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.559219, 39.508057, 27.142347>,  <37.530144, 39.286270, 27.055367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.559219, 39.508057, 27.142347>,  <37.607681, 39.877701, 27.287315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559219, 39.508057, 27.142347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251505, 0.381772, -0.889379,
		0.960243, -0.016603, -0.278671,
		-0.121156, -0.924107, -0.362419,
		37.522873, 39.230824, 27.033621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809418, 39.943874, 26.526979>,  <37.607681, 39.877701, 27.287315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809418, 39.943874, 26.526979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.593548, 39.607944, 26.550478>,  <37.464024, 39.406387, 26.564577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.593548, 39.607944, 26.550478>,  <37.809418, 39.943874, 26.526979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593548, 39.607944, 26.550478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279217, 0.112720, -0.953589,
		0.794221, -0.531033, -0.295325,
		-0.539676, -0.839820, 0.058748,
		37.431644, 39.355999, 26.568102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124653, 39.517296, 26.071245>,  <37.809418, 39.943874, 26.526979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124653, 39.517296, 26.071245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.739548, 39.413528, 26.101696>,  <37.508484, 39.351269, 26.119967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.739548, 39.413528, 26.101696>,  <38.124653, 39.517296, 26.071245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739548, 39.413528, 26.101696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119222, 0.154658, -0.980748,
		0.242651, -0.953301, -0.179827,
		-0.962760, -0.259419, 0.076127,
		37.450718, 39.335705, 26.124535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981888, 39.221977, 25.404026>,  <38.124653, 39.517296, 26.071245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981888, 39.221977, 25.404026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.615849, 39.275101, 25.556318>,  <37.396225, 39.306976, 25.647694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.615849, 39.275101, 25.556318>,  <37.981888, 39.221977, 25.404026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615849, 39.275101, 25.556318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326980, 0.308121, -0.893390,
		-0.235962, -0.942031, -0.238536,
		-0.915099, 0.132809, 0.380730,
		37.341320, 39.314941, 25.670538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.405602, 38.752789, 25.068701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.171406, 39.025566, 25.244045>,  <37.030888, 39.189232, 25.349253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.171406, 39.025566, 25.244045>,  <37.405602, 38.752789, 25.068701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171406, 39.025566, 25.244045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362479, 0.263453, -0.893981,
		-0.725129, -0.682312, 0.092941,
		-0.585488, 0.681941, 0.438361,
		36.995758, 39.230148, 25.375553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827972, 38.555298, 24.842394>,  <37.405602, 38.752789, 25.068701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827972, 38.555298, 24.842394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751553, 38.932171, 24.952513>,  <36.705700, 39.158295, 25.018583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751553, 38.932171, 24.952513>,  <36.827972, 38.555298, 24.842394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751553, 38.932171, 24.952513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214205, 0.233685, -0.948424,
		-0.957923, -0.240164, 0.157176,
		-0.191048, 0.942185, 0.275297,
		36.694237, 39.214825, 25.035101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155510, 38.876705, 24.443544>,  <36.827972, 38.555298, 24.842394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155510, 38.876705, 24.443544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.362675, 39.186432, 24.588987>,  <36.486973, 39.372269, 24.676252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.362675, 39.186432, 24.588987>,  <36.155510, 38.876705, 24.443544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362675, 39.186432, 24.588987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256877, 0.546210, -0.797288,
		-0.815955, 0.319523, 0.481791,
		0.517911, 0.774312, 0.363605,
		36.518047, 39.418724, 24.698069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750175, 39.356915, 24.312248>,  <36.155510, 38.876705, 24.443544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750175, 39.356915, 24.312248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115818, 39.513664, 24.353914>,  <36.335201, 39.607716, 24.378914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115818, 39.513664, 24.353914>,  <35.750175, 39.356915, 24.312248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115818, 39.513664, 24.353914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139835, 0.545791, -0.826171,
		-0.380608, 0.740639, 0.553706,
		0.914103, 0.391875, 0.104165,
		36.390049, 39.631226, 24.385164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656384, 40.092537, 24.299273>,  <35.750175, 39.356915, 24.312248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656384, 40.092537, 24.299273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042763, 40.032040, 24.215298>,  <36.274590, 39.995739, 24.164913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042763, 40.032040, 24.215298>,  <35.656384, 40.092537, 24.299273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042763, 40.032040, 24.215298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076207, 0.609072, -0.789445,
		0.247267, 0.778560, 0.576805,
		0.965946, -0.151248, -0.209935,
		36.332546, 39.986664, 24.152317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081333, 40.741734, 24.316280>,  <35.656384, 40.092537, 24.299273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081333, 40.741734, 24.316280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.258835, 40.473648, 24.078323>,  <36.365337, 40.312798, 23.935549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.258835, 40.473648, 24.078323>,  <36.081333, 40.741734, 24.316280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258835, 40.473648, 24.078323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060576, 0.639883, -0.766081,
		0.894099, 0.375988, 0.243352,
		0.443754, -0.670211, -0.594895,
		36.391960, 40.272583, 23.899855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380276, 41.215778, 23.901539>,  <36.081333, 40.741734, 24.316280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380276, 41.215778, 23.901539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.455185, 40.860592, 23.733517>,  <36.500130, 40.647480, 23.632704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.455185, 40.860592, 23.733517>,  <36.380276, 41.215778, 23.901539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455185, 40.860592, 23.733517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029306, 0.422378, -0.905946,
		0.981871, 0.181968, 0.053076,
		0.187272, -0.887966, -0.420054,
		36.511368, 40.594200, 23.607500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938431, 41.295002, 23.331909>,  <36.380276, 41.215778, 23.901539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938431, 41.295002, 23.331909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749077, 40.952026, 23.251213>,  <36.635464, 40.746239, 23.202795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749077, 40.952026, 23.251213>,  <36.938431, 41.295002, 23.331909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749077, 40.952026, 23.251213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112924, 0.286214, -0.951488,
		0.873587, -0.427639, -0.232315,
		-0.473385, -0.857442, -0.201742,
		36.607059, 40.694794, 23.190691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308491, 40.962460, 22.893148>,  <36.938431, 41.295002, 23.331909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308491, 40.962460, 22.893148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.931782, 40.837296, 22.843906>,  <36.705757, 40.762199, 22.814362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.931782, 40.837296, 22.843906>,  <37.308491, 40.962460, 22.893148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931782, 40.837296, 22.843906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026133, 0.296895, -0.954552,
		0.335238, -0.902187, -0.271430,
		-0.941771, -0.312909, -0.123108,
		36.649250, 40.743423, 22.806974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290173, 40.577972, 22.240801>,  <37.308491, 40.962460, 22.893148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290173, 40.577972, 22.240801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928703, 40.723541, 22.331068>,  <36.711823, 40.810883, 22.385229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928703, 40.723541, 22.331068>,  <37.290173, 40.577972, 22.240801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928703, 40.723541, 22.331068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123006, 0.284181, -0.950847,
		-0.410167, -0.887018, -0.212043,
		-0.903678, 0.363923, 0.225670,
		36.657600, 40.832718, 22.398769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882370, 40.457367, 21.624168>,  <37.290173, 40.577972, 22.240801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882370, 40.457367, 21.624168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646423, 40.722183, 21.809103>,  <36.504856, 40.881073, 21.920063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646423, 40.722183, 21.809103>,  <36.882370, 40.457367, 21.624168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646423, 40.722183, 21.809103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034094, 0.592461, -0.804877,
		-0.806780, -0.459008, -0.372045,
		-0.589867, 0.662044, 0.462336,
		36.469463, 40.920795, 21.947803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215099, 40.526535, 21.253387>,  <36.882370, 40.457367, 21.624168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215099, 40.526535, 21.253387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.267841, 40.865982, 21.458309>,  <36.299488, 41.069653, 21.581263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.267841, 40.865982, 21.458309>,  <36.215099, 40.526535, 21.253387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267841, 40.865982, 21.458309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104379, 0.525829, -0.844162,
		-0.985758, 0.057834, 0.157912,
		0.131856, 0.848622, 0.512304,
		36.307400, 41.120567, 21.612000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737152, 40.926723, 20.874018>,  <36.215099, 40.526535, 21.253387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737152, 40.926723, 20.874018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.980431, 41.157761, 21.091818>,  <36.126400, 41.296383, 21.222498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.980431, 41.157761, 21.091818>,  <35.737152, 40.926723, 20.874018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980431, 41.157761, 21.091818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137303, 0.599064, -0.788841,
		-0.781820, 0.554533, 0.285044,
		0.608198, 0.577594, 0.544499,
		36.162891, 41.331039, 21.255167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454269, 41.556374, 20.965126>,  <35.737152, 40.926723, 20.874018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454269, 41.556374, 20.965126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.852238, 41.588223, 20.989735>,  <36.091019, 41.607330, 21.004499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.852238, 41.588223, 20.989735>,  <35.454269, 41.556374, 20.965126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852238, 41.588223, 20.989735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013124, 0.708896, -0.705191,
		-0.099758, 0.700805, 0.706343,
		0.994925, 0.079618, 0.061521,
		36.150715, 41.612106, 21.008190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562187, 42.307365, 21.003984>,  <35.454269, 41.556374, 20.965126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562187, 42.307365, 21.003984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927319, 42.179993, 20.901735>,  <36.146397, 42.103569, 20.840385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927319, 42.179993, 20.901735>,  <35.562187, 42.307365, 21.003984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927319, 42.179993, 20.901735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110041, 0.794668, -0.596987,
		0.393236, 0.516818, 0.760437,
		0.912829, -0.318436, -0.255621,
		36.201168, 42.084461, 20.825048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044609, 42.943752, 21.095057>,  <35.562187, 42.307365, 21.003984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044609, 42.943752, 21.095057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.224674, 42.664207, 20.872726>,  <36.332714, 42.496479, 20.739328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.224674, 42.664207, 20.872726>,  <36.044609, 42.943752, 21.095057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224674, 42.664207, 20.872726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175540, 0.679575, -0.712295,
		0.875522, 0.223079, 0.428598,
		0.450163, -0.698866, -0.555823,
		36.359722, 42.454548, 20.705980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541267, 43.328331, 20.838909>,  <36.044609, 42.943752, 21.095057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541267, 43.328331, 20.838909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.520382, 43.013962, 20.592463>,  <36.507851, 42.825340, 20.444595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.520382, 43.013962, 20.592463>,  <36.541267, 43.328331, 20.838909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520382, 43.013962, 20.592463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197054, 0.596719, -0.777879,
		0.979001, -0.162023, 0.123713,
		-0.052212, -0.785923, -0.616116,
		36.504719, 42.778183, 20.407627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036816, 43.455643, 20.370056>,  <36.541267, 43.328331, 20.838909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036816, 43.455643, 20.370056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817741, 43.176373, 20.185627>,  <36.686298, 43.008808, 20.074970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817741, 43.176373, 20.185627>,  <37.036816, 43.455643, 20.370056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817741, 43.176373, 20.185627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009948, 0.556465, -0.830811,
		0.836625, -0.450437, -0.311714,
		-0.547686, -0.698178, -0.461072,
		36.653435, 42.966919, 20.047306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334229, 43.137810, 19.747692>,  <37.036816, 43.455643, 20.370056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334229, 43.137810, 19.747692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941345, 43.082005, 19.697412>,  <36.705616, 43.048519, 19.667244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941345, 43.082005, 19.697412>,  <37.334229, 43.137810, 19.747692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941345, 43.082005, 19.697412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084731, 0.268111, -0.959655,
		0.167585, -0.953233, -0.251520,
		-0.982210, -0.139512, -0.125700,
		36.646683, 43.040150, 19.659702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301456, 42.861626, 19.047550>,  <37.334229, 43.137810, 19.747692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301456, 42.861626, 19.047550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.935513, 42.991390, 19.143707>,  <36.715946, 43.069248, 19.201401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.935513, 42.991390, 19.143707>,  <37.301456, 42.861626, 19.047550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935513, 42.991390, 19.143707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138890, 0.306192, -0.941783,
		-0.379129, -0.894989, -0.235066,
		-0.914861, 0.324409, 0.240392,
		36.661053, 43.088715, 19.215824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936691, 42.692108, 18.500839>,  <37.301456, 42.861626, 19.047550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936691, 42.692108, 18.500839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727318, 42.988712, 18.668732>,  <36.601692, 43.166676, 18.769466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727318, 42.988712, 18.668732>,  <36.936691, 42.692108, 18.500839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727318, 42.988712, 18.668732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014395, 0.500230, -0.865773,
		-0.851944, -0.447135, -0.272512,
		-0.523436, 0.741512, 0.419731,
		36.570286, 43.211166, 18.794651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229240, 42.842712, 18.169098>,  <36.936691, 42.692108, 18.500839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229240, 42.842712, 18.169098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371124, 43.178436, 18.333895>,  <36.456253, 43.379871, 18.432774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371124, 43.178436, 18.333895>,  <36.229240, 42.842712, 18.169098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371124, 43.178436, 18.333895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072148, 0.463901, -0.882944,
		-0.932190, 0.283462, 0.225103,
		0.354707, 0.839312, 0.411992,
		36.477535, 43.430229, 18.457493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739330, 43.425312, 17.965899>,  <36.229240, 42.842712, 18.169098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739330, 43.425312, 17.965899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118771, 43.527584, 18.040506>,  <36.346436, 43.588947, 18.085272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118771, 43.527584, 18.040506>,  <35.739330, 43.425312, 17.965899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118771, 43.527584, 18.040506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048077, 0.466086, -0.883432,
		-0.312813, 0.846988, 0.429836,
		0.948597, 0.255684, 0.186519,
		36.403351, 43.604290, 18.096462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351955, 42.765118, 17.930883>,  <35.739330, 43.425312, 17.965899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351955, 42.765118, 17.930883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.964081, 42.824326, 17.853125>,  <34.731354, 42.859852, 17.806469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.964081, 42.824326, 17.853125>,  <35.351955, 42.765118, 17.930883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964081, 42.824326, 17.853125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218220, -0.166776, 0.961543,
		0.109907, 0.974821, 0.194023,
		-0.969691, 0.148020, -0.194396,
		34.673172, 42.868732, 17.794806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096840, 43.079105, 18.475798>,  <35.351955, 42.765118, 17.930883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096840, 43.079105, 18.475798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.785030, 42.895718, 18.305084>,  <34.597942, 42.785686, 18.202656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.785030, 42.895718, 18.305084>,  <35.096840, 43.079105, 18.475798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785030, 42.895718, 18.305084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319263, -0.295389, 0.900453,
		-0.538896, 0.838184, 0.083892,
		-0.779527, -0.458467, -0.426786,
		34.551174, 42.758179, 18.177048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575050, 43.271072, 18.860531>,  <35.096840, 43.079105, 18.475798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575050, 43.271072, 18.860531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439762, 42.936390, 18.688238>,  <34.358589, 42.735580, 18.584864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439762, 42.936390, 18.688238>,  <34.575050, 43.271072, 18.860531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439762, 42.936390, 18.688238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523432, -0.213109, 0.824987,
		-0.782064, 0.504488, -0.365880,
		-0.338224, -0.836706, -0.430730,
		34.338295, 42.685379, 18.559019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860699, 43.222542, 18.919289>,  <34.575050, 43.271072, 18.860531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860699, 43.222542, 18.919289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960804, 42.845524, 18.830767>,  <34.020866, 42.619312, 18.777655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960804, 42.845524, 18.830767>,  <33.860699, 43.222542, 18.919289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960804, 42.845524, 18.830767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454648, -0.316216, 0.832648,
		-0.854790, -0.107763, -0.507663,
		0.250260, -0.942547, -0.221304,
		34.035881, 42.562759, 18.764376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254585, 42.882435, 19.103962>,  <33.860699, 43.222542, 18.919289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254585, 42.882435, 19.103962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.532459, 42.594711, 19.102531>,  <33.699184, 42.422077, 19.101673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.532459, 42.594711, 19.102531>,  <33.254585, 42.882435, 19.103962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532459, 42.594711, 19.102531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354669, -0.346844, 0.868279,
		-0.625802, -0.601908, -0.496063,
		0.694681, -0.719309, -0.003577,
		33.740864, 42.378918, 19.101458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884892, 42.364483, 19.472126>,  <33.254585, 42.882435, 19.103962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884892, 42.364483, 19.472126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268543, 42.251507, 19.478943>,  <33.498734, 42.183720, 19.483032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268543, 42.251507, 19.478943>,  <32.884892, 42.364483, 19.472126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268543, 42.251507, 19.478943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160058, -0.491906, 0.855809,
		-0.233332, -0.823563, -0.517011,
		0.959134, -0.282440, 0.017041,
		33.556282, 42.166775, 19.484055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931606, 41.615143, 19.589403>,  <32.884892, 42.364483, 19.472126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931606, 41.615143, 19.589403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.289490, 41.770622, 19.677406>,  <33.504219, 41.863911, 19.730207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.289490, 41.770622, 19.677406>,  <32.931606, 41.615143, 19.589403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289490, 41.770622, 19.677406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014110, -0.467733, 0.883757,
		0.446419, -0.793813, -0.413002,
		0.894712, 0.388699, 0.220006,
		33.557903, 41.887230, 19.743408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375282, 40.992176, 19.589088>,  <32.931606, 41.615143, 19.589403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375282, 40.992176, 19.589088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507137, 41.302856, 19.803780>,  <33.586250, 41.489265, 19.932594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507137, 41.302856, 19.803780>,  <33.375282, 40.992176, 19.589088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507137, 41.302856, 19.803780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087717, -0.591243, 0.801709,
		0.940022, -0.217197, -0.263028,
		0.329642, 0.776696, 0.536730,
		33.606030, 41.535866, 19.964798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969482, 40.791149, 19.813271>,  <33.375282, 40.992176, 19.589088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969482, 40.791149, 19.813271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882256, 41.078972, 20.076994>,  <33.829918, 41.251663, 20.235228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.882256, 41.078972, 20.076994>,  <33.969482, 40.791149, 19.813271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882256, 41.078972, 20.076994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294172, -0.595683, 0.747412,
		0.930543, 0.356936, -0.081774,
		-0.218066, 0.719554, 0.659309,
		33.816837, 41.294838, 20.274786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398109, 40.707001, 20.246548>,  <33.969482, 40.791149, 19.813271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398109, 40.707001, 20.246548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140862, 40.934933, 20.451170>,  <33.986511, 41.071693, 20.573944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140862, 40.934933, 20.451170>,  <34.398109, 40.707001, 20.246548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140862, 40.934933, 20.451170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088386, -0.608332, 0.788746,
		0.760646, 0.552474, 0.340866,
		-0.643122, 0.569829, 0.511556,
		33.947926, 41.105881, 20.604637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680851, 41.012135, 20.786758>,  <34.398109, 40.707001, 20.246548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680851, 41.012135, 20.786758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.294079, 41.001442, 20.888208>,  <34.062016, 40.995026, 20.949080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.294079, 41.001442, 20.888208>,  <34.680851, 41.012135, 20.786758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294079, 41.001442, 20.888208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227056, -0.543086, 0.808395,
		0.116131, 0.839251, 0.531198,
		-0.966933, -0.026732, 0.253626,
		34.003998, 40.993423, 20.964296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636723, 41.104290, 21.568611>,  <34.680851, 41.012135, 20.786758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636723, 41.104290, 21.568611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.290771, 40.942287, 21.449980>,  <34.083202, 40.845085, 21.378801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.290771, 40.942287, 21.449980>,  <34.636723, 41.104290, 21.568611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290771, 40.942287, 21.449980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113434, -0.733210, 0.670475,
		-0.488999, 0.546236, 0.680078,
		-0.864877, -0.405006, -0.296577,
		34.031307, 40.820786, 21.361006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286098, 40.993492, 22.163855>,  <34.636723, 41.104290, 21.568611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286098, 40.993492, 22.163855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119286, 40.741505, 21.901793>,  <34.019199, 40.590313, 21.744556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119286, 40.741505, 21.901793>,  <34.286098, 40.993492, 22.163855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119286, 40.741505, 21.901793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115290, -0.751670, 0.649385,
		-0.901549, 0.195283, 0.386100,
		-0.417033, -0.629966, -0.655153,
		33.994175, 40.552513, 21.705246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817612, 40.624210, 22.591558>,  <34.286098, 40.993492, 22.163855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817612, 40.624210, 22.591558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.875446, 40.417614, 22.253960>,  <33.910145, 40.293655, 22.051401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.875446, 40.417614, 22.253960>,  <33.817612, 40.624210, 22.591558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875446, 40.417614, 22.253960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344740, -0.773223, 0.532241,
		-0.927497, -0.367912, 0.066261,
		0.144583, -0.516495, -0.843995,
		33.918823, 40.262665, 22.000761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489819, 40.102768, 22.680496>,  <33.817612, 40.624210, 22.591558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489819, 40.102768, 22.680496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.743408, 39.960499, 22.405811>,  <33.895561, 39.875137, 22.240999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.743408, 39.960499, 22.405811>,  <33.489819, 40.102768, 22.680496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743408, 39.960499, 22.405811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262157, -0.736555, 0.623507,
		-0.727564, -0.575314, -0.373716,
		0.633975, -0.355669, -0.686714,
		33.933601, 39.853798, 22.199797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381367, 39.396030, 22.593863>,  <33.489819, 40.102768, 22.680496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381367, 39.396030, 22.593863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.750198, 39.431076, 22.443081>,  <33.971497, 39.452103, 22.352612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.750198, 39.431076, 22.443081>,  <33.381367, 39.396030, 22.593863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750198, 39.431076, 22.443081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303976, -0.766798, 0.565349,
		-0.239516, -0.635882, -0.733680,
		0.922080, 0.087611, -0.376953,
		34.026821, 39.457359, 22.329994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516491, 38.662090, 22.410883>,  <33.381367, 39.396030, 22.593863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516491, 38.662090, 22.410883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.867912, 38.852196, 22.391800>,  <34.078766, 38.966259, 22.380350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.867912, 38.852196, 22.391800>,  <33.516491, 38.662090, 22.410883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867912, 38.852196, 22.391800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454561, -0.801218, 0.389133,
		0.146718, -0.363558, -0.919945,
		0.878549, 0.475264, -0.047706,
		34.131477, 38.994774, 22.377487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082333, 38.122246, 22.155985>,  <33.516491, 38.662090, 22.410883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082333, 38.122246, 22.155985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238575, 38.437042, 22.347013>,  <34.332321, 38.625919, 22.461630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238575, 38.437042, 22.347013>,  <34.082333, 38.122246, 22.155985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238575, 38.437042, 22.347013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525027, -0.616586, 0.586658,
		0.756159, 0.021588, -0.654032,
		0.390603, 0.786991, 0.477571,
		34.355755, 38.673141, 22.490284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599289, 37.859196, 22.307981>,  <34.082333, 38.122246, 22.155985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599289, 37.859196, 22.307981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583702, 38.164886, 22.565489>,  <34.574348, 38.348301, 22.719994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583702, 38.164886, 22.565489>,  <34.599289, 37.859196, 22.307981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583702, 38.164886, 22.565489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302750, -0.604944, 0.736468,
		0.952273, 0.223601, -0.207796,
		-0.038970, 0.764229, 0.643767,
		34.572010, 38.394154, 22.758619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299652, 37.868092, 22.658537>,  <34.599289, 37.859196, 22.307981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299652, 37.868092, 22.658537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059895, 38.084900, 22.894142>,  <34.916039, 38.214985, 23.035505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059895, 38.084900, 22.894142>,  <35.299652, 37.868092, 22.658537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059895, 38.084900, 22.894142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400705, -0.433831, 0.806986,
		0.692936, 0.719725, 0.042846,
		-0.599396, 0.542022, 0.589014,
		34.880077, 38.247505, 23.070847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816784, 38.100231, 23.247330>,  <35.299652, 37.868092, 22.658537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816784, 38.100231, 23.247330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439415, 38.102524, 23.379950>,  <35.212994, 38.103901, 23.459522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439415, 38.102524, 23.379950>,  <35.816784, 38.100231, 23.247330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439415, 38.102524, 23.379950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289043, -0.475821, 0.830691,
		0.162518, 0.879523, 0.447243,
		-0.943420, 0.005730, 0.331550,
		35.156387, 38.104244, 23.479414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.750153, 39.129185, 27.795630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.384468, 38.986313, 27.872194>,  <38.165058, 38.900589, 27.918133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.384468, 38.986313, 27.872194>,  <38.750153, 39.129185, 27.795630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384468, 38.986313, 27.872194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263843, -0.166121, 0.950153,
		-0.307582, 0.919143, 0.246110,
		-0.914210, -0.357184, 0.191413,
		38.110207, 38.879158, 27.929619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548569, 39.385929, 28.443138>,  <38.750153, 39.129185, 27.795630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548569, 39.385929, 28.443138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291203, 39.083347, 28.396160>,  <38.136784, 38.901798, 28.367973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291203, 39.083347, 28.396160>,  <38.548569, 39.385929, 28.443138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291203, 39.083347, 28.396160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221894, -0.331122, 0.917126,
		-0.732654, 0.564031, 0.380902,
		-0.643413, -0.756457, -0.117443,
		38.098179, 38.856411, 28.360928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116684, 39.398781, 29.070709>,  <38.548569, 39.385929, 28.443138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116684, 39.398781, 29.070709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.106644, 39.026627, 28.924417>,  <38.100620, 38.803333, 28.836641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.106644, 39.026627, 28.924417>,  <38.116684, 39.398781, 29.070709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106644, 39.026627, 28.924417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319740, -0.354099, 0.878852,
		-0.947173, -0.094882, 0.306368,
		-0.025097, -0.930382, -0.365731,
		38.099113, 38.747513, 28.814697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859863, 39.022572, 29.616663>,  <38.116684, 39.398781, 29.070709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859863, 39.022572, 29.616663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.034286, 38.759296, 29.371178>,  <38.138939, 38.601330, 29.223886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.034286, 38.759296, 29.371178>,  <37.859863, 39.022572, 29.616663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034286, 38.759296, 29.371178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200252, -0.593897, 0.779221,
		-0.877356, -0.462682, -0.127170,
		0.436058, -0.658188, -0.613712,
		38.165104, 38.561840, 29.187063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797127, 38.364304, 30.006775>,  <37.859863, 39.022572, 29.616663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797127, 38.364304, 30.006775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.051632, 38.284672, 29.708639>,  <38.204334, 38.236893, 29.529758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.051632, 38.284672, 29.708639>,  <37.797127, 38.364304, 30.006775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051632, 38.284672, 29.708639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415535, -0.725566, 0.548529,
		-0.649995, -0.658726, -0.378929,
		0.636268, -0.199082, -0.745338,
		38.242512, 38.224945, 29.485037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666336, 37.717194, 29.819626>,  <37.797127, 38.364304, 30.006775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666336, 37.717194, 29.819626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.039944, 37.822029, 29.722528>,  <38.264107, 37.884930, 29.664270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.039944, 37.822029, 29.722528>,  <37.666336, 37.717194, 29.819626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039944, 37.822029, 29.722528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355516, -0.748541, 0.559728,
		-0.035003, -0.609094, -0.792326,
		0.934015, 0.262092, -0.242744,
		38.320148, 37.900658, 29.649706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991787, 37.188122, 30.031456>,  <37.666336, 37.717194, 29.819626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991787, 37.188122, 30.031456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.310493, 37.426186, 29.989592>,  <38.501717, 37.569023, 29.964472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.310493, 37.426186, 29.989592>,  <37.991787, 37.188122, 30.031456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310493, 37.426186, 29.989592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531953, -0.608608, 0.588746,
		0.286701, -0.524766, -0.801513,
		0.796761, 0.595161, -0.104662,
		38.549522, 37.604733, 29.958193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652729, 36.776009, 29.868935>,  <37.991787, 37.188122, 30.031456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652729, 36.776009, 29.868935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.749111, 37.120754, 30.047432>,  <38.806942, 37.327602, 30.154530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.749111, 37.120754, 30.047432>,  <38.652729, 36.776009, 29.868935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749111, 37.120754, 30.047432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470733, -0.505870, 0.722847,
		0.848735, 0.035885, -0.527600,
		0.240957, 0.861863, 0.446241,
		38.821400, 37.379314, 30.181305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202160, 36.653336, 30.238064>,  <38.652729, 36.776009, 29.868935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202160, 36.653336, 30.238064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.096352, 36.998524, 30.410252>,  <39.032867, 37.205639, 30.513565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.096352, 36.998524, 30.410252>,  <39.202160, 36.653336, 30.238064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096352, 36.998524, 30.410252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460622, -0.279105, 0.842572,
		0.847265, 0.421159, -0.323677,
		-0.264517, 0.862975, 0.430471,
		39.016998, 37.257416, 30.539392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731293, 36.766975, 30.782316>,  <39.202160, 36.653336, 30.238064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731293, 36.766975, 30.782316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.435429, 37.018272, 30.878824>,  <39.257908, 37.169052, 30.936729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.435429, 37.018272, 30.878824>,  <39.731293, 36.766975, 30.782316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435429, 37.018272, 30.878824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237599, -0.091638, 0.967031,
		0.629638, 0.772603, -0.081488,
		-0.739664, 0.628241, 0.241269,
		39.213528, 37.206745, 30.951204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027943, 37.151451, 31.254581>,  <39.731293, 36.766975, 30.782316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027943, 37.151451, 31.254581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.635368, 37.207478, 31.306995>,  <39.399826, 37.241093, 31.338444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.635368, 37.207478, 31.306995>,  <40.027943, 37.151451, 31.254581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635368, 37.207478, 31.306995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127271, -0.035543, 0.991231,
		0.143495, 0.989504, 0.017057,
		-0.981433, 0.140066, 0.131036,
		39.340939, 37.249496, 31.346306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005241, 37.683903, 31.749578>,  <40.027943, 37.151451, 31.254581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005241, 37.683903, 31.749578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.641487, 37.518387, 31.766500>,  <39.423233, 37.419079, 31.776653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.641487, 37.518387, 31.766500>,  <40.005241, 37.683903, 31.749578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641487, 37.518387, 31.766500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117981, -0.159079, 0.980191,
		-0.398861, 0.896367, 0.193484,
		-0.909390, -0.413788, 0.042304,
		39.368671, 37.394249, 31.779192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488899, 38.054802, 32.101986>,  <40.005241, 37.683903, 31.749578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488899, 38.054802, 32.101986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.440273, 37.659241, 32.136143>,  <39.411098, 37.421906, 32.156635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.440273, 37.659241, 32.136143>,  <39.488899, 38.054802, 32.101986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440273, 37.659241, 32.136143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168371, 0.064235, 0.983629,
		-0.978199, 0.133947, 0.158695,
		-0.121561, -0.988905, 0.085387,
		39.403805, 37.362568, 32.161758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087933, 37.910606, 32.671532>,  <39.488899, 38.054802, 32.101986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087933, 37.910606, 32.671532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.310486, 37.584702, 32.606293>,  <39.444019, 37.389160, 32.567150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.310486, 37.584702, 32.606293>,  <39.087933, 37.910606, 32.671532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310486, 37.584702, 32.606293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269528, -0.008704, 0.962953,
		-0.785995, -0.579733, 0.214758,
		0.556387, -0.814760, -0.163096,
		39.477402, 37.340275, 32.557365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980984, 37.913586, 33.343422>,  <39.087933, 37.910606, 32.671532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980984, 37.913586, 33.343422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.888546, 38.129913, 33.666927>,  <38.833084, 38.259712, 33.861031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.888546, 38.129913, 33.666927>,  <38.980984, 37.913586, 33.343422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888546, 38.129913, 33.666927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559931, 0.605880, -0.565144,
		-0.795659, -0.583456, 0.162808,
		-0.231095, 0.540823, 0.808768,
		38.819218, 38.292160, 33.909557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288353, 38.149921, 33.211830>,  <38.980984, 37.913586, 33.343422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288353, 38.149921, 33.211830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.488602, 38.385311, 33.465782>,  <38.608753, 38.526546, 33.618153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.488602, 38.385311, 33.465782>,  <38.288353, 38.149921, 33.211830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488602, 38.385311, 33.465782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343504, 0.808231, -0.478295,
		-0.794594, 0.021363, 0.606764,
		0.500624, 0.588477, 0.634878,
		38.638790, 38.561855, 33.656246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761585, 38.718613, 33.518379>,  <38.288353, 38.149921, 33.211830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761585, 38.718613, 33.518379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.142902, 38.838024, 33.536770>,  <38.371693, 38.909672, 33.547806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.142902, 38.838024, 33.536770>,  <37.761585, 38.718613, 33.518379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142902, 38.838024, 33.536770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267845, 0.905859, -0.328144,
		-0.139611, 0.300502, 0.943508,
		0.953293, 0.298526, 0.045980,
		38.428890, 38.927582, 33.550564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717613, 39.464279, 33.655270>,  <37.761585, 38.718613, 33.518379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717613, 39.464279, 33.655270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.098492, 39.417488, 33.542393>,  <38.327019, 39.389416, 33.474667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.098492, 39.417488, 33.542393>,  <37.717613, 39.464279, 33.655270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098492, 39.417488, 33.542393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056009, 0.841266, -0.537712,
		0.300295, 0.527815, 0.794502,
		0.952200, -0.116973, -0.282190,
		38.384151, 39.382397, 33.457737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024384, 40.057041, 33.866016>,  <37.717613, 39.464279, 33.655270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024384, 40.057041, 33.866016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213657, 39.907806, 33.546791>,  <38.327221, 39.818264, 33.355255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.213657, 39.907806, 33.546791>,  <38.024384, 40.057041, 33.866016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213657, 39.907806, 33.546791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086350, 0.881890, -0.463480,
		0.876721, 0.288225, 0.385080,
		0.473185, -0.373091, -0.798060,
		38.355614, 39.795879, 33.307373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482162, 40.609776, 33.578896>,  <38.024384, 40.057041, 33.866016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482162, 40.609776, 33.578896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.455585, 40.355358, 33.271381>,  <38.439640, 40.202705, 33.086872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.455585, 40.355358, 33.271381>,  <38.482162, 40.609776, 33.578896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455585, 40.355358, 33.271381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113836, 0.770288, -0.627454,
		0.991275, 0.045824, -0.123587,
		-0.066445, -0.636048, -0.768783,
		38.435654, 40.164543, 33.040745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830627, 40.952480, 32.988907>,  <38.482162, 40.609776, 33.578896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830627, 40.952480, 32.988907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.600399, 40.676815, 32.812828>,  <38.462261, 40.511417, 32.707180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.600399, 40.676815, 32.812828>,  <38.830627, 40.952480, 32.988907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600399, 40.676815, 32.812828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219855, 0.648898, -0.728420,
		0.787642, -0.322477, -0.525003,
		-0.575572, -0.689159, -0.440201,
		38.427727, 40.470066, 32.680767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010738, 41.032516, 32.232494>,  <38.830627, 40.952480, 32.988907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010738, 41.032516, 32.232494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.660648, 40.839561, 32.246803>,  <38.450592, 40.723789, 32.255390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.660648, 40.839561, 32.246803>,  <39.010738, 41.032516, 32.232494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660648, 40.839561, 32.246803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330592, 0.542548, -0.772237,
		0.353106, -0.687711, -0.634326,
		-0.875228, -0.482385, 0.035775,
		38.398079, 40.694847, 32.257534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828915, 40.735596, 31.572708>,  <39.010738, 41.032516, 32.232494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828915, 40.735596, 31.572708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.472889, 40.734669, 31.755041>,  <38.259274, 40.734112, 31.864441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.472889, 40.734669, 31.755041>,  <38.828915, 40.735596, 31.572708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472889, 40.734669, 31.755041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412052, 0.431729, -0.802386,
		-0.194937, -0.902000, -0.385221,
		-0.890063, -0.002316, 0.455831,
		38.205872, 40.733974, 31.891790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390221, 40.233849, 31.218573>,  <38.828915, 40.735596, 31.572708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390221, 40.233849, 31.218573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.108608, 40.461079, 31.389046>,  <37.939640, 40.597416, 31.491329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.108608, 40.461079, 31.389046>,  <38.390221, 40.233849, 31.218573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108608, 40.461079, 31.389046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332345, 0.266797, -0.904636,
		-0.627608, -0.778529, 0.000965,
		-0.704028, 0.568077, 0.426184,
		37.897400, 40.631500, 31.516901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638508, 40.024567, 31.025776>,  <38.390221, 40.233849, 31.218573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638508, 40.024567, 31.025776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.604622, 40.404110, 31.147427>,  <37.584290, 40.631836, 31.220417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.604622, 40.404110, 31.147427>,  <37.638508, 40.024567, 31.025776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604622, 40.404110, 31.147427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479608, 0.228709, -0.847153,
		-0.873384, -0.217627, 0.435705,
		-0.084714, 0.948858, 0.304127,
		37.579208, 40.688766, 31.238665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960796, 40.200775, 30.841921>,  <37.638508, 40.024567, 31.025776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960796, 40.200775, 30.841921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.157825, 40.548294, 30.862143>,  <37.276043, 40.756805, 30.874275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.157825, 40.548294, 30.862143>,  <36.960796, 40.200775, 30.841921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157825, 40.548294, 30.862143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487639, 0.323655, -0.810836,
		-0.720817, 0.374745, 0.583086,
		0.492575, 0.868800, 0.050556,
		37.305599, 40.808933, 30.877310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583622, 40.540833, 30.468464>,  <36.960796, 40.200775, 30.841921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583622, 40.540833, 30.468464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.883110, 40.804546, 30.496071>,  <37.062801, 40.962776, 30.512634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.883110, 40.804546, 30.496071>,  <36.583622, 40.540833, 30.468464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883110, 40.804546, 30.496071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216913, 0.342051, -0.914303,
		-0.626393, 0.669585, 0.399108,
		0.748719, 0.659285, 0.069017,
		37.107727, 41.002331, 30.516775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310875, 41.127701, 30.144840>,  <36.583622, 40.540833, 30.468464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310875, 41.127701, 30.144840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.709778, 41.155022, 30.133459>,  <36.949120, 41.171413, 30.126631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.709778, 41.155022, 30.133459>,  <36.310875, 41.127701, 30.144840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709778, 41.155022, 30.133459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050190, 0.341913, -0.938391,
		-0.054362, 0.937247, 0.344403,
		0.997259, 0.068299, -0.028453,
		37.008957, 41.175510, 30.124924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818733, 41.301567, 30.689417>,  <36.310875, 41.127701, 30.144840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818733, 41.301567, 30.689417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.444313, 41.289505, 30.549192>,  <35.219662, 41.282269, 30.465057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.444313, 41.289505, 30.549192>,  <35.818733, 41.301567, 30.689417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444313, 41.289505, 30.549192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157512, -0.855000, 0.494130,
		-0.314631, 0.517750, 0.795577,
		-0.936054, -0.030156, -0.350562,
		35.163498, 41.280457, 30.444023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284050, 41.202587, 31.294727>,  <35.818733, 41.301567, 30.689417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284050, 41.202587, 31.294727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.135353, 41.066109, 30.949383>,  <35.046135, 40.984222, 30.742176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.135353, 41.066109, 30.949383>,  <35.284050, 41.202587, 31.294727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135353, 41.066109, 30.949383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321577, -0.825099, 0.464543,
		-0.870858, 0.450327, 0.197004,
		-0.371744, -0.341199, -0.863359,
		35.023830, 40.963749, 30.690374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554413, 41.053684, 31.481932>,  <35.284050, 41.202587, 31.294727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554413, 41.053684, 31.481932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.632393, 40.852097, 31.145359>,  <34.679180, 40.731144, 30.943417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.632393, 40.852097, 31.145359>,  <34.554413, 41.053684, 31.481932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632393, 40.852097, 31.145359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277281, -0.851215, 0.445588,
		-0.940802, 0.146444, -0.305689,
		0.194953, -0.503971, -0.841431,
		34.690880, 40.700905, 30.892929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029392, 40.535587, 31.503433>,  <34.554413, 41.053684, 31.481932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029392, 40.535587, 31.503433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.310734, 40.415165, 31.245857>,  <34.479538, 40.342911, 31.091312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.310734, 40.415165, 31.245857>,  <34.029392, 40.535587, 31.503433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310734, 40.415165, 31.245857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058085, -0.927196, 0.370044,
		-0.708463, -0.222869, -0.669633,
		0.703353, -0.301059, -0.643940,
		34.521740, 40.324848, 31.052675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700764, 40.057503, 31.146898>,  <34.029392, 40.535587, 31.503433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700764, 40.057503, 31.146898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.093891, 39.985458, 31.130741>,  <34.329765, 39.942230, 31.121048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.093891, 39.985458, 31.130741>,  <33.700764, 40.057503, 31.146898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093891, 39.985458, 31.130741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137206, -0.859225, 0.492856,
		-0.123475, -0.478846, -0.869173,
		0.982817, -0.180111, -0.040392,
		34.388737, 39.931423, 31.118624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657520, 39.414673, 31.126579>,  <33.700764, 40.057503, 31.146898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657520, 39.414673, 31.126579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.045460, 39.469494, 31.207191>,  <34.278221, 39.502388, 31.255558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.045460, 39.469494, 31.207191>,  <33.657520, 39.414673, 31.126579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045460, 39.469494, 31.207191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004957, -0.837828, 0.545913,
		0.243665, -0.528452, -0.813244,
		0.969847, 0.137051, 0.201530,
		34.336414, 39.510609, 31.267651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006580, 38.757240, 30.997540>,  <33.657520, 39.414673, 31.126579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006580, 38.757240, 30.997540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.256779, 38.951752, 31.241602>,  <34.406898, 39.068459, 31.388039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.256779, 38.951752, 31.241602>,  <34.006580, 38.757240, 30.997540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256779, 38.951752, 31.241602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044349, -0.802918, 0.594437,
		0.778965, -0.344759, -0.523789,
		0.625497, 0.486275, 0.610155,
		34.444427, 39.097633, 31.424648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558456, 38.271923, 31.168636>,  <34.006580, 38.757240, 30.997540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558456, 38.271923, 31.168636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.570564, 38.558926, 31.446995>,  <34.577827, 38.731125, 31.614010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.570564, 38.558926, 31.446995>,  <34.558456, 38.271923, 31.168636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570564, 38.558926, 31.446995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174769, -0.689290, 0.703090,
		0.984144, 0.100339, -0.146262,
		0.030269, 0.717504, 0.695897,
		34.579643, 38.774178, 31.655764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126709, 38.100800, 31.618824>,  <34.558456, 38.271923, 31.168636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126709, 38.100800, 31.618824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.893105, 38.342674, 31.835443>,  <34.752941, 38.487801, 31.965416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.893105, 38.342674, 31.835443>,  <35.126709, 38.100800, 31.618824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893105, 38.342674, 31.835443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073932, -0.624748, 0.777319,
		0.808369, 0.494003, 0.320156,
		-0.584015, 0.604691, 0.541550,
		34.717899, 38.524082, 31.997908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461369, 38.164978, 32.266762>,  <35.126709, 38.100800, 31.618824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461369, 38.164978, 32.266762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.073582, 38.251492, 32.312977>,  <34.840908, 38.303402, 32.340706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.073582, 38.251492, 32.312977>,  <35.461369, 38.164978, 32.266762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073582, 38.251492, 32.312977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060953, -0.668947, 0.740807,
		0.237516, 0.711147, 0.661707,
		-0.969469, 0.216287, 0.115539,
		34.782742, 38.316376, 32.347637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417068, 38.159145, 33.005302>,  <35.461369, 38.164978, 32.266762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417068, 38.159145, 33.005302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.043049, 38.113251, 32.871128>,  <34.818638, 38.085716, 32.790623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.043049, 38.113251, 32.871128>,  <35.417068, 38.159145, 33.005302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043049, 38.113251, 32.871128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143052, -0.743620, 0.653120,
		-0.324369, 0.658684, 0.678910,
		-0.935051, -0.114732, -0.335433,
		34.762535, 38.078831, 32.770496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041313, 38.326508, 33.460770>,  <35.417068, 38.159145, 33.005302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041313, 38.326508, 33.460770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.835812, 38.053276, 33.253128>,  <34.712513, 37.889339, 33.128544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.835812, 38.053276, 33.253128>,  <35.041313, 38.326508, 33.460770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835812, 38.053276, 33.253128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219379, -0.480348, 0.849199,
		-0.829417, 0.550157, 0.096926,
		-0.513751, -0.683077, -0.519102,
		34.681686, 37.848354, 33.097397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.256073, 44.251942, 28.148876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975914, 44.043320, 27.953972>,  <34.807819, 43.918148, 27.837029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975914, 44.043320, 27.953972>,  <35.256073, 44.251942, 28.148876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975914, 44.043320, 27.953972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111341, -0.594483, 0.796362,
		-0.705012, 0.612024, 0.358307,
		-0.700400, -0.521551, -0.487261,
		34.765793, 43.886856, 27.807793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705200, 44.218525, 28.654215>,  <35.256073, 44.251942, 28.148876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705200, 44.218525, 28.654215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673210, 43.937332, 28.371536>,  <34.654015, 43.768616, 28.201929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673210, 43.937332, 28.371536>,  <34.705200, 44.218525, 28.654215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673210, 43.937332, 28.371536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004349, -0.709208, 0.704986,
		-0.996788, 0.053307, 0.059776,
		-0.079974, -0.702981, -0.706698,
		34.649220, 43.726437, 28.159527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068157, 43.802113, 28.807661>,  <34.705200, 44.218525, 28.654215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068157, 43.802113, 28.807661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314590, 43.576187, 28.588053>,  <34.462448, 43.440632, 28.456287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314590, 43.576187, 28.588053>,  <34.068157, 43.802113, 28.807661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314590, 43.576187, 28.588053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225454, -0.794293, 0.564154,
		-0.754730, -0.223783, -0.616687,
		0.616078, -0.564819, -0.549024,
		34.499416, 43.406742, 28.423346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714363, 43.173561, 28.781752>,  <34.068157, 43.802113, 28.807661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714363, 43.173561, 28.781752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094650, 43.087162, 28.692768>,  <34.322823, 43.035324, 28.639378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094650, 43.087162, 28.692768>,  <33.714363, 43.173561, 28.781752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094650, 43.087162, 28.692768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052386, -0.819029, 0.571356,
		-0.305610, -0.531543, -0.789978,
		0.950714, -0.215995, -0.222458,
		34.379864, 43.022362, 28.626030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704884, 42.464451, 28.709219>,  <33.714363, 43.173561, 28.781752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704884, 42.464451, 28.709219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081684, 42.577900, 28.780996>,  <34.307762, 42.645969, 28.824062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081684, 42.577900, 28.780996>,  <33.704884, 42.464451, 28.709219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081684, 42.577900, 28.780996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150728, -0.835220, 0.528856,
		0.299869, -0.471135, -0.829524,
		0.941998, 0.283620, 0.179444,
		34.364285, 42.662987, 28.834829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051926, 41.857719, 28.565723>,  <33.704884, 42.464451, 28.709219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051926, 41.857719, 28.565723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316811, 42.069218, 28.778101>,  <34.475742, 42.196117, 28.905527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316811, 42.069218, 28.778101>,  <34.051926, 41.857719, 28.565723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316811, 42.069218, 28.778101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292530, -0.834771, 0.466458,
		0.689856, -0.153576, -0.707470,
		0.662212, 0.528745, 0.530946,
		34.515472, 42.227840, 28.937386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674004, 41.574715, 28.514179>,  <34.051926, 41.857719, 28.565723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674004, 41.574715, 28.514179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677357, 41.758938, 28.869215>,  <34.679367, 41.869473, 29.082237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677357, 41.758938, 28.869215>,  <34.674004, 41.574715, 28.514179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677357, 41.758938, 28.869215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458683, -0.790502, 0.405852,
		0.888560, 0.403721, -0.217876,
		0.008381, 0.460560, 0.887589,
		34.679871, 41.897106, 29.135492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382469, 41.514519, 28.763062>,  <34.674004, 41.574715, 28.514179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382469, 41.514519, 28.763062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176056, 41.589043, 29.097485>,  <35.052208, 41.633759, 29.298140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176056, 41.589043, 29.097485>,  <35.382469, 41.514519, 28.763062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176056, 41.589043, 29.097485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540693, -0.686173, 0.486639,
		0.664346, 0.703175, 0.253355,
		-0.516038, 0.186310, 0.836058,
		35.021244, 41.644936, 29.348303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918175, 41.368084, 29.304066>,  <35.382469, 41.514519, 28.763062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918175, 41.368084, 29.304066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548851, 41.339722, 29.455044>,  <35.327255, 41.322704, 29.545631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548851, 41.339722, 29.455044>,  <35.918175, 41.368084, 29.304066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548851, 41.339722, 29.455044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325849, -0.664804, 0.672203,
		0.203264, 0.743644, 0.636928,
		-0.923312, -0.070908, 0.377447,
		35.271858, 41.318451, 29.568277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479603, 41.693333, 29.721897>,  <35.918175, 41.368084, 29.304066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479603, 41.693333, 29.721897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837303, 41.514980, 29.737396>,  <37.051926, 41.407970, 29.746695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837303, 41.514980, 29.737396>,  <36.479603, 41.693333, 29.721897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837303, 41.514980, 29.737396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105581, 0.126039, -0.986391,
		0.434927, 0.886175, 0.159787,
		0.894255, -0.445878, 0.038746,
		37.105579, 41.381218, 29.749020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044308, 42.228569, 29.532539>,  <36.479603, 41.693333, 29.721897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044308, 42.228569, 29.532539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232548, 41.878635, 29.486591>,  <37.345493, 41.668674, 29.459023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232548, 41.878635, 29.486591>,  <37.044308, 42.228569, 29.532539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232548, 41.878635, 29.486591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281888, 0.272427, -0.919958,
		0.836108, 0.400551, 0.374810,
		0.470599, -0.874838, -0.114868,
		37.373726, 41.616184, 29.452131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821327, 42.351929, 29.367319>,  <37.044308, 42.228569, 29.532539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821327, 42.351929, 29.367319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719830, 41.992451, 29.224232>,  <37.658932, 41.776764, 29.138380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719830, 41.992451, 29.224232>,  <37.821327, 42.351929, 29.367319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719830, 41.992451, 29.224232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293331, 0.280910, -0.913809,
		0.921721, -0.336805, 0.192335,
		-0.253747, -0.898694, -0.357716,
		37.643707, 41.722843, 29.116917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436417, 42.037441, 29.012793>,  <37.821327, 42.351929, 29.367319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436417, 42.037441, 29.012793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143219, 41.810982, 28.861952>,  <37.967300, 41.675106, 28.771448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143219, 41.810982, 28.861952>,  <38.436417, 42.037441, 29.012793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143219, 41.810982, 28.861952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351394, 0.159536, -0.922535,
		0.582450, -0.808720, 0.082002,
		-0.732990, -0.566145, -0.377101,
		37.923321, 41.641140, 28.748821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752304, 41.653404, 28.568752>,  <38.436417, 42.037441, 29.012793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752304, 41.653404, 28.568752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378582, 41.662670, 28.426468>,  <38.154346, 41.668228, 28.341097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378582, 41.662670, 28.426468>,  <38.752304, 41.653404, 28.568752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378582, 41.662670, 28.426468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354318, 0.169734, -0.919592,
		0.039073, -0.985218, -0.166792,
		-0.934308, 0.023166, -0.355712,
		38.098289, 41.669621, 28.319754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839184, 41.320011, 27.841431>,  <38.752304, 41.653404, 28.568752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839184, 41.320011, 27.841431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487659, 41.508675, 27.870327>,  <38.276745, 41.621872, 27.887665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487659, 41.508675, 27.870327>,  <38.839184, 41.320011, 27.841431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487659, 41.508675, 27.870327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105234, 0.339247, -0.934792,
		-0.465414, -0.813907, -0.347771,
		-0.878815, 0.471663, 0.072239,
		38.224014, 41.650173, 27.891998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577953, 41.218414, 27.113474>,  <38.839184, 41.320011, 27.841431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577953, 41.218414, 27.113474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366085, 41.499779, 27.303064>,  <38.238964, 41.668598, 27.416819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366085, 41.499779, 27.303064>,  <38.577953, 41.218414, 27.113474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366085, 41.499779, 27.303064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117846, 0.492355, -0.862380,
		-0.839976, -0.512635, -0.177892,
		-0.529672, 0.703415, 0.473978,
		38.207184, 41.710804, 27.445257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967396, 41.366104, 26.719118>,  <38.577953, 41.218414, 27.113474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967396, 41.366104, 26.719118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051071, 41.688618, 26.940439>,  <38.101276, 41.882126, 27.073233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051071, 41.688618, 26.940439>,  <37.967396, 41.366104, 26.719118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051071, 41.688618, 26.940439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208535, 0.589590, -0.780318,
		-0.955380, 0.047853, 0.291476,
		0.209192, 0.806284, 0.553304,
		38.113831, 41.930504, 27.106430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361595, 41.817463, 26.592915>,  <37.967396, 41.366104, 26.719118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361595, 41.817463, 26.592915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629059, 42.068325, 26.752699>,  <37.789539, 42.218842, 26.848570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629059, 42.068325, 26.752699>,  <37.361595, 41.817463, 26.592915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629059, 42.068325, 26.752699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178258, 0.656758, -0.732729,
		-0.721884, 0.418741, 0.550944,
		0.668661, 0.627156, 0.399459,
		37.829659, 42.256474, 26.872538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104965, 42.473404, 26.538496>,  <37.361595, 41.817463, 26.592915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104965, 42.473404, 26.538496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485638, 42.575451, 26.606861>,  <37.714043, 42.636681, 26.647881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485638, 42.575451, 26.606861>,  <37.104965, 42.473404, 26.538496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485638, 42.575451, 26.606861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067917, 0.717665, -0.693068,
		-0.299474, 0.647974, 0.700318,
		0.951684, 0.255119, 0.170914,
		37.771141, 42.651985, 26.658134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095219, 43.167461, 26.510683>,  <37.104965, 42.473404, 26.538496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095219, 43.167461, 26.510683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471550, 43.060867, 26.426950>,  <37.697350, 42.996910, 26.376711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471550, 43.060867, 26.426950>,  <37.095219, 43.167461, 26.510683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471550, 43.060867, 26.426950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015292, 0.650492, -0.759359,
		0.338526, 0.711229, 0.616079,
		0.940833, -0.266484, -0.209332,
		37.753799, 42.980923, 26.364151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478737, 43.780075, 26.478109>,  <37.095219, 43.167461, 26.510683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478737, 43.780075, 26.478109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692688, 43.501198, 26.287182>,  <37.821056, 43.333874, 26.172625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692688, 43.501198, 26.287182>,  <37.478737, 43.780075, 26.478109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692688, 43.501198, 26.287182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050600, 0.590338, -0.805568,
		0.843415, 0.406726, 0.351035,
		0.534875, -0.697191, -0.477319,
		37.853149, 43.292042, 26.143986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939625, 44.140236, 26.153028>,  <37.478737, 43.780075, 26.478109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939625, 44.140236, 26.153028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911114, 43.794548, 25.953814>,  <37.894009, 43.587135, 25.834286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911114, 43.794548, 25.953814>,  <37.939625, 44.140236, 26.153028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911114, 43.794548, 25.953814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085776, 0.502766, -0.860156,
		0.993762, -0.018588, -0.109964,
		-0.071275, -0.864223, -0.498035,
		37.889732, 43.535282, 25.804403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380089, 44.305889, 25.615835>,  <37.939625, 44.140236, 26.153028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380089, 44.305889, 25.615835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157536, 43.990181, 25.511923>,  <38.024006, 43.800755, 25.449575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157536, 43.990181, 25.511923>,  <38.380089, 44.305889, 25.615835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157536, 43.990181, 25.511923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079629, 0.361848, -0.928830,
		0.827104, -0.496096, -0.264174,
		-0.556379, -0.789275, -0.259783,
		37.990623, 43.753399, 25.433989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.041847, 39.184036, 23.877369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.201130, 39.546318, 23.935505>,  <32.296700, 39.763687, 23.970387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.201130, 39.546318, 23.935505>,  <32.041847, 39.184036, 23.877369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201130, 39.546318, 23.935505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634605, -0.386418, 0.669297,
		0.662349, -0.174286, -0.728641,
		0.398209, 0.905707, 0.145340,
		32.320591, 39.818031, 23.979107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736786, 39.078613, 24.020712>,  <32.041847, 39.184036, 23.877369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736786, 39.078613, 24.020712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.666142, 39.430313, 24.197680>,  <32.623756, 39.641331, 24.303860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.666142, 39.430313, 24.197680>,  <32.736786, 39.078613, 24.020712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666142, 39.430313, 24.197680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485102, -0.313352, 0.816386,
		0.856438, 0.358801, -0.371183,
		-0.176609, 0.879245, 0.442421,
		32.613159, 39.694088, 24.330406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367828, 39.291584, 24.223328>,  <32.736786, 39.078613, 24.020712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367828, 39.291584, 24.223328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.111198, 39.473072, 24.470718>,  <32.957218, 39.581966, 24.619152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.111198, 39.473072, 24.470718>,  <33.367828, 39.291584, 24.223328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111198, 39.473072, 24.470718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635069, -0.138000, 0.760028,
		0.430191, 0.880393, -0.199607,
		-0.641578, 0.453722, 0.618477,
		32.918724, 39.609188, 24.656261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799870, 39.582104, 24.774845>,  <33.367828, 39.291584, 24.223328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799870, 39.582104, 24.774845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.429329, 39.574390, 24.925314>,  <33.207005, 39.569763, 25.015594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.429329, 39.574390, 24.925314>,  <33.799870, 39.582104, 24.774845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429329, 39.574390, 24.925314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360127, -0.338014, 0.869514,
		0.110384, 0.940943, 0.320064,
		-0.926350, -0.019283, 0.376171,
		33.151424, 39.568607, 25.038166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981491, 39.591206, 25.458038>,  <33.799870, 39.582104, 24.774845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981491, 39.591206, 25.458038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.602844, 39.462456, 25.451029>,  <33.375656, 39.385204, 25.446823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.602844, 39.462456, 25.451029>,  <33.981491, 39.591206, 25.458038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602844, 39.462456, 25.451029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175748, -0.560914, 0.809004,
		-0.270226, 0.762741, 0.587541,
		-0.946620, -0.321873, -0.017523,
		33.318859, 39.365894, 25.445772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806442, 39.649483, 26.110752>,  <33.981491, 39.591206, 25.458038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806442, 39.649483, 26.110752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.537010, 39.403671, 25.946484>,  <33.375351, 39.256184, 25.847923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.537010, 39.403671, 25.946484>,  <33.806442, 39.649483, 26.110752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537010, 39.403671, 25.946484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025023, -0.574264, 0.818288,
		-0.738692, 0.540904, 0.402189,
		-0.673578, -0.614527, -0.410669,
		33.334938, 39.219315, 25.823282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301140, 39.514675, 26.588007>,  <33.806442, 39.649483, 26.110752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301140, 39.514675, 26.588007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.247204, 39.201733, 26.344782>,  <33.214844, 39.013969, 26.198847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.247204, 39.201733, 26.344782>,  <33.301140, 39.514675, 26.588007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247204, 39.201733, 26.344782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024458, -0.610851, 0.791367,
		-0.990566, 0.121579, 0.063232,
		-0.134839, -0.782355, -0.608062,
		33.206753, 38.967026, 26.162363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899265, 39.081139, 26.982056>,  <33.301140, 39.514675, 26.588007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899265, 39.081139, 26.982056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.071468, 38.851189, 26.703724>,  <33.174789, 38.713219, 26.536724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.071468, 38.851189, 26.703724>,  <32.899265, 39.081139, 26.982056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071468, 38.851189, 26.703724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174674, -0.703290, 0.689109,
		-0.885521, -0.418213, -0.202360,
		0.430512, -0.574874, -0.695830,
		33.200623, 38.678726, 26.494974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592392, 38.357719, 26.997700>,  <32.899265, 39.081139, 26.982056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592392, 38.357719, 26.997700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.929668, 38.303478, 26.789604>,  <33.132034, 38.270931, 26.664747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.929668, 38.303478, 26.789604>,  <32.592392, 38.357719, 26.997700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929668, 38.303478, 26.789604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173612, -0.847143, 0.502202,
		-0.508817, -0.513770, -0.690758,
		0.843187, -0.135605, -0.520237,
		33.182625, 38.262798, 26.633533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596863, 37.692600, 26.804726>,  <32.592392, 38.357719, 26.997700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596863, 37.692600, 26.804726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.980953, 37.798069, 26.767958>,  <33.211407, 37.861351, 26.745897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.980953, 37.798069, 26.767958>,  <32.596863, 37.692600, 26.804726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980953, 37.798069, 26.767958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277416, -0.863280, 0.421649,
		0.031826, -0.430377, -0.902088,
		0.960223, 0.263673, -0.091918,
		33.269020, 37.877171, 26.740381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941700, 37.158604, 26.400820>,  <32.596863, 37.692600, 26.804726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941700, 37.158604, 26.400820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.184689, 37.356560, 26.649357>,  <33.330482, 37.475334, 26.798479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.184689, 37.356560, 26.649357>,  <32.941700, 37.158604, 26.400820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184689, 37.356560, 26.649357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226087, -0.857577, 0.462003,
		0.761489, -0.140176, -0.632840,
		0.607470, 0.494887, 0.621343,
		33.366928, 37.505028, 26.835760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614384, 36.801495, 26.357550>,  <32.941700, 37.158604, 26.400820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614384, 36.801495, 26.357550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.623142, 37.015068, 26.695646>,  <33.628395, 37.143211, 26.898504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.623142, 37.015068, 26.695646>,  <33.614384, 36.801495, 26.357550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623142, 37.015068, 26.695646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338228, -0.799548, 0.496311,
		0.940809, 0.275018, -0.198098,
		0.021894, 0.533936, 0.845241,
		33.629711, 37.175247, 26.949219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000896, 36.285526, 26.751804>,  <33.614384, 36.801495, 26.357550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000896, 36.285526, 26.751804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.889397, 36.574196, 27.005257>,  <33.822498, 36.747398, 27.157328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.889397, 36.574196, 27.005257>,  <34.000896, 36.285526, 26.751804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889397, 36.574196, 27.005257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263522, -0.576977, 0.773081,
		0.923501, 0.382472, -0.029344,
		-0.278751, 0.721674, 0.633628,
		33.805771, 36.790699, 27.195345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602303, 36.339558, 27.199770>,  <34.000896, 36.285526, 26.751804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602303, 36.339558, 27.199770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.258564, 36.461727, 27.363838>,  <34.052322, 36.535030, 27.462280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.258564, 36.461727, 27.363838>,  <34.602303, 36.339558, 27.199770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258564, 36.461727, 27.363838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124805, -0.652558, 0.747390,
		0.495934, 0.693457, 0.522654,
		-0.859345, 0.305427, 0.410173,
		34.000759, 36.553356, 27.486891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212002, 36.657700, 27.481897>,  <34.602303, 36.339558, 27.199770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212002, 36.657700, 27.481897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.524700, 36.493366, 27.294243>,  <35.712318, 36.394768, 27.181650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.524700, 36.493366, 27.294243>,  <35.212002, 36.657700, 27.481897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524700, 36.493366, 27.294243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312010, 0.393687, -0.864674,
		0.539928, 0.822331, 0.179580,
		0.781747, -0.410831, -0.469138,
		35.759224, 36.370117, 27.153502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410328, 37.158272, 27.084473>,  <35.212002, 36.657700, 27.481897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410328, 37.158272, 27.084473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.564537, 36.823761, 26.928514>,  <35.657063, 36.623055, 26.834940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.564537, 36.823761, 26.928514>,  <35.410328, 37.158272, 27.084473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564537, 36.823761, 26.928514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272312, 0.300620, -0.914042,
		0.881601, 0.458554, -0.111833,
		0.385519, -0.836275, -0.389897,
		35.680191, 36.572880, 26.811546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988087, 37.423531, 26.669788>,  <35.410328, 37.158272, 27.084473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988087, 37.423531, 26.669788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877403, 37.065784, 26.529198>,  <35.810993, 36.851135, 26.444843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877403, 37.065784, 26.529198>,  <35.988087, 37.423531, 26.669788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877403, 37.065784, 26.529198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147721, 0.401001, -0.904089,
		0.949532, -0.198248, -0.243077,
		-0.276708, -0.894369, -0.351478,
		35.794392, 36.797474, 26.423754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311211, 37.363319, 26.034588>,  <35.988087, 37.423531, 26.669788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311211, 37.363319, 26.034588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.032555, 37.077465, 26.009342>,  <35.865360, 36.905952, 25.994194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.032555, 37.077465, 26.009342>,  <36.311211, 37.363319, 26.034588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032555, 37.077465, 26.009342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246877, 0.321401, -0.914195,
		0.673601, -0.621288, -0.400329,
		-0.696644, -0.714635, -0.063114,
		35.823563, 36.863075, 25.990408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386227, 37.146305, 25.328873>,  <36.311211, 37.363319, 26.034588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386227, 37.146305, 25.328873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027470, 37.018967, 25.451666>,  <35.812214, 36.942566, 25.525343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027470, 37.018967, 25.451666>,  <36.386227, 37.146305, 25.328873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027470, 37.018967, 25.451666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396646, 0.272056, -0.876731,
		0.195582, -0.908100, -0.370274,
		-0.896894, -0.318340, 0.306985,
		35.758400, 36.923462, 25.543760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156219, 36.761799, 24.820633>,  <36.386227, 37.146305, 25.328873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156219, 36.761799, 24.820633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.836662, 36.882633, 25.028677>,  <35.644928, 36.955135, 25.153503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.836662, 36.882633, 25.028677>,  <36.156219, 36.761799, 24.820633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836662, 36.882633, 25.028677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430070, 0.317630, -0.845075,
		-0.420490, -0.898807, -0.123832,
		-0.798892, 0.302089, 0.520110,
		35.596996, 36.973259, 25.184710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620701, 36.387817, 24.454370>,  <36.156219, 36.761799, 24.820633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620701, 36.387817, 24.454370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.458752, 36.704086, 24.638069>,  <35.361584, 36.893848, 24.748289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.458752, 36.704086, 24.638069>,  <35.620701, 36.387817, 24.454370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458752, 36.704086, 24.638069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551483, 0.189465, -0.812385,
		-0.729345, -0.582181, 0.359335,
		-0.404874, 0.790676, 0.459248,
		35.337288, 36.941288, 24.775843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003021, 36.549164, 24.044033>,  <35.620701, 36.387817, 24.454370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003021, 36.549164, 24.044033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030304, 36.902714, 24.229126>,  <35.046673, 37.114841, 24.340181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.030304, 36.902714, 24.229126>,  <35.003021, 36.549164, 24.044033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030304, 36.902714, 24.229126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207398, 0.466240, -0.860004,
		-0.975876, -0.037309, 0.215115,
		0.068209, 0.883871, 0.462730,
		35.050766, 37.167873, 24.367945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534252, 36.943050, 23.751356>,  <35.003021, 36.549164, 24.044033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534252, 36.943050, 23.751356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.721272, 37.248829, 23.928905>,  <34.833485, 37.432297, 24.035435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.721272, 37.248829, 23.928905>,  <34.534252, 36.943050, 23.751356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721272, 37.248829, 23.928905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124127, 0.553942, -0.823250,
		-0.875208, 0.329814, 0.353884,
		0.467550, 0.764442, 0.443875,
		34.861538, 37.478161, 24.062069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076252, 37.490223, 23.719530>,  <34.534252, 36.943050, 23.751356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076252, 37.490223, 23.719530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.440540, 37.650955, 23.757740>,  <34.659111, 37.747395, 23.780666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.440540, 37.650955, 23.757740>,  <34.076252, 37.490223, 23.719530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440540, 37.650955, 23.757740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236501, 0.696949, -0.677000,
		-0.338613, 0.593965, 0.729758,
		0.910719, 0.401830, 0.095523,
		34.713757, 37.771503, 23.786396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951626, 38.146343, 23.877222>,  <34.076252, 37.490223, 23.719530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951626, 38.146343, 23.877222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.321339, 38.139145, 23.724709>,  <34.543167, 38.134827, 23.633200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.321339, 38.139145, 23.724709>,  <33.951626, 38.146343, 23.877222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321339, 38.139145, 23.724709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255884, 0.711996, -0.653900,
		0.283239, 0.701953, 0.653481,
		0.924283, -0.017994, -0.381284,
		34.598625, 38.133747, 23.610323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058697, 38.813919, 23.835024>,  <33.951626, 38.146343, 23.877222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058697, 38.813919, 23.835024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.322136, 38.627934, 23.598360>,  <34.480198, 38.516342, 23.456362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.322136, 38.627934, 23.598360>,  <34.058697, 38.813919, 23.835024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322136, 38.627934, 23.598360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141107, 0.696003, -0.704037,
		0.739148, 0.547163, 0.392775,
		0.658596, -0.464964, -0.591658,
		34.519714, 38.488445, 23.420862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468094, 39.361912, 23.572252>,  <34.058697, 38.813919, 23.835024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468094, 39.361912, 23.572252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.505798, 39.055206, 23.318264>,  <34.528423, 38.871181, 23.165871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.505798, 39.055206, 23.318264>,  <34.468094, 39.361912, 23.572252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505798, 39.055206, 23.318264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078315, 0.630123, -0.772535,
		0.992462, 0.122550, -0.000651,
		0.094264, -0.766763, -0.634971,
		34.534077, 38.825176, 23.127773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122162, 39.521133, 23.126055>,  <34.468094, 39.361912, 23.572252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122162, 39.521133, 23.126055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.868683, 39.268845, 22.946892>,  <34.716595, 39.117470, 22.839394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.868683, 39.268845, 22.946892>,  <35.122162, 39.521133, 23.126055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868683, 39.268845, 22.946892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067659, 0.621972, -0.780111,
		0.770619, -0.464047, -0.436814,
		-0.633694, -0.630723, -0.447906,
		34.678574, 39.079628, 22.812519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820133, 39.750542, 22.803247>,  <35.122162, 39.521133, 23.126055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820133, 39.750542, 22.803247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.051689, 40.045937, 22.941540>,  <36.190620, 40.223175, 23.024515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.051689, 40.045937, 22.941540>,  <35.820133, 39.750542, 22.803247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051689, 40.045937, 22.941540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201682, -0.540495, 0.816817,
		0.790073, -0.403116, -0.461824,
		0.578885, 0.738487, 0.345729,
		36.225353, 40.267483, 23.045258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495670, 39.431396, 22.921431>,  <35.820133, 39.750542, 22.803247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495670, 39.431396, 22.921431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.504570, 39.766106, 23.140266>,  <36.509911, 39.966930, 23.271568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.504570, 39.766106, 23.140266>,  <36.495670, 39.431396, 22.921431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504570, 39.766106, 23.140266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347831, -0.519519, 0.780457,
		0.937293, 0.172928, -0.302618,
		0.022253, 0.836777, 0.547091,
		36.511246, 40.017139, 23.304394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143509, 39.516247, 23.151794>,  <36.495670, 39.431396, 22.921431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143509, 39.516247, 23.151794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.898781, 39.727913, 23.386969>,  <36.751945, 39.854912, 23.528072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.898781, 39.727913, 23.386969>,  <37.143509, 39.516247, 23.151794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898781, 39.727913, 23.386969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398999, -0.435332, 0.807023,
		0.682993, 0.728335, 0.055208,
		-0.611817, 0.529163, 0.587934,
		36.715237, 39.886662, 23.563349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550308, 39.596920, 23.775438>,  <37.143509, 39.516247, 23.151794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550308, 39.596920, 23.775438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.192642, 39.728546, 23.896889>,  <36.978043, 39.807522, 23.969759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.192642, 39.728546, 23.896889>,  <37.550308, 39.596920, 23.775438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192642, 39.728546, 23.896889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222856, -0.261075, 0.939242,
		0.388342, 0.907500, 0.160109,
		-0.894162, 0.329066, 0.303628,
		36.924393, 39.827267, 23.987978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630089, 40.076721, 24.346315>,  <37.550308, 39.596920, 23.775438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630089, 40.076721, 24.346315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.254009, 39.941147, 24.359892>,  <37.028362, 39.859802, 24.368038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.254009, 39.941147, 24.359892>,  <37.630089, 40.076721, 24.346315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254009, 39.941147, 24.359892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102138, -0.185454, 0.977330,
		-0.324957, 0.922350, 0.208982,
		-0.940197, -0.338935, 0.033943,
		36.971951, 39.839466, 24.370075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224529, 40.485172, 24.876997>,  <37.630089, 40.076721, 24.346315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224529, 40.485172, 24.876997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026947, 40.142277, 24.818830>,  <36.908398, 39.936539, 24.783932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.026947, 40.142277, 24.818830>,  <37.224529, 40.485172, 24.876997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026947, 40.142277, 24.818830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000720, -0.167645, 0.985847,
		-0.869487, 0.486860, 0.083427,
		-0.493956, -0.857241, -0.145415,
		36.878761, 39.885105, 24.775206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781425, 40.453106, 25.441957>,  <37.224529, 40.485172, 24.876997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781425, 40.453106, 25.441957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.741886, 40.074215, 25.319979>,  <36.718163, 39.846882, 25.246792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.741886, 40.074215, 25.319979>,  <36.781425, 40.453106, 25.441957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741886, 40.074215, 25.319979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038626, -0.302562, 0.952347,
		-0.994353, 0.105913, -0.006681,
		-0.098844, -0.947227, -0.304945,
		36.712234, 39.790047, 25.228495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270290, 40.164501, 25.911112>,  <36.781425, 40.453106, 25.441957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270290, 40.164501, 25.911112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.492950, 39.875233, 25.747572>,  <36.626549, 39.701672, 25.649448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.492950, 39.875233, 25.747572>,  <36.270290, 40.164501, 25.911112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492950, 39.875233, 25.747572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023392, -0.478307, 0.877881,
		-0.830416, -0.498239, -0.249335,
		0.556653, -0.723174, -0.408848,
		36.659946, 39.658279, 25.624918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112549, 39.533947, 26.316439>,  <36.270290, 40.164501, 25.911112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112549, 39.533947, 26.316439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454948, 39.453098, 26.126110>,  <36.660389, 39.404587, 26.011913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454948, 39.453098, 26.126110>,  <36.112549, 39.533947, 26.316439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454948, 39.453098, 26.126110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362453, -0.421652, 0.831166,
		-0.368630, -0.883943, -0.287674,
		0.856002, -0.202125, -0.475821,
		36.711750, 39.392460, 25.983364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295670, 38.856377, 26.390028>,  <36.112549, 39.533947, 26.316439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295670, 38.856377, 26.390028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.649227, 39.015747, 26.292063>,  <36.861362, 39.111370, 26.233284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.649227, 39.015747, 26.292063>,  <36.295670, 38.856377, 26.390028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649227, 39.015747, 26.292063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439178, -0.527077, 0.727539,
		0.160783, -0.750629, -0.640862,
		0.883895, 0.398429, -0.244915,
		36.914394, 39.135277, 26.218588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704292, 38.264507, 26.702715>,  <36.295670, 38.856377, 26.390028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704292, 38.264507, 26.702715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.928814, 38.591862, 26.653429>,  <37.063526, 38.788277, 26.623857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.928814, 38.591862, 26.653429>,  <36.704292, 38.264507, 26.702715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928814, 38.591862, 26.653429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586137, -0.287989, 0.757302,
		0.584283, -0.497295, -0.641336,
		0.561300, 0.818389, -0.123216,
		37.097202, 38.837379, 26.616465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388927, 38.021317, 26.625237>,  <36.704292, 38.264507, 26.702715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388927, 38.021317, 26.625237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.440018, 38.400986, 26.740305>,  <37.470673, 38.628788, 26.809347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.440018, 38.400986, 26.740305>,  <37.388927, 38.021317, 26.625237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440018, 38.400986, 26.740305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512374, -0.311494, 0.800277,
		0.849211, 0.045180, -0.526118,
		0.127726, 0.949173, 0.287673,
		37.478336, 38.685738, 26.826607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083138, 38.108253, 26.854748>,  <37.388927, 38.021317, 26.625237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083138, 38.108253, 26.854748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885162, 38.405712, 27.034536>,  <37.766376, 38.584187, 27.142408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.885162, 38.405712, 27.034536>,  <38.083138, 38.108253, 26.854748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885162, 38.405712, 27.034536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528103, -0.153334, 0.835222,
		0.690029, 0.650752, -0.316831,
		-0.494942, 0.743646, 0.449470,
		37.736679, 38.628807, 27.169376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618919, 38.561569, 27.213118>,  <38.083138, 38.108253, 26.854748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618919, 38.561569, 27.213118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.263355, 38.607967, 27.390377>,  <38.050014, 38.635807, 27.496733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.263355, 38.607967, 27.390377>,  <38.618919, 38.561569, 27.213118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263355, 38.607967, 27.390377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430601, -0.118410, 0.894741,
		0.156258, 0.986167, 0.055309,
		-0.888913, 0.115994, 0.443147,
		37.996681, 38.642765, 27.523321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.723351, 44.133453, 24.879553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.360901, 43.969971, 24.923187>,  <38.143433, 43.871880, 24.949368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.360901, 43.969971, 24.923187>,  <38.723351, 44.133453, 24.879553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360901, 43.969971, 24.923187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236113, 0.274697, -0.932090,
		0.350986, -0.870346, -0.345410,
		-0.906124, -0.408706, 0.109085,
		38.089066, 43.847359, 24.955914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609818, 43.743557, 24.303322>,  <38.723351, 44.133453, 24.879553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609818, 43.743557, 24.303322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.223938, 43.776630, 24.403337>,  <37.992409, 43.796474, 24.463346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.223938, 43.776630, 24.403337>,  <38.609818, 43.743557, 24.303322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223938, 43.776630, 24.403337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221668, 0.257717, -0.940450,
		-0.142195, -0.962677, -0.230292,
		-0.964699, 0.082679, 0.250040,
		37.934528, 43.801434, 24.478350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236004, 43.379948, 23.773191>,  <38.609818, 43.743557, 24.303322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236004, 43.379948, 23.773191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.970894, 43.634541, 23.930984>,  <37.811829, 43.787296, 24.025660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.970894, 43.634541, 23.930984>,  <38.236004, 43.379948, 23.773191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970894, 43.634541, 23.930984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276362, 0.281702, -0.918841,
		-0.695956, -0.718003, -0.010804,
		-0.662774, 0.636487, 0.394481,
		37.772060, 43.825485, 24.049328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630459, 43.368050, 23.312647>,  <38.236004, 43.379948, 23.773191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630459, 43.368050, 23.312647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593124, 43.706497, 23.522552>,  <37.570724, 43.909565, 23.648497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593124, 43.706497, 23.522552>,  <37.630459, 43.368050, 23.312647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593124, 43.706497, 23.522552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435094, 0.439414, -0.785881,
		-0.895535, -0.301669, 0.327129,
		-0.093331, 0.846115, 0.524765,
		37.565125, 43.960331, 23.679981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930317, 43.422432, 23.239645>,  <37.630459, 43.368050, 23.312647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930317, 43.422432, 23.239645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.124233, 43.761669, 23.325171>,  <37.240582, 43.965210, 23.376486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.124233, 43.761669, 23.325171>,  <36.930317, 43.422432, 23.239645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124233, 43.761669, 23.325171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405620, 0.434590, -0.804117,
		-0.774889, 0.303099, 0.554688,
		0.484789, 0.848093, 0.213816,
		37.269669, 44.016098, 23.389315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472672, 44.024654, 23.143900>,  <36.930317, 43.422432, 23.239645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472672, 44.024654, 23.143900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.836369, 44.187721, 23.110222>,  <37.054585, 44.285561, 23.090015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.836369, 44.187721, 23.110222>,  <36.472672, 44.024654, 23.143900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836369, 44.187721, 23.110222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295559, 0.489799, -0.820209,
		-0.293137, 0.770650, 0.565835,
		0.909239, 0.407671, -0.084195,
		37.109138, 44.310024, 23.084963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273411, 44.623013, 22.883064>,  <36.472672, 44.024654, 23.143900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273411, 44.623013, 22.883064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.670765, 44.639679, 22.840254>,  <36.909176, 44.649681, 22.814568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.670765, 44.639679, 22.840254>,  <36.273411, 44.623013, 22.883064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670765, 44.639679, 22.840254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111873, 0.561933, -0.819583,
		0.025992, 0.826133, 0.562876,
		0.993383, 0.041668, -0.107027,
		36.968781, 44.652180, 22.808146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454128, 45.387981, 22.656826>,  <36.273411, 44.623013, 22.883064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454128, 45.387981, 22.656826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.749008, 45.146450, 22.535553>,  <36.925938, 45.001530, 22.462790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.749008, 45.146450, 22.535553>,  <36.454128, 45.387981, 22.656826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749008, 45.146450, 22.535553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097328, 0.349134, -0.932005,
		0.668624, 0.716586, 0.198614,
		0.737204, -0.603830, -0.303183,
		36.970169, 44.965302, 22.444597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742100, 45.770103, 22.199636>,  <36.454128, 45.387981, 22.656826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742100, 45.770103, 22.199636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.901562, 45.413277, 22.114515>,  <36.997238, 45.199181, 22.063442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.901562, 45.413277, 22.114515>,  <36.742100, 45.770103, 22.199636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901562, 45.413277, 22.114515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061743, 0.205408, -0.976727,
		0.915021, 0.402514, 0.026808,
		0.398653, -0.892071, -0.212805,
		37.021156, 45.145657, 22.050674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336452, 45.827740, 21.757038>,  <36.742100, 45.770103, 22.199636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336452, 45.827740, 21.757038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.180389, 45.466484, 21.685358>,  <37.086754, 45.249729, 21.642351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.180389, 45.466484, 21.685358>,  <37.336452, 45.827740, 21.757038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180389, 45.466484, 21.685358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164245, 0.259766, -0.951601,
		0.905982, -0.341839, -0.249685,
		-0.390154, -0.903143, -0.179198,
		37.063343, 45.195541, 21.631599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655529, 45.657764, 21.174570>,  <37.336452, 45.827740, 21.757038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655529, 45.657764, 21.174570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.334885, 45.418919, 21.186337>,  <37.142498, 45.275612, 21.193396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.334885, 45.418919, 21.186337>,  <37.655529, 45.657764, 21.174570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334885, 45.418919, 21.186337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092692, 0.075529, -0.992826,
		0.590612, -0.798590, -0.115893,
		-0.801615, -0.597118, 0.029414,
		37.094398, 45.239784, 21.195160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752708, 45.207478, 20.552555>,  <37.655529, 45.657764, 21.174570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752708, 45.207478, 20.552555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.365398, 45.194595, 20.651669>,  <37.133011, 45.186867, 20.711138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.365398, 45.194595, 20.651669>,  <37.752708, 45.207478, 20.552555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365398, 45.194595, 20.651669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242602, 0.358592, -0.901419,
		-0.059825, -0.932939, -0.355030,
		-0.968279, -0.032203, 0.247785,
		37.074913, 45.184933, 20.726004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437649, 44.911472, 19.930420>,  <37.752708, 45.207478, 20.552555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437649, 44.911472, 19.930420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128582, 45.058178, 20.137676>,  <36.943142, 45.146202, 20.262030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128582, 45.058178, 20.137676>,  <37.437649, 44.911472, 19.930420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128582, 45.058178, 20.137676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397248, 0.357295, -0.845301,
		-0.495153, -0.858968, -0.130375,
		-0.772669, 0.366762, 0.518139,
		36.896782, 45.168205, 20.293118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885727, 44.755093, 19.485485>,  <37.437649, 44.911472, 19.930420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885727, 44.755093, 19.485485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.818024, 45.077198, 19.712784>,  <36.777401, 45.270462, 19.849163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.818024, 45.077198, 19.712784>,  <36.885727, 44.755093, 19.485485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818024, 45.077198, 19.712784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397027, 0.472005, -0.787135,
		-0.902066, -0.358835, 0.239822,
		-0.169255, 0.805264, 0.568246,
		36.767246, 45.318775, 19.883257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459087, 44.373692, 19.175589>,  <36.885727, 44.755093, 19.485485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459087, 44.373692, 19.175589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.316200, 44.097767, 18.923698>,  <36.230469, 43.932213, 18.772564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.316200, 44.097767, 18.923698>,  <36.459087, 44.373692, 19.175589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316200, 44.097767, 18.923698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044161, -0.660983, 0.749101,
		-0.932978, 0.295400, 0.205650,
		-0.357215, -0.689812, -0.629727,
		36.209034, 43.890823, 18.734779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813747, 44.120586, 19.411808>,  <36.459087, 44.373692, 19.175589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813747, 44.120586, 19.411808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.032864, 43.847343, 19.218603>,  <36.164333, 43.683399, 19.102680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.032864, 43.847343, 19.218603>,  <35.813747, 44.120586, 19.411808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032864, 43.847343, 19.218603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084964, -0.619777, 0.780165,
		-0.832293, -0.386325, -0.397545,
		0.547786, -0.683103, -0.483012,
		36.197201, 43.642414, 19.073700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471760, 43.477764, 19.609056>,  <35.813747, 44.120586, 19.411808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471760, 43.477764, 19.609056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.837418, 43.369648, 19.488211>,  <36.056812, 43.304779, 19.415703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.837418, 43.369648, 19.488211>,  <35.471760, 43.477764, 19.609056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837418, 43.369648, 19.488211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051912, -0.661079, 0.748519,
		-0.402040, -0.699941, -0.590293,
		0.914149, -0.270292, -0.302115,
		36.111664, 43.288559, 19.397575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404083, 42.708363, 19.601173>,  <35.471760, 43.477764, 19.609056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404083, 42.708363, 19.601173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.785828, 42.827591, 19.608629>,  <36.014874, 42.899128, 19.613104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.785828, 42.827591, 19.608629>,  <35.404083, 42.708363, 19.601173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785828, 42.827591, 19.608629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173653, -0.604616, 0.777357,
		0.242979, -0.738643, -0.628783,
		0.954362, 0.298071, 0.018642,
		36.072136, 42.917011, 19.614222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747448, 42.156818, 19.572561>,  <35.404083, 42.708363, 19.601173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747448, 42.156818, 19.572561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.030014, 42.399548, 19.718298>,  <36.199554, 42.545185, 19.805740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.030014, 42.399548, 19.718298>,  <35.747448, 42.156818, 19.572561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030014, 42.399548, 19.718298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284785, -0.714929, 0.638571,
		0.647978, -0.347337, -0.677850,
		0.706414, 0.606822, 0.364342,
		36.241940, 42.581593, 19.827600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331421, 41.680595, 19.637280>,  <35.747448, 42.156818, 19.572561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331421, 41.680595, 19.637280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.384216, 42.010212, 19.857655>,  <36.415894, 42.207981, 19.989880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.384216, 42.010212, 19.857655>,  <36.331421, 41.680595, 19.637280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384216, 42.010212, 19.857655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158522, -0.566195, 0.808884,
		0.978494, -0.019426, -0.205359,
		0.131986, 0.824042, 0.550939,
		36.423813, 42.257423, 20.022936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064842, 41.609745, 19.958197>,  <36.331421, 41.680595, 19.637280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064842, 41.609745, 19.958197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.830212, 41.852940, 20.172220>,  <36.689434, 41.998856, 20.300634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.830212, 41.852940, 20.172220>,  <37.064842, 41.609745, 19.958197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830212, 41.852940, 20.172220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039695, -0.638274, 0.768785,
		0.808924, 0.472187, 0.350260,
		-0.586572, 0.607985, 0.535059,
		36.654240, 42.035336, 20.332737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412174, 41.617867, 20.579330>,  <37.064842, 41.609745, 19.958197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412174, 41.617867, 20.579330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.058830, 41.778156, 20.676573>,  <36.846825, 41.874332, 20.734919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.058830, 41.778156, 20.676573>,  <37.412174, 41.617867, 20.579330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058830, 41.778156, 20.676573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031936, -0.466013, 0.884201,
		0.467615, 0.788828, 0.398858,
		-0.883355, 0.400728, 0.243106,
		36.793823, 41.898376, 20.749504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382526, 41.836761, 21.278172>,  <37.412174, 41.617867, 20.579330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382526, 41.836761, 21.278172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.994511, 41.783028, 21.197191>,  <36.761703, 41.750786, 21.148603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.994511, 41.783028, 21.197191>,  <37.382526, 41.836761, 21.278172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994511, 41.783028, 21.197191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146827, -0.339772, 0.928976,
		-0.193582, 0.930865, 0.309867,
		-0.970035, -0.134336, -0.202450,
		36.703499, 41.742725, 21.136456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026695, 42.090374, 21.968121>,  <37.382526, 41.836761, 21.278172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026695, 42.090374, 21.968121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.757565, 41.867344, 21.773630>,  <36.596088, 41.733524, 21.656937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.757565, 41.867344, 21.773630>,  <37.026695, 42.090374, 21.968121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757565, 41.867344, 21.773630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167314, -0.525521, 0.834166,
		-0.720636, 0.642598, 0.260291,
		-0.672822, -0.557580, -0.486226,
		36.555717, 41.700069, 21.627762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347294, 42.215542, 22.289318>,  <37.026695, 42.090374, 21.968121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347294, 42.215542, 22.289318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.319469, 41.872978, 22.084684>,  <36.302776, 41.667439, 21.961905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.319469, 41.872978, 22.084684>,  <36.347294, 42.215542, 22.289318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319469, 41.872978, 22.084684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111606, -0.502925, 0.857094,
		-0.991315, 0.116716, -0.060597,
		-0.069561, -0.856413, -0.511584,
		36.298603, 41.616055, 21.931210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774906, 41.869675, 22.507696>,  <36.347294, 42.215542, 22.289318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774906, 41.869675, 22.507696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.023159, 41.592255, 22.361378>,  <36.172112, 41.425804, 22.273586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.023159, 41.592255, 22.361378>,  <35.774906, 41.869675, 22.507696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023159, 41.592255, 22.361378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047973, -0.499228, 0.865142,
		-0.782633, -0.519386, -0.343109,
		0.620632, -0.693549, -0.365796,
		36.209347, 41.384190, 22.251638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440483, 41.180790, 22.691746>,  <35.774906, 41.869675, 22.507696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440483, 41.180790, 22.691746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.817459, 41.076092, 22.608515>,  <36.043644, 41.013271, 22.558577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.817459, 41.076092, 22.608515>,  <35.440483, 41.180790, 22.691746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817459, 41.076092, 22.608515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014151, -0.590509, 0.806907,
		-0.334078, -0.763405, -0.552814,
		0.942439, -0.261748, -0.208079,
		36.100189, 40.997566, 22.546091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435184, 40.366333, 22.668032>,  <35.440483, 41.180790, 22.691746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435184, 40.366333, 22.668032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.807705, 40.499416, 22.727339>,  <36.031216, 40.579266, 22.762922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.807705, 40.499416, 22.727339>,  <35.435184, 40.366333, 22.668032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807705, 40.499416, 22.727339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055988, -0.532959, 0.844287,
		0.359922, -0.777984, -0.514973,
		0.931301, 0.332709, 0.148266,
		36.087097, 40.599228, 22.771818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216934, 39.681171, 22.359917>,  <35.435184, 40.366333, 22.668032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216934, 39.681171, 22.359917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.894356, 39.446159, 22.333239>,  <34.700809, 39.305153, 22.317232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.894356, 39.446159, 22.333239>,  <35.216934, 39.681171, 22.359917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894356, 39.446159, 22.333239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440654, 0.672355, -0.594780,
		0.394296, -0.450268, -0.801117,
		-0.806445, -0.587535, -0.066695,
		34.652424, 39.269897, 22.313231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131088, 39.571491, 21.688753>,  <35.216934, 39.681171, 22.359917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131088, 39.571491, 21.688753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.776085, 39.550446, 21.871866>,  <34.563084, 39.537819, 21.981733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.776085, 39.550446, 21.871866>,  <35.131088, 39.571491, 21.688753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776085, 39.550446, 21.871866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403245, 0.569459, -0.716317,
		-0.222997, -0.820334, -0.526616,
		-0.887505, -0.052618, 0.457783,
		34.509834, 39.534660, 22.009201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603024, 39.311218, 21.250378>,  <35.131088, 39.571491, 21.688753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603024, 39.311218, 21.250378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426899, 39.532963, 21.532883>,  <34.321224, 39.666008, 21.702387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426899, 39.532963, 21.532883>,  <34.603024, 39.311218, 21.250378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426899, 39.532963, 21.532883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490864, 0.510021, -0.706350,
		-0.751781, -0.657697, 0.047544,
		-0.440316, 0.554358, 0.706264,
		34.294804, 39.699272, 21.744762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062729, 39.549957, 20.918238>,  <34.603024, 39.311218, 21.250378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062729, 39.549957, 20.918238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.011303, 39.754776, 21.257952>,  <33.980446, 39.877666, 21.461781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.011303, 39.754776, 21.257952>,  <34.062729, 39.549957, 20.918238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011303, 39.754776, 21.257952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574312, 0.659723, -0.484697,
		-0.808478, -0.550071, 0.209252,
		-0.128569, 0.512042, 0.849284,
		33.972733, 39.908390, 21.512737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361244, 39.805317, 20.862799>,  <34.062729, 39.549957, 20.918238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361244, 39.805317, 20.862799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.553371, 40.026661, 21.135000>,  <33.668648, 40.159466, 21.298321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.553371, 40.026661, 21.135000>,  <33.361244, 39.805317, 20.862799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553371, 40.026661, 21.135000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429295, 0.824898, -0.367763,
		-0.764852, -0.115494, 0.633769,
		0.480320, 0.553358, 0.680505,
		33.697468, 40.192669, 21.339151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875019, 40.332626, 21.009472>,  <33.361244, 39.805317, 20.862799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875019, 40.332626, 21.009472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.240261, 40.480469, 21.078339>,  <33.459404, 40.569172, 21.119659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.240261, 40.480469, 21.078339>,  <32.875019, 40.332626, 21.009472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240261, 40.480469, 21.078339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279759, 0.875095, -0.394896,
		-0.296618, 0.312414, 0.902449,
		0.913100, 0.369602, 0.172169,
		33.514191, 40.591351, 21.129990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716530, 41.075333, 21.351513>,  <32.875019, 40.332626, 21.009472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716530, 41.075333, 21.351513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.088562, 41.033730, 21.210587>,  <33.311783, 41.008766, 21.126030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.088562, 41.033730, 21.210587>,  <32.716530, 41.075333, 21.351513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088562, 41.033730, 21.210587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083306, 0.874373, -0.478050,
		0.357780, 0.473976, 0.804575,
		0.930083, -0.104011, -0.352318,
		33.367588, 41.002525, 21.104891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522175, 41.814529, 21.684984>,  <32.716530, 41.075333, 21.351513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522175, 41.814529, 21.684984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.129166, 41.811718, 21.759392>,  <31.893360, 41.810032, 21.804037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.129166, 41.811718, 21.759392>,  <32.522175, 41.814529, 21.684984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129166, 41.811718, 21.759392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146603, -0.645021, 0.749970,
		0.114718, 0.764132, 0.634777,
		-0.982521, -0.007025, 0.186019,
		31.834410, 41.809612, 21.815197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488262, 41.885574, 22.426809>,  <32.522175, 41.814529, 21.684984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488262, 41.885574, 22.426809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.119358, 41.768997, 22.325226>,  <31.898016, 41.699051, 22.264277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.119358, 41.768997, 22.325226>,  <32.488262, 41.885574, 22.426809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119358, 41.768997, 22.325226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023469, -0.613536, 0.789318,
		-0.385852, 0.733918, 0.559001,
		-0.922262, -0.291441, -0.253958,
		31.842680, 41.681564, 22.249039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062943, 41.971340, 23.051270>,  <32.488262, 41.885574, 22.426809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062943, 41.971340, 23.051270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856964, 41.707195, 22.832638>,  <31.733377, 41.548706, 22.701458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856964, 41.707195, 22.832638>,  <32.062943, 41.971340, 23.051270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856964, 41.707195, 22.832638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175340, -0.542996, 0.821225,
		-0.839101, 0.518721, 0.163822,
		-0.514941, -0.660367, -0.546581,
		31.702482, 41.509087, 22.668663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522415, 41.756443, 23.478733>,  <32.062943, 41.971340, 23.051270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522415, 41.756443, 23.478733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.600267, 41.462990, 23.218304>,  <31.646978, 41.286919, 23.062046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.600267, 41.462990, 23.218304>,  <31.522415, 41.756443, 23.478733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600267, 41.462990, 23.218304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162274, -0.678706, 0.716258,
		-0.967361, -0.033751, -0.251145,
		0.194628, -0.733635, -0.651076,
		31.658655, 41.242901, 23.022982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236485, 41.115364, 23.828203>,  <31.522415, 41.756443, 23.478733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236485, 41.115364, 23.828203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.447670, 40.926701, 23.545702>,  <31.574381, 40.813503, 23.376202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.447670, 40.926701, 23.545702>,  <31.236485, 41.115364, 23.828203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447670, 40.926701, 23.545702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134116, -0.774862, 0.617740,
		-0.838612, -0.420862, -0.345839,
		0.527961, -0.471662, -0.706253,
		31.606058, 40.785202, 23.333826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121145, 40.400238, 23.843084>,  <31.236485, 41.115364, 23.828203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121145, 40.400238, 23.843084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.486174, 40.422215, 23.681000>,  <31.705191, 40.435398, 23.583750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.486174, 40.422215, 23.681000>,  <31.121145, 40.400238, 23.843084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486174, 40.422215, 23.681000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368585, -0.539643, 0.756922,
		-0.177086, -0.840100, -0.512712,
		0.912571, 0.054938, -0.405211,
		31.759945, 40.438694, 23.559437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401508, 39.714954, 23.784208>,  <31.121145, 40.400238, 23.843084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401508, 39.714954, 23.784208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.721506, 39.954956, 23.783348>,  <31.913506, 40.098957, 23.782831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.721506, 39.954956, 23.783348>,  <31.401508, 39.714954, 23.784208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721506, 39.954956, 23.783348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396519, -0.525991, 0.752400,
		0.450311, -0.602769, -0.658703,
		0.799996, 0.600002, -0.002150,
		31.961504, 40.134956, 23.782703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.333092, 45.103405, 21.250624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.718132, 45.012581, 21.191496>,  <33.949154, 44.958088, 21.156019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.718132, 45.012581, 21.191496>,  <33.333092, 45.103405, 21.250624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718132, 45.012581, 21.191496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155858, 0.017793, 0.987619,
		-0.221621, -0.973718, 0.052517,
		0.962597, -0.227062, -0.147819,
		34.006912, 44.944462, 21.147150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642036, 44.553104, 21.536051>,  <33.333092, 45.103405, 21.250624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642036, 44.553104, 21.536051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.969261, 44.781433, 21.507938>,  <34.165596, 44.918430, 21.491070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.969261, 44.781433, 21.507938>,  <33.642036, 44.553104, 21.536051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969261, 44.781433, 21.507938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154220, -0.099990, 0.982964,
		0.554069, -0.814963, -0.169829,
		0.818061, 0.570821, -0.070282,
		34.214680, 44.952679, 21.486855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028881, 44.224789, 21.914618>,  <33.642036, 44.553104, 21.536051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028881, 44.224789, 21.914618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.205093, 44.581169, 21.870539>,  <34.310822, 44.794998, 21.844091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.205093, 44.581169, 21.870539>,  <34.028881, 44.224789, 21.914618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205093, 44.581169, 21.870539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331547, -0.047391, 0.942247,
		0.834271, -0.451626, -0.316269,
		0.440531, 0.890948, -0.110198,
		34.337254, 44.848454, 21.837479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765877, 44.105423, 22.069143>,  <34.028881, 44.224789, 21.914618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765877, 44.105423, 22.069143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.690861, 44.493683, 22.129368>,  <34.645851, 44.726639, 22.165503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.690861, 44.493683, 22.129368>,  <34.765877, 44.105423, 22.069143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690861, 44.493683, 22.129368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273815, -0.095542, 0.957025,
		0.943321, 0.220705, -0.247860,
		-0.187539, 0.970650, 0.150559,
		34.634598, 44.784878, 22.174536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240265, 44.314476, 22.459074>,  <34.765877, 44.105423, 22.069143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240265, 44.314476, 22.459074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.962440, 44.595863, 22.519371>,  <34.795746, 44.764694, 22.555550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.962440, 44.595863, 22.519371>,  <35.240265, 44.314476, 22.459074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962440, 44.595863, 22.519371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234273, 0.023043, 0.971898,
		0.680222, 0.710356, -0.180807,
		-0.694560, 0.703465, 0.150742,
		34.754074, 44.806904, 22.564594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528751, 44.671753, 22.937098>,  <35.240265, 44.314476, 22.459074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528751, 44.671753, 22.937098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.140549, 44.768066, 22.941864>,  <34.907627, 44.825855, 22.944725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.140549, 44.768066, 22.941864>,  <35.528751, 44.671753, 22.937098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140549, 44.768066, 22.941864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032152, 0.080284, 0.996253,
		0.238922, 0.967253, -0.085657,
		-0.970506, 0.240781, 0.011917,
		34.849396, 44.840302, 22.945438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539940, 45.259361, 23.436121>,  <35.528751, 44.671753, 22.937098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539940, 45.259361, 23.436121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.168915, 45.112221, 23.409836>,  <34.946301, 45.023937, 23.394066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.168915, 45.112221, 23.409836>,  <35.539940, 45.259361, 23.436121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168915, 45.112221, 23.409836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117935, 0.121319, 0.985583,
		-0.354578, 0.921936, -0.155913,
		-0.927559, -0.367853, -0.065711,
		34.890648, 45.001865, 23.390123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138615, 45.696339, 23.822220>,  <35.539940, 45.259361, 23.436121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138615, 45.696339, 23.822220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.926041, 45.357742, 23.809412>,  <34.798496, 45.154583, 23.801727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.926041, 45.357742, 23.809412>,  <35.138615, 45.696339, 23.822220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926041, 45.357742, 23.809412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165632, 0.066765, 0.983925,
		-0.830750, 0.528194, -0.175688,
		-0.531433, -0.846495, -0.032020,
		34.766609, 45.103794, 23.799807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393990, 45.848434, 24.164751>,  <35.138615, 45.696339, 23.822220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393990, 45.848434, 24.164751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.480911, 45.458523, 24.185068>,  <34.533062, 45.224575, 24.197258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.480911, 45.458523, 24.185068>,  <34.393990, 45.848434, 24.164751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480911, 45.458523, 24.185068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150648, 0.017920, 0.988425,
		-0.964409, -0.222439, -0.142955,
		0.217302, -0.974782, 0.050792,
		34.546101, 45.166088, 24.200306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926044, 45.541733, 24.714441>,  <34.393990, 45.848434, 24.164751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926044, 45.541733, 24.714441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.194813, 45.250599, 24.659634>,  <34.356075, 45.075920, 24.626749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.194813, 45.250599, 24.659634>,  <33.926044, 45.541733, 24.714441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194813, 45.250599, 24.659634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053163, -0.231930, 0.971278,
		-0.738711, -0.645339, -0.194533,
		0.671922, -0.727836, -0.137021,
		34.396389, 45.032249, 24.618526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578926, 44.992386, 24.996874>,  <33.926044, 45.541733, 24.714441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578926, 44.992386, 24.996874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.965427, 44.891308, 25.016897>,  <34.197327, 44.830662, 25.028912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.965427, 44.891308, 25.016897>,  <33.578926, 44.992386, 24.996874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965427, 44.891308, 25.016897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121770, -0.276802, 0.953180,
		-0.227002, -0.927108, -0.298230,
		0.966252, -0.252689, 0.050059,
		34.255302, 44.815498, 25.031914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699070, 44.302906, 25.216145>,  <33.578926, 44.992386, 24.996874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699070, 44.302906, 25.216145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.036003, 44.486069, 25.329847>,  <34.238163, 44.595966, 25.398069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.036003, 44.486069, 25.329847>,  <33.699070, 44.302906, 25.216145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036003, 44.486069, 25.329847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060107, -0.444313, 0.893853,
		0.535602, -0.770004, -0.346734,
		0.842329, 0.457908, 0.284258,
		34.288700, 44.623440, 25.415125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390793, 43.571461, 24.965199>,  <33.699070, 44.302906, 25.216145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390793, 43.571461, 24.965199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.004688, 43.524288, 25.058455>,  <32.773026, 43.495987, 25.114408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.004688, 43.524288, 25.058455>,  <33.390793, 43.571461, 24.965199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004688, 43.524288, 25.058455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256593, 0.259818, -0.930943,
		0.049208, -0.958430, -0.281052,
		-0.965266, -0.117925, 0.233141,
		32.715107, 43.488911, 25.128397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192577, 43.211609, 24.465025>,  <33.390793, 43.571461, 24.965199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192577, 43.211609, 24.465025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.853073, 43.359184, 24.616541>,  <32.649368, 43.447731, 24.707451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.853073, 43.359184, 24.616541>,  <33.192577, 43.211609, 24.465025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853073, 43.359184, 24.616541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306144, 0.241211, -0.920920,
		-0.431132, -0.897609, -0.091783,
		-0.848764, 0.368939, 0.378792,
		32.598442, 43.469868, 24.730179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715199, 43.091927, 24.021719>,  <33.192577, 43.211609, 24.465025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715199, 43.091927, 24.021719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.529579, 43.373058, 24.237379>,  <32.418205, 43.541737, 24.366776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.529579, 43.373058, 24.237379>,  <32.715199, 43.091927, 24.021719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529579, 43.373058, 24.237379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430057, 0.353350, -0.830780,
		-0.774407, -0.617391, 0.138285,
		-0.464053, 0.702832, 0.539150,
		32.390362, 43.583908, 24.399124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010540, 43.032143, 23.839329>,  <32.715199, 43.091927, 24.021719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010540, 43.032143, 23.839329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.041656, 43.410004, 23.966820>,  <32.060326, 43.636719, 24.043314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.041656, 43.410004, 23.966820>,  <32.010540, 43.032143, 23.839329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041656, 43.410004, 23.966820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473462, 0.316347, -0.822045,
		-0.877373, -0.086961, 0.471864,
		0.077787, 0.944650, 0.318727,
		32.064991, 43.693398, 24.062437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384525, 43.361458, 23.599987>,  <32.010540, 43.032143, 23.839329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384525, 43.361458, 23.599987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.615171, 43.673969, 23.695583>,  <31.753559, 43.861477, 23.752941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.615171, 43.673969, 23.695583>,  <31.384525, 43.361458, 23.599987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615171, 43.673969, 23.695583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444642, 0.545488, -0.710448,
		-0.685424, 0.303392, 0.661927,
		0.576617, 0.781278, 0.238990,
		31.788157, 43.908352, 23.767281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894995, 43.913376, 23.540270>,  <31.384525, 43.361458, 23.599987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894995, 43.913376, 23.540270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.259867, 44.076336, 23.522581>,  <31.478790, 44.174110, 23.511969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.259867, 44.076336, 23.522581>,  <30.894995, 43.913376, 23.540270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259867, 44.076336, 23.522581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346949, 0.710354, -0.612392,
		-0.218075, 0.573953, 0.789317,
		0.912178, 0.407400, -0.044222,
		31.533520, 44.198555, 23.509314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826488, 44.597237, 23.757893>,  <30.894995, 43.913376, 23.540270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826488, 44.597237, 23.757893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.149883, 44.574718, 23.523565>,  <31.343920, 44.561207, 23.382969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.149883, 44.574718, 23.523565>,  <30.826488, 44.597237, 23.757893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149883, 44.574718, 23.523565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454045, 0.573632, -0.681755,
		0.374425, 0.817176, 0.438212,
		0.808486, -0.056298, -0.585816,
		31.392429, 44.557831, 23.347820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915659, 45.227005, 23.525265>,  <30.826488, 44.597237, 23.757893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915659, 45.227005, 23.525265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.110489, 45.020432, 23.243540>,  <31.227386, 44.896488, 23.074505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.110489, 45.020432, 23.243540>,  <30.915659, 45.227005, 23.525265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110489, 45.020432, 23.243540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305806, 0.654540, -0.691418,
		0.818070, 0.552157, 0.160885,
		0.487077, -0.516429, -0.704313,
		31.256613, 44.865501, 23.032246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200945, 45.720951, 23.075266>,  <30.915659, 45.227005, 23.525265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200945, 45.720951, 23.075266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.223249, 45.385986, 22.857777>,  <31.236631, 45.185009, 22.727283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.223249, 45.385986, 22.857777>,  <31.200945, 45.720951, 23.075266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223249, 45.385986, 22.857777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383618, 0.484801, -0.786006,
		0.921807, 0.252409, -0.294214,
		0.055760, -0.837412, -0.543721,
		31.239977, 45.134762, 22.694660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431494, 46.000099, 22.418020>,  <31.200945, 45.720951, 23.075266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431494, 46.000099, 22.418020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.283060, 45.637989, 22.335297>,  <31.194000, 45.420723, 22.285662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.283060, 45.637989, 22.335297>,  <31.431494, 46.000099, 22.418020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283060, 45.637989, 22.335297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378199, 0.350741, -0.856707,
		0.848094, -0.239695, -0.472529,
		-0.371083, -0.905277, -0.206808,
		31.171736, 45.366405, 22.273254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733475, 45.757149, 21.791702>,  <31.431494, 46.000099, 22.418020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733475, 45.757149, 21.791702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.382856, 45.570110, 21.837341>,  <31.172485, 45.457886, 21.864725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.382856, 45.570110, 21.837341>,  <31.733475, 45.757149, 21.791702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382856, 45.570110, 21.837341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281933, 0.306675, -0.909101,
		0.390102, -0.829038, -0.400646,
		-0.876547, -0.467597, 0.114098,
		31.119892, 45.429832, 21.871571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608587, 45.482357, 21.229452>,  <31.733475, 45.757149, 21.791702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608587, 45.482357, 21.229452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.239281, 45.469955, 21.382614>,  <31.017696, 45.462513, 21.474512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.239281, 45.469955, 21.382614>,  <31.608587, 45.482357, 21.229452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239281, 45.469955, 21.382614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365353, 0.378906, -0.850263,
		-0.118725, -0.924916, -0.361159,
		-0.923267, -0.031003, 0.382906,
		30.962301, 45.460655, 21.497486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252926, 45.092941, 20.782320>,  <31.608587, 45.482357, 21.229452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252926, 45.092941, 20.782320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.029776, 45.347816, 20.995022>,  <30.895885, 45.500744, 21.122643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.029776, 45.347816, 20.995022>,  <31.252926, 45.092941, 20.782320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029776, 45.347816, 20.995022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505436, 0.247342, -0.826654,
		-0.658261, -0.729938, 0.184073,
		-0.557876, 0.637191, 0.531752,
		30.862413, 45.538975, 21.154547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601068, 44.755821, 20.447647>,  <31.252926, 45.092941, 20.782320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601068, 44.755821, 20.447647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.535343, 44.433739, 20.219736>,  <30.495909, 44.240490, 20.082989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.535343, 44.433739, 20.219736>,  <30.601068, 44.755821, 20.447647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535343, 44.433739, 20.219736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382937, -0.584397, 0.715430,
		-0.909044, -0.100634, 0.404367,
		-0.164314, -0.805204, -0.569779,
		30.486050, 44.192177, 20.048803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195339, 44.264790, 20.869938>,  <30.601068, 44.755821, 20.447647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195339, 44.264790, 20.869938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.364866, 44.034973, 20.589857>,  <30.466581, 43.897083, 20.421808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.364866, 44.034973, 20.589857>,  <30.195339, 44.264790, 20.869938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364866, 44.034973, 20.589857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373885, -0.593156, 0.713005,
		-0.824979, -0.563978, -0.036578,
		0.423816, -0.574538, -0.700204,
		30.492010, 43.862610, 20.379795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039307, 43.636528, 21.057451>,  <30.195339, 44.264790, 20.869938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039307, 43.636528, 21.057451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.351437, 43.564140, 20.818003>,  <30.538713, 43.520710, 20.674334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.351437, 43.564140, 20.818003>,  <30.039307, 43.636528, 21.057451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351437, 43.564140, 20.818003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341856, -0.678109, 0.650617,
		-0.523668, -0.712334, -0.467281,
		0.780324, -0.180965, -0.598620,
		30.585533, 43.509850, 20.638416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085709, 42.988377, 21.021137>,  <30.039307, 43.636528, 21.057451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085709, 42.988377, 21.021137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.449574, 43.082123, 20.883972>,  <30.667892, 43.138371, 20.801674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.449574, 43.082123, 20.883972>,  <30.085709, 42.988377, 21.021137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449574, 43.082123, 20.883972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404815, -0.685032, 0.605686,
		-0.092953, -0.689785, -0.718022,
		0.909662, 0.234365, -0.342911,
		30.722471, 43.152431, 20.781099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343578, 42.390171, 20.815907>,  <30.085709, 42.988377, 21.021137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343578, 42.390171, 20.815907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.653397, 42.635578, 20.877447>,  <30.839289, 42.782822, 20.914371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.653397, 42.635578, 20.877447>,  <30.343578, 42.390171, 20.815907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653397, 42.635578, 20.877447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452287, -0.707251, 0.543353,
		0.442170, -0.351267, -0.825286,
		0.774547, 0.613521, 0.153852,
		30.885761, 42.819633, 20.923603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949492, 42.021198, 20.656590>,  <30.343578, 42.390171, 20.815907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949492, 42.021198, 20.656590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.085024, 42.317593, 20.888496>,  <31.166344, 42.495430, 21.027641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.085024, 42.317593, 20.888496>,  <30.949492, 42.021198, 20.656590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085024, 42.317593, 20.888496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573327, -0.651204, 0.497223,
		0.745983, 0.163922, -0.645476,
		0.338831, 0.740988, 0.579767,
		31.186672, 42.539890, 21.062428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644075, 41.841385, 20.640270>,  <30.949492, 42.021198, 20.656590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644075, 41.841385, 20.640270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.579802, 42.095982, 20.942015>,  <31.541237, 42.248741, 21.123062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.579802, 42.095982, 20.942015>,  <31.644075, 41.841385, 20.640270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579802, 42.095982, 20.942015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577632, -0.559094, 0.594773,
		0.800326, 0.531313, -0.277821,
		-0.160682, 0.636491, 0.754361,
		31.531597, 42.286930, 21.168324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178951, 41.709957, 20.988417>,  <31.644075, 41.841385, 20.640270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178951, 41.709957, 20.988417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.972315, 41.915768, 21.262177>,  <31.848333, 42.039253, 21.426432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.972315, 41.915768, 21.262177>,  <32.178951, 41.709957, 20.988417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972315, 41.915768, 21.262177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616047, -0.331784, 0.714427,
		0.594663, 0.790686, -0.145576,
		-0.516588, 0.514524, 0.684399,
		31.817339, 42.070126, 21.467497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946369, 41.769039, 21.064405>,  <32.178951, 41.709957, 20.988417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946369, 41.769039, 21.064405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.291859, 41.593163, 20.965893>,  <33.499153, 41.487637, 20.906784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.291859, 41.593163, 20.965893>,  <32.946369, 41.769039, 21.064405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291859, 41.593163, 20.965893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119358, 0.653252, -0.747673,
		0.489634, 0.616385, 0.616708,
		0.863720, -0.439695, -0.246284,
		33.550976, 41.461254, 20.892008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566330, 42.288574, 21.048660>,  <32.946369, 41.769039, 21.064405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566330, 42.288574, 21.048660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.652290, 41.987156, 20.800150>,  <33.703865, 41.806305, 20.651043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.652290, 41.987156, 20.800150>,  <33.566330, 42.288574, 21.048660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652290, 41.987156, 20.800150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296686, 0.656449, -0.693579,
		0.930481, -0.035272, 0.364639,
		0.214903, -0.753545, -0.621278,
		33.716763, 41.761093, 20.613766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157097, 42.505878, 20.681259>,  <33.566330, 42.288574, 21.048660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157097, 42.505878, 20.681259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.989849, 42.211655, 20.468042>,  <33.889500, 42.035122, 20.340113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.989849, 42.211655, 20.468042>,  <34.157097, 42.505878, 20.681259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989849, 42.211655, 20.468042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373940, 0.395401, -0.838944,
		0.827855, -0.550106, 0.109728,
		-0.418121, -0.735555, -0.533041,
		33.864414, 41.990990, 20.308130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665443, 42.324322, 20.175905>,  <34.157097, 42.505878, 20.681259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665443, 42.324322, 20.175905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.328064, 42.173309, 20.023035>,  <34.125637, 42.082703, 19.931313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.328064, 42.173309, 20.023035>,  <34.665443, 42.324322, 20.175905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328064, 42.173309, 20.023035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332361, 0.192190, -0.923363,
		0.422051, -0.905832, -0.036625,
		-0.843451, -0.377533, -0.382177,
		34.075027, 42.060051, 19.908382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819042, 41.875271, 19.671028>,  <34.665443, 42.324322, 20.175905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819042, 41.875271, 19.671028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.437981, 41.976215, 19.603180>,  <34.209343, 42.036781, 19.562471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.437981, 41.976215, 19.603180>,  <34.819042, 41.875271, 19.671028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437981, 41.976215, 19.603180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252322, 0.344809, -0.904124,
		-0.169675, -0.904114, -0.392158,
		-0.952651, 0.252358, -0.169622,
		34.152184, 42.051922, 19.552294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605263, 41.418144, 19.097805>,  <34.819042, 41.875271, 19.671028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605263, 41.418144, 19.097805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.339977, 41.717476, 19.092916>,  <34.180805, 41.897076, 19.089983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.339977, 41.717476, 19.092916>,  <34.605263, 41.418144, 19.097805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339977, 41.717476, 19.092916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241106, 0.198165, -0.950052,
		-0.708533, -0.633031, -0.311853,
		-0.663211, 0.748333, -0.012221,
		34.141014, 41.941975, 19.089251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374298, 41.371246, 18.387550>,  <34.605263, 41.418144, 19.097805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374298, 41.371246, 18.387550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.272202, 41.733463, 18.523108>,  <34.210941, 41.950794, 18.604443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.272202, 41.733463, 18.523108>,  <34.374298, 41.371246, 18.387550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272202, 41.733463, 18.523108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042782, 0.360737, -0.931686,
		-0.965929, -0.223310, -0.130817,
		-0.255245, 0.905539, 0.338893,
		34.195629, 42.005127, 18.624775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977943, 41.606277, 17.855831>,  <34.374298, 41.371246, 18.387550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977943, 41.606277, 17.855831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.102020, 41.920086, 18.070606>,  <34.176464, 42.108372, 18.199471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.102020, 41.920086, 18.070606>,  <33.977943, 41.606277, 17.855831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102020, 41.920086, 18.070606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254945, 0.475463, -0.841985,
		-0.915852, 0.398064, -0.052528,
		0.310189, 0.784525, 0.536938,
		34.195076, 42.155445, 18.231688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569012, 42.159233, 17.633837>,  <33.977943, 41.606277, 17.855831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569012, 42.159233, 17.633837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.885830, 42.332836, 17.805555>,  <34.075920, 42.437000, 17.908587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.885830, 42.332836, 17.805555>,  <33.569012, 42.159233, 17.633837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885830, 42.332836, 17.805555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200062, 0.479854, -0.854234,
		-0.576746, 0.762480, 0.293238,
		0.792048, 0.434011, 0.429297,
		34.123444, 42.463039, 17.934345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.924046, 35.494186, 32.020454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.272617, 35.643764, 31.893476>,  <36.481762, 35.733513, 31.817291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.272617, 35.643764, 31.893476>,  <35.924046, 35.494186, 32.020454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272617, 35.643764, 31.893476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331423, -0.028221, -0.943060,
		-0.361610, 0.927022, 0.099341,
		0.871434, 0.373944, -0.317441,
		36.534046, 35.755947, 31.798244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857368, 35.735695, 31.371658>,  <35.924046, 35.494186, 32.020454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857368, 35.735695, 31.371658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256466, 35.759377, 31.384356>,  <36.495922, 35.773586, 31.391973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256466, 35.759377, 31.384356>,  <35.857368, 35.735695, 31.371658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256466, 35.759377, 31.384356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027961, 0.063662, -0.997580,
		-0.061084, 0.996214, 0.061863,
		0.997741, 0.059207, 0.031744,
		36.555790, 35.777138, 31.393879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947922, 36.216206, 30.916134>,  <35.857368, 35.735695, 31.371658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947922, 36.216206, 30.916134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305111, 36.036491, 30.927111>,  <36.519424, 35.928665, 30.933697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305111, 36.036491, 30.927111>,  <35.947922, 36.216206, 30.916134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305111, 36.036491, 30.927111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005365, -0.050334, -0.998718,
		0.450088, 0.891971, -0.042537,
		0.892968, -0.449282, 0.027440,
		36.573002, 35.901707, 30.935343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422695, 36.633102, 30.534887>,  <35.947922, 36.216206, 30.916134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422695, 36.633102, 30.534887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522743, 36.246143, 30.550835>,  <36.582771, 36.013969, 30.560402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522743, 36.246143, 30.550835>,  <36.422695, 36.633102, 30.534887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522743, 36.246143, 30.550835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023692, -0.047278, -0.998601,
		0.967924, 0.248828, -0.034744,
		0.250122, -0.967393, 0.039866,
		36.597778, 35.955925, 30.562794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056065, 36.592052, 30.111101>,  <36.422695, 36.633102, 30.534887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056065, 36.592052, 30.111101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880276, 36.232857, 30.119804>,  <36.774803, 36.017338, 30.125027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880276, 36.232857, 30.119804>,  <37.056065, 36.592052, 30.111101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880276, 36.232857, 30.119804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171822, 0.060262, -0.983283,
		0.881670, -0.435863, -0.180779,
		-0.439471, -0.897993, 0.021759,
		36.748436, 35.963459, 30.126331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420502, 36.117050, 29.730556>,  <37.056065, 36.592052, 30.111101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420502, 36.117050, 29.730556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053162, 35.958996, 29.739574>,  <36.832760, 35.864162, 29.744986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053162, 35.958996, 29.739574>,  <37.420502, 36.117050, 29.730556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053162, 35.958996, 29.739574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042536, 0.041907, -0.998216,
		0.393485, -0.917667, -0.055292,
		-0.918346, -0.395135, 0.022544,
		36.777657, 35.840454, 29.746338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437878, 35.798023, 29.184351>,  <37.420502, 36.117050, 29.730556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437878, 35.798023, 29.184351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.045643, 35.793522, 29.262661>,  <36.810303, 35.790821, 29.309647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.045643, 35.793522, 29.262661>,  <37.437878, 35.798023, 29.184351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045643, 35.793522, 29.262661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195981, 0.021430, -0.980373,
		0.006824, -0.999707, -0.023216,
		-0.980584, -0.011240, 0.195778,
		36.751469, 35.790146, 29.321394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131054, 35.121922, 28.839571>,  <37.437878, 35.798023, 29.184351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131054, 35.121922, 28.839571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.819118, 35.363792, 28.904346>,  <36.631958, 35.508915, 28.943211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.819118, 35.363792, 28.904346>,  <37.131054, 35.121922, 28.839571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819118, 35.363792, 28.904346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223513, -0.027331, -0.974318,
		-0.584718, -0.796005, 0.156466,
		-0.779838, 0.604673, 0.161936,
		36.585167, 35.545193, 28.952927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740135, 34.825527, 28.348078>,  <37.131054, 35.121922, 28.839571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740135, 34.825527, 28.348078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566223, 35.169704, 28.454361>,  <36.461876, 35.376209, 28.518131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566223, 35.169704, 28.454361>,  <36.740135, 34.825527, 28.348078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566223, 35.169704, 28.454361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346008, 0.112793, -0.931427,
		-0.831411, -0.496903, 0.248681,
		-0.434780, 0.860444, 0.265710,
		36.435791, 35.427837, 28.534075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071545, 34.765804, 27.995222>,  <36.740135, 34.825527, 28.348078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071545, 34.765804, 27.995222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151314, 35.152554, 28.058950>,  <36.199177, 35.384605, 28.097187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151314, 35.152554, 28.058950>,  <36.071545, 34.765804, 27.995222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151314, 35.152554, 28.058950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353212, 0.222585, -0.908679,
		-0.914041, 0.124937, 0.385900,
		0.199423, 0.966875, 0.159322,
		36.211140, 35.442616, 28.106747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463284, 35.137688, 27.786942>,  <36.071545, 34.765804, 27.995222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463284, 35.137688, 27.786942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761261, 35.403564, 27.764130>,  <35.940048, 35.563091, 27.750443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761261, 35.403564, 27.764130>,  <35.463284, 35.137688, 27.786942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761261, 35.403564, 27.764130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343260, 0.308588, -0.887100,
		-0.572047, 0.680412, 0.458041,
		0.744939, 0.664690, -0.057031,
		35.984741, 35.602970, 27.747021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133644, 35.795990, 27.592329>,  <35.463284, 35.137688, 27.786942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133644, 35.795990, 27.592329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520710, 35.847534, 27.505596>,  <35.752949, 35.878460, 27.453556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520710, 35.847534, 27.505596>,  <35.133644, 35.795990, 27.592329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520710, 35.847534, 27.505596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252211, 0.482901, -0.838568,
		-0.003351, 0.866141, 0.499788,
		0.967666, 0.128862, -0.216832,
		35.811008, 35.886192, 27.440546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717361, 36.307442, 27.953426>,  <35.133644, 35.795990, 27.592329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717361, 36.307442, 27.953426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323650, 36.328823, 27.886093>,  <34.087421, 36.341652, 27.845694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323650, 36.328823, 27.886093>,  <34.717361, 36.307442, 27.953426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323650, 36.328823, 27.886093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169898, -0.546878, 0.819792,
		-0.048238, 0.835504, 0.547363,
		-0.984280, 0.053451, -0.168331,
		34.028366, 36.344860, 27.835594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343044, 36.512375, 28.647671>,  <34.717361, 36.307442, 27.953426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343044, 36.512375, 28.647671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096313, 36.316990, 28.400791>,  <33.948277, 36.199760, 28.252665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.096313, 36.316990, 28.400791>,  <34.343044, 36.512375, 28.647671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096313, 36.316990, 28.400791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248014, -0.623580, 0.741375,
		-0.747003, 0.610374, 0.263497,
		-0.616827, -0.488458, -0.617198,
		33.911266, 36.170452, 28.215631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827026, 36.308491, 29.116779>,  <34.343044, 36.512375, 28.647671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827026, 36.308491, 29.116779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778343, 36.070240, 28.799185>,  <33.749134, 35.927288, 28.608627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778343, 36.070240, 28.799185>,  <33.827026, 36.308491, 29.116779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778343, 36.070240, 28.799185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466583, -0.671709, 0.575420,
		-0.876064, 0.440493, -0.196158,
		-0.121708, -0.595629, -0.793986,
		33.741829, 35.891552, 28.560989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144676, 36.083401, 29.224659>,  <33.827026, 36.308491, 29.116779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144676, 36.083401, 29.224659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322372, 35.817558, 28.984343>,  <33.428989, 35.658051, 28.840153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.322372, 35.817558, 28.984343>,  <33.144676, 36.083401, 29.224659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322372, 35.817558, 28.984343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398486, -0.747186, 0.531905,
		-0.802412, 0.003116, -0.596763,
		0.444235, -0.664608, -0.600792,
		33.455643, 35.618176, 28.804106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637936, 35.508259, 29.267006>,  <33.144676, 36.083401, 29.224659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637936, 35.508259, 29.267006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969109, 35.339890, 29.118765>,  <33.167812, 35.238869, 29.029819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969109, 35.339890, 29.118765>,  <32.637936, 35.508259, 29.267006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969109, 35.339890, 29.118765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068112, -0.731399, 0.678540,
		-0.556671, -0.536546, -0.634221,
		0.827936, -0.420922, -0.370603,
		33.217491, 35.213612, 29.007584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463898, 34.804344, 29.053225>,  <32.637936, 35.508259, 29.267006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463898, 34.804344, 29.053225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860378, 34.809906, 29.105867>,  <33.098267, 34.813244, 29.137453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860378, 34.809906, 29.105867>,  <32.463898, 34.804344, 29.053225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860378, 34.809906, 29.105867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069523, -0.791477, 0.607232,
		0.112607, -0.611041, -0.783549,
		0.991205, 0.013904, 0.131607,
		33.157738, 34.814075, 29.145350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556065, 34.128273, 29.279280>,  <32.463898, 34.804344, 29.053225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556065, 34.128273, 29.279280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908512, 34.301704, 29.354790>,  <33.119980, 34.405766, 29.400097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908512, 34.301704, 29.354790>,  <32.556065, 34.128273, 29.279280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908512, 34.301704, 29.354790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137076, -0.616226, 0.775549,
		0.452594, -0.657473, -0.602402,
		0.881118, 0.433583, 0.188776,
		33.172848, 34.431778, 29.411423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133030, 33.554817, 29.438820>,  <32.556065, 34.128273, 29.279280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133030, 33.554817, 29.438820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.225277, 33.898232, 29.622004>,  <33.280624, 34.104282, 29.731913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.225277, 33.898232, 29.622004>,  <33.133030, 33.554817, 29.438820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225277, 33.898232, 29.622004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096489, -0.488501, 0.867212,
		0.968249, -0.155806, -0.195496,
		0.230617, 0.858540, 0.457957,
		33.294460, 34.155792, 29.759390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632164, 33.365322, 29.961840>,  <33.133030, 33.554817, 29.438820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632164, 33.365322, 29.961840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.463348, 33.710411, 30.073259>,  <33.362061, 33.917465, 30.140112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.463348, 33.710411, 30.073259>,  <33.632164, 33.365322, 29.961840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463348, 33.710411, 30.073259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110886, -0.255823, 0.960343,
		0.899771, 0.436188, 0.012303,
		-0.422038, 0.862725, 0.278550,
		33.336739, 33.969227, 30.156824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141483, 33.521854, 30.527632>,  <33.632164, 33.365322, 29.961840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141483, 33.521854, 30.527632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.829079, 33.762718, 30.593864>,  <33.641636, 33.907238, 30.633604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.829079, 33.762718, 30.593864>,  <34.141483, 33.521854, 30.527632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829079, 33.762718, 30.593864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032548, -0.225529, 0.973692,
		0.623663, 0.765858, 0.156543,
		-0.781016, 0.602161, 0.165581,
		33.594772, 33.943367, 30.643539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125809, 33.811840, 31.279409>,  <34.141483, 33.521854, 30.527632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125809, 33.811840, 31.279409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749546, 33.855408, 31.150843>,  <33.523788, 33.881550, 31.073704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749546, 33.855408, 31.150843>,  <34.125809, 33.811840, 31.279409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749546, 33.855408, 31.150843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334949, -0.145636, 0.930913,
		0.054585, 0.983324, 0.173475,
		-0.940654, 0.108919, -0.321414,
		33.467350, 33.888084, 31.054419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830196, 34.128407, 31.776623>,  <34.125809, 33.811840, 31.279409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830196, 34.128407, 31.776623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511902, 33.976818, 31.587652>,  <33.320927, 33.885864, 31.474270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511902, 33.976818, 31.587652>,  <33.830196, 34.128407, 31.776623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511902, 33.976818, 31.587652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354805, -0.340477, 0.870741,
		-0.490837, 0.860497, 0.136468,
		-0.795734, -0.378972, -0.472427,
		33.273182, 33.863125, 31.445925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258545, 34.428017, 32.109581>,  <33.830196, 34.128407, 31.776623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258545, 34.428017, 32.109581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131878, 34.083988, 31.949587>,  <33.055878, 33.877571, 31.853590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131878, 34.083988, 31.949587>,  <33.258545, 34.428017, 32.109581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131878, 34.083988, 31.949587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418645, -0.251666, 0.872583,
		-0.851149, 0.443776, -0.280370,
		-0.316672, -0.860074, -0.399990,
		33.036877, 33.825966, 31.829590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563408, 34.193966, 32.404858>,  <33.258545, 34.428017, 32.109581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563408, 34.193966, 32.404858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697086, 33.849415, 32.251842>,  <32.777294, 33.642685, 32.160034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697086, 33.849415, 32.251842>,  <32.563408, 34.193966, 32.404858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697086, 33.849415, 32.251842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312420, -0.484169, 0.817297,
		-0.889216, -0.153628, -0.430922,
		0.334198, -0.861382, -0.382534,
		32.797344, 33.591000, 32.137081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792759, 34.997665, 32.541920>,  <32.563408, 34.193966, 32.404858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792759, 34.997665, 32.541920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.709919, 35.326237, 32.754475>,  <32.660213, 35.523380, 32.882008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.709919, 35.326237, 32.754475>,  <32.792759, 34.997665, 32.541920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709919, 35.326237, 32.754475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095467, 0.557536, -0.824645,
		-0.973651, -0.120054, -0.193884,
		-0.207099, 0.821426, 0.531384,
		32.647789, 35.572666, 32.913891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539467, 35.385471, 32.028847>,  <32.792759, 34.997665, 32.541920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539467, 35.385471, 32.028847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600361, 35.620239, 32.346928>,  <32.636898, 35.761101, 32.537777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600361, 35.620239, 32.346928>,  <32.539467, 35.385471, 32.028847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600361, 35.620239, 32.346928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110701, 0.789394, -0.603823,
		-0.982125, 0.179952, 0.055200,
		0.152233, 0.586919, 0.795205,
		32.646030, 35.796314, 32.585487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955664, 35.832802, 32.209141>,  <32.539467, 35.385471, 32.028847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955664, 35.832802, 32.209141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.313034, 35.990314, 32.295601>,  <32.527458, 36.084824, 32.347477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.313034, 35.990314, 32.295601>,  <31.955664, 35.832802, 32.209141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313034, 35.990314, 32.295601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204603, 0.785101, -0.584597,
		-0.399905, 0.478070, 0.782001,
		0.893428, 0.393783, 0.216152,
		32.581062, 36.108448, 32.360447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836269, 36.487652, 32.318943>,  <31.955664, 35.832802, 32.209141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836269, 36.487652, 32.318943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.226749, 36.466702, 32.234760>,  <32.461037, 36.454132, 32.184250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.226749, 36.466702, 32.234760>,  <31.836269, 36.487652, 32.318943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226749, 36.466702, 32.234760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119057, 0.681680, -0.721899,
		0.181274, 0.729773, 0.659220,
		0.976199, -0.052376, -0.210456,
		32.519608, 36.450989, 32.171623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015671, 37.122841, 32.157364>,  <31.836269, 36.487652, 32.318943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015671, 37.122841, 32.157364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350800, 36.949181, 32.024960>,  <32.551876, 36.844986, 31.945517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350800, 36.949181, 32.024960>,  <32.015671, 37.122841, 32.157364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350800, 36.949181, 32.024960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049204, 0.663886, -0.746214,
		0.543722, 0.608907, 0.577580,
		0.837822, -0.434152, -0.331009,
		32.602146, 36.818935, 31.925657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625790, 37.578426, 32.089195>,  <32.015671, 37.122841, 32.157364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625790, 37.578426, 32.089195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685360, 37.300507, 31.807747>,  <32.721104, 37.133755, 31.638878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685360, 37.300507, 31.807747>,  <32.625790, 37.578426, 32.089195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685360, 37.300507, 31.807747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040860, 0.715269, -0.697654,
		0.988003, 0.075151, 0.134914,
		0.148929, -0.694797, -0.703617,
		32.730038, 37.092068, 31.596663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131607, 37.880657, 31.637419>,  <32.625790, 37.578426, 32.089195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131607, 37.880657, 31.637419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035660, 37.567261, 31.408123>,  <32.978092, 37.379223, 31.270546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035660, 37.567261, 31.408123>,  <33.131607, 37.880657, 31.637419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035660, 37.567261, 31.408123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099293, 0.567580, -0.817309,
		0.965714, -0.252964, -0.058348,
		-0.239867, -0.783493, -0.573238,
		32.963699, 37.332214, 31.236151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655773, 37.824570, 31.120539>,  <33.131607, 37.880657, 31.637419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655773, 37.824570, 31.120539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305046, 37.674988, 30.999645>,  <33.094608, 37.585239, 30.927109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305046, 37.674988, 30.999645>,  <33.655773, 37.824570, 31.120539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305046, 37.674988, 30.999645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020464, 0.598984, -0.800499,
		0.480386, -0.708077, -0.517547,
		-0.876819, -0.373958, -0.302234,
		33.042000, 37.562801, 30.908976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751995, 37.635201, 30.385603>,  <33.655773, 37.824570, 31.120539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751995, 37.635201, 30.385603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359943, 37.682358, 30.449402>,  <33.124710, 37.710651, 30.487682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359943, 37.682358, 30.449402>,  <33.751995, 37.635201, 30.385603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359943, 37.682358, 30.449402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040237, 0.669247, -0.741950,
		-0.194217, -0.733627, -0.651207,
		-0.980133, 0.117897, 0.159498,
		33.065903, 37.717728, 30.497252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508423, 37.747818, 29.725094>,  <33.751995, 37.635201, 30.385603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508423, 37.747818, 29.725094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.208199, 37.863434, 29.962788>,  <33.028065, 37.932804, 30.105404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.208199, 37.863434, 29.962788>,  <33.508423, 37.747818, 29.725094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208199, 37.863434, 29.962788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275184, 0.680861, -0.678751,
		-0.600778, -0.672967, -0.431487,
		-0.750560, 0.289040, 0.594236,
		32.983032, 37.950146, 30.141058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035915, 37.875866, 29.241682>,  <33.508423, 37.747818, 29.725094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035915, 37.875866, 29.241682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915211, 38.078903, 29.564491>,  <32.842789, 38.200726, 29.758177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915211, 38.078903, 29.564491>,  <33.035915, 37.875866, 29.241682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915211, 38.078903, 29.564491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242945, 0.777596, -0.579933,
		-0.921909, -0.371065, -0.111332,
		-0.301764, 0.507597, 0.807021,
		32.824680, 38.231182, 29.806597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344929, 38.192211, 29.097519>,  <33.035915, 37.875866, 29.241682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344929, 38.192211, 29.097519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482574, 38.410461, 29.403168>,  <32.565163, 38.541412, 29.586557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482574, 38.410461, 29.403168>,  <32.344929, 38.192211, 29.097519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482574, 38.410461, 29.403168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353152, 0.829277, -0.433108,
		-0.869983, -0.120814, 0.478052,
		0.344113, 0.545622, 0.764123,
		32.585808, 38.574146, 29.632404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753315, 38.671581, 29.364401>,  <32.344929, 38.192211, 29.097519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753315, 38.671581, 29.364401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.112141, 38.839264, 29.420317>,  <32.327438, 38.939873, 29.453867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.112141, 38.839264, 29.420317>,  <31.753315, 38.671581, 29.364401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112141, 38.839264, 29.420317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287165, 0.793460, -0.536616,
		-0.335870, 0.441237, 0.832167,
		0.897066, 0.419203, 0.139792,
		32.381260, 38.965023, 29.462254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630266, 39.392662, 29.354021>,  <31.753315, 38.671581, 29.364401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630266, 39.392662, 29.354021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029270, 39.406658, 29.329525>,  <32.268673, 39.415054, 29.314827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029270, 39.406658, 29.329525>,  <31.630266, 39.392662, 29.354021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029270, 39.406658, 29.329525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063825, 0.817326, -0.572630,
		0.030014, 0.575112, 0.817523,
		0.997510, 0.034992, -0.061238,
		32.328522, 39.417156, 29.311153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857443, 40.009075, 29.708755>,  <31.630266, 39.392662, 29.354021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857443, 40.009075, 29.708755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.141602, 39.895958, 29.450960>,  <32.312096, 39.828087, 29.296284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.141602, 39.895958, 29.450960>,  <31.857443, 40.009075, 29.708755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141602, 39.895958, 29.450960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008411, 0.912245, -0.409559,
		0.703752, 0.296370, 0.645677,
		0.710396, -0.282797, -0.644487,
		32.354721, 39.811119, 29.257614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437447, 40.480537, 29.787273>,  <31.857443, 40.009075, 29.708755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437447, 40.480537, 29.787273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468185, 40.295086, 29.434198>,  <32.486629, 40.183815, 29.222353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.468185, 40.295086, 29.434198>,  <32.437447, 40.480537, 29.787273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468185, 40.295086, 29.434198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082874, 0.885214, -0.457742,
		0.993592, -0.037976, 0.106450,
		0.076848, -0.463631, -0.882690,
		32.491241, 40.155998, 29.169392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954102, 40.920803, 29.465517>,  <32.437447, 40.480537, 29.787273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954102, 40.920803, 29.465517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.777473, 40.707672, 29.176765>,  <32.671497, 40.579792, 29.003515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.777473, 40.707672, 29.176765>,  <32.954102, 40.920803, 29.465517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777473, 40.707672, 29.176765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050125, 0.788661, -0.612781,
		0.895823, -0.306773, -0.321545,
		-0.441574, -0.532826, -0.721879,
		32.645000, 40.547825, 28.960201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402195, 40.971851, 28.903473>,  <32.954102, 40.920803, 29.465517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402195, 40.971851, 28.903473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.052849, 40.865150, 28.740459>,  <32.843243, 40.801132, 28.642653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.052849, 40.865150, 28.740459>,  <33.402195, 40.971851, 28.903473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052849, 40.865150, 28.740459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001376, 0.835346, -0.549723,
		0.487068, -0.480669, -0.729193,
		-0.873363, -0.266749, -0.407531,
		32.790840, 40.785126, 28.618200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629307, 40.926102, 28.167475>,  <33.402195, 40.971851, 28.903473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629307, 40.926102, 28.167475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.229858, 40.946377, 28.173014>,  <32.990189, 40.958542, 28.176336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.229858, 40.946377, 28.173014>,  <33.629307, 40.926102, 28.167475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229858, 40.946377, 28.173014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018917, 0.592635, -0.805249,
		-0.049023, -0.803875, -0.592775,
		-0.998619, 0.050689, 0.013846,
		32.930271, 40.961582, 28.177168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432003, 41.110645, 27.508930>,  <33.629307, 40.926102, 28.167475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432003, 41.110645, 27.508930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064903, 41.165363, 27.658072>,  <32.844643, 41.198193, 27.747557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064903, 41.165363, 27.658072>,  <33.432003, 41.110645, 27.508930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064903, 41.165363, 27.658072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208710, 0.632609, -0.745819,
		-0.337896, -0.762295, -0.552026,
		-0.917751, 0.136796, 0.372855,
		32.789577, 41.206402, 27.769928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830555, 40.935303, 26.966953>,  <33.432003, 41.110645, 27.508930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830555, 40.935303, 26.966953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.692554, 41.202789, 27.230406>,  <32.609756, 41.363281, 27.388477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.692554, 41.202789, 27.230406>,  <32.830555, 40.935303, 26.966953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692554, 41.202789, 27.230406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320751, 0.575470, -0.752298,
		-0.882097, -0.470798, 0.015955,
		-0.344999, 0.668717, 0.658629,
		32.589054, 41.403404, 27.427994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318897, 41.256493, 26.553173>,  <32.830555, 40.935303, 26.966953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318897, 41.256493, 26.553173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.367462, 41.517597, 26.852283>,  <32.396603, 41.674259, 27.031750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.367462, 41.517597, 26.852283>,  <32.318897, 41.256493, 26.553173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367462, 41.517597, 26.852283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112690, 0.757542, -0.642986,
		-0.986184, -0.006199, 0.165536,
		0.121415, 0.652757, 0.747774,
		32.403885, 41.713425, 27.076616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705709, 41.791355, 26.565277>,  <32.318897, 41.256493, 26.553173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705709, 41.791355, 26.565277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.052689, 41.904625, 26.728910>,  <32.260876, 41.972588, 26.827091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.052689, 41.904625, 26.728910>,  <31.705709, 41.791355, 26.565277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052689, 41.904625, 26.728910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045788, 0.773303, -0.632381,
		-0.495419, 0.567288, 0.657833,
		0.867446, 0.283173, 0.409084,
		32.312923, 41.989578, 26.851635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643518, 42.400990, 26.520304>,  <31.705709, 41.791355, 26.565277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643518, 42.400990, 26.520304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029217, 42.367020, 26.620714>,  <32.260635, 42.346638, 26.680960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029217, 42.367020, 26.620714>,  <31.643518, 42.400990, 26.520304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029217, 42.367020, 26.620714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224509, 0.765061, -0.603554,
		-0.140791, 0.638333, 0.756775,
		0.964248, -0.084928, 0.251025,
		32.318493, 42.341541, 26.696022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896650, 43.015320, 26.792736>,  <31.643518, 42.400990, 26.520304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896650, 43.015320, 26.792736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.227448, 42.835823, 26.657261>,  <32.425926, 42.728123, 26.575975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.227448, 42.835823, 26.657261>,  <31.896650, 43.015320, 26.792736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227448, 42.835823, 26.657261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066620, 0.676394, -0.733521,
		0.558251, 0.584053, 0.589269,
		0.826993, -0.448746, -0.338688,
		32.475544, 42.701199, 26.555655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496624, 43.528519, 26.775898>,  <31.896650, 43.015320, 26.792736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496624, 43.528519, 26.775898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581692, 43.217098, 26.539719>,  <32.632732, 43.030247, 26.398010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581692, 43.217098, 26.539719>,  <32.496624, 43.528519, 26.775898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581692, 43.217098, 26.539719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075932, 0.615612, -0.784383,
		0.974170, 0.121977, 0.190037,
		0.212666, -0.778552, -0.590449,
		32.645493, 42.983532, 26.362583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032871, 43.817421, 26.345640>,  <32.496624, 43.528519, 26.775898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032871, 43.817421, 26.345640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.870213, 43.504219, 26.157364>,  <32.772617, 43.316299, 26.044397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.870213, 43.504219, 26.157364>,  <33.032871, 43.817421, 26.345640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870213, 43.504219, 26.157364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094948, 0.548642, -0.830648,
		0.908640, -0.293086, -0.297446,
		-0.406643, -0.783002, -0.470690,
		32.748219, 43.269318, 26.016157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402287, 43.767685, 25.747066>,  <33.032871, 43.817421, 26.345640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402287, 43.767685, 25.747066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075390, 43.548504, 25.675665>,  <32.879253, 43.416996, 25.632824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075390, 43.548504, 25.675665>,  <33.402287, 43.767685, 25.747066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075390, 43.548504, 25.675665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109987, 0.452351, -0.885032,
		0.565705, -0.703650, -0.429947,
		-0.817239, -0.547956, -0.178505,
		32.830219, 43.384117, 25.622114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076797, 43.671940, 25.524115>,  <33.402287, 43.767685, 25.747066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076797, 43.671940, 25.524115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.295284, 43.988533, 25.633808>,  <34.426376, 44.178490, 25.699625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.295284, 43.988533, 25.633808>,  <34.076797, 43.671940, 25.524115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295284, 43.988533, 25.633808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142258, -0.410284, 0.900794,
		0.825475, -0.453017, -0.336698,
		0.546217, 0.791481, 0.274234,
		34.459148, 44.225979, 25.716078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686337, 43.407539, 25.831341>,  <34.076797, 43.671940, 25.524115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686337, 43.407539, 25.831341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.634430, 43.770252, 25.991796>,  <34.603287, 43.987881, 26.088070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.634430, 43.770252, 25.991796>,  <34.686337, 43.407539, 25.831341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634430, 43.770252, 25.991796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234210, -0.365078, 0.901035,
		0.963486, 0.210877, -0.165000,
		-0.129770, 0.906779, 0.401137,
		34.595501, 44.042286, 26.112137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160149, 43.405849, 26.345354>,  <34.686337, 43.407539, 25.831341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160149, 43.405849, 26.345354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.933693, 43.725986, 26.424278>,  <34.797817, 43.918068, 26.471632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.933693, 43.725986, 26.424278>,  <35.160149, 43.405849, 26.345354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933693, 43.725986, 26.424278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086735, -0.180197, 0.979799,
		0.819731, 0.571820, 0.032600,
		-0.566144, 0.800344, 0.197310,
		34.763851, 43.966091, 26.483471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564419, 43.737194, 26.899984>,  <35.160149, 43.405849, 26.345354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564419, 43.737194, 26.899984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175716, 43.831196, 26.908575>,  <34.942493, 43.887596, 26.913729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175716, 43.831196, 26.908575>,  <35.564419, 43.737194, 26.899984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175716, 43.831196, 26.908575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052101, -0.302413, 0.951752,
		0.230159, 0.923753, 0.306116,
		-0.971757, 0.235003, 0.021475,
		34.884190, 43.901695, 26.915018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511246, 44.110470, 27.466337>,  <35.564419, 43.737194, 26.899984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511246, 44.110470, 27.466337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.143574, 43.974735, 27.386383>,  <34.922970, 43.893295, 27.338411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.143574, 43.974735, 27.386383>,  <35.511246, 44.110470, 27.466337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143574, 43.974735, 27.386383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044589, -0.414604, 0.908909,
		-0.391299, 0.844366, 0.365966,
		-0.919183, -0.339337, -0.199883,
		34.867821, 43.872932, 27.326418>
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
