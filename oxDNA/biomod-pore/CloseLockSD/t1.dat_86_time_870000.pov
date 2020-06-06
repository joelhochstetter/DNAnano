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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.733502, 15.127778, 15.069381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.344582, 15.093523, 14.982391>,  <4.111229, 15.072970, 14.930198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.344582, 15.093523, 14.982391>,  <4.733502, 15.127778, 15.069381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.344582, 15.093523, 14.982391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125585, 0.593314, -0.795115,
		0.197121, -0.800403, -0.566126,
		-0.972302, -0.085637, -0.217473,
		4.052891, 15.067832, 14.917150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.644379, 14.759588, 14.448556>,  <4.733502, 15.127778, 15.069381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.644379, 14.759588, 14.448556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.371856, 15.037229, 14.541546>,  <4.208342, 15.203813, 14.597340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.371856, 15.037229, 14.541546>,  <4.644379, 14.759588, 14.448556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.371856, 15.037229, 14.541546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398964, 0.618381, -0.677077,
		-0.613717, -0.368548, -0.698229,
		-0.681307, 0.694102, 0.232474,
		4.167464, 15.245459, 14.611288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.200969, 15.114986, 13.821376>,  <4.644379, 14.759588, 14.448556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.200969, 15.114986, 13.821376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.266673, 15.334025, 14.149560>,  <4.306096, 15.465449, 14.346471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.266673, 15.334025, 14.149560>,  <4.200969, 15.114986, 13.821376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.266673, 15.334025, 14.149560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505678, 0.667403, -0.546683,
		-0.846941, 0.504687, -0.167281,
		0.164260, 0.547599, 0.820460,
		4.315951, 15.498305, 14.395698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.974044, 15.874073, 13.818675>,  <4.200969, 15.114986, 13.821376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.974044, 15.874073, 13.818675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.292664, 15.832487, 14.056902>,  <4.483836, 15.807535, 14.199838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.292664, 15.832487, 14.056902>,  <3.974044, 15.874073, 13.818675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.292664, 15.832487, 14.056902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409894, 0.816993, -0.405599,
		-0.444405, 0.567199, 0.693390,
		0.796550, -0.103966, 0.595567,
		4.531629, 15.801297, 14.235572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.990334, 16.355368, 14.387285>,  <3.974044, 15.874073, 13.818675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.990334, 16.355368, 14.387285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.338266, 16.229641, 14.235181>,  <4.547026, 16.154205, 14.143918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.338266, 16.229641, 14.235181>,  <3.990334, 16.355368, 14.387285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.338266, 16.229641, 14.235181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129403, 0.889143, -0.438952,
		0.476076, 0.332607, 0.814078,
		0.869831, -0.314319, -0.380260,
		4.599216, 16.135345, 14.121103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.471105, 16.819679, 14.689104>,  <3.990334, 16.355368, 14.387285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.471105, 16.819679, 14.689104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.641334, 16.632004, 14.379589>,  <4.743472, 16.519398, 14.193880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.641334, 16.632004, 14.379589>,  <4.471105, 16.819679, 14.689104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.641334, 16.632004, 14.379589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229732, 0.883089, -0.409116,
		0.875278, -0.003655, 0.483607,
		0.425573, -0.469190, -0.773788,
		4.769006, 16.491247, 14.147452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.207766, 17.042450, 14.641806>,  <4.471105, 16.819679, 14.689104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.207766, 17.042450, 14.641806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.123314, 16.901945, 14.276940>,  <5.072643, 16.817642, 14.058022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.123314, 16.901945, 14.276940>,  <5.207766, 17.042450, 14.641806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.123314, 16.901945, 14.276940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502568, 0.761390, -0.409526,
		0.838361, -0.544887, 0.015780,
		-0.211130, -0.351261, -0.912162,
		5.059975, 16.796566, 14.003292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.804054, 17.224911, 14.216205>,  <5.207766, 17.042450, 14.641806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.804054, 17.224911, 14.216205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.507980, 17.164982, 13.954004>,  <5.330336, 17.129025, 13.796684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.507980, 17.164982, 13.954004>,  <5.804054, 17.224911, 14.216205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.507980, 17.164982, 13.954004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325349, 0.773347, -0.544135,
		0.588451, -0.616027, -0.523676,
		-0.740185, -0.149820, -0.655500,
		5.285925, 17.120035, 13.757354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.119821, 17.288422, 13.563566>,  <5.804054, 17.224911, 14.216205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.119821, 17.288422, 13.563566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.727926, 17.337723, 13.500418>,  <5.492789, 17.367304, 13.462529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.727926, 17.337723, 13.500418>,  <6.119821, 17.288422, 13.563566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.727926, 17.337723, 13.500418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195172, 0.764487, -0.614384,
		0.044966, -0.632747, -0.773052,
		-0.979738, 0.123251, -0.157870,
		5.434004, 17.374699, 13.453056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.051761, 17.358332, 12.861495>,  <6.119821, 17.288422, 13.563566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.051761, 17.358332, 12.861495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.723516, 17.539984, 13.000265>,  <5.526568, 17.648975, 13.083528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.723516, 17.539984, 13.000265>,  <6.051761, 17.358332, 12.861495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.723516, 17.539984, 13.000265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225483, 0.815106, -0.533629,
		-0.525119, -0.359678, -0.771286,
		-0.820614, 0.454131, 0.346926,
		5.477331, 17.676224, 13.104343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.767019, 17.604565, 12.338665>,  <6.051761, 17.358332, 12.861495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.767019, 17.604565, 12.338665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.594700, 17.820450, 12.627975>,  <5.491309, 17.949982, 12.801560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.594700, 17.820450, 12.627975>,  <5.767019, 17.604565, 12.338665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.594700, 17.820450, 12.627975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213216, 0.839637, -0.499549,
		-0.876900, -0.060990, -0.476787,
		-0.430796, 0.539713, 0.723273,
		5.465462, 17.982365, 12.844956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.351067, 18.183418, 12.045314>,  <5.767019, 17.604565, 12.338665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.351067, 18.183418, 12.045314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.372528, 18.318373, 12.421248>,  <5.385404, 18.399345, 12.646810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.372528, 18.318373, 12.421248>,  <5.351067, 18.183418, 12.045314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.372528, 18.318373, 12.421248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178674, 0.922759, -0.341454,
		-0.982444, 0.186244, -0.010774,
		0.053652, 0.337385, 0.939837,
		5.388623, 18.419588, 12.703199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.972008, 18.705519, 12.052795>,  <5.351067, 18.183418, 12.045314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.972008, 18.705519, 12.052795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.207520, 18.790098, 12.364854>,  <5.348827, 18.840847, 12.552089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.207520, 18.790098, 12.364854>,  <4.972008, 18.705519, 12.052795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.207520, 18.790098, 12.364854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006276, 0.963951, -0.266005,
		-0.808269, 0.161515, 0.566228,
		0.588780, 0.211450, 0.780146,
		5.384154, 18.853533, 12.598898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.812445, 19.346445, 12.295081>,  <4.972008, 18.705519, 12.052795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.812445, 19.346445, 12.295081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.176918, 19.302418, 12.453894>,  <5.395601, 19.276001, 12.549181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.176918, 19.302418, 12.453894>,  <4.812445, 19.346445, 12.295081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.176918, 19.302418, 12.453894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219351, 0.945327, -0.241332,
		-0.348761, 0.306987, 0.885508,
		0.911181, -0.110070, 0.397031,
		5.450272, 19.269398, 12.573003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.020882, 20.035620, 12.514153>,  <4.812445, 19.346445, 12.295081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.020882, 20.035620, 12.514153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.362534, 19.827656, 12.509212>,  <5.567525, 19.702877, 12.506247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.362534, 19.827656, 12.509212>,  <5.020882, 20.035620, 12.514153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.362534, 19.827656, 12.509212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513617, 0.847041, -0.136816,
		0.081597, 0.110514, 0.990519,
		0.854131, -0.519911, -0.012354,
		5.618773, 19.671682, 12.505506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.516752, 20.586927, 12.810493>,  <5.020882, 20.035620, 12.514153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.516752, 20.586927, 12.810493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.692859, 20.314919, 12.575978>,  <5.798523, 20.151712, 12.435269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.692859, 20.314919, 12.575978>,  <5.516752, 20.586927, 12.810493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.692859, 20.314919, 12.575978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587617, 0.711944, -0.384503,
		0.678875, -0.175229, 0.713038,
		0.440267, -0.680023, -0.586288,
		5.824939, 20.110912, 12.400092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.218691, 20.709801, 12.949142>,  <5.516752, 20.586927, 12.810493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.218691, 20.709801, 12.949142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.199224, 20.485168, 12.618746>,  <6.187543, 20.350389, 12.420508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.199224, 20.485168, 12.618746>,  <6.218691, 20.709801, 12.949142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.199224, 20.485168, 12.618746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671103, 0.594103, -0.443467,
		0.739765, -0.575906, 0.347964,
		-0.048669, -0.561581, -0.825989,
		6.184623, 20.316694, 12.370949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.888139, 20.652527, 12.723963>,  <6.218691, 20.709801, 12.949142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.888139, 20.652527, 12.723963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.672265, 20.537855, 12.407342>,  <6.542741, 20.469051, 12.217369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.672265, 20.537855, 12.407342>,  <6.888139, 20.652527, 12.723963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.672265, 20.537855, 12.407342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485377, 0.662273, -0.570792,
		0.687860, -0.692248, -0.218269,
		-0.539683, -0.286683, -0.791553,
		6.510360, 20.451851, 12.169876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.345157, 20.506586, 12.172016>,  <6.888139, 20.652527, 12.723963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.345157, 20.506586, 12.172016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.993474, 20.531235, 11.983041>,  <6.782464, 20.546024, 11.869656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.993474, 20.531235, 11.983041>,  <7.345157, 20.506586, 12.172016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.993474, 20.531235, 11.983041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443375, 0.468786, -0.763976,
		0.174395, -0.881160, -0.439481,
		-0.879207, 0.061621, -0.472438,
		6.729712, 20.549721, 11.841310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.323231, 20.055695, 11.521940>,  <7.345157, 20.506586, 12.172016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.323231, 20.055695, 11.521940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.099272, 20.387016, 11.530220>,  <6.964897, 20.585810, 11.535188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.099272, 20.387016, 11.530220>,  <7.323231, 20.055695, 11.521940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.099272, 20.387016, 11.530220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610196, 0.429108, -0.665978,
		-0.560514, -0.360248, -0.745684,
		-0.559897, 0.828304, 0.020699,
		6.931303, 20.635508, 11.536429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.487247, 20.482161, 10.937845>,  <7.323231, 20.055695, 11.521940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.487247, 20.482161, 10.937845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.271699, 20.759644, 11.129005>,  <7.142370, 20.926132, 11.243702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.271699, 20.759644, 11.129005>,  <7.487247, 20.482161, 10.937845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.271699, 20.759644, 11.129005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482374, 0.719205, -0.500060,
		-0.690604, -0.038940, -0.722184,
		-0.538871, 0.693706, 0.477902,
		7.110038, 20.967756, 11.272376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.270813, 20.813431, 10.451844>,  <7.487247, 20.482161, 10.937845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.270813, 20.813431, 10.451844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.261724, 21.052582, 10.772351>,  <7.256270, 21.196072, 10.964655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.261724, 21.052582, 10.772351>,  <7.270813, 20.813431, 10.451844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.261724, 21.052582, 10.772351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318187, 0.764122, -0.561137,
		-0.947756, 0.242202, -0.207599,
		-0.022722, 0.597876, 0.801266,
		7.254907, 21.231945, 11.012732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.873971, 21.433849, 10.260246>,  <7.270813, 20.813431, 10.451844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.873971, 21.433849, 10.260246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.129899, 21.525179, 10.553777>,  <7.283455, 21.579977, 10.729895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.129899, 21.525179, 10.553777>,  <6.873971, 21.433849, 10.260246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.129899, 21.525179, 10.553777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207452, 0.868093, -0.450975,
		-0.739997, 0.440776, 0.508056,
		0.639819, 0.228323, 0.733826,
		7.321844, 21.593676, 10.773925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.772736, 22.139858, 10.380148>,  <6.873971, 21.433849, 10.260246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.772736, 22.139858, 10.380148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.131971, 21.999010, 10.485559>,  <7.347513, 21.914501, 10.548806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.131971, 21.999010, 10.485559>,  <6.772736, 22.139858, 10.380148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.131971, 21.999010, 10.485559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435345, 0.796927, -0.418786,
		-0.062549, 0.490833, 0.869006,
		0.898088, -0.352122, 0.263529,
		7.401398, 21.893373, 10.564618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.163347, 22.742470, 10.619731>,  <6.772736, 22.139858, 10.380148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.163347, 22.742470, 10.619731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.374124, 22.430748, 10.484073>,  <7.500589, 22.243715, 10.402678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.374124, 22.430748, 10.484073>,  <7.163347, 22.742470, 10.619731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.374124, 22.430748, 10.484073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576449, 0.620938, -0.531171,
		0.624531, 0.084397, 0.776427,
		0.526942, -0.779303, -0.339145,
		7.532206, 22.196957, 10.382329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.883844, 22.887234, 10.766412>,  <7.163347, 22.742470, 10.619731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.883844, 22.887234, 10.766412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.822029, 22.650858, 10.449701>,  <7.784939, 22.509033, 10.259675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.822029, 22.650858, 10.449701>,  <7.883844, 22.887234, 10.766412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.822029, 22.650858, 10.449701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600589, 0.580141, -0.550209,
		0.784481, -0.560560, 0.265257,
		-0.154539, -0.590939, -0.791776,
		7.775667, 22.473576, 10.212169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.832005, 23.604902, 10.703460>,  <7.883844, 22.887234, 10.766412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.832005, 23.604902, 10.703460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.735223, 23.874537, 10.982620>,  <7.677155, 24.036318, 11.150117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.735223, 23.874537, 10.982620>,  <7.832005, 23.604902, 10.703460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.735223, 23.874537, 10.982620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721368, -0.356068, 0.594006,
		0.648911, 0.647167, -0.400112,
		-0.241954, 0.674085, 0.697902,
		7.662637, 24.076761, 11.191991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.372573, 24.068365, 11.149727>,  <7.832005, 23.604902, 10.703460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.372573, 24.068365, 11.149727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.052985, 24.029152, 11.387057>,  <7.861233, 24.005623, 11.529456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.052985, 24.029152, 11.387057>,  <8.372573, 24.068365, 11.149727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.052985, 24.029152, 11.387057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600298, -0.188960, 0.777134,
		0.035929, 0.977079, 0.209823,
		-0.798969, -0.098034, 0.593327,
		7.813294, 23.999743, 11.565056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.576473, 24.354509, 11.681519>,  <8.372573, 24.068365, 11.149727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.576473, 24.354509, 11.681519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.264272, 24.141602, 11.812668>,  <8.076951, 24.013857, 11.891357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.264272, 24.141602, 11.812668>,  <8.576473, 24.354509, 11.681519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.264272, 24.141602, 11.812668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476437, -0.166894, 0.863223,
		-0.404749, 0.829960, 0.383855,
		-0.780504, -0.532272, 0.327873,
		8.030121, 23.981920, 11.911030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.157009, 24.602289, 12.333922>,  <8.576473, 24.354509, 11.681519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.157009, 24.602289, 12.333922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.138136, 24.202812, 12.326040>,  <8.126812, 23.963125, 12.321311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.138136, 24.202812, 12.326040>,  <8.157009, 24.602289, 12.333922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.138136, 24.202812, 12.326040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287275, -0.032462, 0.957298,
		-0.956685, 0.039508, 0.288430,
		-0.047184, -0.998692, -0.019706,
		8.123981, 23.903204, 12.320128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.863183, 24.372042, 13.018573>,  <8.157009, 24.602289, 12.333922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.863183, 24.372042, 13.018573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.042498, 24.050970, 12.861221>,  <8.150086, 23.858328, 12.766810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.042498, 24.050970, 12.861221>,  <7.863183, 24.372042, 13.018573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.042498, 24.050970, 12.861221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577798, -0.075582, 0.812673,
		-0.682047, -0.591604, 0.429903,
		0.448288, -0.802678, -0.393378,
		8.176984, 23.810167, 12.743208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.853704, 23.773222, 13.509254>,  <7.863183, 24.372042, 13.018573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.853704, 23.773222, 13.509254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.174189, 23.810816, 13.272872>,  <8.366479, 23.833372, 13.131042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.174189, 23.810816, 13.272872>,  <7.853704, 23.773222, 13.509254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.174189, 23.810816, 13.272872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597940, -0.087829, 0.796714,
		0.022974, -0.991692, -0.126565,
		0.801211, 0.093982, -0.590955,
		8.414552, 23.839010, 13.095586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.934717, 23.686722, 14.286269>,  <7.853704, 23.773222, 13.509254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.934717, 23.686722, 14.286269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.269383, 23.542305, 14.451018>,  <8.470183, 23.455654, 14.549868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.269383, 23.542305, 14.451018>,  <7.934717, 23.686722, 14.286269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.269383, 23.542305, 14.451018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163466, -0.553111, -0.816913,
		0.522752, 0.750810, -0.403751,
		0.836665, -0.361044, 0.411872,
		8.520383, 23.433992, 14.574580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.136559, 23.071867, 14.025948>,  <7.934717, 23.686722, 14.286269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.136559, 23.071867, 14.025948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.119665, 22.923765, 14.397136>,  <8.109529, 22.834904, 14.619848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.119665, 22.923765, 14.397136>,  <8.136559, 23.071867, 14.025948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.119665, 22.923765, 14.397136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257745, -0.893322, -0.368162,
		0.965290, -0.254728, -0.057703,
		-0.042234, -0.370256, 0.927969,
		8.106995, 22.812689, 14.675527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.452830, 22.463688, 14.017086>,  <8.136559, 23.071867, 14.025948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.452830, 22.463688, 14.017086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.257239, 22.387348, 14.357551>,  <8.139885, 22.341543, 14.561830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.257239, 22.387348, 14.357551>,  <8.452830, 22.463688, 14.017086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.257239, 22.387348, 14.357551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031944, -0.979035, -0.201172,
		0.871711, -0.071179, 0.484823,
		-0.488978, -0.190851, 0.851162,
		8.110546, 22.330093, 14.612899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.947732, 22.058018, 14.541244>,  <8.452830, 22.463688, 14.017086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.947732, 22.058018, 14.541244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.554243, 21.989683, 14.563535>,  <8.318150, 21.948683, 14.576910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.554243, 21.989683, 14.563535>,  <8.947732, 22.058018, 14.541244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.554243, 21.989683, 14.563535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148542, -0.947599, -0.282827,
		0.101126, -0.269945, 0.957551,
		-0.983722, -0.170838, 0.055729,
		8.259127, 21.938433, 14.580254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.856715, 21.376133, 14.907983>,  <8.947732, 22.058018, 14.541244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.856715, 21.376133, 14.907983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.540395, 21.430677, 14.669308>,  <8.350602, 21.463404, 14.526102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.540395, 21.430677, 14.669308>,  <8.856715, 21.376133, 14.907983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.540395, 21.430677, 14.669308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063344, -0.951399, -0.301377,
		-0.608785, -0.276126, 0.743730,
		-0.790802, 0.136363, -0.596689,
		8.303154, 21.471586, 14.490301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.363070, 20.817600, 14.996570>,  <8.856715, 21.376133, 14.907983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.363070, 20.817600, 14.996570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.334200, 20.957348, 14.622889>,  <8.316877, 21.041197, 14.398680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.334200, 20.957348, 14.622889>,  <8.363070, 20.817600, 14.996570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.334200, 20.957348, 14.622889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014917, -0.936162, -0.351253,
		-0.997280, -0.039288, 0.062357,
		-0.072176, 0.349367, -0.934202,
		8.312547, 21.062159, 14.342628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.980224, 20.273142, 14.768040>,  <8.363070, 20.817600, 14.996570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.980224, 20.273142, 14.768040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.130859, 20.472939, 14.455966>,  <8.221241, 20.592817, 14.268722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.130859, 20.472939, 14.455966>,  <7.980224, 20.273142, 14.768040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.130859, 20.472939, 14.455966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036344, -0.849503, -0.526330,
		-0.925667, 0.169855, -0.338067,
		0.376589, 0.499493, -0.780184,
		8.243836, 20.622786, 14.221910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.611432, 20.053295, 14.151996>,  <7.980224, 20.273142, 14.768040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.611432, 20.053295, 14.151996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.929387, 20.231756, 13.987509>,  <8.120160, 20.338833, 13.888817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.929387, 20.231756, 13.987509>,  <7.611432, 20.053295, 14.151996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.929387, 20.231756, 13.987509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070936, -0.741416, -0.667286,
		-0.602594, 0.501249, -0.620992,
		0.794889, 0.446153, -0.411216,
		8.167854, 20.365602, 13.864144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.595619, 20.072363, 13.413995>,  <7.611432, 20.053295, 14.151996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.595619, 20.072363, 13.413995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.984126, 20.095949, 13.506225>,  <8.217230, 20.110102, 13.561563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.984126, 20.095949, 13.506225>,  <7.595619, 20.072363, 13.413995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.984126, 20.095949, 13.506225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199644, -0.729241, -0.654485,
		0.129551, 0.681712, -0.720060,
		0.971267, 0.058967, 0.230574,
		8.275506, 20.113640, 13.575397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.911440, 19.907705, 12.789019>,  <7.595619, 20.072363, 13.413995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.911440, 19.907705, 12.789019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.212658, 19.868284, 13.049238>,  <8.393389, 19.844631, 13.205370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.212658, 19.868284, 13.049238>,  <7.911440, 19.907705, 12.789019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.212658, 19.868284, 13.049238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298281, -0.830153, -0.471035,
		0.586475, 0.548756, -0.595746,
		0.753044, -0.098550, 0.650548,
		8.438571, 19.838718, 13.244403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.538956, 19.749113, 12.403671>,  <7.911440, 19.907705, 12.789019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.538956, 19.749113, 12.403671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.595558, 19.606747, 12.773169>,  <8.629519, 19.521326, 12.994866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.595558, 19.606747, 12.773169>,  <8.538956, 19.749113, 12.403671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.595558, 19.606747, 12.773169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317855, -0.867387, -0.382895,
		0.937520, 0.347798, -0.009611,
		0.141506, -0.355917, 0.923742,
		8.638010, 19.499971, 13.050291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.066412, 19.300205, 12.304641>,  <8.538956, 19.749113, 12.403671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.066412, 19.300205, 12.304641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.915063, 19.191185, 12.658488>,  <8.824253, 19.125772, 12.870796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.915063, 19.191185, 12.658488>,  <9.066412, 19.300205, 12.304641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.915063, 19.191185, 12.658488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164515, -0.960255, -0.225489,
		0.910916, 0.060214, 0.408174,
		-0.378373, -0.272553, 0.884618,
		8.801551, 19.109419, 12.923874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.553082, 18.743404, 12.548603>,  <9.066412, 19.300205, 12.304641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.553082, 18.743404, 12.548603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.193340, 18.704172, 12.719032>,  <8.977495, 18.680632, 12.821290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.193340, 18.704172, 12.719032>,  <9.553082, 18.743404, 12.548603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.193340, 18.704172, 12.719032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020201, -0.982794, -0.183598,
		0.436749, -0.156513, 0.885863,
		-0.899356, -0.098082, 0.426072,
		8.923533, 18.674747, 12.846854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.490568, 18.143219, 13.030700>,  <9.553082, 18.743404, 12.548603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.490568, 18.143219, 13.030700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.095530, 18.191084, 12.990034>,  <8.858506, 18.219803, 12.965634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.095530, 18.191084, 12.990034>,  <9.490568, 18.143219, 13.030700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.095530, 18.191084, 12.990034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135593, -0.976432, 0.167915,
		-0.079175, 0.179617, 0.980545,
		-0.987596, 0.119660, -0.101664,
		8.799251, 18.226982, 12.959535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.190630, 17.687563, 13.425147>,  <9.490568, 18.143219, 13.030700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.190630, 17.687563, 13.425147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.886596, 17.785383, 13.184327>,  <8.704175, 17.844076, 13.039835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.886596, 17.785383, 13.184327>,  <9.190630, 17.687563, 13.425147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.886596, 17.785383, 13.184327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290682, -0.956577, -0.021573,
		-0.581182, 0.158607, 0.798167,
		-0.760086, 0.244551, -0.602050,
		8.658569, 17.858747, 13.003713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.621183, 17.409466, 13.773617>,  <9.190630, 17.687563, 13.425147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.621183, 17.409466, 13.773617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.515594, 17.439323, 13.388962>,  <8.452239, 17.457237, 13.158169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.515594, 17.439323, 13.388962>,  <8.621183, 17.409466, 13.773617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.515594, 17.439323, 13.388962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414611, -0.908970, 0.043258,
		-0.870870, 0.410125, 0.270894,
		-0.263976, 0.074643, -0.961637,
		8.436401, 17.461716, 13.100471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.970194, 17.293909, 13.779734>,  <8.621183, 17.409466, 13.773617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.970194, 17.293909, 13.779734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.057177, 17.239893, 13.393061>,  <8.109366, 17.207483, 13.161057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.057177, 17.239893, 13.393061>,  <7.970194, 17.293909, 13.779734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.057177, 17.239893, 13.393061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651299, -0.757731, -0.040659,
		-0.726995, 0.638442, -0.252726,
		0.217457, -0.135042, -0.966683,
		8.122414, 17.199381, 13.103056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.307529, 17.312574, 13.466583>,  <7.970194, 17.293909, 13.779734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.307529, 17.312574, 13.466583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.573967, 17.124420, 13.235048>,  <7.733830, 17.011528, 13.096128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.573967, 17.124420, 13.235048>,  <7.307529, 17.312574, 13.466583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.573967, 17.124420, 13.235048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608930, -0.791112, -0.057838,
		-0.430719, 0.390998, -0.813389,
		0.666097, -0.470385, -0.578838,
		7.773797, 16.983305, 13.061397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.918671, 16.945747, 13.029119>,  <7.307529, 17.312574, 13.466583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.918671, 16.945747, 13.029119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.267572, 16.750696, 13.014185>,  <7.476912, 16.633665, 13.005224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.267572, 16.750696, 13.014185>,  <6.918671, 16.945747, 13.029119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.267572, 16.750696, 13.014185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485718, -0.872674, 0.050190,
		-0.057057, -0.025644, -0.998042,
		0.872252, -0.487630, -0.037336,
		7.529247, 16.604406, 13.002984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.829826, 16.261681, 12.565814>,  <6.918671, 16.945747, 13.029119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.829826, 16.261681, 12.565814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.169741, 16.217642, 12.772013>,  <7.373691, 16.191217, 12.895732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.169741, 16.217642, 12.772013>,  <6.829826, 16.261681, 12.565814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.169741, 16.217642, 12.772013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311850, -0.893450, 0.323259,
		0.424981, -0.435460, -0.793578,
		0.849789, -0.110099, 0.515497,
		7.424678, 16.184612, 12.926661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.043614, 15.521097, 12.360149>,  <6.829826, 16.261681, 12.565814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.043614, 15.521097, 12.360149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.212260, 15.636976, 12.703851>,  <7.313448, 15.706504, 12.910071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.212260, 15.636976, 12.703851>,  <7.043614, 15.521097, 12.360149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.212260, 15.636976, 12.703851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235300, -0.880180, 0.412210,
		0.875714, -0.375976, -0.302931,
		0.421615, 0.289698, 0.859253,
		7.338745, 15.723886, 12.961627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.598955, 15.008172, 12.575299>,  <7.043614, 15.521097, 12.360149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.598955, 15.008172, 12.575299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.436177, 15.198908, 12.886946>,  <7.338510, 15.313349, 13.073934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.436177, 15.198908, 12.886946>,  <7.598955, 15.008172, 12.575299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.436177, 15.198908, 12.886946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165751, -0.877322, 0.450369,
		0.898289, 0.054136, 0.436058,
		-0.406945, 0.476839, 0.779116,
		7.314094, 15.341959, 13.120681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.940291, 14.754174, 13.196689>,  <7.598955, 15.008172, 12.575299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.940291, 14.754174, 13.196689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.626593, 14.951894, 13.346689>,  <7.438374, 15.070526, 13.436689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.626593, 14.951894, 13.346689>,  <7.940291, 14.754174, 13.196689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.626593, 14.951894, 13.346689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236429, -0.796885, 0.555946,
		0.573637, 0.347337, 0.741820,
		-0.784246, 0.494299, 0.375002,
		7.391319, 15.100183, 13.459189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.916065, 14.571485, 13.874545>,  <7.940291, 14.754174, 13.196689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.916065, 14.571485, 13.874545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.543325, 14.694633, 13.797735>,  <7.319682, 14.768523, 13.751649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.543325, 14.694633, 13.797735>,  <7.916065, 14.571485, 13.874545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.543325, 14.694633, 13.797735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362281, -0.819019, 0.444927,
		-0.020291, 0.484171, 0.874738,
		-0.931848, 0.307873, -0.192025,
		7.263771, 14.786996, 13.740128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.590604, 14.822054, 14.000691>,  <7.916065, 14.571485, 13.874545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.590604, 14.822054, 14.000691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.580394, 14.914096, 14.389824>,  <8.574267, 14.969321, 14.623303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.580394, 14.914096, 14.389824>,  <8.590604, 14.822054, 14.000691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.580394, 14.914096, 14.389824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974757, -0.210188, 0.075292,
		0.221802, 0.950197, -0.218930,
		-0.025526, 0.230104, 0.972831,
		8.572736, 14.983127, 14.681673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.181927, 15.301917, 14.137334>,  <8.590604, 14.822054, 14.000691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.181927, 15.301917, 14.137334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.127548, 15.150809, 14.503680>,  <9.094921, 15.060144, 14.723488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.127548, 15.150809, 14.503680>,  <9.181927, 15.301917, 14.137334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.127548, 15.150809, 14.503680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990047, -0.085782, 0.111576,
		0.036415, 0.921918, 0.385670,
		-0.135947, -0.377768, 0.915865,
		9.086764, 15.037478, 14.778440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.487231, 15.559168, 14.649099>,  <9.181927, 15.301917, 14.137334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.487231, 15.559168, 14.649099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.515698, 15.196655, 14.815755>,  <9.532779, 14.979148, 14.915749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.515698, 15.196655, 14.815755>,  <9.487231, 15.559168, 14.649099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.515698, 15.196655, 14.815755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994753, 0.033710, -0.096594,
		0.073496, 0.421327, 0.903926,
		0.071169, -0.906282, 0.416638,
		9.537049, 14.924770, 14.940746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.004710, 15.577699, 15.055240>,  <9.487231, 15.559168, 14.649099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.004710, 15.577699, 15.055240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.970255, 15.184533, 14.990174>,  <9.949581, 14.948633, 14.951135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.970255, 15.184533, 14.990174>,  <10.004710, 15.577699, 15.055240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.970255, 15.184533, 14.990174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942747, -0.027616, -0.332362,
		0.322191, -0.181980, 0.929019,
		-0.086139, -0.982914, -0.162663,
		9.944413, 14.889659, 14.941376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.598129, 15.411250, 15.510699>,  <10.004710, 15.577699, 15.055240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.598129, 15.411250, 15.510699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.475999, 15.156175, 15.227820>,  <10.402720, 15.003129, 15.058093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.475999, 15.156175, 15.227820>,  <10.598129, 15.411250, 15.510699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.475999, 15.156175, 15.227820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938328, -0.074957, -0.337524,
		0.162227, -0.766638, 0.621248,
		-0.305326, -0.637690, -0.707197,
		10.384401, 14.964868, 15.015661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.897331, 14.705101, 15.630964>,  <10.598129, 15.411250, 15.510699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.897331, 14.705101, 15.630964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.836814, 14.827506, 15.254992>,  <10.800504, 14.900949, 15.029409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.836814, 14.827506, 15.254992>,  <10.897331, 14.705101, 15.630964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.836814, 14.827506, 15.254992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985055, -0.032513, -0.169142,
		-0.082319, -0.951472, -0.296520,
		-0.151294, 0.306012, -0.939929,
		10.791426, 14.919310, 14.973014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.951018, 14.208213, 15.104881>,  <10.897331, 14.705101, 15.630964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.951018, 14.208213, 15.104881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.059651, 14.564224, 14.958407>,  <11.124831, 14.777831, 14.870522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.059651, 14.564224, 14.958407>,  <10.951018, 14.208213, 15.104881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.059651, 14.564224, 14.958407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952935, -0.301955, -0.027167,
		-0.134750, -0.341573, -0.930145,
		0.271582, 0.890029, -0.366186,
		11.141126, 14.831233, 14.848552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.492704, 14.143373, 14.574617>,  <10.951018, 14.208213, 15.104881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.492704, 14.143373, 14.574617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.560433, 14.509544, 14.720671>,  <11.601070, 14.729247, 14.808303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.560433, 14.509544, 14.720671>,  <11.492704, 14.143373, 14.574617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.560433, 14.509544, 14.720671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982709, -0.128656, -0.133156,
		-0.074918, 0.381367, -0.921383,
		0.169323, 0.915427, 0.365134,
		11.611230, 14.784173, 14.830211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.023829, 13.636232, 14.937585>,  <11.492704, 14.143373, 14.574617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.023829, 13.636232, 14.937585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.394588, 13.541629, 15.054151>,  <12.617044, 13.484866, 15.124090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.394588, 13.541629, 15.054151>,  <12.023829, 13.636232, 14.937585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.394588, 13.541629, 15.054151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328464, -0.135541, 0.934741,
		-0.181587, -0.962126, -0.203321,
		0.926896, -0.236521, 0.291411,
		12.672658, 13.470676, 15.141575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.986874, 13.155407, 15.408846>,  <12.023829, 13.636232, 14.937585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.986874, 13.155407, 15.408846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.324157, 13.334339, 15.528108>,  <12.526526, 13.441698, 15.599665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.324157, 13.334339, 15.528108>,  <11.986874, 13.155407, 15.408846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.324157, 13.334339, 15.528108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396696, 0.143447, 0.906673,
		0.362813, -0.882790, 0.298409,
		0.843208, 0.447330, 0.298155,
		12.577119, 13.468538, 15.617554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.161462, 12.967138, 16.153889>,  <11.986874, 13.155407, 15.408846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.161462, 12.967138, 16.153889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.363834, 13.304361, 16.080912>,  <12.485258, 13.506696, 16.037125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.363834, 13.304361, 16.080912>,  <12.161462, 12.967138, 16.153889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.363834, 13.304361, 16.080912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157687, 0.298344, 0.941342,
		0.848039, -0.447484, 0.283881,
		0.505930, 0.843059, -0.182445,
		12.515614, 13.557279, 16.026178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.525724, 12.950191, 16.747841>,  <12.161462, 12.967138, 16.153889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.525724, 12.950191, 16.747841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.574051, 13.320012, 16.603285>,  <12.603046, 13.541905, 16.516552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.574051, 13.320012, 16.603285>,  <12.525724, 12.950191, 16.747841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.574051, 13.320012, 16.603285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085100, 0.372364, 0.924177,
		0.989020, -0.080900, 0.123667,
		0.120815, 0.924554, -0.361391,
		12.610295, 13.597379, 16.494867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.045265, 13.314300, 17.172577>,  <12.525724, 12.950191, 16.747841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.045265, 13.314300, 17.172577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.787172, 13.577320, 17.016987>,  <12.632317, 13.735132, 16.923634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.787172, 13.577320, 17.016987>,  <13.045265, 13.314300, 17.172577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.787172, 13.577320, 17.016987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075195, 0.452006, 0.888840,
		0.760276, 0.602758, -0.242205,
		-0.645233, 0.657551, -0.388974,
		12.593602, 13.774586, 16.900295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.260525, 13.889681, 17.627663>,  <13.045265, 13.314300, 17.172577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.260525, 13.889681, 17.627663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.900696, 13.920742, 17.455738>,  <12.684798, 13.939379, 17.352583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.900696, 13.920742, 17.455738>,  <13.260525, 13.889681, 17.627663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.900696, 13.920742, 17.455738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377907, 0.355010, 0.855076,
		0.218986, 0.931632, -0.290013,
		-0.899573, 0.077652, -0.429812,
		12.630824, 13.944037, 17.326794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.094070, 14.560438, 17.801655>,  <13.260525, 13.889681, 17.627663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.094070, 14.560438, 17.801655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.752760, 14.366767, 17.724205>,  <12.547974, 14.250564, 17.677734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.752760, 14.366767, 17.724205>,  <13.094070, 14.560438, 17.801655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.752760, 14.366767, 17.724205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374386, 0.310354, 0.873794,
		-0.362981, 0.818078, -0.446087,
		-0.853276, -0.484179, -0.193624,
		12.496777, 14.221513, 17.666119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.600369, 15.012443, 18.041548>,  <13.094070, 14.560438, 17.801655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.600369, 15.012443, 18.041548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.350264, 14.701699, 18.011795>,  <12.200200, 14.515253, 17.993942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.350264, 14.701699, 18.011795>,  <12.600369, 15.012443, 18.041548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.350264, 14.701699, 18.011795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349155, 0.193227, 0.916926,
		-0.697950, 0.599294, -0.392062,
		-0.625265, -0.776859, -0.074384,
		12.162683, 14.468641, 17.989479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.748623, 15.229772, 18.081064>,  <12.600369, 15.012443, 18.041548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.748623, 15.229772, 18.081064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.778925, 14.842745, 18.177460>,  <11.797107, 14.610529, 18.235296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.778925, 14.842745, 18.177460>,  <11.748623, 15.229772, 18.081064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.778925, 14.842745, 18.177460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548174, 0.161471, 0.820629,
		-0.832926, -0.194271, -0.518163,
		0.075756, -0.967567, 0.240988,
		11.801652, 14.552475, 18.249756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.062711, 15.047731, 18.488417>,  <11.748623, 15.229772, 18.081064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.062711, 15.047731, 18.488417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.279221, 14.715226, 18.539049>,  <11.409126, 14.515722, 18.569427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.279221, 14.715226, 18.539049>,  <11.062711, 15.047731, 18.488417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.279221, 14.715226, 18.539049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549616, -0.235843, 0.801437,
		-0.636353, -0.503367, -0.584532,
		0.541274, -0.831264, 0.126579,
		11.441603, 14.465847, 18.577023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.640616, 14.361426, 18.527510>,  <11.062711, 15.047731, 18.488417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.640616, 14.361426, 18.527510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.979748, 14.218620, 18.684341>,  <11.183227, 14.132936, 18.778440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.979748, 14.218620, 18.684341>,  <10.640616, 14.361426, 18.527510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.979748, 14.218620, 18.684341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518086, -0.400105, 0.755978,
		-0.113023, -0.844071, -0.524185,
		0.847828, -0.357016, 0.392081,
		11.234097, 14.111515, 18.801966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.587648, 13.597054, 18.639833>,  <10.640616, 14.361426, 18.527510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.587648, 13.597054, 18.639833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.853043, 13.765233, 18.887384>,  <11.012280, 13.866140, 19.035915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.853043, 13.765233, 18.887384>,  <10.587648, 13.597054, 18.639833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.853043, 13.765233, 18.887384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529426, -0.320651, 0.785424,
		0.528673, -0.848768, 0.009848,
		0.663485, 0.420446, 0.618880,
		11.052088, 13.891367, 19.073048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.728635, 12.962955, 19.041553>,  <10.587648, 13.597054, 18.639833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.728635, 12.962955, 19.041553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.880644, 13.273987, 19.241934>,  <10.971849, 13.460606, 19.362162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.880644, 13.273987, 19.241934>,  <10.728635, 12.962955, 19.041553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.880644, 13.273987, 19.241934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375884, -0.365028, 0.851743,
		0.845159, -0.511981, 0.153561,
		0.380022, 0.777580, 0.500952,
		10.994651, 13.507260, 19.392220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.974833, 12.672428, 19.624514>,  <10.728635, 12.962955, 19.041553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.974833, 12.672428, 19.624514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.913994, 13.055709, 19.721437>,  <10.877490, 13.285678, 19.779591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.913994, 13.055709, 19.721437>,  <10.974833, 12.672428, 19.624514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.913994, 13.055709, 19.721437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444415, -0.285283, 0.849181,
		0.882814, 0.021475, 0.469231,
		-0.152100, 0.958203, 0.242308,
		10.868364, 13.343170, 19.794130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.220142, 12.689720, 20.224390>,  <10.974833, 12.672428, 19.624514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.220142, 12.689720, 20.224390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.990883, 13.017461, 20.219229>,  <10.853328, 13.214105, 20.216131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.990883, 13.017461, 20.219229>,  <11.220142, 12.689720, 20.224390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.990883, 13.017461, 20.219229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397617, -0.264301, 0.878662,
		0.716521, 0.508734, 0.477271,
		-0.573148, 0.819351, -0.012904,
		10.818938, 13.263266, 20.215357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.305378, 12.930297, 20.877005>,  <11.220142, 12.689720, 20.224390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.305378, 12.930297, 20.877005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.000799, 13.146299, 20.733566>,  <10.818051, 13.275901, 20.647503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.000799, 13.146299, 20.733566>,  <11.305378, 12.930297, 20.877005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.000799, 13.146299, 20.733566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426718, -0.001139, 0.904384,
		0.487964, 0.841660, 0.231297,
		-0.761448, 0.540006, -0.358596,
		10.772365, 13.308301, 20.625988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.322302, 13.622695, 21.213154>,  <11.305378, 12.930297, 20.877005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.322302, 13.622695, 21.213154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.958511, 13.494278, 21.107487>,  <10.740237, 13.417228, 21.044086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.958511, 13.494278, 21.107487>,  <11.322302, 13.622695, 21.213154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.958511, 13.494278, 21.107487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290480, 0.036094, 0.956200,
		-0.297446, 0.946377, -0.126083,
		-0.909477, -0.321042, -0.264167,
		10.685668, 13.397965, 21.028236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.872078, 13.915077, 21.608294>,  <11.322302, 13.622695, 21.213154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.872078, 13.915077, 21.608294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.659025, 13.605480, 21.471333>,  <10.531194, 13.419722, 21.389156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.659025, 13.605480, 21.471333>,  <10.872078, 13.915077, 21.608294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.659025, 13.605480, 21.471333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330600, -0.182152, 0.926026,
		-0.779106, 0.606429, -0.158862,
		-0.532632, -0.773993, -0.342401,
		10.499235, 13.373282, 21.368612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.244501, 13.980102, 21.769896>,  <10.872078, 13.915077, 21.608294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.244501, 13.980102, 21.769896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.247636, 13.583869, 21.715218>,  <10.249516, 13.346129, 21.682411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.247636, 13.583869, 21.715218>,  <10.244501, 13.980102, 21.769896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.247636, 13.583869, 21.715218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237662, -0.134629, 0.961973,
		-0.971316, 0.024948, -0.236479,
		0.007838, -0.990582, -0.136697,
		10.249988, 13.286695, 21.674208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.662167, 13.806985, 22.065336>,  <10.244501, 13.980102, 21.769896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.662167, 13.806985, 22.065336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.874182, 13.470354, 22.023748>,  <10.001390, 13.268375, 21.998796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.874182, 13.470354, 22.023748>,  <9.662167, 13.806985, 22.065336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.874182, 13.470354, 22.023748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165449, -0.222888, 0.960701,
		-0.831677, -0.492006, -0.257377,
		0.530037, -0.841576, -0.103969,
		10.033193, 13.217881, 21.992558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.211802, 13.280046, 22.328859>,  <9.662167, 13.806985, 22.065336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.211802, 13.280046, 22.328859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.585785, 13.141958, 22.361538>,  <9.810175, 13.059106, 22.381145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.585785, 13.141958, 22.361538>,  <9.211802, 13.280046, 22.328859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.585785, 13.141958, 22.361538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200307, -0.323660, 0.924728,
		-0.292788, -0.880949, -0.371758,
		0.934961, -0.345215, 0.081697,
		9.866273, 13.038392, 22.386047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.116810, 12.782449, 22.724941>,  <9.211802, 13.280046, 22.328859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.116810, 12.782449, 22.724941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.514636, 12.808639, 22.757326>,  <9.753331, 12.824352, 22.776756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.514636, 12.808639, 22.757326>,  <9.116810, 12.782449, 22.724941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.514636, 12.808639, 22.757326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048608, -0.395659, 0.917110,
		0.092081, -0.916061, -0.390325,
		0.994564, 0.065476, 0.080960,
		9.813005, 12.828281, 22.781614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.288921, 12.147333, 23.014187>,  <9.116810, 12.782449, 22.724941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.288921, 12.147333, 23.014187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.597813, 12.388487, 23.094381>,  <9.783148, 12.533179, 23.142498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.597813, 12.388487, 23.094381>,  <9.288921, 12.147333, 23.014187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.597813, 12.388487, 23.094381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119933, -0.171555, 0.977847,
		0.623922, -0.779167, -0.060174,
		0.772229, 0.602883, 0.200485,
		9.829481, 12.569352, 23.154528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.788392, 11.825330, 23.460812>,  <9.288921, 12.147333, 23.014187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.788392, 11.825330, 23.460812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.857424, 12.217381, 23.499935>,  <9.898843, 12.452611, 23.523409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.857424, 12.217381, 23.499935>,  <9.788392, 11.825330, 23.460812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.857424, 12.217381, 23.499935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113392, -0.078870, 0.990415,
		0.978447, -0.182016, 0.097527,
		0.172579, 0.980127, 0.097809,
		9.909198, 12.511418, 23.529278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.173011, 11.880193, 24.100735>,  <9.788392, 11.825330, 23.460812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.173011, 11.880193, 24.100735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.065553, 12.258316, 24.026739>,  <10.001078, 12.485190, 23.982342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.065553, 12.258316, 24.026739>,  <10.173011, 11.880193, 24.100735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.065553, 12.258316, 24.026739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166865, 0.143472, 0.975486,
		0.948676, 0.292928, 0.119196,
		-0.268646, 0.945309, -0.184988,
		9.984959, 12.541908, 23.971243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.644281, 12.324822, 24.449207>,  <10.173011, 11.880193, 24.100735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.644281, 12.324822, 24.449207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.285177, 12.490294, 24.388685>,  <10.069715, 12.589578, 24.352371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.285177, 12.490294, 24.388685>,  <10.644281, 12.324822, 24.449207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.285177, 12.490294, 24.388685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174455, -0.018513, 0.984491,
		0.404462, 0.910234, 0.088789,
		-0.897761, 0.413679, -0.151307,
		10.015849, 12.614398, 24.343292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.536324, 12.592962, 25.038881>,  <10.644281, 12.324822, 24.449207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.536324, 12.592962, 25.038881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.173129, 12.609430, 24.872091>,  <9.955213, 12.619311, 24.772017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.173129, 12.609430, 24.872091>,  <10.536324, 12.592962, 25.038881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.173129, 12.609430, 24.872091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417547, -0.171753, 0.892275,
		-0.034882, 0.984279, 0.173139,
		-0.907985, 0.041169, -0.416974,
		9.900733, 12.621781, 24.747000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.134685, 13.010344, 25.465405>,  <10.536324, 12.592962, 25.038881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.134685, 13.010344, 25.465405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.880267, 12.787849, 25.251471>,  <9.727616, 12.654353, 25.123110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.880267, 12.787849, 25.251471>,  <10.134685, 13.010344, 25.465405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.880267, 12.787849, 25.251471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426462, -0.324252, 0.844388,
		-0.643100, 0.765155, -0.030975,
		-0.636044, -0.556236, -0.534836,
		9.689454, 12.620978, 25.091021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.384520, 13.167173, 25.544716>,  <10.134685, 13.010344, 25.465405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.384520, 13.167173, 25.544716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.411618, 12.780370, 25.446489>,  <9.427877, 12.548287, 25.387554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.411618, 12.780370, 25.446489>,  <9.384520, 13.167173, 25.544716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.411618, 12.780370, 25.446489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418610, -0.250969, 0.872800,
		-0.905636, 0.043667, -0.421803,
		0.067747, -0.967010, -0.245566,
		9.431942, 12.490267, 25.372820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.724602, 13.063547, 25.508156>,  <9.384520, 13.167173, 25.544716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.724602, 13.063547, 25.508156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.929122, 12.723445, 25.558176>,  <9.051834, 12.519383, 25.588188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.929122, 12.723445, 25.558176>,  <8.724602, 13.063547, 25.508156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.929122, 12.723445, 25.558176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489489, -0.168523, 0.855571,
		-0.706380, -0.498664, -0.502356,
		0.511300, -0.850256, 0.125049,
		9.082512, 12.468369, 25.595692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.188492, 12.589647, 25.634544>,  <8.724602, 13.063547, 25.508156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.188492, 12.589647, 25.634544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.509452, 12.401419, 25.781361>,  <8.702027, 12.288482, 25.869450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.509452, 12.401419, 25.781361>,  <8.188492, 12.589647, 25.634544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.509452, 12.401419, 25.781361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576774, -0.453541, 0.679436,
		-0.153255, -0.756878, -0.635334,
		0.802399, -0.470571, 0.367040,
		8.750172, 12.260247, 25.891472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.974145, 11.929865, 25.853836>,  <8.188492, 12.589647, 25.634544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.974145, 11.929865, 25.853836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.330768, 11.961769, 26.032169>,  <8.544741, 11.980911, 26.139170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.330768, 11.961769, 26.032169>,  <7.974145, 11.929865, 25.853836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.330768, 11.961769, 26.032169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341659, -0.527758, 0.777651,
		0.297318, -0.845642, -0.443274,
		0.891556, 0.079761, 0.445833,
		8.598234, 11.985697, 26.165918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.028053, 11.308558, 26.167570>,  <7.974145, 11.929865, 25.853836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.028053, 11.308558, 26.167570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.292659, 11.544209, 26.353186>,  <8.451422, 11.685598, 26.464556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.292659, 11.544209, 26.353186>,  <8.028053, 11.308558, 26.167570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.292659, 11.544209, 26.353186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061228, -0.574282, 0.816365,
		0.747430, -0.568448, -0.343824,
		0.661513, 0.589124, 0.464041,
		8.491113, 11.720945, 26.492397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.505811, 10.861686, 26.520168>,  <8.028053, 11.308558, 26.167570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.505811, 10.861686, 26.520168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.535439, 11.212065, 26.710842>,  <8.553215, 11.422293, 26.825247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.535439, 11.212065, 26.710842>,  <8.505811, 10.861686, 26.520168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.535439, 11.212065, 26.710842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129308, -0.482399, 0.866355,
		0.988834, -0.002531, -0.148998,
		0.074069, 0.875948, 0.476686,
		8.557659, 11.474849, 26.853848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.118086, 10.837304, 26.949387>,  <8.505811, 10.861686, 26.520168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.118086, 10.837304, 26.949387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.853701, 11.103206, 27.088659>,  <8.695069, 11.262747, 27.172222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.853701, 11.103206, 27.088659>,  <9.118086, 10.837304, 26.949387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.853701, 11.103206, 27.088659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105451, -0.377101, 0.920149,
		0.742973, 0.644900, 0.179150,
		-0.660962, 0.664755, 0.348181,
		8.655412, 11.302632, 27.193113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.367968, 10.928198, 27.568613>,  <9.118086, 10.837304, 26.949387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.367968, 10.928198, 27.568613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.994249, 11.069931, 27.584314>,  <8.770019, 11.154971, 27.593735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.994249, 11.069931, 27.584314>,  <9.367968, 10.928198, 27.568613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.994249, 11.069931, 27.584314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066093, -0.280352, 0.957619,
		0.350320, 0.892105, 0.285350,
		-0.934295, 0.354333, 0.039251,
		8.713961, 11.176231, 27.596090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.374923, 11.261003, 28.237934>,  <9.367968, 10.928198, 27.568613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.374923, 11.261003, 28.237934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.999128, 11.180041, 28.127373>,  <8.773652, 11.131464, 28.061035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.999128, 11.180041, 28.127373>,  <9.374923, 11.261003, 28.237934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.999128, 11.180041, 28.127373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194465, -0.349157, 0.916664,
		-0.282047, 0.914943, 0.288667,
		-0.939486, -0.202406, -0.276403,
		8.717282, 11.119319, 28.044453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.999434, 11.440592, 28.835941>,  <9.374923, 11.261003, 28.237934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.999434, 11.440592, 28.835941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.754672, 11.190624, 28.642012>,  <8.607816, 11.040644, 28.525654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.754672, 11.190624, 28.642012>,  <8.999434, 11.440592, 28.835941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.754672, 11.190624, 28.642012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361891, -0.323838, 0.874165,
		-0.703285, 0.710356, -0.027995,
		-0.611903, -0.624918, -0.484822,
		8.571101, 11.003149, 28.496565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.346326, 11.628000, 29.134192>,  <8.999434, 11.440592, 28.835941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.346326, 11.628000, 29.134192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.308950, 11.263094, 28.974672>,  <8.286525, 11.044150, 28.878962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.308950, 11.263094, 28.974672>,  <8.346326, 11.628000, 29.134192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.308950, 11.263094, 28.974672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666201, -0.240378, 0.705971,
		-0.739896, 0.331644, -0.585292,
		-0.093440, -0.912266, -0.398797,
		8.280918, 10.989414, 28.855034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.614753, 11.488290, 29.159481>,  <8.346326, 11.628000, 29.134192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.614753, 11.488290, 29.159481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.792730, 11.133672, 29.108784>,  <7.899516, 10.920901, 29.078365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.792730, 11.133672, 29.108784>,  <7.614753, 11.488290, 29.159481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.792730, 11.133672, 29.108784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644549, -0.415267, 0.641958,
		-0.621758, -0.203941, -0.756192,
		0.444943, -0.886545, -0.126746,
		7.926213, 10.867708, 29.070761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.143946, 11.043391, 29.028671>,  <7.614753, 11.488290, 29.159481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.143946, 11.043391, 29.028671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.428894, 10.790135, 29.149775>,  <7.599863, 10.638182, 29.222437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.428894, 10.790135, 29.149775>,  <7.143946, 11.043391, 29.028671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.428894, 10.790135, 29.149775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691522, -0.559675, 0.456686,
		-0.119699, -0.534695, -0.836525,
		0.712369, -0.633140, 0.302761,
		7.642605, 10.600193, 29.240602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.937431, 10.346859, 28.989658>,  <7.143946, 11.043391, 29.028671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.937431, 10.346859, 28.989658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.206383, 10.359871, 29.285456>,  <7.367754, 10.367678, 29.462934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.206383, 10.359871, 29.285456>,  <6.937431, 10.346859, 28.989658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.206383, 10.359871, 29.285456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645500, -0.463169, 0.607293,
		0.362265, -0.885673, -0.290427,
		0.672379, 0.032530, 0.739491,
		7.408097, 10.369630, 29.507303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.144565, 9.661255, 29.265667>,  <6.937431, 10.346859, 28.989658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.144565, 9.661255, 29.265667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.182137, 9.932869, 29.556896>,  <7.204681, 10.095838, 29.731634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.182137, 9.932869, 29.556896>,  <7.144565, 9.661255, 29.265667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.182137, 9.932869, 29.556896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598379, -0.545969, 0.586396,
		0.795688, -0.490743, 0.355037,
		0.093931, 0.679035, 0.728072,
		7.210317, 10.136580, 29.775318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.174396, 9.256486, 29.761011>,  <7.144565, 9.661255, 29.265667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.174396, 9.256486, 29.761011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.048108, 9.598742, 29.925058>,  <6.972335, 9.804096, 30.023487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.048108, 9.598742, 29.925058>,  <7.174396, 9.256486, 29.761011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.048108, 9.598742, 29.925058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607194, -0.514329, 0.605624,
		0.729134, -0.057816, 0.681924,
		-0.315719, 0.855642, 0.410120,
		6.953393, 9.855435, 30.048094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.230159, 8.953848, 29.197880>,  <7.174396, 9.256486, 29.761011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.230159, 8.953848, 29.197880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.896128, 9.033661, 29.402948>,  <6.695709, 9.081549, 29.525990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.896128, 9.033661, 29.402948>,  <7.230159, 8.953848, 29.197880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.896128, 9.033661, 29.402948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296026, -0.622503, 0.724471,
		0.463694, 0.756754, 0.460772,
		-0.835079, 0.199532, 0.512670,
		6.645604, 9.093520, 29.556749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.062644, 8.298931, 29.596855>,  <7.230159, 8.953848, 29.197880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.062644, 8.298931, 29.596855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.343029, 8.059856, 29.752506>,  <7.511261, 7.916412, 29.845898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.343029, 8.059856, 29.752506>,  <7.062644, 8.298931, 29.596855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.343029, 8.059856, 29.752506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641407, 0.289732, -0.710389,
		0.311846, 0.747547, 0.586452,
		0.700963, -0.597686, 0.389130,
		7.553319, 7.880550, 29.869246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.639943, 8.523986, 30.130619>,  <7.062644, 8.298931, 29.596855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.639943, 8.523986, 30.130619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.757592, 8.228726, 29.887760>,  <7.828181, 8.051571, 29.742044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.757592, 8.228726, 29.887760>,  <7.639943, 8.523986, 30.130619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.757592, 8.228726, 29.887760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821873, 0.519591, -0.233560,
		0.487870, -0.430303, 0.759488,
		0.294122, -0.738150, -0.607147,
		7.845828, 8.007281, 29.705616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.359107, 8.527781, 30.240637>,  <7.639943, 8.523986, 30.130619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.359107, 8.527781, 30.240637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.319272, 8.290254, 29.921272>,  <8.295371, 8.147738, 29.729652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.319272, 8.290254, 29.921272>,  <8.359107, 8.527781, 30.240637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.319272, 8.290254, 29.921272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819332, 0.406364, -0.404429,
		0.564603, -0.694441, 0.446066,
		-0.099587, -0.593818, -0.798413,
		8.289396, 8.112108, 29.681749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.977449, 8.436760, 29.964684>,  <8.359107, 8.527781, 30.240637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.977449, 8.436760, 29.964684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.763124, 8.278165, 29.666502>,  <8.634529, 8.183007, 29.487593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.763124, 8.278165, 29.666502>,  <8.977449, 8.436760, 29.964684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.763124, 8.278165, 29.666502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711870, 0.262628, -0.651359,
		0.454033, -0.879672, 0.141529,
		-0.535813, -0.396489, -0.745454,
		8.602381, 8.159219, 29.442865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.358132, 7.906675, 29.579998>,  <8.977449, 8.436760, 29.964684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.358132, 7.906675, 29.579998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.103746, 8.109275, 29.347101>,  <8.951115, 8.230835, 29.207363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.103746, 8.109275, 29.347101>,  <9.358132, 7.906675, 29.579998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.103746, 8.109275, 29.347101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708449, 0.083999, -0.700745,
		-0.306018, -0.858139, -0.412249,
		-0.635966, 0.506499, -0.582243,
		8.912956, 8.261225, 29.172428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.256363, 7.604324, 28.898952>,  <9.358132, 7.906675, 29.579998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.256363, 7.604324, 28.898952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.141970, 7.981615, 28.831377>,  <9.073334, 8.207989, 28.790833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.141970, 7.981615, 28.831377>,  <9.256363, 7.604324, 28.898952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.141970, 7.981615, 28.831377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591372, 0.035008, -0.805638,
		-0.753985, -0.330304, -0.567809,
		-0.285983, 0.943225, -0.168937,
		9.056174, 8.264583, 28.780695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.272848, 7.560712, 28.150627>,  <9.256363, 7.604324, 28.898952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.272848, 7.560712, 28.150627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.288657, 7.929436, 28.304876>,  <9.298142, 8.150670, 28.397427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.288657, 7.929436, 28.304876>,  <9.272848, 7.560712, 28.150627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.288657, 7.929436, 28.304876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617738, 0.280798, -0.734542,
		-0.785390, 0.267246, -0.558339,
		0.039522, 0.921809, 0.385624,
		9.300514, 8.205979, 28.420563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.392229, 8.027822, 27.593349>,  <9.272848, 7.560712, 28.150627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.392229, 8.027822, 27.593349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.428615, 8.289986, 27.893259>,  <9.450446, 8.447284, 28.073206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.428615, 8.289986, 27.893259>,  <9.392229, 8.027822, 27.593349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.428615, 8.289986, 27.893259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512646, 0.614658, -0.599492,
		-0.853768, 0.438902, -0.280081,
		0.090964, 0.655409, 0.749776,
		9.455904, 8.486609, 28.118193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.115043, 8.654963, 27.414410>,  <9.392229, 8.027822, 27.593349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.115043, 8.654963, 27.414410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.384157, 8.738997, 27.698162>,  <9.545626, 8.789416, 27.868414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.384157, 8.738997, 27.698162>,  <9.115043, 8.654963, 27.414410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.384157, 8.738997, 27.698162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632709, 0.333582, -0.698858,
		-0.383455, 0.919015, 0.091509,
		0.672787, 0.210082, 0.709382,
		9.585993, 8.802021, 27.910976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.214520, 9.404680, 27.496178>,  <9.115043, 8.654963, 27.414410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.214520, 9.404680, 27.496178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.546687, 9.221126, 27.622559>,  <9.745988, 9.110993, 27.698387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.546687, 9.221126, 27.622559>,  <9.214520, 9.404680, 27.496178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.546687, 9.221126, 27.622559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523080, 0.446921, -0.725706,
		0.191810, 0.767910, 0.611166,
		0.830420, -0.458886, 0.315954,
		9.795813, 9.083460, 27.717344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.737645, 9.879811, 27.519388>,  <9.214520, 9.404680, 27.496178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.737645, 9.879811, 27.519388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.982249, 9.563330, 27.522243>,  <10.129012, 9.373441, 27.523956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.982249, 9.563330, 27.522243>,  <9.737645, 9.879811, 27.519388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.982249, 9.563330, 27.522243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623241, 0.476098, -0.620404,
		0.487467, 0.383833, 0.784250,
		0.611511, -0.791203, 0.007138,
		10.165703, 9.325969, 27.524385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.452938, 10.173352, 27.540888>,  <9.737645, 9.879811, 27.519388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.452938, 10.173352, 27.540888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.504914, 9.788511, 27.444992>,  <10.536100, 9.557607, 27.387455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.504914, 9.788511, 27.444992>,  <10.452938, 10.173352, 27.540888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.504914, 9.788511, 27.444992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677590, 0.262686, -0.686927,
		0.723870, -0.073185, 0.686044,
		0.129941, -0.962102, -0.239740,
		10.543897, 9.499881, 27.373070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.195486, 10.086112, 27.492764>,  <10.452938, 10.173352, 27.540888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.195486, 10.086112, 27.492764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.036484, 9.763722, 27.317312>,  <10.941082, 9.570289, 27.212042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.036484, 9.763722, 27.317312>,  <11.195486, 10.086112, 27.492764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.036484, 9.763722, 27.317312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582100, 0.148027, -0.799529,
		0.709329, -0.573143, 0.410317,
		-0.397507, -0.805975, -0.438626,
		10.917232, 9.521930, 27.185724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.741223, 9.538169, 27.274712>,  <11.195486, 10.086112, 27.492764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.741223, 9.538169, 27.274712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.421797, 9.485672, 27.039743>,  <11.230141, 9.454174, 26.898762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.421797, 9.485672, 27.039743>,  <11.741223, 9.538169, 27.274712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.421797, 9.485672, 27.039743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589205, 0.028974, -0.807464,
		0.122994, -0.990927, 0.054191,
		-0.798567, -0.131243, -0.587423,
		11.182226, 9.446300, 26.863516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.004537, 9.191797, 26.720442>,  <11.741223, 9.538169, 27.274712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.004537, 9.191797, 26.720442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.664071, 9.343472, 26.575258>,  <11.459792, 9.434478, 26.488148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.664071, 9.343472, 26.575258>,  <12.004537, 9.191797, 26.720442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.664071, 9.343472, 26.575258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420845, 0.079727, -0.903622,
		-0.313705, -0.921879, -0.227440,
		-0.851163, 0.379188, -0.362957,
		11.408722, 9.457229, 26.466372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.969515, 8.837809, 26.080471>,  <12.004537, 9.191797, 26.720442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.969515, 8.837809, 26.080471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.702882, 9.135122, 26.057863>,  <11.542902, 9.313511, 26.044298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.702882, 9.135122, 26.057863>,  <11.969515, 8.837809, 26.080471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.702882, 9.135122, 26.057863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307882, 0.205470, -0.928973,
		-0.678878, -0.636639, -0.365807,
		-0.666583, 0.743285, -0.056521,
		11.502907, 9.358108, 26.040907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.732981, 8.789843, 25.370821>,  <11.969515, 8.837809, 26.080471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.732981, 8.789843, 25.370821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.613104, 9.152926, 25.488295>,  <11.541178, 9.370776, 25.558779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.613104, 9.152926, 25.488295>,  <11.732981, 8.789843, 25.370821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.613104, 9.152926, 25.488295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089548, 0.333236, -0.938581,
		-0.949824, -0.254988, -0.181152,
		-0.299693, 0.907709, 0.293682,
		11.523196, 9.425239, 25.576399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.201505, 8.958180, 24.916384>,  <11.732981, 8.789843, 25.370821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.201505, 8.958180, 24.916384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.378584, 9.282036, 25.070530>,  <11.484832, 9.476349, 25.163017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.378584, 9.282036, 25.070530>,  <11.201505, 8.958180, 24.916384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.378584, 9.282036, 25.070530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181574, 0.339924, -0.922758,
		-0.878094, 0.478476, 0.003475,
		0.442698, 0.809637, 0.385364,
		11.511394, 9.524927, 25.186138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.927075, 9.516544, 24.548531>,  <11.201505, 8.958180, 24.916384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.927075, 9.516544, 24.548531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.261447, 9.658378, 24.716099>,  <11.462070, 9.743478, 24.816641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.261447, 9.658378, 24.716099>,  <10.927075, 9.516544, 24.548531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.261447, 9.658378, 24.716099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218663, 0.484928, -0.846777,
		-0.503400, 0.799447, 0.327830,
		0.835928, 0.354583, 0.418922,
		11.512225, 9.764752, 24.841776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.993231, 10.207589, 24.226648>,  <10.927075, 9.516544, 24.548531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.993231, 10.207589, 24.226648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.361829, 10.110180, 24.347673>,  <11.582988, 10.051734, 24.420288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.361829, 10.110180, 24.347673>,  <10.993231, 10.207589, 24.226648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.361829, 10.110180, 24.347673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374688, 0.352310, -0.857605,
		0.102252, 0.903645, 0.415897,
		0.921495, -0.243523, 0.302561,
		11.638277, 10.037123, 24.438442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.467802, 10.765715, 24.124853>,  <10.993231, 10.207589, 24.226648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.467802, 10.765715, 24.124853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.690171, 10.433659, 24.107794>,  <11.823592, 10.234426, 24.097557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.690171, 10.433659, 24.107794>,  <11.467802, 10.765715, 24.124853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.690171, 10.433659, 24.107794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341909, 0.275133, -0.898554,
		0.757660, 0.484944, 0.436785,
		0.555923, -0.830139, -0.042651,
		11.856948, 10.184617, 24.094999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.177991, 10.975760, 23.906506>,  <11.467802, 10.765715, 24.124853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.177991, 10.975760, 23.906506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.112694, 10.593742, 23.807518>,  <12.073515, 10.364532, 23.748125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.112694, 10.593742, 23.807518>,  <12.177991, 10.975760, 23.906506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.112694, 10.593742, 23.807518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341039, 0.180746, -0.922509,
		0.925767, -0.234991, 0.296202,
		-0.163244, -0.955044, -0.247470,
		12.063721, 10.307229, 23.733276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.828158, 10.788178, 23.581373>,  <12.177991, 10.975760, 23.906506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.828158, 10.788178, 23.581373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.518764, 10.551963, 23.489300>,  <12.333128, 10.410233, 23.434055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.518764, 10.551963, 23.489300>,  <12.828158, 10.788178, 23.581373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.518764, 10.551963, 23.489300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243566, 0.058339, -0.968128,
		0.585147, -0.804897, 0.098711,
		-0.773485, -0.590540, -0.230182,
		12.286719, 10.374801, 23.420246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.203211, 10.300501, 23.092957>,  <12.828158, 10.788178, 23.581373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.203211, 10.300501, 23.092957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.810950, 10.252450, 23.031126>,  <12.575594, 10.223619, 22.994028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.810950, 10.252450, 23.031126>,  <13.203211, 10.300501, 23.092957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.810950, 10.252450, 23.031126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151359, 0.035511, -0.987841,
		0.124155, -0.992123, -0.016642,
		-0.980651, -0.120127, -0.154576,
		12.516755, 10.216412, 22.984753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.213393, 9.800881, 22.705231>,  <13.203211, 10.300501, 23.092957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.213393, 9.800881, 22.705231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.845422, 9.950983, 22.659773>,  <12.624639, 10.041044, 22.632498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.845422, 9.950983, 22.659773>,  <13.213393, 9.800881, 22.705231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.845422, 9.950983, 22.659773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130042, 0.018570, -0.991334,
		-0.369893, -0.926736, -0.065882,
		-0.919928, 0.375255, -0.113646,
		12.569443, 10.063560, 22.625679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.814784, 9.392635, 22.219667>,  <13.213393, 9.800881, 22.705231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.814784, 9.392635, 22.219667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.659343, 9.760780, 22.202137>,  <12.566078, 9.981668, 22.191618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.659343, 9.760780, 22.202137>,  <12.814784, 9.392635, 22.219667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.659343, 9.760780, 22.202137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089426, -0.009667, -0.995947,
		-0.917055, -0.390947, -0.078548,
		-0.388603, 0.920362, -0.043826,
		12.542762, 10.036889, 22.188990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.749148, 9.449160, 21.496380>,  <12.814784, 9.392635, 22.219667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.749148, 9.449160, 21.496380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.638318, 9.817925, 21.604677>,  <12.571819, 10.039185, 21.669655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.638318, 9.817925, 21.604677>,  <12.749148, 9.449160, 21.496380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.638318, 9.817925, 21.604677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119296, 0.312602, -0.942363,
		-0.953413, -0.228808, -0.196596,
		-0.277076, 0.921915, 0.270743,
		12.555195, 10.094500, 21.685900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.134278, 9.591908, 21.002043>,  <12.749148, 9.449160, 21.496380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.134278, 9.591908, 21.002043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.332747, 9.910233, 21.140894>,  <12.451829, 10.101228, 21.224205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.332747, 9.910233, 21.140894>,  <12.134278, 9.591908, 21.002043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.332747, 9.910233, 21.140894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133349, 0.325217, -0.936190,
		-0.857922, 0.510800, 0.055242,
		0.496172, 0.795812, 0.347126,
		12.481599, 10.148976, 21.245031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.785610, 10.184278, 20.664377>,  <12.134278, 9.591908, 21.002043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.785610, 10.184278, 20.664377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.141250, 10.321897, 20.785131>,  <12.354633, 10.404468, 20.857584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.141250, 10.321897, 20.785131>,  <11.785610, 10.184278, 20.664377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.141250, 10.321897, 20.785131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168023, 0.368176, -0.914448,
		-0.425759, 0.863759, 0.269537,
		0.889099, 0.344046, 0.301886,
		12.407979, 10.425110, 20.875698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.875799, 10.734514, 20.304043>,  <11.785610, 10.184278, 20.664377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.875799, 10.734514, 20.304043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.248076, 10.660937, 20.430517>,  <12.471443, 10.616791, 20.506403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.248076, 10.660937, 20.430517>,  <11.875799, 10.734514, 20.304043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.248076, 10.660937, 20.430517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364973, 0.408868, -0.836434,
		0.024576, 0.893864, 0.447664,
		0.930694, -0.183942, 0.316188,
		12.527285, 10.605755, 20.525373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.327181, 11.377591, 20.238184>,  <11.875799, 10.734514, 20.304043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.327181, 11.377591, 20.238184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.607772, 11.092546, 20.242407>,  <12.776127, 10.921518, 20.244940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.607772, 11.092546, 20.242407>,  <12.327181, 11.377591, 20.238184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.607772, 11.092546, 20.242407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580908, 0.563123, -0.587740,
		0.412887, 0.418419, 0.808981,
		0.701477, -0.712613, 0.010557,
		12.818215, 10.878761, 20.245573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.838998, 11.790710, 20.321495>,  <12.327181, 11.377591, 20.238184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.838998, 11.790710, 20.321495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.970388, 11.441551, 20.177187>,  <13.049223, 11.232056, 20.090603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.970388, 11.441551, 20.177187>,  <12.838998, 11.790710, 20.321495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.970388, 11.441551, 20.177187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522409, 0.486123, -0.700552,
		0.786888, 0.041645, 0.615689,
		0.328475, -0.872897, -0.360769,
		13.068931, 11.179682, 20.068956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.585390, 11.804959, 20.269358>,  <12.838998, 11.790710, 20.321495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.585390, 11.804959, 20.269358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.497685, 11.497036, 20.029585>,  <13.445063, 11.312283, 19.885721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.497685, 11.497036, 20.029585>,  <13.585390, 11.804959, 20.269358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.497685, 11.497036, 20.029585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565395, 0.400455, -0.721086,
		0.795143, -0.497023, 0.347440,
		-0.219263, -0.769808, -0.599433,
		13.431907, 11.266093, 19.849754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.204355, 11.772084, 19.855152>,  <13.585390, 11.804959, 20.269358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.204355, 11.772084, 19.855152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.960343, 11.536537, 19.643078>,  <13.813936, 11.395208, 19.515833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.960343, 11.536537, 19.643078>,  <14.204355, 11.772084, 19.855152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.960343, 11.536537, 19.643078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481803, 0.255546, -0.838190,
		0.629071, -0.766766, 0.127828,
		-0.610030, -0.588869, -0.530187,
		13.777334, 11.359877, 19.484022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.697224, 11.390381, 19.384455>,  <14.204355, 11.772084, 19.855152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.697224, 11.390381, 19.384455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.336893, 11.383043, 19.210938>,  <14.120695, 11.378641, 19.106827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.336893, 11.383043, 19.210938>,  <14.697224, 11.390381, 19.384455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.336893, 11.383043, 19.210938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411810, 0.280471, -0.867035,
		0.137568, -0.959687, -0.245102,
		-0.900826, -0.018341, -0.433793,
		14.066646, 11.377541, 19.080799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.804658, 11.060420, 18.824911>,  <14.697224, 11.390381, 19.384455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.804658, 11.060420, 18.824911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.458789, 11.253821, 18.770409>,  <14.251267, 11.369863, 18.737707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.458789, 11.253821, 18.770409>,  <14.804658, 11.060420, 18.824911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.458789, 11.253821, 18.770409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318320, 0.317552, -0.893215,
		-0.388605, -0.815711, -0.428487,
		-0.864673, 0.483504, -0.136255,
		14.199388, 11.398872, 18.729532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.471825, 10.829703, 18.259060>,  <14.804658, 11.060420, 18.824911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.471825, 10.829703, 18.259060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.319146, 11.195450, 18.313087>,  <14.227539, 11.414898, 18.345503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.319146, 11.195450, 18.313087>,  <14.471825, 10.829703, 18.259060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.319146, 11.195450, 18.313087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384577, 0.289992, -0.876359,
		-0.840481, -0.282560, -0.462333,
		-0.381696, 0.914366, 0.135067,
		14.204638, 11.469760, 18.353607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.097345, 10.962938, 17.649992>,  <14.471825, 10.829703, 18.259060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.097345, 10.962938, 17.649992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.157244, 11.326226, 17.806307>,  <14.193183, 11.544199, 17.900095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.157244, 11.326226, 17.806307>,  <14.097345, 10.962938, 17.649992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.157244, 11.326226, 17.806307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244456, 0.348964, -0.904691,
		-0.958028, 0.231004, -0.169763,
		0.149746, 0.908219, 0.390787,
		14.202168, 11.598692, 17.923542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.703848, 11.449563, 17.199898>,  <14.097345, 10.962938, 17.649992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.703848, 11.449563, 17.199898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.973527, 11.688620, 17.373465>,  <14.135334, 11.832053, 17.477604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.973527, 11.688620, 17.373465>,  <13.703848, 11.449563, 17.199898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.973527, 11.688620, 17.373465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138055, 0.475187, -0.868986,
		-0.725534, 0.645772, 0.237862,
		0.674196, 0.597641, 0.433917,
		14.175786, 11.867912, 17.503639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.663134, 12.159270, 16.912617>,  <13.703848, 11.449563, 17.199898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.663134, 12.159270, 16.912617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.033807, 12.126814, 17.059408>,  <14.256211, 12.107340, 17.147484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.033807, 12.126814, 17.059408>,  <13.663134, 12.159270, 16.912617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.033807, 12.126814, 17.059408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359689, 0.474639, -0.803331,
		-0.108999, 0.876432, 0.469026,
		0.926684, -0.081141, 0.366978,
		14.311812, 12.102471, 17.169502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.981404, 12.878671, 16.774391>,  <13.663134, 12.159270, 16.912617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.981404, 12.878671, 16.774391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.266996, 12.601126, 16.811888>,  <14.438352, 12.434599, 16.834385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.266996, 12.601126, 16.811888>,  <13.981404, 12.878671, 16.774391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.266996, 12.601126, 16.811888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467782, 0.373099, -0.801235,
		0.520973, 0.615915, 0.590962,
		0.713980, -0.693863, 0.093739,
		14.481191, 12.392967, 16.840010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.632556, 13.288603, 16.859135>,  <13.981404, 12.878671, 16.774391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.632556, 13.288603, 16.859135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.740110, 12.922015, 16.740620>,  <14.804643, 12.702063, 16.669512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.740110, 12.922015, 16.740620>,  <14.632556, 13.288603, 16.859135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.740110, 12.922015, 16.740620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635384, 0.399964, -0.660542,
		0.723869, -0.010645, 0.689855,
		0.268886, -0.916469, -0.296286,
		14.820776, 12.647075, 16.651733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.234758, 13.392253, 16.570436>,  <14.632556, 13.288603, 16.859135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.234758, 13.392253, 16.570436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.173006, 13.021279, 16.434181>,  <15.135955, 12.798696, 16.352428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.173006, 13.021279, 16.434181>,  <15.234758, 13.392253, 16.570436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.173006, 13.021279, 16.434181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705331, 0.137974, -0.695321,
		0.691863, -0.347606, 0.632847,
		-0.154381, -0.927434, -0.340637,
		15.126692, 12.743050, 16.331989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.942225, 12.963072, 16.428419>,  <15.234758, 13.392253, 16.570436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.942225, 12.963072, 16.428419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.645406, 12.816415, 16.203941>,  <15.467315, 12.728420, 16.069254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.645406, 12.816415, 16.203941>,  <15.942225, 12.963072, 16.428419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.645406, 12.816415, 16.203941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528004, 0.196116, -0.826287,
		0.413012, -0.909456, 0.048062,
		-0.742046, -0.366644, -0.561194,
		15.422791, 12.706422, 16.035583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.181929, 12.518414, 15.919863>,  <15.942225, 12.963072, 16.428419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.181929, 12.518414, 15.919863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.841438, 12.668949, 15.773559>,  <15.637144, 12.759270, 15.685776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.841438, 12.668949, 15.773559>,  <16.181929, 12.518414, 15.919863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.841438, 12.668949, 15.773559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475479, 0.258093, -0.841016,
		-0.222106, -0.889808, -0.398636,
		-0.851228, 0.376338, -0.365761,
		15.586070, 12.781851, 15.663830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.739580, 12.725027, 16.356003>,  <16.181929, 12.518414, 15.919863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.739580, 12.725027, 16.356003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.133213, 12.763764, 16.415609>,  <17.369392, 12.787007, 16.451374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.133213, 12.763764, 16.415609>,  <16.739580, 12.725027, 16.356003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.133213, 12.763764, 16.415609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124757, -0.220741, 0.967321,
		0.126575, -0.970513, -0.205145,
		0.984081, 0.096845, 0.149018,
		17.428438, 12.792818, 16.460316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.947268, 12.273683, 16.917238>,  <16.739580, 12.725027, 16.356003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.947268, 12.273683, 16.917238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.237938, 12.547214, 16.890928>,  <17.412340, 12.711332, 16.875143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.237938, 12.547214, 16.890928>,  <16.947268, 12.273683, 16.917238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.237938, 12.547214, 16.890928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091274, -0.001210, 0.995825,
		0.680892, -0.729643, -0.063295,
		0.726674, 0.683827, -0.065774,
		17.455940, 12.752361, 16.871197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475159, 11.982056, 17.325876>,  <16.947268, 12.273683, 16.917238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.475159, 11.982056, 17.325876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.520758, 12.378862, 17.304314>,  <17.548117, 12.616946, 17.291376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.520758, 12.378862, 17.304314>,  <17.475159, 11.982056, 17.325876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.520758, 12.378862, 17.304314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018400, 0.052141, 0.998470,
		0.993311, -0.114815, -0.012309,
		0.113998, 0.992018, -0.053905,
		17.554956, 12.676468, 17.288141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.011719, 12.105551, 17.735294>,  <17.475159, 11.982056, 17.325876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.011719, 12.105551, 17.735294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.836443, 12.464326, 17.711658>,  <17.731277, 12.679591, 17.697477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.836443, 12.464326, 17.711658>,  <18.011719, 12.105551, 17.735294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.836443, 12.464326, 17.711658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142505, -0.004412, 0.989784,
		0.887514, 0.442135, 0.129751,
		-0.438191, 0.896938, -0.059091,
		17.704987, 12.733407, 17.693932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.356966, 12.698950, 18.123510>,  <18.011719, 12.105551, 17.735294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.356966, 12.698950, 18.123510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.979576, 12.826742, 18.088211>,  <17.753141, 12.903418, 18.067032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.979576, 12.826742, 18.088211>,  <18.356966, 12.698950, 18.123510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.979576, 12.826742, 18.088211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090955, 0.006468, 0.995834,
		0.318721, 0.947571, 0.022956,
		-0.943474, 0.319481, -0.088247,
		17.696533, 12.922586, 18.061737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.164457, 13.287249, 18.567533>,  <18.356966, 12.698950, 18.123510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.164457, 13.287249, 18.567533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.820522, 13.089567, 18.516239>,  <17.614162, 12.970959, 18.485462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.820522, 13.089567, 18.516239>,  <18.164457, 13.287249, 18.567533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.820522, 13.089567, 18.516239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113544, -0.059789, 0.991732,
		-0.497785, 0.867288, -0.004705,
		-0.859836, -0.494204, -0.128237,
		17.562572, 12.941306, 18.477768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.821905, 13.650657, 18.984163>,  <18.164457, 13.287249, 18.567533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.821905, 13.650657, 18.984163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.605709, 13.321629, 18.913456>,  <17.475992, 13.124211, 18.871031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.605709, 13.321629, 18.913456>,  <17.821905, 13.650657, 18.984163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.605709, 13.321629, 18.913456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228202, -0.058900, 0.971831,
		-0.809811, 0.565604, -0.155877,
		-0.540490, -0.822571, -0.176770,
		17.443562, 13.074858, 18.860426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.274485, 13.775953, 19.360128>,  <17.821905, 13.650657, 18.984163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.274485, 13.775953, 19.360128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.183083, 13.393043, 19.289240>,  <17.128241, 13.163297, 19.246706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.183083, 13.393043, 19.289240>,  <17.274485, 13.775953, 19.360128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.183083, 13.393043, 19.289240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392882, -0.075882, 0.916453,
		-0.890746, 0.279041, -0.358758,
		-0.228505, -0.957277, -0.177222,
		17.114531, 13.105860, 19.236073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.515518, 13.651457, 19.478840>,  <17.274485, 13.775953, 19.360128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.515518, 13.651457, 19.478840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.732061, 13.317466, 19.518318>,  <16.861988, 13.117071, 19.542006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.732061, 13.317466, 19.518318>,  <16.515518, 13.651457, 19.478840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.732061, 13.317466, 19.518318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418379, -0.165700, 0.893030,
		-0.729306, -0.524743, -0.439041,
		0.541360, -0.834978, 0.098696,
		16.894470, 13.066973, 19.547928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.006405, 13.249031, 19.694012>,  <16.515518, 13.651457, 19.478840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.006405, 13.249031, 19.694012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.333225, 13.053041, 19.815567>,  <16.529318, 12.935446, 19.888500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.333225, 13.053041, 19.815567>,  <16.006405, 13.249031, 19.694012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.333225, 13.053041, 19.815567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415976, -0.135989, 0.899150,
		-0.399237, -0.861063, -0.314929,
		0.817052, -0.489977, 0.303889,
		16.578341, 12.906048, 19.906734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.854427, 12.620955, 20.097342>,  <16.006405, 13.249031, 19.694012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.854427, 12.620955, 20.097342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.227392, 12.699514, 20.218691>,  <16.451172, 12.746650, 20.291500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.227392, 12.699514, 20.218691>,  <15.854427, 12.620955, 20.097342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.227392, 12.699514, 20.218691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271430, -0.173664, 0.946661,
		0.238608, -0.965022, -0.108618,
		0.932412, 0.196398, 0.303374,
		16.507116, 12.758433, 20.309704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.129271, 12.035873, 20.541357>,  <15.854427, 12.620955, 20.097342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.129271, 12.035873, 20.541357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.379272, 12.325014, 20.659241>,  <16.529274, 12.498499, 20.729971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.379272, 12.325014, 20.659241>,  <16.129271, 12.035873, 20.541357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.379272, 12.325014, 20.659241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057708, -0.333712, 0.940907,
		0.778485, -0.605079, -0.166857,
		0.625005, 0.722853, 0.294708,
		16.566774, 12.541870, 20.747654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716070, 11.681766, 20.835373>,  <16.129271, 12.035873, 20.541357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.716070, 11.681766, 20.835373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.741098, 12.050349, 20.988735>,  <16.756115, 12.271500, 21.080753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.741098, 12.050349, 20.988735>,  <16.716070, 11.681766, 20.835373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.741098, 12.050349, 20.988735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115446, -0.388262, 0.914289,
		0.991341, -0.012943, -0.130671,
		0.062568, 0.921458, 0.383406,
		16.759869, 12.326787, 21.103758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.336952, 11.695517, 21.328358>,  <16.716070, 11.681766, 20.835373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.336952, 11.695517, 21.328358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.124548, 12.011558, 21.450842>,  <16.997105, 12.201182, 21.524332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.124548, 12.011558, 21.450842>,  <17.336952, 11.695517, 21.328358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.124548, 12.011558, 21.450842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040626, -0.384688, 0.922152,
		0.846390, 0.477233, 0.236372,
		-0.531011, 0.790103, 0.306208,
		16.965244, 12.248589, 21.542704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660948, 11.911987, 21.927691>,  <17.336952, 11.695517, 21.328358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.660948, 11.911987, 21.927691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.289366, 12.058578, 21.948622>,  <17.066416, 12.146532, 21.961180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.289366, 12.058578, 21.948622>,  <17.660948, 11.911987, 21.927691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.289366, 12.058578, 21.948622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075471, -0.325869, 0.942398,
		0.362419, 0.871495, 0.330376,
		-0.928955, 0.366477, 0.052328,
		17.010679, 12.168521, 21.964321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.490406, 12.334722, 22.580122>,  <17.660948, 11.911987, 21.927691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.490406, 12.334722, 22.580122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.125141, 12.219592, 22.464678>,  <16.905983, 12.150515, 22.395411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.125141, 12.219592, 22.464678>,  <17.490406, 12.334722, 22.580122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.125141, 12.219592, 22.464678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172158, -0.369459, 0.913160,
		-0.369459, 0.883548, 0.287824,
		-0.913160, -0.287824, -0.288610,
		16.851192, 12.133245, 22.378096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.091106, 12.392586, 23.133427>,  <17.490406, 12.334722, 22.580122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.091106, 12.392586, 23.133427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.851767, 12.178348, 22.895060>,  <16.708162, 12.049805, 22.752039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.851767, 12.178348, 22.895060>,  <17.091106, 12.392586, 23.133427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.851767, 12.178348, 22.895060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428624, -0.414409, 0.802837,
		-0.676949, 0.735800, 0.018392,
		-0.598349, -0.535596, -0.595915,
		16.672262, 12.017669, 22.716286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.340673, 12.534651, 23.284012>,  <17.091106, 12.392586, 23.133427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.340673, 12.534651, 23.284012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.342405, 12.177772, 23.103363>,  <16.343445, 11.963644, 22.994974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.342405, 12.177772, 23.103363>,  <16.340673, 12.534651, 23.284012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.342405, 12.177772, 23.103363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594005, -0.365609, 0.716581,
		-0.804450, 0.265162, -0.531554,
		0.004331, -0.892199, -0.451621,
		16.343704, 11.910111, 22.967876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.669359, 12.335444, 23.256538>,  <16.340673, 12.534651, 23.284012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.669359, 12.335444, 23.256538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.850102, 11.981826, 23.208729>,  <15.958549, 11.769654, 23.180042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.850102, 11.981826, 23.208729>,  <15.669359, 12.335444, 23.256538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.850102, 11.981826, 23.208729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660193, -0.421493, 0.621682,
		-0.599975, -0.202002, -0.774096,
		0.451858, -0.884047, -0.119525,
		15.985660, 11.716612, 23.172871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.120558, 11.882116, 23.083031>,  <15.669359, 12.335444, 23.256538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.120558, 11.882116, 23.083031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425957, 11.663907, 23.221292>,  <15.609196, 11.532982, 23.304249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425957, 11.663907, 23.221292>,  <15.120558, 11.882116, 23.083031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.425957, 11.663907, 23.221292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599046, -0.398265, 0.694643,
		-0.241281, -0.737422, -0.630867,
		0.763497, -0.545522, 0.345656,
		15.655005, 11.500250, 23.324989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.947072, 11.062854, 23.005493>,  <15.120558, 11.882116, 23.083031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.947072, 11.062854, 23.005493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.219316, 11.121189, 23.292688>,  <15.382662, 11.156190, 23.465006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.219316, 11.121189, 23.292688>,  <14.947072, 11.062854, 23.005493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.219316, 11.121189, 23.292688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656497, -0.313649, 0.686029,
		0.325245, -0.938273, -0.117730,
		0.680608, 0.145838, 0.717986,
		15.423498, 11.164941, 23.508083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.923962, 10.337584, 23.380207>,  <14.947072, 11.062854, 23.005493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.923962, 10.337584, 23.380207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.074613, 10.611215, 23.630068>,  <15.165003, 10.775393, 23.779985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.074613, 10.611215, 23.630068>,  <14.923962, 10.337584, 23.380207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.074613, 10.611215, 23.630068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514029, -0.406645, 0.755257,
		0.770666, -0.605540, 0.198482,
		0.376626, 0.684077, 0.624653,
		15.187600, 10.816438, 23.817463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.742907, 10.046762, 23.873426>,  <14.923962, 10.337584, 23.380207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.742907, 10.046762, 23.873426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.899429, 10.380263, 24.029240>,  <14.993342, 10.580364, 24.122728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.899429, 10.380263, 24.029240>,  <14.742907, 10.046762, 23.873426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.899429, 10.380263, 24.029240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396335, -0.229334, 0.889002,
		0.830541, -0.502258, 0.240705,
		0.391306, 0.833752, 0.389534,
		15.016821, 10.630389, 24.146099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.853528, 9.866275, 24.566963>,  <14.742907, 10.046762, 23.873426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.853528, 9.866275, 24.566963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.803349, 10.262970, 24.556240>,  <14.773241, 10.500987, 24.549807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.803349, 10.262970, 24.556240>,  <14.853528, 9.866275, 24.566963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.803349, 10.262970, 24.556240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384764, -0.023730, 0.922710,
		0.914450, 0.126068, 0.384562,
		-0.125450, 0.991738, -0.026806,
		14.765714, 10.560492, 24.548199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.134042, 10.141380, 25.213112>,  <14.853528, 9.866275, 24.566963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.134042, 10.141380, 25.213112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.877609, 10.432009, 25.114229>,  <14.723750, 10.606385, 25.054899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.877609, 10.432009, 25.114229>,  <15.134042, 10.141380, 25.213112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.877609, 10.432009, 25.114229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491861, -0.141702, 0.859066,
		0.589142, 0.672322, 0.448214,
		-0.641081, 0.726570, -0.247206,
		14.685285, 10.649980, 25.040068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.970082, 10.471432, 25.821650>,  <15.134042, 10.141380, 25.213112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.970082, 10.471432, 25.821650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.675304, 10.591438, 25.579359>,  <14.498438, 10.663442, 25.433985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.675304, 10.591438, 25.579359>,  <14.970082, 10.471432, 25.821650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.675304, 10.591438, 25.579359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662258, -0.141000, 0.735889,
		0.135371, 0.943456, 0.302597,
		-0.736946, 0.300016, -0.605724,
		14.454221, 10.681443, 25.397642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.695457, 10.913341, 26.239975>,  <14.970082, 10.471432, 25.821650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.695457, 10.913341, 26.239975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.433658, 10.843889, 25.945633>,  <14.276578, 10.802218, 25.769028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.433658, 10.843889, 25.945633>,  <14.695457, 10.913341, 26.239975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.433658, 10.843889, 25.945633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719189, -0.157272, 0.676781,
		-0.233239, 0.972172, -0.021938,
		-0.654498, -0.173629, -0.735857,
		14.237309, 10.791800, 25.724876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.242906, 11.459517, 26.338474>,  <14.695457, 10.913341, 26.239975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.242906, 11.459517, 26.338474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.062148, 11.160293, 26.144073>,  <13.953693, 10.980759, 26.027433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.062148, 11.160293, 26.144073>,  <14.242906, 11.459517, 26.338474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.062148, 11.160293, 26.144073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594591, -0.153564, 0.789227,
		-0.665021, 0.645620, -0.375394,
		-0.451894, -0.748059, -0.486003,
		13.926579, 10.935875, 25.998272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.507844, 11.543092, 26.511686>,  <14.242906, 11.459517, 26.338474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.507844, 11.543092, 26.511686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.527529, 11.166202, 26.379150>,  <13.539340, 10.940067, 26.299629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.527529, 11.166202, 26.379150>,  <13.507844, 11.543092, 26.511686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.527529, 11.166202, 26.379150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675915, -0.275656, 0.683485,
		-0.735334, 0.190323, -0.650431,
		0.049212, -0.942227, -0.331342,
		13.542293, 10.883533, 26.279747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.804175, 11.305358, 26.532501>,  <13.507844, 11.543092, 26.511686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.804175, 11.305358, 26.532501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.027406, 10.973565, 26.523472>,  <13.161345, 10.774489, 26.518055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.027406, 10.973565, 26.523472>,  <12.804175, 11.305358, 26.532501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.027406, 10.973565, 26.523472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492268, -0.352851, 0.795719,
		-0.667999, -0.432961, -0.605246,
		0.558076, -0.829482, -0.022571,
		13.194829, 10.724720, 26.516701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.449349, 10.629663, 26.481474>,  <12.804175, 11.305358, 26.532501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.449349, 10.629663, 26.481474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798615, 10.497190, 26.624531>,  <13.008173, 10.417707, 26.710365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798615, 10.497190, 26.624531>,  <12.449349, 10.629663, 26.481474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.798615, 10.497190, 26.624531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462728, -0.332581, 0.821750,
		-0.153199, -0.883013, -0.443642,
		0.873162, -0.331177, 0.357644,
		13.060563, 10.397837, 26.731823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.305178, 9.975403, 26.904552>,  <12.449349, 10.629663, 26.481474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.305178, 9.975403, 26.904552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.665245, 10.111234, 27.013647>,  <12.881286, 10.192732, 27.079103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.665245, 10.111234, 27.013647>,  <12.305178, 9.975403, 26.904552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.665245, 10.111234, 27.013647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135905, -0.375940, 0.916624,
		0.413797, -0.862181, -0.292258,
		0.900168, 0.339577, 0.272738,
		12.935295, 10.213107, 27.095469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.670031, 9.428946, 27.264732>,  <12.305178, 9.975403, 26.904552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.670031, 9.428946, 27.264732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.832766, 9.759029, 27.421455>,  <12.930407, 9.957080, 27.515490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.832766, 9.759029, 27.421455>,  <12.670031, 9.428946, 27.264732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.832766, 9.759029, 27.421455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166463, -0.354754, 0.920022,
		0.898206, -0.439519, -0.006960,
		0.406836, 0.825211, 0.391805,
		12.954817, 10.006593, 27.538998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.073477, 9.139874, 27.786882>,  <12.670031, 9.428946, 27.264732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.073477, 9.139874, 27.786882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.063997, 9.528512, 27.881063>,  <13.058310, 9.761695, 27.937572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.063997, 9.528512, 27.881063>,  <13.073477, 9.139874, 27.786882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.063997, 9.528512, 27.881063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220885, -0.234788, 0.946618,
		0.975012, -0.029575, 0.220175,
		-0.023699, 0.971597, 0.235453,
		13.056888, 9.819991, 27.951700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.584099, 9.332772, 28.221296>,  <13.073477, 9.139874, 27.786882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.584099, 9.332772, 28.221296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.278663, 9.587687, 28.262854>,  <13.095401, 9.740637, 28.287788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.278663, 9.587687, 28.262854>,  <13.584099, 9.332772, 28.221296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.278663, 9.587687, 28.262854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033097, -0.199317, 0.979376,
		0.644851, 0.744404, 0.173289,
		-0.763591, 0.637287, 0.103892,
		13.049585, 9.778873, 28.294022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.710966, 9.515381, 28.923660>,  <13.584099, 9.332772, 28.221296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.710966, 9.515381, 28.923660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.348879, 9.666882, 28.846586>,  <13.131626, 9.757782, 28.800343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.348879, 9.666882, 28.846586>,  <13.710966, 9.515381, 28.923660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.348879, 9.666882, 28.846586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238624, -0.077868, 0.967985,
		0.351622, 0.922217, 0.160867,
		-0.905218, 0.378751, -0.192683,
		13.077313, 9.780507, 28.788782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.559268, 10.039259, 29.435577>,  <13.710966, 9.515381, 28.923660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.559268, 10.039259, 29.435577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.207614, 9.933567, 29.276930>,  <12.996622, 9.870152, 29.181742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.207614, 9.933567, 29.276930>,  <13.559268, 10.039259, 29.435577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.207614, 9.933567, 29.276930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419298, 0.033278, 0.907238,
		-0.226520, 0.963886, -0.140047,
		-0.879134, -0.264229, -0.396617,
		12.943873, 9.854299, 29.157944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.046980, 10.504454, 29.820469>,  <13.559268, 10.039259, 29.435577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.046980, 10.504454, 29.820469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.853564, 10.189126, 29.668287>,  <12.737514, 9.999929, 29.576979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.853564, 10.189126, 29.668287>,  <13.046980, 10.504454, 29.820469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.853564, 10.189126, 29.668287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531213, -0.081172, 0.843341,
		-0.695703, 0.609890, -0.379515,
		-0.483539, -0.788318, -0.380453,
		12.708503, 9.952631, 29.554152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.337051, 10.475420, 29.872368>,  <13.046980, 10.504454, 29.820469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.337051, 10.475420, 29.872368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.994739, 10.631985, 30.007681>,  <11.789351, 10.725924, 30.088869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.994739, 10.631985, 30.007681>,  <12.337051, 10.475420, 29.872368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.994739, 10.631985, 30.007681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171641, 0.831672, -0.528072,
		-0.488035, -0.393851, -0.778912,
		-0.855781, 0.391411, 0.338284,
		11.738005, 10.749408, 30.109165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.886268, 10.593884, 29.271315>,  <12.337051, 10.475420, 29.872368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.886268, 10.593884, 29.271315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.848305, 10.844459, 29.580784>,  <11.825527, 10.994803, 29.766464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.848305, 10.844459, 29.580784>,  <11.886268, 10.593884, 29.271315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.848305, 10.844459, 29.580784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162296, 0.776519, -0.608833,
		-0.982167, 0.067781, -0.175366,
		-0.094907, 0.626438, 0.773672,
		11.819833, 11.032390, 29.812885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.379720, 11.134966, 28.981382>,  <11.886268, 10.593884, 29.271315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.379720, 11.134966, 28.981382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.606056, 11.274418, 29.280254>,  <11.741858, 11.358089, 29.459578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.606056, 11.274418, 29.280254>,  <11.379720, 11.134966, 28.981382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.606056, 11.274418, 29.280254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335126, 0.730731, -0.594746,
		-0.753336, 0.586932, 0.296643,
		0.565841, 0.348630, 0.747182,
		11.775808, 11.379007, 29.504410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.228985, 11.831169, 29.015438>,  <11.379720, 11.134966, 28.981382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.228985, 11.831169, 29.015438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.563505, 11.815067, 29.234154>,  <11.764217, 11.805407, 29.365383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.563505, 11.815067, 29.234154>,  <11.228985, 11.831169, 29.015438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.563505, 11.815067, 29.234154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389789, 0.745005, -0.541325,
		-0.385570, 0.665844, 0.638739,
		0.836301, -0.040255, 0.546790,
		11.814396, 11.802991, 29.398191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.345859, 12.470890, 29.218756>,  <11.228985, 11.831169, 29.015438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.345859, 12.470890, 29.218756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703877, 12.292959, 29.231512>,  <11.918689, 12.186200, 29.239166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703877, 12.292959, 29.231512>,  <11.345859, 12.470890, 29.218756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.703877, 12.292959, 29.231512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333762, 0.620704, -0.709457,
		0.295791, 0.645643, 0.704026,
		0.895048, -0.444828, 0.031893,
		11.972392, 12.159511, 29.241079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.797596, 13.051162, 29.291393>,  <11.345859, 12.470890, 29.218756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.797596, 13.051162, 29.291393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.056347, 12.765621, 29.184088>,  <12.211597, 12.594297, 29.119703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.056347, 12.765621, 29.184088>,  <11.797596, 13.051162, 29.291393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.056347, 12.765621, 29.184088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494354, 0.660392, -0.565240,
		0.580656, 0.233024, 0.780089,
		0.646879, -0.713850, -0.268265,
		12.250410, 12.551466, 29.103609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.452084, 13.320421, 29.386076>,  <11.797596, 13.051162, 29.291393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.452084, 13.320421, 29.386076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.480066, 13.024022, 29.118935>,  <12.496856, 12.846183, 28.958651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.480066, 13.024022, 29.118935>,  <12.452084, 13.320421, 29.386076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.480066, 13.024022, 29.118935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595288, 0.568231, -0.568108,
		0.800461, -0.357821, 0.480859,
		0.069958, -0.740998, -0.667853,
		12.501054, 12.801723, 28.918579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.054562, 13.467388, 29.247995>,  <12.452084, 13.320421, 29.386076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.054562, 13.467388, 29.247995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.947934, 13.220708, 28.951719>,  <12.883958, 13.072700, 28.773954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.947934, 13.220708, 28.951719>,  <13.054562, 13.467388, 29.247995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.947934, 13.220708, 28.951719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629022, 0.470950, -0.618496,
		0.730255, -0.630782, 0.262379,
		-0.266569, -0.616702, -0.740689,
		12.867964, 13.035697, 28.729513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.731786, 13.189925, 28.851019>,  <13.054562, 13.467388, 29.247995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.731786, 13.189925, 28.851019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.417861, 13.178051, 28.603411>,  <13.229506, 13.170926, 28.454845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.417861, 13.178051, 28.603411>,  <13.731786, 13.189925, 28.851019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.417861, 13.178051, 28.603411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537526, 0.464519, -0.703767,
		0.308440, -0.885066, -0.348603,
		-0.784813, -0.029686, -0.619022,
		13.182417, 13.169146, 28.417704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.028632, 13.121716, 28.238834>,  <13.731786, 13.189925, 28.851019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.028632, 13.121716, 28.238834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.662127, 13.241920, 28.132889>,  <13.442223, 13.314043, 28.069323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.662127, 13.241920, 28.132889>,  <14.028632, 13.121716, 28.238834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.662127, 13.241920, 28.132889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372521, 0.396161, -0.839217,
		-0.147266, -0.867611, -0.474935,
		-0.916265, 0.300511, -0.264863,
		13.387247, 13.332073, 28.053431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.956917, 12.860163, 27.587673>,  <14.028632, 13.121716, 28.238834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.956917, 12.860163, 27.587673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.704203, 13.165429, 27.641966>,  <13.552574, 13.348589, 27.674541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.704203, 13.165429, 27.641966>,  <13.956917, 12.860163, 27.587673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.704203, 13.165429, 27.641966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230643, 0.352258, -0.907038,
		-0.740034, -0.541748, -0.398571,
		-0.631786, 0.763166, 0.135733,
		13.514667, 13.394379, 27.682686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.667538, 12.947562, 26.901661>,  <13.956917, 12.860163, 27.587673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.667538, 12.947562, 26.901661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607120, 13.294783, 27.090837>,  <13.570868, 13.503115, 27.204344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607120, 13.294783, 27.090837>,  <13.667538, 12.947562, 26.901661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.607120, 13.294783, 27.090837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301442, 0.496089, -0.814265,
		-0.941445, 0.019574, -0.336599,
		-0.151044, 0.868051, 0.472941,
		13.561807, 13.555198, 27.232719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.209502, 13.399448, 26.546450>,  <13.667538, 12.947562, 26.901661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.209502, 13.399448, 26.546450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.419061, 13.653957, 26.772968>,  <13.544796, 13.806663, 26.908878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.419061, 13.653957, 26.772968>,  <13.209502, 13.399448, 26.546450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.419061, 13.653957, 26.772968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336174, 0.456413, -0.823817,
		-0.782636, 0.621969, 0.025215,
		0.523897, 0.636272, 0.566295,
		13.576230, 13.844839, 26.942858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.078165, 14.190455, 26.268068>,  <13.209502, 13.399448, 26.546450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.078165, 14.190455, 26.268068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.427915, 14.092048, 26.435375>,  <13.637764, 14.033003, 26.535759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.427915, 14.092048, 26.435375>,  <13.078165, 14.190455, 26.268068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.427915, 14.092048, 26.435375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481519, 0.333162, -0.810643,
		0.060083, 0.910208, 0.409771,
		0.874373, -0.246018, 0.418265,
		13.690227, 14.018242, 26.560854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.623400, 14.780670, 26.164541>,  <13.078165, 14.190455, 26.268068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.623400, 14.780670, 26.164541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.813085, 14.433655, 26.224541>,  <13.926896, 14.225446, 26.260540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.813085, 14.433655, 26.224541>,  <13.623400, 14.780670, 26.164541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.813085, 14.433655, 26.224541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608545, 0.199865, -0.767937,
		0.636235, 0.455447, 0.622714,
		0.474213, -0.867538, 0.149998,
		13.955349, 14.173393, 26.269541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.161525, 14.982199, 25.810541>,  <13.623400, 14.780670, 26.164541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.161525, 14.982199, 25.810541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.239267, 14.596776, 25.884062>,  <14.285913, 14.365522, 25.928175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.239267, 14.596776, 25.884062>,  <14.161525, 14.982199, 25.810541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.239267, 14.596776, 25.884062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711391, 0.009444, -0.702733,
		0.675387, 0.267337, 0.687301,
		0.194358, -0.963557, 0.183803,
		14.297575, 14.307709, 25.939203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.945409, 14.992085, 25.806486>,  <14.161525, 14.982199, 25.810541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.945409, 14.992085, 25.806486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.774814, 14.647285, 25.696894>,  <14.672457, 14.440405, 25.631138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.774814, 14.647285, 25.696894>,  <14.945409, 14.992085, 25.806486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.774814, 14.647285, 25.696894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723769, -0.143572, -0.674941,
		0.542463, -0.486153, 0.685120,
		-0.426488, -0.861999, -0.273980,
		14.646867, 14.388685, 25.614700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.497108, 14.469498, 25.774105>,  <14.945409, 14.992085, 25.806486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.497108, 14.469498, 25.774105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191170, 14.331878, 25.556246>,  <15.007607, 14.249306, 25.425529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191170, 14.331878, 25.556246>,  <15.497108, 14.469498, 25.774105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.191170, 14.331878, 25.556246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619891, -0.162927, -0.767587,
		0.175350, -0.924707, 0.337887,
		-0.764845, -0.344050, -0.544648,
		14.961717, 14.228662, 25.392851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.740557, 13.883042, 25.424168>,  <15.497108, 14.469498, 25.774105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.740557, 13.883042, 25.424168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.424542, 14.000162, 25.208719>,  <15.234934, 14.070434, 25.079451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.424542, 14.000162, 25.208719>,  <15.740557, 13.883042, 25.424168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.424542, 14.000162, 25.208719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534864, -0.100167, -0.838980,
		-0.299606, -0.950912, -0.077473,
		-0.790036, 0.292801, -0.538620,
		15.187531, 14.088002, 25.047132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.766530, 13.526330, 24.861509>,  <15.740557, 13.883042, 25.424168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.766530, 13.526330, 24.861509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.516768, 13.815676, 24.743618>,  <15.366912, 13.989283, 24.672882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.516768, 13.815676, 24.743618>,  <15.766530, 13.526330, 24.861509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.516768, 13.815676, 24.743618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378550, -0.049813, -0.924240,
		-0.683243, -0.688668, -0.242726,
		-0.624403, 0.723364, -0.294730,
		15.329448, 14.032685, 24.655199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.588621, 13.374977, 24.207821>,  <15.766530, 13.526330, 24.861509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.588621, 13.374977, 24.207821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.480972, 13.760217, 24.206221>,  <15.416383, 13.991361, 24.205261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.480972, 13.760217, 24.206221>,  <15.588621, 13.374977, 24.207821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.480972, 13.760217, 24.206221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371471, 0.099967, -0.923047,
		-0.888585, -0.249897, -0.384667,
		-0.269121, 0.963098, -0.004000,
		15.400236, 14.049146, 24.205021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.334566, 13.474829, 23.557568>,  <15.588621, 13.374977, 24.207821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.334566, 13.474829, 23.557568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.434101, 13.835059, 23.700140>,  <15.493822, 14.051198, 23.785683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.434101, 13.835059, 23.700140>,  <15.334566, 13.474829, 23.557568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.434101, 13.835059, 23.700140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404826, 0.237609, -0.882982,
		-0.879884, 0.364011, -0.305451,
		0.248837, 0.900577, 0.356430,
		15.508752, 14.105232, 23.807070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.089613, 13.895880, 23.032438>,  <15.334566, 13.474829, 23.557568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.089613, 13.895880, 23.032438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.348701, 14.114785, 23.244463>,  <15.504153, 14.246128, 23.371677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.348701, 14.114785, 23.244463>,  <15.089613, 13.895880, 23.032438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.348701, 14.114785, 23.244463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489190, 0.234634, -0.840024,
		-0.584084, 0.803399, -0.115738,
		0.647718, 0.547263, 0.530061,
		15.543016, 14.278964, 23.403481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.163107, 14.543100, 22.719791>,  <15.089613, 13.895880, 23.032438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.163107, 14.543100, 22.719791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.495799, 14.521297, 22.940790>,  <15.695415, 14.508216, 23.073389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.495799, 14.521297, 22.940790>,  <15.163107, 14.543100, 22.719791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.495799, 14.521297, 22.940790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545937, 0.261143, -0.796089,
		-0.100889, 0.963760, 0.246957,
		0.831730, -0.054507, 0.552498,
		15.745318, 14.504946, 23.106539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.492715, 15.145898, 22.592886>,  <15.163107, 14.543100, 22.719791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.492715, 15.145898, 22.592886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.784472, 14.904735, 22.722185>,  <15.959526, 14.760036, 22.799765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.784472, 14.904735, 22.722185>,  <15.492715, 15.145898, 22.592886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.784472, 14.904735, 22.722185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587036, 0.309013, -0.748264,
		0.351248, 0.735536, 0.579320,
		0.729393, -0.602908, 0.323246,
		16.003290, 14.723862, 22.819159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.988354, 15.582618, 22.346186>,  <15.492715, 15.145898, 22.592886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.988354, 15.582618, 22.346186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.143726, 15.238851, 22.479166>,  <16.236950, 15.032591, 22.558954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.143726, 15.238851, 22.479166>,  <15.988354, 15.582618, 22.346186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143726, 15.238851, 22.479166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758317, 0.093155, -0.645195,
		0.523522, 0.502717, 0.687895,
		0.388432, -0.859417, 0.332451,
		16.260256, 14.981026, 22.578901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.745768, 15.729595, 22.613104>,  <15.988354, 15.582618, 22.346186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.745768, 15.729595, 22.613104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.692747, 15.351136, 22.494961>,  <16.660934, 15.124061, 22.424074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.692747, 15.351136, 22.494961>,  <16.745768, 15.729595, 22.613104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.692747, 15.351136, 22.494961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749411, 0.099361, -0.654607,
		0.648701, -0.308114, 0.695882,
		-0.132550, -0.946147, -0.295359,
		16.652983, 15.067292, 22.406353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.302704, 15.475141, 22.659472>,  <16.745768, 15.729595, 22.613104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.302704, 15.475141, 22.659472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.123919, 15.238070, 22.391453>,  <17.016647, 15.095829, 22.230642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.123919, 15.238070, 22.391453>,  <17.302704, 15.475141, 22.659472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.123919, 15.238070, 22.391453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747929, 0.163318, -0.643374,
		0.490742, -0.788710, 0.370281,
		-0.446962, -0.592675, -0.670046,
		16.989830, 15.060268, 22.190439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.766870, 14.992227, 22.457228>,  <17.302704, 15.475141, 22.659472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.766870, 14.992227, 22.457228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.513432, 14.968145, 22.148701>,  <17.361368, 14.953696, 21.963585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.513432, 14.968145, 22.148701>,  <17.766870, 14.992227, 22.457228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.513432, 14.968145, 22.148701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770117, 0.046252, -0.636223,
		0.073982, -0.997114, 0.017063,
		-0.633597, -0.060209, -0.771316,
		17.323353, 14.950084, 21.917305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.162733, 14.554299, 21.974697>,  <17.766870, 14.992227, 22.457228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.162733, 14.554299, 21.974697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.869757, 14.736996, 21.772738>,  <17.693972, 14.846614, 21.651562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.869757, 14.736996, 21.772738>,  <18.162733, 14.554299, 21.974697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.869757, 14.736996, 21.772738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609285, 0.108796, -0.785452,
		-0.303818, -0.882921, -0.357973,
		-0.732439, 0.456742, -0.504896,
		17.650024, 14.874018, 21.621269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.459627, 14.468599, 21.331312>,  <18.162733, 14.554299, 21.974697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.459627, 14.468599, 21.331312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.163723, 14.736848, 21.309319>,  <17.986181, 14.897797, 21.296122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.163723, 14.736848, 21.309319>,  <18.459627, 14.468599, 21.331312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.163723, 14.736848, 21.309319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379151, 0.347936, -0.857430,
		-0.555879, -0.655139, -0.511655,
		-0.739759, 0.670622, -0.054986,
		17.941795, 14.938034, 21.292822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223564, 14.373254, 20.647663>,  <18.459627, 14.468599, 21.331312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.223564, 14.373254, 20.647663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.121855, 14.738688, 20.774601>,  <18.060829, 14.957948, 20.850763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.121855, 14.738688, 20.774601>,  <18.223564, 14.373254, 20.647663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.121855, 14.738688, 20.774601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191397, 0.369176, -0.909437,
		-0.948005, -0.170505, -0.268728,
		-0.254271, 0.913585, 0.317347,
		18.045574, 15.012763, 20.869804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.677975, 14.720661, 20.172861>,  <18.223564, 14.373254, 20.647663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.677975, 14.720661, 20.172861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.884979, 15.005246, 20.363020>,  <18.009182, 15.175997, 20.477116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.884979, 15.005246, 20.363020>,  <17.677975, 14.720661, 20.172861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.884979, 15.005246, 20.363020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174182, 0.456358, -0.872581,
		-0.837760, 0.534378, 0.112247,
		0.517513, 0.711462, 0.475397,
		18.040234, 15.218685, 20.505640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.570366, 15.419762, 19.860195>,  <17.677975, 14.720661, 20.172861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.570366, 15.419762, 19.860195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.900270, 15.508424, 20.068285>,  <18.098213, 15.561621, 20.193140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.900270, 15.508424, 20.068285>,  <17.570366, 15.419762, 19.860195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.900270, 15.508424, 20.068285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333084, 0.553016, -0.763694,
		-0.456970, 0.803146, 0.382277,
		0.824763, 0.221655, 0.520226,
		18.147699, 15.574921, 20.224354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.644526, 16.052074, 19.568010>,  <17.570366, 15.419762, 19.860195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.644526, 16.052074, 19.568010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.988516, 15.992498, 19.763258>,  <18.194910, 15.956753, 19.880405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.988516, 15.992498, 19.763258>,  <17.644526, 16.052074, 19.568010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.988516, 15.992498, 19.763258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480354, 0.559238, -0.675657,
		-0.172342, 0.815518, 0.552475,
		0.859976, -0.148940, 0.488117,
		18.246510, 15.947817, 19.909693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.013878, 16.699335, 19.680016>,  <17.644526, 16.052074, 19.568010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.013878, 16.699335, 19.680016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.306982, 16.427469, 19.693407>,  <18.482843, 16.264349, 19.701443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.306982, 16.427469, 19.693407>,  <18.013878, 16.699335, 19.680016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.306982, 16.427469, 19.693407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538828, 0.549467, -0.638553,
		0.415606, 0.485946, 0.768849,
		0.732759, -0.679664, 0.033480,
		18.526810, 16.223570, 19.703451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.590847, 17.090038, 19.724604>,  <18.013878, 16.699335, 19.680016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.590847, 17.090038, 19.724604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.728733, 16.740351, 19.587835>,  <18.811464, 16.530539, 19.505774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.728733, 16.740351, 19.587835>,  <18.590847, 17.090038, 19.724604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.728733, 16.740351, 19.587835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576603, 0.484628, -0.657773,
		0.740743, 0.029592, 0.671136,
		0.344716, -0.874220, -0.341922,
		18.832148, 16.478085, 19.485258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.321218, 17.082535, 19.721354>,  <18.590847, 17.090038, 19.724604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.321218, 17.082535, 19.721354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.226534, 16.795641, 19.459194>,  <19.169724, 16.623505, 19.301899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.226534, 16.795641, 19.459194>,  <19.321218, 17.082535, 19.721354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.226534, 16.795641, 19.459194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461744, 0.510472, -0.725405,
		0.854845, -0.474337, 0.210344,
		-0.236711, -0.717234, -0.655396,
		19.155521, 16.580471, 19.262575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.955410, 16.844683, 19.294443>,  <19.321218, 17.082535, 19.721354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.955410, 16.844683, 19.294443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.618509, 16.748243, 19.101576>,  <19.416368, 16.690380, 18.985855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.618509, 16.748243, 19.101576>,  <19.955410, 16.844683, 19.294443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.618509, 16.748243, 19.101576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426554, 0.248870, -0.869549,
		0.329641, -0.938049, -0.106771,
		-0.842252, -0.241095, -0.482167,
		19.365833, 16.675915, 18.956926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.205055, 16.551216, 18.762987>,  <19.955410, 16.844683, 19.294443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.205055, 16.551216, 18.762987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.830410, 16.630138, 18.647173>,  <19.605623, 16.677492, 18.577684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.830410, 16.630138, 18.647173>,  <20.205055, 16.551216, 18.762987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.830410, 16.630138, 18.647173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350370, 0.527371, -0.774029,
		-0.000027, -0.826408, -0.563071,
		-0.936611, 0.197304, -0.289534,
		19.549427, 16.689329, 18.560312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.120777, 16.466427, 18.049911>,  <20.205055, 16.551216, 18.762987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.120777, 16.466427, 18.049911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.814980, 16.718859, 18.102509>,  <19.631500, 16.870317, 18.134066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.814980, 16.718859, 18.102509>,  <20.120777, 16.466427, 18.049911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.814980, 16.718859, 18.102509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270064, 0.498762, -0.823591,
		-0.585333, -0.594119, -0.551732,
		-0.764494, 0.631078, 0.131491,
		19.585632, 16.908182, 18.141956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.771954, 16.681313, 17.414307>,  <20.120777, 16.466427, 18.049911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.771954, 16.681313, 17.414307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.720198, 16.987713, 17.666180>,  <19.689144, 17.171553, 17.817303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.720198, 16.987713, 17.666180>,  <19.771954, 16.681313, 17.414307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.720198, 16.987713, 17.666180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399381, 0.621494, -0.673974,
		-0.907609, 0.164278, -0.386341,
		-0.129389, 0.766002, 0.629682,
		19.681381, 17.217514, 17.855083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.920776, 17.085554, 16.923985>,  <19.771954, 16.681313, 17.414307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.920776, 17.085554, 16.923985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.905153, 17.312649, 17.252897>,  <19.895781, 17.448906, 17.450245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.905153, 17.312649, 17.252897>,  <19.920776, 17.085554, 16.923985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.905153, 17.312649, 17.252897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418620, 0.756512, -0.502441,
		-0.907321, 0.324601, -0.267213,
		-0.039057, 0.567736, 0.822284,
		19.893436, 17.482969, 17.499582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.081070, 17.706316, 16.667784>,  <19.920776, 17.085554, 16.923985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.081070, 17.706316, 16.667784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.098249, 17.835604, 17.045923>,  <20.108557, 17.913176, 17.272806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.098249, 17.835604, 17.045923>,  <20.081070, 17.706316, 16.667784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.098249, 17.835604, 17.045923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644740, 0.713851, -0.273362,
		-0.763194, 0.621245, -0.177733,
		0.042950, 0.323220, 0.945349,
		20.111135, 17.932570, 17.329529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.907867, 18.441408, 16.771700>,  <20.081070, 17.706316, 16.667784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.907867, 18.441408, 16.771700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.127535, 18.333412, 17.088058>,  <20.259335, 18.268616, 17.277874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.127535, 18.333412, 17.088058>,  <19.907867, 18.441408, 16.771700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.127535, 18.333412, 17.088058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573614, 0.810023, -0.121777,
		-0.607767, 0.520547, 0.599708,
		0.549168, -0.269989, 0.790898,
		20.292286, 18.252415, 17.325329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.964224, 19.014574, 17.365660>,  <19.907867, 18.441408, 16.771700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.964224, 19.014574, 17.365660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.283247, 18.780001, 17.309088>,  <20.474661, 18.639257, 17.275145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.283247, 18.780001, 17.309088>,  <19.964224, 19.014574, 17.365660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.283247, 18.780001, 17.309088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565513, 0.808446, -0.163123,
		0.209998, 0.050120, 0.976416,
		0.797556, -0.586432, -0.141429,
		20.522514, 18.604071, 17.266659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.587366, 19.084951, 17.833376>,  <19.964224, 19.014574, 17.365660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.587366, 19.084951, 17.833376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.696388, 18.986809, 17.461245>,  <20.761801, 18.927923, 17.237965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.696388, 18.986809, 17.461245>,  <20.587366, 19.084951, 17.833376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.696388, 18.986809, 17.461245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397592, 0.909239, -0.123311,
		0.876147, -0.336283, 0.345369,
		0.272555, -0.245355, -0.930330,
		20.778154, 18.913202, 17.182146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.276651, 19.333342, 17.807550>,  <20.587366, 19.084951, 17.833376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.276651, 19.333342, 17.807550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.131779, 19.294476, 17.436739>,  <21.044855, 19.271156, 17.214252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.131779, 19.294476, 17.436739>,  <21.276651, 19.333342, 17.807550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.131779, 19.294476, 17.436739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231668, 0.953960, -0.190499,
		0.902860, -0.283758, -0.322995,
		-0.362180, -0.097167, -0.927030,
		21.023125, 19.265326, 17.158630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.701677, 19.656439, 17.295437>,  <21.276651, 19.333342, 17.807550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.701677, 19.656439, 17.295437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.379721, 19.603662, 17.064009>,  <21.186546, 19.571997, 16.925152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.379721, 19.603662, 17.064009>,  <21.701677, 19.656439, 17.295437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.379721, 19.603662, 17.064009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221245, 0.837956, -0.498879,
		0.550639, -0.529549, -0.645271,
		-0.804890, -0.131939, -0.578571,
		21.138254, 19.564081, 16.890438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.888105, 19.681604, 16.608019>,  <21.701677, 19.656439, 17.295437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.888105, 19.681604, 16.608019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.499588, 19.772335, 16.579357>,  <21.266478, 19.826773, 16.562160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.499588, 19.772335, 16.579357>,  <21.888105, 19.681604, 16.608019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.499588, 19.772335, 16.579357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218428, 0.731171, -0.646280,
		-0.094200, -0.643380, -0.759729,
		-0.971296, 0.226826, -0.071656,
		21.208199, 19.840384, 16.557859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.763830, 19.803864, 15.902159>,  <21.888105, 19.681604, 16.608019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.763830, 19.803864, 15.902159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.429626, 19.974751, 16.040380>,  <21.229105, 20.077282, 16.123314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.429626, 19.974751, 16.040380>,  <21.763830, 19.803864, 15.902159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.429626, 19.974751, 16.040380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083150, 0.719942, -0.689035,
		-0.543147, -0.546963, -0.637042,
		-0.835510, 0.427218, 0.345554,
		21.178974, 20.102917, 16.144047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.515039, 20.105408, 15.261724>,  <21.763830, 19.803864, 15.902159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.515039, 20.105408, 15.261724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.286806, 20.263868, 15.549475>,  <21.149866, 20.358944, 15.722125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.286806, 20.263868, 15.549475>,  <21.515039, 20.105408, 15.261724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.286806, 20.263868, 15.549475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126111, 0.823307, -0.553409,
		-0.811500, -0.406487, -0.419806,
		-0.570583, 0.396149, 0.719375,
		21.115631, 20.382713, 15.765287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.862391, 20.277954, 15.018810>,  <21.515039, 20.105408, 15.261724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.862391, 20.277954, 15.018810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.941988, 20.517864, 15.328822>,  <20.989746, 20.661810, 15.514830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.941988, 20.517864, 15.328822>,  <20.862391, 20.277954, 15.018810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.941988, 20.517864, 15.328822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183302, 0.799669, -0.571778,
		-0.962705, -0.028284, 0.269069,
		0.198994, 0.599775, 0.775030,
		21.001686, 20.697796, 15.561331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.340929, 20.777527, 15.042415>,  <20.862391, 20.277954, 15.018810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.340929, 20.777527, 15.042415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.629263, 20.962305, 15.249105>,  <20.802263, 21.073172, 15.373120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.629263, 20.962305, 15.249105>,  <20.340929, 20.777527, 15.042415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.629263, 20.962305, 15.249105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100192, 0.807139, -0.581798,
		-0.685829, 0.367607, 0.628095,
		0.720833, 0.461944, 0.516728,
		20.845512, 21.100889, 15.404124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.091791, 21.540562, 15.049457>,  <20.340929, 20.777527, 15.042415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.091791, 21.540562, 15.049457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479803, 21.516220, 15.143552>,  <20.712610, 21.501616, 15.200009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479803, 21.516220, 15.143552>,  <20.091791, 21.540562, 15.049457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.479803, 21.516220, 15.143552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191798, 0.786150, -0.587521,
		-0.149179, 0.615032, 0.774262,
		0.970031, -0.060856, 0.235239,
		20.770813, 21.497963, 15.214124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.307514, 22.193748, 15.313122>,  <20.091791, 21.540562, 15.049457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.307514, 22.193748, 15.313122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.647701, 22.010330, 15.210019>,  <20.851814, 21.900280, 15.148157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.647701, 22.010330, 15.210019>,  <20.307514, 22.193748, 15.313122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.647701, 22.010330, 15.210019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179478, 0.713557, -0.677218,
		0.494460, 0.529691, 0.689156,
		0.850468, -0.458546, -0.257758,
		20.902842, 21.872766, 15.132691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.761522, 22.698362, 15.377848>,  <20.307514, 22.193748, 15.313122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.761522, 22.698362, 15.377848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.899128, 22.423122, 15.122293>,  <20.981691, 22.257978, 14.968961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.899128, 22.423122, 15.122293>,  <20.761522, 22.698362, 15.377848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.899128, 22.423122, 15.122293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244911, 0.722618, -0.646407,
		0.906462, 0.065903, 0.417113,
		0.344014, -0.688099, -0.638885,
		21.002333, 22.216692, 14.930628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.405905, 23.032951, 15.122106>,  <20.761522, 22.698362, 15.377848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.405905, 23.032951, 15.122106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.324884, 22.734592, 14.868300>,  <21.276272, 22.555576, 14.716017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.324884, 22.734592, 14.868300>,  <21.405905, 23.032951, 15.122106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.324884, 22.734592, 14.868300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317330, 0.562988, -0.763116,
		0.926431, -0.355921, 0.122662,
		-0.202552, -0.745899, -0.634513,
		21.264118, 22.510822, 14.677946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.932795, 23.098465, 14.521216>,  <21.405905, 23.032951, 15.122106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.932795, 23.098465, 14.521216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.664371, 22.838667, 14.378200>,  <21.503317, 22.682789, 14.292389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.664371, 22.838667, 14.378200>,  <21.932795, 23.098465, 14.521216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.664371, 22.838667, 14.378200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217429, 0.288644, -0.932421,
		0.708806, -0.703449, -0.052477,
		-0.671058, -0.649496, -0.357543,
		21.463055, 22.643818, 14.270937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.232924, 22.913774, 13.908495>,  <21.932795, 23.098465, 14.521216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.232924, 22.913774, 13.908495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.840693, 22.841845, 13.877163>,  <21.605354, 22.798687, 13.858364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.840693, 22.841845, 13.877163>,  <22.232924, 22.913774, 13.908495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.840693, 22.841845, 13.877163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005302, 0.423506, -0.905878,
		0.196070, -0.887866, -0.416233,
		-0.980576, -0.179822, -0.078329,
		21.546520, 22.787897, 13.853664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.202501, 22.680012, 13.296641>,  <22.232924, 22.913774, 13.908495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.202501, 22.680012, 13.296641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.833635, 22.789522, 13.405933>,  <21.612316, 22.855228, 13.471509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.833635, 22.789522, 13.405933>,  <22.202501, 22.680012, 13.296641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.833635, 22.789522, 13.405933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054971, 0.606463, -0.793209,
		-0.382867, -0.746490, -0.544210,
		-0.922166, 0.273777, 0.273230,
		21.556986, 22.871655, 13.487903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.828718, 22.600931, 12.746466>,  <22.202501, 22.680012, 13.296641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.828718, 22.600931, 12.746466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.635216, 22.856726, 12.985476>,  <21.519115, 23.010202, 13.128881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.635216, 22.856726, 12.985476>,  <21.828718, 22.600931, 12.746466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.635216, 22.856726, 12.985476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095321, 0.640168, -0.762298,
		-0.869998, -0.425722, -0.248727,
		-0.483754, 0.639489, 0.597525,
		21.490089, 23.048573, 13.164733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.188288, 22.718914, 12.350350>,  <21.828718, 22.600931, 12.746466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.188288, 22.718914, 12.350350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.210896, 23.028736, 12.602341>,  <21.224461, 23.214630, 12.753535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.210896, 23.028736, 12.602341>,  <21.188288, 22.718914, 12.350350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.210896, 23.028736, 12.602341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198420, 0.627113, -0.753232,
		-0.978486, -0.082428, 0.189131,
		0.056519, 0.774555, 0.629976,
		21.227852, 23.261103, 12.791333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.587467, 23.022762, 12.375452>,  <21.188288, 22.718914, 12.350350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.587467, 23.022762, 12.375452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.814213, 23.308979, 12.538751>,  <20.950260, 23.480709, 12.636730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.814213, 23.308979, 12.538751>,  <20.587467, 23.022762, 12.375452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.814213, 23.308979, 12.538751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285323, 0.635416, -0.717522,
		-0.772822, 0.290256, 0.564355,
		0.566865, 0.715541, 0.408247,
		20.984272, 23.523642, 12.661224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.165676, 23.676342, 12.382446>,  <20.587467, 23.022762, 12.375452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.165676, 23.676342, 12.382446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.542749, 23.805645, 12.415560>,  <20.768993, 23.883226, 12.435428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.542749, 23.805645, 12.415560>,  <20.165676, 23.676342, 12.382446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.542749, 23.805645, 12.415560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182420, 0.706963, -0.683320,
		-0.279413, 0.629053, 0.725411,
		0.942683, 0.323258, 0.082783,
		20.825554, 23.902622, 12.440394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.086782, 24.340820, 12.302641>,  <20.165676, 23.676342, 12.382446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.086782, 24.340820, 12.302641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.474531, 24.275627, 12.229153>,  <20.707180, 24.236511, 12.185060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.474531, 24.275627, 12.229153>,  <20.086782, 24.340820, 12.302641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.474531, 24.275627, 12.229153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019829, 0.693678, -0.720012,
		0.244793, 0.701602, 0.669201,
		0.969372, -0.162985, -0.183720,
		20.765343, 24.226732, 12.174037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.306555, 24.963640, 12.255378>,  <20.086782, 24.340820, 12.302641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.306555, 24.963640, 12.255378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.582754, 24.744823, 12.066083>,  <20.748474, 24.613533, 11.952506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.582754, 24.744823, 12.066083>,  <20.306555, 24.963640, 12.255378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.582754, 24.744823, 12.066083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141067, 0.743527, -0.653657,
		0.709444, 0.384592, 0.590575,
		0.690499, -0.547044, -0.473237,
		20.789904, 24.580709, 11.924111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.089565, 25.313519, 12.153228>,  <20.306555, 24.963640, 12.255378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.089565, 25.313519, 12.153228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.024183, 25.066488, 11.845491>,  <20.984955, 24.918270, 11.660850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.024183, 25.066488, 11.845491>,  <21.089565, 25.313519, 12.153228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.024183, 25.066488, 11.845491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390401, 0.675681, -0.625335,
		0.906019, -0.402564, 0.130660,
		-0.163453, -0.617575, -0.769341,
		20.975147, 24.881216, 11.614689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.702036, 25.459772, 11.867234>,  <21.089565, 25.313519, 12.153228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.702036, 25.459772, 11.867234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.479906, 25.259817, 11.601383>,  <21.346628, 25.139845, 11.441873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.479906, 25.259817, 11.601383>,  <21.702036, 25.459772, 11.867234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.479906, 25.259817, 11.601383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591535, 0.324314, -0.738179,
		0.584554, -0.803077, 0.115602,
		-0.555323, -0.499888, -0.664627,
		21.313309, 25.109852, 11.401995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.201187, 25.099327, 11.478249>,  <21.702036, 25.459772, 11.867234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.201187, 25.099327, 11.478249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.854662, 25.132378, 11.281199>,  <21.646748, 25.152208, 11.162971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.854662, 25.132378, 11.281199>,  <22.201187, 25.099327, 11.478249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.854662, 25.132378, 11.281199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468158, 0.478176, -0.743085,
		0.174160, -0.874368, -0.452932,
		-0.866312, 0.082628, -0.492622,
		21.594769, 25.157166, 11.133412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.401516, 25.023848, 10.807605>,  <22.201187, 25.099327, 11.478249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.401516, 25.023848, 10.807605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.040150, 25.182486, 10.742431>,  <21.823330, 25.277668, 10.703326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.040150, 25.182486, 10.742431>,  <22.401516, 25.023848, 10.807605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.040150, 25.182486, 10.742431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313539, 0.351873, -0.881974,
		-0.292455, -0.847878, -0.442237,
		-0.903417, 0.396596, -0.162936,
		21.769125, 25.301464, 10.693550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.340206, 24.855307, 10.153254>,  <22.401516, 25.023848, 10.807605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.340206, 24.855307, 10.153254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.067804, 25.137499, 10.231768>,  <21.904364, 25.306814, 10.278876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.067804, 25.137499, 10.231768>,  <22.340206, 24.855307, 10.153254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.067804, 25.137499, 10.231768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258265, 0.482216, -0.837118,
		-0.685223, -0.519389, -0.510593,
		-0.681006, 0.705480, 0.196285,
		21.863503, 25.349142, 10.290653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.064785, 24.718693, 10.478605>,  <22.340206, 24.855307, 10.153254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.064785, 24.718693, 10.478605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.180817, 24.644129, 10.103136>,  <23.250435, 24.599390, 9.877854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.180817, 24.644129, 10.103136>,  <23.064785, 24.718693, 10.478605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.180817, 24.644129, 10.103136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122624, -0.980000, 0.156724,
		-0.949115, 0.069642, -0.307134,
		0.290077, -0.186411, -0.938673,
		23.267839, 24.588205, 9.821534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.663063, 24.092525, 10.255160>,  <23.064785, 24.718693, 10.478605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.663063, 24.092525, 10.255160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.968172, 24.137951, 10.000513>,  <23.151237, 24.165207, 9.847725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.968172, 24.137951, 10.000513>,  <22.663063, 24.092525, 10.255160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.968172, 24.137951, 10.000513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209851, -0.974651, 0.077572,
		-0.611672, -0.192765, -0.767267,
		0.762771, 0.113563, -0.636619,
		23.197004, 24.172020, 9.809527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.664631, 23.383009, 10.151537>,  <22.663063, 24.092525, 10.255160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.664631, 23.383009, 10.151537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.006865, 23.557323, 10.039774>,  <23.212204, 23.661911, 9.972716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.006865, 23.557323, 10.039774>,  <22.664631, 23.383009, 10.151537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.006865, 23.557323, 10.039774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472922, -0.877508, 0.079526,
		-0.210525, -0.200179, -0.956874,
		0.855584, 0.435785, -0.279407,
		23.263540, 23.688059, 9.955952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.902630, 22.972790, 9.576749>,  <22.664631, 23.383009, 10.151537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.902630, 22.972790, 9.576749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.170053, 23.167528, 9.801607>,  <23.330507, 23.284372, 9.936522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.170053, 23.167528, 9.801607>,  <22.902630, 22.972790, 9.576749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.170053, 23.167528, 9.801607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386386, -0.873285, 0.296782,
		0.635400, 0.018788, -0.771955,
		0.668560, 0.486848, 0.562145,
		23.370621, 23.313583, 9.970250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.616133, 22.465714, 9.756384>,  <22.902630, 22.972790, 9.576749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.616133, 22.465714, 9.756384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.646828, 22.785156, 9.995160>,  <23.665245, 22.976822, 10.138426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.646828, 22.785156, 9.995160>,  <23.616133, 22.465714, 9.756384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.646828, 22.785156, 9.995160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500044, -0.548792, 0.669913,
		0.862593, 0.247089, -0.441452,
		0.076737, 0.798608, 0.596940,
		23.669849, 23.024738, 10.174242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.319866, 22.376211, 9.940383>,  <23.616133, 22.465714, 9.756384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.319866, 22.376211, 9.940383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.136572, 22.633177, 10.186090>,  <24.026596, 22.787355, 10.333515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.136572, 22.633177, 10.186090>,  <24.319866, 22.376211, 9.940383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.136572, 22.633177, 10.186090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493527, -0.390874, 0.776948,
		0.739224, 0.659183, -0.137936,
		-0.458235, 0.642414, 0.614268,
		23.999102, 22.825901, 10.370371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.881895, 22.725464, 10.371573>,  <24.319866, 22.376211, 9.940383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.881895, 22.725464, 10.371573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511747, 22.658991, 10.507852>,  <24.289660, 22.619106, 10.589619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511747, 22.658991, 10.507852>,  <24.881895, 22.725464, 10.371573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.511747, 22.658991, 10.507852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349099, -0.723857, 0.595115,
		0.147718, 0.669638, 0.727849,
		-0.925370, -0.166182, 0.340696,
		24.234137, 22.609137, 10.610061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862675, 22.308989, 11.074468>,  <24.881895, 22.725464, 10.371573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862675, 22.308989, 11.074468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533600, 22.202801, 10.873385>,  <24.336155, 22.139088, 10.752736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533600, 22.202801, 10.873385>,  <24.862675, 22.308989, 11.074468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.533600, 22.202801, 10.873385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003179, -0.886409, 0.462892,
		-0.568485, 0.379217, 0.730081,
		-0.822687, -0.265468, -0.502705,
		24.286795, 22.123159, 10.722574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.461763, 22.172279, 11.584818>,  <24.862675, 22.308989, 11.074468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.461763, 22.172279, 11.584818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267252, 21.995718, 11.283170>,  <24.150545, 21.889782, 11.102180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267252, 21.995718, 11.283170>,  <24.461763, 22.172279, 11.584818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.267252, 21.995718, 11.283170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288580, -0.733483, 0.615405,
		-0.824776, 0.516882, 0.229297,
		-0.486278, -0.441401, -0.754121,
		24.121368, 21.863298, 11.056933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.798920, 22.043434, 11.816123>,  <24.461763, 22.172279, 11.584818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.798920, 22.043434, 11.816123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.832001, 21.780315, 11.516667>,  <23.851851, 21.622444, 11.336994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.832001, 21.780315, 11.516667>,  <23.798920, 22.043434, 11.816123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.832001, 21.780315, 11.516667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335505, -0.725741, 0.600613,
		-0.938401, 0.201500, -0.280716,
		0.082704, -0.657798, -0.748640,
		23.856812, 21.582975, 11.292075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.229727, 21.707611, 11.928930>,  <23.798920, 22.043434, 11.816123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.229727, 21.707611, 11.928930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.457642, 21.468555, 11.703304>,  <23.594391, 21.325123, 11.567928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.457642, 21.468555, 11.703304>,  <23.229727, 21.707611, 11.928930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.457642, 21.468555, 11.703304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302547, -0.790729, 0.532177,
		-0.764072, -0.132573, -0.631363,
		0.569789, -0.597639, -0.564064,
		23.628578, 21.289265, 11.534085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.834774, 21.111242, 11.809664>,  <23.229727, 21.707611, 11.928930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.834774, 21.111242, 11.809664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.202221, 20.984135, 11.715719>,  <23.422689, 20.907869, 11.659352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.202221, 20.984135, 11.715719>,  <22.834774, 21.111242, 11.809664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.202221, 20.984135, 11.715719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212649, -0.898523, 0.383976,
		-0.333045, -0.302785, -0.892974,
		0.918619, -0.317771, -0.234861,
		23.477806, 20.888803, 11.645261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.766052, 20.431255, 11.635591>,  <22.834774, 21.111242, 11.809664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.766052, 20.431255, 11.635591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.146475, 20.487410, 11.745709>,  <23.374727, 20.521101, 11.811781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.146475, 20.487410, 11.745709>,  <22.766052, 20.431255, 11.635591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.146475, 20.487410, 11.745709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070112, -0.769602, 0.634663,
		0.300966, -0.622901, -0.722090,
		0.951054, 0.140384, 0.275297,
		23.431791, 20.529524, 11.828299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.062830, 19.748257, 11.678834>,  <22.766052, 20.431255, 11.635591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.062830, 19.748257, 11.678834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.326456, 19.961195, 11.891341>,  <23.484631, 20.088957, 12.018846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.326456, 19.961195, 11.891341>,  <23.062830, 19.748257, 11.678834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.326456, 19.961195, 11.891341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009519, -0.700431, 0.713657,
		0.752028, -0.475402, -0.456561,
		0.659063, 0.532344, 0.531268,
		23.524176, 20.120897, 12.050722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.607637, 19.265444, 11.858379>,  <23.062830, 19.748257, 11.678834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.607637, 19.265444, 11.858379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.636084, 19.577305, 12.107244>,  <23.653152, 19.764421, 12.256562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.636084, 19.577305, 12.107244>,  <23.607637, 19.265444, 11.858379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.636084, 19.577305, 12.107244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282403, -0.582481, 0.762211,
		0.956656, -0.229906, 0.178752,
		0.071117, 0.779654, 0.622160,
		23.657419, 19.811201, 12.293892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.158930, 19.103899, 12.340621>,  <23.607637, 19.265444, 11.858379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.158930, 19.103899, 12.340621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.897310, 19.364697, 12.494047>,  <23.740339, 19.521175, 12.586103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.897310, 19.364697, 12.494047>,  <24.158930, 19.103899, 12.340621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.897310, 19.364697, 12.494047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165514, -0.618119, 0.768462,
		0.738123, 0.439126, 0.512194,
		-0.654048, 0.651996, 0.383566,
		23.701096, 19.560295, 12.609118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.254917, 19.143742, 13.175447>,  <24.158930, 19.103899, 12.340621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.254917, 19.143742, 13.175447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.901102, 19.313250, 13.097462>,  <23.688812, 19.414953, 13.050671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.901102, 19.313250, 13.097462>,  <24.254917, 19.143742, 13.175447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.901102, 19.313250, 13.097462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389675, -0.441548, 0.808201,
		0.256405, 0.790858, 0.555698,
		-0.884539, 0.423769, -0.194962,
		23.635740, 19.440380, 13.038973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.114557, 19.526796, 13.752970>,  <24.254917, 19.143742, 13.175447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.114557, 19.526796, 13.752970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.768574, 19.453297, 13.566173>,  <23.560984, 19.409197, 13.454095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.768574, 19.453297, 13.566173>,  <24.114557, 19.526796, 13.752970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.768574, 19.453297, 13.566173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328743, -0.495633, 0.803913,
		-0.379173, 0.848873, 0.368297,
		-0.864960, -0.183747, -0.466992,
		23.509087, 19.398172, 13.426075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.588390, 19.687889, 14.263743>,  <24.114557, 19.526796, 13.752970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.588390, 19.687889, 14.263743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.453022, 19.423157, 13.996176>,  <23.371801, 19.264317, 13.835635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.453022, 19.423157, 13.996176>,  <23.588390, 19.687889, 14.263743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.453022, 19.423157, 13.996176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537377, -0.447620, 0.714746,
		-0.772462, 0.601346, -0.204170,
		-0.338419, -0.661831, -0.668919,
		23.351496, 19.224607, 13.795500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.854338, 19.655956, 14.439169>,  <23.588390, 19.687889, 14.263743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.854338, 19.655956, 14.439169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.918510, 19.333124, 14.211877>,  <22.957014, 19.139425, 14.075501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.918510, 19.333124, 14.211877>,  <22.854338, 19.655956, 14.439169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.918510, 19.333124, 14.211877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461246, -0.570266, 0.679742,
		-0.872648, 0.153042, -0.463750,
		0.160432, -0.807078, -0.568231,
		22.966640, 19.091002, 14.041408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.201323, 19.334835, 14.401254>,  <22.854338, 19.655956, 14.439169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.201323, 19.334835, 14.401254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.479036, 19.064186, 14.303152>,  <22.645664, 18.901796, 14.244291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.479036, 19.064186, 14.303152>,  <22.201323, 19.334835, 14.401254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.479036, 19.064186, 14.303152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502696, -0.699787, 0.507537,
		-0.515036, -0.229088, -0.825988,
		0.694287, -0.676621, -0.245254,
		22.687323, 18.861200, 14.229576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.825012, 18.630270, 14.285077>,  <22.201323, 19.334835, 14.401254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.825012, 18.630270, 14.285077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.208433, 18.576086, 14.385342>,  <22.438486, 18.543575, 14.445500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.208433, 18.576086, 14.385342>,  <21.825012, 18.630270, 14.285077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.208433, 18.576086, 14.385342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275756, -0.662412, 0.696541,
		0.071689, -0.736791, -0.672309,
		0.958551, -0.135459, 0.250663,
		22.495998, 18.535448, 14.460541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.753946, 18.141394, 14.723293>,  <21.825012, 18.630270, 14.285077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.753946, 18.141394, 14.723293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.144485, 18.174284, 14.803280>,  <22.378809, 18.194017, 14.851272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.144485, 18.174284, 14.803280>,  <21.753946, 18.141394, 14.723293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.144485, 18.174284, 14.803280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081192, -0.717742, 0.691560,
		0.200388, -0.691438, -0.694088,
		0.976346, 0.082226, 0.199966,
		22.437389, 18.198952, 14.863270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.885668, 17.461275, 14.777540>,  <21.753946, 18.141394, 14.723293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.885668, 17.461275, 14.777540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.167912, 17.680927, 14.956681>,  <22.337257, 17.812719, 15.064166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.167912, 17.680927, 14.956681>,  <21.885668, 17.461275, 14.777540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.167912, 17.680927, 14.956681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090523, -0.696699, 0.711629,
		0.702797, -0.461590, -0.541305,
		0.705607, 0.549132, 0.447854,
		22.379593, 17.845667, 15.091038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.461418, 16.988518, 14.928178>,  <21.885668, 17.461275, 14.777540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.461418, 16.988518, 14.928178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.517614, 17.294411, 15.179716>,  <22.551332, 17.477947, 15.330639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.517614, 17.294411, 15.179716>,  <22.461418, 16.988518, 14.928178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.517614, 17.294411, 15.179716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069707, -0.625929, 0.776759,
		0.987625, -0.152961, -0.034629,
		0.140490, 0.764733, 0.628845,
		22.559761, 17.523830, 15.368370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.049944, 16.805428, 15.477620>,  <22.461418, 16.988518, 14.928178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.049944, 16.805428, 15.477620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.825338, 17.095922, 15.636252>,  <22.690575, 17.270220, 15.731432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.825338, 17.095922, 15.636252>,  <23.049944, 16.805428, 15.477620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.825338, 17.095922, 15.636252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099421, -0.535012, 0.838974,
		0.821471, 0.431669, 0.372622,
		-0.561516, 0.726240, 0.396580,
		22.656883, 17.313795, 15.755226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.902937, 16.587969, 15.421550>,  <23.049944, 16.805428, 15.477620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.902937, 16.587969, 15.421550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.252464, 16.648684, 15.606330>,  <24.462181, 16.685112, 15.717198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.252464, 16.648684, 15.606330>,  <23.902937, 16.587969, 15.421550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.252464, 16.648684, 15.606330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452170, -0.603047, -0.657173,
		0.178829, 0.783132, -0.595588,
		0.873821, 0.151785, 0.461951,
		24.514610, 16.694220, 15.744915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.530909, 16.943266, 15.048772>,  <23.902937, 16.587969, 15.421550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.530909, 16.943266, 15.048772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.655388, 16.655165, 15.296768>,  <24.730076, 16.482304, 15.445566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.655388, 16.655165, 15.296768>,  <24.530909, 16.943266, 15.048772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.655388, 16.655165, 15.296768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485655, -0.440237, -0.755203,
		0.816881, 0.536120, 0.212794,
		0.311199, -0.720255, 0.619990,
		24.748747, 16.439089, 15.482765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.244036, 16.764101, 15.065373>,  <24.530909, 16.943266, 15.048772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.244036, 16.764101, 15.065373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025454, 16.430759, 15.098622>,  <24.894304, 16.230755, 15.118571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025454, 16.430759, 15.098622>,  <25.244036, 16.764101, 15.065373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.025454, 16.430759, 15.098622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474289, -0.389743, -0.789398,
		0.690244, -0.391946, 0.608228,
		-0.546454, -0.833354, 0.083122,
		24.861517, 16.180754, 15.123559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738857, 16.166899, 15.139314>,  <25.244036, 16.764101, 15.065373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738857, 16.166899, 15.139314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380817, 16.074343, 14.986864>,  <25.165993, 16.018808, 14.895394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380817, 16.074343, 14.986864>,  <25.738857, 16.166899, 15.139314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380817, 16.074343, 14.986864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442658, -0.358829, -0.821764,
		0.053391, -0.904268, 0.423614,
		-0.895100, -0.231391, -0.381123,
		25.112288, 16.004925, 14.872527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831469, 15.540662, 14.853781>,  <25.738857, 16.166899, 15.139314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831469, 15.540662, 14.853781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482355, 15.664207, 14.702599>,  <25.272886, 15.738335, 14.611890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482355, 15.664207, 14.702599>,  <25.831469, 15.540662, 14.853781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482355, 15.664207, 14.702599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231476, -0.419808, -0.877599,
		-0.429749, -0.853435, 0.294898,
		-0.872774, 0.308886, -0.377962,
		25.220520, 15.756866, 14.589212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446594, 15.164922, 15.323272>,  <25.831469, 15.540662, 14.853781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446594, 15.164922, 15.323272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799109, 15.084880, 15.152020>,  <27.010616, 15.036855, 15.049270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799109, 15.084880, 15.152020>,  <26.446594, 15.164922, 15.323272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799109, 15.084880, 15.152020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071719, 0.838806, -0.539686,
		0.467111, 0.506322, 0.724876,
		0.881285, -0.200106, -0.428129,
		27.063494, 15.024848, 15.023582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<10.777983, 16.292467, 24.244019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.423356, 16.140060, 24.348957>,  <10.210580, 16.048616, 24.411921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.423356, 16.140060, 24.348957>,  <10.777983, 16.292467, 24.244019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.423356, 16.140060, 24.348957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146411, -0.306850, -0.940429,
		0.438819, -0.872164, 0.216258,
		-0.886567, -0.381016, 0.262346,
		10.157386, 16.025755, 24.427660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.760974, 15.563303, 24.077364>,  <10.777983, 16.292467, 24.244019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.760974, 15.563303, 24.077364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.385974, 15.702447, 24.073637>,  <10.160974, 15.785933, 24.071402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.385974, 15.702447, 24.073637>,  <10.760974, 15.563303, 24.077364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.385974, 15.702447, 24.073637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063629, -0.197687, -0.978198,
		-0.342118, -0.916468, 0.207466,
		-0.937500, 0.347860, -0.009318,
		10.104724, 15.806805, 24.070841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.367012, 15.064062, 23.784077>,  <10.760974, 15.563303, 24.077364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.367012, 15.064062, 23.784077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.182312, 15.411365, 23.711504>,  <10.071492, 15.619746, 23.667961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.182312, 15.411365, 23.711504>,  <10.367012, 15.064062, 23.784077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.182312, 15.411365, 23.711504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027753, -0.190302, -0.981333,
		-0.886576, -0.458165, 0.063775,
		-0.461749, 0.868257, -0.181432,
		10.043787, 15.671842, 23.657074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.970837, 14.973478, 23.256937>,  <10.367012, 15.064062, 23.784077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.970837, 14.973478, 23.256937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.983106, 15.372543, 23.232506>,  <9.990467, 15.611982, 23.217848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.983106, 15.372543, 23.232506>,  <9.970837, 14.973478, 23.256937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.983106, 15.372543, 23.232506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029990, -0.060161, -0.997738,
		-0.999079, 0.032434, 0.028074,
		0.030672, 0.997662, -0.061078,
		9.992308, 15.671842, 23.214182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.504114, 15.243839, 22.727066>,  <9.970837, 14.973478, 23.256937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.504114, 15.243839, 22.727066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.773867, 15.536777, 22.764767>,  <9.935719, 15.712539, 22.787388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.773867, 15.536777, 22.764767>,  <9.504114, 15.243839, 22.727066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.773867, 15.536777, 22.764767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119628, 0.017596, -0.992663,
		-0.728628, 0.680708, -0.075742,
		0.674381, 0.732343, 0.094253,
		9.976181, 15.756479, 22.793043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.534555, 15.393509, 22.020008>,  <9.504114, 15.243839, 22.727066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.534555, 15.393509, 22.020008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.815820, 15.602973, 22.212402>,  <9.984578, 15.728651, 22.327839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.815820, 15.602973, 22.212402>,  <9.534555, 15.393509, 22.020008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.815820, 15.602973, 22.212402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477587, 0.153308, -0.865105,
		-0.526760, 0.838019, -0.142293,
		0.703160, 0.523660, 0.480984,
		10.026768, 15.760071, 22.356697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.626683, 16.025597, 21.665173>,  <9.534555, 15.393509, 22.020008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.626683, 16.025597, 21.665173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.978688, 15.944442, 21.836946>,  <10.189891, 15.895749, 21.940010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.978688, 15.944442, 21.836946>,  <9.626683, 16.025597, 21.665173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.978688, 15.944442, 21.836946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454780, 0.099256, -0.885056,
		0.136943, 0.974159, 0.179616,
		0.880012, -0.202888, 0.429435,
		10.242692, 15.883575, 21.965776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.148726, 16.509668, 21.563826>,  <9.626683, 16.025597, 21.665173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.148726, 16.509668, 21.563826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.370195, 16.181883, 21.623047>,  <10.503078, 15.985211, 21.658579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.370195, 16.181883, 21.623047>,  <10.148726, 16.509668, 21.563826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.370195, 16.181883, 21.623047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551460, 0.227600, -0.802552,
		0.623968, 0.525998, 0.577919,
		0.553676, -0.819466, 0.148052,
		10.536298, 15.936043, 21.667461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.787949, 16.685831, 21.288750>,  <10.148726, 16.509668, 21.563826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.787949, 16.685831, 21.288750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.825006, 16.288431, 21.315201>,  <10.847239, 16.049992, 21.331072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.825006, 16.288431, 21.315201>,  <10.787949, 16.685831, 21.288750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.825006, 16.288431, 21.315201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651908, 0.010321, -0.758228,
		0.752617, 0.113354, 0.648628,
		0.092643, -0.993501, 0.066128,
		10.852798, 15.990381, 21.335039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.414148, 16.578987, 21.190710>,  <10.787949, 16.685831, 21.288750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.414148, 16.578987, 21.190710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.323926, 16.194275, 21.128609>,  <11.269793, 15.963448, 21.091349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.323926, 16.194275, 21.128609>,  <11.414148, 16.578987, 21.190710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.323926, 16.194275, 21.128609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817684, -0.100258, -0.566869,
		0.529638, -0.254810, 0.809046,
		-0.225557, -0.961780, -0.155254,
		11.256259, 15.905741, 21.082033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.980455, 16.254253, 21.439692>,  <11.414148, 16.578987, 21.190710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.980455, 16.254253, 21.439692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.818490, 16.027534, 21.152697>,  <11.721311, 15.891503, 20.980499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.818490, 16.027534, 21.152697>,  <11.980455, 16.254253, 21.439692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.818490, 16.027534, 21.152697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856881, 0.038594, -0.514067,
		0.319062, -0.822953, 0.470050,
		-0.404913, -0.566797, -0.717487,
		11.697017, 15.857495, 20.937450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.441891, 15.740771, 21.324408>,  <11.980455, 16.254253, 21.439692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.441891, 15.740771, 21.324408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.226665, 15.699761, 20.989750>,  <12.097528, 15.675156, 20.788956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.226665, 15.699761, 20.989750>,  <12.441891, 15.740771, 21.324408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.226665, 15.699761, 20.989750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839220, 0.027531, -0.543095,
		0.078715, -0.994349, 0.071228,
		-0.538065, -0.102525, -0.836645,
		12.065245, 15.669003, 20.738756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.866439, 15.331540, 20.865700>,  <12.441891, 15.740771, 21.324408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.866439, 15.331540, 20.865700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.611396, 15.539770, 20.638557>,  <12.458370, 15.664708, 20.502272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.611396, 15.539770, 20.638557>,  <12.866439, 15.331540, 20.865700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.611396, 15.539770, 20.638557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713467, 0.121022, -0.690159,
		-0.290556, -0.845195, -0.448578,
		-0.637607, 0.520575, -0.567855,
		12.420114, 15.695943, 20.468201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.012212, 15.100417, 20.250290>,  <12.866439, 15.331540, 20.865700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.012212, 15.100417, 20.250290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.812609, 15.432196, 20.149881>,  <12.692847, 15.631263, 20.089636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.812609, 15.432196, 20.149881>,  <13.012212, 15.100417, 20.250290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.812609, 15.432196, 20.149881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653232, 0.169679, -0.737901,
		-0.569455, -0.532193, -0.626491,
		-0.499008, 0.829445, -0.251020,
		12.662907, 15.681029, 20.074575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.773901, 15.054343, 19.510983>,  <13.012212, 15.100417, 20.250290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.773901, 15.054343, 19.510983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.792203, 15.434190, 19.635006>,  <12.803185, 15.662098, 19.709421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.792203, 15.434190, 19.635006>,  <12.773901, 15.054343, 19.510983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.792203, 15.434190, 19.635006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648166, 0.207956, -0.732554,
		-0.760123, 0.234489, -0.605993,
		0.045756, 0.949615, 0.310060,
		12.805930, 15.719074, 19.728024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.602250, 15.441486, 18.904076>,  <12.773901, 15.054343, 19.510983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.602250, 15.441486, 18.904076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.813573, 15.667948, 19.157171>,  <12.940367, 15.803824, 19.309029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.813573, 15.667948, 19.157171>,  <12.602250, 15.441486, 18.904076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.813573, 15.667948, 19.157171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565016, 0.321833, -0.759724,
		-0.633758, 0.758876, -0.149860,
		0.528307, 0.566154, 0.632741,
		12.972065, 15.837794, 19.346994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.872034, 16.039347, 18.521374>,  <12.602250, 15.441486, 18.904076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.872034, 16.039347, 18.521374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.095510, 16.052509, 18.852863>,  <13.229596, 16.060406, 19.051756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.095510, 16.052509, 18.852863>,  <12.872034, 16.039347, 18.521374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.095510, 16.052509, 18.852863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727790, 0.459720, -0.508900,
		-0.397726, 0.887454, 0.232894,
		0.558691, 0.032905, 0.828723,
		13.263118, 16.062380, 19.101480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.991355, 16.702450, 18.600214>,  <12.872034, 16.039347, 18.521374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.991355, 16.702450, 18.600214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.266082, 16.499804, 18.808683>,  <13.430918, 16.378216, 18.933765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.266082, 16.499804, 18.808683>,  <12.991355, 16.702450, 18.600214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.266082, 16.499804, 18.808683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726574, 0.497567, -0.473832,
		-0.019269, 0.704109, 0.709831,
		0.686818, -0.506615, 0.521175,
		13.472127, 16.347818, 18.965036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.515079, 17.186371, 18.859816>,  <12.991355, 16.702450, 18.600214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.515079, 17.186371, 18.859816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.702805, 16.833248, 18.851814>,  <13.815440, 16.621374, 18.847013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.702805, 16.833248, 18.851814>,  <13.515079, 17.186371, 18.859816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.702805, 16.833248, 18.851814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742822, 0.406942, -0.531615,
		0.477452, 0.234636, 0.846750,
		0.469314, -0.882805, -0.020003,
		13.843598, 16.568407, 18.845814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.140591, 17.273199, 19.338762>,  <13.515079, 17.186371, 18.859816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.140591, 17.273199, 19.338762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.213437, 16.973175, 19.084442>,  <14.257145, 16.793161, 18.931850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.213437, 16.973175, 19.084442>,  <14.140591, 17.273199, 19.338762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.213437, 16.973175, 19.084442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554088, 0.612458, -0.563810,
		0.812293, -0.249610, 0.527138,
		0.182117, -0.750060, -0.635801,
		14.268072, 16.748158, 18.893702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.817261, 17.348934, 19.133854>,  <14.140591, 17.273199, 19.338762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.817261, 17.348934, 19.133854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.664022, 17.121958, 18.842306>,  <14.572080, 16.985771, 18.667377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.664022, 17.121958, 18.842306>,  <14.817261, 17.348934, 19.133854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.664022, 17.121958, 18.842306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582145, 0.464325, -0.667465,
		0.717179, -0.680010, 0.152451,
		-0.383096, -0.567440, -0.728869,
		14.549094, 16.951725, 18.623646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389199, 17.090517, 18.771034>,  <14.817261, 17.348934, 19.133854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389199, 17.090517, 18.771034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.077005, 17.068933, 18.521898>,  <14.889689, 17.055983, 18.372416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.077005, 17.068933, 18.521898>,  <15.389199, 17.090517, 18.771034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.077005, 17.068933, 18.521898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583386, 0.295265, -0.756623,
		0.224730, -0.953891, -0.198971,
		-0.780485, -0.053959, -0.622842,
		14.842860, 17.052746, 18.335045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.842194, 17.507017, 19.113466>,  <15.389199, 17.090517, 18.771034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.842194, 17.507017, 19.113466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.191248, 17.697844, 19.155256>,  <16.400681, 17.812340, 19.180330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.191248, 17.697844, 19.155256>,  <15.842194, 17.507017, 19.113466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.191248, 17.697844, 19.155256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032843, -0.270772, 0.962083,
		0.487265, -0.836118, -0.251953,
		0.872636, 0.477064, 0.104477,
		16.453039, 17.840963, 19.186600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217646, 17.047922, 19.504141>,  <15.842194, 17.507017, 19.113466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.217646, 17.047922, 19.504141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.425623, 17.385548, 19.556623>,  <16.550409, 17.588123, 19.588114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.425623, 17.385548, 19.556623>,  <16.217646, 17.047922, 19.504141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.425623, 17.385548, 19.556623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025572, -0.168915, 0.985299,
		0.853819, -0.508942, -0.109410,
		0.519941, 0.844065, 0.131208,
		16.581606, 17.638767, 19.595985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.789013, 16.867550, 19.877779>,  <16.217646, 17.047922, 19.504141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.789013, 16.867550, 19.877779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.713593, 17.257063, 19.928679>,  <16.668341, 17.490770, 19.959217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.713593, 17.257063, 19.928679>,  <16.789013, 16.867550, 19.877779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.713593, 17.257063, 19.928679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061899, -0.117530, 0.991138,
		0.980111, 0.194757, -0.038115,
		-0.188552, 0.973784, 0.127248,
		16.657026, 17.549198, 19.966852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.294701, 17.064152, 20.438787>,  <16.789013, 16.867550, 19.877779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.294701, 17.064152, 20.438787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.031961, 17.364763, 20.414276>,  <16.874319, 17.545130, 20.399570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.031961, 17.364763, 20.414276>,  <17.294701, 17.064152, 20.438787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.031961, 17.364763, 20.414276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001117, 0.082235, 0.996612,
		0.754024, 0.654553, -0.054855,
		-0.656846, 0.751530, -0.061276,
		16.834908, 17.590223, 20.395893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.425837, 17.344938, 21.026400>,  <17.294701, 17.064152, 20.438787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.425837, 17.344938, 21.026400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.060034, 17.478550, 20.935099>,  <16.840551, 17.558718, 20.880318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.060034, 17.478550, 20.935099>,  <17.425837, 17.344938, 21.026400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.060034, 17.478550, 20.935099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262395, -0.060287, 0.963075,
		0.307936, 0.940632, 0.142781,
		-0.914508, 0.334030, -0.228253,
		16.785681, 17.578758, 20.866623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.167786, 17.624006, 21.726501>,  <17.425837, 17.344938, 21.026400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.167786, 17.624006, 21.726501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.838167, 17.638485, 21.500357>,  <16.640396, 17.647173, 21.364670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.838167, 17.638485, 21.500357>,  <17.167786, 17.624006, 21.726501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.838167, 17.638485, 21.500357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565652, 0.002675, 0.824640,
		0.031362, 0.999341, 0.018270,
		-0.824048, 0.036197, -0.565363,
		16.590954, 17.649343, 21.330748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.821203, 18.132618, 21.997595>,  <17.167786, 17.624006, 21.726501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.821203, 18.132618, 21.997595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.581797, 17.874649, 21.807499>,  <16.438152, 17.719868, 21.693441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.581797, 17.874649, 21.807499>,  <16.821203, 18.132618, 21.997595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581797, 17.874649, 21.807499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621872, 0.000050, 0.783119,
		-0.505028, 0.764247, -0.401089,
		-0.598517, -0.644923, -0.475239,
		16.402241, 17.681171, 21.664927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155302, 18.339071, 22.083588>,  <16.821203, 18.132618, 21.997595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.155302, 18.339071, 22.083588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.123262, 17.948563, 22.003107>,  <16.104038, 17.714258, 21.954819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.123262, 17.948563, 22.003107>,  <16.155302, 18.339071, 22.083588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.123262, 17.948563, 22.003107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493042, -0.136626, 0.859211,
		-0.866311, 0.168021, -0.470398,
		-0.080097, -0.976270, -0.201202,
		16.099234, 17.655682, 21.942747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.379502, 18.199207, 22.143290>,  <16.155302, 18.339071, 22.083588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.379502, 18.199207, 22.143290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.573989, 17.852184, 22.185116>,  <15.690681, 17.643970, 22.210213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.573989, 17.852184, 22.185116>,  <15.379502, 18.199207, 22.143290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.573989, 17.852184, 22.185116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479195, -0.164648, 0.862127,
		-0.730730, -0.469287, -0.495785,
		0.486215, -0.867560, 0.104566,
		15.719853, 17.591917, 22.216486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.933585, 17.800135, 22.315390>,  <15.379502, 18.199207, 22.143290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.933585, 17.800135, 22.315390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.248102, 17.581181, 22.430010>,  <15.436812, 17.449808, 22.498783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.248102, 17.581181, 22.430010>,  <14.933585, 17.800135, 22.315390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.248102, 17.581181, 22.430010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486881, -0.263414, 0.832803,
		-0.380383, -0.794343, -0.473632,
		0.786293, -0.547386, 0.286552,
		15.483990, 17.416965, 22.515976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.680606, 17.205662, 22.475927>,  <14.933585, 17.800135, 22.315390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.680606, 17.205662, 22.475927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.029332, 17.230534, 22.670277>,  <15.238567, 17.245457, 22.786886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.029332, 17.230534, 22.670277>,  <14.680606, 17.205662, 22.475927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.029332, 17.230534, 22.670277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443308, -0.321787, 0.836619,
		0.208368, -0.944768, -0.252974,
		0.871815, 0.062179, 0.485873,
		15.290876, 17.249187, 22.816038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.810510, 16.593676, 22.818497>,  <14.680606, 17.205662, 22.475927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.810510, 16.593676, 22.818497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.020783, 16.875381, 23.009356>,  <15.146948, 17.044405, 23.123871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.020783, 16.875381, 23.009356>,  <14.810510, 16.593676, 22.818497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.020783, 16.875381, 23.009356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380646, -0.306876, 0.872316,
		0.760766, -0.640186, 0.106756,
		0.525684, 0.704265, 0.477145,
		15.178489, 17.086660, 23.152498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.950975, 16.262402, 23.402334>,  <14.810510, 16.593676, 22.818497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.950975, 16.262402, 23.402334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.985647, 16.649843, 23.495535>,  <15.006450, 16.882309, 23.551455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.985647, 16.649843, 23.495535>,  <14.950975, 16.262402, 23.402334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.985647, 16.649843, 23.495535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562443, -0.145463, 0.813940,
		0.822280, -0.201601, 0.532177,
		0.086679, 0.968606, 0.233000,
		15.011651, 16.940426, 23.565435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.821779, 16.182697, 24.081284>,  <14.950975, 16.262402, 23.402334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.821779, 16.182697, 24.081284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.808738, 16.577105, 24.015919>,  <14.800913, 16.813749, 23.976700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.808738, 16.577105, 24.015919>,  <14.821779, 16.182697, 24.081284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.808738, 16.577105, 24.015919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595136, 0.112201, 0.795754,
		0.802964, 0.123196, 0.583157,
		-0.032603, 0.986019, -0.163412,
		14.798957, 16.872910, 23.966896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.164357, 16.546621, 24.629250>,  <14.821779, 16.182697, 24.081284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.164357, 16.546621, 24.629250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.891224, 16.781103, 24.454847>,  <14.727344, 16.921793, 24.350206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.891224, 16.781103, 24.454847>,  <15.164357, 16.546621, 24.629250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.891224, 16.781103, 24.454847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548834, -0.017693, 0.835744,
		0.482203, 0.809970, 0.333810,
		-0.682834, 0.586204, -0.436007,
		14.686374, 16.956964, 24.324045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007687, 16.987946, 25.146936>,  <15.164357, 16.546621, 24.629250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.007687, 16.987946, 25.146936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.715312, 16.993732, 24.874020>,  <14.539887, 16.997206, 24.710270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.715312, 16.993732, 24.874020>,  <15.007687, 16.987946, 25.146936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.715312, 16.993732, 24.874020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677450, -0.136127, 0.722863,
		-0.082419, 0.990586, 0.109302,
		-0.730937, 0.014469, -0.682292,
		14.496031, 16.998074, 24.669333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.526430, 17.345329, 25.461985>,  <15.007687, 16.987946, 25.146936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.526430, 17.345329, 25.461985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.328634, 17.188841, 25.151520>,  <14.209957, 17.094948, 24.965240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.328634, 17.188841, 25.151520>,  <14.526430, 17.345329, 25.461985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.328634, 17.188841, 25.151520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828491, -0.057879, 0.557003,
		-0.262835, 0.918474, -0.295504,
		-0.494490, -0.391222, -0.776160,
		14.180287, 17.071474, 24.918673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.847158, 17.615223, 25.393270>,  <14.526430, 17.345329, 25.461985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.847158, 17.615223, 25.393270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.840306, 17.242489, 25.248278>,  <13.836195, 17.018848, 25.161282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.840306, 17.242489, 25.248278>,  <13.847158, 17.615223, 25.393270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.840306, 17.242489, 25.248278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848387, -0.178299, 0.498447,
		-0.529099, 0.316064, -0.787501,
		-0.017131, -0.931834, -0.362482,
		13.835167, 16.962938, 25.139534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.088814, 17.514332, 25.216740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.237215, 17.142891, 25.219767>,  <13.326256, 16.920027, 25.221582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.237215, 17.142891, 25.219767>,  <13.088814, 17.514332, 25.216740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.237215, 17.142891, 25.219767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825230, -0.325945, 0.461254,
		-0.425855, -0.177369, -0.887236,
		0.371002, -0.928601, 0.007565,
		13.348516, 16.864311, 25.222036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.527730, 17.047880, 24.905933>,  <13.088814, 17.514332, 25.216740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.527730, 17.047880, 24.905933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.771130, 16.801468, 25.106028>,  <12.917170, 16.653620, 25.226084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.771130, 16.801468, 25.106028>,  <12.527730, 17.047880, 24.905933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.771130, 16.801468, 25.106028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793381, -0.459066, 0.399755,
		-0.016621, -0.640127, -0.768089,
		0.608498, -0.616032, 0.500235,
		12.953679, 16.616659, 25.256098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.202561, 16.424625, 24.805761>,  <12.527730, 17.047880, 24.905933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.202561, 16.424625, 24.805761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.441783, 16.386246, 25.124039>,  <12.585316, 16.363218, 25.315004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.441783, 16.386246, 25.124039>,  <12.202561, 16.424625, 24.805761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.441783, 16.386246, 25.124039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778344, -0.306236, 0.548087,
		0.191081, -0.947108, -0.257828,
		0.598054, -0.095950, 0.795692,
		12.621200, 16.357460, 25.362745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.835231, 15.870106, 25.208982>,  <12.202561, 16.424625, 24.805761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.835231, 15.870106, 25.208982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.115537, 15.985298, 25.470057>,  <12.283720, 16.054413, 25.626701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.115537, 15.985298, 25.470057>,  <11.835231, 15.870106, 25.208982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.115537, 15.985298, 25.470057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361640, -0.645231, 0.672973,
		0.614936, -0.707632, -0.348009,
		0.700764, 0.287982, 0.652684,
		12.325766, 16.071693, 25.665861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.960103, 15.261922, 25.494244>,  <11.835231, 15.870106, 25.208982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.960103, 15.261922, 25.494244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.065423, 15.557473, 25.742350>,  <12.128615, 15.734804, 25.891214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.065423, 15.557473, 25.742350>,  <11.960103, 15.261922, 25.494244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.065423, 15.557473, 25.742350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373741, -0.514618, 0.771678,
		0.889377, -0.435002, 0.140650,
		0.263300, 0.738879, 0.620267,
		12.144413, 15.779137, 25.928431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.153220, 15.005946, 26.124840>,  <11.960103, 15.261922, 25.494244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.153220, 15.005946, 26.124840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.098052, 15.388802, 26.226713>,  <12.064951, 15.618515, 26.287836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.098052, 15.388802, 26.226713>,  <12.153220, 15.005946, 26.124840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.098052, 15.388802, 26.226713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224184, -0.280634, 0.933266,
		0.964738, 0.071622, 0.253281,
		-0.137921, 0.957139, 0.254682,
		12.056676, 15.675943, 26.303118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.498732, 15.042918, 26.898489>,  <12.153220, 15.005946, 26.124840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.498732, 15.042918, 26.898489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.225919, 15.330814, 26.846636>,  <12.062231, 15.503552, 26.815525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.225919, 15.330814, 26.846636>,  <12.498732, 15.042918, 26.898489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.225919, 15.330814, 26.846636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393516, -0.211776, 0.894593,
		0.616422, 0.661154, 0.427668,
		-0.682033, 0.719741, -0.129631,
		12.021309, 15.546737, 26.807747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.530360, 15.350033, 27.542028>,  <12.498732, 15.042918, 26.898489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.530360, 15.350033, 27.542028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.169385, 15.442266, 27.396460>,  <11.952800, 15.497606, 27.309118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.169385, 15.442266, 27.396460>,  <12.530360, 15.350033, 27.542028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.169385, 15.442266, 27.396460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424331, -0.329643, 0.843374,
		0.074504, 0.915514, 0.395326,
		-0.902437, 0.230584, -0.363921,
		11.898654, 15.511441, 27.287283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.212414, 15.703817, 28.065325>,  <12.530360, 15.350033, 27.542028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.212414, 15.703817, 28.065325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.907661, 15.587333, 27.833900>,  <11.724810, 15.517442, 27.695045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.907661, 15.587333, 27.833900>,  <12.212414, 15.703817, 28.065325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.907661, 15.587333, 27.833900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540570, -0.206195, 0.815639,
		-0.356820, 0.934173, -0.000324,
		-0.761881, -0.291212, -0.578561,
		11.679097, 15.499969, 27.660332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.647163, 15.997108, 28.377426>,  <12.212414, 15.703817, 28.065325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.647163, 15.997108, 28.377426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.496353, 15.691078, 28.168615>,  <11.405867, 15.507460, 28.043329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.496353, 15.691078, 28.168615>,  <11.647163, 15.997108, 28.377426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.496353, 15.691078, 28.168615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559747, -0.260832, 0.786542,
		-0.737926, 0.588749, -0.329909,
		-0.377025, -0.765076, -0.522026,
		11.383245, 15.461555, 28.012007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.815479, 16.049643, 28.428827>,  <11.647163, 15.997108, 28.377426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.815479, 16.049643, 28.428827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.944445, 15.681108, 28.341934>,  <11.021824, 15.459988, 28.289799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.944445, 15.681108, 28.341934>,  <10.815479, 16.049643, 28.428827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.944445, 15.681108, 28.341934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439800, -0.349013, 0.827506,
		-0.838228, -0.171260, -0.517730,
		0.322413, -0.921336, -0.217232,
		11.041168, 15.404708, 28.276764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.285549, 15.528453, 28.604364>,  <10.815479, 16.049643, 28.428827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.285549, 15.528453, 28.604364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.615590, 15.302557, 28.597734>,  <10.813615, 15.167020, 28.593756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.615590, 15.302557, 28.597734>,  <10.285549, 15.528453, 28.604364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.615590, 15.302557, 28.597734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331864, -0.508191, 0.794737,
		-0.457239, -0.650242, -0.606727,
		0.825105, -0.564736, -0.016573,
		10.863121, 15.133136, 28.592762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.069024, 14.973409, 28.870495>,  <10.285549, 15.528453, 28.604364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.069024, 14.973409, 28.870495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.461626, 14.911568, 28.915657>,  <10.697187, 14.874463, 28.942755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.461626, 14.911568, 28.915657>,  <10.069024, 14.973409, 28.870495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.461626, 14.911568, 28.915657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180611, -0.552270, 0.813866,
		-0.063471, -0.819205, -0.569978,
		0.981504, -0.154601, 0.112905,
		10.756078, 14.865188, 28.949528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.125818, 14.207258, 29.041864>,  <10.069024, 14.973409, 28.870495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.125818, 14.207258, 29.041864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.468058, 14.393093, 29.133175>,  <10.673401, 14.504594, 29.187962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.468058, 14.393093, 29.133175>,  <10.125818, 14.207258, 29.041864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.468058, 14.393093, 29.133175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134727, -0.625661, 0.768373,
		0.499799, -0.626664, -0.597907,
		0.855599, 0.464587, 0.228276,
		10.724737, 14.532469, 29.201658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.488271, 13.654391, 29.314529>,  <10.125818, 14.207258, 29.041864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.488271, 13.654391, 29.314529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.628973, 13.999379, 29.460085>,  <10.713394, 14.206372, 29.547419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.628973, 13.999379, 29.460085>,  <10.488271, 13.654391, 29.314529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.628973, 13.999379, 29.460085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190876, -0.314481, 0.929875,
		0.916425, -0.396545, 0.054005,
		0.351754, 0.862469, 0.363889,
		10.734499, 14.258120, 29.569252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.019482, 13.392466, 29.740488>,  <10.488271, 13.654391, 29.314529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.019482, 13.392466, 29.740488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.969360, 13.762470, 29.883961>,  <10.939287, 13.984473, 29.970043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.969360, 13.762470, 29.883961>,  <11.019482, 13.392466, 29.740488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.969360, 13.762470, 29.883961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368406, -0.379062, 0.848875,
		0.921182, -0.025772, 0.388278,
		-0.125304, 0.925013, 0.358680,
		10.931769, 14.039974, 29.991564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.141483, 13.306344, 30.488737>,  <11.019482, 13.392466, 29.740488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.141483, 13.306344, 30.488737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.976374, 13.669790, 30.463327>,  <10.877308, 13.887857, 30.448082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.976374, 13.669790, 30.463327>,  <11.141483, 13.306344, 30.488737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.976374, 13.669790, 30.463327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408625, -0.122401, 0.904458,
		0.814029, 0.399295, 0.421807,
		-0.412775, 0.908615, -0.063524,
		10.852541, 13.942375, 30.444271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.403394, 13.555583, 31.064203>,  <11.141483, 13.306344, 30.488737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.403394, 13.555583, 31.064203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.067277, 13.733523, 30.940258>,  <10.865606, 13.840287, 30.865891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.067277, 13.733523, 30.940258>,  <11.403394, 13.555583, 31.064203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.067277, 13.733523, 30.940258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481761, -0.350602, 0.803109,
		0.248624, 0.824128, 0.508920,
		-0.840293, 0.444850, -0.309865,
		10.815189, 13.866979, 30.847300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.143102, 13.877857, 31.737320>,  <11.403394, 13.555583, 31.064203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.143102, 13.877857, 31.737320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.816365, 13.870712, 31.506685>,  <10.620323, 13.866426, 31.368305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.816365, 13.870712, 31.506685>,  <11.143102, 13.877857, 31.737320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.816365, 13.870712, 31.506685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487266, -0.513642, 0.706218,
		-0.308773, 0.857819, 0.410861,
		-0.816842, -0.017862, -0.576585,
		10.571313, 13.865354, 31.333710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.577739, 14.113858, 32.137005>,  <11.143102, 13.877857, 31.737320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.577739, 14.113858, 32.137005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.433733, 13.890795, 31.837830>,  <10.347330, 13.756956, 31.658325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.433733, 13.890795, 31.837830>,  <10.577739, 14.113858, 32.137005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.433733, 13.890795, 31.837830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541492, -0.527935, 0.654271,
		-0.759722, 0.640547, -0.111904,
		-0.360014, -0.557659, -0.747935,
		10.325728, 13.723497, 31.613449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.795902, 14.142811, 32.229610>,  <10.577739, 14.113858, 32.137005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.795902, 14.142811, 32.229610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.887372, 13.811989, 32.024208>,  <9.942254, 13.613496, 31.900967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.887372, 13.811989, 32.024208>,  <9.795902, 14.142811, 32.229610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.887372, 13.811989, 32.024208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683456, -0.512021, 0.520310,
		-0.693251, 0.231977, -0.682342,
		0.228673, -0.827056, -0.513505,
		9.955975, 13.563872, 31.870157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.146611, 13.789490, 32.181793>,  <9.795902, 14.142811, 32.229610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.146611, 13.789490, 32.181793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.432862, 13.515110, 32.129105>,  <9.604613, 13.350482, 32.097492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.432862, 13.515110, 32.129105>,  <9.146611, 13.789490, 32.181793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.432862, 13.515110, 32.129105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464737, -0.608380, 0.643345,
		-0.521436, -0.399182, -0.754160,
		0.715629, -0.685950, -0.131717,
		9.647551, 13.309325, 32.089588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.848182, 13.135244, 32.047169>,  <9.146611, 13.789490, 32.181793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.848182, 13.135244, 32.047169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.221004, 13.050794, 32.164948>,  <9.444698, 13.000123, 32.235615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.221004, 13.050794, 32.164948>,  <8.848182, 13.135244, 32.047169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.221004, 13.050794, 32.164948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362245, -0.558756, 0.746036,
		0.007015, -0.802008, -0.597272,
		0.932056, -0.211126, 0.294443,
		9.500622, 12.987455, 32.253281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.231097, 12.807966, 32.137810>,  <8.848182, 13.135244, 32.047169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.231097, 12.807966, 32.137810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.048059, 12.470259, 32.026230>,  <7.938237, 12.267634, 31.959280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.048059, 12.470259, 32.026230>,  <8.231097, 12.807966, 32.137810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.048059, 12.470259, 32.026230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137103, 0.242979, -0.960294,
		0.878527, -0.477671, 0.004566,
		-0.457595, -0.844270, -0.278954,
		7.910781, 12.216978, 31.942543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.676350, 12.356272, 31.664869>,  <8.231097, 12.807966, 32.137810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.676350, 12.356272, 31.664869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.284161, 12.316941, 31.596745>,  <8.048847, 12.293343, 31.555870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.284161, 12.316941, 31.596745>,  <8.676350, 12.356272, 31.664869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.284161, 12.316941, 31.596745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145078, 0.223026, -0.963956,
		0.132766, -0.969841, -0.204406,
		-0.980472, -0.098325, -0.170313,
		7.990019, 12.287443, 31.545650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.585479, 11.963988, 31.024921>,  <8.676350, 12.356272, 31.664869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.585479, 11.963988, 31.024921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.227921, 12.143137, 31.032528>,  <8.013386, 12.250627, 31.037092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.227921, 12.143137, 31.032528>,  <8.585479, 11.963988, 31.024921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.227921, 12.143137, 31.032528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096072, 0.232836, -0.967759,
		-0.437859, -0.863249, -0.251159,
		-0.893896, 0.447872, 0.019015,
		7.959752, 12.277498, 31.038233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.192002, 11.814162, 30.422300>,  <8.585479, 11.963988, 31.024921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.192002, 11.814162, 30.422300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.010900, 12.152821, 30.534159>,  <7.902238, 12.356016, 30.601273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.010900, 12.152821, 30.534159>,  <8.192002, 11.814162, 30.422300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.010900, 12.152821, 30.534159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038403, 0.331857, -0.942548,
		-0.890806, -0.416006, -0.182765,
		-0.452757, 0.846646, 0.279644,
		7.875072, 12.406815, 30.618052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.692042, 11.913853, 30.005896>,  <8.192002, 11.814162, 30.422300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.692042, 11.913853, 30.005896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.732279, 12.293726, 30.124544>,  <7.756422, 12.521649, 30.195734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.732279, 12.293726, 30.124544>,  <7.692042, 11.913853, 30.005896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.732279, 12.293726, 30.124544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166284, 0.277893, -0.946111,
		-0.980934, 0.144494, -0.129964,
		0.100592, 0.949683, 0.296621,
		7.762457, 12.578630, 30.213531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.371858, 12.367703, 29.526947>,  <7.692042, 11.913853, 30.005896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.371858, 12.367703, 29.526947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.599752, 12.630822, 29.724007>,  <7.736489, 12.788693, 29.842243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.599752, 12.630822, 29.724007>,  <7.371858, 12.367703, 29.526947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.599752, 12.630822, 29.724007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229208, 0.448486, -0.863901,
		-0.789218, 0.605115, 0.104746,
		0.569736, 0.657797, 0.492650,
		7.770673, 12.828161, 29.871801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.216763, 12.968230, 29.171196>,  <7.371858, 12.367703, 29.526947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.216763, 12.968230, 29.171196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.552108, 13.063102, 29.367519>,  <7.753315, 13.120025, 29.485313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.552108, 13.063102, 29.367519>,  <7.216763, 12.968230, 29.171196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.552108, 13.063102, 29.367519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273578, 0.595704, -0.755176,
		-0.471489, 0.767387, 0.434529,
		0.838363, 0.237179, 0.490808,
		7.803617, 13.134255, 29.514761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.295184, 13.683187, 29.417826>,  <7.216763, 12.968230, 29.171196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.295184, 13.683187, 29.417826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.657680, 13.532883, 29.340334>,  <7.875178, 13.442699, 29.293839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.657680, 13.532883, 29.340334>,  <7.295184, 13.683187, 29.417826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.657680, 13.532883, 29.340334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144140, 0.705421, -0.693978,
		0.397432, 0.600986, 0.693443,
		0.906240, -0.375762, -0.193731,
		7.929552, 13.420154, 29.282215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.575192, 14.155736, 28.955978>,  <7.295184, 13.683187, 29.417826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.575192, 14.155736, 28.955978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.868982, 13.885556, 28.929705>,  <8.045257, 13.723449, 28.913940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.868982, 13.885556, 28.929705>,  <7.575192, 14.155736, 28.955978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.868982, 13.885556, 28.929705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440891, 0.548508, -0.710461,
		0.515909, 0.492856, 0.700665,
		0.734475, -0.675450, -0.065684,
		8.089325, 13.682921, 28.910000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.189573, 14.513819, 28.865898>,  <7.575192, 14.155736, 28.955978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.189573, 14.513819, 28.865898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.294549, 14.151333, 28.733295>,  <8.357534, 13.933841, 28.653734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.294549, 14.151333, 28.733295>,  <8.189573, 14.513819, 28.865898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.294549, 14.151333, 28.733295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578011, 0.422732, -0.697998,
		0.772676, -0.008433, 0.634745,
		0.262440, -0.906216, -0.331509,
		8.373281, 13.879468, 28.633842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.843409, 14.625886, 28.751680>,  <8.189573, 14.513819, 28.865898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.843409, 14.625886, 28.751680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.761074, 14.281550, 28.565525>,  <8.711673, 14.074949, 28.453833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.761074, 14.281550, 28.565525>,  <8.843409, 14.625886, 28.751680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.761074, 14.281550, 28.565525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464687, 0.332552, -0.820655,
		0.861218, -0.385181, 0.331569,
		-0.205837, -0.860839, -0.465389,
		8.699323, 14.023298, 28.425909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.421260, 14.370995, 28.463310>,  <8.843409, 14.625886, 28.751680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.421260, 14.370995, 28.463310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.141945, 14.219687, 28.220228>,  <8.974356, 14.128901, 28.074379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.141945, 14.219687, 28.220228>,  <9.421260, 14.370995, 28.463310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.141945, 14.219687, 28.220228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503440, 0.343992, -0.792602,
		0.508863, -0.859408, -0.049768,
		-0.698288, -0.378271, -0.607705,
		8.932459, 14.106205, 28.037916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.817690, 14.192095, 27.852398>,  <9.421260, 14.370995, 28.463310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.817690, 14.192095, 27.852398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.438931, 14.200168, 27.724037>,  <9.211677, 14.205011, 27.647020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.438931, 14.200168, 27.724037>,  <9.817690, 14.192095, 27.852398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.438931, 14.200168, 27.724037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298800, 0.423857, -0.855023,
		0.118761, -0.905504, -0.407379,
		-0.946897, 0.020181, -0.320903,
		9.154862, 14.206222, 27.627766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.759991, 13.824464, 27.146429>,  <9.817690, 14.192095, 27.852398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.759991, 13.824464, 27.146429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.458788, 14.084713, 27.185764>,  <9.278067, 14.240863, 27.209366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.458788, 14.084713, 27.185764>,  <9.759991, 13.824464, 27.146429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.458788, 14.084713, 27.185764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273087, 0.444972, -0.852891,
		-0.598670, -0.615377, -0.512744,
		-0.753006, 0.650624, 0.098340,
		9.232886, 14.279900, 27.215267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.522438, 13.881844, 26.483650>,  <9.759991, 13.824464, 27.146429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.522438, 13.881844, 26.483650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.357270, 14.209913, 26.642048>,  <9.258169, 14.406755, 26.737085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.357270, 14.209913, 26.642048>,  <9.522438, 13.881844, 26.483650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.357270, 14.209913, 26.642048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094536, 0.471038, -0.877032,
		-0.905848, -0.324708, -0.272037,
		-0.412920, 0.820175, 0.395992,
		9.233395, 14.455966, 26.760845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.054685, 14.126474, 25.915926>,  <9.522438, 13.881844, 26.483650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.054685, 14.126474, 25.915926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.104326, 14.429051, 26.172798>,  <9.134111, 14.610598, 26.326921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.104326, 14.429051, 26.172798>,  <9.054685, 14.126474, 25.915926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.104326, 14.429051, 26.172798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041155, 0.642700, -0.765011,
		-0.991415, 0.121371, 0.048631,
		0.124105, 0.756442, 0.642178,
		9.141558, 14.655984, 26.365452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.723776, 14.600195, 25.558117>,  <9.054685, 14.126474, 25.915926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.723776, 14.600195, 25.558117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.947478, 14.777866, 25.838100>,  <9.081699, 14.884469, 26.006090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.947478, 14.777866, 25.838100>,  <8.723776, 14.600195, 25.558117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.947478, 14.777866, 25.838100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099218, 0.802411, -0.588467,
		-0.823037, 0.398551, 0.404682,
		0.559255, 0.444178, 0.699957,
		9.115254, 14.911119, 26.048088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.386393, 15.219783, 25.722116>,  <8.723776, 14.600195, 25.558117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.386393, 15.219783, 25.722116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.779207, 15.247599, 25.792280>,  <9.014896, 15.264288, 25.834377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.779207, 15.247599, 25.792280>,  <8.386393, 15.219783, 25.722116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.779207, 15.247599, 25.792280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052470, 0.792304, -0.607867,
		-0.181247, 0.606151, 0.774423,
		0.982037, 0.069541, 0.175407,
		9.073818, 15.268461, 25.844902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.579366, 16.026567, 25.739290>,  <8.386393, 15.219783, 25.722116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.579366, 16.026567, 25.739290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.923074, 15.830043, 25.682344>,  <9.129299, 15.712129, 25.648176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.923074, 15.830043, 25.682344>,  <8.579366, 16.026567, 25.739290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.923074, 15.830043, 25.682344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239783, 0.632725, -0.736318,
		0.451838, 0.598560, 0.661490,
		0.859271, -0.491310, -0.142364,
		9.180855, 15.682650, 25.639635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.029202, 16.579210, 25.574425>,  <8.579366, 16.026567, 25.739290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.029202, 16.579210, 25.574425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.231886, 16.251720, 25.466398>,  <9.353497, 16.055227, 25.401583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.231886, 16.251720, 25.466398>,  <9.029202, 16.579210, 25.574425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.231886, 16.251720, 25.466398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280392, 0.452737, -0.846410,
		0.815245, 0.353160, 0.458970,
		0.506710, -0.818723, -0.270068,
		9.383899, 16.006104, 25.385378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.846671, 16.786760, 25.397202>,  <9.029202, 16.579210, 25.574425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.846671, 16.786760, 25.397202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.708609, 16.464596, 25.204462>,  <9.625772, 16.271297, 25.088818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.708609, 16.464596, 25.204462>,  <9.846671, 16.786760, 25.397202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.708609, 16.464596, 25.204462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313703, 0.384872, -0.868023,
		0.884567, -0.450761, 0.119819,
		-0.345156, -0.805412, -0.481850,
		9.605062, 16.222973, 25.059908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.126749, 25.159058, 8.747048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.237839, 25.233864, 9.123960>,  <22.304493, 25.278748, 9.350108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.237839, 25.233864, 9.123960>,  <22.126749, 25.159058, 8.747048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.237839, 25.233864, 9.123960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703656, -0.707375, -0.066999,
		0.654016, 0.681649, -0.328052,
		0.277725, 0.187017, 0.942281,
		22.321156, 25.289968, 9.406645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.538109, 25.324348, 8.245843>,  <22.126749, 25.159058, 8.747048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.538109, 25.324348, 8.245843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.694935, 25.511614, 8.562603>,  <21.789030, 25.623974, 8.752659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.694935, 25.511614, 8.562603>,  <21.538109, 25.324348, 8.245843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.694935, 25.511614, 8.562603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795996, 0.258887, -0.547145,
		-0.461166, 0.844868, -0.271155,
		0.392066, 0.468163, 0.791901,
		21.812555, 25.652063, 8.800174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.632318, 26.106863, 8.155684>,  <21.538109, 25.324348, 8.245843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.632318, 26.106863, 8.155684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.899742, 25.963705, 8.416434>,  <22.060196, 25.877810, 8.572885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.899742, 25.963705, 8.416434>,  <21.632318, 26.106863, 8.155684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.899742, 25.963705, 8.416434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738137, 0.425994, -0.523148,
		-0.090462, 0.830927, 0.548977,
		0.668559, -0.357895, 0.651874,
		22.100309, 25.856337, 8.611997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.673359, 26.645641, 8.709982>,  <21.632318, 26.106863, 8.155684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.673359, 26.645641, 8.709982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.811100, 26.842224, 9.029955>,  <21.893744, 26.960175, 9.221939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.811100, 26.842224, 9.029955>,  <21.673359, 26.645641, 8.709982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.811100, 26.842224, 9.029955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078228, -0.834060, 0.546100,
		0.935576, -0.250627, -0.248764,
		0.344351, 0.491458, 0.799932,
		21.914406, 26.989662, 9.269935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.088827, 26.142746, 9.086306>,  <21.673359, 26.645641, 8.709982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.088827, 26.142746, 9.086306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.942175, 26.418655, 9.336040>,  <21.854183, 26.584202, 9.485881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.942175, 26.418655, 9.336040>,  <22.088827, 26.142746, 9.086306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.942175, 26.418655, 9.336040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230504, -0.717487, 0.657328,
		0.901360, 0.097085, 0.422048,
		-0.366630, 0.689773, 0.624336,
		21.832186, 26.625587, 9.523341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.336519, 26.104641, 9.834352>,  <22.088827, 26.142746, 9.086306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.336519, 26.104641, 9.834352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.965048, 26.249302, 9.801457>,  <21.742165, 26.336100, 9.781721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.965048, 26.249302, 9.801457>,  <22.336519, 26.104641, 9.834352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.965048, 26.249302, 9.801457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316124, -0.655894, 0.685469,
		0.193965, 0.662577, 0.723442,
		-0.928678, 0.361654, -0.082236,
		21.686445, 26.357798, 9.776787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.973587, 26.379210, 10.483234>,  <22.336519, 26.104641, 9.834352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.973587, 26.379210, 10.483234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.733461, 26.210434, 10.211472>,  <21.589386, 26.109169, 10.048414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.733461, 26.210434, 10.211472>,  <21.973587, 26.379210, 10.483234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.733461, 26.210434, 10.211472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219322, -0.730087, 0.647202,
		-0.769105, 0.537533, 0.345741,
		-0.600313, -0.421938, -0.679406,
		21.553368, 26.083853, 10.007649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.549044, 26.110909, 10.945110>,  <21.973587, 26.379210, 10.483234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.549044, 26.110909, 10.945110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.460827, 25.921072, 10.604259>,  <21.407898, 25.807171, 10.399748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.460827, 25.921072, 10.604259>,  <21.549044, 26.110909, 10.945110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.460827, 25.921072, 10.604259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296350, -0.799737, 0.522110,
		-0.929268, 0.367674, 0.035729,
		-0.220540, -0.474592, -0.852130,
		21.394665, 25.778694, 10.348619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.751514, 25.893255, 10.934772>,  <21.549044, 26.110909, 10.945110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.751514, 25.893255, 10.934772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.989941, 25.660851, 10.713094>,  <21.132996, 25.521408, 10.580087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.989941, 25.660851, 10.713094>,  <20.751514, 25.893255, 10.934772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.989941, 25.660851, 10.713094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286094, -0.798594, 0.529526,
		-0.750235, -0.157082, -0.642240,
		0.596069, -0.581010, -0.554193,
		21.168760, 25.486547, 10.546835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.518885, 25.312399, 10.464533>,  <20.751514, 25.893255, 10.934772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.518885, 25.312399, 10.464533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.859751, 25.239414, 10.660704>,  <21.064270, 25.195623, 10.778406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.859751, 25.239414, 10.660704>,  <20.518885, 25.312399, 10.464533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859751, 25.239414, 10.660704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438685, -0.760027, 0.479494,
		0.285249, -0.623752, -0.727713,
		0.852167, -0.182462, 0.490428,
		21.115400, 25.184675, 10.807832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.670095, 24.552532, 10.416218>,  <20.518885, 25.312399, 10.464533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.670095, 24.552532, 10.416218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.861322, 24.715872, 10.727269>,  <20.976059, 24.813875, 10.913899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.861322, 24.715872, 10.727269>,  <20.670095, 24.552532, 10.416218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.861322, 24.715872, 10.727269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314664, -0.746962, 0.585692,
		0.820024, -0.524691, -0.228606,
		0.478067, 0.408347, 0.777628,
		21.004742, 24.838375, 10.960557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.038603, 23.943720, 10.760966>,  <20.670095, 24.552532, 10.416218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.038603, 23.943720, 10.760966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.013172, 24.237799, 11.030913>,  <20.997913, 24.414246, 11.192882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.013172, 24.237799, 11.030913>,  <21.038603, 23.943720, 10.760966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.013172, 24.237799, 11.030913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029714, -0.674541, 0.737639,
		0.997535, 0.066948, 0.021038,
		-0.063574, 0.735195, 0.674867,
		20.994101, 24.458357, 11.233374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.607340, 23.844528, 11.205699>,  <21.038603, 23.943720, 10.760966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.607340, 23.844528, 11.205699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.355711, 24.071325, 11.418411>,  <21.204735, 24.207403, 11.546039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.355711, 24.071325, 11.418411>,  <21.607340, 23.844528, 11.205699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.355711, 24.071325, 11.418411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081413, -0.632279, 0.770452,
		0.773073, 0.527962, 0.351587,
		-0.629070, 0.566992, 0.531781,
		21.166990, 24.241423, 11.577946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.970285, 23.958776, 11.770845>,  <21.607340, 23.844528, 11.205699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.970285, 23.958776, 11.770845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.605017, 24.053288, 11.903684>,  <21.385855, 24.109995, 11.983387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.605017, 24.053288, 11.903684>,  <21.970285, 23.958776, 11.770845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.605017, 24.053288, 11.903684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193864, -0.464933, 0.863860,
		0.358513, 0.853235, 0.378758,
		-0.913173, 0.236278, 0.332097,
		21.331064, 24.124170, 12.003313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.066488, 24.263882, 12.460976>,  <21.970285, 23.958776, 11.770845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.066488, 24.263882, 12.460976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.695759, 24.116491, 12.432069>,  <21.473322, 24.028057, 12.414724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.695759, 24.116491, 12.432069>,  <22.066488, 24.263882, 12.460976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.695759, 24.116491, 12.432069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050013, -0.311879, 0.948804,
		-0.372152, 0.875760, 0.307486,
		-0.926823, -0.368478, -0.072267,
		21.417711, 24.005947, 12.410389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.739929, 24.505600, 13.131914>,  <22.066488, 24.263882, 12.460976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.739929, 24.505600, 13.131914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.537449, 24.190548, 12.991401>,  <21.415960, 24.001516, 12.907092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.537449, 24.190548, 12.991401>,  <21.739929, 24.505600, 13.131914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.537449, 24.190548, 12.991401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063492, -0.372185, 0.925984,
		-0.860075, 0.491038, 0.138392,
		-0.506201, -0.787629, -0.351285,
		21.385588, 23.954260, 12.886015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.551767, 24.174131, 13.766558>,  <21.739929, 24.505600, 13.131914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.551767, 24.174131, 13.766558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.465893, 23.916086, 13.473234>,  <21.414368, 23.761259, 13.297240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.465893, 23.916086, 13.473234>,  <21.551767, 24.174131, 13.766558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.465893, 23.916086, 13.473234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195426, -0.707258, 0.679408,
		-0.956931, 0.289168, 0.025769,
		-0.214688, -0.645111, -0.733308,
		21.401487, 23.722553, 13.253242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.903330, 23.824373, 14.014678>,  <21.551767, 24.174131, 13.766558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.903330, 23.824373, 14.014678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.070488, 23.592989, 13.734465>,  <21.170782, 23.454159, 13.566337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.070488, 23.592989, 13.734465>,  <20.903330, 23.824373, 14.014678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.070488, 23.592989, 13.734465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232596, -0.813515, 0.533003,
		-0.878217, -0.059797, -0.474510,
		0.417893, -0.578461, -0.700534,
		21.195856, 23.419451, 13.524304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.358681, 23.293034, 13.824711>,  <20.903330, 23.824373, 14.014678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.358681, 23.293034, 13.824711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.727970, 23.175098, 13.726139>,  <20.949543, 23.104338, 13.666996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.727970, 23.175098, 13.726139>,  <20.358681, 23.293034, 13.824711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.727970, 23.175098, 13.726139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103170, -0.807949, 0.580150,
		-0.370154, -0.510184, -0.776336,
		0.923224, -0.294840, -0.246429,
		21.004938, 23.086647, 13.652210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275465, 22.631014, 13.773574>,  <20.358681, 23.293034, 13.824711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.275465, 22.631014, 13.773574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.670729, 22.673086, 13.818260>,  <20.907887, 22.698330, 13.845072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.670729, 22.673086, 13.818260>,  <20.275465, 22.631014, 13.773574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.670729, 22.673086, 13.818260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011975, -0.778723, 0.627254,
		0.152973, -0.618488, -0.770760,
		0.988158, 0.105183, 0.111717,
		20.967176, 22.704641, 13.851775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.537397, 21.966883, 13.766089>,  <20.275465, 22.631014, 13.773574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.537397, 21.966883, 13.766089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.838112, 22.176615, 13.926038>,  <21.018541, 22.302454, 14.022007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.838112, 22.176615, 13.926038>,  <20.537397, 21.966883, 13.766089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.838112, 22.176615, 13.926038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138625, -0.718529, 0.681542,
		0.644671, -0.456941, -0.612866,
		0.751786, 0.524329, 0.399871,
		21.063648, 22.333914, 14.046000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.078379, 21.439402, 13.851228>,  <20.537397, 21.966883, 13.766089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.078379, 21.439402, 13.851228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.140987, 21.756689, 14.086619>,  <21.178553, 21.947062, 14.227855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.140987, 21.756689, 14.086619>,  <21.078379, 21.439402, 13.851228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.140987, 21.756689, 14.086619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063658, -0.602687, 0.795435,
		0.985621, -0.087043, -0.144829,
		0.156524, 0.793216, 0.588479,
		21.187944, 21.994654, 14.263164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.643532, 21.339220, 14.233858>,  <21.078379, 21.439402, 13.851228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.643532, 21.339220, 14.233858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.457298, 21.623991, 14.444150>,  <21.345558, 21.794853, 14.570325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.457298, 21.623991, 14.444150>,  <21.643532, 21.339220, 14.233858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.457298, 21.623991, 14.444150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055624, -0.616408, 0.785460,
		0.883254, 0.336454, 0.326590,
		-0.465584, 0.711926, 0.525730,
		21.317623, 21.837568, 14.601869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.056742, 21.417898, 14.830944>,  <21.643532, 21.339220, 14.233858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.056742, 21.417898, 14.830944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.683205, 21.543360, 14.899712>,  <21.459082, 21.618637, 14.940972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.683205, 21.543360, 14.899712>,  <22.056742, 21.417898, 14.830944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.683205, 21.543360, 14.899712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039009, -0.567092, 0.822730,
		0.355546, 0.761596, 0.541811,
		-0.933845, 0.313654, 0.171918,
		21.403051, 21.637455, 14.951287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.116457, 21.327663, 15.492450>,  <22.056742, 21.417898, 14.830944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.116457, 21.327663, 15.492450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.728556, 21.381687, 15.411120>,  <21.495815, 21.414103, 15.362323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.728556, 21.381687, 15.411120>,  <22.116457, 21.327663, 15.492450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.728556, 21.381687, 15.411120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244071, -0.547988, 0.800086,
		-0.003358, 0.825510, 0.564377,
		-0.969751, 0.135062, -0.203323,
		21.437630, 21.422205, 15.350123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.732107, 21.679380, 16.069220>,  <22.116457, 21.327663, 15.492450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.732107, 21.679380, 16.069220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.481689, 21.447538, 15.860557>,  <21.331438, 21.308434, 15.735359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.481689, 21.447538, 15.860557>,  <21.732107, 21.679380, 16.069220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.481689, 21.447538, 15.860557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072115, -0.623072, 0.778833,
		-0.776446, 0.525203, 0.348273,
		-0.626045, -0.579606, -0.521656,
		21.293877, 21.273657, 15.704060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.274534, 21.331261, 16.593143>,  <21.732107, 21.679380, 16.069220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.274534, 21.331261, 16.593143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.161215, 21.132294, 16.265163>,  <21.093224, 21.012915, 16.068375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.161215, 21.132294, 16.265163>,  <21.274534, 21.331261, 16.593143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.161215, 21.132294, 16.265163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065384, -0.842971, 0.533972,
		-0.956800, 0.204885, 0.206290,
		-0.283299, -0.497416, -0.819950,
		21.076225, 20.983068, 16.019178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.654446, 21.067112, 16.775526>,  <21.274534, 21.331261, 16.593143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.654446, 21.067112, 16.775526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.792454, 20.853640, 16.466684>,  <20.875259, 20.725557, 16.281380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.792454, 20.853640, 16.466684>,  <20.654446, 21.067112, 16.775526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.792454, 20.853640, 16.466684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231121, -0.845596, 0.481198,
		-0.909694, 0.012426, -0.415093,
		0.345021, -0.533679, -0.772105,
		20.895960, 20.693535, 16.235052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.095592, 20.588055, 16.616705>,  <20.654446, 21.067112, 16.775526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.095592, 20.588055, 16.616705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.444803, 20.444502, 16.484627>,  <20.654329, 20.358370, 16.405380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.444803, 20.444502, 16.484627>,  <20.095592, 20.588055, 16.616705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.444803, 20.444502, 16.484627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147626, -0.839797, 0.522443,
		-0.464794, -0.407361, -0.786145,
		0.873025, -0.358884, -0.330196,
		20.706711, 20.336836, 16.385569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.950087, 19.917746, 16.343264>,  <20.095592, 20.588055, 16.616705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.950087, 19.917746, 16.343264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.345690, 19.904514, 16.400913>,  <20.583052, 19.896576, 16.435503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.345690, 19.904514, 16.400913>,  <19.950087, 19.917746, 16.343264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.345690, 19.904514, 16.400913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078645, -0.943042, 0.323244,
		0.125223, -0.331025, -0.935276,
		0.989007, -0.033078, 0.144124,
		20.642391, 19.894590, 16.444151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.111425, 19.259588, 16.096601>,  <19.950087, 19.917746, 16.343264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.111425, 19.259588, 16.096601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.409559, 19.373135, 16.337896>,  <20.588440, 19.441263, 16.482674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.409559, 19.373135, 16.337896>,  <20.111425, 19.259588, 16.096601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.409559, 19.373135, 16.337896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014742, -0.897587, 0.440591,
		0.666528, -0.337280, -0.664817,
		0.745334, 0.283866, 0.603239,
		20.633160, 19.458294, 16.518867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.744967, 18.963766, 15.794003>,  <20.111425, 19.259588, 16.096601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.744967, 18.963766, 15.794003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.776525, 19.053400, 16.182552>,  <20.795460, 19.107180, 16.415682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.776525, 19.053400, 16.182552>,  <20.744967, 18.963766, 15.794003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.776525, 19.053400, 16.182552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090094, -0.972024, 0.216917,
		0.992803, 0.070401, -0.096877,
		0.078896, 0.224084, 0.971371,
		20.800194, 19.120625, 16.473963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.244661, 18.606785, 16.030083>,  <20.744967, 18.963766, 15.794003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.244661, 18.606785, 16.030083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.056477, 18.696577, 16.371439>,  <20.943565, 18.750452, 16.576252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.056477, 18.696577, 16.371439>,  <21.244661, 18.606785, 16.030083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.056477, 18.696577, 16.371439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260959, -0.888450, 0.377568,
		0.842952, 0.400331, 0.359399,
		-0.470460, 0.224483, 0.853390,
		20.915339, 18.763922, 16.627457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.805334, 18.156313, 16.304201>,  <21.244661, 18.606785, 16.030083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.805334, 18.156313, 16.304201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.098635, 17.933117, 16.148773>,  <22.274616, 17.799198, 16.055517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.098635, 17.933117, 16.148773>,  <21.805334, 18.156313, 16.304201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.098635, 17.933117, 16.148773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031682, 0.598878, -0.800213,
		0.679217, 0.574448, 0.456808,
		0.733254, -0.557991, -0.388568,
		22.318611, 17.765720, 16.032204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.427290, 18.595488, 16.090830>,  <21.805334, 18.156313, 16.304201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.427290, 18.595488, 16.090830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.487293, 18.264717, 15.874058>,  <22.523294, 18.066256, 15.743994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.487293, 18.264717, 15.874058>,  <22.427290, 18.595488, 16.090830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.487293, 18.264717, 15.874058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385165, 0.553708, -0.738279,
		0.910574, -0.097986, 0.401564,
		0.150008, -0.826926, -0.541933,
		22.532295, 18.016640, 15.711478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.142538, 18.582020, 15.839376>,  <22.427290, 18.595488, 16.090830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.142538, 18.582020, 15.839376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.938490, 18.352028, 15.583509>,  <22.816061, 18.214033, 15.429989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.938490, 18.352028, 15.583509>,  <23.142538, 18.582020, 15.839376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.938490, 18.352028, 15.583509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186752, 0.651924, -0.734928,
		0.839583, -0.494361, -0.225181,
		-0.510121, -0.574980, -0.639667,
		22.785454, 18.179535, 15.391609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.606325, 18.295246, 15.361892>,  <23.142538, 18.582020, 15.839376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.606325, 18.295246, 15.361892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.245499, 18.277550, 15.190161>,  <23.029003, 18.266932, 15.087122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.245499, 18.277550, 15.190161>,  <23.606325, 18.295246, 15.361892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.245499, 18.277550, 15.190161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325255, 0.584190, -0.743593,
		0.283705, -0.810410, -0.512588,
		-0.902065, -0.044240, -0.429328,
		22.974880, 18.264278, 15.061362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.725346, 18.225330, 14.540250>,  <23.606325, 18.295246, 15.361892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.725346, 18.225330, 14.540250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.337648, 18.322168, 14.522546>,  <23.105030, 18.380270, 14.511924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.337648, 18.322168, 14.522546>,  <23.725346, 18.225330, 14.540250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.337648, 18.322168, 14.522546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149899, 0.438090, -0.886345,
		-0.195189, -0.865718, -0.460905,
		-0.969243, 0.242094, -0.044260,
		23.046875, 18.394796, 14.509268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.490097, 17.918577, 13.901052>,  <23.725346, 18.225330, 14.540250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.490097, 17.918577, 13.901052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.263290, 18.231005, 14.005686>,  <23.127207, 18.418461, 14.068466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.263290, 18.231005, 14.005686>,  <23.490097, 17.918577, 13.901052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.263290, 18.231005, 14.005686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186853, 0.431257, -0.882668,
		-0.802233, -0.451610, -0.390475,
		-0.567017, 0.781066, 0.261584,
		23.093185, 18.465324, 14.084161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.131136, 18.041985, 13.353540>,  <23.490097, 17.918577, 13.901052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.131136, 18.041985, 13.353540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.067196, 18.377443, 13.561816>,  <23.028831, 18.578718, 13.686782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.067196, 18.377443, 13.561816>,  <23.131136, 18.041985, 13.353540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.067196, 18.377443, 13.561816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215391, 0.544394, -0.810705,
		-0.963356, -0.017441, -0.267660,
		-0.159852, 0.838648, 0.520689,
		23.019239, 18.629038, 13.718022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.795689, 18.545877, 12.889970>,  <23.131136, 18.041985, 13.353540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.795689, 18.545877, 12.889970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.954359, 18.765701, 13.184080>,  <23.049561, 18.897596, 13.360546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.954359, 18.765701, 13.184080>,  <22.795689, 18.545877, 12.889970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.954359, 18.765701, 13.184080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195473, 0.732049, -0.652606,
		-0.896905, 0.402600, 0.182962,
		0.396676, 0.549561, 0.735276,
		23.073362, 18.930569, 13.404663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.439905, 19.177330, 12.756238>,  <22.795689, 18.545877, 12.889970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.439905, 19.177330, 12.756238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.758938, 19.236790, 12.990081>,  <22.950357, 19.272467, 13.130386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.758938, 19.236790, 12.990081>,  <22.439905, 19.177330, 12.756238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.758938, 19.236790, 12.990081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281192, 0.765793, -0.578353,
		-0.533662, 0.625671, 0.568983,
		0.797581, 0.148651, 0.584608,
		22.998213, 19.281385, 13.165463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.471937, 19.985620, 12.859970>,  <22.439905, 19.177330, 12.756238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.471937, 19.985620, 12.859970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.835794, 19.829432, 12.916649>,  <23.054110, 19.735718, 12.950656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.835794, 19.829432, 12.916649>,  <22.471937, 19.985620, 12.859970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.835794, 19.829432, 12.916649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397841, 0.720863, -0.567520,
		0.119458, 0.572614, 0.811075,
		0.909644, -0.390474, 0.141697,
		23.108688, 19.712290, 12.959158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.923861, 20.469147, 13.137207>,  <22.471937, 19.985620, 12.859970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.923861, 20.469147, 13.137207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.161699, 20.195938, 12.967531>,  <23.304403, 20.032013, 12.865726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.161699, 20.195938, 12.967531>,  <22.923861, 20.469147, 13.137207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.161699, 20.195938, 12.967531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506208, 0.727908, -0.462497,
		0.624666, 0.060271, 0.778562,
		0.594597, -0.683021, -0.424190,
		23.340078, 19.991032, 12.840274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.654881, 20.785187, 13.133731>,  <22.923861, 20.469147, 13.137207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.654881, 20.785187, 13.133731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.667261, 20.492252, 12.861635>,  <23.674690, 20.316492, 12.698378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.667261, 20.492252, 12.861635>,  <23.654881, 20.785187, 13.133731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.667261, 20.492252, 12.861635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478374, 0.608411, -0.633241,
		0.877611, -0.305808, 0.369163,
		0.030953, -0.732337, -0.680239,
		23.676546, 20.272551, 12.657563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.354145, 20.784637, 12.856977>,  <23.654881, 20.785187, 13.133731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.354145, 20.784637, 12.856977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.115614, 20.598299, 12.595478>,  <23.972496, 20.486496, 12.438580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.115614, 20.598299, 12.595478>,  <24.354145, 20.784637, 12.856977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.115614, 20.598299, 12.595478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303920, 0.622748, -0.720983,
		0.742985, -0.628628, -0.229782,
		-0.596327, -0.465845, -0.653746,
		23.936716, 20.458546, 12.399355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.651117, 20.588785, 12.189722>,  <24.354145, 20.784637, 12.856977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.651117, 20.588785, 12.189722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.277355, 20.561899, 12.049798>,  <24.053099, 20.545767, 11.965843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.277355, 20.561899, 12.049798>,  <24.651117, 20.588785, 12.189722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.277355, 20.561899, 12.049798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268275, 0.513252, -0.815231,
		0.234338, -0.855602, -0.461553,
		-0.934406, -0.067216, -0.349811,
		23.997034, 20.541735, 11.944855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.644646, 20.425480, 11.378082>,  <24.651117, 20.588785, 12.189722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.644646, 20.425480, 11.378082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.279547, 20.567497, 11.458917>,  <24.060488, 20.652708, 11.507418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.279547, 20.567497, 11.458917>,  <24.644646, 20.425480, 11.378082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279547, 20.567497, 11.458917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131483, 0.723652, -0.677525,
		-0.386793, -0.591836, -0.707192,
		-0.912745, 0.355046, 0.202087,
		24.005724, 20.674011, 11.519543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357397, 20.449633, 10.751320>,  <24.644646, 20.425480, 11.378082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357397, 20.449633, 10.751320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.153160, 20.713440, 10.971985>,  <24.030617, 20.871723, 11.104384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.153160, 20.713440, 10.971985>,  <24.357397, 20.449633, 10.751320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.153160, 20.713440, 10.971985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041029, 0.622181, -0.781797,
		-0.858843, -0.421815, -0.290622,
		-0.510593, 0.659517, 0.551663,
		23.999983, 20.911295, 11.137484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.842396, 20.751917, 10.321150>,  <24.357397, 20.449633, 10.751320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.842396, 20.751917, 10.321150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.859329, 21.009798, 10.626454>,  <23.869490, 21.164526, 10.809637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.859329, 21.009798, 10.626454>,  <23.842396, 20.751917, 10.321150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.859329, 21.009798, 10.626454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146262, 0.751717, -0.643062,
		-0.988340, 0.138858, -0.062473,
		0.042332, 0.644701, 0.763262,
		23.872028, 21.203209, 10.855433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.437904, 21.288616, 10.112491>,  <23.842396, 20.751917, 10.321150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.437904, 21.288616, 10.112491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.648579, 21.455452, 10.408772>,  <23.774982, 21.555553, 10.586540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.648579, 21.455452, 10.408772>,  <23.437904, 21.288616, 10.112491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.648579, 21.455452, 10.408772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053704, 0.853285, -0.518672,
		-0.848362, 0.312956, 0.427013,
		0.526685, 0.417089, 0.740702,
		23.806583, 21.580578, 10.630982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.081347, 21.918030, 10.248887>,  <23.437904, 21.288616, 10.112491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.081347, 21.918030, 10.248887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.456068, 21.955883, 10.383614>,  <23.680901, 21.978596, 10.464449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.456068, 21.955883, 10.383614>,  <23.081347, 21.918030, 10.248887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.456068, 21.955883, 10.383614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048140, 0.918698, -0.392017,
		-0.346529, 0.383457, 0.856083,
		0.936803, 0.094633, 0.336815,
		23.737108, 21.984274, 10.484658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.003916, 17.870316, 23.721458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.758212, 17.604000, 23.552029>,  <15.610790, 17.444210, 23.450371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.758212, 17.604000, 23.552029>,  <16.003916, 17.870316, 23.721458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.758212, 17.604000, 23.552029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591528, -0.033224, -0.805600,
		0.522286, -0.745400, 0.414241,
		-0.614257, -0.665789, -0.423573,
		15.573935, 17.404264, 23.424957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.417540, 17.314734, 23.458607>,  <16.003916, 17.870316, 23.721458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.417540, 17.314734, 23.458607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.073069, 17.292789, 23.256472>,  <15.866386, 17.279623, 23.135191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.073069, 17.292789, 23.256472>,  <16.417540, 17.314734, 23.458607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.073069, 17.292789, 23.256472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507055, -0.022969, -0.861608,
		0.035663, -0.998230, 0.047598,
		-0.861175, -0.054862, -0.505338,
		15.814716, 17.276331, 23.104870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599380, 16.957512, 22.878611>,  <16.417540, 17.314734, 23.458607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.599380, 16.957512, 22.878611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243649, 17.100388, 22.764416>,  <16.030209, 17.186113, 22.695898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243649, 17.100388, 22.764416>,  <16.599380, 16.957512, 22.878611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.243649, 17.100388, 22.764416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294429, -0.030378, -0.955190,
		-0.349859, -0.933537, -0.078151,
		-0.889332, 0.357192, -0.285489,
		15.976850, 17.207544, 22.678768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.397915, 16.489264, 22.264488>,  <16.599380, 16.957512, 22.878611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.397915, 16.489264, 22.264488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.188824, 16.830055, 22.252573>,  <16.063368, 17.034531, 22.245424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.188824, 16.830055, 22.252573>,  <16.397915, 16.489264, 22.264488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.188824, 16.830055, 22.252573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301328, 0.151970, -0.941333,
		-0.797468, -0.501037, -0.336164,
		-0.522730, 0.851978, -0.029786,
		16.032005, 17.085649, 22.243637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.001440, 16.401258, 21.653791>,  <16.397915, 16.489264, 22.264488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.001440, 16.401258, 21.653791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.025892, 16.791378, 21.738695>,  <16.040564, 17.025450, 21.789637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.025892, 16.791378, 21.738695>,  <16.001440, 16.401258, 21.653791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.025892, 16.791378, 21.738695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257199, 0.190083, -0.947480,
		-0.964423, 0.112514, -0.239225,
		0.061132, 0.975300, 0.212259,
		16.044231, 17.083967, 21.802372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.763739, 16.739716, 21.031761>,  <16.001440, 16.401258, 21.653791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.763739, 16.739716, 21.031761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.948517, 17.042093, 21.217300>,  <16.059383, 17.223520, 21.328623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.948517, 17.042093, 21.217300>,  <15.763739, 16.739716, 21.031761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.948517, 17.042093, 21.217300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275037, 0.375110, -0.885238,
		-0.843185, 0.536507, -0.034632,
		0.461946, 0.755945, 0.463847,
		16.087101, 17.268877, 21.356455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.594867, 17.288607, 20.620228>,  <15.763739, 16.739716, 21.031761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.594867, 17.288607, 20.620228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.899461, 17.428465, 20.838545>,  <16.082218, 17.512381, 20.969534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.899461, 17.428465, 20.838545>,  <15.594867, 17.288607, 20.620228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.899461, 17.428465, 20.838545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279299, 0.582856, -0.763067,
		-0.584921, 0.733503, 0.346181,
		0.761485, 0.349646, 0.545791,
		16.127907, 17.533358, 21.002283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.601352, 18.012228, 20.712589>,  <15.594867, 17.288607, 20.620228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.601352, 18.012228, 20.712589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980888, 17.892025, 20.751362>,  <16.208611, 17.819902, 20.774626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980888, 17.892025, 20.751362>,  <15.601352, 18.012228, 20.712589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.980888, 17.892025, 20.751362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257510, 0.558791, -0.788316,
		0.182730, 0.772947, 0.607587,
		0.948841, -0.300509, 0.096933,
		16.265541, 17.801872, 20.780441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.048763, 18.636532, 20.600750>,  <15.601352, 18.012228, 20.712589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.048763, 18.636532, 20.600750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.273335, 18.313959, 20.526493>,  <16.408077, 18.120415, 20.481939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.273335, 18.313959, 20.526493>,  <16.048763, 18.636532, 20.600750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.273335, 18.313959, 20.526493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313402, 0.414828, -0.854223,
		0.765883, 0.421406, 0.485634,
		0.561429, -0.806433, -0.185640,
		16.441763, 18.072029, 20.470800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.547026, 18.845068, 20.260574>,  <16.048763, 18.636532, 20.600750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.547026, 18.845068, 20.260574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575588, 18.457712, 20.164970>,  <16.592726, 18.225300, 20.107609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575588, 18.457712, 20.164970>,  <16.547026, 18.845068, 20.260574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575588, 18.457712, 20.164970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296843, 0.249396, -0.921784,
		0.952253, -0.005129, 0.305268,
		0.071405, -0.968388, -0.239010,
		16.597010, 18.167196, 20.093267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.203930, 18.812450, 19.831560>,  <16.547026, 18.845068, 20.260574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.203930, 18.812450, 19.831560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021645, 18.464157, 19.757647>,  <16.912273, 18.255180, 19.713299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021645, 18.464157, 19.757647>,  <17.203930, 18.812450, 19.831560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.021645, 18.464157, 19.757647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203479, 0.100191, -0.973939,
		0.866557, -0.481438, 0.131518,
		-0.455714, -0.870735, -0.184784,
		16.884930, 18.202936, 19.702211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.591805, 18.488588, 19.430431>,  <17.203930, 18.812450, 19.831560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.591805, 18.488588, 19.430431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247597, 18.302597, 19.347197>,  <17.041071, 18.191002, 19.297256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247597, 18.302597, 19.347197>,  <17.591805, 18.488588, 19.430431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.247597, 18.302597, 19.347197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057820, 0.316691, -0.946765,
		0.506124, -0.826742, -0.245634,
		-0.860520, -0.464978, -0.208087,
		16.989441, 18.163103, 19.284771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619860, 18.053661, 18.833599>,  <17.591805, 18.488588, 19.430431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619860, 18.053661, 18.833599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.246485, 18.187868, 18.884390>,  <17.022459, 18.268393, 18.914864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.246485, 18.187868, 18.884390>,  <17.619860, 18.053661, 18.833599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.246485, 18.187868, 18.884390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073419, 0.525124, -0.847853,
		-0.351148, -0.782095, -0.514804,
		-0.933437, 0.335518, 0.126976,
		16.966454, 18.288523, 18.922483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.368803, 18.203808, 18.720970>,  <17.619860, 18.053661, 18.833599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.368803, 18.203808, 18.720970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.408594, 18.570860, 18.567057>,  <18.432468, 18.791092, 18.474709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.408594, 18.570860, 18.567057>,  <18.368803, 18.203808, 18.720970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.408594, 18.570860, 18.567057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288171, 0.396698, 0.871543,
		0.952398, 0.024186, 0.303896,
		0.099476, 0.917630, -0.384785,
		18.438437, 18.846149, 18.451622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.544956, 17.626795, 18.307545>,  <18.368803, 18.203808, 18.720970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.544956, 17.626795, 18.307545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.883253, 17.414568, 18.284849>,  <19.086231, 17.287231, 18.271233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.883253, 17.414568, 18.284849>,  <18.544956, 17.626795, 18.307545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.883253, 17.414568, 18.284849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469170, -0.790065, 0.394559,
		-0.254168, -0.307075, -0.917117,
		0.845741, -0.530568, -0.056739,
		19.136976, 17.255398, 18.267828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.398903, 16.994186, 18.022028>,  <18.544956, 17.626795, 18.307545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.398903, 16.994186, 18.022028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.741367, 16.925478, 18.216957>,  <18.946846, 16.884253, 18.333914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.741367, 16.925478, 18.216957>,  <18.398903, 16.994186, 18.022028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.741367, 16.925478, 18.216957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474135, -0.636051, 0.608799,
		0.205389, -0.752287, -0.626003,
		0.856161, -0.171769, 0.487324,
		18.998215, 16.873947, 18.363153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.196028, 16.383127, 18.256590>,  <18.398903, 16.994186, 18.022028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.196028, 16.383127, 18.256590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.545925, 16.448668, 18.439009>,  <18.755863, 16.487991, 18.548460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.545925, 16.448668, 18.439009>,  <18.196028, 16.383127, 18.256590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.545925, 16.448668, 18.439009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229964, -0.688024, 0.688287,
		0.426547, -0.706949, -0.564164,
		0.874742, 0.163850, 0.456048,
		18.808348, 16.497822, 18.575823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.549776, 15.724165, 18.397200>,  <18.196028, 16.383127, 18.256590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.549776, 15.724165, 18.397200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.717270, 15.987554, 18.647345>,  <18.817766, 16.145586, 18.797432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.717270, 15.987554, 18.647345>,  <18.549776, 15.724165, 18.397200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.717270, 15.987554, 18.647345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175091, -0.617179, 0.767094,
		0.891070, -0.430703, -0.143140,
		0.418733, 0.658472, 0.625362,
		18.842890, 16.185095, 18.834953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.940632, 15.371556, 18.898312>,  <18.549776, 15.724165, 18.397200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.940632, 15.371556, 18.898312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.899677, 15.722002, 19.086754>,  <18.875105, 15.932269, 19.199820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.899677, 15.722002, 19.086754>,  <18.940632, 15.371556, 18.898312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.899677, 15.722002, 19.086754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010965, -0.472572, 0.881224,
		0.994685, 0.095389, 0.038778,
		-0.102385, 0.876115, 0.471106,
		18.868961, 15.984837, 19.228086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.374462, 15.281321, 19.540129>,  <18.940632, 15.371556, 18.898312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.374462, 15.281321, 19.540129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.101065, 15.569133, 19.589302>,  <18.937027, 15.741820, 19.618807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.101065, 15.569133, 19.589302>,  <19.374462, 15.281321, 19.540129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.101065, 15.569133, 19.589302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066656, -0.229231, 0.971087,
		0.726907, 0.655537, 0.204639,
		-0.683493, 0.719530, 0.122934,
		18.896017, 15.784992, 19.626183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.549061, 15.613511, 20.186050>,  <19.374462, 15.281321, 19.540129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.549061, 15.613511, 20.186050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.157549, 15.677780, 20.135178>,  <18.922642, 15.716342, 20.104654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.157549, 15.677780, 20.135178>,  <19.549061, 15.613511, 20.186050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.157549, 15.677780, 20.135178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165807, -0.256273, 0.952278,
		0.120412, 0.953157, 0.277475,
		-0.978779, 0.160673, -0.127181,
		18.863914, 15.725982, 20.097023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.202688, 15.920951, 20.802374>,  <19.549061, 15.613511, 20.186050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.202688, 15.920951, 20.802374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.868692, 15.775832, 20.636885>,  <18.668295, 15.688761, 20.537590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.868692, 15.775832, 20.636885>,  <19.202688, 15.920951, 20.802374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.868692, 15.775832, 20.636885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357846, -0.213149, 0.909128,
		-0.418015, 0.907163, 0.048152,
		-0.834991, -0.362798, -0.413725,
		18.618195, 15.666993, 20.512768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.617231, 16.061152, 21.305853>,  <19.202688, 15.920951, 20.802374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.617231, 16.061152, 21.305853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.457731, 15.792253, 21.056347>,  <18.362032, 15.630914, 20.906643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.457731, 15.792253, 21.056347>,  <18.617231, 16.061152, 21.305853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.457731, 15.792253, 21.056347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604480, -0.318833, 0.730034,
		-0.689639, 0.668156, -0.279225,
		-0.398750, -0.672246, -0.623766,
		18.338106, 15.590579, 20.869217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.883457, 16.209515, 21.292164>,  <18.617231, 16.061152, 21.305853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.883457, 16.209515, 21.292164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939293, 15.833613, 21.167341>,  <17.972795, 15.608072, 21.092447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939293, 15.833613, 21.167341>,  <17.883457, 16.209515, 21.292164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.939293, 15.833613, 21.167341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714930, -0.313692, 0.624878,
		-0.685120, 0.135871, -0.715646,
		0.139590, -0.939753, -0.312055,
		17.981171, 15.551687, 21.073725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.208418, 15.970694, 21.153149>,  <17.883457, 16.209515, 21.292164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.208418, 15.970694, 21.153149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.406633, 15.624065, 21.176805>,  <17.525562, 15.416089, 21.191000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.406633, 15.624065, 21.176805>,  <17.208418, 15.970694, 21.153149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.406633, 15.624065, 21.176805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696114, -0.355495, 0.623738,
		-0.519487, -0.350257, -0.779393,
		0.495539, -0.866570, 0.059143,
		17.555296, 15.364095, 21.194550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.738661, 15.392683, 20.879940>,  <17.208418, 15.970694, 21.153149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.738661, 15.392683, 20.879940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.010368, 15.226995, 21.122267>,  <17.173393, 15.127582, 21.267664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.010368, 15.226995, 21.122267>,  <16.738661, 15.392683, 20.879940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.010368, 15.226995, 21.122267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731750, -0.445276, 0.516014,
		0.056012, -0.793819, -0.605569,
		0.679267, -0.414222, 0.605818,
		17.214149, 15.102728, 21.304012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332970, 14.890354, 21.140268>,  <16.738661, 15.392683, 20.879940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332970, 14.890354, 21.140268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.661648, 14.886855, 21.368212>,  <16.858854, 14.884756, 21.504978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.661648, 14.886855, 21.368212>,  <16.332970, 14.890354, 21.140268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.661648, 14.886855, 21.368212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478116, -0.554788, 0.680893,
		0.310194, -0.831946, -0.460049,
		0.821696, -0.008747, 0.569859,
		16.908157, 14.884231, 21.539169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.459730, 14.160560, 21.326422>,  <16.332970, 14.890354, 21.140268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.459730, 14.160560, 21.326422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.612198, 14.419289, 21.590643>,  <16.703678, 14.574526, 21.749176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.612198, 14.419289, 21.590643>,  <16.459730, 14.160560, 21.326422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.612198, 14.419289, 21.590643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586638, -0.383001, 0.713559,
		0.714539, -0.659492, 0.233462,
		0.381170, 0.646823, 0.660552,
		16.726549, 14.613336, 21.788809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825943, 13.546486, 21.588095>,  <16.459730, 14.160560, 21.326422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.825943, 13.546486, 21.588095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.812984, 13.172998, 21.445478>,  <16.805208, 12.948906, 21.359909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.812984, 13.172998, 21.445478>,  <16.825943, 13.546486, 21.588095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812984, 13.172998, 21.445478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188605, 0.344607, -0.919606,
		0.981519, -0.097038, 0.164939,
		-0.032397, -0.933718, -0.356540,
		16.803265, 12.892883, 21.338516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.422619, 13.396580, 21.139057>,  <16.825943, 13.546486, 21.588095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.422619, 13.396580, 21.139057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.142340, 13.137854, 21.018623>,  <16.974173, 12.982618, 20.946363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.142340, 13.137854, 21.018623>,  <17.422619, 13.396580, 21.139057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.142340, 13.137854, 21.018623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314761, 0.098464, -0.944050,
		0.640271, -0.756264, 0.134598,
		-0.700698, -0.646814, -0.301086,
		16.932131, 12.943810, 20.928297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.756378, 12.896521, 20.595507>,  <17.422619, 13.396580, 21.139057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.756378, 12.896521, 20.595507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.367481, 12.836819, 20.523436>,  <17.134142, 12.800998, 20.480192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.367481, 12.836819, 20.523436>,  <17.756378, 12.896521, 20.595507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.367481, 12.836819, 20.523436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181586, 0.004253, -0.983366,
		0.147540, -0.988789, 0.022968,
		-0.972244, -0.149256, -0.180178,
		17.075808, 12.792042, 20.469381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751879, 12.314009, 20.179020>,  <17.756378, 12.896521, 20.595507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751879, 12.314009, 20.179020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.405386, 12.494860, 20.093958>,  <17.197491, 12.603371, 20.042921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.405386, 12.494860, 20.093958>,  <17.751879, 12.314009, 20.179020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.405386, 12.494860, 20.093958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256516, 0.037195, -0.965824,
		-0.428766, -0.891177, -0.148197,
		-0.866233, 0.452128, -0.212653,
		17.145515, 12.630498, 20.030163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.411339, 11.918764, 19.620296>,  <17.751879, 12.314009, 20.179020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.411339, 11.918764, 19.620296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.240717, 12.280216, 19.604784>,  <17.138344, 12.497087, 19.595476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.240717, 12.280216, 19.604784>,  <17.411339, 11.918764, 19.620296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.240717, 12.280216, 19.604784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112765, 0.010589, -0.993565,
		-0.897405, -0.428183, -0.106415,
		-0.426555, 0.903630, -0.038782,
		17.112751, 12.551305, 19.593149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.871161, 11.863867, 19.099127>,  <17.411339, 11.918764, 19.620296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.871161, 11.863867, 19.099127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962509, 12.250767, 19.143446>,  <17.017319, 12.482906, 19.170036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962509, 12.250767, 19.143446>,  <16.871161, 11.863867, 19.099127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.962509, 12.250767, 19.143446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042662, 0.103753, -0.993688,
		-0.972639, 0.231658, -0.017571,
		0.228372, 0.967249, 0.110797,
		17.031021, 12.540941, 19.176685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.590792, 12.168956, 18.501732>,  <16.871161, 11.863867, 19.099127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.590792, 12.168956, 18.501732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.841021, 12.448213, 18.641022>,  <16.991158, 12.615767, 18.724596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.841021, 12.448213, 18.641022>,  <16.590792, 12.168956, 18.501732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.841021, 12.448213, 18.641022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137302, 0.340858, -0.930034,
		-0.767990, 0.629614, 0.117375,
		0.625571, 0.698142, 0.348223,
		17.028692, 12.657655, 18.745489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.380526, 12.689331, 18.093008>,  <16.590792, 12.168956, 18.501732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.380526, 12.689331, 18.093008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.741917, 12.806901, 18.217800>,  <16.958752, 12.877443, 18.292675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.741917, 12.806901, 18.217800>,  <16.380526, 12.689331, 18.093008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.741917, 12.806901, 18.217800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203657, 0.346084, -0.915833,
		-0.377158, 0.890974, 0.252819,
		0.903480, 0.293926, 0.311981,
		17.012960, 12.895079, 18.311394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.500746, 13.434493, 17.840099>,  <16.380526, 12.689331, 18.093008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.500746, 13.434493, 17.840099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.858524, 13.270559, 17.911657>,  <17.073191, 13.172199, 17.954592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.858524, 13.270559, 17.911657>,  <16.500746, 13.434493, 17.840099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.858524, 13.270559, 17.911657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252757, 0.133325, -0.958300,
		0.368894, 0.902363, 0.222840,
		0.894445, -0.409835, 0.178896,
		17.126858, 13.147609, 17.965326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.991705, 13.830511, 17.487190>,  <16.500746, 13.434493, 17.840099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.991705, 13.830511, 17.487190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.193663, 13.493008, 17.560024>,  <17.314837, 13.290505, 17.603725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.193663, 13.493008, 17.560024>,  <16.991705, 13.830511, 17.487190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.193663, 13.493008, 17.560024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543979, 0.147239, -0.826080,
		0.670201, 0.516132, 0.533327,
		0.504893, -0.843758, 0.182085,
		17.345131, 13.239881, 17.614651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.693117, 13.954016, 17.216232>,  <16.991705, 13.830511, 17.487190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.693117, 13.954016, 17.216232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643415, 13.557902, 17.241205>,  <17.613594, 13.320234, 17.256189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643415, 13.557902, 17.241205>,  <17.693117, 13.954016, 17.216232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.643415, 13.557902, 17.241205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296504, -0.097101, -0.950082,
		0.946914, -0.099542, 0.305689,
		-0.124256, -0.990284, 0.062432,
		17.606138, 13.260818, 17.259935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.344635, 13.712313, 16.703651>,  <17.693117, 13.954016, 17.216232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.344635, 13.712313, 16.703651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.052402, 13.443000, 16.749157>,  <17.877062, 13.281412, 16.776461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.052402, 13.443000, 16.749157>,  <18.344635, 13.712313, 16.703651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.052402, 13.443000, 16.749157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222174, -0.391930, -0.892765,
		0.645669, -0.626963, 0.435922,
		-0.730582, -0.673282, 0.113762,
		17.833227, 13.241015, 16.783285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.232921, 10.551599, 24.923780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.540487, 10.652199, 25.158901>,  <13.725027, 10.712559, 25.299974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.540487, 10.652199, 25.158901>,  <13.232921, 10.551599, 24.923780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.540487, 10.652199, 25.158901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455611, 0.429449, -0.779739,
		-0.448536, 0.867365, 0.215625,
		0.768918, 0.251500, 0.587804,
		13.771163, 10.727649, 25.335243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.534367, 10.991065, 24.521400>,  <13.232921, 10.551599, 24.923780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.534367, 10.991065, 24.521400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.820146, 10.910726, 24.789497>,  <13.991613, 10.862522, 24.950356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.820146, 10.910726, 24.789497>,  <13.534367, 10.991065, 24.521400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.820146, 10.910726, 24.789497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699366, 0.234033, -0.675363,
		-0.021213, 0.951256, 0.307672,
		0.714449, -0.200849, 0.670241,
		14.034480, 10.850471, 24.990570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928514, 11.582650, 24.686918>,  <13.534367, 10.991065, 24.521400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.928514, 11.582650, 24.686918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.171634, 11.274827, 24.765263>,  <14.317505, 11.090133, 24.812269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.171634, 11.274827, 24.765263>,  <13.928514, 11.582650, 24.686918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.171634, 11.274827, 24.765263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682442, 0.380089, -0.624344,
		0.406024, 0.513140, 0.756196,
		0.607797, -0.769558, 0.195863,
		14.353973, 11.043960, 24.824022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.649693, 11.832242, 24.768488>,  <13.928514, 11.582650, 24.686918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.649693, 11.832242, 24.768488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.714083, 11.443491, 24.699741>,  <14.752717, 11.210240, 24.658493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.714083, 11.443491, 24.699741>,  <14.649693, 11.832242, 24.768488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.714083, 11.443491, 24.699741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835421, 0.226899, -0.500588,
		0.525508, -0.063000, 0.848453,
		0.160976, -0.971878, -0.171869,
		14.762376, 11.151927, 24.648180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.311147, 11.701195, 24.992311>,  <14.649693, 11.832242, 24.768488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.311147, 11.701195, 24.992311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.225830, 11.415179, 24.726011>,  <15.174640, 11.243570, 24.566231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.225830, 11.415179, 24.726011>,  <15.311147, 11.701195, 24.992311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.225830, 11.415179, 24.726011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925892, 0.069547, -0.371331,
		0.311817, -0.695617, 0.647215,
		-0.213292, -0.715038, -0.665753,
		15.161842, 11.200667, 24.526285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.883833, 11.534218, 24.679598>,  <15.311147, 11.701195, 24.992311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.883833, 11.534218, 24.679598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.676307, 11.322536, 24.411039>,  <15.551791, 11.195526, 24.249905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.676307, 11.322536, 24.411039>,  <15.883833, 11.534218, 24.679598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.676307, 11.322536, 24.411039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732908, 0.128956, -0.667994,
		0.440088, -0.838636, 0.320956,
		-0.518815, -0.529207, -0.671395,
		15.520662, 11.163774, 24.209621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402880, 11.288353, 24.357853>,  <15.883833, 11.534218, 24.679598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402880, 11.288353, 24.357853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.098278, 11.231820, 24.104828>,  <15.915517, 11.197900, 23.953012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.098278, 11.231820, 24.104828>,  <16.402880, 11.288353, 24.357853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.098278, 11.231820, 24.104828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641336, -0.023071, -0.766913,
		0.093797, -0.989693, 0.108211,
		-0.761505, -0.141334, -0.632562,
		15.869826, 11.189421, 23.915060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.481211, 10.672235, 23.867315>,  <16.402880, 11.288353, 24.357853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.481211, 10.672235, 23.867315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.254906, 10.953339, 23.694784>,  <16.119122, 11.122001, 23.591267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.254906, 10.953339, 23.694784>,  <16.481211, 10.672235, 23.867315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.254906, 10.953339, 23.694784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694025, 0.123395, -0.709298,
		-0.445241, -0.700646, -0.557544,
		-0.565765, 0.702758, -0.431325,
		16.085176, 11.164165, 23.565386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.572411, 10.540031, 23.104567>,  <16.481211, 10.672235, 23.867315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.572411, 10.540031, 23.104567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.397572, 10.899700, 23.112888>,  <16.292667, 11.115501, 23.117882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.397572, 10.899700, 23.112888>,  <16.572411, 10.540031, 23.104567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.397572, 10.899700, 23.112888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486171, 0.255666, -0.835627,
		-0.756692, -0.355138, -0.548903,
		-0.437099, 0.899173, 0.020802,
		16.266441, 11.169452, 23.119129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433365, 10.657351, 22.394587>,  <16.572411, 10.540031, 23.104567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.433365, 10.657351, 22.394587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.413563, 11.019788, 22.562656>,  <16.401682, 11.237250, 22.663498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.413563, 11.019788, 22.562656>,  <16.433365, 10.657351, 22.394587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.413563, 11.019788, 22.562656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388868, 0.404981, -0.827510,
		-0.919963, 0.122425, -0.372399,
		-0.049507, 0.906092, 0.420174,
		16.398710, 11.291615, 22.688709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.076883, 11.184503, 21.944271>,  <16.433365, 10.657351, 22.394587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.076883, 11.184503, 21.944271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.265360, 11.444747, 22.182493>,  <16.378447, 11.600894, 22.325426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.265360, 11.444747, 22.182493>,  <16.076883, 11.184503, 21.944271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265360, 11.444747, 22.182493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153435, 0.604450, -0.781727,
		-0.868583, 0.459722, 0.184985,
		0.471191, 0.650612, 0.595553,
		16.406717, 11.639931, 22.361158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.723171, 11.764293, 21.884008>,  <16.076883, 11.184503, 21.944271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.723171, 11.764293, 21.884008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.071129, 11.897587, 22.029469>,  <16.279903, 11.977563, 22.116745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.071129, 11.897587, 22.029469>,  <15.723171, 11.764293, 21.884008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.071129, 11.897587, 22.029469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076403, 0.637332, -0.766793,
		-0.487287, 0.694812, 0.528950,
		0.869893, 0.333234, 0.363649,
		16.332096, 11.997557, 22.138563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.729795, 12.461664, 21.920500>,  <15.723171, 11.764293, 21.884008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.729795, 12.461664, 21.920500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.122023, 12.389343, 21.950956>,  <16.357359, 12.345951, 21.969231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.122023, 12.389343, 21.950956>,  <15.729795, 12.461664, 21.920500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.122023, 12.389343, 21.950956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184324, 0.716204, -0.673110,
		0.067168, 0.674064, 0.735612,
		0.980568, -0.180802, 0.076140,
		16.416193, 12.335102, 21.973799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.081440, 13.142023, 21.821293>,  <15.729795, 12.461664, 21.920500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.081440, 13.142023, 21.821293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.372446, 12.879279, 21.742037>,  <16.547050, 12.721633, 21.694483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.372446, 12.879279, 21.742037>,  <16.081440, 13.142023, 21.821293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372446, 12.879279, 21.742037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362612, 0.613284, -0.701709,
		0.582439, 0.438656, 0.684358,
		0.727515, -0.656859, -0.198138,
		16.590700, 12.682221, 21.682596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.296629, 13.877998, 21.966490>,  <16.081440, 13.142023, 21.821293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.296629, 13.877998, 21.966490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.422953, 14.235230, 22.094660>,  <16.498747, 14.449570, 22.171562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.422953, 14.235230, 22.094660>,  <16.296629, 13.877998, 21.966490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.422953, 14.235230, 22.094660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391332, -0.185049, 0.901452,
		0.864364, -0.410078, 0.291052,
		0.315807, 0.893081, 0.320426,
		16.517694, 14.503155, 22.190788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.680330, 13.712432, 22.581268>,  <16.296629, 13.877998, 21.966490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.680330, 13.712432, 22.581268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.587502, 14.101034, 22.600534>,  <16.531805, 14.334195, 22.612093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.587502, 14.101034, 22.600534>,  <16.680330, 13.712432, 22.581268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.587502, 14.101034, 22.600534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262084, -0.110137, 0.958740,
		0.936726, 0.209872, 0.280176,
		-0.232071, 0.971506, 0.048164,
		16.517879, 14.392486, 22.614985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.889076, 13.852774, 23.250526>,  <16.680330, 13.712432, 22.581268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.889076, 13.852774, 23.250526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.626558, 14.133382, 23.139425>,  <16.469048, 14.301747, 23.072765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.626558, 14.133382, 23.139425>,  <16.889076, 13.852774, 23.250526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.626558, 14.133382, 23.139425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412610, -0.025495, 0.910551,
		0.631689, 0.712193, 0.306186,
		-0.656294, 0.701521, -0.277753,
		16.429670, 14.343838, 23.056099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.791489, 14.362041, 23.862413>,  <16.889076, 13.852774, 23.250526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.791489, 14.362041, 23.862413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.474726, 14.416587, 23.624325>,  <16.284668, 14.449314, 23.481472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.474726, 14.416587, 23.624325>,  <16.791489, 14.362041, 23.862413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.474726, 14.416587, 23.624325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592379, 0.065053, 0.803029,
		0.148224, 0.988521, 0.029262,
		-0.791907, 0.136362, -0.595221,
		16.237154, 14.457496, 23.445759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433264, 14.938314, 24.035803>,  <16.791489, 14.362041, 23.862413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.433264, 14.938314, 24.035803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.139263, 14.745014, 23.845545>,  <15.962862, 14.629034, 23.731390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.139263, 14.745014, 23.845545>,  <16.433264, 14.938314, 24.035803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.139263, 14.745014, 23.845545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609389, 0.163163, 0.775901,
		-0.297347, 0.860144, -0.414413,
		-0.735003, -0.483250, -0.475646,
		15.918762, 14.600039, 23.702850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.803891, 15.315756, 24.232094>,  <16.433264, 14.938314, 24.035803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.803891, 15.315756, 24.232094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.710994, 14.950161, 24.099012>,  <15.655255, 14.730804, 24.019163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.710994, 14.950161, 24.099012>,  <15.803891, 15.315756, 24.232094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.710994, 14.950161, 24.099012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631680, -0.118373, 0.766138,
		-0.739623, 0.388092, -0.549856,
		-0.232244, -0.913987, -0.332702,
		15.641320, 14.675964, 23.999203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.173944, 15.282080, 24.430540>,  <15.803891, 15.315756, 24.232094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.173944, 15.282080, 24.430540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.207202, 14.902905, 24.307575>,  <15.227157, 14.675400, 24.233797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.207202, 14.902905, 24.307575>,  <15.173944, 15.282080, 24.430540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.207202, 14.902905, 24.307575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747020, -0.263462, 0.610367,
		-0.659581, 0.178895, -0.730034,
		0.083145, -0.947937, -0.307413,
		15.232145, 14.618524, 24.215351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.559257, 14.969601, 24.323874>,  <15.173944, 15.282080, 24.430540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.559257, 14.969601, 24.323874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.789638, 14.658444, 24.424404>,  <14.927866, 14.471750, 24.484722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.789638, 14.658444, 24.424404>,  <14.559257, 14.969601, 24.323874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.789638, 14.658444, 24.424404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674445, -0.278430, 0.683813,
		-0.461956, -0.563348, -0.685008,
		0.575951, -0.777892, 0.251325,
		14.962423, 14.425077, 24.499802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.117256, 14.382688, 24.364525>,  <14.559257, 14.969601, 24.323874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.117256, 14.382688, 24.364525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.447167, 14.328415, 24.584099>,  <14.645114, 14.295851, 24.715843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.447167, 14.328415, 24.584099>,  <14.117256, 14.382688, 24.364525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.447167, 14.328415, 24.584099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555993, -0.371451, 0.743570,
		0.103014, -0.918485, -0.381803,
		0.824778, -0.135681, 0.548936,
		14.694601, 14.287710, 24.748779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.911485, 13.787698, 24.723146>,  <14.117256, 14.382688, 24.364525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.911485, 13.787698, 24.723146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.231506, 13.932775, 24.914297>,  <14.423519, 14.019822, 25.028988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.231506, 13.932775, 24.914297>,  <13.911485, 13.787698, 24.723146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.231506, 13.932775, 24.914297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459994, -0.140482, 0.876738,
		0.385122, -0.921258, 0.054445,
		0.800053, 0.362696, 0.477876,
		14.471522, 14.041584, 25.057659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.237757, 13.263400, 25.232082>,  <13.911485, 13.787698, 24.723146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.237757, 13.263400, 25.232082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.343075, 13.623274, 25.371363>,  <14.406265, 13.839198, 25.454931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.343075, 13.623274, 25.371363>,  <14.237757, 13.263400, 25.232082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.343075, 13.623274, 25.371363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212871, -0.297860, 0.930573,
		0.940937, -0.319136, 0.113092,
		0.263294, 0.899684, 0.348202,
		14.422063, 13.893179, 25.475822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.392791, 13.021404, 25.841967>,  <14.237757, 13.263400, 25.232082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.392791, 13.021404, 25.841967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.397020, 13.419868, 25.876738>,  <14.399558, 13.658946, 25.897600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.397020, 13.419868, 25.876738>,  <14.392791, 13.021404, 25.841967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.397020, 13.419868, 25.876738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177085, -0.083691, 0.980631,
		0.984139, -0.025763, 0.175520,
		0.010575, 0.996158, 0.086926,
		14.400193, 13.718715, 25.902815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.659722, 13.107234, 26.490999>,  <14.392791, 13.021404, 25.841967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.659722, 13.107234, 26.490999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.436901, 13.432169, 26.421949>,  <14.303208, 13.627130, 26.380520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.436901, 13.432169, 26.421949>,  <14.659722, 13.107234, 26.490999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.436901, 13.432169, 26.421949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213047, 0.061125, 0.975128,
		0.802684, 0.579977, 0.139015,
		-0.557054, 0.812337, -0.172626,
		14.269785, 13.675870, 26.370161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.731770, 13.497469, 27.126715>,  <14.659722, 13.107234, 26.490999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.731770, 13.497469, 27.126715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.402345, 13.612595, 26.931202>,  <14.204690, 13.681670, 26.813894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.402345, 13.612595, 26.931202>,  <14.731770, 13.497469, 27.126715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.402345, 13.612595, 26.931202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456890, 0.174070, 0.872325,
		0.336149, 0.941734, -0.011859,
		-0.823563, 0.287813, -0.488783,
		14.155276, 13.698938, 26.784567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<8.669697, 12.540134, 24.242662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.038116, 12.564884, 24.396461>,  <9.259169, 12.579734, 24.488741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.038116, 12.564884, 24.396461>,  <8.669697, 12.540134, 24.242662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.038116, 12.564884, 24.396461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271895, 0.604686, -0.748618,
		-0.278821, 0.794057, 0.540122,
		0.921049, 0.061874, 0.384499,
		9.314431, 12.583447, 24.511812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.905471, 13.199009, 24.094570>,  <8.669697, 12.540134, 24.242662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.905471, 13.199009, 24.094570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.250914, 13.019458, 24.186390>,  <9.458179, 12.911727, 24.241482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.250914, 13.019458, 24.186390>,  <8.905471, 13.199009, 24.094570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.250914, 13.019458, 24.186390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448646, 0.476521, -0.756072,
		0.229999, 0.755935, 0.612914,
		0.863607, -0.448877, 0.229547,
		9.509995, 12.884795, 24.255255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.455420, 13.713707, 23.805346>,  <8.905471, 13.199009, 24.094570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.455420, 13.713707, 23.805346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.619277, 13.353456, 23.863400>,  <9.717591, 13.137306, 23.898232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.619277, 13.353456, 23.863400>,  <9.455420, 13.713707, 23.805346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.619277, 13.353456, 23.863400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557028, 0.120955, -0.821638,
		0.722434, 0.417423, 0.551222,
		0.409644, -0.900626, 0.145135,
		9.742170, 13.083268, 23.906940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.271307, 13.769336, 23.649931>,  <9.455420, 13.713707, 23.805346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.271307, 13.769336, 23.649931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.154029, 13.388276, 23.617695>,  <10.083662, 13.159640, 23.598354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.154029, 13.388276, 23.617695>,  <10.271307, 13.769336, 23.649931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.154029, 13.388276, 23.617695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443539, -0.060865, -0.894186,
		0.846941, -0.297915, 0.440383,
		-0.293195, -0.952650, -0.080588,
		10.066071, 13.102481, 23.593519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.872120, 13.357614, 23.249371>,  <10.271307, 13.769336, 23.649931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.872120, 13.357614, 23.249371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.556448, 13.114628, 23.213190>,  <10.367044, 12.968836, 23.191483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.556448, 13.114628, 23.213190>,  <10.872120, 13.357614, 23.249371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.556448, 13.114628, 23.213190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232656, -0.159400, -0.959408,
		0.568389, -0.778188, 0.267126,
		-0.789180, -0.607466, -0.090449,
		10.319694, 12.932388, 23.186056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.119960, 12.814309, 22.892576>,  <10.872120, 13.357614, 23.249371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.119960, 12.814309, 22.892576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.722722, 12.832900, 22.849487>,  <10.484380, 12.844054, 22.823635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.722722, 12.832900, 22.849487>,  <11.119960, 12.814309, 22.892576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.722722, 12.832900, 22.849487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093872, -0.235939, -0.967223,
		-0.070370, -0.970656, 0.229947,
		-0.993094, 0.046477, -0.107721,
		10.424794, 12.846844, 22.817171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.915098, 12.266912, 22.466717>,  <11.119960, 12.814309, 22.892576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.915098, 12.266912, 22.466717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.615537, 12.523171, 22.398937>,  <10.435800, 12.676927, 22.358269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.615537, 12.523171, 22.398937>,  <10.915098, 12.266912, 22.466717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.615537, 12.523171, 22.398937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089295, -0.155814, -0.983742,
		-0.656635, -0.751859, 0.059483,
		-0.748904, 0.640647, -0.169450,
		10.390865, 12.715365, 22.348103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.712349, 12.144426, 21.864363>,  <10.915098, 12.266912, 22.466717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.712349, 12.144426, 21.864363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.477102, 12.465541, 21.903667>,  <10.335955, 12.658210, 21.927250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.477102, 12.465541, 21.903667>,  <10.712349, 12.144426, 21.864363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.477102, 12.465541, 21.903667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031486, 0.098677, -0.994621,
		-0.808164, -0.588046, -0.032757,
		-0.588115, 0.802786, 0.098263,
		10.300668, 12.706376, 21.933146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.227134, 12.024485, 21.361502>,  <10.712349, 12.144426, 21.864363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.227134, 12.024485, 21.361502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.228583, 12.409020, 21.471640>,  <10.229453, 12.639742, 21.537722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.228583, 12.409020, 21.471640>,  <10.227134, 12.024485, 21.361502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.228583, 12.409020, 21.471640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010473, 0.275295, -0.961303,
		-0.999939, 0.006367, -0.009071,
		0.003623, 0.961339, 0.275345,
		10.229671, 12.697422, 21.554243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.599298, 12.391696, 21.054319>,  <10.227134, 12.024485, 21.361502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.599298, 12.391696, 21.054319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.888224, 12.660948, 21.117765>,  <10.061579, 12.822498, 21.155834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.888224, 12.660948, 21.117765>,  <9.599298, 12.391696, 21.054319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.888224, 12.660948, 21.117765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001090, 0.230467, -0.973079,
		-0.691564, 0.702697, 0.167204,
		0.722315, 0.673129, 0.158617,
		10.104918, 12.862886, 21.165350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.507665, 12.993448, 20.751392>,  <9.599298, 12.391696, 21.054319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.507665, 12.993448, 20.751392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.885838, 13.106691, 20.815901>,  <10.112741, 13.174638, 20.854607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.885838, 13.106691, 20.815901>,  <9.507665, 12.993448, 20.751392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.885838, 13.106691, 20.815901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010596, 0.467990, -0.883670,
		-0.325648, 0.837159, 0.439453,
		0.945432, 0.283109, 0.161271,
		10.169467, 13.191624, 20.864283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.628610, 13.695015, 20.272644>,  <9.507665, 12.993448, 20.751392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.628610, 13.695015, 20.272644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.988422, 13.578833, 20.403168>,  <10.204310, 13.509123, 20.481482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.988422, 13.578833, 20.403168>,  <9.628610, 13.695015, 20.272644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.988422, 13.578833, 20.403168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423427, 0.395932, -0.814830,
		0.107477, 0.871133, 0.479141,
		0.899532, -0.290456, 0.326308,
		10.258282, 13.491695, 20.501060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.977637, 14.231456, 20.024040>,  <9.628610, 13.695015, 20.272644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.977637, 14.231456, 20.024040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.251329, 13.954095, 20.114391>,  <10.415545, 13.787679, 20.168602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.251329, 13.954095, 20.114391>,  <9.977637, 14.231456, 20.024040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.251329, 13.954095, 20.114391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577262, 0.325708, -0.748787,
		0.445641, 0.642734, 0.623135,
		0.684231, -0.693402, 0.225878,
		10.456599, 13.746074, 20.182154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.642096, 14.569049, 20.064346>,  <9.977637, 14.231456, 20.024040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.642096, 14.569049, 20.064346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.737081, 14.185147, 20.004368>,  <10.794071, 13.954806, 19.968380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.737081, 14.185147, 20.004368>,  <10.642096, 14.569049, 20.064346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.737081, 14.185147, 20.004368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597481, 0.266016, -0.756473,
		0.765917, 0.090043, 0.636604,
		0.237462, -0.959754, -0.149947,
		10.808319, 13.897221, 19.959383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.046158, 14.718758, 20.708212>,  <10.642096, 14.569049, 20.064346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.046158, 14.718758, 20.708212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.121866, 15.087531, 20.843395>,  <11.167292, 15.308795, 20.924505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.121866, 15.087531, 20.843395>,  <11.046158, 14.718758, 20.708212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.121866, 15.087531, 20.843395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598857, -0.164378, 0.783805,
		0.778169, -0.350740, 0.520994,
		0.189272, 0.921934, 0.337957,
		11.178648, 15.364111, 20.944782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.969122, 14.684553, 21.511675>,  <11.046158, 14.718758, 20.708212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.969122, 14.684553, 21.511675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.979055, 15.083240, 21.480850>,  <10.985016, 15.322452, 21.462355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.979055, 15.083240, 21.480850>,  <10.969122, 14.684553, 21.511675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.979055, 15.083240, 21.480850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355108, 0.080855, 0.931322,
		0.934495, 0.004238, 0.355951,
		0.024834, 0.996717, -0.077064,
		10.986506, 15.382255, 21.457731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.206246, 14.951847, 22.120977>,  <10.969122, 14.684553, 21.511675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.206246, 14.951847, 22.120977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.009631, 15.263057, 21.964483>,  <10.891662, 15.449782, 21.870586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.009631, 15.263057, 21.964483>,  <11.206246, 14.951847, 22.120977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.009631, 15.263057, 21.964483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191200, 0.341879, 0.920087,
		0.849607, 0.527063, -0.019289,
		-0.491539, 0.778025, -0.391237,
		10.862169, 15.496464, 21.847113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.318999, 15.575487, 22.621735>,  <11.206246, 14.951847, 22.120977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.318999, 15.575487, 22.621735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.988129, 15.669317, 22.417479>,  <10.789606, 15.725616, 22.294926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.988129, 15.669317, 22.417479>,  <11.318999, 15.575487, 22.621735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.988129, 15.669317, 22.417479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485739, 0.158439, 0.859625,
		0.282552, 0.959100, -0.017115,
		-0.827177, 0.234575, -0.510639,
		10.739976, 15.739690, 22.264286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.141852, 16.277527, 22.769823>,  <11.318999, 15.575487, 22.621735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.141852, 16.277527, 22.769823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.787998, 16.125540, 22.661716>,  <10.575686, 16.034348, 22.596853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.787998, 16.125540, 22.661716>,  <11.141852, 16.277527, 22.769823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.787998, 16.125540, 22.661716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405009, 0.338935, 0.849171,
		-0.231053, 0.860668, -0.453724,
		-0.884637, -0.379966, -0.270267,
		10.522607, 16.011551, 22.580637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.686620, 16.785114, 22.959034>,  <11.141852, 16.277527, 22.769823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.686620, 16.785114, 22.959034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.458411, 16.457699, 22.932198>,  <10.321486, 16.261250, 22.916096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.458411, 16.457699, 22.932198>,  <10.686620, 16.785114, 22.959034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.458411, 16.457699, 22.932198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403723, 0.208380, 0.890834,
		-0.715201, 0.535326, -0.449348,
		-0.570521, -0.818538, -0.067090,
		10.287254, 16.212137, 22.912071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.031925, 16.994909, 23.182138>,  <10.686620, 16.785114, 22.959034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.031925, 16.994909, 23.182138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.005953, 16.595816, 23.189178>,  <9.990370, 16.356359, 23.193403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.005953, 16.595816, 23.189178>,  <10.031925, 16.994909, 23.182138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.005953, 16.595816, 23.189178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401008, 0.042240, 0.915100,
		-0.913770, 0.052359, -0.402842,
		-0.064930, -0.997735, 0.017601,
		9.986474, 16.296495, 23.194458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.373359, 16.783478, 23.472647>,  <10.031925, 16.994909, 23.182138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.373359, 16.783478, 23.472647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.581077, 16.447765, 23.537069>,  <9.705708, 16.246338, 23.575724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.581077, 16.447765, 23.537069>,  <9.373359, 16.783478, 23.472647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.581077, 16.447765, 23.537069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400227, -0.072325, 0.913558,
		-0.755083, -0.538866, -0.373461,
		0.519295, -0.839281, 0.161057,
		9.736865, 16.195980, 23.585386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.962098, 16.357777, 23.923708>,  <9.373359, 16.783478, 23.472647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.962098, 16.357777, 23.923708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.324026, 16.191376, 23.960026>,  <9.541183, 16.091536, 23.981817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.324026, 16.191376, 23.960026>,  <8.962098, 16.357777, 23.923708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.324026, 16.191376, 23.960026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223921, -0.283525, 0.932455,
		-0.362164, -0.864033, -0.349691,
		0.904819, -0.416005, 0.090793,
		9.595472, 16.066576, 23.987265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.893744, 15.720982, 24.140392>,  <8.962098, 16.357777, 23.923708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.893744, 15.720982, 24.140392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.243917, 15.816068, 24.308733>,  <9.454020, 15.873119, 24.409737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.243917, 15.816068, 24.308733>,  <8.893744, 15.720982, 24.140392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.243917, 15.816068, 24.308733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269745, -0.482220, 0.833487,
		0.401074, -0.843182, -0.358028,
		0.875430, 0.237714, 0.420850,
		9.506545, 15.887382, 24.434988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.259320, 15.107667, 24.478056>,  <8.893744, 15.720982, 24.140392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.259320, 15.107667, 24.478056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.392970, 15.438974, 24.657980>,  <9.473160, 15.637759, 24.765934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.392970, 15.438974, 24.657980>,  <9.259320, 15.107667, 24.478056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.392970, 15.438974, 24.657980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140657, -0.428077, 0.892729,
		0.931974, -0.361553, -0.026529,
		0.334125, 0.828269, 0.449812,
		9.493208, 15.687455, 24.792923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.791224, 14.882916, 24.867786>,  <9.259320, 15.107667, 24.478056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.791224, 14.882916, 24.867786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.680225, 15.235929, 25.019646>,  <9.613626, 15.447738, 25.110762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.680225, 15.235929, 25.019646>,  <9.791224, 14.882916, 24.867786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.680225, 15.235929, 25.019646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053788, -0.408819, 0.911029,
		0.959220, 0.232387, 0.160915,
		-0.277496, 0.882532, 0.379648,
		9.596976, 15.500690, 25.133539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.260275, 15.012306, 25.527779>,  <9.791224, 14.882916, 24.867786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.260275, 15.012306, 25.527779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.937990, 15.244471, 25.575022>,  <9.744619, 15.383769, 25.603369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.937990, 15.244471, 25.575022>,  <10.260275, 15.012306, 25.527779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.937990, 15.244471, 25.575022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079163, -0.303138, 0.949653,
		0.586993, 0.755797, 0.290189,
		-0.805712, 0.580412, 0.118109,
		9.696277, 15.418594, 25.610455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.307182, 15.451774, 26.200661>,  <10.260275, 15.012306, 25.527779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.307182, 15.451774, 26.200661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.926385, 15.391688, 26.093969>,  <9.697906, 15.355638, 26.029955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.926385, 15.391688, 26.093969>,  <10.307182, 15.451774, 26.200661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.926385, 15.391688, 26.093969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222934, -0.256916, 0.940369,
		-0.209782, 0.954689, 0.211095,
		-0.951994, -0.150212, -0.266729,
		9.640787, 15.346624, 26.013950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.734648, 15.744969, 26.803585>,  <10.307182, 15.451774, 26.200661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.734648, 15.744969, 26.803585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.098550, 15.653378, 26.942101>,  <11.316891, 15.598422, 27.025209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.098550, 15.653378, 26.942101>,  <10.734648, 15.744969, 26.803585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.098550, 15.653378, 26.942101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415048, 0.519882, -0.746631,
		-0.009065, 0.822977, 0.568002,
		0.909754, -0.228980, 0.346288,
		11.371476, 15.584683, 27.045986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.008480, 16.325417, 26.552410>,  <10.734648, 15.744969, 26.803585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.008480, 16.325417, 26.552410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.331880, 16.102552, 26.628202>,  <11.525919, 15.968834, 26.673677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.331880, 16.102552, 26.628202>,  <11.008480, 16.325417, 26.552410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.331880, 16.102552, 26.628202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517861, 0.520619, -0.678805,
		0.279556, 0.646937, 0.709451,
		0.808498, -0.557161, 0.189481,
		11.574429, 15.935404, 26.685047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.624509, 16.826757, 26.651499>,  <11.008480, 16.325417, 26.552410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.624509, 16.826757, 26.651499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.755283, 16.464174, 26.544579>,  <11.833748, 16.246624, 26.480427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.755283, 16.464174, 26.544579>,  <11.624509, 16.826757, 26.651499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.755283, 16.464174, 26.544579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635206, 0.420199, -0.648032,
		0.699732, 0.042074, 0.713165,
		0.326937, -0.906456, -0.267302,
		11.853364, 16.192238, 26.464388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.274931, 16.696840, 26.817553>,  <11.624509, 16.826757, 26.651499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.274931, 16.696840, 26.817553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.239885, 16.433306, 26.518684>,  <12.218858, 16.275185, 26.339363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.239885, 16.433306, 26.518684>,  <12.274931, 16.696840, 26.817553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.239885, 16.433306, 26.518684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861481, 0.326492, -0.388913,
		0.500174, -0.677746, 0.538968,
		-0.087615, -0.658835, -0.747168,
		12.213601, 16.235655, 26.294535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.927096, 16.513897, 26.741024>,  <12.274931, 16.696840, 26.817553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.927096, 16.513897, 26.741024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.758581, 16.405371, 26.394867>,  <12.657472, 16.340256, 26.187172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.758581, 16.405371, 26.394867>,  <12.927096, 16.513897, 26.741024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.758581, 16.405371, 26.394867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843762, 0.232619, -0.483687,
		0.332539, -0.933957, 0.130926,
		-0.421287, -0.271316, -0.865393,
		12.632195, 16.323977, 26.135248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.468256, 16.233667, 26.413105>,  <12.927096, 16.513897, 26.741024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.468256, 16.233667, 26.413105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.211143, 16.261244, 26.107929>,  <13.056876, 16.277790, 25.924824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.211143, 16.261244, 26.107929>,  <13.468256, 16.233667, 26.413105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.211143, 16.261244, 26.107929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764036, 0.129847, -0.631972,
		0.055497, -0.989134, -0.136137,
		-0.642782, 0.068941, -0.762940,
		13.018309, 16.281925, 25.879047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.679646, 15.724744, 25.845905>,  <13.468256, 16.233667, 26.413105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.679646, 15.724744, 25.845905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.466039, 16.012091, 25.667570>,  <13.337874, 16.184500, 25.560568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.466039, 16.012091, 25.667570>,  <13.679646, 15.724744, 25.845905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.466039, 16.012091, 25.667570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767353, 0.190421, -0.612298,
		-0.354959, -0.669094, -0.652930,
		-0.534017, 0.718368, -0.445840,
		13.305834, 16.227602, 25.533817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.863449, 15.638131, 25.152821>,  <13.679646, 15.724744, 25.845905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.863449, 15.638131, 25.152821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.691553, 15.998880, 25.170471>,  <13.588415, 16.215330, 25.181061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.691553, 15.998880, 25.170471>,  <13.863449, 15.638131, 25.152821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.691553, 15.998880, 25.170471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567783, 0.307898, -0.763427,
		-0.702100, -0.303023, -0.644385,
		-0.429741, 0.901874, 0.044124,
		13.562631, 16.269442, 25.183708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.590166, 15.853052, 24.461811>,  <13.863449, 15.638131, 25.152821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.590166, 15.853052, 24.461811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.666067, 16.187399, 24.667847>,  <13.711608, 16.388008, 24.791468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.666067, 16.187399, 24.667847>,  <13.590166, 15.853052, 24.461811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.666067, 16.187399, 24.667847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595756, 0.318986, -0.737105,
		-0.780429, 0.446736, -0.437445,
		0.189752, 0.835868, 0.515091,
		13.722993, 16.438160, 24.822374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.447686, 16.511475, 24.031643>,  <13.590166, 15.853052, 24.461811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.447686, 16.511475, 24.031643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.686272, 16.683384, 24.302795>,  <13.829423, 16.786530, 24.465487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.686272, 16.683384, 24.302795>,  <13.447686, 16.511475, 24.031643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.686272, 16.683384, 24.302795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505848, 0.454449, -0.733208,
		-0.623176, 0.780238, 0.053663,
		0.596464, 0.429772, 0.677884,
		13.865211, 16.812315, 24.506161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.609116, 17.127132, 23.724789>,  <13.447686, 16.511475, 24.031643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.609116, 17.127132, 23.724789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.871243, 17.118916, 24.026819>,  <14.028519, 17.113985, 24.208036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.871243, 17.118916, 24.026819>,  <13.609116, 17.127132, 23.724789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.871243, 17.118916, 24.026819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677769, 0.457277, -0.575784,
		-0.333451, 0.889087, 0.313583,
		0.655317, -0.020541, 0.755075,
		14.067838, 17.112753, 24.253342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832588, 17.793709, 23.794817>,  <13.609116, 17.127132, 23.724789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.832588, 17.793709, 23.794817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.091661, 17.520498, 23.929861>,  <14.247106, 17.356571, 24.010887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.091661, 17.520498, 23.929861>,  <13.832588, 17.793709, 23.794817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.091661, 17.520498, 23.929861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710845, 0.382217, -0.590432,
		0.274239, 0.622402, 0.733082,
		0.647682, -0.683027, 0.337612,
		14.285966, 17.315590, 24.031145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.536352, 18.131710, 23.833595>,  <13.832588, 17.793709, 23.794817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.536352, 18.131710, 23.833595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.612185, 17.741039, 23.873913>,  <14.657685, 17.506638, 23.898104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.612185, 17.741039, 23.873913>,  <14.536352, 18.131710, 23.833595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.612185, 17.741039, 23.873913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664442, 0.052036, -0.745526,
		0.722893, 0.208313, 0.658810,
		0.189584, -0.976677, 0.100795,
		14.669061, 17.448036, 23.904152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197402, 18.218851, 23.796526>,  <14.536352, 18.131710, 23.833595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.197402, 18.218851, 23.796526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.123139, 17.833586, 23.718708>,  <15.078582, 17.602427, 23.672016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.123139, 17.833586, 23.718708>,  <15.197402, 18.218851, 23.796526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.123139, 17.833586, 23.718708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702562, 0.008305, -0.711574,
		0.686978, -0.268788, 0.675140,
		-0.185656, -0.963163, -0.194546,
		15.067443, 17.544636, 23.660345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.146252, 23.356972, 11.414813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.392058, 23.423109, 11.106260>,  <9.539542, 23.462791, 10.921129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.392058, 23.423109, 11.106260>,  <9.146252, 23.356972, 11.414813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.392058, 23.423109, 11.106260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499426, 0.838443, -0.218146,
		0.610690, 0.519302, 0.597816,
		0.614518, 0.165345, -0.771381,
		9.576414, 23.472713, 10.874846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.487363, 24.006304, 11.477195>,  <9.146252, 23.356972, 11.414813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.487363, 24.006304, 11.477195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.432459, 23.892735, 11.097606>,  <9.399516, 23.824593, 10.869852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.432459, 23.892735, 11.097606>,  <9.487363, 24.006304, 11.477195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.432459, 23.892735, 11.097606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518732, 0.836767, -0.175321,
		0.843846, 0.468197, -0.262136,
		-0.137262, -0.283922, -0.948972,
		9.391281, 23.807558, 10.812914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.671579, 24.529446, 10.956213>,  <9.487363, 24.006304, 11.477195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.671579, 24.529446, 10.956213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.396682, 24.276827, 10.812634>,  <9.231743, 24.125256, 10.726487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.396682, 24.276827, 10.812634>,  <9.671579, 24.529446, 10.956213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.396682, 24.276827, 10.812634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555526, 0.775304, -0.300490,
		0.468066, -0.007106, -0.883665,
		-0.687244, -0.631548, -0.358945,
		9.190509, 24.087362, 10.704950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.525842, 24.532568, 10.201342>,  <9.671579, 24.529446, 10.956213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.525842, 24.532568, 10.201342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.206311, 24.434834, 10.421225>,  <9.014593, 24.376192, 10.553154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.206311, 24.434834, 10.421225>,  <9.525842, 24.532568, 10.201342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.206311, 24.434834, 10.421225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503264, 0.772039, -0.388177,
		-0.329549, -0.586733, -0.739690,
		-0.798826, -0.244336, 0.549707,
		8.966663, 24.361532, 10.586137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.928324, 24.412718, 9.804685>,  <9.525842, 24.532568, 10.201342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.928324, 24.412718, 9.804685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.847045, 24.599770, 10.148786>,  <8.798278, 24.712000, 10.355247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.847045, 24.599770, 10.148786>,  <8.928324, 24.412718, 9.804685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.847045, 24.599770, 10.148786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112604, 0.861593, -0.494953,
		-0.972641, -0.197441, -0.122416,
		-0.203197, 0.467628, 0.860253,
		8.786086, 24.740057, 10.406861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.976240, 24.160938, 9.144316>,  <8.928324, 24.412718, 9.804685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.976240, 24.160938, 9.144316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.332726, 24.038994, 9.278657>,  <9.546617, 23.965828, 9.359262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.332726, 24.038994, 9.278657>,  <8.976240, 24.160938, 9.144316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.332726, 24.038994, 9.278657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357824, -0.017502, 0.933625,
		-0.278748, -0.952236, -0.124685,
		0.891214, -0.304861, 0.335854,
		9.600090, 23.947536, 9.379414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.838585, 23.545254, 9.593954>,  <8.976240, 24.160938, 9.144316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.838585, 23.545254, 9.593954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.197847, 23.697916, 9.681275>,  <9.413404, 23.789513, 9.733668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.197847, 23.697916, 9.681275>,  <8.838585, 23.545254, 9.593954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.197847, 23.697916, 9.681275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227468, -0.021553, 0.973547,
		0.376264, -0.924054, 0.067457,
		0.898156, 0.381655, 0.218303,
		9.467294, 23.812412, 9.746766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.771198, 23.391405, 10.355218>,  <8.838585, 23.545254, 9.593954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.771198, 23.391405, 10.355218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.097328, 23.614864, 10.294351>,  <9.293006, 23.748940, 10.257831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.097328, 23.614864, 10.294351>,  <8.771198, 23.391405, 10.355218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.097328, 23.614864, 10.294351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123695, 0.088685, 0.988349,
		0.565637, -0.824648, 0.003204,
		0.815325, 0.558651, -0.152168,
		9.341926, 23.782459, 10.248700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.284431, 22.978075, 9.996160>,  <8.771198, 23.391405, 10.355218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.284431, 22.978075, 9.996160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.444886, 22.888580, 10.351469>,  <8.541159, 22.834885, 10.564655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.444886, 22.888580, 10.351469>,  <8.284431, 22.978075, 9.996160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.444886, 22.888580, 10.351469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804066, -0.550551, 0.224438,
		0.438826, -0.804261, -0.400744,
		0.401136, -0.223736, 0.888275,
		8.565228, 22.821459, 10.617951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.397387, 22.268387, 10.105824>,  <8.284431, 22.978075, 9.996160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.397387, 22.268387, 10.105824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.427087, 22.374899, 10.490236>,  <8.444907, 22.438807, 10.720884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.427087, 22.374899, 10.490236>,  <8.397387, 22.268387, 10.105824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.427087, 22.374899, 10.490236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812074, -0.543195, 0.213247,
		0.578811, -0.796263, 0.175906,
		0.074249, 0.266279, 0.961032,
		8.449362, 22.454782, 10.778546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.425015, 21.712547, 10.527311>,  <8.397387, 22.268387, 10.105824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.425015, 21.712547, 10.527311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.237602, 22.004993, 10.725685>,  <8.125154, 22.180460, 10.844709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.237602, 22.004993, 10.725685>,  <8.425015, 21.712547, 10.527311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.237602, 22.004993, 10.725685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727117, -0.637970, 0.253564,
		0.501775, -0.241799, 0.830515,
		-0.468532, 0.731113, 0.495934,
		8.097043, 22.224327, 10.874465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.224516, 21.500130, 11.148930>,  <8.425015, 21.712547, 10.527311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.224516, 21.500130, 11.148930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.957153, 21.794147, 11.103425>,  <7.796736, 21.970558, 11.076122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.957153, 21.794147, 11.103425>,  <8.224516, 21.500130, 11.148930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.957153, 21.794147, 11.103425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734029, -0.627165, 0.260511,
		0.120141, 0.257631, 0.958745,
		-0.668407, 0.735044, -0.113760,
		7.756631, 22.014662, 11.069297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.942001, 21.817486, 11.815030>,  <8.224516, 21.500130, 11.148930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.942001, 21.817486, 11.815030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.701401, 21.796190, 11.496191>,  <7.557041, 21.783413, 11.304888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.701401, 21.796190, 11.496191>,  <7.942001, 21.817486, 11.815030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.701401, 21.796190, 11.496191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638272, -0.568013, 0.519587,
		-0.480424, 0.821296, 0.307678,
		-0.601500, -0.053240, -0.797097,
		7.520951, 21.780218, 11.257062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.260227, 22.030199, 11.971126>,  <7.942001, 21.817486, 11.815030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.260227, 22.030199, 11.971126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.205635, 21.791624, 11.654737>,  <7.172880, 21.648479, 11.464903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.205635, 21.791624, 11.654737>,  <7.260227, 22.030199, 11.971126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.205635, 21.791624, 11.654737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640128, -0.556267, 0.529908,
		-0.756048, 0.578645, -0.305877,
		-0.136479, -0.596437, -0.790972,
		7.164691, 21.612694, 11.417445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.485263, 21.961210, 11.842319>,  <7.260227, 22.030199, 11.971126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.485263, 21.961210, 11.842319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.681284, 21.650717, 11.683671>,  <6.798897, 21.464420, 11.588483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.681284, 21.650717, 11.683671>,  <6.485263, 21.961210, 11.842319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.681284, 21.650717, 11.683671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623778, -0.630101, 0.462465,
		-0.608890, 0.020768, -0.792983,
		0.490055, -0.776236, -0.396617,
		6.828300, 21.417847, 11.564686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.025209, 21.566420, 11.445403>,  <6.485263, 21.961210, 11.842319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.025209, 21.566420, 11.445403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.307102, 21.285212, 11.483597>,  <6.476238, 21.116488, 11.506514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.307102, 21.285212, 11.483597>,  <6.025209, 21.566420, 11.445403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.307102, 21.285212, 11.483597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675325, -0.623457, 0.394002,
		-0.217461, -0.342149, -0.914136,
		0.704732, -0.703019, 0.095485,
		6.518522, 21.074306, 11.512242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.549921, 21.039181, 11.444637>,  <6.025209, 21.566420, 11.445403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.549921, 21.039181, 11.444637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.908487, 20.875259, 11.512161>,  <6.123627, 20.776907, 11.552676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.908487, 20.875259, 11.512161>,  <5.549921, 21.039181, 11.444637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.908487, 20.875259, 11.512161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441205, -0.788884, 0.427784,
		-0.042136, -0.457953, -0.887977,
		0.896417, -0.409805, 0.168811,
		6.177413, 20.752317, 11.562804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.559989, 20.258314, 11.344953>,  <5.549921, 21.039181, 11.444637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.559989, 20.258314, 11.344953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.891205, 20.322290, 11.559901>,  <6.089935, 20.360676, 11.688870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.891205, 20.322290, 11.559901>,  <5.559989, 20.258314, 11.344953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.891205, 20.322290, 11.559901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106074, -0.896450, 0.430263,
		0.550543, -0.413276, -0.725331,
		0.828040, 0.159939, 0.537372,
		6.139617, 20.370272, 11.721113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.048300, 19.728298, 11.179516>,  <5.559989, 20.258314, 11.344953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.048300, 19.728298, 11.179516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.084383, 19.887245, 11.544802>,  <6.106034, 19.982613, 11.763973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.084383, 19.887245, 11.544802>,  <6.048300, 19.728298, 11.179516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.084383, 19.887245, 11.544802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015769, -0.916269, 0.400253,
		0.995798, -0.050507, -0.076390,
		0.090209, 0.397367, 0.913215,
		6.111446, 20.006454, 11.818767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.392327, 19.282755, 11.600724>,  <6.048300, 19.728298, 11.179516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.392327, 19.282755, 11.600724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.248426, 19.528505, 11.881614>,  <6.162086, 19.675957, 12.050147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.248426, 19.528505, 11.881614>,  <6.392327, 19.282755, 11.600724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.248426, 19.528505, 11.881614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146823, -0.780512, 0.607654,
		0.921424, 0.115502, 0.370996,
		-0.359752, 0.614378, 0.702224,
		6.140501, 19.712818, 12.092280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.789696, 19.195267, 12.146151>,  <6.392327, 19.282755, 11.600724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.789696, 19.195267, 12.146151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.443230, 19.340874, 12.283118>,  <6.235350, 19.428238, 12.365298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.443230, 19.340874, 12.283118>,  <6.789696, 19.195267, 12.146151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.443230, 19.340874, 12.283118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099851, -0.797407, 0.595124,
		0.489681, 0.481285, 0.727033,
		-0.866165, 0.364016, 0.342418,
		6.183380, 19.450079, 12.385843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.694283, 19.142164, 12.908932>,  <6.789696, 19.195267, 12.146151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.694283, 19.142164, 12.908932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.310948, 19.177433, 12.800255>,  <6.080947, 19.198595, 12.735049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.310948, 19.177433, 12.800255>,  <6.694283, 19.142164, 12.908932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.310948, 19.177433, 12.800255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253149, -0.702767, 0.664856,
		-0.132313, 0.705934, 0.695809,
		-0.958337, 0.088174, -0.271692,
		6.023448, 19.203886, 12.718747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.297250, 19.082085, 13.466947>,  <6.694283, 19.142164, 12.908932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.297250, 19.082085, 13.466947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.022180, 19.025713, 13.182063>,  <5.857138, 18.991890, 13.011133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.022180, 19.025713, 13.182063>,  <6.297250, 19.082085, 13.466947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.022180, 19.025713, 13.182063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422493, -0.720090, 0.550428,
		-0.590426, 0.679419, 0.435646,
		-0.687675, -0.140930, -0.712209,
		5.815877, 18.983435, 12.968400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.646896, 18.813938, 13.903484>,  <6.297250, 19.082085, 13.466947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.646896, 18.813938, 13.903484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.584105, 18.702238, 13.524564>,  <5.546431, 18.635218, 13.297212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.584105, 18.702238, 13.524564>,  <5.646896, 18.813938, 13.903484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.584105, 18.702238, 13.524564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440373, -0.838765, 0.320227,
		-0.883985, 0.467434, 0.008694,
		-0.156977, -0.279248, -0.947301,
		5.537012, 18.618464, 13.240374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.922404, 18.629152, 13.827791>,  <5.646896, 18.813938, 13.903484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.922404, 18.629152, 13.827791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.083200, 18.460775, 13.502532>,  <5.179677, 18.359749, 13.307376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.083200, 18.460775, 13.502532>,  <4.922404, 18.629152, 13.827791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.083200, 18.460775, 13.502532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380422, -0.884568, 0.269850,
		-0.832876, 0.200862, -0.515724,
		0.401990, -0.420944, -0.813148,
		5.203797, 18.334492, 13.258588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.429161, 18.151350, 13.748094>,  <4.922404, 18.629152, 13.827791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.429161, 18.151350, 13.748094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.746583, 18.033316, 13.535231>,  <4.937037, 17.962494, 13.407513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.746583, 18.033316, 13.535231>,  <4.429161, 18.151350, 13.748094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.746583, 18.033316, 13.535231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180309, -0.949301, 0.257519,
		-0.581169, -0.108403, -0.806530,
		0.793556, -0.295087, -0.532158,
		4.984650, 17.944790, 13.375584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.169625, 17.546442, 13.220057>,  <4.429161, 18.151350, 13.748094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.169625, 17.546442, 13.220057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.561010, 17.493670, 13.283559>,  <4.795842, 17.462006, 13.321660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.561010, 17.493670, 13.283559>,  <4.169625, 17.546442, 13.220057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.561010, 17.493670, 13.283559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158315, -0.973163, 0.167005,
		0.132462, -0.188541, -0.973091,
		0.978463, -0.131933, 0.158757,
		4.854549, 17.454090, 13.331185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.294590, 16.882658, 12.965214>,  <4.169625, 17.546442, 13.220057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.294590, 16.882658, 12.965214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.600379, 16.955591, 13.212546>,  <4.783854, 16.999352, 13.360946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.600379, 16.955591, 13.212546>,  <4.294590, 16.882658, 12.965214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.600379, 16.955591, 13.212546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106678, -0.910164, 0.400277,
		0.635766, -0.371964, -0.676347,
		0.764475, 0.182331, 0.618331,
		4.829722, 17.010290, 13.398046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.804465, 16.342026, 12.845060>,  <4.294590, 16.882658, 12.965214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.804465, 16.342026, 12.845060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.881598, 16.499643, 13.204515>,  <4.927877, 16.594213, 13.420187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.881598, 16.499643, 13.204515>,  <4.804465, 16.342026, 12.845060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.881598, 16.499643, 13.204515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057132, -0.918778, 0.390618,
		0.979567, -0.023982, -0.199681,
		0.192831, 0.394045, 0.898635,
		4.939447, 16.617857, 13.474105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.305749, 15.884555, 13.049142>,  <4.804465, 16.342026, 12.845060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.305749, 15.884555, 13.049142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.160655, 16.074324, 13.369977>,  <5.073598, 16.188185, 13.562478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.160655, 16.074324, 13.369977>,  <5.305749, 15.884555, 13.049142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.160655, 16.074324, 13.369977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017789, -0.864078, 0.503043,
		0.931722, 0.168203, 0.321872,
		-0.362736, 0.474422, 0.802088,
		5.051834, 16.216650, 13.610603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.722577, 15.723660, 13.553674>,  <5.305749, 15.884555, 13.049142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.722577, 15.723660, 13.553674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.384279, 15.850086, 13.725636>,  <5.181301, 15.925942, 13.828814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.384279, 15.850086, 13.725636>,  <5.722577, 15.723660, 13.553674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.384279, 15.850086, 13.725636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013453, -0.818062, 0.574972,
		0.533419, 0.480496, 0.696123,
		-0.845744, 0.316066, 0.429906,
		5.130556, 15.944906, 13.854609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.070421, 15.206142, 13.616471>,  <5.722577, 15.723660, 13.553674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.070421, 15.206142, 13.616471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.444867, 15.077281, 13.672906>,  <6.669535, 14.999964, 13.706766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.444867, 15.077281, 13.672906>,  <6.070421, 15.206142, 13.616471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.444867, 15.077281, 13.672906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351535, 0.869126, -0.347913,
		-0.010540, 0.375283, 0.926850,
		0.936115, -0.322153, 0.141085,
		6.725702, 14.980635, 13.715232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.470888, 15.816172, 14.091628>,  <6.070421, 15.206142, 13.616471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.470888, 15.816172, 14.091628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.735163, 15.594207, 13.889415>,  <6.893728, 15.461028, 13.768087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.735163, 15.594207, 13.889415>,  <6.470888, 15.816172, 14.091628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.735163, 15.594207, 13.889415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524131, 0.823123, -0.218532,
		0.537382, -0.120584, 0.834674,
		0.660688, -0.554913, -0.505533,
		6.933370, 15.427732, 13.737755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.152675, 15.989701, 14.241232>,  <6.470888, 15.816172, 14.091628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.152675, 15.989701, 14.241232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.194050, 15.798364, 13.892408>,  <7.218875, 15.683561, 13.683114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.194050, 15.798364, 13.892408>,  <7.152675, 15.989701, 14.241232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.194050, 15.798364, 13.892408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448292, 0.805081, -0.388431,
		0.887882, -0.350759, 0.297714,
		0.103438, -0.478343, -0.872060,
		7.225081, 15.654860, 13.630791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.912801, 15.979369, 14.066188>,  <7.152675, 15.989701, 14.241232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.912801, 15.979369, 14.066188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.708351, 15.905636, 13.730385>,  <7.585681, 15.861396, 13.528903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.708351, 15.905636, 13.730385>,  <7.912801, 15.979369, 14.066188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.708351, 15.905636, 13.730385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527055, 0.704325, -0.475542,
		0.678943, -0.685528, -0.262846,
		-0.511127, -0.184332, -0.839507,
		7.555014, 15.850335, 13.478533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.449328, 15.955083, 13.652855>,  <7.912801, 15.979369, 14.066188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.449328, 15.955083, 13.652855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.130687, 16.041555, 13.427045>,  <7.939502, 16.093439, 13.291559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.130687, 16.041555, 13.427045>,  <8.449328, 15.955083, 13.652855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.130687, 16.041555, 13.427045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528965, 0.701319, -0.477857,
		0.292608, -0.679276, -0.673026,
		-0.796603, 0.216183, -0.564525,
		7.891706, 16.106411, 13.257688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.734577, 16.114891, 12.864701>,  <8.449328, 15.955083, 13.652855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.734577, 16.114891, 12.864701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.360019, 16.253836, 12.884699>,  <8.135283, 16.337202, 12.896697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.360019, 16.253836, 12.884699>,  <8.734577, 16.114891, 12.864701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.360019, 16.253836, 12.884699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273668, 0.811943, -0.515611,
		-0.219697, -0.469135, -0.855363,
		-0.936397, 0.347364, 0.049994,
		8.079100, 16.358046, 12.899697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.623441, 16.408916, 12.223465>,  <8.734577, 16.114891, 12.864701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.623441, 16.408916, 12.223465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.369819, 16.583069, 12.479095>,  <8.217646, 16.687561, 12.632474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.369819, 16.583069, 12.479095>,  <8.623441, 16.408916, 12.223465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.369819, 16.583069, 12.479095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359772, 0.897636, -0.254584,
		-0.684499, 0.068501, -0.725789,
		-0.634055, 0.435381, 0.639076,
		8.179603, 16.713684, 12.670818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.237191, 16.977139, 11.846828>,  <8.623441, 16.408916, 12.223465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.237191, 16.977139, 11.846828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.205266, 17.039816, 12.240595>,  <8.186110, 17.077423, 12.476855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.205266, 17.039816, 12.240595>,  <8.237191, 16.977139, 11.846828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.205266, 17.039816, 12.240595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192339, 0.971430, -0.139031,
		-0.978077, 0.178246, -0.107671,
		-0.079813, 0.156693, 0.984417,
		8.181322, 17.086824, 12.535920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.063929, 17.698803, 11.879003>,  <8.237191, 16.977139, 11.846828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.063929, 17.698803, 11.879003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.172215, 17.631474, 12.258134>,  <8.237187, 17.591076, 12.485613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.172215, 17.631474, 12.258134>,  <8.063929, 17.698803, 11.879003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.172215, 17.631474, 12.258134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273407, 0.957494, 0.091948,
		-0.923017, 0.234251, 0.305231,
		0.270718, -0.168322, 0.947829,
		8.253430, 17.580976, 12.542482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.734243, 18.185026, 12.138680>,  <8.063929, 17.698803, 11.879003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.734243, 18.185026, 12.138680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.007555, 18.094040, 12.416208>,  <8.171542, 18.039448, 12.582726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.007555, 18.094040, 12.416208>,  <7.734243, 18.185026, 12.138680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.007555, 18.094040, 12.416208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152167, 0.973733, 0.169381,
		-0.714124, -0.010158, 0.699946,
		0.683280, -0.227467, 0.693820,
		8.212539, 18.025799, 12.624354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.578310, 18.619478, 12.673819>,  <7.734243, 18.185026, 12.138680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.578310, 18.619478, 12.673819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.946442, 18.492683, 12.765479>,  <8.167321, 18.416607, 12.820476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.946442, 18.492683, 12.765479>,  <7.578310, 18.619478, 12.673819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.946442, 18.492683, 12.765479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223813, 0.907244, 0.356113,
		-0.320781, -0.276455, 0.905910,
		0.920330, -0.316989, 0.229152,
		8.222541, 18.397587, 12.834225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.724780, 18.721815, 13.404541>,  <7.578310, 18.619478, 12.673819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.724780, 18.721815, 13.404541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.096347, 18.695717, 13.258745>,  <8.319287, 18.680058, 13.171268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.096347, 18.695717, 13.258745>,  <7.724780, 18.721815, 13.404541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.096347, 18.695717, 13.258745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292329, 0.733400, 0.613733,
		0.227275, -0.676659, 0.700342,
		0.928919, -0.065245, -0.364490,
		8.375023, 18.676144, 13.149398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.237864, 18.647007, 14.007993>,  <7.724780, 18.721815, 13.404541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.237864, 18.647007, 14.007993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.424648, 18.797285, 13.687793>,  <8.536719, 18.887451, 13.495673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.424648, 18.797285, 13.687793>,  <8.237864, 18.647007, 14.007993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.424648, 18.797285, 13.687793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177888, 0.846842, 0.501214,
		0.866202, -0.376445, 0.328608,
		0.466959, 0.375697, -0.800501,
		8.564736, 18.909994, 13.447642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.903053, 19.051519, 14.208303>,  <8.237864, 18.647007, 14.007993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.903053, 19.051519, 14.208303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.788155, 19.184607, 13.849018>,  <8.719215, 19.264460, 13.633447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.788155, 19.184607, 13.849018>,  <8.903053, 19.051519, 14.208303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.788155, 19.184607, 13.849018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007075, 0.936970, 0.349338,
		0.957830, 0.106702, -0.266788,
		-0.287247, 0.332719, -0.898213,
		8.701981, 19.284422, 13.579555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.367831, 19.540365, 14.097412>,  <8.903053, 19.051519, 14.208303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.367831, 19.540365, 14.097412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.070698, 19.643187, 13.850148>,  <8.892418, 19.704880, 13.701790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.070698, 19.643187, 13.850148>,  <9.367831, 19.540365, 14.097412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.070698, 19.643187, 13.850148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032408, 0.936074, 0.350307,
		0.668690, 0.240187, -0.703679,
		-0.742835, 0.257052, -0.618159,
		8.847847, 19.720303, 13.664701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.533414, 20.234375, 13.840287>,  <9.367831, 19.540365, 14.097412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.533414, 20.234375, 13.840287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.148708, 20.187071, 13.741476>,  <8.917885, 20.158688, 13.682189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.148708, 20.187071, 13.741476>,  <9.533414, 20.234375, 13.840287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.148708, 20.187071, 13.741476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155682, 0.978141, 0.137856,
		0.225325, 0.171043, -0.959153,
		-0.961765, -0.118260, -0.247027,
		8.860179, 20.151592, 13.667368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.331619, 20.821566, 13.539985>,  <9.533414, 20.234375, 13.840287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.331619, 20.821566, 13.539985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.959487, 20.694561, 13.613382>,  <8.736207, 20.618359, 13.657421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.959487, 20.694561, 13.613382>,  <9.331619, 20.821566, 13.539985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.959487, 20.694561, 13.613382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225978, 0.890435, 0.395043,
		-0.288820, 0.326055, -0.900151,
		-0.930332, -0.317510, 0.183494,
		8.680387, 20.599308, 13.668430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.839685, 21.298458, 13.261342>,  <9.331619, 20.821566, 13.539985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.839685, 21.298458, 13.261342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.650781, 21.095720, 13.549808>,  <8.537437, 20.974077, 13.722887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.650781, 21.095720, 13.549808>,  <8.839685, 21.298458, 13.261342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.650781, 21.095720, 13.549808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314965, 0.861168, 0.398982,
		-0.823265, -0.038717, -0.566335,
		-0.472262, -0.506844, 0.721164,
		8.509102, 20.943666, 13.766157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.138073, 21.538805, 13.166224>,  <8.839685, 21.298458, 13.261342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.138073, 21.538805, 13.166224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.191202, 21.400244, 13.537678>,  <8.223080, 21.317108, 13.760550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.191202, 21.400244, 13.537678>,  <8.138073, 21.538805, 13.166224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.191202, 21.400244, 13.537678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361606, 0.855418, 0.370811,
		-0.922821, -0.385053, -0.011642,
		0.132823, -0.346402, 0.928635,
		8.231050, 21.296324, 13.816268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.461397, 21.698933, 13.489435>,  <8.138073, 21.538805, 13.166224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.461397, 21.698933, 13.489435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.797517, 21.680576, 13.705504>,  <7.999189, 21.669563, 13.835146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.797517, 21.680576, 13.705504>,  <7.461397, 21.698933, 13.489435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.797517, 21.680576, 13.705504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295276, 0.796898, 0.527035,
		-0.454650, -0.602368, 0.656084,
		0.840301, -0.045891, 0.540174,
		8.049607, 21.666809, 13.867557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.327326, 21.538523, 14.187344>,  <7.461397, 21.698933, 13.489435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.327326, 21.538523, 14.187344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.640765, 21.767721, 14.091301>,  <7.828828, 21.905241, 14.033675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.640765, 21.767721, 14.091301>,  <7.327326, 21.538523, 14.187344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.640765, 21.767721, 14.091301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456981, 0.793419, 0.402063,
		0.420886, -0.205332, 0.883569,
		0.783597, 0.572997, -0.240106,
		7.875844, 21.939621, 14.019269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<13.902691, 14.808544, 27.653557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.739448, 14.522079, 27.427086>,  <13.641501, 14.350199, 27.291204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.739448, 14.522079, 27.427086>,  <13.902691, 14.808544, 27.653557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.739448, 14.522079, 27.427086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466992, -0.369128, 0.803531,
		-0.784452, 0.592329, -0.183798,
		-0.408109, -0.716164, -0.566176,
		13.617015, 14.307229, 27.257233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.233321, 14.693845, 27.863365>,  <13.902691, 14.808544, 27.653557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.233321, 14.693845, 27.863365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.322108, 14.352139, 27.675337>,  <13.375381, 14.147117, 27.562519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.322108, 14.352139, 27.675337>,  <13.233321, 14.693845, 27.863365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.322108, 14.352139, 27.675337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564294, -0.505704, 0.652561,
		-0.795175, 0.120411, -0.594305,
		0.221967, -0.854263, -0.470070,
		13.388699, 14.095860, 27.534315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.608059, 14.314013, 27.830112>,  <13.233321, 14.693845, 27.863365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.608059, 14.314013, 27.830112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.888722, 14.035199, 27.771027>,  <13.057120, 13.867911, 27.735575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.888722, 14.035199, 27.771027>,  <12.608059, 14.314013, 27.830112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.888722, 14.035199, 27.771027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544947, -0.658547, 0.518988,
		-0.459030, -0.283655, -0.841921,
		0.701658, -0.697034, -0.147716,
		13.099219, 13.826089, 27.726711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.192182, 13.700805, 27.820860>,  <12.608059, 14.314013, 27.830112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.192182, 13.700805, 27.820860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.567610, 13.578499, 27.884851>,  <12.792867, 13.505116, 27.923246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.567610, 13.578499, 27.884851>,  <12.192182, 13.700805, 27.820860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.567610, 13.578499, 27.884851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343816, -0.788823, 0.509459,
		-0.029581, -0.533166, -0.845493,
		0.938571, -0.305765, 0.159977,
		12.849181, 13.486770, 27.932844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.169561, 13.046412, 27.690590>,  <12.192182, 13.700805, 27.820860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.169561, 13.046412, 27.690590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.502504, 13.063281, 27.911642>,  <12.702271, 13.073403, 28.044273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.502504, 13.063281, 27.911642>,  <12.169561, 13.046412, 27.690590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.502504, 13.063281, 27.911642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342928, -0.744130, 0.573298,
		0.435408, -0.666702, -0.604920,
		0.832358, 0.042175, 0.552631,
		12.752212, 13.075933, 28.077431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.452074, 12.356924, 27.725658>,  <12.169561, 13.046412, 27.690590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.452074, 12.356924, 27.725658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.578903, 12.560296, 28.045900>,  <12.655001, 12.682320, 28.238045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.578903, 12.560296, 28.045900>,  <12.452074, 12.356924, 27.725658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.578903, 12.560296, 28.045900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311549, -0.741475, 0.594266,
		0.895769, -0.437852, -0.076700,
		0.317072, 0.508430, 0.800603,
		12.674025, 12.712825, 28.286081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.804484, 11.802641, 28.154839>,  <12.452074, 12.356924, 27.725658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.804484, 11.802641, 28.154839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.713059, 12.115168, 28.387150>,  <12.658204, 12.302684, 28.526537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.713059, 12.115168, 28.387150>,  <12.804484, 11.802641, 28.154839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.713059, 12.115168, 28.387150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186422, -0.620656, 0.761599,
		0.955513, 0.065804, 0.287514,
		-0.228563, 0.781317, 0.580778,
		12.644490, 12.349563, 28.561384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.142417, 11.716704, 28.685389>,  <12.804484, 11.802641, 28.154839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.142417, 11.716704, 28.685389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.853245, 11.960596, 28.815372>,  <12.679741, 12.106932, 28.893364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.853245, 11.960596, 28.815372>,  <13.142417, 11.716704, 28.685389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.853245, 11.960596, 28.815372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196117, -0.632076, 0.749679,
		0.662501, 0.478236, 0.576526,
		-0.722932, 0.609730, 0.324961,
		12.636365, 12.143515, 28.912861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.110810, 11.622828, 29.358587>,  <13.142417, 11.716704, 28.685389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.110810, 11.622828, 29.358587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.753848, 11.800998, 29.329716>,  <12.539671, 11.907900, 29.312393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.753848, 11.800998, 29.329716>,  <13.110810, 11.622828, 29.358587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.753848, 11.800998, 29.329716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335031, -0.546903, 0.767236,
		0.302269, 0.708869, 0.637290,
		-0.892406, 0.445424, -0.072181,
		12.486126, 11.934625, 29.308062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.972197, 11.795873, 29.994701>,  <13.110810, 11.622828, 29.358587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.972197, 11.795873, 29.994701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.606990, 11.811300, 29.832264>,  <12.387866, 11.820557, 29.734802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.606990, 11.811300, 29.832264>,  <12.972197, 11.795873, 29.994701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.606990, 11.811300, 29.832264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385323, -0.408295, 0.827539,
		-0.133890, 0.912035, 0.387642,
		-0.913017, 0.038568, -0.406094,
		12.333085, 11.822871, 29.710436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.375010, 11.915998, 30.597837>,  <12.972197, 11.795873, 29.994701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.375010, 11.915998, 30.597837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.206933, 11.752020, 30.274015>,  <12.106087, 11.653633, 30.079721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.206933, 11.752020, 30.274015>,  <12.375010, 11.915998, 30.597837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.206933, 11.752020, 30.274015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586916, -0.557629, 0.587009,
		-0.692074, 0.721799, -0.006291,
		-0.420194, -0.409946, -0.809556,
		12.080874, 11.629036, 30.031149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.706492, 11.872318, 30.804291>,  <12.375010, 11.915998, 30.597837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.706492, 11.872318, 30.804291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.771933, 11.614049, 30.505938>,  <11.811196, 11.459087, 30.326925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.771933, 11.614049, 30.505938>,  <11.706492, 11.872318, 30.804291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.771933, 11.614049, 30.505938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457084, -0.719630, 0.522692,
		-0.874248, 0.255419, -0.412857,
		0.163599, -0.645673, -0.745884,
		11.821012, 11.420347, 30.282173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.146264, 11.416481, 30.766350>,  <11.706492, 11.872318, 30.804291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.146264, 11.416481, 30.766350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.456617, 11.235114, 30.590887>,  <11.642829, 11.126294, 30.485609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.456617, 11.235114, 30.590887>,  <11.146264, 11.416481, 30.766350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.456617, 11.235114, 30.590887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237076, -0.853900, 0.463303,
		-0.584638, -0.255474, -0.770021,
		0.775883, -0.453417, -0.438655,
		11.689382, 11.099089, 30.459290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.050942, 11.848612, 31.513586>,  <11.146264, 11.416481, 30.766350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.050942, 11.848612, 31.513586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.443563, 11.863256, 31.588652>,  <11.679134, 11.872043, 31.633690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.443563, 11.863256, 31.588652>,  <11.050942, 11.848612, 31.513586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.443563, 11.863256, 31.588652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171011, 0.270866, -0.947305,
		-0.085513, 0.961920, 0.259608,
		0.981551, 0.036611, 0.187662,
		11.738028, 11.874240, 31.644951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.545397, 12.392242, 31.702103>,  <11.050942, 11.848612, 31.513586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.545397, 12.392242, 31.702103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.256097, 12.652152, 31.795660>,  <10.082517, 12.808098, 31.851793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.256097, 12.652152, 31.795660>,  <10.545397, 12.392242, 31.702103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.256097, 12.652152, 31.795660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307899, 0.606563, -0.732993,
		-0.618150, -0.458121, -0.638761,
		-0.723249, 0.649774, 0.233892,
		10.039123, 12.847084, 31.865828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.246321, 12.571619, 31.105062>,  <10.545397, 12.392242, 31.702103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.246321, 12.571619, 31.105062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.132822, 12.867297, 31.349382>,  <10.064723, 13.044704, 31.495974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.132822, 12.867297, 31.349382>,  <10.246321, 12.571619, 31.105062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.132822, 12.867297, 31.349382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224010, 0.670454, -0.707326,
		-0.932366, -0.063876, -0.355827,
		-0.283746, 0.739196, 0.610800,
		10.047698, 13.089056, 31.532623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.801889, 13.062320, 30.673609>,  <10.246321, 12.571619, 31.105062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.801889, 13.062320, 30.673609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.940658, 13.276996, 30.981274>,  <10.023919, 13.405801, 31.165873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.940658, 13.276996, 30.981274>,  <9.801889, 13.062320, 30.673609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.940658, 13.276996, 30.981274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204767, 0.756969, -0.620539,
		-0.915269, 0.372777, 0.152712,
		0.346921, 0.536689, 0.769163,
		10.044734, 13.438003, 31.212023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.519562, 13.762356, 30.518993>,  <9.801889, 13.062320, 30.673609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.519562, 13.762356, 30.518993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.844840, 13.775873, 30.751398>,  <10.040007, 13.783984, 30.890841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.844840, 13.775873, 30.751398>,  <9.519562, 13.762356, 30.518993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.844840, 13.775873, 30.751398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396235, 0.699061, -0.595241,
		-0.426277, 0.714263, 0.555082,
		0.813195, 0.033794, 0.581009,
		10.088799, 13.786012, 30.925701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.744337, 14.477451, 30.542667>,  <9.519562, 13.762356, 30.518993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.744337, 14.477451, 30.542667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.082499, 14.284811, 30.635059>,  <10.285396, 14.169227, 30.690495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.082499, 14.284811, 30.635059>,  <9.744337, 14.477451, 30.542667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.082499, 14.284811, 30.635059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500766, 0.564220, -0.656422,
		0.185809, 0.670609, 0.718163,
		0.845405, -0.481600, 0.230981,
		10.336120, 14.140331, 30.704353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.169144, 14.979224, 30.603165>,  <9.744337, 14.477451, 30.542667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.169144, 14.979224, 30.603165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.411599, 14.668095, 30.536730>,  <10.557073, 14.481417, 30.496868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.411599, 14.668095, 30.536730>,  <10.169144, 14.979224, 30.603165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.411599, 14.668095, 30.536730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418095, 0.489244, -0.765400,
		0.676603, 0.394499, 0.621755,
		0.606139, -0.777824, -0.166086,
		10.593441, 14.434748, 30.486904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.742856, 15.252465, 30.431372>,  <10.169144, 14.979224, 30.603165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.742856, 15.252465, 30.431372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.807841, 14.882705, 30.293335>,  <10.846832, 14.660849, 30.210514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.807841, 14.882705, 30.293335>,  <10.742856, 15.252465, 30.431372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.807841, 14.882705, 30.293335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367370, 0.381260, -0.848339,
		0.915776, 0.011048, 0.401538,
		0.162463, -0.924402, -0.345090,
		10.856580, 14.605384, 30.189808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.358863, 15.300290, 30.061373>,  <10.742856, 15.252465, 30.431372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.358863, 15.300290, 30.061373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.199469, 14.962382, 29.918503>,  <11.103832, 14.759638, 29.832781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.199469, 14.962382, 29.918503>,  <11.358863, 15.300290, 30.061373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.199469, 14.962382, 29.918503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243236, 0.278149, -0.929230,
		0.884333, -0.457163, 0.094640,
		-0.398486, -0.844769, -0.357175,
		11.079923, 14.708952, 29.811350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.827327, 15.140871, 29.626928>,  <11.358863, 15.300290, 30.061373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.827327, 15.140871, 29.626928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.510053, 14.923722, 29.516548>,  <11.319689, 14.793433, 29.450319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.510053, 14.923722, 29.516548>,  <11.827327, 15.140871, 29.626928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.510053, 14.923722, 29.516548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306121, 0.036293, -0.951301,
		0.526449, -0.839031, 0.137397,
		-0.793185, -0.542871, -0.275952,
		11.272098, 14.760861, 29.433764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.003006, 14.712994, 29.107786>,  <11.827327, 15.140871, 29.626928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.003006, 14.712994, 29.107786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.608500, 14.741995, 29.048426>,  <11.371796, 14.759396, 29.012810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.608500, 14.741995, 29.048426>,  <12.003006, 14.712994, 29.107786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.608500, 14.741995, 29.048426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163685, 0.309027, -0.936862,
		-0.022066, -0.948286, -0.316650,
		-0.986266, 0.072504, -0.148401,
		11.312620, 14.763746, 29.003904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.909224, 14.352594, 28.452425>,  <12.003006, 14.712994, 29.107786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.909224, 14.352594, 28.452425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.595587, 14.595559, 28.503416>,  <11.407405, 14.741338, 28.534012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.595587, 14.595559, 28.503416>,  <11.909224, 14.352594, 28.452425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.595587, 14.595559, 28.503416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105085, 0.332361, -0.937280,
		-0.611683, -0.721518, -0.324432,
		-0.784092, 0.607411, 0.127479,
		11.360359, 14.777782, 28.541660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.528998, 14.230936, 27.917551>,  <11.909224, 14.352594, 28.452425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.528998, 14.230936, 27.917551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.368432, 14.581213, 28.024904>,  <11.272092, 14.791379, 28.089315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.368432, 14.581213, 28.024904>,  <11.528998, 14.230936, 27.917551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.368432, 14.581213, 28.024904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181693, 0.363339, -0.913768,
		-0.897693, -0.318039, -0.304957,
		-0.401417, 0.875692, 0.268382,
		11.248007, 14.843921, 28.105419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.115237, 14.502033, 27.214117>,  <11.528998, 14.230936, 27.917551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.115237, 14.502033, 27.214117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.147051, 14.800801, 27.478172>,  <11.166139, 14.980062, 27.636606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.147051, 14.800801, 27.478172>,  <11.115237, 14.502033, 27.214117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.147051, 14.800801, 27.478172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265362, 0.622477, -0.736278,
		-0.960863, 0.233735, -0.148697,
		0.079533, 0.746921, 0.660139,
		11.170911, 15.024878, 27.676214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.710395, 14.982601, 26.935238>,  <11.115237, 14.502033, 27.214117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.710395, 14.982601, 26.935238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.981483, 15.146216, 27.179659>,  <11.144135, 15.244386, 27.326311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.981483, 15.146216, 27.179659>,  <10.710395, 14.982601, 26.935238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.981483, 15.146216, 27.179659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339590, 0.562968, -0.753489,
		-0.652210, 0.718161, 0.242628,
		0.677718, 0.409039, 0.611053,
		11.184798, 15.268929, 27.362974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.030544, 15.369919, 26.858057>,  <10.710395, 14.982601, 26.935238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.030544, 15.369919, 26.858057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.738966, 15.265062, 26.605099>,  <9.564019, 15.202148, 26.453323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.738966, 15.265062, 26.605099>,  <10.030544, 15.369919, 26.858057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.738966, 15.265062, 26.605099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445462, -0.519811, 0.728945,
		-0.519811, 0.813068, 0.262140,
		-0.728945, -0.262140, -0.632394,
		9.520283, 15.186420, 26.415380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.458032, 15.617760, 27.178539>,  <10.030544, 15.369919, 26.858057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.458032, 15.617760, 27.178539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.355363, 15.318951, 26.933239>,  <9.293761, 15.139665, 26.786058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.355363, 15.318951, 26.933239>,  <9.458032, 15.617760, 27.178539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.355363, 15.318951, 26.933239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445925, -0.471404, 0.760875,
		-0.857479, 0.468759, -0.212120,
		-0.256672, -0.747024, -0.613250,
		9.278361, 15.094844, 26.749264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.690125, 15.495469, 27.360020>,  <9.458032, 15.617760, 27.178539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.690125, 15.495469, 27.360020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.892334, 15.196289, 27.187965>,  <9.013659, 15.016781, 27.084732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.892334, 15.196289, 27.187965>,  <8.690125, 15.495469, 27.360020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.892334, 15.196289, 27.187965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251520, -0.604623, 0.755757,
		-0.825340, -0.273863, -0.493774,
		0.505521, -0.747951, -0.430138,
		9.043990, 14.971904, 27.058924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.170755, 15.020421, 27.358932>,  <8.690125, 15.495469, 27.360020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.170755, 15.020421, 27.358932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.508606, 14.809820, 27.320150>,  <8.711316, 14.683459, 27.296881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.508606, 14.809820, 27.320150>,  <8.170755, 15.020421, 27.358932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.508606, 14.809820, 27.320150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303318, -0.619863, 0.723718,
		-0.441140, -0.581863, -0.683250,
		0.844626, -0.526503, -0.096957,
		8.761993, 14.651869, 27.291063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.927463, 14.316563, 27.227661>,  <8.170755, 15.020421, 27.358932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.927463, 14.316563, 27.227661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.303598, 14.268264, 27.354898>,  <8.529280, 14.239285, 27.431240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.303598, 14.268264, 27.354898>,  <7.927463, 14.316563, 27.227661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.303598, 14.268264, 27.354898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318423, -0.641713, 0.697719,
		0.119876, -0.757380, -0.641876,
		0.940339, -0.120748, 0.318093,
		8.585700, 14.232039, 27.450327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.062170, 13.636973, 27.242889>,  <7.927463, 14.316563, 27.227661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.062170, 13.636973, 27.242889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.323597, 13.782685, 27.508265>,  <8.480453, 13.870112, 27.667490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.323597, 13.782685, 27.508265>,  <8.062170, 13.636973, 27.242889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.323597, 13.782685, 27.508265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294493, -0.685088, 0.666280,
		0.697226, -0.630836, -0.340472,
		0.653567, 0.364281, 0.663438,
		8.519667, 13.891970, 27.707296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.200535, 13.069796, 27.621698>,  <8.062170, 13.636973, 27.242889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.200535, 13.069796, 27.621698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.361112, 13.354684, 27.852032>,  <8.457458, 13.525617, 27.990232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.361112, 13.354684, 27.852032>,  <8.200535, 13.069796, 27.621698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.361112, 13.354684, 27.852032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322125, -0.478757, 0.816718,
		0.857368, -0.513356, 0.037230,
		0.401443, 0.712220, 0.575835,
		8.481544, 13.568350, 28.024782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.742316, 12.567696, 27.506578>,  <8.200535, 13.069796, 27.621698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.742316, 12.567696, 27.506578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.687143, 12.220949, 27.314945>,  <8.654039, 12.012901, 27.199966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.687143, 12.220949, 27.314945>,  <8.742316, 12.567696, 27.506578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.687143, 12.220949, 27.314945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319570, 0.418883, -0.849948,
		0.937470, -0.270336, 0.219247,
		-0.137933, -0.866865, -0.479082,
		8.645763, 11.960890, 27.171221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.321461, 12.532224, 27.097254>,  <8.742316, 12.567696, 27.506578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.321461, 12.532224, 27.097254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.058594, 12.285714, 26.923662>,  <8.900873, 12.137808, 26.819508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.058594, 12.285714, 26.923662>,  <9.321461, 12.532224, 27.097254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.058594, 12.285714, 26.923662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455758, 0.133695, -0.880006,
		0.600346, -0.776100, 0.193012,
		-0.657168, -0.616275, -0.433978,
		8.861444, 12.100832, 26.793468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.733275, 12.050806, 26.788807>,  <9.321461, 12.532224, 27.097254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.733275, 12.050806, 26.788807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.384008, 12.052264, 26.593845>,  <9.174448, 12.053139, 26.476868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.384008, 12.052264, 26.593845>,  <9.733275, 12.050806, 26.788807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.384008, 12.052264, 26.593845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486637, 0.063095, -0.871323,
		0.027568, -0.998001, -0.056871,
		-0.873169, 0.003655, -0.487404,
		9.122058, 12.053358, 26.447624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.902121, 11.776467, 26.115522>,  <9.733275, 12.050806, 26.788807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.902121, 11.776467, 26.115522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.525510, 11.902755, 26.068447>,  <9.299543, 11.978527, 26.040201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.525510, 11.902755, 26.068447>,  <9.902121, 11.776467, 26.115522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.525510, 11.902755, 26.068447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175745, 0.162149, -0.970990,
		-0.287475, -0.934896, -0.208154,
		-0.941526, 0.315718, -0.117689,
		9.243052, 11.997470, 26.033140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.638968, 11.262356, 25.745928>,  <9.902121, 11.776467, 26.115522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.638968, 11.262356, 25.745928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.449674, 11.609091, 25.683136>,  <9.336097, 11.817132, 25.645462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.449674, 11.609091, 25.683136>,  <9.638968, 11.262356, 25.745928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.449674, 11.609091, 25.683136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208532, -0.062900, -0.975991,
		-0.855899, -0.494608, -0.150997,
		-0.473235, 0.866837, -0.156978,
		9.307703, 11.869142, 25.636044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.455496, 11.276250, 24.981657>,  <9.638968, 11.262356, 25.745928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.455496, 11.276250, 24.981657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.419034, 11.659379, 25.090662>,  <9.397157, 11.889256, 25.156065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.419034, 11.659379, 25.090662>,  <9.455496, 11.276250, 24.981657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.419034, 11.659379, 25.090662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270315, 0.287178, -0.918944,
		-0.958447, -0.010101, -0.285092,
		-0.091155, 0.957824, 0.272515,
		9.391687, 11.946726, 25.172417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.989004, 11.616961, 24.478077>,  <9.455496, 11.276250, 24.981657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.989004, 11.616961, 24.478077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.245747, 11.876152, 24.642099>,  <9.399792, 12.031667, 24.740513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.245747, 11.876152, 24.642099>,  <8.989004, 11.616961, 24.478077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.245747, 11.876152, 24.642099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426688, 0.142516, -0.893099,
		-0.637149, 0.748206, -0.185010,
		0.641856, 0.647979, 0.410054,
		9.438303, 12.070546, 24.765116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<12.563293, 8.695474, 29.517920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.428351, 9.064470, 29.592964>,  <12.347386, 9.285869, 29.637991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.428351, 9.064470, 29.592964>,  <12.563293, 8.695474, 29.517920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.428351, 9.064470, 29.592964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308317, 0.296578, -0.903871,
		-0.889456, -0.247081, -0.384472,
		-0.337356, 0.922493, 0.187614,
		12.327145, 9.341218, 29.649248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.040701, 9.026262, 29.011086>,  <12.563293, 8.695474, 29.517920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.040701, 9.026262, 29.011086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.237935, 9.329010, 29.182674>,  <12.356276, 9.510658, 29.285627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.237935, 9.329010, 29.182674>,  <12.040701, 9.026262, 29.011086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.237935, 9.329010, 29.182674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276218, 0.331370, -0.902163,
		-0.824968, 0.563332, -0.045667,
		0.493084, 0.756869, 0.428972,
		12.385860, 9.556070, 29.311365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.720984, 9.724041, 28.818192>,  <12.040701, 9.026262, 29.011086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.720984, 9.724041, 28.818192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.106989, 9.769822, 28.912556>,  <12.338592, 9.797291, 28.969175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.106989, 9.769822, 28.912556>,  <11.720984, 9.724041, 28.818192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.106989, 9.769822, 28.912556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205979, 0.225842, -0.952139,
		-0.162253, 0.967417, 0.194365,
		0.965011, 0.114452, 0.235912,
		12.396492, 9.804158, 28.983330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.966570, 10.299891, 28.438576>,  <11.720984, 9.724041, 28.818192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.966570, 10.299891, 28.438576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.314711, 10.145500, 28.560892>,  <12.523595, 10.052865, 28.634281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.314711, 10.145500, 28.560892>,  <11.966570, 10.299891, 28.438576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.314711, 10.145500, 28.560892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429283, 0.290490, -0.855179,
		0.241252, 0.875578, 0.418523,
		0.870353, -0.385978, 0.305789,
		12.575816, 10.029707, 28.652630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.333585, 10.865567, 28.222200>,  <11.966570, 10.299891, 28.438576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.333585, 10.865567, 28.222200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.558692, 10.539471, 28.276861>,  <12.693756, 10.343813, 28.309658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.558692, 10.539471, 28.276861>,  <12.333585, 10.865567, 28.222200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.558692, 10.539471, 28.276861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486047, 0.192636, -0.852437,
		0.668619, 0.546142, 0.504656,
		0.562767, -0.815242, 0.136651,
		12.727522, 10.294898, 28.317856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.065170, 11.071560, 28.139376>,  <12.333585, 10.865567, 28.222200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.065170, 11.071560, 28.139376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.037030, 10.677056, 28.079582>,  <13.020146, 10.440354, 28.043707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.037030, 10.677056, 28.079582>,  <13.065170, 11.071560, 28.139376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.037030, 10.677056, 28.079582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439219, 0.103919, -0.892349,
		0.895621, -0.128433, 0.425873,
		-0.070351, -0.986259, -0.149483,
		13.015925, 10.381179, 28.034737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.720013, 10.998395, 27.886168>,  <13.065170, 11.071560, 28.139376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.720013, 10.998395, 27.886168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.479688, 10.695383, 27.784052>,  <13.335493, 10.513576, 27.722782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.479688, 10.695383, 27.784052>,  <13.720013, 10.998395, 27.886168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.479688, 10.695383, 27.784052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339705, 0.047135, -0.939350,
		0.723619, -0.651096, 0.229018,
		-0.600813, -0.757530, -0.255288,
		13.299444, 10.468124, 27.707466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.128042, 10.558355, 27.494804>,  <13.720013, 10.998395, 27.886168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.128042, 10.558355, 27.494804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.758802, 10.465018, 27.372534>,  <13.537258, 10.409016, 27.299171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.758802, 10.465018, 27.372534>,  <14.128042, 10.558355, 27.494804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.758802, 10.465018, 27.372534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294123, 0.083691, -0.952096,
		0.247748, -0.968786, -0.008623,
		-0.923100, -0.233344, -0.305677,
		13.481873, 10.395016, 27.280830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.212447, 10.071704, 27.026037>,  <14.128042, 10.558355, 27.494804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.212447, 10.071704, 27.026037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.847259, 10.216980, 26.951656>,  <13.628145, 10.304146, 26.907028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.847259, 10.216980, 26.951656>,  <14.212447, 10.071704, 27.026037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.847259, 10.216980, 26.951656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184734, -0.038422, -0.982037,
		-0.363811, -0.930922, -0.032016,
		-0.912971, 0.363190, -0.185951,
		13.573367, 10.325937, 26.895870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.989128, 9.739422, 26.500875>,  <14.212447, 10.071704, 27.026037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.989128, 9.739422, 26.500875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.737057, 10.049545, 26.484049>,  <13.585814, 10.235620, 26.473953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.737057, 10.049545, 26.484049>,  <13.989128, 9.739422, 26.500875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.737057, 10.049545, 26.484049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159662, 0.076371, -0.984213,
		-0.759857, -0.626947, -0.171915,
		-0.630179, 0.775310, -0.042068,
		13.548003, 10.282138, 26.471428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.682839, 9.666315, 25.868986>,  <13.989128, 9.739422, 26.500875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.682839, 9.666315, 25.868986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.642373, 10.047729, 25.982500>,  <13.618093, 10.276578, 26.050610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.642373, 10.047729, 25.982500>,  <13.682839, 9.666315, 25.868986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.642373, 10.047729, 25.982500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082477, 0.292307, -0.952762,
		-0.991445, -0.072981, -0.108216,
		-0.101166, 0.953536, 0.283787,
		13.612023, 10.333790, 26.067636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.351318, 9.935974, 25.330494>,  <13.682839, 9.666315, 25.868986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.351318, 9.935974, 25.330494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.513719, 10.239857, 25.533672>,  <13.611158, 10.422186, 25.655579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.513719, 10.239857, 25.533672>,  <13.351318, 9.935974, 25.330494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.513719, 10.239857, 25.533672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317331, 0.404037, -0.857937,
		-0.857009, 0.509510, -0.077039,
		0.406001, 0.759706, 0.507947,
		13.635519, 10.467769, 25.686056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.819633, 9.755918, 24.816790>,  <13.351318, 9.935974, 25.330494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.819633, 9.755918, 24.816790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.459891, 9.901148, 24.719353>,  <12.244046, 9.988286, 24.660891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.459891, 9.901148, 24.719353>,  <12.819633, 9.755918, 24.816790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.459891, 9.901148, 24.719353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279836, -0.049930, 0.958748,
		0.335935, 0.930421, 0.146506,
		-0.899355, 0.363075, -0.243592,
		12.190084, 10.010071, 24.646275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.599534, 10.213514, 25.387362>,  <12.819633, 9.755918, 24.816790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.599534, 10.213514, 25.387362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.267415, 10.082449, 25.207031>,  <12.068144, 10.003810, 25.098833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.267415, 10.082449, 25.207031>,  <12.599534, 10.213514, 25.387362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.267415, 10.082449, 25.207031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380310, -0.258198, 0.888087,
		-0.407396, 0.908829, 0.089768,
		-0.830297, -0.327663, -0.450826,
		12.018326, 9.984150, 25.071783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.031902, 10.620618, 25.618423>,  <12.599534, 10.213514, 25.387362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.031902, 10.620618, 25.618423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.872226, 10.275250, 25.495035>,  <11.776420, 10.068030, 25.421001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.872226, 10.275250, 25.495035>,  <12.031902, 10.620618, 25.618423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.872226, 10.275250, 25.495035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424569, -0.124121, 0.896848,
		-0.812643, 0.488982, -0.317032,
		-0.399192, -0.863418, -0.308472,
		11.752468, 10.016225, 25.402494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.476861, 10.687521, 26.024351>,  <12.031902, 10.620618, 25.618423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.476861, 10.687521, 26.024351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.482394, 10.311219, 25.888828>,  <11.485714, 10.085438, 25.807514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.482394, 10.311219, 25.888828>,  <11.476861, 10.687521, 26.024351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.482394, 10.311219, 25.888828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452348, -0.308069, 0.836943,
		-0.891734, 0.141681, -0.429810,
		0.013832, -0.940755, -0.338805,
		11.486544, 10.028993, 25.787188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.766850, 10.433242, 26.035360>,  <11.476861, 10.687521, 26.024351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.766850, 10.433242, 26.035360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.993089, 10.103390, 26.031645>,  <11.128832, 9.905478, 26.029415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.993089, 10.103390, 26.031645>,  <10.766850, 10.433242, 26.035360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.993089, 10.103390, 26.031645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566498, -0.396685, 0.722303,
		-0.599318, -0.403269, -0.691515,
		0.565596, -0.824630, -0.009290,
		11.162767, 9.856001, 26.028858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.300632, 9.797960, 25.945127>,  <10.766850, 10.433242, 26.035360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.300632, 9.797960, 25.945127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.640718, 9.657443, 26.101959>,  <10.844770, 9.573133, 26.196058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.640718, 9.657443, 26.101959>,  <10.300632, 9.797960, 25.945127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.640718, 9.657443, 26.101959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501288, -0.312810, 0.806760,
		-0.160762, -0.882465, -0.442054,
		0.850215, -0.351292, 0.392081,
		10.895783, 9.552055, 26.219584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.054851, 9.218825, 26.175053>,  <10.300632, 9.797960, 25.945127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.054851, 9.218825, 26.175053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.393946, 9.297199, 26.372211>,  <10.597403, 9.344224, 26.490507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.393946, 9.297199, 26.372211>,  <10.054851, 9.218825, 26.175053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.393946, 9.297199, 26.372211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415174, -0.333221, 0.846519,
		0.330107, -0.922265, -0.201137,
		0.847738, 0.195935, 0.492899,
		10.648267, 9.355980, 26.520081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.288693, 8.555915, 26.434076>,  <10.054851, 9.218825, 26.175053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.288693, 8.555915, 26.434076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.436476, 8.855325, 26.654335>,  <10.525146, 9.034970, 26.786491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.436476, 8.855325, 26.654335>,  <10.288693, 8.555915, 26.434076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.436476, 8.855325, 26.654335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446531, -0.376668, 0.811622,
		0.814931, -0.545740, 0.195078,
		0.369455, 0.748524, 0.550649,
		10.547313, 9.079882, 26.819530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.534935, 8.233369, 27.099604>,  <10.288693, 8.555915, 26.434076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.534935, 8.233369, 27.099604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.555075, 8.629937, 27.147856>,  <10.567159, 8.867878, 27.176807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.555075, 8.629937, 27.147856>,  <10.534935, 8.233369, 27.099604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.555075, 8.629937, 27.147856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179532, -0.109833, 0.977602,
		0.982463, -0.070878, 0.172462,
		0.050348, 0.991420, 0.120632,
		10.570179, 8.927363, 27.184046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.022408, 8.408403, 27.676716>,  <10.534935, 8.233369, 27.099604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.022408, 8.408403, 27.676716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.745910, 8.694056, 27.632542>,  <10.580010, 8.865447, 27.606037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.745910, 8.694056, 27.632542>,  <11.022408, 8.408403, 27.676716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.745910, 8.694056, 27.632542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307238, -0.152123, 0.939395,
		0.654051, 0.683284, 0.324563,
		-0.691247, 0.714130, -0.110434,
		10.538535, 8.908295, 27.599411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.832901, 8.501154, 28.391396>,  <11.022408, 8.408403, 27.676716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.832901, 8.501154, 28.391396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.535174, 8.677890, 28.191088>,  <10.356539, 8.783932, 28.070904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.535174, 8.677890, 28.191088>,  <10.832901, 8.501154, 28.391396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.535174, 8.677890, 28.191088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611349, -0.149002, 0.777207,
		0.268786, 0.884633, 0.381023,
		-0.744316, 0.441841, -0.500769,
		10.311879, 8.810442, 28.040857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.500815, 9.043728, 28.773077>,  <10.832901, 8.501154, 28.391396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.500815, 9.043728, 28.773077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.221886, 8.953562, 28.500921>,  <10.054528, 8.899463, 28.337627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.221886, 8.953562, 28.500921>,  <10.500815, 9.043728, 28.773077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.221886, 8.953562, 28.500921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638330, -0.236439, 0.732552,
		-0.325998, 0.945138, 0.020986,
		-0.697324, -0.225414, -0.680388,
		10.012689, 8.885938, 28.296804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.866302, 9.111848, 29.224007>,  <10.500815, 9.043728, 28.773077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.866302, 9.111848, 29.224007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.771555, 8.916232, 28.888212>,  <9.714706, 8.798862, 28.686735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.771555, 8.916232, 28.888212>,  <9.866302, 9.111848, 29.224007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.771555, 8.916232, 28.888212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742346, -0.466319, 0.481112,
		-0.626751, 0.737147, -0.252581,
		-0.236867, -0.489040, -0.839484,
		9.700495, 8.769520, 28.636368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.271480, 9.320416, 29.138544>,  <9.866302, 9.111848, 29.224007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.271480, 9.320416, 29.138544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.309800, 8.968287, 28.952705>,  <9.332792, 8.757009, 28.841202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.309800, 8.968287, 28.952705>,  <9.271480, 9.320416, 29.138544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.309800, 8.968287, 28.952705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802096, -0.344670, 0.487693,
		-0.589461, 0.325928, -0.739126,
		0.095802, -0.880326, -0.464595,
		9.338541, 8.704188, 28.813328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.556211, 9.686498, 29.369213>,  <9.271480, 9.320416, 29.138544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.556211, 9.686498, 29.369213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.269265, 9.962954, 29.334078>,  <8.097098, 10.128827, 29.312996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.269265, 9.962954, 29.334078>,  <8.556211, 9.686498, 29.369213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.269265, 9.962954, 29.334078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421570, 0.330235, -0.844526,
		-0.554678, -0.642862, -0.528262,
		-0.717364, 0.691140, -0.087837,
		8.054056, 10.170296, 29.307726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.455919, 9.670282, 28.730377>,  <8.556211, 9.686498, 29.369213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.455919, 9.670282, 28.730377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.306602, 10.024486, 28.841034>,  <8.217012, 10.237007, 28.907427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.306602, 10.024486, 28.841034>,  <8.455919, 9.670282, 28.730377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.306602, 10.024486, 28.841034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295695, 0.396210, -0.869242,
		-0.879328, -0.242680, -0.409742,
		-0.373291, 0.885508, 0.276640,
		8.194615, 10.290138, 28.924026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.955557, 9.887980, 28.210390>,  <8.455919, 9.670282, 28.730377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.955557, 9.887980, 28.210390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.044800, 10.221195, 28.412882>,  <8.098346, 10.421124, 28.534378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.044800, 10.221195, 28.412882>,  <7.955557, 9.887980, 28.210390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.044800, 10.221195, 28.412882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200256, 0.469076, -0.860154,
		-0.954002, 0.293282, -0.062167,
		0.223107, 0.833038, 0.506232,
		8.111732, 10.471107, 28.564751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.698886, 10.331368, 27.783089>,  <7.955557, 9.887980, 28.210390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.698886, 10.331368, 27.783089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.910362, 10.573265, 28.021341>,  <8.037248, 10.718403, 28.164293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.910362, 10.573265, 28.021341>,  <7.698886, 10.331368, 27.783089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.910362, 10.573265, 28.021341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255136, 0.556052, -0.791020,
		-0.809563, 0.570171, 0.139688,
		0.528690, 0.604741, 0.595630,
		8.068969, 10.754687, 28.200029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.466763, 11.064721, 27.683393>,  <7.698886, 10.331368, 27.783089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.466763, 11.064721, 27.683393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.845502, 11.091800, 27.809185>,  <8.072745, 11.108047, 27.884661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.845502, 11.091800, 27.809185>,  <7.466763, 11.064721, 27.683393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.845502, 11.091800, 27.809185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218465, 0.582252, -0.783106,
		-0.236120, 0.810185, 0.536514,
		0.946848, 0.067697, 0.314479,
		8.129556, 11.112109, 27.903528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.586607, 11.749327, 27.705847>,  <7.466763, 11.064721, 27.683393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.586607, 11.749327, 27.705847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.946711, 11.578454, 27.672272>,  <8.162774, 11.475930, 27.652126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.946711, 11.578454, 27.672272>,  <7.586607, 11.749327, 27.705847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.946711, 11.578454, 27.672272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264274, 0.689456, -0.674396,
		0.345960, 0.584950, 0.733584,
		0.900262, -0.427181, -0.083938,
		8.216789, 11.450299, 27.647091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.101711, 12.283973, 27.823130>,  <7.586607, 11.749327, 27.705847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.101711, 12.283973, 27.823130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.275096, 11.995830, 27.606541>,  <8.379127, 11.822944, 27.476587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.275096, 11.995830, 27.606541>,  <8.101711, 12.283973, 27.823130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.275096, 11.995830, 27.606541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232654, 0.669940, -0.705020,
		0.870622, 0.179624, 0.457988,
		0.433463, -0.720358, -0.541474,
		8.405135, 11.779722, 27.444099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.526465, 12.667120, 28.293005>,  <8.101711, 12.283973, 27.823130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.526465, 12.667120, 28.293005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.520244, 13.051850, 28.402294>,  <8.516511, 13.282688, 28.467867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.520244, 13.051850, 28.402294>,  <8.526465, 12.667120, 28.293005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.520244, 13.051850, 28.402294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413931, -0.254935, 0.873882,
		0.910176, -0.099503, 0.402094,
		-0.015554, 0.961825, 0.273222,
		8.515577, 13.340398, 28.484261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.785174, 12.633618, 28.890766>,  <8.526465, 12.667120, 28.293005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.785174, 12.633618, 28.890766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.592336, 12.984000, 28.897564>,  <8.476633, 13.194229, 28.901642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.592336, 12.984000, 28.897564>,  <8.785174, 12.633618, 28.890766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.592336, 12.984000, 28.897564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407542, -0.241383, 0.880707,
		0.775560, 0.417660, 0.473357,
		-0.482096, 0.875954, 0.016993,
		8.447707, 13.246786, 28.902662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.183336, 13.055938, 29.376177>,  <8.785174, 12.633618, 28.890766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.183336, 13.055938, 29.376177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.808972, 13.192670, 29.342176>,  <8.584354, 13.274709, 29.321775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.808972, 13.192670, 29.342176>,  <9.183336, 13.055938, 29.376177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.808972, 13.192670, 29.342176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150094, -0.168705, 0.974172,
		0.318661, 0.924495, 0.209199,
		-0.935910, 0.341830, -0.085001,
		8.528199, 13.295218, 29.316675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.938051, 13.369224, 30.044456>,  <9.183336, 13.055938, 29.376177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.938051, 13.369224, 30.044456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.580938, 13.309605, 29.874409>,  <8.366671, 13.273833, 29.772381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.580938, 13.309605, 29.874409>,  <8.938051, 13.369224, 30.044456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.580938, 13.309605, 29.874409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373696, -0.281970, 0.883654,
		-0.251577, 0.947775, 0.196039,
		-0.892782, -0.149048, -0.425117,
		8.313104, 13.264891, 29.746874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.494852, 13.769732, 30.384504>,  <8.938051, 13.369224, 30.044456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.494852, 13.769732, 30.384504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.289016, 13.461820, 30.233435>,  <8.165514, 13.277073, 30.142794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.289016, 13.461820, 30.233435>,  <8.494852, 13.769732, 30.384504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.289016, 13.461820, 30.233435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370460, -0.197631, 0.907580,
		-0.773276, 0.606944, -0.183473,
		-0.514590, -0.769779, -0.377672,
		8.134639, 13.230886, 30.120132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.898842, 13.812630, 30.699467>,  <8.494852, 13.769732, 30.384504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.898842, 13.812630, 30.699467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.870377, 13.441223, 30.553703>,  <7.853298, 13.218379, 30.466246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.870377, 13.441223, 30.553703>,  <7.898842, 13.812630, 30.699467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.870377, 13.441223, 30.553703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412531, -0.305229, 0.858285,
		-0.908160, 0.211407, -0.361321,
		-0.071162, -0.928516, -0.364408,
		7.849029, 13.162668, 30.444382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.259245, 13.496665, 31.010319>,  <7.898842, 13.812630, 30.699467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.259245, 13.496665, 31.010319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.429045, 13.161769, 30.872433>,  <7.530925, 12.960831, 30.789701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.429045, 13.161769, 30.872433>,  <7.259245, 13.496665, 31.010319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.429045, 13.161769, 30.872433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281659, -0.483937, 0.828537,
		-0.860505, -0.254621, -0.441248,
		0.424499, -0.837241, -0.344714,
		7.556395, 12.910597, 30.769018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.852516, 12.882750, 31.138250>,  <7.259245, 13.496665, 31.010319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.852516, 12.882750, 31.138250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.215249, 12.715288, 31.118725>,  <7.432889, 12.614812, 31.107010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.215249, 12.715288, 31.118725>,  <6.852516, 12.882750, 31.138250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.215249, 12.715288, 31.118725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155127, -0.439190, 0.884900,
		-0.391899, -0.794887, -0.463217,
		0.906836, -0.418649, -0.048810,
		7.487299, 12.589692, 31.104082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.695706, 12.277551, 31.404005>,  <6.852516, 12.882750, 31.138250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.695706, 12.277551, 31.404005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.091709, 12.317476, 31.443851>,  <7.329310, 12.341432, 31.467758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.091709, 12.317476, 31.443851>,  <6.695706, 12.277551, 31.404005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.091709, 12.317476, 31.443851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028828, -0.548223, 0.835835,
		0.138040, -0.830355, -0.539867,
		0.990007, 0.099815, 0.099614,
		7.388711, 12.347421, 31.473736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.854925, 16.778517, 17.560690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.164709, 16.881380, 17.791889>,  <14.350579, 16.943098, 17.930609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.164709, 16.881380, 17.791889>,  <13.854925, 16.778517, 17.560690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.164709, 16.881380, 17.791889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360910, -0.570778, 0.737534,
		0.519573, -0.779795, -0.349233,
		0.774460, 0.257161, 0.577997,
		14.397047, 16.958529, 17.965288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.087786, 16.139801, 17.708652>,  <13.854925, 16.778517, 17.560690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.087786, 16.139801, 17.708652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.245204, 16.385437, 17.982300>,  <14.339655, 16.532818, 18.146488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.245204, 16.385437, 17.982300>,  <14.087786, 16.139801, 17.708652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.245204, 16.385437, 17.982300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293598, -0.621238, 0.726542,
		0.871161, -0.486783, -0.064189,
		0.393545, 0.614090, 0.684117,
		14.363268, 16.569664, 18.187534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.504055, 15.735844, 18.147816>,  <14.087786, 16.139801, 17.708652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.504055, 15.735844, 18.147816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.413740, 16.065897, 18.354959>,  <14.359551, 16.263929, 18.479246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.413740, 16.065897, 18.354959>,  <14.504055, 15.735844, 18.147816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.413740, 16.065897, 18.354959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437383, -0.560857, 0.702947,
		0.870469, -0.067786, 0.487533,
		-0.225786, 0.825133, 0.517857,
		14.346004, 16.313437, 18.510317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.484583, 15.468250, 18.844936>,  <14.504055, 15.735844, 18.147816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.484583, 15.468250, 18.844936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274439, 15.808479, 18.854109>,  <14.148353, 16.012617, 18.859612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274439, 15.808479, 18.854109>,  <14.484583, 15.468250, 18.844936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.274439, 15.808479, 18.854109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576841, -0.375840, 0.725258,
		0.625501, 0.367794, 0.688096,
		-0.525359, 0.850572, 0.022930,
		14.116831, 16.063650, 18.860989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.445877, 15.757147, 19.580011>,  <14.484583, 15.468250, 18.844936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.445877, 15.757147, 19.580011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.144160, 15.920465, 19.374355>,  <13.963130, 16.018456, 19.250961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.144160, 15.920465, 19.374355>,  <14.445877, 15.757147, 19.580011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.144160, 15.920465, 19.374355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627624, -0.218579, 0.747202,
		0.192698, 0.886295, 0.421128,
		-0.754291, 0.408294, -0.514141,
		13.917873, 16.042953, 19.220114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.958060, 16.045103, 20.202000>,  <14.445877, 15.757147, 19.580011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.958060, 16.045103, 20.202000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.747437, 16.078796, 19.863617>,  <13.621064, 16.099012, 19.660587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.747437, 16.078796, 19.863617>,  <13.958060, 16.045103, 20.202000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.747437, 16.078796, 19.863617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844237, 0.065254, 0.531984,
		0.100012, 0.994307, 0.036753,
		-0.526557, 0.084233, -0.845957,
		13.589471, 16.104067, 19.609829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.519595, 16.595549, 20.288284>,  <13.958060, 16.045103, 20.202000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.519595, 16.595549, 20.288284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.363469, 16.379051, 19.990370>,  <13.269794, 16.249153, 19.811621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.363469, 16.379051, 19.990370>,  <13.519595, 16.595549, 20.288284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.363469, 16.379051, 19.990370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908468, 0.095086, 0.406995,
		-0.149464, 0.835473, -0.528816,
		-0.390316, -0.541244, -0.744788,
		13.246374, 16.216679, 19.766933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.826403, 16.933895, 20.112396>,  <13.519595, 16.595549, 20.288284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.826403, 16.933895, 20.112396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.806803, 16.555708, 19.983593>,  <12.795043, 16.328796, 19.906311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.806803, 16.555708, 19.983593>,  <12.826403, 16.933895, 20.112396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.806803, 16.555708, 19.983593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789458, -0.160831, 0.592359,
		-0.611845, 0.283239, -0.738527,
		-0.049001, -0.945468, -0.322009,
		12.792103, 16.272068, 19.886990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.042794, 16.803337, 19.890581>,  <12.826403, 16.933895, 20.112396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.042794, 16.803337, 19.890581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.226659, 16.449974, 19.927025>,  <12.336978, 16.237957, 19.948891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.226659, 16.449974, 19.927025>,  <12.042794, 16.803337, 19.890581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.226659, 16.449974, 19.927025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806354, -0.372162, 0.459662,
		-0.372162, -0.284755, -0.883408,
		-0.459662, 0.883408, -0.091109,
		12.364557, 16.184952, 19.954357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.638635, 16.241196, 19.584272>,  <12.042794, 16.803337, 19.890581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.638635, 16.241196, 19.584272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.870629, 16.081175, 19.868124>,  <12.009827, 15.985162, 20.038435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.870629, 16.081175, 19.868124>,  <11.638635, 16.241196, 19.584272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.870629, 16.081175, 19.868124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806704, -0.403242, 0.432000,
		0.113329, -0.823015, -0.556600,
		0.579987, -0.400053, 0.709628,
		12.044625, 15.961159, 20.081013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.341162, 15.671302, 19.677462>,  <11.638635, 16.241196, 19.584272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.341162, 15.671302, 19.677462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.583611, 15.688434, 19.995148>,  <11.729081, 15.698712, 20.185760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.583611, 15.688434, 19.995148>,  <11.341162, 15.671302, 19.677462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.583611, 15.688434, 19.995148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713501, -0.411973, 0.566741,
		0.351469, -0.910189, -0.219147,
		0.606124, 0.042830, 0.794216,
		11.765449, 15.701283, 20.233412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.136174, 15.120246, 20.065195>,  <11.341162, 15.671302, 19.677462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.136174, 15.120246, 20.065195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.304633, 15.358318, 20.338951>,  <11.405708, 15.501162, 20.503204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.304633, 15.358318, 20.338951>,  <11.136174, 15.120246, 20.065195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.304633, 15.358318, 20.338951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681400, -0.290386, 0.671841,
		0.598605, -0.749290, 0.283261,
		0.421148, 0.595182, 0.684392,
		11.430978, 15.536873, 20.544270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.354290, 14.441922, 20.125896>,  <11.136174, 15.120246, 20.065195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.354290, 14.441922, 20.125896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.210474, 14.173290, 19.866756>,  <11.124185, 14.012111, 19.711271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.210474, 14.173290, 19.866756>,  <11.354290, 14.441922, 20.125896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.210474, 14.173290, 19.866756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590455, 0.373870, -0.715251,
		0.722560, -0.639688, 0.262116,
		-0.359540, -0.671580, -0.647851,
		11.102612, 13.971816, 19.672401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.970625, 14.193203, 19.901363>,  <11.354290, 14.441922, 20.125896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.970625, 14.193203, 19.901363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.676653, 14.105669, 19.644617>,  <11.500270, 14.053149, 19.490570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.676653, 14.105669, 19.644617>,  <11.970625, 14.193203, 19.901363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.676653, 14.105669, 19.644617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628344, 0.136270, -0.765908,
		0.255074, -0.966200, 0.037354,
		-0.734929, -0.218834, -0.641865,
		11.456174, 14.040019, 19.452057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.219919, 13.620523, 19.505367>,  <11.970625, 14.193203, 19.901363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.219919, 13.620523, 19.505367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.935362, 13.824235, 19.311644>,  <11.764627, 13.946462, 19.195410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.935362, 13.824235, 19.311644>,  <12.219919, 13.620523, 19.505367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.935362, 13.824235, 19.311644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460576, -0.182670, -0.868620,
		-0.530840, -0.840991, -0.104613,
		-0.711392, 0.509280, -0.484309,
		11.721944, 13.977019, 19.166351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.134569, 13.390159, 18.874695>,  <12.219919, 13.620523, 19.505367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.134569, 13.390159, 18.874695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.935328, 13.725166, 18.784847>,  <11.815784, 13.926171, 18.730938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.935328, 13.725166, 18.784847>,  <12.134569, 13.390159, 18.874695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.935328, 13.725166, 18.784847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343480, -0.047280, -0.937969,
		-0.796188, -0.544357, -0.264121,
		-0.498103, 0.837520, -0.224619,
		11.785897, 13.976422, 18.717461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.933087, 13.279696, 18.258177>,  <12.134569, 13.390159, 18.874695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.933087, 13.279696, 18.258177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.874557, 13.675220, 18.269812>,  <11.839438, 13.912534, 18.276793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.874557, 13.675220, 18.269812>,  <11.933087, 13.279696, 18.258177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.874557, 13.675220, 18.269812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371395, 0.082166, -0.924832,
		-0.916872, -0.124525, -0.379262,
		-0.146327, 0.988809, 0.029088,
		11.830658, 13.971862, 18.278538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.427454, 13.390493, 17.776937>,  <11.933087, 13.279696, 18.258177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.427454, 13.390493, 17.776937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.635897, 13.727588, 17.830969>,  <11.760962, 13.929844, 17.863388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.635897, 13.727588, 17.830969>,  <11.427454, 13.390493, 17.776937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.635897, 13.727588, 17.830969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258030, -0.004699, -0.966126,
		-0.813553, 0.538308, -0.219900,
		0.521107, 0.842735, 0.135076,
		11.792229, 13.980409, 17.871492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.382135, 13.778102, 17.179216>,  <11.427454, 13.390493, 17.776937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.382135, 13.778102, 17.179216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.715321, 13.915182, 17.352989>,  <11.915232, 13.997430, 17.457253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.715321, 13.915182, 17.352989>,  <11.382135, 13.778102, 17.179216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.715321, 13.915182, 17.352989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423239, 0.111139, -0.899176,
		-0.356429, 0.932848, -0.052469,
		0.832963, 0.342699, 0.434431,
		11.965209, 14.017992, 17.483318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.466374, 14.389707, 16.843216>,  <11.382135, 13.778102, 17.179216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.466374, 14.389707, 16.843216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.818742, 14.258094, 16.979288>,  <12.030162, 14.179126, 17.060930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.818742, 14.258094, 16.979288>,  <11.466374, 14.389707, 16.843216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.818742, 14.258094, 16.979288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376000, 0.050052, -0.925267,
		0.287416, 0.942991, 0.167808,
		0.880918, -0.329032, 0.340179,
		12.083017, 14.159384, 17.081341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.903339, 14.680138, 16.316780>,  <11.466374, 14.389707, 16.843216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.903339, 14.680138, 16.316780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.128082, 14.411781, 16.510366>,  <12.262928, 14.250768, 16.626518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.128082, 14.411781, 16.510366>,  <11.903339, 14.680138, 16.316780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.128082, 14.411781, 16.510366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540385, -0.145298, -0.828778,
		0.626338, 0.727183, 0.280902,
		0.561858, -0.670890, 0.483964,
		12.296639, 14.210514, 16.655556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.549845, 14.823339, 16.105610>,  <11.903339, 14.680138, 16.316780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.549845, 14.823339, 16.105610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.581126, 14.441390, 16.220222>,  <12.599895, 14.212220, 16.288990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.581126, 14.441390, 16.220222>,  <12.549845, 14.823339, 16.105610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.581126, 14.441390, 16.220222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460628, -0.220282, -0.859824,
		0.884141, 0.199226, 0.422615,
		0.078205, -0.954874, 0.286530,
		12.604588, 14.154928, 16.306181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.197002, 14.621827, 15.876771>,  <12.549845, 14.823339, 16.105610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.197002, 14.621827, 15.876771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.994514, 14.280523, 15.926875>,  <12.873022, 14.075741, 15.956938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.994514, 14.280523, 15.926875>,  <13.197002, 14.621827, 15.876771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.994514, 14.280523, 15.926875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441976, -0.381405, -0.811903,
		0.740539, -0.355639, 0.570195,
		-0.506219, -0.853259, 0.125262,
		12.842649, 14.024546, 15.964454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.680407, 14.055202, 15.876994>,  <13.197002, 14.621827, 15.876771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.680407, 14.055202, 15.876994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.318385, 13.919802, 15.774004>,  <13.101172, 13.838561, 15.712210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.318385, 13.919802, 15.774004>,  <13.680407, 14.055202, 15.876994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.318385, 13.919802, 15.774004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400483, -0.474554, -0.783845,
		0.143148, -0.812536, 0.565061,
		-0.905054, -0.338503, -0.257476,
		13.046869, 13.818251, 15.696761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.509969, 13.308764, 15.941184>,  <13.680407, 14.055202, 15.876994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.509969, 13.308764, 15.941184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.277544, 13.432450, 15.640052>,  <13.138089, 13.506661, 15.459373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.277544, 13.432450, 15.640052>,  <13.509969, 13.308764, 15.941184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.277544, 13.432450, 15.640052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374778, -0.719436, -0.584767,
		-0.722446, -0.621923, 0.302132,
		-0.581045, 0.309230, -0.752837,
		13.103226, 13.525214, 15.414203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.964561, 12.865810, 15.824258>,  <13.509969, 13.308764, 15.941184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.964561, 12.865810, 15.824258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.161370, 13.084695, 15.553415>,  <13.279456, 13.216025, 15.390910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.161370, 13.084695, 15.553415>,  <12.964561, 12.865810, 15.824258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.161370, 13.084695, 15.553415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409534, -0.831816, -0.374653,
		-0.768241, -0.092960, -0.633375,
		0.492024, 0.547212, -0.677105,
		13.308977, 13.248858, 15.350284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.862086, 12.637298, 15.004479>,  <12.964561, 12.865810, 15.824258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.862086, 12.637298, 15.004479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.220518, 12.806064, 15.059655>,  <13.435577, 12.907323, 15.092761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.220518, 12.806064, 15.059655>,  <12.862086, 12.637298, 15.004479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.220518, 12.806064, 15.059655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443441, -0.836855, -0.320989,
		-0.019994, 0.348800, -0.936984,
		0.896081, 0.421915, 0.137940,
		13.489343, 12.932638, 15.101037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.266666, 12.716191, 14.322746>,  <12.862086, 12.637298, 15.004479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.266666, 12.716191, 14.322746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.502934, 12.689503, 14.644406>,  <13.644694, 12.673490, 14.837402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.502934, 12.689503, 14.644406>,  <13.266666, 12.716191, 14.322746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.502934, 12.689503, 14.644406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414947, -0.829594, -0.373621,
		0.692047, 0.554366, -0.462330,
		0.590668, -0.066721, 0.804151,
		13.680134, 12.669486, 14.885652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.804858, 12.189870, 14.442237>,  <13.266666, 12.716191, 14.322746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.804858, 12.189870, 14.442237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.446362, 12.134008, 14.610640>,  <13.231263, 12.100492, 14.711681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.446362, 12.134008, 14.610640>,  <13.804858, 12.189870, 14.442237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.446362, 12.134008, 14.610640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339198, -0.827389, 0.447629,
		0.285823, 0.543989, 0.788912,
		-0.896242, -0.139654, 0.421007,
		13.177489, 12.092113, 14.736941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.872153, 11.954396, 15.085035>,  <13.804858, 12.189870, 14.442237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.872153, 11.954396, 15.085035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.493818, 11.834037, 15.036290>,  <13.266817, 11.761821, 15.007043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.493818, 11.834037, 15.036290>,  <13.872153, 11.954396, 15.085035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.493818, 11.834037, 15.036290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194957, -0.826626, 0.527903,
		-0.259581, 0.475552, 0.840517,
		-0.945838, -0.300898, -0.121864,
		13.210067, 11.743768, 14.999731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.453773, 12.076861, 15.496283>,  <13.872153, 11.954396, 15.085035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.453773, 12.076861, 15.496283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.763388, 12.260339, 15.670853>,  <14.949157, 12.370425, 15.775595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.763388, 12.260339, 15.670853>,  <14.453773, 12.076861, 15.496283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.763388, 12.260339, 15.670853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202527, -0.473708, 0.857079,
		0.599873, -0.751799, -0.273770,
		0.774038, 0.458693, 0.436424,
		14.995599, 12.397946, 15.801780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.919146, 11.557365, 15.740735>,  <14.453773, 12.076861, 15.496283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.919146, 11.557365, 15.740735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.970057, 11.904323, 15.933164>,  <15.000605, 12.112497, 16.048620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.970057, 11.904323, 15.933164>,  <14.919146, 11.557365, 15.740735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.970057, 11.904323, 15.933164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103762, -0.470711, 0.876165,
		0.986425, -0.161436, 0.030090,
		0.127281, 0.867393, 0.481071,
		15.008242, 12.164540, 16.077484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.355709, 11.524899, 16.344707>,  <14.919146, 11.557365, 15.740735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.355709, 11.524899, 16.344707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.162639, 11.860239, 16.446053>,  <15.046797, 12.061443, 16.506861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.162639, 11.860239, 16.446053>,  <15.355709, 11.524899, 16.344707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.162639, 11.860239, 16.446053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156957, -0.367415, 0.916718,
		0.861620, 0.402710, 0.308927,
		-0.482676, 0.838350, 0.253364,
		15.017836, 12.111744, 16.522062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.531715, 11.643100, 17.109081>,  <15.355709, 11.524899, 16.344707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.531715, 11.643100, 17.109081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.201840, 11.854975, 17.029760>,  <15.003916, 11.982100, 16.982168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.201840, 11.854975, 17.029760>,  <15.531715, 11.643100, 17.109081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.201840, 11.854975, 17.029760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417175, -0.332924, 0.845652,
		0.381911, 0.780124, 0.495530,
		-0.824687, 0.529687, -0.198300,
		14.954434, 12.013881, 16.970270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.433284, 12.015695, 17.723127>,  <15.531715, 11.643100, 17.109081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.433284, 12.015695, 17.723127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.070825, 12.036992, 17.555288>,  <14.853350, 12.049770, 17.454584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.070825, 12.036992, 17.555288>,  <15.433284, 12.015695, 17.723127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.070825, 12.036992, 17.555288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421844, -0.041694, 0.905709,
		0.030730, 0.997711, 0.060242,
		-0.906148, 0.053245, -0.419597,
		14.798981, 12.052965, 17.429409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.093251, 12.410845, 18.175333>,  <15.433284, 12.015695, 17.723127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.093251, 12.410845, 18.175333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.811131, 12.219349, 17.966198>,  <14.641860, 12.104451, 17.840717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.811131, 12.219349, 17.966198>,  <15.093251, 12.410845, 18.175333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.811131, 12.219349, 17.966198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545894, -0.103755, 0.831405,
		-0.452274, 0.871804, -0.188163,
		-0.705300, -0.478740, -0.522839,
		14.599542, 12.075727, 17.809347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.487419, 12.691157, 18.546343>,  <15.093251, 12.410845, 18.175333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.487419, 12.691157, 18.546343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.370222, 12.368345, 18.341265>,  <14.299904, 12.174658, 18.218218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.370222, 12.368345, 18.341265>,  <14.487419, 12.691157, 18.546343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.370222, 12.368345, 18.341265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649859, -0.225232, 0.725916,
		-0.701311, 0.545869, -0.458464,
		-0.292994, -0.807030, -0.512696,
		14.282324, 12.126236, 18.187456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.752971, 12.699064, 18.538742>,  <14.487419, 12.691157, 18.546343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.752971, 12.699064, 18.538742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.896254, 12.330905, 18.476061>,  <13.982224, 12.110009, 18.438452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.896254, 12.330905, 18.476061>,  <13.752971, 12.699064, 18.538742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.896254, 12.330905, 18.476061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516029, -0.335050, 0.788325,
		-0.778075, -0.201521, -0.594969,
		0.358208, -0.920397, -0.156703,
		14.003716, 12.054786, 18.429050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.128801, 12.179189, 18.606585>,  <13.752971, 12.699064, 18.538742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.128801, 12.179189, 18.606585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.445473, 11.937080, 18.639793>,  <13.635475, 11.791815, 18.659718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.445473, 11.937080, 18.639793>,  <13.128801, 12.179189, 18.606585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.445473, 11.937080, 18.639793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443339, -0.475669, 0.759730,
		-0.420348, -0.638271, -0.644916,
		0.791681, -0.605268, 0.083024,
		13.682976, 11.755499, 18.664700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.848652, 11.405305, 18.559755>,  <13.128801, 12.179189, 18.606585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.848652, 11.405305, 18.559755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.214971, 11.395658, 18.720121>,  <13.434762, 11.389871, 18.816341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.214971, 11.395658, 18.720121>,  <12.848652, 11.405305, 18.559755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.214971, 11.395658, 18.720121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335777, -0.593692, 0.731289,
		0.220386, -0.804331, -0.551799,
		0.915797, -0.024116, 0.400917,
		13.489710, 11.388424, 18.840397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.962387, 10.766477, 18.665400>,  <12.848652, 11.405305, 18.559755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.962387, 10.766477, 18.665400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.223423, 10.931849, 18.919392>,  <13.380045, 11.031074, 19.071787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.223423, 10.931849, 18.919392>,  <12.962387, 10.766477, 18.665400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.223423, 10.931849, 18.919392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354243, -0.574328, 0.738010,
		0.669805, -0.706555, -0.228345,
		0.652590, 0.413433, 0.634980,
		13.419200, 11.055880, 19.109886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.152651, 10.251960, 19.089066>,  <12.962387, 10.766477, 18.665400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.152651, 10.251960, 19.089066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.240244, 10.567383, 19.318926>,  <13.292800, 10.756637, 19.456842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.240244, 10.567383, 19.318926>,  <13.152651, 10.251960, 19.089066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.240244, 10.567383, 19.318926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409720, -0.460193, 0.787625,
		0.885538, -0.407922, 0.222314,
		0.218982, 0.788557, 0.574652,
		13.305939, 10.803950, 19.491322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.514629, 10.040286, 19.667305>,  <13.152651, 10.251960, 19.089066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.514629, 10.040286, 19.667305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.362637, 10.386571, 19.797632>,  <13.271441, 10.594342, 19.875828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.362637, 10.386571, 19.797632>,  <13.514629, 10.040286, 19.667305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.362637, 10.386571, 19.797632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237875, -0.431845, 0.870015,
		0.893884, 0.253087, 0.370024,
		-0.379982, 0.865712, 0.325816,
		13.248642, 10.646284, 19.895376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.640733, 9.967409, 20.353985>,  <13.514629, 10.040286, 19.667305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.640733, 9.967409, 20.353985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.388271, 10.277000, 20.333570>,  <13.236794, 10.462755, 20.321321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.388271, 10.277000, 20.333570>,  <13.640733, 9.967409, 20.353985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.388271, 10.277000, 20.333570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271982, -0.159213, 0.949040,
		0.726410, 0.612870, 0.310995,
		-0.631153, 0.773978, -0.051036,
		13.198925, 10.509193, 20.318260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.724575, 10.364562, 20.928377>,  <13.640733, 9.967409, 20.353985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.724575, 10.364562, 20.928377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.355444, 10.447293, 20.798384>,  <13.133965, 10.496932, 20.720388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.355444, 10.447293, 20.798384>,  <13.724575, 10.364562, 20.928377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.355444, 10.447293, 20.798384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363842, -0.190874, 0.911694,
		0.126533, 0.959578, 0.251396,
		-0.922827, 0.206828, -0.324982,
		13.078596, 10.509341, 20.700890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.461330, 11.032109, 21.300692>,  <13.724575, 10.364562, 20.928377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.461330, 11.032109, 21.300692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.138583, 10.842297, 21.159960>,  <12.944935, 10.728409, 21.075520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.138583, 10.842297, 21.159960>,  <13.461330, 11.032109, 21.300692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.138583, 10.842297, 21.159960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367953, -0.062221, 0.927760,
		-0.462143, 0.878037, -0.124401,
		-0.806867, -0.474531, -0.351831,
		12.896523, 10.699937, 21.054411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.909620, 11.287246, 21.724325>,  <13.461330, 11.032109, 21.300692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.909620, 11.287246, 21.724325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.802238, 10.934433, 21.569429>,  <12.737809, 10.722746, 21.476492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.802238, 10.934433, 21.569429>,  <12.909620, 11.287246, 21.724325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.802238, 10.934433, 21.569429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545420, -0.192172, 0.815835,
		-0.794008, 0.430222, -0.429488,
		-0.268455, -0.882031, -0.387239,
		12.721703, 10.669824, 21.453259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.356459, 11.306110, 22.084639>,  <12.909620, 11.287246, 21.724325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.356459, 11.306110, 22.084639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.381228, 10.935165, 21.937037>,  <12.396091, 10.712599, 21.848475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.381228, 10.935165, 21.937037>,  <12.356459, 11.306110, 22.084639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.381228, 10.935165, 21.937037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499208, -0.348925, 0.793122,
		-0.864267, 0.135096, -0.484554,
		0.061926, -0.927362, -0.369005,
		12.399806, 10.656957, 21.826334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.713627, 11.055367, 22.102520>,  <12.356459, 11.306110, 22.084639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.713627, 11.055367, 22.102520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.971411, 10.750613, 22.128464>,  <12.126081, 10.567761, 22.144030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.971411, 10.750613, 22.128464>,  <11.713627, 11.055367, 22.102520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.971411, 10.750613, 22.128464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353000, -0.221203, 0.909099,
		-0.678281, -0.608772, -0.411501,
		0.644459, -0.761883, 0.064858,
		12.164748, 10.522048, 22.147921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.353972, 10.460885, 22.250727>,  <11.713627, 11.055367, 22.102520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.353972, 10.460885, 22.250727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719186, 10.387087, 22.396238>,  <11.938313, 10.342808, 22.483545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719186, 10.387087, 22.396238>,  <11.353972, 10.460885, 22.250727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.719186, 10.387087, 22.396238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402715, -0.266172, 0.875770,
		-0.064745, -0.946105, -0.317322,
		0.913033, -0.184492, 0.363777,
		11.993095, 10.331738, 22.505371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.243568, 10.056358, 22.776613>,  <11.353972, 10.460885, 22.250727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.243568, 10.056358, 22.776613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.634510, 10.105941, 22.845217>,  <11.869075, 10.135690, 22.886379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.634510, 10.105941, 22.845217>,  <11.243568, 10.056358, 22.776613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.634510, 10.105941, 22.845217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119687, -0.344582, 0.931095,
		0.174513, -0.930536, -0.321943,
		0.977354, 0.123956, 0.171507,
		11.927716, 10.143127, 22.896669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.373470, 9.480184, 23.193302>,  <11.243568, 10.056358, 22.776613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.373470, 9.480184, 23.193302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.685697, 9.724520, 23.246357>,  <11.873033, 9.871121, 23.278191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.685697, 9.724520, 23.246357>,  <11.373470, 9.480184, 23.193302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.685697, 9.724520, 23.246357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006652, -0.204066, 0.978935,
		0.625040, -0.765004, -0.155223,
		0.780565, 0.610841, 0.132638,
		11.919866, 9.907772, 23.286148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.885495, 9.095378, 23.476128>,  <11.373470, 9.480184, 23.193302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.885495, 9.095378, 23.476128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.960403, 9.477421, 23.567951>,  <12.005348, 9.706647, 23.623045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.960403, 9.477421, 23.567951>,  <11.885495, 9.095378, 23.476128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.960403, 9.477421, 23.567951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065923, -0.245388, 0.967181,
		0.980094, -0.165992, -0.108918,
		0.187271, 0.955108, 0.229561,
		12.016585, 9.763953, 23.636820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.415865, 9.076849, 24.038044>,  <11.885495, 9.095378, 23.476128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.415865, 9.076849, 24.038044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.263778, 9.445092, 24.073631>,  <12.172525, 9.666039, 24.094984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.263778, 9.445092, 24.073631>,  <12.415865, 9.076849, 24.038044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.263778, 9.445092, 24.073631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098959, -0.136131, 0.985736,
		0.919587, 0.365991, 0.142861,
		-0.380218, 0.920608, 0.088966,
		12.149713, 9.721274, 24.100321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
