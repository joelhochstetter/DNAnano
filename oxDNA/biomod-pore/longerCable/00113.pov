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
	<24.322861, 35.217499, 35.121609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296122, 34.891541, 34.891312>,  <24.280079, 34.695965, 34.753136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.296122, 34.891541, 34.891312>,  <24.322861, 35.217499, 35.121609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.296122, 34.891541, 34.891312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939393, 0.143067, -0.311566,
		0.336263, -0.561672, 0.755944,
		-0.066848, -0.814897, -0.575738,
		24.276068, 34.647072, 34.718590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.984646, 34.973568, 35.149532>,  <24.322861, 35.217499, 35.121609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.984646, 34.973568, 35.149532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.822433, 34.807796, 34.823639>,  <24.725107, 34.708336, 34.628101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.822433, 34.807796, 34.823639>,  <24.984646, 34.973568, 35.149532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.822433, 34.807796, 34.823639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902205, -0.038255, -0.429606,
		0.146872, -0.909279, 0.389411,
		-0.405529, -0.414426, -0.814737,
		24.700775, 34.683468, 34.579216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422554, 34.323360, 34.916737>,  <24.984646, 34.973568, 35.149532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422554, 34.323360, 34.916737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212650, 34.463097, 34.606232>,  <25.086708, 34.546940, 34.419930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212650, 34.463097, 34.606232>,  <25.422554, 34.323360, 34.916737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212650, 34.463097, 34.606232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780676, -0.166054, -0.602471,
		-0.339371, -0.922163, -0.185586,
		-0.524760, 0.349343, -0.776265,
		25.055222, 34.567898, 34.373352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.387592, 33.835434, 34.329849>,  <25.422554, 34.323360, 34.916737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.387592, 33.835434, 34.329849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341785, 34.197018, 34.165047>,  <25.314302, 34.413967, 34.066166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.341785, 34.197018, 34.165047>,  <25.387592, 33.835434, 34.329849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.341785, 34.197018, 34.165047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745475, -0.195935, -0.637085,
		-0.656623, -0.380098, -0.651438,
		-0.114515, 0.903955, -0.412009,
		25.307430, 34.468204, 34.041443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.263775, 33.702614, 33.644035>,  <25.387592, 33.835434, 34.329849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.263775, 33.702614, 33.644035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439421, 34.061165, 33.668320>,  <25.544807, 34.276295, 33.682888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439421, 34.061165, 33.668320>,  <25.263775, 33.702614, 33.644035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439421, 34.061165, 33.668320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811149, -0.366496, -0.455760,
		-0.386285, 0.249373, -0.888030,
		0.439114, 0.896378, 0.060707,
		25.571156, 34.330078, 33.686531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557596, 33.924145, 32.972065>,  <25.263775, 33.702614, 33.644035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557596, 33.924145, 32.972065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.784651, 34.114937, 33.240475>,  <25.920883, 34.229412, 33.401520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.784651, 34.114937, 33.240475>,  <25.557596, 33.924145, 32.972065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.784651, 34.114937, 33.240475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822989, -0.350402, -0.447110,
		0.021868, 0.806045, -0.591450,
		0.567636, 0.476980, 0.671029,
		25.954941, 34.258030, 33.441784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.919218, 34.453495, 32.607830>,  <25.557596, 33.924145, 32.972065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.919218, 34.453495, 32.607830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081656, 34.265835, 32.921513>,  <26.179117, 34.153240, 33.109722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081656, 34.265835, 32.921513>,  <25.919218, 34.453495, 32.607830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081656, 34.265835, 32.921513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742573, -0.330750, -0.582400,
		0.532612, 0.818841, 0.214064,
		0.406092, -0.469151, 0.784211,
		26.203484, 34.125088, 33.156776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694084, 34.671127, 32.692402>,  <25.919218, 34.453495, 32.607830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694084, 34.671127, 32.692402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632351, 34.327465, 32.887554>,  <26.595310, 34.121269, 33.004646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632351, 34.327465, 32.887554>,  <26.694084, 34.671127, 32.692402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632351, 34.327465, 32.887554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861285, -0.358947, -0.359647,
		0.484117, 0.364701, 0.795377,
		-0.154334, -0.859157, 0.487884,
		26.586050, 34.069717, 33.033920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412436, 34.366512, 32.725857>,  <26.694084, 34.671127, 32.692402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412436, 34.366512, 32.725857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181149, 34.044159, 32.776798>,  <27.042376, 33.850746, 32.807365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181149, 34.044159, 32.776798>,  <27.412436, 34.366512, 32.725857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181149, 34.044159, 32.776798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731705, -0.581259, -0.356014,
		0.360933, -0.112665, 0.925761,
		-0.578218, -0.805881, 0.127358,
		27.007683, 33.802395, 32.815006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882885, 33.882042, 32.965466>,  <27.412436, 34.366512, 32.725857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882885, 33.882042, 32.965466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576338, 33.640633, 32.877430>,  <27.392410, 33.495785, 32.824608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576338, 33.640633, 32.877430>,  <27.882885, 33.882042, 32.965466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576338, 33.640633, 32.877430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638372, -0.753793, -0.155810,
		-0.071865, -0.259906, 0.962956,
		-0.766366, -0.603527, -0.220088,
		27.346428, 33.459576, 32.811405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032339, 33.279255, 33.314140>,  <27.882885, 33.882042, 32.965466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032339, 33.279255, 33.314140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783644, 33.201046, 33.010769>,  <27.634426, 33.154121, 32.828747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783644, 33.201046, 33.010769>,  <28.032339, 33.279255, 33.314140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783644, 33.201046, 33.010769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684193, -0.606893, -0.404427,
		-0.381212, -0.770360, 0.511100,
		-0.621737, -0.195519, -0.758430,
		27.597122, 33.142391, 32.783241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001877, 32.532276, 33.096039>,  <28.032339, 33.279255, 33.314140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001877, 32.532276, 33.096039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939756, 32.754372, 32.769215>,  <27.902485, 32.887630, 32.573120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939756, 32.754372, 32.769215>,  <28.001877, 32.532276, 33.096039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939756, 32.754372, 32.769215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712210, -0.510229, -0.482103,
		-0.684572, -0.656789, -0.316212,
		-0.155299, 0.555243, -0.817060,
		27.893167, 32.920944, 32.524097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423740, 32.875904, 32.712189>,  <28.001877, 32.532276, 33.096039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423740, 32.875904, 32.712189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745323, 32.735920, 32.904510>,  <28.938272, 32.651928, 33.019905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745323, 32.735920, 32.904510>,  <28.423740, 32.875904, 32.712189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745323, 32.735920, 32.904510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139575, -0.674882, -0.724606,
		0.578074, 0.649662, -0.493731,
		0.803958, -0.349964, 0.480808,
		28.986511, 32.630932, 33.048752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578804, 33.206104, 32.075974>,  <28.423740, 32.875904, 32.712189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578804, 33.206104, 32.075974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396772, 32.945889, 31.832762>,  <28.287554, 32.789757, 31.686834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396772, 32.945889, 31.832762>,  <28.578804, 33.206104, 32.075974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396772, 32.945889, 31.832762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836482, 0.546426, 0.041431,
		0.305289, 0.527459, -0.792834,
		-0.455078, -0.650543, -0.608028,
		28.260248, 32.750725, 31.650352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217625, 33.606281, 31.702511>,  <28.578804, 33.206104, 32.075974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217625, 33.606281, 31.702511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044485, 33.245815, 31.711882>,  <27.940601, 33.029537, 31.717505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044485, 33.245815, 31.711882>,  <28.217625, 33.606281, 31.702511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044485, 33.245815, 31.711882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898173, 0.433342, 0.074159,
		-0.076980, 0.011060, -0.996971,
		-0.432849, -0.901162, 0.023425,
		27.914631, 32.975468, 31.718908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535700, 33.470695, 31.517292>,  <28.217625, 33.606281, 31.702511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535700, 33.470695, 31.517292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585760, 33.220215, 31.825113>,  <27.615797, 33.069927, 32.009808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585760, 33.220215, 31.825113>,  <27.535700, 33.470695, 31.517292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585760, 33.220215, 31.825113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951380, 0.144289, 0.272133,
		-0.281447, -0.766197, -0.577693,
		0.125153, -0.626197, 0.769554,
		27.623306, 33.032356, 32.055981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950342, 33.094475, 31.653160>,  <27.535700, 33.470695, 31.517292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950342, 33.094475, 31.653160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130507, 33.070904, 32.009510>,  <27.238605, 33.056763, 32.223320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130507, 33.070904, 32.009510>,  <26.950342, 33.094475, 31.653160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130507, 33.070904, 32.009510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844042, 0.297199, 0.446392,
		-0.291071, -0.952996, 0.084126,
		0.450412, -0.058926, 0.890874,
		27.265631, 33.053226, 32.276772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428648, 32.821594, 32.134190>,  <26.950342, 33.094475, 31.653160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428648, 32.821594, 32.134190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698652, 32.996529, 32.371876>,  <26.860655, 33.101490, 32.514488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698652, 32.996529, 32.371876>,  <26.428648, 32.821594, 32.134190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698652, 32.996529, 32.371876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736926, 0.360253, 0.571977,
		0.036079, -0.823986, 0.565461,
		0.675010, 0.437339, 0.594219,
		26.901155, 33.127731, 32.550140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.240309, 32.775532, 32.818962>,  <26.428648, 32.821594, 32.134190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.240309, 32.775532, 32.818962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478401, 33.095512, 32.849365>,  <26.621258, 33.287502, 32.867607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478401, 33.095512, 32.849365>,  <26.240309, 32.775532, 32.818962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478401, 33.095512, 32.849365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689552, 0.459930, 0.559449,
		0.412572, -0.385415, 0.825372,
		0.595233, 0.799950, 0.076010,
		26.656971, 33.335499, 32.872166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431782, 32.842369, 33.532551>,  <26.240309, 32.775532, 32.818962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431782, 32.842369, 33.532551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438194, 33.190166, 33.335075>,  <26.442041, 33.398846, 33.216591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438194, 33.190166, 33.335075>,  <26.431782, 32.842369, 33.532551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438194, 33.190166, 33.335075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687719, 0.367999, 0.625795,
		0.725800, 0.329488, 0.603864,
		0.016030, 0.869491, -0.493689,
		26.443003, 33.451015, 33.186970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331884, 33.278656, 34.045334>,  <26.431782, 32.842369, 33.532551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331884, 33.278656, 34.045334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264393, 33.512074, 33.727589>,  <26.223898, 33.652122, 33.536942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264393, 33.512074, 33.727589>,  <26.331884, 33.278656, 34.045334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264393, 33.512074, 33.727589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633420, 0.553278, 0.540981,
		0.755188, 0.594445, 0.276272,
		-0.168728, 0.583539, -0.794363,
		26.213774, 33.687134, 33.489281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506500, 33.627762, 34.617340>,  <26.331884, 33.278656, 34.045334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506500, 33.627762, 34.617340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671457, 33.967098, 34.484528>,  <26.770432, 34.170700, 34.404839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671457, 33.967098, 34.484528>,  <26.506500, 33.627762, 34.617340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671457, 33.967098, 34.484528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897038, -0.314563, 0.310440,
		0.158914, -0.425871, -0.890719,
		0.412395, 0.848342, -0.332034,
		26.795176, 34.221600, 34.384918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035656, 33.519505, 34.182549>,  <26.506500, 33.627762, 34.617340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035656, 33.519505, 34.182549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113810, 33.838531, 34.410831>,  <27.160702, 34.029949, 34.547802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113810, 33.838531, 34.410831>,  <27.035656, 33.519505, 34.182549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113810, 33.838531, 34.410831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806624, -0.461687, 0.369057,
		0.557837, 0.388239, -0.733545,
		0.195385, 0.797569, 0.570709,
		27.172424, 34.077801, 34.582043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554205, 34.105869, 34.123726>,  <27.035656, 33.519505, 34.182549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554205, 34.105869, 34.123726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948187, 34.107807, 34.192822>,  <28.184576, 34.108971, 34.234280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948187, 34.107807, 34.192822>,  <27.554205, 34.105869, 34.123726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948187, 34.107807, 34.192822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167954, 0.262010, 0.950338,
		-0.040652, -0.965053, 0.258883,
		0.984957, 0.004848, 0.172736,
		28.243673, 34.109261, 34.244640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812731, 33.985973, 34.855759>,  <27.554205, 34.105869, 34.123726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812731, 33.985973, 34.855759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150562, 34.152027, 34.720497>,  <28.353262, 34.251659, 34.639339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150562, 34.152027, 34.720497>,  <27.812731, 33.985973, 34.855759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150562, 34.152027, 34.720497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328567, 0.096823, 0.939505,
		0.422764, -0.904592, -0.054626,
		0.844580, 0.415137, -0.338152,
		28.403936, 34.276569, 34.619053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323315, 33.564968, 35.112862>,  <27.812731, 33.985973, 34.855759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323315, 33.564968, 35.112862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446085, 33.941738, 35.058338>,  <28.519747, 34.167801, 35.025623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446085, 33.941738, 35.058338>,  <28.323315, 33.564968, 35.112862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446085, 33.941738, 35.058338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376774, 0.011270, 0.926237,
		0.873979, -0.335643, -0.351433,
		0.306925, 0.941922, -0.136311,
		28.538162, 34.224316, 35.017445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099606, 33.696201, 35.032162>,  <28.323315, 33.564968, 35.112862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099606, 33.696201, 35.032162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854542, 33.942974, 35.229763>,  <28.707502, 34.091038, 35.348324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854542, 33.942974, 35.229763>,  <29.099606, 33.696201, 35.032162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854542, 33.942974, 35.229763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529904, -0.143107, 0.835896,
		0.586387, 0.773897, -0.239238,
		-0.612661, 0.616931, 0.494007,
		28.670744, 34.128052, 35.377964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439953, 34.210739, 35.421951>,  <29.099606, 33.696201, 35.032162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439953, 34.210739, 35.421951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095478, 34.128170, 35.607742>,  <28.888792, 34.078629, 35.719219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095478, 34.128170, 35.607742>,  <29.439953, 34.210739, 35.421951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095478, 34.128170, 35.607742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492400, -0.112142, 0.863115,
		-0.126082, 0.972014, 0.198220,
		-0.861189, -0.206426, 0.464480,
		28.837122, 34.066242, 35.747086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251667, 33.824726, 36.008488>,  <29.439953, 34.210739, 35.421951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251667, 33.824726, 36.008488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310232, 33.530952, 35.743408>,  <29.345371, 33.354687, 35.584362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310232, 33.530952, 35.743408>,  <29.251667, 33.824726, 36.008488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310232, 33.530952, 35.743408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776611, -0.329608, 0.536874,
		-0.612730, -0.593261, 0.522114,
		0.146413, -0.734438, -0.662694,
		29.354156, 33.310619, 35.544601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343046, 33.229916, 36.441650>,  <29.251667, 33.824726, 36.008488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343046, 33.229916, 36.441650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519596, 33.210205, 36.083263>,  <29.625526, 33.198380, 35.868229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519596, 33.210205, 36.083263>,  <29.343046, 33.229916, 36.441650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519596, 33.210205, 36.083263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852220, -0.289563, 0.435746,
		-0.280909, -0.955890, -0.085817,
		0.441374, -0.049269, -0.895969,
		29.652008, 33.195423, 35.814472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723709, 32.599545, 36.327839>,  <29.343046, 33.229916, 36.441650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723709, 32.599545, 36.327839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908089, 32.868778, 36.096500>,  <30.018717, 33.030319, 35.957699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908089, 32.868778, 36.096500>,  <29.723709, 32.599545, 36.327839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908089, 32.868778, 36.096500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844888, -0.532211, 0.053997,
		-0.271457, -0.513527, -0.814003,
		0.460950, 0.673084, -0.578345,
		30.046373, 33.070702, 35.922997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032618, 32.267433, 35.691441>,  <29.723709, 32.599545, 36.327839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032618, 32.267433, 35.691441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233273, 32.594090, 35.805595>,  <30.353666, 32.790085, 35.874088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233273, 32.594090, 35.805595>,  <30.032618, 32.267433, 35.691441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233273, 32.594090, 35.805595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858059, -0.511649, -0.044151,
		0.109964, 0.267030, -0.957394,
		0.501640, 0.816646, 0.285390,
		30.383764, 32.839085, 35.891212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543634, 32.603359, 35.155624>,  <30.032618, 32.267433, 35.691441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543634, 32.603359, 35.155624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668198, 32.687084, 35.526398>,  <30.742935, 32.737320, 35.748863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668198, 32.687084, 35.526398>,  <30.543634, 32.603359, 35.155624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668198, 32.687084, 35.526398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856188, -0.484990, -0.178122,
		0.412272, 0.849101, -0.330242,
		0.311407, 0.209315, 0.926937,
		30.761620, 32.749878, 35.804478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209070, 32.922802, 35.092781>,  <30.543634, 32.603359, 35.155624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209070, 32.922802, 35.092781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201082, 32.757721, 35.457039>,  <31.196289, 32.658672, 35.675594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201082, 32.757721, 35.457039>,  <31.209070, 32.922802, 35.092781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201082, 32.757721, 35.457039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860351, -0.471080, -0.194630,
		0.509312, 0.779588, 0.364479,
		-0.019968, -0.412706, 0.910645,
		31.195091, 32.633907, 35.730232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886608, 32.947868, 35.323536>,  <31.209070, 32.922802, 35.092781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886608, 32.947868, 35.323536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703922, 32.682335, 35.560429>,  <31.594311, 32.523014, 35.702564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703922, 32.682335, 35.560429>,  <31.886608, 32.947868, 35.323536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703922, 32.682335, 35.560429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838299, -0.543970, 0.036742,
		0.297766, 0.513248, 0.804930,
		-0.456716, -0.663832, 0.592231,
		31.566908, 32.483185, 35.738098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431122, 32.734196, 34.838211>,  <31.886608, 32.947868, 35.323536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431122, 32.734196, 34.838211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553047, 32.620300, 35.201752>,  <32.626202, 32.551964, 35.419876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553047, 32.620300, 35.201752>,  <32.431122, 32.734196, 34.838211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553047, 32.620300, 35.201752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946578, -0.196040, 0.256043,
		0.105268, -0.938347, -0.329278,
		0.304809, -0.284734, 0.908855,
		32.644489, 32.534882, 35.474407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033188, 32.191040, 35.232136>,  <32.431122, 32.734196, 34.838211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033188, 32.191040, 35.232136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232002, 32.317379, 35.555416>,  <32.351292, 32.393181, 35.749386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232002, 32.317379, 35.555416>,  <32.033188, 32.191040, 35.232136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232002, 32.317379, 35.555416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837245, -0.070146, 0.542310,
		0.227981, -0.946213, 0.229578,
		0.497037, 0.315849, 0.808204,
		32.381115, 32.412132, 35.797878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878036, 31.686117, 35.862392>,  <32.033188, 32.191040, 35.232136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878036, 31.686117, 35.862392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978195, 32.058094, 35.970104>,  <32.038292, 32.281281, 36.034733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978195, 32.058094, 35.970104>,  <31.878036, 31.686117, 35.862392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978195, 32.058094, 35.970104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902011, 0.123050, 0.413806,
		0.351680, -0.346509, 0.869628,
		0.250396, 0.929941, 0.269280,
		32.053314, 32.337078, 36.050888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433237, 31.809940, 36.470398>,  <31.878036, 31.686117, 35.862392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433237, 31.809940, 36.470398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549171, 32.163055, 36.322514>,  <31.618732, 32.374924, 36.233784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549171, 32.163055, 36.322514>,  <31.433237, 31.809940, 36.470398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549171, 32.163055, 36.322514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904384, 0.379027, 0.196033,
		0.313185, 0.277541, 0.908233,
		0.289837, 0.882785, -0.369709,
		31.636122, 32.427891, 36.211601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212545, 32.335278, 36.871613>,  <31.433237, 31.809940, 36.470398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212545, 32.335278, 36.871613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245634, 32.533119, 36.525543>,  <31.265488, 32.651825, 36.317902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245634, 32.533119, 36.525543>,  <31.212545, 32.335278, 36.871613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245634, 32.533119, 36.525543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877980, 0.446905, 0.171543,
		0.471496, 0.745414, 0.471221,
		0.082720, 0.494605, -0.865172,
		31.270451, 32.681499, 36.265991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131853, 33.141953, 36.930248>,  <31.212545, 32.335278, 36.871613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131853, 33.141953, 36.930248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020025, 33.008865, 36.569996>,  <30.952929, 32.929012, 36.353844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020025, 33.008865, 36.569996>,  <31.131853, 33.141953, 36.930248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020025, 33.008865, 36.569996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780936, 0.624501, 0.011704,
		0.558552, 0.706609, -0.434424,
		-0.279568, -0.332720, -0.900632,
		30.936155, 32.909050, 36.299805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844057, 33.770576, 36.532413>,  <31.131853, 33.141953, 36.930248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844057, 33.770576, 36.532413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677277, 33.445244, 36.370113>,  <30.577209, 33.250042, 36.272732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677277, 33.445244, 36.370113>,  <30.844057, 33.770576, 36.532413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677277, 33.445244, 36.370113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821783, 0.528067, -0.214054,
		0.388363, 0.244193, -0.888563,
		-0.416950, -0.813336, -0.405755,
		30.552191, 33.201244, 36.248386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677650, 33.951485, 35.828136>,  <30.844057, 33.770576, 36.532413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677650, 33.951485, 35.828136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419729, 33.685360, 35.978645>,  <30.264977, 33.525684, 36.068951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419729, 33.685360, 35.978645>,  <30.677650, 33.951485, 35.828136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419729, 33.685360, 35.978645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763521, 0.537765, -0.357552,
		0.035536, -0.517846, -0.854735,
		-0.644804, -0.665315, 0.376277,
		30.226288, 33.485767, 36.091530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187155, 33.410679, 35.760658>,  <30.677650, 33.951485, 35.828136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187155, 33.410679, 35.760658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261639, 33.191528, 36.086887>,  <31.306330, 33.060036, 36.282623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261639, 33.191528, 36.086887>,  <31.187155, 33.410679, 35.760658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261639, 33.191528, 36.086887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975299, 0.002691, -0.220872,
		0.118817, 0.836553, 0.534848,
		0.186210, -0.547880, 0.815569,
		31.317501, 33.027164, 36.331558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789772, 33.698727, 36.193031>,  <31.187155, 33.410679, 35.760658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789772, 33.698727, 36.193031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765865, 33.302235, 36.240189>,  <31.751520, 33.064339, 36.268482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765865, 33.302235, 36.240189>,  <31.789772, 33.698727, 36.193031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765865, 33.302235, 36.240189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947016, -0.093645, -0.307231,
		0.315576, 0.093289, 0.944304,
		-0.059768, -0.991225, 0.117898,
		31.747934, 33.004868, 36.275558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435421, 33.530281, 36.394753>,  <31.789772, 33.698727, 36.193031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435421, 33.530281, 36.394753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293674, 33.179050, 36.266132>,  <32.208626, 32.968311, 36.188961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293674, 33.179050, 36.266132>,  <32.435421, 33.530281, 36.394753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293674, 33.179050, 36.266132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933159, -0.309886, -0.182168,
		0.060314, -0.364616, 0.929203,
		-0.354368, -0.878081, -0.321554,
		32.187363, 32.915627, 36.169666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896172, 33.055962, 36.720341>,  <32.435421, 33.530281, 36.394753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896172, 33.055962, 36.720341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722656, 32.905540, 36.392826>,  <32.618546, 32.815289, 36.196316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722656, 32.905540, 36.392826>,  <32.896172, 33.055962, 36.720341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722656, 32.905540, 36.392826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830629, -0.519016, -0.201689,
		-0.349119, -0.767600, 0.537500,
		-0.433788, -0.376050, -0.818789,
		32.592522, 32.792725, 36.147190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979122, 32.294670, 36.716057>,  <32.896172, 33.055962, 36.720341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979122, 32.294670, 36.716057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888664, 32.373310, 36.334438>,  <32.834389, 32.420494, 36.105465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888664, 32.373310, 36.334438>,  <32.979122, 32.294670, 36.716057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888664, 32.373310, 36.334438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772258, -0.560761, -0.298606,
		-0.593699, -0.804298, -0.025016,
		-0.226140, 0.196601, -0.954048,
		32.820824, 32.432289, 36.048225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690933, 32.288494, 37.025883>,  <32.979122, 32.294670, 36.716057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690933, 32.288494, 37.025883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024464, 32.469326, 37.152596>,  <34.224583, 32.577824, 37.228622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024464, 32.469326, 37.152596>,  <33.690933, 32.288494, 37.025883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024464, 32.469326, 37.152596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016106, -0.593545, 0.804640,
		0.551787, -0.665830, -0.502196,
		0.833829, 0.452079, 0.316786,
		34.274612, 32.604950, 37.247631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230217, 31.818205, 37.010254>,  <33.690933, 32.288494, 37.025883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230217, 31.818205, 37.010254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255390, 32.106705, 37.286179>,  <34.270493, 32.279804, 37.451733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255390, 32.106705, 37.286179>,  <34.230217, 31.818205, 37.010254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255390, 32.106705, 37.286179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173406, -0.672763, 0.719250,
		0.982838, -0.164881, 0.082731,
		0.062932, 0.721252, 0.689808,
		34.274269, 32.323082, 37.493122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850601, 31.767857, 37.408878>,  <34.230217, 31.818205, 37.010254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850601, 31.767857, 37.408878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609543, 31.961432, 37.662689>,  <34.464909, 32.077576, 37.814976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609543, 31.961432, 37.662689>,  <34.850601, 31.767857, 37.408878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609543, 31.961432, 37.662689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176243, -0.694789, 0.697285,
		0.778305, 0.532046, 0.333420,
		-0.602644, 0.483937, 0.634527,
		34.428749, 32.106613, 37.853046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244034, 31.747583, 37.923882>,  <34.850601, 31.767857, 37.408878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244034, 31.747583, 37.923882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891674, 31.820267, 38.098698>,  <34.680260, 31.863876, 38.203587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891674, 31.820267, 38.098698>,  <35.244034, 31.747583, 37.923882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891674, 31.820267, 38.098698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113685, -0.815111, 0.568041,
		0.459451, 0.550071, 0.697372,
		-0.880898, 0.181706, 0.437038,
		34.627403, 31.874779, 38.229809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298836, 31.615828, 38.718285>,  <35.244034, 31.747583, 37.923882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298836, 31.615828, 38.718285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915432, 31.578217, 38.610645>,  <34.685390, 31.555649, 38.546062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915432, 31.578217, 38.610645>,  <35.298836, 31.615828, 38.718285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915432, 31.578217, 38.610645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094833, -0.785065, 0.612111,
		-0.268816, 0.612235, 0.743577,
		-0.958512, -0.094030, -0.269098,
		34.627880, 31.550007, 38.529915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890102, 31.184467, 38.936310>,  <35.298836, 31.615828, 38.718285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890102, 31.184467, 38.936310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950195, 31.198629, 39.331516>,  <35.986252, 31.207127, 39.568642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950195, 31.198629, 39.331516>,  <35.890102, 31.184467, 38.936310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950195, 31.198629, 39.331516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962630, -0.222533, 0.154344,
		0.225330, -0.974282, 0.000649,
		0.150230, 0.035403, 0.988017,
		35.995266, 31.209249, 39.627922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368443, 30.897177, 39.290180>,  <35.890102, 31.184467, 38.936310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368443, 30.897177, 39.290180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507614, 30.979858, 39.655960>,  <35.591118, 31.029467, 39.875427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507614, 30.979858, 39.655960>,  <35.368443, 30.897177, 39.290180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507614, 30.979858, 39.655960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915789, -0.133855, 0.378700,
		0.200683, -0.969204, 0.142725,
		0.347932, 0.206705, 0.914448,
		35.611996, 31.041870, 39.930294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807194, 31.389233, 39.693748>,  <35.368443, 30.897177, 39.290180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807194, 31.389233, 39.693748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810455, 31.430704, 40.091579>,  <34.812412, 31.455587, 40.330276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810455, 31.430704, 40.091579>,  <34.807194, 31.389233, 39.693748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810455, 31.430704, 40.091579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953493, 0.300497, -0.023504,
		-0.301304, -0.948131, 0.101309,
		0.008158, 0.103679, 0.994577,
		34.812904, 31.461807, 40.389954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331615, 30.848446, 40.214611>,  <34.807194, 31.389233, 39.693748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331615, 30.848446, 40.214611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387051, 31.229780, 40.321899>,  <34.420311, 31.458580, 40.386272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387051, 31.229780, 40.321899>,  <34.331615, 30.848446, 40.214611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387051, 31.229780, 40.321899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981943, 0.167489, -0.087955,
		-0.128775, -0.251191, 0.959333,
		0.138584, 0.953336, 0.268224,
		34.428627, 31.515781, 40.402367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437065, 30.591085, 39.557693>,  <34.331615, 30.848446, 40.214611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437065, 30.591085, 39.557693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092903, 30.435951, 39.425457>,  <33.886406, 30.342871, 39.346115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092903, 30.435951, 39.425457>,  <34.437065, 30.591085, 39.557693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092903, 30.435951, 39.425457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118796, 0.783479, -0.609958,
		0.495573, -0.485537, -0.720181,
		-0.860404, -0.387833, -0.330591,
		33.834782, 30.319601, 39.326279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531231, 30.506018, 38.840267>,  <34.437065, 30.591085, 39.557693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531231, 30.506018, 38.840267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143612, 30.536276, 38.934273>,  <33.911041, 30.554432, 38.990677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143612, 30.536276, 38.934273>,  <34.531231, 30.506018, 38.840267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143612, 30.536276, 38.934273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092018, 0.772660, -0.628116,
		-0.229104, -0.630297, -0.741780,
		-0.969043, 0.075647, 0.235018,
		33.852898, 30.558969, 39.004780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218716, 30.433773, 38.193348>,  <34.531231, 30.506018, 38.840267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218716, 30.433773, 38.193348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012623, 30.642059, 38.465641>,  <33.888969, 30.767031, 38.629017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012623, 30.642059, 38.465641>,  <34.218716, 30.433773, 38.193348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012623, 30.642059, 38.465641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049458, 0.774882, -0.630168,
		-0.855624, -0.358349, -0.373488,
		-0.515230, 0.520715, 0.680731,
		33.858055, 30.798273, 38.669861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633282, 30.943830, 38.082111>,  <34.218716, 30.433773, 38.193348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633282, 30.943830, 38.082111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812622, 31.118942, 38.393837>,  <33.920227, 31.224009, 38.580872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812622, 31.118942, 38.393837>,  <33.633282, 30.943830, 38.082111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812622, 31.118942, 38.393837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133356, 0.829338, -0.542600,
		-0.883855, 0.347201, 0.313453,
		0.448349, 0.437779, 0.779315,
		33.947128, 31.250277, 38.627632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269150, 31.588993, 38.313980>,  <33.633282, 30.943830, 38.082111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269150, 31.588993, 38.313980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664440, 31.597162, 38.374645>,  <33.901615, 31.602064, 38.411045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664440, 31.597162, 38.374645>,  <33.269150, 31.588993, 38.313980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664440, 31.597162, 38.374645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048606, 0.897844, -0.437623,
		-0.145108, 0.439840, 0.886275,
		0.988221, 0.020425, 0.151663,
		33.960907, 31.603291, 38.420143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319717, 32.201797, 38.553818>,  <33.269150, 31.588993, 38.313980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319717, 32.201797, 38.553818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683907, 32.090946, 38.431026>,  <33.902420, 32.024437, 38.357349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683907, 32.090946, 38.431026>,  <33.319717, 32.201797, 38.553818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683907, 32.090946, 38.431026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122554, 0.889731, -0.439726,
		0.394991, 0.362737, 0.844040,
		0.910474, -0.277129, -0.306981,
		33.957050, 32.007809, 38.338932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664158, 32.824574, 38.562897>,  <33.319717, 32.201797, 38.553818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664158, 32.824574, 38.562897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891579, 32.577999, 38.344997>,  <34.028030, 32.430054, 38.214256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891579, 32.577999, 38.344997>,  <33.664158, 32.824574, 38.562897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891579, 32.577999, 38.344997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259593, 0.762798, -0.592242,
		0.780612, 0.195309, 0.593715,
		0.568556, -0.616436, -0.544749,
		34.062145, 32.393070, 38.181572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371010, 33.218449, 38.454296>,  <33.664158, 32.824574, 38.562897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371010, 33.218449, 38.454296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321720, 32.951736, 38.160297>,  <34.292145, 32.791710, 37.983898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321720, 32.951736, 38.160297>,  <34.371010, 33.218449, 38.454296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321720, 32.951736, 38.160297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249317, 0.696089, -0.673277,
		0.960550, -0.266214, 0.080461,
		-0.123228, -0.666776, -0.735000,
		34.284752, 32.751705, 37.939796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844894, 33.296604, 37.968533>,  <34.371010, 33.218449, 38.454296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844894, 33.296604, 37.968533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533295, 33.152679, 37.763126>,  <34.346336, 33.066326, 37.639881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533295, 33.152679, 37.763126>,  <34.844894, 33.296604, 37.968533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533295, 33.152679, 37.763126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201785, 0.631551, -0.748616,
		0.593669, -0.686791, -0.419374,
		-0.778999, -0.359807, -0.513516,
		34.299595, 33.044739, 37.609070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137012, 33.061535, 37.314548>,  <34.844894, 33.296604, 37.968533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137012, 33.061535, 37.314548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747128, 33.150616, 37.307110>,  <34.513199, 33.204063, 37.302647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747128, 33.150616, 37.307110>,  <35.137012, 33.061535, 37.314548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747128, 33.150616, 37.307110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081043, 0.274676, -0.958115,
		-0.208265, -0.935391, -0.285778,
		-0.974709, 0.222703, -0.018601,
		34.454716, 33.217426, 37.301529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868195, 32.673012, 36.809032>,  <35.137012, 33.061535, 37.314548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868195, 32.673012, 36.809032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635357, 32.995785, 36.849094>,  <34.495655, 33.189449, 36.873131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635357, 32.995785, 36.849094>,  <34.868195, 32.673012, 36.809032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635357, 32.995785, 36.849094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006269, 0.118712, -0.992909,
		-0.813097, -0.578595, -0.064043,
		-0.582095, 0.806930, 0.100152,
		34.460728, 33.237865, 36.879139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398880, 32.592632, 36.271656>,  <34.868195, 32.673012, 36.809032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398880, 32.592632, 36.271656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369083, 32.981476, 36.360615>,  <34.351204, 33.214783, 36.413990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369083, 32.981476, 36.360615>,  <34.398880, 32.592632, 36.271656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369083, 32.981476, 36.360615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193262, 0.204717, -0.959552,
		-0.978315, -0.114462, 0.172621,
		-0.074494, 0.972106, 0.222399,
		34.346737, 33.273109, 36.427334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775105, 32.757610, 35.961761>,  <34.398880, 32.592632, 36.271656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775105, 32.757610, 35.961761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974243, 33.097130, 36.032963>,  <34.093727, 33.300842, 36.075684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974243, 33.097130, 36.032963>,  <33.775105, 32.757610, 35.961761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974243, 33.097130, 36.032963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244340, 0.334214, -0.910274,
		-0.832132, 0.409685, 0.373783,
		0.497849, 0.848799, 0.178008,
		34.123596, 33.351768, 36.086365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413898, 33.340370, 35.580517>,  <33.775105, 32.757610, 35.961761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413898, 33.340370, 35.580517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786991, 33.478920, 35.620579>,  <34.010849, 33.562050, 35.644615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786991, 33.478920, 35.620579>,  <33.413898, 33.340370, 35.580517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786991, 33.478920, 35.620579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106311, 0.529629, -0.841541,
		-0.344532, 0.774288, 0.530827,
		0.932736, 0.346370, 0.100159,
		34.066811, 33.582832, 35.650627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379322, 33.984177, 35.484467>,  <33.413898, 33.340370, 35.580517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379322, 33.984177, 35.484467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762318, 33.905315, 35.400234>,  <33.992115, 33.857998, 35.349697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762318, 33.905315, 35.400234>,  <33.379322, 33.984177, 35.484467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762318, 33.905315, 35.400234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105758, 0.439248, -0.892119,
		0.268380, 0.876466, 0.399725,
		0.957490, -0.197153, -0.210579,
		34.049564, 33.846169, 35.337059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559624, 34.614719, 35.175446>,  <33.379322, 33.984177, 35.484467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559624, 34.614719, 35.175446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857456, 34.360703, 35.093151>,  <34.036156, 34.208294, 35.043774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857456, 34.360703, 35.093151>,  <33.559624, 34.614719, 35.175446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857456, 34.360703, 35.093151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044796, 0.355045, -0.933775,
		0.666032, 0.686051, 0.292806,
		0.744577, -0.635040, -0.205739,
		34.080830, 34.170189, 35.031429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059040, 34.967411, 34.814350>,  <33.559624, 34.614719, 35.175446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059040, 34.967411, 34.814350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110703, 34.585911, 34.705780>,  <34.141701, 34.357010, 34.640640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110703, 34.585911, 34.705780>,  <34.059040, 34.967411, 34.814350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110703, 34.585911, 34.705780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143892, 0.252790, -0.956761,
		0.981128, 0.162631, -0.104588,
		0.129161, -0.953755, -0.271421,
		34.149452, 34.299786, 34.624355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542564, 34.943829, 34.247765>,  <34.059040, 34.967411, 34.814350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542564, 34.943829, 34.247765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363182, 34.588581, 34.207504>,  <34.255554, 34.375431, 34.183346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363182, 34.588581, 34.207504>,  <34.542564, 34.943829, 34.247765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363182, 34.588581, 34.207504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057850, 0.083534, -0.994824,
		0.891933, -0.451954, 0.013917,
		-0.448452, -0.888122, -0.100652,
		34.228645, 34.322144, 34.177307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938431, 34.693169, 33.650829>,  <34.542564, 34.943829, 34.247765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938431, 34.693169, 33.650829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604458, 34.473030, 33.649807>,  <34.404072, 34.340946, 33.649193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604458, 34.473030, 33.649807>,  <34.938431, 34.693169, 33.650829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604458, 34.473030, 33.649807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037280, 0.061194, -0.997429,
		0.549086, -0.832692, -0.071610,
		-0.834934, -0.550344, -0.002558,
		34.353977, 34.307926, 33.649040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855618, 34.291794, 33.093147>,  <34.938431, 34.693169, 33.650829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855618, 34.291794, 33.093147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472031, 34.216076, 33.177574>,  <34.241879, 34.170643, 33.228230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472031, 34.216076, 33.177574>,  <34.855618, 34.291794, 33.093147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472031, 34.216076, 33.177574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238382, 0.135312, -0.961699,
		0.153508, -0.972548, -0.174890,
		-0.958963, -0.189319, 0.211067,
		34.184341, 34.159286, 33.240894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632809, 33.727669, 32.608494>,  <34.855618, 34.291794, 33.093147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632809, 33.727669, 32.608494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320293, 33.946083, 32.729446>,  <34.132782, 34.077129, 32.802017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320293, 33.946083, 32.729446>,  <34.632809, 33.727669, 32.608494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320293, 33.946083, 32.729446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264631, 0.148973, -0.952773,
		-0.565293, -0.824411, 0.028107,
		-0.781290, 0.546034, 0.302378,
		34.085907, 34.109894, 32.820160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857639, 33.377335, 32.456676>,  <34.632809, 33.727669, 32.608494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857639, 33.377335, 32.456676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833977, 33.776123, 32.476868>,  <33.819778, 34.015396, 32.488983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833977, 33.776123, 32.476868>,  <33.857639, 33.377335, 32.456676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833977, 33.776123, 32.476868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201458, 0.037601, -0.978775,
		-0.977709, -0.068069, 0.198624,
		-0.059156, 0.996972, 0.050476,
		33.816231, 34.075214, 32.492012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234413, 33.549438, 32.136559>,  <33.857639, 33.377335, 32.456676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234413, 33.549438, 32.136559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438873, 33.893181, 32.142685>,  <33.561550, 34.099426, 32.146362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438873, 33.893181, 32.142685>,  <33.234413, 33.549438, 32.136559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438873, 33.893181, 32.142685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224811, 0.150874, -0.962651,
		-0.829570, 0.488616, 0.270312,
		0.511150, 0.859355, 0.015315,
		33.592216, 34.150986, 32.147278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952984, 33.984715, 31.688126>,  <33.234413, 33.549438, 32.136559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952984, 33.984715, 31.688126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291740, 34.194351, 31.724136>,  <33.494995, 34.320133, 31.745743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291740, 34.194351, 31.724136>,  <32.952984, 33.984715, 31.688126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291740, 34.194351, 31.724136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114503, 0.345053, -0.931573,
		-0.519294, 0.778631, 0.352232,
		0.846890, 0.524092, 0.090028,
		33.545807, 34.351578, 31.751144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899548, 34.725071, 31.516468>,  <32.952984, 33.984715, 31.688126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899548, 34.725071, 31.516468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280338, 34.627720, 31.442169>,  <33.508812, 34.569309, 31.397591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280338, 34.627720, 31.442169>,  <32.899548, 34.725071, 31.516468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280338, 34.627720, 31.442169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122309, 0.253861, -0.959476,
		0.280670, 0.936120, 0.211903,
		0.951979, -0.243379, -0.185747,
		33.565933, 34.554707, 31.386446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036919, 35.274509, 31.031790>,  <32.899548, 34.725071, 31.516468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036919, 35.274509, 31.031790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332352, 35.006325, 31.003557>,  <33.509613, 34.845413, 30.986618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332352, 35.006325, 31.003557>,  <33.036919, 35.274509, 31.031790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332352, 35.006325, 31.003557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215580, 0.334078, -0.917560,
		0.638765, 0.662479, 0.391282,
		0.738582, -0.670458, -0.070580,
		33.553925, 34.805187, 30.982384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576313, 35.648178, 30.813738>,  <33.036919, 35.274509, 31.031790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576313, 35.648178, 30.813738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660690, 35.271946, 30.707291>,  <33.711315, 35.046207, 30.643423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660690, 35.271946, 30.707291>,  <33.576313, 35.648178, 30.813738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660690, 35.271946, 30.707291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164789, 0.302565, -0.938775,
		0.963508, 0.154174, 0.218820,
		0.210942, -0.940577, -0.266118,
		33.723972, 34.989773, 30.627455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145145, 35.792015, 30.365095>,  <33.576313, 35.648178, 30.813738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145145, 35.792015, 30.365095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009968, 35.424133, 30.285156>,  <33.928860, 35.203403, 30.237192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009968, 35.424133, 30.285156>,  <34.145145, 35.792015, 30.365095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009968, 35.424133, 30.285156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115148, 0.170343, -0.978634,
		0.934095, -0.353738, 0.048335,
		-0.337947, -0.919702, -0.199849,
		33.908585, 35.148224, 30.225201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661316, 35.456131, 29.941317>,  <34.145145, 35.792015, 30.365095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661316, 35.456131, 29.941317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315174, 35.260185, 29.899006>,  <34.107487, 35.142616, 29.873619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315174, 35.260185, 29.899006>,  <34.661316, 35.456131, 29.941317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315174, 35.260185, 29.899006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017850, 0.241063, -0.970345,
		0.500838, -0.837807, -0.217350,
		-0.865357, -0.489866, -0.105778,
		34.055569, 35.113224, 29.867273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799232, 35.289150, 29.252264>,  <34.661316, 35.456131, 29.941317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799232, 35.289150, 29.252264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414120, 35.217026, 29.332804>,  <34.183052, 35.173752, 29.381128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414120, 35.217026, 29.332804>,  <34.799232, 35.289150, 29.252264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414120, 35.217026, 29.332804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254803, 0.356984, -0.898687,
		0.090162, -0.916543, -0.389641,
		-0.962780, -0.180309, 0.201352,
		34.125286, 35.162933, 29.393209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504715, 34.982372, 28.629993>,  <34.799232, 35.289150, 29.252264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504715, 34.982372, 28.629993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171543, 35.113941, 28.808002>,  <33.971642, 35.192883, 28.914808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171543, 35.113941, 28.808002>,  <34.504715, 34.982372, 28.629993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171543, 35.113941, 28.808002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315406, 0.378605, -0.870160,
		-0.454701, -0.865141, -0.211606,
		-0.832926, 0.328921, 0.445023,
		33.921665, 35.212616, 28.941509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005363, 34.886513, 28.061604>,  <34.504715, 34.982372, 28.629993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005363, 34.886513, 28.061604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858246, 35.138760, 28.334970>,  <33.769978, 35.290108, 28.498991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858246, 35.138760, 28.334970>,  <34.005363, 34.886513, 28.061604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858246, 35.138760, 28.334970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408616, 0.550576, -0.727941,
		-0.835321, -0.546985, 0.055182,
		-0.367791, 0.630613, 0.683415,
		33.747910, 35.327942, 28.539995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322296, 35.026051, 27.870871>,  <34.005363, 34.886513, 28.061604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322296, 35.026051, 27.870871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435837, 35.324501, 28.111780>,  <33.503960, 35.503571, 28.256325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435837, 35.324501, 28.111780>,  <33.322296, 35.026051, 27.870871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435837, 35.324501, 28.111780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565252, 0.637567, -0.523448,
		-0.774545, -0.191857, 0.602719,
		0.283847, 0.746122, 0.602272,
		33.520992, 35.548336, 28.292461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706177, 35.440914, 27.959864>,  <33.322296, 35.026051, 27.870871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706177, 35.440914, 27.959864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028015, 35.670551, 28.020584>,  <33.221119, 35.808334, 28.057016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028015, 35.670551, 28.020584>,  <32.706177, 35.440914, 27.959864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028015, 35.670551, 28.020584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224236, 0.530436, -0.817530,
		-0.549862, 0.623740, 0.555518,
		0.804593, 0.574096, 0.151801,
		33.269394, 35.842781, 28.066124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423893, 36.083324, 27.834568>,  <32.706177, 35.440914, 27.959864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423893, 36.083324, 27.834568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821655, 36.119244, 27.812323>,  <33.060314, 36.140793, 27.798975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821655, 36.119244, 27.812323>,  <32.423893, 36.083324, 27.834568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821655, 36.119244, 27.812323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099230, 0.613858, -0.783155,
		-0.036185, 0.784293, 0.619335,
		0.994406, 0.089795, -0.055614,
		33.119976, 36.146183, 27.795639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547657, 36.854244, 27.654057>,  <32.423893, 36.083324, 27.834568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547657, 36.854244, 27.654057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873455, 36.643177, 27.557583>,  <33.068935, 36.516537, 27.499699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873455, 36.643177, 27.557583>,  <32.547657, 36.854244, 27.654057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873455, 36.643177, 27.557583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149867, 0.592955, -0.791167,
		0.560481, 0.608255, 0.562038,
		0.814494, -0.527665, -0.241183,
		33.117802, 36.484879, 27.485228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984745, 37.392776, 27.275249>,  <32.547657, 36.854244, 27.654057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984745, 37.392776, 27.275249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154186, 37.045158, 27.173014>,  <33.255852, 36.836590, 27.111673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154186, 37.045158, 27.173014>,  <32.984745, 37.392776, 27.275249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154186, 37.045158, 27.173014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281996, 0.394645, -0.874491,
		0.860836, 0.298362, 0.412239,
		0.423603, -0.869043, -0.255587,
		33.281265, 36.784447, 27.096338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724926, 37.453621, 27.096903>,  <32.984745, 37.392776, 27.275249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724926, 37.453621, 27.096903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608620, 37.121567, 26.906609>,  <33.538834, 36.922333, 26.792433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608620, 37.121567, 26.906609>,  <33.724926, 37.453621, 27.096903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608620, 37.121567, 26.906609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135728, 0.456403, -0.879360,
		0.947118, -0.320260, -0.020034,
		-0.290767, -0.830138, -0.475736,
		33.521389, 36.872524, 26.763887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296829, 37.221569, 26.585470>,  <33.724926, 37.453621, 27.096903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296829, 37.221569, 26.585470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909946, 37.159428, 26.505095>,  <33.677818, 37.122143, 26.456869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909946, 37.159428, 26.505095>,  <34.296829, 37.221569, 26.585470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909946, 37.159428, 26.505095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099070, 0.497706, -0.861669,
		0.233871, -0.853319, -0.465994,
		-0.967207, -0.155353, -0.200937,
		33.619785, 37.112823, 26.444813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258286, 37.059029, 25.821066>,  <34.296829, 37.221569, 26.585470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258286, 37.059029, 25.821066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884014, 37.152214, 25.927074>,  <33.659451, 37.208126, 25.990679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884014, 37.152214, 25.927074>,  <34.258286, 37.059029, 25.821066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884014, 37.152214, 25.927074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112017, 0.516110, -0.849166,
		-0.334604, -0.824232, -0.456817,
		-0.935678, 0.232962, 0.265021,
		33.603310, 37.222103, 26.006580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868717, 37.145779, 25.293232>,  <34.258286, 37.059029, 25.821066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868717, 37.145779, 25.293232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615704, 37.338501, 25.535807>,  <33.463894, 37.454136, 25.681351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615704, 37.338501, 25.535807>,  <33.868717, 37.145779, 25.293232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615704, 37.338501, 25.535807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050630, 0.755575, -0.653103,
		-0.772877, -0.443813, -0.453532,
		-0.632533, 0.481806, 0.606436,
		33.425945, 37.483044, 25.717737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342060, 37.267277, 24.884270>,  <33.868717, 37.145779, 25.293232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342060, 37.267277, 24.884270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348625, 37.569641, 25.146057>,  <33.352566, 37.751060, 25.303129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348625, 37.569641, 25.146057>,  <33.342060, 37.267277, 24.884270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348625, 37.569641, 25.146057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091899, 0.652926, -0.751826,
		-0.995633, -0.047803, 0.080185,
		0.016415, 0.755912, 0.654467,
		33.353550, 37.796413, 25.342398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925812, 37.739910, 24.651981>,  <33.342060, 37.267277, 24.884270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925812, 37.739910, 24.651981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118668, 37.963097, 24.922155>,  <33.234379, 38.097008, 25.084261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118668, 37.963097, 24.922155>,  <32.925812, 37.739910, 24.651981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118668, 37.963097, 24.922155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069676, 0.744099, -0.664426,
		-0.873320, 0.367406, 0.319881,
		0.482137, 0.557969, 0.675436,
		33.263309, 38.130486, 25.124786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706860, 38.395370, 24.486856>,  <32.925812, 37.739910, 24.651981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706860, 38.395370, 24.486856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997772, 38.480206, 24.747957>,  <33.172318, 38.531105, 24.904617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997772, 38.480206, 24.747957>,  <32.706860, 38.395370, 24.486856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997772, 38.480206, 24.747957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118345, 0.898062, -0.423649,
		-0.676061, 0.385361, 0.628043,
		0.727280, 0.212086, 0.652751,
		33.215958, 38.543831, 24.943783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604485, 39.029453, 24.537464>,  <32.706860, 38.395370, 24.486856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604485, 39.029453, 24.537464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971066, 38.984737, 24.691153>,  <33.191013, 38.957909, 24.783365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971066, 38.984737, 24.691153>,  <32.604485, 39.029453, 24.537464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971066, 38.984737, 24.691153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257550, 0.899652, -0.352553,
		-0.306254, 0.422053, 0.853276,
		0.916448, -0.111790, 0.384222,
		33.245998, 38.951199, 24.806419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799171, 39.617760, 25.009460>,  <32.604485, 39.029453, 24.537464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799171, 39.617760, 25.009460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136307, 39.441467, 24.885925>,  <33.338589, 39.335693, 24.811804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136307, 39.441467, 24.885925>,  <32.799171, 39.617760, 25.009460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136307, 39.441467, 24.885925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366013, 0.890151, -0.271413,
		0.394530, 0.115720, 0.911567,
		0.842840, -0.440727, -0.308837,
		33.389160, 39.309250, 24.793274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319157, 40.096134, 25.303455>,  <32.799171, 39.617760, 25.009460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319157, 40.096134, 25.303455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477982, 39.905186, 24.989906>,  <33.573277, 39.790615, 24.801777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477982, 39.905186, 24.989906>,  <33.319157, 40.096134, 25.303455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477982, 39.905186, 24.989906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435027, 0.849939, -0.297245,
		0.808140, -0.222980, 0.545152,
		0.397066, -0.477372, -0.783872,
		33.597103, 39.761974, 24.754745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971153, 40.392250, 25.295042>,  <33.319157, 40.096134, 25.303455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971153, 40.392250, 25.295042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923534, 40.231026, 24.932083>,  <33.894962, 40.134293, 24.714308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923534, 40.231026, 24.932083>,  <33.971153, 40.392250, 25.295042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923534, 40.231026, 24.932083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393752, 0.819797, -0.415802,
		0.911475, -0.406790, 0.061112,
		-0.119045, -0.403056, -0.907400,
		33.887821, 40.110107, 24.659863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494461, 40.781403, 24.846689>,  <33.971153, 40.392250, 25.295042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494461, 40.781403, 24.846689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266876, 40.579124, 24.587290>,  <34.130325, 40.457756, 24.431650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266876, 40.579124, 24.587290>,  <34.494461, 40.781403, 24.846689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266876, 40.579124, 24.587290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134512, 0.720733, -0.680037,
		0.811286, -0.474148, -0.342050,
		-0.568965, -0.505694, -0.648500,
		34.096188, 40.427418, 24.392740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938393, 40.733612, 24.186766>,  <34.494461, 40.781403, 24.846689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938393, 40.733612, 24.186766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542282, 40.726788, 24.131550>,  <34.304615, 40.722694, 24.098421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542282, 40.726788, 24.131550>,  <34.938393, 40.733612, 24.186766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542282, 40.726788, 24.131550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053491, 0.869404, -0.491199,
		0.128393, -0.493808, -0.860040,
		-0.990280, -0.017062, -0.138040,
		34.245197, 40.721668, 24.090137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854328, 40.887745, 23.525743>,  <34.938393, 40.733612, 24.186766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854328, 40.887745, 23.525743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485428, 40.961258, 23.661793>,  <34.264088, 41.005367, 23.743423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485428, 40.961258, 23.661793>,  <34.854328, 40.887745, 23.525743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485428, 40.961258, 23.661793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082592, 0.765802, -0.637750,
		-0.377678, -0.616254, -0.691079,
		-0.922246, 0.183786, 0.340125,
		34.208755, 41.016396, 23.763830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412678, 40.891994, 22.903357>,  <34.854328, 40.887745, 23.525743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412678, 40.891994, 22.903357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245907, 41.096924, 23.203674>,  <34.145844, 41.219883, 23.383865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245907, 41.096924, 23.203674>,  <34.412678, 40.891994, 22.903357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245907, 41.096924, 23.203674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109943, 0.791524, -0.601168,
		-0.902265, -0.333189, -0.273684,
		-0.416929, 0.512323, 0.750796,
		34.120827, 41.250622, 23.428913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819954, 41.203041, 22.669144>,  <34.412678, 40.891994, 22.903357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819954, 41.203041, 22.669144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907551, 41.421421, 22.992620>,  <33.960110, 41.552448, 23.186707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907551, 41.421421, 22.992620>,  <33.819954, 41.203041, 22.669144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907551, 41.421421, 22.992620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088220, 0.836493, -0.540829,
		-0.971730, 0.047096, 0.231350,
		0.218994, 0.545949, 0.808691,
		33.973248, 41.585205, 23.235228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366051, 41.710957, 22.858446>,  <33.819954, 41.203041, 22.669144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366051, 41.710957, 22.858446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740799, 41.818901, 22.947393>,  <33.965649, 41.883667, 23.000761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740799, 41.818901, 22.947393>,  <33.366051, 41.710957, 22.858446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740799, 41.818901, 22.947393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120496, 0.846123, -0.519189,
		-0.328261, 0.459618, 0.825225,
		0.936870, 0.269865, 0.222367,
		34.021858, 41.899860, 23.014103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584808, 42.421001, 23.115076>,  <33.366051, 41.710957, 22.858446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584808, 42.421001, 23.115076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886570, 42.282337, 22.892115>,  <34.067627, 42.199139, 22.758337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886570, 42.282337, 22.892115>,  <33.584808, 42.421001, 23.115076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886570, 42.282337, 22.892115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027039, 0.832043, -0.554052,
		0.655851, 0.433052, 0.618325,
		0.754406, -0.346656, -0.557405,
		34.112892, 42.178341, 22.724894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117020, 42.892975, 23.402016>,  <33.584808, 42.421001, 23.115076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117020, 42.892975, 23.402016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230232, 43.200996, 23.630718>,  <34.298161, 43.385811, 23.767939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230232, 43.200996, 23.630718>,  <34.117020, 42.892975, 23.402016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230232, 43.200996, 23.630718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127262, 0.560708, -0.818176,
		-0.950630, 0.304333, 0.060699,
		0.283032, 0.770058, 0.571755,
		34.315144, 43.432014, 23.802244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859451, 43.485821, 23.058500>,  <34.117020, 42.892975, 23.402016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859451, 43.485821, 23.058500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156811, 43.596157, 23.302229>,  <34.335224, 43.662361, 23.448465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156811, 43.596157, 23.302229>,  <33.859451, 43.485821, 23.058500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156811, 43.596157, 23.302229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294193, 0.683290, -0.668255,
		-0.600677, 0.676036, 0.426804,
		0.743396, 0.275843, 0.609322,
		34.379829, 43.678909, 23.485025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901958, 44.230511, 22.931017>,  <33.859451, 43.485821, 23.058500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901958, 44.230511, 22.931017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245461, 44.092724, 23.082745>,  <34.451561, 44.010052, 23.173780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245461, 44.092724, 23.082745>,  <33.901958, 44.230511, 22.931017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245461, 44.092724, 23.082745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489727, 0.769506, -0.409913,
		-0.150688, 0.537778, 0.829511,
		0.858755, -0.344465, 0.379319,
		34.503086, 43.989384, 23.196541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172520, 44.644321, 23.365660>,  <33.901958, 44.230511, 22.931017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172520, 44.644321, 23.365660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490227, 44.483002, 23.183895>,  <34.680851, 44.386211, 23.074837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490227, 44.483002, 23.183895>,  <34.172520, 44.644321, 23.365660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490227, 44.483002, 23.183895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349109, 0.915066, -0.201931,
		0.497257, 0.001747, 0.867601,
		0.794266, -0.403300, -0.454414,
		34.728508, 44.362011, 23.047571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823345, 44.931156, 23.636917>,  <34.172520, 44.644321, 23.365660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823345, 44.931156, 23.636917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879887, 44.807747, 23.260654>,  <34.913811, 44.733700, 23.034897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879887, 44.807747, 23.260654>,  <34.823345, 44.931156, 23.636917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879887, 44.807747, 23.260654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498523, 0.843103, -0.201620,
		0.855275, -0.440440, 0.272980,
		0.141349, -0.308528, -0.940655,
		34.922291, 44.715187, 22.978458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399780, 44.789997, 23.889681>,  <34.823345, 44.931156, 23.636917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399780, 44.789997, 23.889681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631039, 45.113251, 23.934713>,  <35.769794, 45.307201, 23.961733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631039, 45.113251, 23.934713>,  <35.399780, 44.789997, 23.889681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631039, 45.113251, 23.934713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148994, 0.240222, -0.959215,
		-0.802217, 0.537789, 0.259289,
		0.578142, 0.808132, 0.112583,
		35.804482, 45.355690, 23.968489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276054, 44.111412, 24.281740>,  <35.399780, 44.789997, 23.889681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276054, 44.111412, 24.281740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968723, 44.043350, 24.034927>,  <34.784325, 44.002514, 23.886841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968723, 44.043350, 24.034927>,  <35.276054, 44.111412, 24.281740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968723, 44.043350, 24.034927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508493, -0.423214, 0.749883,
		-0.388735, 0.889908, 0.238640,
		-0.768323, -0.170159, -0.617030,
		34.738228, 43.992302, 23.849819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715721, 44.361355, 24.601564>,  <35.276054, 44.111412, 24.281740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715721, 44.361355, 24.601564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577255, 44.080494, 24.352680>,  <34.494175, 43.911976, 24.203350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577255, 44.080494, 24.352680>,  <34.715721, 44.361355, 24.601564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577255, 44.080494, 24.352680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547134, -0.387659, 0.741866,
		-0.762110, 0.597243, -0.249977,
		-0.346169, -0.702155, -0.622211,
		34.473404, 43.869846, 24.166018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918747, 44.249458, 24.646297>,  <34.715721, 44.361355, 24.601564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918747, 44.249458, 24.646297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087399, 43.908871, 24.521570>,  <34.188587, 43.704517, 24.446733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087399, 43.908871, 24.521570>,  <33.918747, 44.249458, 24.646297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087399, 43.908871, 24.521570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434001, -0.491423, 0.755080,
		-0.796162, -0.183033, -0.576736,
		0.421626, -0.851470, -0.311816,
		34.213886, 43.653431, 24.428026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454601, 43.756630, 24.761753>,  <33.918747, 44.249458, 24.646297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454601, 43.756630, 24.761753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787556, 43.537151, 24.730623>,  <33.987328, 43.405464, 24.711945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787556, 43.537151, 24.730623>,  <33.454601, 43.756630, 24.761753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787556, 43.537151, 24.730623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323445, -0.595028, 0.735748,
		-0.450012, -0.587257, -0.672769,
		0.832390, -0.548699, -0.077824,
		34.037273, 43.372543, 24.707275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207573, 43.179024, 25.032578>,  <33.454601, 43.756630, 24.761753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207573, 43.179024, 25.032578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603252, 43.123726, 25.052067>,  <33.840660, 43.090549, 25.063761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603252, 43.123726, 25.052067>,  <33.207573, 43.179024, 25.032578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603252, 43.123726, 25.052067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115307, -0.528719, 0.840928,
		-0.090490, -0.837464, -0.538949,
		0.989200, -0.138240, 0.048722,
		33.900013, 43.082253, 25.066683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331169, 42.436943, 25.198929>,  <33.207573, 43.179024, 25.032578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331169, 42.436943, 25.198929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661255, 42.632229, 25.312540>,  <33.859306, 42.749401, 25.380707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661255, 42.632229, 25.312540>,  <33.331169, 42.436943, 25.198929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661255, 42.632229, 25.312540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022969, -0.531453, 0.846777,
		0.564354, -0.692248, -0.449775,
		0.825213, 0.488212, 0.284027,
		33.908817, 42.778694, 25.397749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711849, 41.927368, 25.549959>,  <33.331169, 42.436943, 25.198929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711849, 41.927368, 25.549959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894962, 42.271755, 25.638653>,  <34.004829, 42.478390, 25.691870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894962, 42.271755, 25.638653>,  <33.711849, 41.927368, 25.549959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894962, 42.271755, 25.638653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449833, -0.439426, 0.777531,
		0.766867, -0.256195, -0.588454,
		0.457782, 0.860970, 0.221736,
		34.032295, 42.530045, 25.705173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485809, 41.795002, 25.677145>,  <33.711849, 41.927368, 25.549959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485809, 41.795002, 25.677145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377403, 42.116039, 25.889709>,  <34.312359, 42.308662, 26.017248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377403, 42.116039, 25.889709>,  <34.485809, 41.795002, 25.677145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377403, 42.116039, 25.889709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311677, -0.449163, 0.837323,
		0.910719, 0.392553, -0.128421,
		-0.271012, 0.802592, 0.531412,
		34.296101, 42.356815, 26.049133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058498, 42.012280, 26.157663>,  <34.485809, 41.795002, 25.677145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058498, 42.012280, 26.157663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772411, 42.228001, 26.335480>,  <34.600758, 42.357433, 26.442169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772411, 42.228001, 26.335480>,  <35.058498, 42.012280, 26.157663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772411, 42.228001, 26.335480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298533, -0.339372, 0.892023,
		0.631935, 0.770701, 0.081725,
		-0.715218, 0.539303, 0.444540,
		34.557846, 42.389790, 26.468842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303818, 42.356480, 26.616718>,  <35.058498, 42.012280, 26.157663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303818, 42.356480, 26.616718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934685, 42.340569, 26.769979>,  <34.713207, 42.331020, 26.861937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934685, 42.340569, 26.769979>,  <35.303818, 42.356480, 26.616718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934685, 42.340569, 26.769979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380100, -0.255521, 0.888950,
		0.062542, 0.965985, 0.250923,
		-0.922828, -0.039779, 0.383152,
		34.657837, 42.328636, 26.884926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293743, 42.700851, 27.363041>,  <35.303818, 42.356480, 26.616718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293743, 42.700851, 27.363041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973682, 42.462841, 27.332861>,  <34.781647, 42.320034, 27.314753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973682, 42.462841, 27.332861>,  <35.293743, 42.700851, 27.363041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973682, 42.462841, 27.332861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153768, -0.325095, 0.933096,
		-0.579749, 0.735018, 0.351623,
		-0.800154, -0.595030, -0.075451,
		34.733635, 42.284332, 27.310226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086544, 42.503555, 28.075703>,  <35.293743, 42.700851, 27.363041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086544, 42.503555, 28.075703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831230, 42.257904, 27.890038>,  <34.678043, 42.110512, 27.778639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831230, 42.257904, 27.890038>,  <35.086544, 42.503555, 28.075703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831230, 42.257904, 27.890038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073898, -0.551294, 0.831032,
		-0.766249, 0.564732, 0.306497,
		-0.638281, -0.614127, -0.464161,
		34.639748, 42.073666, 27.750790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415443, 42.407894, 28.617416>,  <35.086544, 42.503555, 28.075703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415443, 42.407894, 28.617416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444683, 42.100151, 28.363565>,  <34.462227, 41.915504, 28.211256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444683, 42.100151, 28.363565>,  <34.415443, 42.407894, 28.617416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444683, 42.100151, 28.363565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083150, -0.629412, 0.772610,
		-0.993852, -0.109245, 0.017963,
		0.073098, -0.769354, -0.634626,
		34.466614, 41.869347, 28.173178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939415, 41.928844, 28.870464>,  <34.415443, 42.407894, 28.617416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939415, 41.928844, 28.870464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221703, 41.733913, 28.664759>,  <34.391075, 41.616955, 28.541336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221703, 41.733913, 28.664759>,  <33.939415, 41.928844, 28.870464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221703, 41.733913, 28.664759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025341, -0.708034, 0.705723,
		-0.708034, -0.511078, -0.487327,
		-0.705723, 0.487327, 0.514264,
		34.433418, 41.587715, 28.510479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647610, 41.350651, 28.854441>,  <33.939415, 41.928844, 28.870464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647610, 41.350651, 28.854441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034775, 41.278088, 28.784891>,  <34.267075, 41.234550, 28.743162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034775, 41.278088, 28.784891>,  <33.647610, 41.350651, 28.854441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034775, 41.278088, 28.784891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021328, -0.748771, 0.662485,
		-0.250371, -0.637521, -0.728616,
		0.967915, -0.181407, -0.173873,
		34.325150, 41.223667, 28.732729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654366, 40.676601, 28.473104>,  <33.647610, 41.350651, 28.854441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654366, 40.676601, 28.473104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001400, 40.755074, 28.655888>,  <34.209621, 40.802158, 28.765558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001400, 40.755074, 28.655888>,  <33.654366, 40.676601, 28.473104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001400, 40.755074, 28.655888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155027, -0.766408, 0.623367,
		0.472508, -0.611664, -0.634510,
		0.867585, 0.196180, 0.456958,
		34.261677, 40.813927, 28.792974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051796, 40.032970, 28.356428>,  <33.654366, 40.676601, 28.473104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051796, 40.032970, 28.356428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161434, 40.239288, 28.681101>,  <34.227219, 40.363079, 28.875904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161434, 40.239288, 28.681101>,  <34.051796, 40.032970, 28.356428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161434, 40.239288, 28.681101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135248, -0.814942, 0.563540,
		0.952144, -0.264243, -0.153613,
		0.274097, 0.515796, 0.811681,
		34.243664, 40.394028, 28.924604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560966, 39.592922, 28.760592>,  <34.051796, 40.032970, 28.356428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560966, 39.592922, 28.760592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422997, 39.859295, 29.025187>,  <34.340214, 40.019119, 29.183943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422997, 39.859295, 29.025187>,  <34.560966, 39.592922, 28.760592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422997, 39.859295, 29.025187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045003, -0.715658, 0.696999,
		0.937552, 0.210640, 0.276814,
		-0.344921, 0.665931, 0.661487,
		34.319519, 40.059074, 29.223633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879341, 39.471542, 29.379236>,  <34.560966, 39.592922, 28.760592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879341, 39.471542, 29.379236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568691, 39.701916, 29.481337>,  <34.382301, 39.840141, 29.542597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568691, 39.701916, 29.481337>,  <34.879341, 39.471542, 29.379236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568691, 39.701916, 29.481337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186581, -0.597294, 0.780017,
		0.601703, 0.558153, 0.571331,
		-0.776622, 0.575938, 0.255253,
		34.335705, 39.874699, 29.557913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998699, 39.605526, 30.135780>,  <34.879341, 39.471542, 29.379236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998699, 39.605526, 30.135780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615276, 39.685646, 30.054739>,  <34.385223, 39.733719, 30.006113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615276, 39.685646, 30.054739>,  <34.998699, 39.605526, 30.135780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615276, 39.685646, 30.054739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272134, -0.433222, 0.859221,
		0.084328, 0.878749, 0.469776,
		-0.958557, 0.200298, -0.202605,
		34.327709, 39.745735, 29.993958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744064, 39.949055, 30.752306>,  <34.998699, 39.605526, 30.135780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744064, 39.949055, 30.752306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433933, 39.796448, 30.550985>,  <34.247856, 39.704884, 30.430193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433933, 39.796448, 30.550985>,  <34.744064, 39.949055, 30.752306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433933, 39.796448, 30.550985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396538, -0.326178, 0.858117,
		-0.491551, 0.864901, 0.101610,
		-0.775329, -0.381516, -0.503300,
		34.201336, 39.681992, 30.399996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122288, 40.026047, 31.226309>,  <34.744064, 39.949055, 30.752306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122288, 40.026047, 31.226309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017498, 39.748199, 30.958317>,  <33.954624, 39.581490, 30.797522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017498, 39.748199, 30.958317>,  <34.122288, 40.026047, 31.226309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017498, 39.748199, 30.958317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539585, -0.470152, 0.698430,
		-0.800135, 0.544485, -0.251636,
		-0.261977, -0.694617, -0.669981,
		33.938904, 39.539814, 30.757322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474258, 39.978466, 31.344505>,  <34.122288, 40.026047, 31.226309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474258, 39.978466, 31.344505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562111, 39.637474, 31.154751>,  <33.614822, 39.432880, 31.040897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562111, 39.637474, 31.154751>,  <33.474258, 39.978466, 31.344505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562111, 39.637474, 31.154751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468423, -0.518689, 0.715222,
		-0.855770, 0.065130, -0.513240,
		0.219630, -0.852479, -0.474387,
		33.627998, 39.381729, 31.012434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857460, 39.535202, 31.400856>,  <33.474258, 39.978466, 31.344505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857460, 39.535202, 31.400856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166718, 39.286823, 31.349209>,  <33.352272, 39.137794, 31.318220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166718, 39.286823, 31.349209>,  <32.857460, 39.535202, 31.400856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166718, 39.286823, 31.349209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296949, -0.534302, 0.791418,
		-0.560419, -0.573537, -0.597483,
		0.773143, -0.620948, -0.129122,
		33.398663, 39.100540, 31.310472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659538, 38.750294, 31.443539>,  <32.857460, 39.535202, 31.400856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659538, 38.750294, 31.443539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049381, 38.746655, 31.533026>,  <33.283287, 38.744469, 31.586718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049381, 38.746655, 31.533026>,  <32.659538, 38.750294, 31.443539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049381, 38.746655, 31.533026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164187, -0.708389, 0.686461,
		0.152231, -0.705764, -0.691898,
		0.974612, -0.009100, 0.223716,
		33.341766, 38.743923, 31.600140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803406, 37.993862, 31.470821>,  <32.659538, 38.750294, 31.443539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803406, 37.993862, 31.470821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106968, 38.187290, 31.645281>,  <33.289104, 38.303349, 31.749956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106968, 38.187290, 31.645281>,  <32.803406, 37.993862, 31.470821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106968, 38.187290, 31.645281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062278, -0.720582, 0.690568,
		0.648219, -0.496911, -0.576967,
		0.758903, 0.483572, 0.436148,
		33.334641, 38.332363, 31.776125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365288, 37.422047, 31.635382>,  <32.803406, 37.993862, 31.470821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365288, 37.422047, 31.635382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420918, 37.740276, 31.871252>,  <33.454296, 37.931213, 32.012775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420918, 37.740276, 31.871252>,  <33.365288, 37.422047, 31.635382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420918, 37.740276, 31.871252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002045, -0.595692, 0.803210,
		0.990280, -0.110502, -0.084474,
		0.139077, 0.795575, 0.589676,
		33.462639, 37.978951, 32.048153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776814, 37.104591, 32.098209>,  <33.365288, 37.422047, 31.635382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776814, 37.104591, 32.098209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704609, 37.449905, 32.286743>,  <33.661285, 37.657093, 32.399864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704609, 37.449905, 32.286743>,  <33.776814, 37.104591, 32.098209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704609, 37.449905, 32.286743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056530, -0.487521, 0.871279,
		0.981948, 0.130628, 0.136802,
		-0.180507, 0.863284, 0.471336,
		33.650455, 37.708889, 32.428143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242218, 37.150017, 32.620953>,  <33.776814, 37.104591, 32.098209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242218, 37.150017, 32.620953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961712, 37.393986, 32.768589>,  <33.793407, 37.540367, 32.857170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961712, 37.393986, 32.768589>,  <34.242218, 37.150017, 32.620953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961712, 37.393986, 32.768589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205240, -0.323086, 0.923846,
		0.682721, 0.723611, 0.101388,
		-0.701262, 0.609920, 0.369092,
		33.751331, 37.576962, 32.879318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548260, 37.380226, 33.252834>,  <34.242218, 37.150017, 32.620953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548260, 37.380226, 33.252834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157543, 37.462616, 33.276333>,  <33.923115, 37.512051, 33.290432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157543, 37.462616, 33.276333>,  <34.548260, 37.380226, 33.252834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157543, 37.462616, 33.276333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001151, -0.279299, 0.960203,
		0.214184, 0.937852, 0.273054,
		-0.976793, 0.205974, 0.058742,
		33.864506, 37.524406, 33.293957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533428, 37.733341, 33.876816>,  <34.548260, 37.380226, 33.252834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533428, 37.733341, 33.876816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189770, 37.558594, 33.770218>,  <33.983574, 37.453747, 33.706261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189770, 37.558594, 33.770218>,  <34.533428, 37.733341, 33.876816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189770, 37.558594, 33.770218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072739, -0.411220, 0.908630,
		-0.506536, 0.800029, 0.321520,
		-0.859145, -0.436866, -0.266491,
		33.932026, 37.427532, 33.690269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054649, 37.887325, 34.384026>,  <34.533428, 37.733341, 33.876816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054649, 37.887325, 34.384026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918358, 37.551811, 34.214161>,  <33.836582, 37.350502, 34.112240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918358, 37.551811, 34.214161>,  <34.054649, 37.887325, 34.384026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918358, 37.551811, 34.214161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210364, -0.372222, 0.903990,
		-0.916325, 0.397349, -0.049625,
		-0.340728, -0.838788, -0.424664,
		33.816139, 37.300175, 34.086761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356945, 37.726040, 34.733810>,  <34.054649, 37.887325, 34.384026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356945, 37.726040, 34.733810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464699, 37.376801, 34.571262>,  <33.529350, 37.167259, 34.473732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464699, 37.376801, 34.571262>,  <33.356945, 37.726040, 34.733810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464699, 37.376801, 34.571262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259661, -0.472192, 0.842384,
		-0.927368, -0.121402, -0.353907,
		0.269379, -0.873096, -0.406372,
		33.545513, 37.114872, 34.449352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906960, 37.362915, 34.964668>,  <33.356945, 37.726040, 34.733810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906960, 37.362915, 34.964668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173553, 37.092316, 34.839355>,  <33.333508, 36.929955, 34.764168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173553, 37.092316, 34.839355>,  <32.906960, 37.362915, 34.964668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173553, 37.092316, 34.839355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135005, -0.522794, 0.841701,
		-0.733196, -0.518682, -0.439763,
		0.666481, -0.676502, -0.313286,
		33.373497, 36.889366, 34.745369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644268, 36.742268, 35.191277>,  <32.906960, 37.362915, 34.964668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644268, 36.742268, 35.191277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026352, 36.638504, 35.134315>,  <33.255604, 36.576244, 35.100140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026352, 36.638504, 35.134315>,  <32.644268, 36.742268, 35.191277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026352, 36.638504, 35.134315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050685, -0.617520, 0.784920,
		-0.291553, -0.742547, -0.603010,
		0.955211, -0.259409, -0.142404,
		33.312916, 36.560680, 35.091595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675507, 36.016781, 35.419842>,  <32.644268, 36.742268, 35.191277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675507, 36.016781, 35.419842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038395, 36.185032, 35.417877>,  <33.256126, 36.285984, 35.416698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038395, 36.185032, 35.417877>,  <32.675507, 36.016781, 35.419842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038395, 36.185032, 35.417877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203974, -0.429649, 0.879657,
		0.367900, -0.799043, -0.475583,
		0.907218, 0.420633, -0.004916,
		33.310562, 36.311222, 35.416401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190170, 35.509781, 35.294350>,  <32.675507, 36.016781, 35.419842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190170, 35.509781, 35.294350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382420, 35.796516, 35.496399>,  <33.497768, 35.968555, 35.617626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382420, 35.796516, 35.496399>,  <33.190170, 35.509781, 35.294350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382420, 35.796516, 35.496399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198560, -0.650012, 0.733525,
		0.854151, -0.252252, -0.454746,
		0.480624, 0.716836, 0.505121,
		33.526608, 36.011566, 35.647934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713333, 35.173435, 35.658566>,  <33.190170, 35.509781, 35.294350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713333, 35.173435, 35.658566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690956, 35.523705, 35.850426>,  <33.677528, 35.733868, 35.965542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690956, 35.523705, 35.850426>,  <33.713333, 35.173435, 35.658566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690956, 35.523705, 35.850426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001461, -0.480474, 0.877008,
		0.998433, 0.048365, 0.028160,
		-0.055947, 0.875674, 0.479650,
		33.674171, 35.786407, 35.994320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314922, 35.328823, 36.074303>,  <33.713333, 35.173435, 35.658566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314922, 35.328823, 36.074303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027313, 35.559917, 36.228825>,  <33.854748, 35.698574, 36.321537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027313, 35.559917, 36.228825>,  <34.314922, 35.328823, 36.074303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027313, 35.559917, 36.228825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292819, -0.252272, 0.922288,
		0.630292, 0.776262, 0.012218,
		-0.719019, 0.577734, 0.386309,
		33.811607, 35.733238, 36.344719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712151, 35.619442, 36.630890>,  <34.314922, 35.328823, 36.074303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712151, 35.619442, 36.630890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318993, 35.644932, 36.700012>,  <34.083099, 35.660225, 36.741486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318993, 35.644932, 36.700012>,  <34.712151, 35.619442, 36.630890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318993, 35.644932, 36.700012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118206, -0.501247, 0.857193,
		0.141240, 0.862955, 0.485139,
		-0.982893, 0.063724, 0.172802,
		34.024124, 35.664047, 36.751854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651623, 35.730057, 37.270741>,  <34.712151, 35.619442, 36.630890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651623, 35.730057, 37.270741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267029, 35.624454, 37.240147>,  <34.036274, 35.561092, 37.221790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267029, 35.624454, 37.240147>,  <34.651623, 35.730057, 37.270741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267029, 35.624454, 37.240147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030089, -0.377683, 0.925446,
		-0.273209, 0.887500, 0.371080,
		-0.961484, -0.264005, -0.076482,
		33.978584, 35.545254, 37.217201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416241, 35.589996, 37.054508>,  <34.651623, 35.730057, 37.270741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416241, 35.589996, 37.054508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779423, 35.669067, 37.202316>,  <35.997334, 35.716511, 37.291000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779423, 35.669067, 37.202316>,  <35.416241, 35.589996, 37.054508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779423, 35.669067, 37.202316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098400, 0.756533, -0.646510,
		-0.407354, 0.623361, 0.667445,
		0.907954, 0.197682, 0.369516,
		36.051807, 35.728371, 37.313171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442558, 36.372608, 37.071903>,  <35.416241, 35.589996, 37.054508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442558, 36.372608, 37.071903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804680, 36.205631, 37.040497>,  <36.021954, 36.105446, 37.021652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804680, 36.205631, 37.040497>,  <35.442558, 36.372608, 37.071903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804680, 36.205631, 37.040497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286240, 0.736138, -0.613325,
		0.313826, 0.532772, 0.785918,
		0.905306, -0.417439, -0.078519,
		36.076271, 36.080399, 37.016941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932648, 36.953133, 37.093914>,  <35.442558, 36.372608, 37.071903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932648, 36.953133, 37.093914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061634, 36.620247, 36.913498>,  <36.139027, 36.420517, 36.805248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061634, 36.620247, 36.913498>,  <35.932648, 36.953133, 37.093914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061634, 36.620247, 36.913498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280489, 0.539102, -0.794163,
		0.904069, 0.129580, 0.407269,
		0.322467, -0.832213, -0.451039,
		36.158375, 36.370583, 36.778187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572338, 37.160507, 36.722736>,  <35.932648, 36.953133, 37.093914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572338, 37.160507, 36.722736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476772, 36.820652, 36.534679>,  <36.419434, 36.616737, 36.421844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476772, 36.820652, 36.534679>,  <36.572338, 37.160507, 36.722736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476772, 36.820652, 36.534679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461436, 0.326667, -0.824843,
		0.854399, -0.414006, 0.314009,
		-0.238913, -0.849640, -0.470141,
		36.405098, 36.565762, 36.393639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151733, 37.010223, 36.429062>,  <36.572338, 37.160507, 36.722736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151733, 37.010223, 36.429062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844177, 36.832428, 36.245220>,  <36.659645, 36.725750, 36.134914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844177, 36.832428, 36.245220>,  <37.151733, 37.010223, 36.429062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844177, 36.832428, 36.245220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257733, 0.442376, -0.858998,
		0.585138, -0.778928, -0.225576,
		-0.768887, -0.444494, -0.459607,
		36.613510, 36.699081, 36.107338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389545, 36.888123, 35.751453>,  <37.151733, 37.010223, 36.429062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389545, 36.888123, 35.751453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991642, 36.861057, 35.720795>,  <36.752899, 36.844818, 35.702400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991642, 36.861057, 35.720795>,  <37.389545, 36.888123, 35.751453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991642, 36.861057, 35.720795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052910, 0.300792, -0.952221,
		0.087488, -0.951286, -0.295635,
		-0.994760, -0.067666, -0.076648,
		36.693214, 36.840755, 35.697800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352020, 36.649384, 35.191982>,  <37.389545, 36.888123, 35.751453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352020, 36.649384, 35.191982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985794, 36.804363, 35.235115>,  <36.766060, 36.897350, 35.260994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985794, 36.804363, 35.235115>,  <37.352020, 36.649384, 35.191982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985794, 36.804363, 35.235115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135113, 0.548878, -0.824911,
		-0.378796, -0.740689, -0.554882,
		-0.915564, 0.387445, 0.107836,
		36.711124, 36.920597, 35.267467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973671, 36.608608, 34.541084>,  <37.352020, 36.649384, 35.191982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973671, 36.608608, 34.541084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828091, 36.912933, 34.756008>,  <36.740742, 37.095528, 34.884964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828091, 36.912933, 34.756008>,  <36.973671, 36.608608, 34.541084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828091, 36.912933, 34.756008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062331, 0.555687, -0.829052,
		-0.929329, -0.335227, -0.154822,
		-0.363953, 0.760812, 0.537311,
		36.718906, 37.141178, 34.917202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963238, 36.968296, 34.073410>,  <36.973671, 36.608608, 34.541084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963238, 36.968296, 34.073410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810669, 37.218597, 34.345573>,  <36.719128, 37.368778, 34.508873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810669, 37.218597, 34.345573>,  <36.963238, 36.968296, 34.073410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810669, 37.218597, 34.345573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053827, 0.749838, -0.659429,
		-0.922834, -0.214894, -0.319685,
		-0.381419, 0.625751, 0.680408,
		36.696243, 37.406322, 34.549694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287888, 37.328564, 33.787258>,  <36.963238, 36.968296, 34.073410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287888, 37.328564, 33.787258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439541, 37.566383, 34.070885>,  <36.530533, 37.709076, 34.241058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439541, 37.566383, 34.070885>,  <36.287888, 37.328564, 33.787258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439541, 37.566383, 34.070885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163557, 0.711151, -0.683750,
		-0.910773, 0.375204, 0.172379,
		0.379133, 0.594547, 0.709064,
		36.553280, 37.744747, 34.283604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923855, 37.971893, 33.789375>,  <36.287888, 37.328564, 33.787258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923855, 37.971893, 33.789375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259567, 38.061325, 33.987614>,  <36.460995, 38.114983, 34.106556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259567, 38.061325, 33.987614>,  <35.923855, 37.971893, 33.789375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259567, 38.061325, 33.987614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133547, 0.798835, -0.586539,
		-0.527037, 0.558458, 0.640591,
		0.839284, 0.223578, 0.495596,
		36.511353, 38.128399, 34.136292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899658, 38.683109, 34.006931>,  <35.923855, 37.971893, 33.789375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899658, 38.683109, 34.006931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286549, 38.581882, 34.015167>,  <36.518684, 38.521145, 34.020107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286549, 38.581882, 34.015167>,  <35.899658, 38.683109, 34.006931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286549, 38.581882, 34.015167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206850, 0.738353, -0.641910,
		0.147246, 0.625133, 0.766503,
		0.967229, -0.253070, 0.020589,
		36.576717, 38.505962, 34.021343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109737, 39.271515, 34.032402>,  <35.899658, 38.683109, 34.006931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109737, 39.271515, 34.032402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427650, 39.059208, 33.914692>,  <36.618401, 38.931824, 33.844067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427650, 39.059208, 33.914692>,  <36.109737, 39.271515, 34.032402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427650, 39.059208, 33.914692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304636, 0.768297, -0.562954,
		0.524891, 0.357781, 0.772323,
		0.794787, -0.530766, -0.294279,
		36.666088, 38.899979, 33.826408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626598, 39.705936, 34.134457>,  <36.109737, 39.271515, 34.032402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626598, 39.705936, 34.134457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729927, 39.433235, 33.860676>,  <36.791924, 39.269615, 33.696407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729927, 39.433235, 33.860676>,  <36.626598, 39.705936, 34.134457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729927, 39.433235, 33.860676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316829, 0.729102, -0.606654,
		0.912627, -0.060142, 0.404344,
		0.258323, -0.681757, -0.684454,
		36.807423, 39.228706, 33.655338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273590, 39.912964, 33.838581>,  <36.626598, 39.705936, 34.134457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273590, 39.912964, 33.838581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100994, 39.669586, 33.572163>,  <36.997437, 39.523560, 33.412312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100994, 39.669586, 33.572163>,  <37.273590, 39.912964, 33.838581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100994, 39.669586, 33.572163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342100, 0.572806, -0.744889,
		0.834736, -0.549267, -0.039013,
		-0.431490, -0.608440, -0.666046,
		36.971546, 39.487053, 33.372349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685699, 39.926659, 33.310089>,  <37.273590, 39.912964, 33.838581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685699, 39.926659, 33.310089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349949, 39.778763, 33.150719>,  <37.148499, 39.690025, 33.055096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349949, 39.778763, 33.150719>,  <37.685699, 39.926659, 33.310089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349949, 39.778763, 33.150719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191089, 0.485490, -0.853103,
		0.508867, -0.792204, -0.336850,
		-0.839368, -0.369748, -0.398432,
		37.098137, 39.667839, 33.031189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818665, 39.678898, 32.577835>,  <37.685699, 39.926659, 33.310089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818665, 39.678898, 32.577835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423393, 39.739876, 32.571426>,  <37.186230, 39.776463, 32.567581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423393, 39.739876, 32.571426>,  <37.818665, 39.678898, 32.577835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423393, 39.739876, 32.571426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101993, 0.575893, -0.811138,
		-0.114422, -0.803187, -0.584636,
		-0.988183, 0.152441, -0.016025,
		37.126938, 39.785606, 32.566620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739433, 39.571461, 31.933697>,  <37.818665, 39.678898, 32.577835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739433, 39.571461, 31.933697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426826, 39.789001, 32.055981>,  <37.239262, 39.919525, 32.129353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426826, 39.789001, 32.055981>,  <37.739433, 39.571461, 31.933697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426826, 39.789001, 32.055981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008812, 0.480341, -0.877037,
		-0.623823, -0.688113, -0.370602,
		-0.781516, 0.543850, 0.305712,
		37.192371, 39.952156, 32.147694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278549, 39.606571, 31.362738>,  <37.739433, 39.571461, 31.933697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278549, 39.606571, 31.362738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146801, 39.906460, 31.592321>,  <37.067753, 40.086395, 31.730072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146801, 39.906460, 31.592321>,  <37.278549, 39.606571, 31.362738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146801, 39.906460, 31.592321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039543, 0.596393, -0.801718,
		-0.943372, -0.286758, -0.166788,
		-0.329370, 0.749723, 0.573960,
		37.047989, 40.131378, 31.764509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724537, 39.790672, 31.027740>,  <37.278549, 39.606571, 31.362738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724537, 39.790672, 31.027740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872269, 40.094158, 31.242382>,  <36.960907, 40.276249, 31.371168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872269, 40.094158, 31.242382>,  <36.724537, 39.790672, 31.027740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872269, 40.094158, 31.242382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142253, 0.616783, -0.774172,
		-0.918347, 0.209590, 0.335725,
		0.369329, 0.758717, 0.536606,
		36.983067, 40.321774, 31.403364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203346, 40.401611, 31.047537>,  <36.724537, 39.790672, 31.027740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203346, 40.401611, 31.047537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563461, 40.566841, 31.102463>,  <36.779530, 40.665977, 31.135418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563461, 40.566841, 31.102463>,  <36.203346, 40.401611, 31.047537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563461, 40.566841, 31.102463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278076, 0.788454, -0.548647,
		-0.334897, 0.455755, 0.824700,
		0.900288, 0.413070, 0.137317,
		36.833546, 40.690762, 31.143658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103317, 41.140759, 31.102798>,  <36.203346, 40.401611, 31.047537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103317, 41.140759, 31.102798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474983, 41.096798, 30.961615>,  <36.697983, 41.070419, 30.876904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474983, 41.096798, 30.961615>,  <36.103317, 41.140759, 31.102798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474983, 41.096798, 30.961615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224997, 0.589442, -0.775845,
		0.293319, 0.800299, 0.522958,
		0.929161, -0.109906, -0.352959,
		36.753731, 41.063828, 30.855726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264965, 41.819672, 30.906931>,  <36.103317, 41.140759, 31.102798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264965, 41.819672, 30.906931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500320, 41.563515, 30.709467>,  <36.641533, 41.409821, 30.590988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500320, 41.563515, 30.709467>,  <36.264965, 41.819672, 30.906931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500320, 41.563515, 30.709467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117260, 0.536496, -0.835716,
		0.800030, 0.549613, 0.240577,
		0.588389, -0.640389, -0.493661,
		36.676838, 41.371399, 30.561369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670830, 42.310913, 30.376791>,  <36.264965, 41.819672, 30.906931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670830, 42.310913, 30.376791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714012, 41.933395, 30.251829>,  <36.739922, 41.706886, 30.176851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714012, 41.933395, 30.251829>,  <36.670830, 42.310913, 30.376791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714012, 41.933395, 30.251829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073294, 0.305831, -0.949260,
		0.991450, 0.125375, -0.036158,
		0.107955, -0.943795, -0.312405,
		36.746399, 41.650257, 30.158108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134682, 42.343655, 29.818392>,  <36.670830, 42.310913, 30.376791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134682, 42.343655, 29.818392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005630, 41.967976, 29.771372>,  <36.928200, 41.742569, 29.743160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005630, 41.967976, 29.771372>,  <37.134682, 42.343655, 29.818392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005630, 41.967976, 29.771372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087894, 0.093928, -0.991692,
		0.942435, -0.330282, 0.052246,
		-0.322630, -0.939197, -0.117550,
		36.908840, 41.686218, 29.736107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621983, 42.036667, 29.269802>,  <37.134682, 42.343655, 29.818392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621983, 42.036667, 29.269802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273628, 41.841705, 29.295105>,  <37.064617, 41.724728, 29.310286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273628, 41.841705, 29.295105>,  <37.621983, 42.036667, 29.269802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273628, 41.841705, 29.295105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079937, 0.013474, -0.996709,
		0.484945, -0.873074, -0.050696,
		-0.870884, -0.487401, 0.063256,
		37.012363, 41.695484, 29.314081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802216, 41.429165, 28.870764>,  <37.621983, 42.036667, 29.269802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802216, 41.429165, 28.870764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405041, 41.476551, 28.873415>,  <37.166737, 41.504982, 28.875006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405041, 41.476551, 28.873415>,  <37.802216, 41.429165, 28.870764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405041, 41.476551, 28.873415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027702, -0.177131, -0.983797,
		-0.115367, -0.977032, 0.179161,
		-0.992937, 0.118460, 0.006630,
		37.107159, 41.512089, 28.875404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611263, 40.903625, 28.332607>,  <37.802216, 41.429165, 28.870764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611263, 40.903625, 28.332607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300865, 41.148067, 28.395069>,  <37.114628, 41.294735, 28.432547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300865, 41.148067, 28.395069>,  <37.611263, 40.903625, 28.332607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300865, 41.148067, 28.395069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140086, 0.074406, -0.987340,
		-0.614989, -0.788043, 0.027869,
		-0.775993, 0.611107, 0.156152,
		37.068066, 41.331398, 28.441916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014923, 40.573345, 27.914721>,  <37.611263, 40.903625, 28.332607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014923, 40.573345, 27.914721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928982, 40.956612, 27.990353>,  <36.877419, 41.186573, 28.035732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928982, 40.956612, 27.990353>,  <37.014923, 40.573345, 27.914721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928982, 40.956612, 27.990353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072520, 0.177417, -0.981460,
		-0.973951, -0.224581, 0.031368,
		-0.214852, 0.958168, 0.189082,
		36.864525, 41.244061, 28.047077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459381, 40.643818, 27.508364>,  <37.014923, 40.573345, 27.914721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459381, 40.643818, 27.508364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596951, 41.008762, 27.597187>,  <36.679493, 41.227730, 27.650482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596951, 41.008762, 27.597187>,  <36.459381, 40.643818, 27.508364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596951, 41.008762, 27.597187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019899, 0.229351, -0.973140,
		-0.938788, 0.339102, 0.060724,
		0.343921, 0.912364, 0.222059,
		36.700127, 41.282471, 27.663805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124039, 41.093182, 27.044411>,  <36.459381, 40.643818, 27.508364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124039, 41.093182, 27.044411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432415, 41.325230, 27.149569>,  <36.617439, 41.464458, 27.212664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432415, 41.325230, 27.149569>,  <36.124039, 41.093182, 27.044411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432415, 41.325230, 27.149569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216263, 0.149808, -0.964773,
		-0.599070, 0.800634, -0.009966,
		0.770938, 0.580123, 0.262893,
		36.663696, 41.499268, 27.228436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030884, 41.618561, 26.580322>,  <36.124039, 41.093182, 27.044411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030884, 41.618561, 26.580322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410854, 41.637619, 26.703852>,  <36.638836, 41.649055, 26.777969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410854, 41.637619, 26.703852>,  <36.030884, 41.618561, 26.580322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410854, 41.637619, 26.703852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302020, 0.113536, -0.946517,
		-0.080162, 0.992391, 0.093460,
		0.949925, 0.047648, 0.308823,
		36.695831, 41.651913, 26.796499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312969, 42.270924, 26.259495>,  <36.030884, 41.618561, 26.580322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312969, 42.270924, 26.259495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655533, 42.082558, 26.344152>,  <36.861073, 41.969536, 26.394947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655533, 42.082558, 26.344152>,  <36.312969, 42.270924, 26.259495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655533, 42.082558, 26.344152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314193, 0.150086, -0.937420,
		0.409683, 0.869316, 0.276494,
		0.856413, -0.470918, 0.211645,
		36.912457, 41.941284, 26.407646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811775, 42.800213, 26.002239>,  <36.312969, 42.270924, 26.259495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811775, 42.800213, 26.002239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943966, 42.422855, 26.013512>,  <37.023281, 42.196442, 26.020275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943966, 42.422855, 26.013512>,  <36.811775, 42.800213, 26.002239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943966, 42.422855, 26.013512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349781, 0.094692, -0.932034,
		0.876605, 0.317875, 0.361274,
		0.330480, -0.943392, 0.028179,
		37.043110, 42.139839, 26.021965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526077, 42.795731, 25.628216>,  <36.811775, 42.800213, 26.002239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526077, 42.795731, 25.628216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437637, 42.405735, 25.637190>,  <37.384575, 42.171738, 25.642574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437637, 42.405735, 25.637190>,  <37.526077, 42.795731, 25.628216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437637, 42.405735, 25.637190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483882, -0.129647, -0.865477,
		0.846743, -0.180500, 0.500446,
		-0.221100, -0.974993, 0.022436,
		37.371307, 42.113235, 25.643921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104202, 42.513466, 25.451462>,  <37.526077, 42.795731, 25.628216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104202, 42.513466, 25.451462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841686, 42.220940, 25.377199>,  <37.684177, 42.045425, 25.332642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841686, 42.220940, 25.377199>,  <38.104202, 42.513466, 25.451462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841686, 42.220940, 25.377199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405658, -0.134529, -0.904071,
		0.636184, -0.668642, 0.384953,
		-0.656287, -0.731314, -0.185655,
		37.644802, 42.001545, 25.321503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481812, 41.868973, 25.092846>,  <38.104202, 42.513466, 25.451462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481812, 41.868973, 25.092846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100155, 41.862160, 24.973301>,  <37.871159, 41.858074, 24.901575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100155, 41.862160, 24.973301>,  <38.481812, 41.868973, 25.092846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100155, 41.862160, 24.973301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299344, -0.056186, -0.952490,
		-0.000569, -0.998275, 0.058708,
		-0.954145, -0.017032, -0.298860,
		37.813911, 41.857052, 24.883642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434834, 42.023754, 24.310925>,  <38.481812, 41.868973, 25.092846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434834, 42.023754, 24.310925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773121, 41.993137, 24.099680>,  <38.976093, 41.974766, 23.972933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773121, 41.993137, 24.099680>,  <38.434834, 42.023754, 24.310925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773121, 41.993137, 24.099680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419932, -0.515195, 0.747149,
		-0.329273, -0.853648, -0.403565,
		0.845717, -0.076546, -0.528114,
		39.026836, 41.970173, 23.941246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734531, 41.441914, 24.395239>,  <38.434834, 42.023754, 24.310925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734531, 41.441914, 24.395239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078365, 41.601837, 24.267950>,  <39.284668, 41.697792, 24.191576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078365, 41.601837, 24.267950>,  <38.734531, 41.441914, 24.395239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078365, 41.601837, 24.267950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497503, -0.512678, 0.699751,
		0.116618, -0.759814, -0.639596,
		0.859588, 0.399805, -0.318222,
		39.336243, 41.721779, 24.172483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151485, 40.963943, 24.563873>,  <38.734531, 41.441914, 24.395239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151485, 40.963943, 24.563873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395454, 41.279190, 24.530724>,  <39.541836, 41.468338, 24.510834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395454, 41.279190, 24.530724>,  <39.151485, 40.963943, 24.563873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395454, 41.279190, 24.530724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465311, -0.271516, 0.842475,
		0.641464, -0.552410, -0.532322,
		0.609927, 0.788113, -0.082874,
		39.578434, 41.515625, 24.505861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816025, 40.736446, 24.737715>,  <39.151485, 40.963943, 24.563873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816025, 40.736446, 24.737715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818066, 41.133167, 24.788780>,  <39.819290, 41.371201, 24.819420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818066, 41.133167, 24.788780>,  <39.816025, 40.736446, 24.737715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818066, 41.133167, 24.788780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378403, -0.120085, 0.917818,
		0.925627, 0.043627, -0.375915,
		0.005100, 0.991805, 0.127662,
		39.819595, 41.430710, 24.827080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394131, 40.867645, 25.128632>,  <39.816025, 40.736446, 24.737715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394131, 40.867645, 25.128632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197163, 41.213799, 25.165785>,  <40.078979, 41.421490, 25.188078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197163, 41.213799, 25.165785>,  <40.394131, 40.867645, 25.128632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197163, 41.213799, 25.165785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258305, 0.043395, 0.965088,
		0.831143, 0.499224, -0.244902,
		-0.492422, 0.865386, 0.092885,
		40.049435, 41.473415, 25.193649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913975, 41.340641, 25.480373>,  <40.394131, 40.867645, 25.128632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913975, 41.340641, 25.480373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541611, 41.464905, 25.557213>,  <40.318192, 41.539463, 25.603317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541611, 41.464905, 25.557213>,  <40.913975, 41.340641, 25.480373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541611, 41.464905, 25.557213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213013, 0.034514, 0.976439,
		0.296714, 0.949893, -0.098305,
		-0.930906, 0.310664, 0.192099,
		40.262341, 41.558105, 25.614843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928730, 41.704372, 26.023315>,  <40.913975, 41.340641, 25.480373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928730, 41.704372, 26.023315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534161, 41.638943, 26.017500>,  <40.297421, 41.599686, 26.014011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534161, 41.638943, 26.017500>,  <40.928730, 41.704372, 26.023315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534161, 41.638943, 26.017500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026010, 0.068206, 0.997332,
		-0.162142, 0.984171, -0.071535,
		-0.986425, -0.163570, -0.014539,
		40.238232, 41.589870, 26.013138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670776, 42.140392, 26.590496>,  <40.928730, 41.704372, 26.023315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670776, 42.140392, 26.590496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403450, 41.851761, 26.518187>,  <40.243053, 41.678581, 26.474800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403450, 41.851761, 26.518187>,  <40.670776, 42.140392, 26.590496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403450, 41.851761, 26.518187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188309, -0.070991, 0.979541,
		-0.719649, 0.688684, -0.088436,
		-0.668316, -0.721578, -0.180774,
		40.202957, 41.635288, 26.463955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111786, 42.296314, 27.041258>,  <40.670776, 42.140392, 26.590496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111786, 42.296314, 27.041258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084774, 41.900867, 26.987480>,  <40.068569, 41.663601, 26.955214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084774, 41.900867, 26.987480>,  <40.111786, 42.296314, 27.041258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084774, 41.900867, 26.987480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076591, -0.129216, 0.988654,
		-0.994773, 0.077058, -0.066993,
		-0.067527, -0.988618, -0.134443,
		40.064514, 41.604282, 26.947147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633850, 42.150944, 27.488689>,  <40.111786, 42.296314, 27.041258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633850, 42.150944, 27.488689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766022, 41.783466, 27.402138>,  <39.845325, 41.562981, 27.350206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766022, 41.783466, 27.402138>,  <39.633850, 42.150944, 27.488689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766022, 41.783466, 27.402138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082113, -0.256369, 0.963085,
		-0.940252, -0.300463, -0.160149,
		0.330429, -0.918693, -0.216380,
		39.865150, 41.507858, 27.337223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084141, 41.717049, 27.595886>,  <39.633850, 42.150944, 27.488689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084141, 41.717049, 27.595886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431419, 41.521503, 27.629936>,  <39.639786, 41.404175, 27.650366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431419, 41.521503, 27.629936>,  <39.084141, 41.717049, 27.595886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431419, 41.521503, 27.629936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198460, -0.184854, 0.962519,
		-0.454803, -0.852551, -0.257510,
		0.868198, -0.488862, 0.085125,
		39.691879, 41.374844, 27.655474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038300, 41.333675, 28.240419>,  <39.084141, 41.717049, 27.595886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038300, 41.333675, 28.240419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411961, 41.222332, 28.151093>,  <39.636158, 41.155525, 28.097496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411961, 41.222332, 28.151093>,  <39.038300, 41.333675, 28.240419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411961, 41.222332, 28.151093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097618, -0.402592, 0.910160,
		-0.343259, -0.872029, -0.348910,
		0.934155, -0.278360, -0.223319,
		39.692207, 41.138824, 28.084097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102310, 40.570694, 28.160147>,  <39.038300, 41.333675, 28.240419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102310, 40.570694, 28.160147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457851, 40.723000, 28.262096>,  <39.671177, 40.814384, 28.323265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457851, 40.723000, 28.262096>,  <39.102310, 40.570694, 28.160147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457851, 40.723000, 28.262096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018788, -0.586071, 0.810042,
		0.457812, -0.715217, -0.528084,
		0.888851, 0.380768, 0.254873,
		39.724506, 40.837231, 28.338558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531414, 40.046265, 28.189751>,  <39.102310, 40.570694, 28.160147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531414, 40.046265, 28.189751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650784, 40.344448, 28.428160>,  <39.722404, 40.523357, 28.571205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650784, 40.344448, 28.428160>,  <39.531414, 40.046265, 28.189751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650784, 40.344448, 28.428160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085940, -0.600952, 0.794652,
		0.950558, -0.288362, -0.115271,
		0.298420, 0.745456, 0.596022,
		39.740311, 40.568085, 28.606966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151661, 39.828941, 28.604328>,  <39.531414, 40.046265, 28.189751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151661, 39.828941, 28.604328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000751, 40.130009, 28.820164>,  <39.910206, 40.310650, 28.949665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000751, 40.130009, 28.820164>,  <40.151661, 39.828941, 28.604328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000751, 40.130009, 28.820164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067633, -0.558697, 0.826610,
		0.923629, 0.348352, 0.159876,
		-0.377273, 0.752668, 0.539589,
		39.887569, 40.355808, 28.982040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673855, 39.909412, 29.129246>,  <40.151661, 39.828941, 28.604328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673855, 39.909412, 29.129246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336590, 40.067719, 29.274813>,  <40.134232, 40.162704, 29.362152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336590, 40.067719, 29.274813>,  <40.673855, 39.909412, 29.129246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336590, 40.067719, 29.274813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102410, -0.546252, 0.831337,
		0.527809, 0.738225, 0.420050,
		-0.843167, 0.395769, 0.363918,
		40.083641, 40.186451, 29.383987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773472, 39.956940, 29.893730>,  <40.673855, 39.909412, 29.129246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773472, 39.956940, 29.893730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378712, 39.996189, 29.842510>,  <40.141857, 40.019741, 29.811779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378712, 39.996189, 29.842510>,  <40.773472, 39.956940, 29.893730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378712, 39.996189, 29.842510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161193, -0.631711, 0.758260,
		-0.006486, 0.768968, 0.639254,
		-0.986902, 0.098125, -0.128050,
		40.082642, 40.025627, 29.804094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569588, 40.155670, 30.488461>,  <40.773472, 39.956940, 29.893730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569588, 40.155670, 30.488461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256329, 39.982262, 30.310143>,  <40.068371, 39.878216, 30.203152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256329, 39.982262, 30.310143>,  <40.569588, 40.155670, 30.488461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256329, 39.982262, 30.310143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241799, -0.448175, 0.860623,
		-0.572893, 0.781791, 0.246164,
		-0.783152, -0.433523, -0.445793,
		40.021381, 39.852203, 30.176405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013035, 40.344345, 30.933474>,  <40.569588, 40.155670, 30.488461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013035, 40.344345, 30.933474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906548, 40.023033, 30.720354>,  <39.842655, 39.830246, 30.592484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906548, 40.023033, 30.720354>,  <40.013035, 40.344345, 30.933474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906548, 40.023033, 30.720354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162780, -0.507340, 0.846233,
		-0.950069, 0.312010, 0.004305,
		-0.266217, -0.803279, -0.532797,
		39.826683, 39.782051, 30.560514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363468, 40.087875, 31.209652>,  <40.013035, 40.344345, 30.933474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363468, 40.087875, 31.209652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436989, 39.750420, 31.007866>,  <39.481102, 39.547947, 30.886793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436989, 39.750420, 31.007866>,  <39.363468, 40.087875, 31.209652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436989, 39.750420, 31.007866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177264, -0.533244, 0.827181,
		-0.966848, -0.062612, -0.247558,
		0.183800, -0.843641, -0.504467,
		39.492130, 39.497326, 30.856525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787163, 39.520653, 31.408451>,  <39.363468, 40.087875, 31.209652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787163, 39.520653, 31.408451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069332, 39.293476, 31.238831>,  <39.238636, 39.157169, 31.137058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069332, 39.293476, 31.238831>,  <38.787163, 39.520653, 31.408451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069332, 39.293476, 31.238831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254914, -0.761539, 0.595883,
		-0.661358, -0.312254, -0.681985,
		0.705425, -0.567939, -0.424052,
		39.280960, 39.123093, 31.111614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502171, 38.828773, 31.152115>,  <38.787163, 39.520653, 31.408451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502171, 38.828773, 31.152115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897110, 38.787407, 31.200199>,  <39.134075, 38.762589, 31.229050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897110, 38.787407, 31.200199>,  <38.502171, 38.828773, 31.152115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897110, 38.787407, 31.200199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158533, -0.626810, 0.762874,
		-0.003542, -0.772279, -0.635273,
		0.987347, -0.103413, 0.120212,
		39.193314, 38.756382, 31.236263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647934, 38.161808, 31.129400>,  <38.502171, 38.828773, 31.152115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647934, 38.161808, 31.129400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957794, 38.316814, 31.329298>,  <39.143711, 38.409817, 31.449236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957794, 38.316814, 31.329298>,  <38.647934, 38.161808, 31.129400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957794, 38.316814, 31.329298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148123, -0.657083, 0.739122,
		0.614793, -0.646588, -0.451613,
		0.774654, 0.387513, 0.499745,
		39.190189, 38.433067, 31.479221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089111, 37.602821, 31.426189>,  <38.647934, 38.161808, 31.129400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089111, 37.602821, 31.426189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208298, 37.919712, 31.639204>,  <39.279812, 38.109844, 31.767012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208298, 37.919712, 31.639204>,  <39.089111, 37.602821, 31.426189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208298, 37.919712, 31.639204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234253, -0.480131, 0.845340,
		0.925386, -0.376634, 0.042517,
		0.297970, 0.792225, 0.532535,
		39.297688, 38.157379, 31.798964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306877, 37.319115, 32.083908>,  <39.089111, 37.602821, 31.426189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306877, 37.319115, 32.083908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318584, 37.706924, 32.181210>,  <39.325611, 37.939610, 32.239590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318584, 37.706924, 32.181210>,  <39.306877, 37.319115, 32.083908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318584, 37.706924, 32.181210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097491, -0.244964, 0.964618,
		0.994806, -0.004520, -0.101690,
		0.029271, 0.969522, 0.243251,
		39.327366, 37.997780, 32.254185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902782, 37.460682, 32.472805>,  <39.306877, 37.319115, 32.083908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902782, 37.460682, 32.472805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643307, 37.751743, 32.562004>,  <39.487621, 37.926380, 32.615524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643307, 37.751743, 32.562004>,  <39.902782, 37.460682, 32.472805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643307, 37.751743, 32.562004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215494, -0.105409, 0.970799,
		0.729911, 0.677798, -0.088427,
		-0.648685, 0.727653, 0.223001,
		39.448700, 37.970039, 32.628902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306614, 37.965828, 32.916939>,  <39.902782, 37.460682, 32.472805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306614, 37.965828, 32.916939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919216, 38.039062, 32.984455>,  <39.686775, 38.083004, 33.024963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919216, 38.039062, 32.984455>,  <40.306614, 37.965828, 32.916939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919216, 38.039062, 32.984455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152240, -0.101050, 0.983164,
		0.197064, 0.977889, 0.069993,
		-0.968498, 0.183091, 0.168787,
		39.628666, 38.093990, 33.035091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256821, 38.473427, 33.487541>,  <40.306614, 37.965828, 32.916939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256821, 38.473427, 33.487541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887424, 38.321239, 33.507191>,  <39.665787, 38.229927, 33.518982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887424, 38.321239, 33.507191>,  <40.256821, 38.473427, 33.487541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887424, 38.321239, 33.507191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079987, -0.065727, 0.994626,
		-0.375191, 0.922457, 0.091131,
		-0.923490, -0.380464, 0.049124,
		39.610378, 38.207100, 33.521927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873199, 38.766781, 34.078026>,  <40.256821, 38.473427, 33.487541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873199, 38.766781, 34.078026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663292, 38.438969, 33.985954>,  <39.537346, 38.242279, 33.930710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663292, 38.438969, 33.985954>,  <39.873199, 38.766781, 34.078026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663292, 38.438969, 33.985954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212485, -0.135730, 0.967692,
		-0.824297, 0.556726, -0.102911,
		-0.524771, -0.819532, -0.230178,
		39.505859, 38.193108, 33.916901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306416, 38.712975, 34.578812>,  <39.873199, 38.766781, 34.078026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306416, 38.712975, 34.578812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314175, 38.342384, 34.428467>,  <39.318829, 38.120029, 34.338261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314175, 38.342384, 34.428467>,  <39.306416, 38.712975, 34.578812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314175, 38.342384, 34.428467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199229, -0.371974, 0.906611,
		-0.979761, 0.057298, -0.191795,
		0.019396, -0.926473, -0.375861,
		39.319992, 38.064442, 34.315708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743412, 38.516335, 34.861050>,  <39.306416, 38.712975, 34.578812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743412, 38.516335, 34.861050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955627, 38.193336, 34.757912>,  <39.082954, 37.999538, 34.696030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955627, 38.193336, 34.757912>,  <38.743412, 38.516335, 34.861050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955627, 38.193336, 34.757912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127795, -0.376903, 0.917395,
		-0.837974, -0.453759, -0.303154,
		0.530536, -0.807494, -0.257846,
		39.114788, 37.951088, 34.680557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484467, 37.894638, 35.240414>,  <38.743412, 38.516335, 34.861050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484467, 37.894638, 35.240414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857845, 37.787613, 35.144848>,  <39.081875, 37.723396, 35.087509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857845, 37.787613, 35.144848>,  <38.484467, 37.894638, 35.240414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857845, 37.787613, 35.144848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094269, -0.459636, 0.883090,
		-0.346097, -0.846843, -0.403824,
		0.933451, -0.267567, -0.238909,
		39.137882, 37.707344, 35.073174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614582, 37.222954, 35.523491>,  <38.484467, 37.894638, 35.240414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614582, 37.222954, 35.523491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998596, 37.308865, 35.451710>,  <39.229004, 37.360413, 35.408642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998596, 37.308865, 35.451710>,  <38.614582, 37.222954, 35.523491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998596, 37.308865, 35.451710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277276, -0.642581, 0.714288,
		0.038103, -0.735499, -0.676454,
		0.960035, 0.214781, -0.179452,
		39.286606, 37.373299, 35.397873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984653, 36.564346, 35.372551>,  <38.614582, 37.222954, 35.523491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984653, 36.564346, 35.372551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233452, 36.845295, 35.510998>,  <39.382732, 37.013863, 35.594067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233452, 36.845295, 35.510998>,  <38.984653, 36.564346, 35.372551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233452, 36.845295, 35.510998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357720, -0.648092, 0.672320,
		0.696531, -0.294370, -0.654363,
		0.621998, 0.702370, 0.346114,
		39.420052, 37.056007, 35.614834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704636, 36.160408, 35.417057>,  <38.984653, 36.564346, 35.372551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704636, 36.160408, 35.417057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689293, 36.482986, 35.653080>,  <39.680088, 36.676533, 35.794693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689293, 36.482986, 35.653080>,  <39.704636, 36.160408, 35.417057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689293, 36.482986, 35.653080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297179, -0.554568, 0.777264,
		0.954051, 0.205169, -0.218386,
		-0.038361, 0.806449, 0.590058,
		39.677784, 36.724922, 35.830097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374172, 36.150009, 35.811230>,  <39.704636, 36.160408, 35.417057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374172, 36.150009, 35.811230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113567, 36.382614, 36.006119>,  <39.957207, 36.522179, 36.123051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113567, 36.382614, 36.006119>,  <40.374172, 36.150009, 35.811230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113567, 36.382614, 36.006119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240527, -0.450760, 0.859629,
		0.719503, 0.677244, 0.153804,
		-0.651508, 0.581511, 0.487219,
		39.918114, 36.557068, 36.152283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714966, 36.352104, 36.435356>,  <40.374172, 36.150009, 35.811230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714966, 36.352104, 36.435356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336113, 36.420860, 36.543728>,  <40.108803, 36.462116, 36.608749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336113, 36.420860, 36.543728>,  <40.714966, 36.352104, 36.435356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336113, 36.420860, 36.543728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196632, -0.356292, 0.913450,
		0.253545, 0.918427, 0.303654,
		-0.947128, 0.171893, 0.270928,
		40.051975, 36.472427, 36.625008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781086, 36.620827, 37.155052>,  <40.714966, 36.352104, 36.435356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781086, 36.620827, 37.155052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413822, 36.473354, 37.097004>,  <40.193466, 36.384872, 37.062176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413822, 36.473354, 37.097004>,  <40.781086, 36.620827, 37.155052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413822, 36.473354, 37.097004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073387, -0.518179, 0.852118,
		-0.389361, 0.771728, 0.502826,
		-0.918157, -0.368682, -0.145124,
		40.138374, 36.362751, 37.053467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386879, 36.578976, 37.863594>,  <40.781086, 36.620827, 37.155052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386879, 36.578976, 37.863594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183048, 36.342747, 37.613297>,  <40.060749, 36.201008, 37.463120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183048, 36.342747, 37.613297>,  <40.386879, 36.578976, 37.863594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183048, 36.342747, 37.613297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147797, -0.656359, 0.739831,
		-0.847634, 0.469486, 0.247183,
		-0.509580, -0.590573, -0.625740,
		40.030174, 36.165573, 37.425575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828533, 36.375206, 38.242535>,  <40.386879, 36.578976, 37.863594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828533, 36.375206, 38.242535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868439, 36.104462, 37.950806>,  <39.892384, 35.942017, 37.775768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868439, 36.104462, 37.950806>,  <39.828533, 36.375206, 38.242535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868439, 36.104462, 37.950806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124667, -0.735707, 0.665727,
		-0.987170, 0.024505, -0.157780,
		0.099766, -0.676856, -0.729323,
		39.898369, 35.901405, 37.732010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318882, 35.860508, 38.400257>,  <39.828533, 36.375206, 38.242535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318882, 35.860508, 38.400257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568146, 35.653072, 38.166084>,  <39.717705, 35.528610, 38.025581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568146, 35.653072, 38.166084>,  <39.318882, 35.860508, 38.400257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568146, 35.653072, 38.166084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118627, -0.802563, 0.584653,
		-0.773042, -0.294886, -0.561647,
		0.623164, -0.518588, -0.585434,
		39.755093, 35.497498, 37.990456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030426, 35.146908, 38.320068>,  <39.318882, 35.860508, 38.400257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030426, 35.146908, 38.320068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419266, 35.114967, 38.231842>,  <39.652569, 35.095802, 38.178905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419266, 35.114967, 38.231842>,  <39.030426, 35.146908, 38.320068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419266, 35.114967, 38.231842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059734, -0.825021, 0.561937,
		-0.226837, -0.559433, -0.797232,
		0.972099, -0.079846, -0.220563,
		39.710896, 35.091015, 38.165672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090015, 34.526028, 38.074188>,  <39.030426, 35.146908, 38.320068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090015, 34.526028, 38.074188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459625, 34.634548, 38.181953>,  <39.681389, 34.699661, 38.246613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459625, 34.634548, 38.181953>,  <39.090015, 34.526028, 38.074188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459625, 34.634548, 38.181953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118463, -0.873097, 0.472935,
		0.363530, -0.405086, -0.838899,
		0.924020, 0.271304, 0.269409,
		39.736832, 34.715939, 38.262775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563446, 33.947338, 38.018253>,  <39.090015, 34.526028, 38.074188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563446, 33.947338, 38.018253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737793, 34.203949, 38.270748>,  <39.842400, 34.357918, 38.422245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737793, 34.203949, 38.270748>,  <39.563446, 33.947338, 38.018253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737793, 34.203949, 38.270748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161043, -0.745638, 0.646598,
		0.885486, -0.180175, -0.428313,
		0.435867, 0.641530, 0.631236,
		39.868553, 34.396408, 38.460117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067047, 33.573639, 38.325462>,  <39.563446, 33.947338, 38.018253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067047, 33.573639, 38.325462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037289, 33.889980, 38.568447>,  <40.019432, 34.079784, 38.714237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037289, 33.889980, 38.568447>,  <40.067047, 33.573639, 38.325462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037289, 33.889980, 38.568447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008155, -0.609615, 0.792656,
		0.997195, 0.054017, 0.051803,
		-0.074397, 0.790855, 0.607465,
		40.014969, 34.127235, 38.750687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493259, 33.406956, 38.767929>,  <40.067047, 33.573639, 38.325462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493259, 33.406956, 38.767929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261707, 33.677410, 38.950241>,  <40.122776, 33.839684, 39.059628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261707, 33.677410, 38.950241>,  <40.493259, 33.406956, 38.767929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261707, 33.677410, 38.950241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077025, -0.511119, 0.856052,
		0.811766, 0.530658, 0.243797,
		-0.578880, 0.676135, 0.455784,
		40.088043, 33.880249, 39.086975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839874, 33.679230, 39.462749>,  <40.493259, 33.406956, 38.767929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839874, 33.679230, 39.462749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441071, 33.696377, 39.488461>,  <40.201790, 33.706665, 39.503887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441071, 33.696377, 39.488461>,  <40.839874, 33.679230, 39.462749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441071, 33.696377, 39.488461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041168, -0.409300, 0.911471,
		0.065382, 0.911392, 0.406312,
		-0.997011, 0.042866, 0.064281,
		40.141968, 33.709236, 39.507744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746857, 33.776436, 40.119678>,  <40.839874, 33.679230, 39.462749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746857, 33.776436, 40.119678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379219, 33.678352, 39.996300>,  <40.158638, 33.619503, 39.922272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379219, 33.678352, 39.996300>,  <40.746857, 33.776436, 40.119678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379219, 33.678352, 39.996300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140443, -0.527527, 0.837849,
		-0.368159, 0.813382, 0.450410,
		-0.919095, -0.245205, -0.308448,
		40.103489, 33.604790, 39.903767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321674, 33.865108, 40.725082>,  <40.746857, 33.776436, 40.119678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321674, 33.865108, 40.725082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134651, 33.618542, 40.471649>,  <40.022438, 33.470604, 40.319592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134651, 33.618542, 40.471649>,  <40.321674, 33.865108, 40.725082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134651, 33.618542, 40.471649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317920, -0.551526, 0.771198,
		-0.824812, 0.562009, 0.061901,
		-0.467560, -0.616413, -0.633579,
		39.994385, 33.433617, 40.281574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740772, 33.667881, 41.039288>,  <40.321674, 33.865108, 40.725082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740772, 33.667881, 41.039288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577751, 33.409607, 40.780987>,  <39.479939, 33.254642, 40.626007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577751, 33.409607, 40.780987>,  <39.740772, 33.667881, 41.039288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577751, 33.409607, 40.780987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464264, -0.462427, 0.755394,
		-0.786358, 0.607661, -0.111305,
		-0.407553, -0.645685, -0.645748,
		39.455486, 33.215900, 40.587261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997520, 33.555569, 41.168667>,  <39.740772, 33.667881, 41.039288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997520, 33.555569, 41.168667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167271, 33.225197, 41.020214>,  <39.269123, 33.026974, 40.931145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167271, 33.225197, 41.020214>,  <38.997520, 33.555569, 41.168667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167271, 33.225197, 41.020214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269865, -0.506608, 0.818854,
		-0.864336, -0.247349, -0.437884,
		0.424378, -0.825934, -0.371129,
		39.294582, 32.977417, 40.908875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462883, 33.019432, 41.217854>,  <38.997520, 33.555569, 41.168667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462883, 33.019432, 41.217854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814365, 32.832756, 41.177708>,  <39.025257, 32.720749, 41.153622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814365, 32.832756, 41.177708>,  <38.462883, 33.019432, 41.217854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814365, 32.832756, 41.177708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277950, -0.671132, 0.687259,
		-0.388092, -0.576006, -0.719446,
		0.878708, -0.466690, -0.100360,
		39.077976, 32.692749, 41.147598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304192, 32.300629, 41.156013>,  <38.462883, 33.019432, 41.217854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304192, 32.300629, 41.156013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682137, 32.354355, 41.275475>,  <38.908905, 32.386589, 41.347149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682137, 32.354355, 41.275475>,  <38.304192, 32.300629, 41.156013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682137, 32.354355, 41.275475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112274, -0.723859, 0.680752,
		0.307615, -0.676749, -0.668868,
		0.944864, 0.134314, 0.298651,
		38.965595, 32.394650, 41.365070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708450, 31.646471, 41.098507>,  <38.304192, 32.300629, 41.156013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708450, 31.646471, 41.098507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890739, 31.874205, 41.372200>,  <39.000114, 32.010845, 41.536415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890739, 31.874205, 41.372200>,  <38.708450, 31.646471, 41.098507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890739, 31.874205, 41.372200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058622, -0.747828, 0.661299,
		0.888187, -0.341483, -0.307430,
		0.455727, 0.569335, 0.684230,
		39.027458, 32.045006, 41.577469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116978, 31.164198, 41.521893>,  <38.708450, 31.646471, 41.098507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116978, 31.164198, 41.521893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067524, 31.490431, 41.748005>,  <39.037853, 31.686171, 41.883671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067524, 31.490431, 41.748005>,  <39.116978, 31.164198, 41.521893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067524, 31.490431, 41.748005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035274, -0.572899, 0.818866,
		0.991701, 0.081297, 0.099597,
		-0.123631, 0.815584, 0.565277,
		39.030434, 31.735106, 41.917587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647068, 31.287718, 41.881866>,  <39.116978, 31.164198, 41.521893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647068, 31.287718, 41.881866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305775, 31.393314, 42.061779>,  <39.100998, 31.456673, 42.169727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305775, 31.393314, 42.061779>,  <39.647068, 31.287718, 41.881866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305775, 31.393314, 42.061779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107936, -0.754366, 0.647520,
		0.510237, 0.601033, 0.615156,
		-0.853234, 0.263992, 0.449779,
		39.049805, 31.472511, 42.196712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717434, 31.466366, 42.645603>,  <39.647068, 31.287718, 41.881866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717434, 31.466366, 42.645603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334034, 31.358158, 42.609596>,  <39.103996, 31.293234, 42.587994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334034, 31.358158, 42.609596>,  <39.717434, 31.466366, 42.645603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334034, 31.358158, 42.609596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111614, -0.646577, 0.754639,
		-0.262345, 0.713273, 0.649936,
		-0.958498, -0.270517, -0.090015,
		39.046486, 31.277002, 42.582592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670639, 31.125242, 43.246658>,  <39.717434, 31.466366, 42.645603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670639, 31.125242, 43.246658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331223, 31.047041, 43.049984>,  <39.127571, 31.000120, 42.931980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331223, 31.047041, 43.049984>,  <39.670639, 31.125242, 43.246658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331223, 31.047041, 43.049984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089952, -0.862413, 0.498149,
		-0.521422, 0.466929, 0.714210,
		-0.848544, -0.195501, -0.491682,
		39.076660, 30.988390, 42.902481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255722, 31.004278, 43.742908>,  <39.670639, 31.125242, 43.246658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255722, 31.004278, 43.742908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056782, 30.842600, 43.435852>,  <38.937416, 30.745594, 43.251617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056782, 30.842600, 43.435852>,  <39.255722, 31.004278, 43.742908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056782, 30.842600, 43.435852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043878, -0.871984, 0.487565,
		-0.866438, 0.276174, 0.415949,
		-0.497353, -0.404194, -0.767637,
		38.907578, 30.721342, 43.205563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670689, 30.580198, 44.047821>,  <39.255722, 31.004278, 43.742908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670689, 30.580198, 44.047821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728672, 30.442110, 43.676918>,  <38.763462, 30.359257, 43.454376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728672, 30.442110, 43.676918>,  <38.670689, 30.580198, 44.047821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728672, 30.442110, 43.676918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005465, -0.936864, 0.349650,
		-0.989423, -0.055751, -0.133915,
		0.144954, -0.345220, -0.927260,
		38.772160, 30.338545, 43.398739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070843, 30.082098, 43.698639>,  <38.670689, 30.580198, 44.047821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070843, 30.082098, 43.698639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457531, 30.024189, 43.614265>,  <38.689545, 29.989445, 43.563641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457531, 30.024189, 43.614265>,  <38.070843, 30.082098, 43.698639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457531, 30.024189, 43.614265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030926, -0.884569, 0.465384,
		-0.253956, -0.443373, -0.859609,
		0.966721, -0.144771, -0.210930,
		38.747547, 29.980757, 43.550987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141056, 29.474258, 43.170105>,  <38.070843, 30.082098, 43.698639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141056, 29.474258, 43.170105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448959, 29.525845, 43.420170>,  <38.633701, 29.556797, 43.570210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448959, 29.525845, 43.420170>,  <38.141056, 29.474258, 43.170105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448959, 29.525845, 43.420170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065345, -0.958312, 0.278151,
		0.634977, -0.254962, -0.729246,
		0.769763, 0.128967, 0.625166,
		38.679890, 29.564535, 43.607719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291950, 28.768717, 43.202820>,  <38.141056, 29.474258, 43.170105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291950, 28.768717, 43.202820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514877, 28.965918, 43.470058>,  <38.648632, 29.084238, 43.630402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514877, 28.965918, 43.470058>,  <38.291950, 28.768717, 43.202820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514877, 28.965918, 43.470058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166536, -0.854661, 0.491752,
		0.813426, -0.162801, -0.558421,
		0.557318, 0.493001, 0.668092,
		38.682072, 29.113817, 43.670486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956238, 28.404783, 43.293690>,  <38.291950, 28.768717, 43.202820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956238, 28.404783, 43.293690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875546, 28.613947, 43.624958>,  <38.827129, 28.739445, 43.823719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875546, 28.613947, 43.624958>,  <38.956238, 28.404783, 43.293690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875546, 28.613947, 43.624958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347917, -0.752154, 0.559659,
		0.915564, 0.401035, -0.030198,
		-0.201730, 0.522910, 0.828173,
		38.815025, 28.770821, 43.873409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598263, 28.515923, 43.681416>,  <38.956238, 28.404783, 43.293690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598263, 28.515923, 43.681416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281151, 28.520847, 43.925171>,  <39.090885, 28.523802, 44.071423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281151, 28.520847, 43.925171>,  <39.598263, 28.515923, 43.681416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281151, 28.520847, 43.925171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419290, -0.714629, 0.559912,
		0.442377, 0.699395, 0.561381,
		-0.792779, 0.012311, 0.609384,
		39.043316, 28.524540, 44.107986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493874, 29.239761, 43.343922>,  <39.598263, 28.515923, 43.681416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493874, 29.239761, 43.343922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128838, 29.259560, 43.181572>,  <38.909817, 29.271439, 43.084164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128838, 29.259560, 43.181572>,  <39.493874, 29.239761, 43.343922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128838, 29.259560, 43.181572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128382, 0.977133, -0.169496,
		0.388204, -0.206787, -0.898074,
		-0.912587, 0.049498, -0.405875,
		38.855061, 29.274408, 43.059811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501266, 29.491001, 42.641056>,  <39.493874, 29.239761, 43.343922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501266, 29.491001, 42.641056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160423, 29.582508, 42.829346>,  <38.955917, 29.637411, 42.942318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160423, 29.582508, 42.829346>,  <39.501266, 29.491001, 42.641056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160423, 29.582508, 42.829346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114064, 0.958966, -0.259565,
		-0.510788, -0.167484, -0.843234,
		-0.852106, 0.228765, 0.470725,
		38.904793, 29.651138, 42.970562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990021, 29.911728, 42.228851>,  <39.501266, 29.491001, 42.641056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990021, 29.911728, 42.228851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871174, 30.022675, 42.594318>,  <38.799866, 30.089243, 42.813599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871174, 30.022675, 42.594318>,  <38.990021, 29.911728, 42.228851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871174, 30.022675, 42.594318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214821, 0.912931, -0.347000,
		-0.930362, -0.299374, -0.211662,
		-0.297116, 0.277366, 0.913668,
		38.782040, 30.105885, 42.868420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391842, 30.170219, 42.139332>,  <38.990021, 29.911728, 42.228851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391842, 30.170219, 42.139332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517494, 30.339996, 42.479019>,  <38.592884, 30.441862, 42.682831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517494, 30.339996, 42.479019>,  <38.391842, 30.170219, 42.139332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517494, 30.339996, 42.479019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287866, 0.894970, -0.340826,
		-0.904686, -0.137398, 0.403317,
		0.314128, 0.424442, 0.849219,
		38.611732, 30.467329, 42.733784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916458, 30.725853, 42.335503>,  <38.391842, 30.170219, 42.139332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916458, 30.725853, 42.335503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252670, 30.828487, 42.526363>,  <38.454395, 30.890068, 42.640881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252670, 30.828487, 42.526363>,  <37.916458, 30.725853, 42.335503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252670, 30.828487, 42.526363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022488, 0.863451, -0.503931,
		-0.541301, 0.434298, 0.719985,
		0.840528, 0.256587, 0.477153,
		38.504829, 30.905464, 42.669510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799198, 31.365131, 42.473938>,  <37.916458, 30.725853, 42.335503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799198, 31.365131, 42.473938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195530, 31.331842, 42.516502>,  <38.433331, 31.311869, 42.542042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195530, 31.331842, 42.516502>,  <37.799198, 31.365131, 42.473938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195530, 31.331842, 42.516502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109989, 0.954323, -0.277795,
		-0.078427, 0.286952, 0.954729,
		0.990834, -0.083223, 0.106407,
		38.492779, 31.306875, 42.548424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156475, 31.922865, 42.989933>,  <37.799198, 31.365131, 42.473938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156475, 31.922865, 42.989933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409729, 31.788813, 42.710842>,  <38.561680, 31.708382, 42.543388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409729, 31.788813, 42.710842>,  <38.156475, 31.922865, 42.989933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409729, 31.788813, 42.710842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246164, 0.941792, -0.228981,
		0.733855, -0.026780, 0.678778,
		0.633135, -0.335129, -0.697731,
		38.599670, 31.688274, 42.501522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869324, 32.255386, 43.066570>,  <38.156475, 31.922865, 42.989933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869324, 32.255386, 43.066570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777660, 32.158890, 42.689362>,  <38.722664, 32.100990, 42.463036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777660, 32.158890, 42.689362>,  <38.869324, 32.255386, 43.066570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777660, 32.158890, 42.689362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180793, 0.941397, -0.284757,
		0.956453, -0.235744, -0.172110,
		-0.229153, -0.241240, -0.943023,
		38.708916, 32.086517, 42.406456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318436, 32.760815, 42.646900>,  <38.869324, 32.255386, 43.066570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318436, 32.760815, 42.646900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243896, 32.441055, 42.418434>,  <39.199173, 32.249199, 42.281353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243896, 32.441055, 42.418434>,  <39.318436, 32.760815, 42.646900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243896, 32.441055, 42.418434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143721, 0.552919, -0.820747,
		0.971915, -0.235035, 0.011854,
		-0.186350, -0.799399, -0.571169,
		39.187992, 32.201237, 42.247082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875477, 32.679554, 42.265903>,  <39.318436, 32.760815, 42.646900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875477, 32.679554, 42.265903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594933, 32.482330, 42.060001>,  <39.426605, 32.363995, 41.936459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594933, 32.482330, 42.060001>,  <39.875477, 32.679554, 42.265903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594933, 32.482330, 42.060001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259457, 0.496030, -0.828635,
		0.663904, -0.714734, -0.219970,
		-0.701365, -0.493061, -0.514759,
		39.384521, 32.334412, 41.905575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255833, 32.268120, 41.840523>,  <39.875477, 32.679554, 42.265903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255833, 32.268120, 41.840523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891006, 32.378578, 41.719273>,  <39.672112, 32.444855, 41.646523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891006, 32.378578, 41.719273>,  <40.255833, 32.268120, 41.840523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891006, 32.378578, 41.719273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401066, 0.446836, -0.799677,
		-0.085382, -0.850929, -0.518296,
		-0.912061, 0.276148, -0.303127,
		39.617390, 32.461422, 41.628334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281670, 32.216682, 40.972054>,  <40.255833, 32.268120, 41.840523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281670, 32.216682, 40.972054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904106, 32.336136, 41.028416>,  <39.677570, 32.407810, 41.062233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904106, 32.336136, 41.028416>,  <40.281670, 32.216682, 40.972054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904106, 32.336136, 41.028416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011688, 0.456670, -0.889560,
		-0.330005, -0.838014, -0.434544,
		-0.943907, 0.298638, 0.140908,
		39.620934, 32.425728, 41.070686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936794, 32.017086, 40.342705>,  <40.281670, 32.216682, 40.972054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936794, 32.017086, 40.342705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773003, 32.342747, 40.507381>,  <39.674728, 32.538143, 40.606186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773003, 32.342747, 40.507381>,  <39.936794, 32.017086, 40.342705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773003, 32.342747, 40.507381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025390, 0.461247, -0.886908,
		-0.911967, -0.352715, -0.209541,
		-0.409476, 0.814151, 0.411687,
		39.650158, 32.586990, 40.630886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679329, 32.253998, 39.789543>,  <39.936794, 32.017086, 40.342705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679329, 32.253998, 39.789543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619434, 32.539616, 40.063103>,  <39.583500, 32.710987, 40.227238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619434, 32.539616, 40.063103>,  <39.679329, 32.253998, 39.789543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619434, 32.539616, 40.063103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206590, 0.699023, -0.684607,
		-0.966903, 0.038779, -0.252181,
		-0.149732, 0.714047, 0.683899,
		39.574516, 32.753830, 40.268272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128414, 32.741699, 39.610676>,  <39.679329, 32.253998, 39.789543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128414, 32.741699, 39.610676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385880, 32.966560, 39.818401>,  <39.540359, 33.101479, 39.943035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385880, 32.966560, 39.818401>,  <39.128414, 32.741699, 39.610676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385880, 32.966560, 39.818401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104710, 0.607494, -0.787392,
		-0.758115, 0.561189, 0.332157,
		0.643659, 0.562154, 0.519313,
		39.578976, 33.135208, 39.974194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885815, 33.412430, 39.537579>,  <39.128414, 32.741699, 39.610676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885815, 33.412430, 39.537579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266914, 33.463825, 39.647675>,  <39.495575, 33.494663, 39.713734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266914, 33.463825, 39.647675>,  <38.885815, 33.412430, 39.537579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266914, 33.463825, 39.647675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107894, 0.703893, -0.702064,
		-0.283945, 0.698589, 0.656771,
		0.952751, 0.128486, 0.275240,
		39.552738, 33.502373, 39.730247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004875, 34.152115, 39.676918>,  <38.885815, 33.412430, 39.537579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004875, 34.152115, 39.676918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373627, 34.014835, 39.604973>,  <39.594879, 33.932468, 39.561806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373627, 34.014835, 39.604973>,  <39.004875, 34.152115, 39.676918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373627, 34.014835, 39.604973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215653, 0.840107, -0.497709,
		0.321919, 0.420040, 0.848490,
		0.921880, -0.343201, -0.179863,
		39.650192, 33.911877, 39.551014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343414, 34.777138, 39.728168>,  <39.004875, 34.152115, 39.676918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343414, 34.777138, 39.728168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582718, 34.512268, 39.547676>,  <39.726299, 34.353348, 39.439381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582718, 34.512268, 39.547676>,  <39.343414, 34.777138, 39.728168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582718, 34.512268, 39.547676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173489, 0.656809, -0.733828,
		0.782295, 0.360736, 0.507822,
		0.598260, -0.662172, -0.451235,
		39.762196, 34.313618, 39.412304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989899, 35.091953, 39.574314>,  <39.343414, 34.777138, 39.728168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989899, 35.091953, 39.574314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970440, 34.787148, 39.316021>,  <39.958763, 34.604263, 39.161045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970440, 34.787148, 39.316021>,  <39.989899, 35.091953, 39.574314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970440, 34.787148, 39.316021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293057, 0.607158, -0.738565,
		0.954857, -0.225165, 0.193777,
		-0.048646, -0.762011, -0.645735,
		39.955845, 34.558544, 39.122299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670387, 35.092873, 39.173218>,  <39.989899, 35.091953, 39.574314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670387, 35.092873, 39.173218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365337, 34.911545, 38.988655>,  <40.182308, 34.802746, 38.877918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365337, 34.911545, 38.988655>,  <40.670387, 35.092873, 39.173218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365337, 34.911545, 38.988655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147463, 0.572699, -0.806393,
		0.629805, -0.683018, -0.369908,
		-0.762627, -0.453323, -0.461409,
		40.136547, 34.775547, 38.850231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956303, 35.012848, 38.433022>,  <40.670387, 35.092873, 39.173218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956303, 35.012848, 38.433022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561634, 34.958843, 38.396690>,  <40.324833, 34.926441, 38.374893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561634, 34.958843, 38.396690>,  <40.956303, 35.012848, 38.433022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561634, 34.958843, 38.396690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002075, 0.568573, -0.822630,
		0.162708, -0.811477, -0.561275,
		-0.986672, -0.135014, -0.090827,
		40.265633, 34.918339, 38.369442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929436, 35.068104, 37.765705>,  <40.956303, 35.012848, 38.433022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929436, 35.068104, 37.765705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550037, 35.072441, 37.892345>,  <40.322399, 35.075043, 37.968330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550037, 35.072441, 37.892345>,  <40.929436, 35.068104, 37.765705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550037, 35.072441, 37.892345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227763, 0.671269, -0.705353,
		-0.220173, -0.741135, -0.634227,
		-0.948498, 0.010846, 0.316598,
		40.265488, 35.075695, 37.987324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231766, 35.597519, 38.135628>,  <40.929436, 35.068104, 37.765705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231766, 35.597519, 38.135628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213848, 35.980747, 38.022419>,  <41.203098, 36.210682, 37.954494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213848, 35.980747, 38.022419>,  <41.231766, 35.597519, 38.135628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213848, 35.980747, 38.022419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387908, 0.277753, 0.878852,
		0.920609, -0.070422, -0.384083,
		-0.044789, 0.958068, -0.283020,
		41.200413, 36.268169, 37.937511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906425, 35.748600, 38.199253>,  <41.231766, 35.597519, 38.135628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906425, 35.748600, 38.199253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673019, 36.073097, 38.214230>,  <41.532978, 36.267796, 38.223217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673019, 36.073097, 38.214230>,  <41.906425, 35.748600, 38.199253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673019, 36.073097, 38.214230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527614, 0.343651, 0.776871,
		0.617362, 0.473068, -0.628546,
		-0.583513, 0.811240, 0.037440,
		41.497967, 36.316471, 38.225460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456165, 36.168530, 37.925304>,  <41.906425, 35.748600, 38.199253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456165, 36.168530, 37.925304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366016, 35.890209, 37.652519>,  <42.311928, 35.723217, 37.488850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366016, 35.890209, 37.652519>,  <42.456165, 36.168530, 37.925304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366016, 35.890209, 37.652519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902653, 0.114296, -0.414914,
		0.366642, -0.709085, 0.602306,
		-0.225368, -0.695798, -0.681963,
		42.298405, 35.681469, 37.447929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810867, 35.455761, 37.963757>,  <42.456165, 36.168530, 37.925304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810867, 35.455761, 37.963757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726669, 35.554741, 37.585453>,  <42.676151, 35.614128, 37.358471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726669, 35.554741, 37.585453>,  <42.810867, 35.455761, 37.963757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726669, 35.554741, 37.585453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965659, -0.098083, -0.240587,
		-0.152295, -0.963924, -0.218304,
		-0.210496, 0.247448, -0.945760,
		42.663521, 35.628975, 37.301723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423851, 35.243378, 37.658028>,  <42.810867, 35.455761, 37.963757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423851, 35.243378, 37.658028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256172, 35.420460, 37.340969>,  <43.155563, 35.526711, 37.150734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256172, 35.420460, 37.340969>,  <43.423851, 35.243378, 37.658028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256172, 35.420460, 37.340969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855600, -0.099395, -0.508005,
		-0.303682, -0.891141, -0.337112,
		-0.419197, 0.442705, -0.792645,
		43.130413, 35.553272, 37.103176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622410, 34.822666, 37.125038>,  <43.423851, 35.243378, 37.658028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622410, 34.822666, 37.125038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.549957, 35.179993, 36.960510>,  <43.506485, 35.394386, 36.861794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.549957, 35.179993, 36.960510>,  <43.622410, 34.822666, 37.125038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549957, 35.179993, 36.960510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788263, -0.118215, -0.603876,
		-0.588074, -0.433611, -0.682752,
		-0.181135, 0.893312, -0.411319,
		43.495617, 35.447987, 36.837116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728992, 34.817505, 36.238739>,  <43.622410, 34.822666, 37.125038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728992, 34.817505, 36.238739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787060, 35.184200, 36.387608>,  <43.821899, 35.404217, 36.476929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787060, 35.184200, 36.387608>,  <43.728992, 34.817505, 36.238739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787060, 35.184200, 36.387608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917392, 0.016166, -0.397656,
		-0.370564, 0.399156, -0.838664,
		0.145169, 0.916741, 0.372173,
		43.830612, 35.459221, 36.499260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977932, 35.174618, 35.622688>,  <43.728992, 34.817505, 36.238739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977932, 35.174618, 35.622688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.102917, 35.349766, 35.959885>,  <44.177906, 35.454853, 36.162205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.102917, 35.349766, 35.959885>,  <43.977932, 35.174618, 35.622688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.102917, 35.349766, 35.959885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919563, 0.083162, -0.384041,
		-0.238265, 0.895184, -0.376664,
		0.312463, 0.437870, 0.842993,
		44.196655, 35.481125, 36.212784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250179, 35.811039, 35.411682>,  <43.977932, 35.174618, 35.622688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250179, 35.811039, 35.411682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441971, 35.745598, 35.756550>,  <44.557045, 35.706333, 35.963470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441971, 35.745598, 35.756550>,  <44.250179, 35.811039, 35.411682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441971, 35.745598, 35.756550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846745, 0.344301, -0.405562,
		-0.230495, 0.924495, 0.303614,
		0.479474, -0.163604, 0.862171,
		44.585812, 35.696518, 36.015202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576683, 36.374603, 35.641949>,  <44.250179, 35.811039, 35.411682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576683, 36.374603, 35.641949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807560, 36.097843, 35.815441>,  <44.946087, 35.931786, 35.919537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807560, 36.097843, 35.815441>,  <44.576683, 36.374603, 35.641949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807560, 36.097843, 35.815441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816589, 0.492628, -0.300833,
		-0.005521, 0.527818, 0.849340,
		0.577193, -0.691901, 0.433730,
		44.980717, 35.890274, 35.945560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118317, 36.628456, 36.124611>,  <44.576683, 36.374603, 35.641949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118317, 36.628456, 36.124611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212780, 36.301743, 35.914055>,  <45.269459, 36.105713, 35.787720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212780, 36.301743, 35.914055>,  <45.118317, 36.628456, 36.124611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212780, 36.301743, 35.914055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876443, 0.412974, -0.247588,
		0.419612, -0.402882, 0.813395,
		0.236163, -0.816785, -0.526392,
		45.283630, 36.056705, 35.756138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.818562, 36.569618, 35.881901>,  <45.118317, 36.628456, 36.124611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.818562, 36.569618, 35.881901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653706, 36.909477, 35.750305>,  <45.554790, 37.113392, 35.671349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653706, 36.909477, 35.750305>,  <45.818562, 36.569618, 35.881901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653706, 36.909477, 35.750305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886728, 0.291058, -0.359164,
		-0.209407, -0.439754, -0.873364,
		-0.412143, 0.849648, -0.328993,
		45.530064, 37.164371, 35.651608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.023975, 36.665222, 35.196201>,  <45.818562, 36.569618, 35.881901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.023975, 36.665222, 35.196201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965202, 37.002022, 35.403839>,  <45.929939, 37.204102, 35.528419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965202, 37.002022, 35.403839>,  <46.023975, 36.665222, 35.196201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.965202, 37.002022, 35.403839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957752, 0.252271, -0.138092,
		-0.247224, 0.476870, -0.843490,
		-0.146936, 0.841994, 0.519091,
		45.921120, 37.254620, 35.559566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.493065, 37.142689, 34.889633>,  <46.023975, 36.665222, 35.196201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.493065, 37.142689, 34.889633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.416561, 37.241604, 35.269585>,  <46.370659, 37.300953, 35.497555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.416561, 37.241604, 35.269585>,  <46.493065, 37.142689, 34.889633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.416561, 37.241604, 35.269585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968884, 0.202472, 0.142372,
		-0.157117, 0.947552, -0.278316,
		-0.191256, 0.247287, 0.949879,
		46.359184, 37.315788, 35.554550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.178478, 37.364441, 34.854122>,  <46.493065, 37.142689, 34.889633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.178478, 37.364441, 34.854122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914654, 37.529129, 34.602581>,  <46.756359, 37.627941, 34.451656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914654, 37.529129, 34.602581>,  <47.178478, 37.364441, 34.854122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.914654, 37.529129, 34.602581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681714, 0.024735, 0.731201,
		0.316607, 0.910973, 0.264363,
		-0.659565, 0.411723, -0.628854,
		46.716785, 37.652645, 34.413925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.246643, 37.698841, 35.468029>,  <47.178478, 37.364441, 34.854122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.246643, 37.698841, 35.468029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.016102, 37.430935, 35.655319>,  <46.877777, 37.270191, 35.767693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.016102, 37.430935, 35.655319>,  <47.246643, 37.698841, 35.468029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.016102, 37.430935, 35.655319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429471, -0.735706, -0.523729,
		0.695250, -0.100764, 0.711670,
		-0.576353, -0.669764, 0.468224,
		46.843197, 37.230007, 35.795788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.625607, 37.102699, 35.747482>,  <47.246643, 37.698841, 35.468029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.625607, 37.102699, 35.747482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269150, 36.962238, 35.632545>,  <47.055275, 36.877960, 35.563583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269150, 36.962238, 35.632545>,  <47.625607, 37.102699, 35.747482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.269150, 36.962238, 35.632545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446210, -0.563393, -0.695331,
		0.082285, -0.747849, 0.658750,
		-0.891137, -0.351157, -0.287339,
		47.001808, 36.856892, 35.546345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.623501, 36.329983, 35.768173>,  <47.625607, 37.102699, 35.747482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.623501, 36.329983, 35.768173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.373623, 36.450157, 35.479870>,  <47.223694, 36.522263, 35.306889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.373623, 36.450157, 35.479870>,  <47.623501, 36.329983, 35.768173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.373623, 36.450157, 35.479870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501468, -0.553180, -0.665223,
		-0.598569, -0.776998, 0.194907,
		-0.624696, 0.300442, -0.720756,
		47.186214, 36.540291, 35.263641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.539520, 35.772285, 35.376415>,  <47.623501, 36.329983, 35.768173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.539520, 35.772285, 35.376415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.462482, 36.067055, 35.117229>,  <47.416260, 36.243916, 34.961720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.462482, 36.067055, 35.117229>,  <47.539520, 35.772285, 35.376415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.462482, 36.067055, 35.117229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335840, -0.570946, -0.749154,
		-0.922019, -0.361894, -0.137526,
		-0.192594, 0.736921, -0.647962,
		47.404705, 36.288132, 34.922840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.062145, 35.610344, 34.840496>,  <47.539520, 35.772285, 35.376415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.062145, 35.610344, 34.840496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.355625, 35.868652, 34.755966>,  <47.531715, 36.023640, 34.705246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.355625, 35.868652, 34.755966>,  <47.062145, 35.610344, 34.840496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.355625, 35.868652, 34.755966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430396, -0.682363, -0.590881,
		-0.525776, 0.342576, -0.778589,
		0.733702, 0.645773, -0.211327,
		47.575737, 36.062386, 34.692570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.439445, 34.940933, 34.695721>,  <47.062145, 35.610344, 34.840496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.439445, 34.940933, 34.695721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.655430, 35.275227, 34.735683>,  <47.785023, 35.475803, 34.759663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.655430, 35.275227, 34.735683>,  <47.439445, 34.940933, 34.695721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.655430, 35.275227, 34.735683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812342, 0.548523, -0.198048,
		-0.220320, 0.025776, 0.975087,
		0.539963, 0.835738, 0.099912,
		47.817417, 35.525948, 34.765656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.153732, 35.277225, 28.114466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753803, 35.282707, 28.109253>,  <36.513847, 35.285995, 28.106125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753803, 35.282707, 28.109253>,  <37.153732, 35.277225, 28.114466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753803, 35.282707, 28.109253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015248, -0.176646, 0.984156,
		0.011183, 0.984179, 0.176823,
		-0.999821, 0.013702, -0.013031,
		36.453857, 35.286819, 28.105343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029007, 35.605244, 28.723736>,  <37.153732, 35.277225, 28.114466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029007, 35.605244, 28.723736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705051, 35.393467, 28.622721>,  <36.510677, 35.266399, 28.562111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705051, 35.393467, 28.622721>,  <37.029007, 35.605244, 28.723736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705051, 35.393467, 28.622721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096545, -0.304340, 0.947658,
		-0.578590, 0.791875, 0.195365,
		-0.809884, -0.529444, -0.252539,
		36.462086, 35.234634, 28.546959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540951, 35.804955, 29.172388>,  <37.029007, 35.605244, 28.723736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540951, 35.804955, 29.172388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.414482, 35.448769, 29.041483>,  <36.338600, 35.235058, 28.962940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.414482, 35.448769, 29.041483>,  <36.540951, 35.804955, 29.172388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414482, 35.448769, 29.041483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130699, -0.300783, 0.944694,
		-0.939655, 0.341460, -0.021283,
		-0.316174, -0.890469, -0.327261,
		36.319630, 35.181629, 28.943304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950996, 35.684898, 29.587748>,  <36.540951, 35.804955, 29.172388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950996, 35.684898, 29.587748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064003, 35.323772, 29.458067>,  <36.131805, 35.107098, 29.380259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064003, 35.323772, 29.458067>,  <35.950996, 35.684898, 29.587748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064003, 35.323772, 29.458067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094931, -0.362623, 0.927088,
		-0.954553, -0.231141, -0.188152,
		0.282516, -0.902817, -0.324200,
		36.148758, 35.052929, 29.360807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445801, 35.219139, 29.941431>,  <35.950996, 35.684898, 29.587748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445801, 35.219139, 29.941431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.746223, 34.979210, 29.831066>,  <35.926476, 34.835251, 29.764847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.746223, 34.979210, 29.831066>,  <35.445801, 35.219139, 29.941431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746223, 34.979210, 29.831066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061992, -0.480119, 0.875010,
		-0.657322, -0.640077, -0.397781,
		0.751056, -0.599823, -0.275913,
		35.971539, 34.799263, 29.748293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204174, 34.536625, 30.023230>,  <35.445801, 35.219139, 29.941431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204174, 34.536625, 30.023230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.603859, 34.525436, 30.011930>,  <35.843670, 34.518723, 30.005152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.603859, 34.525436, 30.011930>,  <35.204174, 34.536625, 30.023230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603859, 34.525436, 30.011930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012984, -0.442023, 0.896910,
		-0.037570, -0.896568, -0.441310,
		0.999210, -0.027967, -0.028248,
		35.903622, 34.517048, 30.003456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375919, 33.806992, 30.282078>,  <35.204174, 34.536625, 30.023230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375919, 33.806992, 30.282078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.695496, 34.046104, 30.308455>,  <35.887241, 34.189571, 30.324280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.695496, 34.046104, 30.308455>,  <35.375919, 33.806992, 30.282078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695496, 34.046104, 30.308455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261699, -0.444276, 0.856815,
		0.541489, -0.667286, -0.511390,
		0.798939, 0.597786, 0.065942,
		35.935177, 34.225441, 30.328238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975647, 33.331837, 30.370161>,  <35.375919, 33.806992, 30.282078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975647, 33.331837, 30.370161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076759, 33.693832, 30.507042>,  <36.137424, 33.911030, 30.589170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076759, 33.693832, 30.507042>,  <35.975647, 33.331837, 30.370161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076759, 33.693832, 30.507042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271234, -0.405787, 0.872794,
		0.928728, -0.127805, -0.348037,
		0.252777, 0.904988, 0.342201,
		36.152592, 33.965328, 30.609703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553547, 33.208286, 30.818005>,  <35.975647, 33.331837, 30.370161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553547, 33.208286, 30.818005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.433109, 33.570004, 30.939060>,  <36.360847, 33.787033, 31.011694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.433109, 33.570004, 30.939060>,  <36.553547, 33.208286, 30.818005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433109, 33.570004, 30.939060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124336, -0.277426, 0.952667,
		0.945453, 0.324474, -0.028905,
		-0.301097, 0.904296, 0.302637,
		36.342781, 33.841293, 31.029852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962204, 33.435997, 31.452196>,  <36.553547, 33.208286, 30.818005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962204, 33.435997, 31.452196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663425, 33.700062, 31.483822>,  <36.484158, 33.858501, 31.502798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663425, 33.700062, 31.483822>,  <36.962204, 33.435997, 31.452196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663425, 33.700062, 31.483822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073602, -0.036085, 0.996635,
		0.660797, 0.750253, -0.021636,
		-0.746947, 0.660165, 0.079065,
		36.439342, 33.898113, 31.507542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231926, 33.996231, 31.647644>,  <36.962204, 33.435997, 31.452196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231926, 33.996231, 31.647644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847214, 34.039001, 31.748472>,  <36.616386, 34.064663, 31.808969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847214, 34.039001, 31.748472>,  <37.231926, 33.996231, 31.647644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847214, 34.039001, 31.748472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261201, 0.082134, 0.961784,
		0.082134, 0.990869, -0.106924,
		-0.961784, 0.106924, 0.252069,
		36.558678, 34.071079, 31.824093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181759, 34.576977, 32.048546>,  <37.231926, 33.996231, 31.647644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181759, 34.576977, 32.048546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.857029, 34.364647, 32.145844>,  <36.662189, 34.237251, 32.204224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.857029, 34.364647, 32.145844>,  <37.181759, 34.576977, 32.048546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857029, 34.364647, 32.145844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212525, 0.119388, 0.969835,
		-0.543850, 0.839032, 0.015890,
		-0.811826, -0.530822, 0.243244,
		36.613480, 34.205399, 32.218819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998703, 34.861607, 32.588860>,  <37.181759, 34.576977, 32.048546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998703, 34.861607, 32.588860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777710, 34.531071, 32.632542>,  <36.645115, 34.332748, 32.658752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777710, 34.531071, 32.632542>,  <36.998703, 34.861607, 32.588860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777710, 34.531071, 32.632542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274049, -0.056343, 0.960064,
		-0.787188, 0.560343, 0.257587,
		-0.552478, -0.826342, 0.109209,
		36.611965, 34.283169, 32.665306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528378, 35.015324, 33.207664>,  <36.998703, 34.861607, 32.588860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528378, 35.015324, 33.207664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.596920, 34.622990, 33.170567>,  <36.638046, 34.387589, 33.148308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.596920, 34.622990, 33.170567>,  <36.528378, 35.015324, 33.207664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596920, 34.622990, 33.170567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252355, -0.047299, 0.966478,
		-0.952341, -0.189021, 0.239413,
		0.171360, -0.980833, -0.092745,
		36.648327, 34.328739, 33.142742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291828, 34.734356, 33.883183>,  <36.528378, 35.015324, 33.207664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291828, 34.734356, 33.883183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.510712, 34.452808, 33.702015>,  <36.642040, 34.283878, 33.593315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.510712, 34.452808, 33.702015>,  <36.291828, 34.734356, 33.883183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510712, 34.452808, 33.702015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439991, -0.218420, 0.871034,
		-0.712021, -0.675914, 0.190176,
		0.547206, -0.703870, -0.452916,
		36.674873, 34.241646, 33.566139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271564, 34.074142, 34.362545>,  <36.291828, 34.734356, 33.883183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271564, 34.074142, 34.362545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.601040, 34.077335, 34.135754>,  <36.798725, 34.079250, 33.999680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.601040, 34.077335, 34.135754>,  <36.271564, 34.074142, 34.362545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601040, 34.077335, 34.135754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564504, -0.105986, 0.818598,
		-0.053559, -0.994336, -0.091806,
		0.823691, 0.007981, -0.566982,
		36.848148, 34.079727, 33.965660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672554, 33.585461, 34.714432>,  <36.271564, 34.074142, 34.362545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672554, 33.585461, 34.714432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930126, 33.790882, 34.487587>,  <37.084671, 33.914135, 34.351479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930126, 33.790882, 34.487587>,  <36.672554, 33.585461, 34.714432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930126, 33.790882, 34.487587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696252, -0.086076, 0.712617,
		0.317150, -0.853731, -0.412988,
		0.643932, 0.513550, -0.567113,
		37.123306, 33.944946, 34.317451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334709, 33.190414, 34.770134>,  <36.672554, 33.585461, 34.714432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334709, 33.190414, 34.770134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407959, 33.563538, 34.645985>,  <37.451908, 33.787411, 34.571495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407959, 33.563538, 34.645985>,  <37.334709, 33.190414, 34.770134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407959, 33.563538, 34.645985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581116, 0.151938, 0.799511,
		0.792950, -0.326772, -0.514247,
		0.183125, 0.932810, -0.310372,
		37.462898, 33.843380, 34.552872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056213, 33.361565, 35.089943>,  <37.334709, 33.190414, 34.770134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056213, 33.361565, 35.089943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878468, 33.708805, 35.001446>,  <37.771820, 33.917149, 34.948349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878468, 33.708805, 35.001446>,  <38.056213, 33.361565, 35.089943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878468, 33.708805, 35.001446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462388, 0.433777, 0.773327,
		0.767293, 0.241339, -0.594153,
		-0.444364, 0.868097, -0.221242,
		37.745159, 33.969234, 34.935074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607574, 33.849030, 35.096127>,  <38.056213, 33.361565, 35.089943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607574, 33.849030, 35.096127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267624, 34.057774, 35.125439>,  <38.063652, 34.183022, 35.143024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267624, 34.057774, 35.125439>,  <38.607574, 33.849030, 35.096127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267624, 34.057774, 35.125439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295583, 0.356944, 0.886127,
		0.436283, 0.774757, -0.457612,
		-0.849875, 0.521865, 0.073276,
		38.012661, 34.214333, 35.147423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757523, 34.623970, 35.150574>,  <38.607574, 33.849030, 35.096127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757523, 34.623970, 35.150574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399986, 34.540417, 35.309277>,  <38.185463, 34.490284, 35.404499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399986, 34.540417, 35.309277>,  <38.757523, 34.623970, 35.150574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399986, 34.540417, 35.309277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342233, 0.253870, 0.904669,
		-0.289694, 0.944414, -0.155432,
		-0.893842, -0.208884, 0.396754,
		38.131832, 34.477753, 35.428303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788578, 35.112877, 35.673687>,  <38.757523, 34.623970, 35.150574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788578, 35.112877, 35.673687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478325, 34.878311, 35.767075>,  <38.292171, 34.737572, 35.823109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478325, 34.878311, 35.767075>,  <38.788578, 35.112877, 35.673687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478325, 34.878311, 35.767075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279601, 0.012403, 0.960036,
		-0.565871, 0.809919, 0.154341,
		-0.775637, -0.586411, 0.233473,
		38.245632, 34.702389, 35.837116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296955, 34.587673, 36.117279>,  <38.788578, 35.112877, 35.673687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296955, 34.587673, 36.117279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.614933, 34.346851, 36.147179>,  <39.805721, 34.202358, 36.165119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.614933, 34.346851, 36.147179>,  <39.296955, 34.587673, 36.117279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614933, 34.346851, 36.147179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237857, 0.195944, -0.951331,
		0.558109, 0.774037, 0.298968,
		0.794946, -0.602058, 0.074753,
		39.853416, 34.166233, 36.169605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793713, 34.901871, 35.786137>,  <39.296955, 34.587673, 36.117279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793713, 34.901871, 35.786137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.896252, 34.515896, 35.763603>,  <39.957775, 34.284309, 35.750084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.896252, 34.515896, 35.763603>,  <39.793713, 34.901871, 35.786137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896252, 34.515896, 35.763603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155294, 0.098640, -0.982931,
		0.954028, 0.243223, 0.175136,
		0.256347, -0.964942, -0.056335,
		39.973156, 34.226414, 35.746704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164398, 34.902855, 35.182022>,  <39.793713, 34.901871, 35.786137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164398, 34.902855, 35.182022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.171719, 34.504234, 35.214386>,  <40.176109, 34.265060, 35.233803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.171719, 34.504234, 35.214386>,  <40.164398, 34.902855, 35.182022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171719, 34.504234, 35.214386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003998, -0.080994, -0.996706,
		0.999825, 0.017913, -0.005467,
		0.018297, -0.996553, 0.080908,
		40.177208, 34.205269, 35.238659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787239, 34.538799, 34.811169>,  <40.164398, 34.902855, 35.182022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787239, 34.538799, 34.811169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.493980, 34.267368, 34.829216>,  <40.318027, 34.104511, 34.840046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.493980, 34.267368, 34.829216>,  <40.787239, 34.538799, 34.811169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493980, 34.267368, 34.829216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014246, -0.081657, -0.996559,
		0.679926, -0.729977, 0.069533,
		-0.733142, -0.678577, 0.045121,
		40.274036, 34.063797, 34.842751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030025, 34.068748, 34.402367>,  <40.787239, 34.538799, 34.811169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030025, 34.068748, 34.402367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.642120, 33.976547, 34.434444>,  <40.409378, 33.921227, 34.453690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.642120, 33.976547, 34.434444>,  <41.030025, 34.068748, 34.402367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642120, 33.976547, 34.434444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017114, -0.263546, -0.964495,
		0.243458, -0.936702, 0.251631,
		-0.969760, -0.230507, 0.080193,
		40.351192, 33.907394, 34.458504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043285, 33.481407, 34.215385>,  <41.030025, 34.068748, 34.402367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043285, 33.481407, 34.215385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.679489, 33.639008, 34.162323>,  <40.461212, 33.733570, 34.130486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.679489, 33.639008, 34.162323>,  <41.043285, 33.481407, 34.215385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679489, 33.639008, 34.162323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049974, -0.213154, -0.975740,
		-0.412720, -0.894050, 0.174171,
		-0.909486, 0.394004, -0.132653,
		40.406643, 33.757210, 34.122528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584499, 32.958714, 33.916576>,  <41.043285, 33.481407, 34.215385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584499, 32.958714, 33.916576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.422451, 33.315945, 33.838314>,  <40.325222, 33.530285, 33.791355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.422451, 33.315945, 33.838314>,  <40.584499, 32.958714, 33.916576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422451, 33.315945, 33.838314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077324, -0.246706, -0.966001,
		-0.910986, -0.376220, 0.169003,
		-0.405123, 0.893082, -0.195655,
		40.300915, 33.583870, 33.779617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956409, 32.881756, 33.530823>,  <40.584499, 32.958714, 33.916576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956409, 32.881756, 33.530823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.025406, 33.267048, 33.448429>,  <40.066803, 33.498222, 33.398994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.025406, 33.267048, 33.448429>,  <39.956409, 32.881756, 33.530823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025406, 33.267048, 33.448429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265960, -0.155806, -0.951309,
		-0.948425, 0.218879, 0.229306,
		0.172494, 0.963232, -0.205984,
		40.077156, 33.556019, 33.386635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416599, 33.046185, 32.974598>,  <39.956409, 32.881756, 33.530823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416599, 33.046185, 32.974598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.669941, 33.355721, 32.976887>,  <39.821945, 33.541443, 32.978260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.669941, 33.355721, 32.976887>,  <39.416599, 33.046185, 32.974598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669941, 33.355721, 32.976887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228145, 0.193782, -0.954148,
		-0.739466, 0.603010, 0.299281,
		0.633356, 0.773839, 0.005721,
		39.859947, 33.587872, 32.978603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057507, 33.500286, 32.568253>,  <39.416599, 33.046185, 32.974598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057507, 33.500286, 32.568253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.439987, 33.617344, 32.570461>,  <39.669476, 33.687580, 32.571785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.439987, 33.617344, 32.570461>,  <39.057507, 33.500286, 32.568253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439987, 33.617344, 32.570461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141779, 0.479593, -0.865962,
		-0.256071, 0.827253, 0.500080,
		0.956204, 0.292649, 0.005522,
		39.726849, 33.705139, 32.572117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036221, 34.150887, 32.311172>,  <39.057507, 33.500286, 32.568253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036221, 34.150887, 32.311172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.404011, 34.002106, 32.260239>,  <39.624683, 33.912838, 32.229679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.404011, 34.002106, 32.260239>,  <39.036221, 34.150887, 32.311172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404011, 34.002106, 32.260239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031201, 0.391904, -0.919477,
		0.391904, 0.841464, 0.371952,
		0.919477, -0.371952, -0.127334,
		39.679855, 33.890518, 32.222038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390701, 34.754742, 32.119946>,  <39.036221, 34.150887, 32.311172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390701, 34.754742, 32.119946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.547680, 34.404800, 32.006378>,  <39.641869, 34.194836, 31.938236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.547680, 34.404800, 32.006378>,  <39.390701, 34.754742, 32.119946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547680, 34.404800, 32.006378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068383, 0.280079, -0.957538,
		0.917229, 0.395199, 0.050091,
		0.392447, -0.874856, -0.283921,
		39.665413, 34.142342, 31.921202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882931, 34.905041, 31.663105>,  <39.390701, 34.754742, 32.119946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882931, 34.905041, 31.663105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.794876, 34.529934, 31.555672>,  <39.742043, 34.304871, 31.491211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.794876, 34.529934, 31.555672>,  <39.882931, 34.905041, 31.663105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794876, 34.529934, 31.555672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117051, 0.298745, -0.947128,
		0.968420, -0.177062, -0.175531,
		-0.220139, -0.937764, -0.268585,
		39.728836, 34.248604, 31.475096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356194, 34.780609, 31.091568>,  <39.882931, 34.905041, 31.663105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356194, 34.780609, 31.091568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.059948, 34.513554, 31.061230>,  <39.882202, 34.353321, 31.043026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.059948, 34.513554, 31.061230>,  <40.356194, 34.780609, 31.091568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059948, 34.513554, 31.061230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098190, 0.219204, -0.970726,
		0.664717, -0.711487, -0.227901,
		-0.740615, -0.667635, -0.075847,
		39.837765, 34.313263, 31.038475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501110, 34.356987, 30.515062>,  <40.356194, 34.780609, 31.091568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501110, 34.356987, 30.515062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.105137, 34.332718, 30.566219>,  <39.867554, 34.318157, 30.596914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.105137, 34.332718, 30.566219>,  <40.501110, 34.356987, 30.515062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105137, 34.332718, 30.566219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135127, 0.135848, -0.981471,
		0.042174, -0.988870, -0.142678,
		-0.989930, -0.060672, 0.127894,
		39.808159, 34.314514, 30.604588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292957, 34.012817, 29.962837>,  <40.501110, 34.356987, 30.515062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292957, 34.012817, 29.962837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.962296, 34.185226, 30.107542>,  <39.763901, 34.288670, 30.194365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.962296, 34.185226, 30.107542>,  <40.292957, 34.012817, 29.962837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962296, 34.185226, 30.107542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245238, 0.302674, -0.921003,
		-0.506466, -0.850065, -0.144503,
		-0.826650, 0.431019, 0.361763,
		39.714302, 34.314533, 30.216070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871174, 33.914646, 29.391558>,  <40.292957, 34.012817, 29.962837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871174, 33.914646, 29.391558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.673714, 34.177845, 29.619011>,  <39.555237, 34.335766, 29.755484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.673714, 34.177845, 29.619011>,  <39.871174, 33.914646, 29.391558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673714, 34.177845, 29.619011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468288, 0.349847, -0.811365,
		-0.732813, -0.666816, 0.135431,
		-0.493651, 0.658000, 0.568635,
		39.525620, 34.375244, 29.789600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132545, 33.901398, 29.208324>,  <39.871174, 33.914646, 29.391558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132545, 33.901398, 29.208324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.187344, 34.274208, 29.342527>,  <39.220222, 34.497894, 29.423050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.187344, 34.274208, 29.342527>,  <39.132545, 33.901398, 29.208324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187344, 34.274208, 29.342527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362941, 0.362374, -0.858463,
		-0.921687, -0.004168, 0.387912,
		0.136991, 0.932023, 0.335509,
		39.228439, 34.553814, 29.443180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.522484, 34.362221, 28.977194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.753582, 34.669868, 29.086494>,  <38.892239, 34.854458, 29.152075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.753582, 34.669868, 29.086494>,  <38.522484, 34.362221, 28.977194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753582, 34.669868, 29.086494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350189, 0.535970, -0.768182,
		-0.737279, 0.348122, 0.578991,
		0.577743, 0.769121, 0.273251,
		38.926907, 34.900604, 29.168470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106411, 34.902603, 28.973181>,  <38.522484, 34.362221, 28.977194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106411, 34.902603, 28.973181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.481342, 35.037891, 28.939651>,  <38.706303, 35.119064, 28.919535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.481342, 35.037891, 28.939651>,  <38.106411, 34.902603, 28.973181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481342, 35.037891, 28.939651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253263, 0.496049, -0.830538,
		-0.239324, 0.799714, 0.550619,
		0.937327, 0.338219, -0.083822,
		38.762539, 35.139359, 28.914505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046268, 35.582569, 28.768799>,  <38.106411, 34.902603, 28.973181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046268, 35.582569, 28.768799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423954, 35.493523, 28.671726>,  <38.650566, 35.440094, 28.613482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423954, 35.493523, 28.671726>,  <38.046268, 35.582569, 28.768799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423954, 35.493523, 28.671726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019323, 0.698204, -0.715638,
		0.328752, 0.680408, 0.654956,
		0.944219, -0.222612, -0.242683,
		38.707218, 35.426739, 28.598921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318130, 36.144875, 28.593250>,  <38.046268, 35.582569, 28.768799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318130, 36.144875, 28.593250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.551300, 35.874496, 28.412891>,  <38.691200, 35.712269, 28.304676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.551300, 35.874496, 28.412891>,  <38.318130, 36.144875, 28.593250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551300, 35.874496, 28.412891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094609, 0.607620, -0.788573,
		0.807002, 0.417016, 0.418144,
		0.582920, -0.675940, -0.450897,
		38.726177, 35.671715, 28.277622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916969, 36.502621, 28.459112>,  <38.318130, 36.144875, 28.593250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916969, 36.502621, 28.459112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.885052, 36.193256, 28.207567>,  <38.865902, 36.007637, 28.056641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.885052, 36.193256, 28.207567>,  <38.916969, 36.502621, 28.459112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885052, 36.193256, 28.207567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119316, 0.633748, -0.764282,
		0.989645, 0.014045, -0.142852,
		-0.079798, -0.773412, -0.628861,
		38.861111, 35.961231, 28.018909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294903, 36.672443, 27.858597>,  <38.916969, 36.502621, 28.459112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294903, 36.672443, 27.858597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.053757, 36.386635, 27.716599>,  <38.909069, 36.215149, 27.631399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.053757, 36.386635, 27.716599>,  <39.294903, 36.672443, 27.858597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053757, 36.386635, 27.716599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150767, 0.538948, -0.828737,
		0.783471, -0.446093, -0.432637,
		-0.602862, -0.714518, -0.354994,
		38.872898, 36.172279, 27.610100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661057, 36.540203, 27.296505>,  <39.294903, 36.672443, 27.858597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661057, 36.540203, 27.296505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.297192, 36.386238, 27.234081>,  <39.078873, 36.293858, 27.196627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.297192, 36.386238, 27.234081>,  <39.661057, 36.540203, 27.296505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297192, 36.386238, 27.234081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095542, 0.559571, -0.823257,
		0.404211, -0.733975, -0.545796,
		-0.909662, -0.384916, -0.156060,
		39.024292, 36.270763, 27.187263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619785, 36.294487, 26.617069>,  <39.661057, 36.540203, 27.296505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619785, 36.294487, 26.617069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.250751, 36.384243, 26.742596>,  <39.029331, 36.438095, 26.817911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.250751, 36.384243, 26.742596>,  <39.619785, 36.294487, 26.617069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250751, 36.384243, 26.742596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107362, 0.631981, -0.767511,
		-0.370545, -0.741789, -0.558968,
		-0.922588, 0.224386, 0.313818,
		38.973976, 36.451557, 26.836740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254005, 36.367172, 25.952480>,  <39.619785, 36.294487, 26.617069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254005, 36.367172, 25.952480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.994595, 36.517349, 26.217342>,  <38.838947, 36.607456, 26.376261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.994595, 36.517349, 26.217342>,  <39.254005, 36.367172, 25.952480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994595, 36.517349, 26.217342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147186, 0.791627, -0.593011,
		-0.746824, -0.482046, -0.458133,
		-0.648529, 0.375444, 0.662157,
		38.800037, 36.629982, 26.415989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720970, 36.519825, 25.541418>,  <39.254005, 36.367172, 25.952480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720970, 36.519825, 25.541418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.682587, 36.750324, 25.866068>,  <38.659557, 36.888622, 26.060858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.682587, 36.750324, 25.866068>,  <38.720970, 36.519825, 25.541418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682587, 36.750324, 25.866068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219483, 0.783067, -0.581923,
		-0.970886, -0.233975, 0.051338,
		-0.095955, 0.576248, 0.811622,
		38.653801, 36.923199, 26.109554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165386, 36.852867, 25.423712>,  <38.720970, 36.519825, 25.541418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165386, 36.852867, 25.423712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.352852, 37.061157, 25.709145>,  <38.465332, 37.186131, 25.880404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.352852, 37.061157, 25.709145>,  <38.165386, 36.852867, 25.423712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352852, 37.061157, 25.709145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204234, 0.849775, -0.485974,
		-0.859444, 0.082020, 0.504608,
		0.468663, 0.520726, 0.713583,
		38.493450, 37.217377, 25.923220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740932, 37.363533, 25.513931>,  <38.165386, 36.852867, 25.423712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740932, 37.363533, 25.513931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072224, 37.512325, 25.681583>,  <38.271000, 37.601601, 25.782175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072224, 37.512325, 25.681583>,  <37.740932, 37.363533, 25.513931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072224, 37.512325, 25.681583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042352, 0.787335, -0.615068,
		-0.558790, 0.491666, 0.667846,
		0.828227, 0.371978, 0.419132,
		38.320690, 37.623920, 25.807323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612568, 38.058624, 25.540363>,  <37.740932, 37.363533, 25.513931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612568, 38.058624, 25.540363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.009434, 38.053463, 25.590071>,  <38.247555, 38.050365, 25.619896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.009434, 38.053463, 25.590071>,  <37.612568, 38.058624, 25.540363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009434, 38.053463, 25.590071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086755, 0.786886, -0.610969,
		-0.089905, 0.616963, 0.781840,
		0.992165, -0.012899, 0.124269,
		38.307083, 38.049595, 25.627352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817036, 38.719891, 25.822105>,  <37.612568, 38.058624, 25.540363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817036, 38.719891, 25.822105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.142677, 38.572208, 25.642805>,  <38.338062, 38.483601, 25.535225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.142677, 38.572208, 25.642805>,  <37.817036, 38.719891, 25.822105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142677, 38.572208, 25.642805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060951, 0.821944, -0.566297,
		0.577515, 0.433703, 0.691649,
		0.814102, -0.369202, -0.448250,
		38.386909, 38.461449, 25.508329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276382, 39.361607, 25.726173>,  <37.817036, 38.719891, 25.822105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276382, 39.361607, 25.726173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415997, 39.065002, 25.496971>,  <38.499763, 38.887039, 25.359451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415997, 39.065002, 25.496971>,  <38.276382, 39.361607, 25.726173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415997, 39.065002, 25.496971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131744, 0.644212, -0.753415,
		0.927804, 0.187476, 0.322541,
		0.349032, -0.741514, -0.573003,
		38.520706, 38.842548, 25.325069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869568, 39.586376, 25.434063>,  <38.276382, 39.361607, 25.726173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869568, 39.586376, 25.434063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.751431, 39.306236, 25.174131>,  <38.680546, 39.138153, 25.018171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.751431, 39.306236, 25.174131>,  <38.869568, 39.586376, 25.434063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751431, 39.306236, 25.174131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085877, 0.657959, -0.748141,
		0.951523, -0.276767, -0.134182,
		-0.295347, -0.700350, -0.649830,
		38.662827, 39.096130, 24.979183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323845, 39.598255, 24.801275>,  <38.869568, 39.586376, 25.434063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323845, 39.598255, 24.801275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991570, 39.407177, 24.686892>,  <38.792206, 39.292530, 24.618261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991570, 39.407177, 24.686892>,  <39.323845, 39.598255, 24.801275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991570, 39.407177, 24.686892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060185, 0.587662, -0.806865,
		0.553479, -0.653041, -0.516913,
		-0.830686, -0.477692, -0.285955,
		38.742363, 39.263870, 24.601105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410835, 39.394657, 24.067169>,  <39.323845, 39.598255, 24.801275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410835, 39.394657, 24.067169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.018452, 39.389584, 24.144693>,  <38.783020, 39.386539, 24.191208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.018452, 39.389584, 24.144693>,  <39.410835, 39.394657, 24.067169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018452, 39.389584, 24.144693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174675, 0.493884, -0.851802,
		-0.084919, -0.869435, -0.486694,
		-0.980957, -0.012679, 0.193809,
		38.724163, 39.385780, 24.202835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138393, 39.223537, 23.440905>,  <39.410835, 39.394657, 24.067169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138393, 39.223537, 23.440905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.831291, 39.393360, 23.632866>,  <38.647030, 39.495255, 23.748043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.831291, 39.393360, 23.632866>,  <39.138393, 39.223537, 23.440905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831291, 39.393360, 23.632866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231809, 0.514203, -0.825748,
		-0.597341, -0.745219, -0.296367,
		-0.767755, 0.424552, 0.479903,
		38.600964, 39.520725, 23.776836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604225, 39.133167, 22.997215>,  <39.138393, 39.223537, 23.440905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604225, 39.133167, 22.997215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506760, 39.443813, 23.229595>,  <38.448280, 39.630199, 23.369022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506760, 39.443813, 23.229595>,  <38.604225, 39.133167, 22.997215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506760, 39.443813, 23.229595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127201, 0.568238, -0.812973,
		-0.961481, -0.271992, -0.039676,
		-0.243668, 0.776612, 0.580948,
		38.433659, 39.676796, 23.403879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961544, 39.456650, 22.747730>,  <38.604225, 39.133167, 22.997215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961544, 39.456650, 22.747730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156185, 39.741817, 22.949705>,  <38.272972, 39.912918, 23.070890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156185, 39.741817, 22.949705>,  <37.961544, 39.456650, 22.747730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156185, 39.741817, 22.949705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185286, 0.649055, -0.737832,
		-0.853746, 0.265476, 0.447929,
		0.486607, 0.712916, 0.504939,
		38.302166, 39.955692, 23.101187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528923, 40.068672, 22.593475>,  <37.961544, 39.456650, 22.747730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528923, 40.068672, 22.593475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.859627, 40.234661, 22.745407>,  <38.058048, 40.334255, 22.836565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.859627, 40.234661, 22.745407>,  <37.528923, 40.068672, 22.593475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859627, 40.234661, 22.745407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078068, 0.753278, -0.653053,
		-0.557116, 0.510264, 0.655174,
		0.826757, 0.414974, 0.379828,
		38.107655, 40.359154, 22.859356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401966, 40.786068, 22.566612>,  <37.528923, 40.068672, 22.593475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401966, 40.786068, 22.566612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.796856, 40.722717, 22.559654>,  <38.033791, 40.684708, 22.555479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.796856, 40.722717, 22.559654>,  <37.401966, 40.786068, 22.566612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796856, 40.722717, 22.559654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073995, 0.552418, -0.830276,
		0.141107, 0.818383, 0.557081,
		0.987225, -0.158378, -0.017394,
		38.093025, 40.675205, 22.554436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073826, 41.167286, 22.097652>,  <37.401966, 40.786068, 22.566612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073826, 41.167286, 22.097652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691078, 41.103905, 22.000244>,  <36.461430, 41.065876, 21.941799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691078, 41.103905, 22.000244>,  <37.073826, 41.167286, 22.097652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691078, 41.103905, 22.000244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182528, -0.324268, 0.928189,
		-0.226039, 0.932601, 0.281358,
		-0.956865, -0.158451, -0.243523,
		36.404018, 41.056370, 21.927187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675335, 41.298466, 22.663803>,  <37.073826, 41.167286, 22.097652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675335, 41.298466, 22.663803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.449776, 41.055935, 22.439520>,  <36.314442, 40.910416, 22.304951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.449776, 41.055935, 22.439520>,  <36.675335, 41.298466, 22.663803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449776, 41.055935, 22.439520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219245, -0.544676, 0.809481,
		-0.796213, 0.579394, 0.174205,
		-0.563894, -0.606326, -0.560708,
		36.280609, 40.874039, 22.271307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353859, 40.923977, 23.101698>,  <36.675335, 41.298466, 22.663803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353859, 40.923977, 23.101698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241592, 40.720509, 22.776127>,  <36.174232, 40.598427, 22.580784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241592, 40.720509, 22.776127>,  <36.353859, 40.923977, 23.101698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241592, 40.720509, 22.776127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247564, -0.780951, 0.573434,
		-0.927328, 0.362444, 0.093261,
		-0.280670, -0.508674, -0.813926,
		36.157391, 40.567905, 22.531950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679947, 40.607780, 23.303864>,  <36.353859, 40.923977, 23.101698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679947, 40.607780, 23.303864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858101, 40.379230, 23.028135>,  <35.964993, 40.242100, 22.862698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858101, 40.379230, 23.028135>,  <35.679947, 40.607780, 23.303864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858101, 40.379230, 23.028135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244231, -0.818235, 0.520426,
		-0.861386, -0.063434, -0.503975,
		0.445383, -0.571374, -0.689323,
		35.991718, 40.207817, 22.821339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259655, 40.049511, 23.179314>,  <35.679947, 40.607780, 23.303864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259655, 40.049511, 23.179314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.609055, 39.925270, 23.029367>,  <35.818695, 39.850727, 22.939400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.609055, 39.925270, 23.029367>,  <35.259655, 40.049511, 23.179314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609055, 39.925270, 23.029367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097611, -0.866130, 0.490194,
		-0.476938, -0.391594, -0.786883,
		0.873501, -0.310601, -0.374866,
		35.871105, 39.832088, 22.916908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070801, 39.390652, 22.889509>,  <35.259655, 40.049511, 23.179314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070801, 39.390652, 22.889509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.462715, 39.375053, 22.967985>,  <35.697865, 39.365692, 23.015070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.462715, 39.375053, 22.967985>,  <35.070801, 39.390652, 22.889509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462715, 39.375053, 22.967985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157495, -0.755070, 0.636447,
		0.123317, -0.654483, -0.745952,
		0.979790, -0.039000, 0.196191,
		35.756653, 39.363354, 23.026842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240772, 38.683815, 22.934566>,  <35.070801, 39.390652, 22.889509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240772, 38.683815, 22.934566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.558315, 38.840549, 23.120583>,  <35.748840, 38.934589, 23.232193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.558315, 38.840549, 23.120583>,  <35.240772, 38.683815, 22.934566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558315, 38.840549, 23.120583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010034, -0.773069, 0.634243,
		0.608026, -0.498830, -0.617635,
		0.793854, 0.391834, 0.465040,
		35.796471, 38.958099, 23.260094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771263, 38.089394, 23.103298>,  <35.240772, 38.683815, 22.934566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771263, 38.089394, 23.103298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.882069, 38.387341, 23.346094>,  <35.948551, 38.566109, 23.491772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.882069, 38.387341, 23.346094>,  <35.771263, 38.089394, 23.103298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882069, 38.387341, 23.346094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065091, -0.644805, 0.761571,
		0.958659, -0.171455, -0.227102,
		0.277012, 0.744869, 0.606988,
		35.965172, 38.610802, 23.528191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410355, 37.885342, 23.412060>,  <35.771263, 38.089394, 23.103298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410355, 37.885342, 23.412060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.247459, 38.152111, 23.661657>,  <36.149723, 38.312172, 23.811417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.247459, 38.152111, 23.661657>,  <36.410355, 37.885342, 23.412060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247459, 38.152111, 23.661657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028746, -0.673518, 0.738611,
		0.912869, 0.318729, 0.255112,
		-0.407239, 0.666922, 0.623996,
		36.125286, 38.352188, 23.848856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831078, 37.812763, 24.042326>,  <36.410355, 37.885342, 23.412060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831078, 37.812763, 24.042326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.499996, 38.002716, 24.161922>,  <36.301346, 38.116688, 24.233681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.499996, 38.002716, 24.161922>,  <36.831078, 37.812763, 24.042326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499996, 38.002716, 24.161922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112606, -0.381418, 0.917518,
		0.549751, 0.793102, 0.262227,
		-0.827704, 0.474878, 0.298993,
		36.251686, 38.145180, 24.251621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050797, 37.940483, 24.628473>,  <36.831078, 37.812763, 24.042326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050797, 37.940483, 24.628473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.652710, 37.973686, 24.649117>,  <36.413860, 37.993607, 24.661503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.652710, 37.973686, 24.649117>,  <37.050797, 37.940483, 24.628473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652710, 37.973686, 24.649117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017663, -0.366567, 0.930224,
		0.096129, 0.926682, 0.363345,
		-0.995212, 0.083003, 0.051606,
		36.354145, 37.998589, 24.664598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900677, 38.308346, 25.203993>,  <37.050797, 37.940483, 24.628473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900677, 38.308346, 25.203993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557377, 38.108315, 25.157818>,  <36.351395, 37.988297, 25.130114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557377, 38.108315, 25.157818>,  <36.900677, 38.308346, 25.203993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557377, 38.108315, 25.157818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109693, -0.398464, 0.910601,
		-0.501368, 0.768863, 0.396838,
		-0.858253, -0.500076, -0.115438,
		36.299900, 37.958290, 25.123186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568901, 38.427025, 25.799938>,  <36.900677, 38.308346, 25.203993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568901, 38.427025, 25.799938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.433590, 38.094830, 25.622911>,  <36.352406, 37.895512, 25.516695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.433590, 38.094830, 25.622911>,  <36.568901, 38.427025, 25.799938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433590, 38.094830, 25.622911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244350, -0.531676, 0.810934,
		-0.908770, 0.166176, 0.382781,
		-0.338274, -0.830485, -0.442566,
		36.332108, 37.845684, 25.490141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253120, 38.137733, 26.342131>,  <36.568901, 38.427025, 25.799938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253120, 38.137733, 26.342131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290493, 37.832714, 26.086071>,  <36.312916, 37.649704, 25.932434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290493, 37.832714, 26.086071>,  <36.253120, 38.137733, 26.342131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290493, 37.832714, 26.086071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015480, -0.641773, 0.766738,
		-0.995505, -0.081547, -0.048157,
		0.093431, -0.762547, -0.640151,
		36.318523, 37.603951, 25.894026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666653, 37.651752, 26.437115>,  <36.253120, 38.137733, 26.342131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666653, 37.651752, 26.437115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.962971, 37.452805, 26.256517>,  <36.140762, 37.333435, 26.148159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.962971, 37.452805, 26.256517>,  <35.666653, 37.651752, 26.437115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962971, 37.452805, 26.256517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193418, -0.801602, 0.565706,
		-0.643286, -0.331743, -0.690021,
		0.740791, -0.497374, -0.451495,
		36.185207, 37.303593, 26.121069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390369, 36.954727, 26.308624>,  <35.666653, 37.651752, 26.437115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390369, 36.954727, 26.308624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782417, 36.902405, 26.248957>,  <36.017647, 36.871014, 26.213156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782417, 36.902405, 26.248957>,  <35.390369, 36.954727, 26.308624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782417, 36.902405, 26.248957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029588, -0.839845, 0.542019,
		-0.196176, -0.526831, -0.827021,
		0.980122, -0.130802, -0.149170,
		36.076454, 36.863163, 26.204206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476566, 36.235500, 26.333403>,  <35.390369, 36.954727, 26.308624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476566, 36.235500, 26.333403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853836, 36.364193, 26.366669>,  <36.080196, 36.441410, 26.386629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853836, 36.364193, 26.366669>,  <35.476566, 36.235500, 26.333403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853836, 36.364193, 26.366669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173996, -0.691348, 0.701259,
		0.283116, -0.646936, -0.708039,
		0.943171, 0.321734, 0.083168,
		36.136787, 36.460712, 26.391619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830772, 35.668823, 26.037893>,  <35.476566, 36.235500, 26.333403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830772, 35.668823, 26.037893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.019077, 35.899784, 26.304726>,  <36.132061, 36.038361, 26.464825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.019077, 35.899784, 26.304726>,  <35.830772, 35.668823, 26.037893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019077, 35.899784, 26.304726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001812, -0.756734, 0.653720,
		0.882260, -0.306536, -0.357285,
		0.470759, 0.577399, 0.667081,
		36.160305, 36.073002, 26.504850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260128, 35.172066, 26.357119>,  <35.830772, 35.668823, 26.037893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260128, 35.172066, 26.357119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285221, 35.483608, 26.606743>,  <36.300278, 35.670532, 26.756517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285221, 35.483608, 26.606743>,  <36.260128, 35.172066, 26.357119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285221, 35.483608, 26.606743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116652, -0.626728, 0.770458,
		0.991190, 0.024465, -0.130170,
		0.062732, 0.778854, 0.624060,
		36.304039, 35.717266, 26.793961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818760, 35.051373, 26.751133>,  <36.260128, 35.172066, 26.357119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818760, 35.051373, 26.751133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.627052, 35.323170, 26.973337>,  <36.512028, 35.486248, 27.106659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.627052, 35.323170, 26.973337>,  <36.818760, 35.051373, 26.751133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627052, 35.323170, 26.973337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216030, -0.522134, 0.825049,
		0.850664, 0.515430, 0.103454,
		-0.479272, 0.679491, 0.555509,
		36.483273, 35.527016, 27.139990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061214, 34.968140, 27.447765>,  <36.818760, 35.051373, 26.751133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061214, 34.968140, 27.447765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.723755, 35.160603, 27.543053>,  <36.521278, 35.276081, 27.600225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.723755, 35.160603, 27.543053>,  <37.061214, 34.968140, 27.447765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723755, 35.160603, 27.543053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046718, -0.376226, 0.925349,
		0.534862, 0.791797, 0.294923,
		-0.843647, 0.481156, 0.238220,
		36.470661, 35.304951, 27.614519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.282700, 33.009953, 31.689125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.118603, 33.368740, 31.755033>,  <40.020145, 33.584011, 31.794579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.118603, 33.368740, 31.755033>,  <40.282700, 33.009953, 31.689125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118603, 33.368740, 31.755033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359868, -0.006797, 0.932978,
		0.837973, 0.442040, -0.320003,
		-0.410239, 0.896969, 0.164772,
		39.995529, 33.637833, 31.804464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816078, 33.379692, 32.038239>,  <40.282700, 33.009953, 31.689125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816078, 33.379692, 32.038239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.454971, 33.540115, 32.100418>,  <40.238308, 33.636368, 32.137726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.454971, 33.540115, 32.100418>,  <40.816078, 33.379692, 32.038239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454971, 33.540115, 32.100418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189898, 0.047343, 0.980662,
		0.385944, 0.914828, -0.118900,
		-0.902766, 0.401059, 0.155452,
		40.184143, 33.660435, 32.147053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944866, 33.985733, 32.348484>,  <40.816078, 33.379692, 32.038239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944866, 33.985733, 32.348484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.565212, 33.884117, 32.422897>,  <40.337421, 33.823147, 32.467545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.565212, 33.884117, 32.422897>,  <40.944866, 33.985733, 32.348484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565212, 33.884117, 32.422897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142215, 0.181265, 0.973097,
		-0.280924, 0.950057, -0.135917,
		-0.949135, -0.254036, 0.186034,
		40.280472, 33.807907, 32.478706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712151, 34.560143, 32.785656>,  <40.944866, 33.985733, 32.348484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712151, 34.560143, 32.785656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.461327, 34.254192, 32.844662>,  <40.310833, 34.070621, 32.880066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.461327, 34.254192, 32.844662>,  <40.712151, 34.560143, 32.785656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461327, 34.254192, 32.844662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011636, 0.198546, 0.980022,
		-0.778884, 0.612817, -0.133400,
		-0.627060, -0.764876, 0.147514,
		40.273209, 34.024731, 32.888916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288311, 34.805874, 33.249245>,  <40.712151, 34.560143, 32.785656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288311, 34.805874, 33.249245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.232307, 34.410255, 33.267914>,  <40.198704, 34.172882, 33.279118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.232307, 34.410255, 33.267914>,  <40.288311, 34.805874, 33.249245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232307, 34.410255, 33.267914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294143, 0.086557, 0.951834,
		-0.945451, 0.119535, -0.303041,
		-0.140008, -0.989050, 0.046675,
		40.190304, 34.113541, 33.281918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661648, 34.747711, 33.594639>,  <40.288311, 34.805874, 33.249245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661648, 34.747711, 33.594639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.855179, 34.402184, 33.650833>,  <39.971298, 34.194866, 33.684551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.855179, 34.402184, 33.650833>,  <39.661648, 34.747711, 33.594639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855179, 34.402184, 33.650833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271904, 0.004214, 0.962315,
		-0.831854, -0.503792, -0.232836,
		0.483826, -0.863814, 0.140489,
		40.000328, 34.143040, 33.692978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115429, 34.296974, 33.995762>,  <39.661648, 34.747711, 33.594639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115429, 34.296974, 33.995762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.486301, 34.148682, 34.017258>,  <39.708824, 34.059704, 34.030155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.486301, 34.148682, 34.017258>,  <39.115429, 34.296974, 33.995762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486301, 34.148682, 34.017258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090666, -0.082887, 0.992426,
		-0.363474, -0.925032, -0.110464,
		0.927182, -0.370736, 0.053742,
		39.764458, 34.037460, 34.033379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117161, 33.679943, 34.395309>,  <39.115429, 34.296974, 33.995762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117161, 33.679943, 34.395309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.507137, 33.768440, 34.404636>,  <39.741123, 33.821537, 34.410233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.507137, 33.768440, 34.404636>,  <39.117161, 33.679943, 34.395309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507137, 33.768440, 34.404636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003907, -0.121805, 0.992546,
		0.222429, -0.967583, -0.119617,
		0.974941, 0.221238, 0.023313,
		39.799618, 33.834812, 34.411629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391212, 33.156197, 34.824150>,  <39.117161, 33.679943, 34.395309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391212, 33.156197, 34.824150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.663750, 33.448711, 34.836765>,  <39.827271, 33.624222, 34.844334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.663750, 33.448711, 34.836765>,  <39.391212, 33.156197, 34.824150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663750, 33.448711, 34.836765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003227, -0.040088, 0.999191,
		0.731961, -0.680889, -0.024954,
		0.681339, 0.731289, 0.031540,
		39.868153, 33.668098, 34.846226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039486, 32.869003, 35.175217>,  <39.391212, 33.156197, 34.824150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039486, 32.869003, 35.175217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.059021, 33.265575, 35.223682>,  <40.070740, 33.503517, 35.252762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.059021, 33.265575, 35.223682>,  <40.039486, 32.869003, 35.175217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059021, 33.265575, 35.223682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131329, -0.126629, 0.983218,
		0.990135, -0.032102, -0.136387,
		0.048834, 0.991431, 0.121164,
		40.073669, 33.563004, 35.260033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516758, 33.001926, 35.559013>,  <40.039486, 32.869003, 35.175217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516758, 33.001926, 35.559013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364693, 33.365364, 35.628204>,  <40.273453, 33.583427, 35.669720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364693, 33.365364, 35.628204>,  <40.516758, 33.001926, 35.559013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364693, 33.365364, 35.628204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243984, -0.081884, 0.966316,
		0.892158, 0.409565, -0.190554,
		-0.380166, 0.908598, 0.172981,
		40.250645, 33.637943, 35.680099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782219, 33.226315, 36.216789>,  <40.516758, 33.001926, 35.559013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782219, 33.226315, 36.216789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.486801, 33.495979, 36.213646>,  <40.309551, 33.657780, 36.211761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.486801, 33.495979, 36.213646>,  <40.782219, 33.226315, 36.216789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486801, 33.495979, 36.213646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039982, -0.032160, 0.998683,
		0.673020, 0.737884, 0.050706,
		-0.738542, 0.674161, -0.007858,
		40.265240, 33.698227, 36.211288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899166, 33.866543, 36.672386>,  <40.782219, 33.226315, 36.216789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899166, 33.866543, 36.672386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.505222, 33.807381, 36.636238>,  <40.268856, 33.771881, 36.614548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.505222, 33.807381, 36.636238>,  <40.899166, 33.866543, 36.672386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505222, 33.807381, 36.636238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076126, -0.099319, 0.992139,
		-0.155723, 0.984001, 0.086556,
		-0.984863, -0.147910, -0.090374,
		40.209763, 33.763008, 36.609127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736679, 34.102722, 37.275082>,  <40.899166, 33.866543, 36.672386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736679, 34.102722, 37.275082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.458599, 33.850616, 37.136826>,  <40.291752, 33.699352, 37.053871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.458599, 33.850616, 37.136826>,  <40.736679, 34.102722, 37.275082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458599, 33.850616, 37.136826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268781, -0.218036, 0.938199,
		-0.666675, 0.745135, -0.017825,
		-0.695199, -0.630264, -0.345638,
		40.250038, 33.661537, 37.033134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532368, 34.801159, 37.210522>,  <40.736679, 34.102722, 37.275082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532368, 34.801159, 37.210522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.286171, 35.021152, 37.436329>,  <40.138454, 35.153149, 37.571815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.286171, 35.021152, 37.436329>,  <40.532368, 34.801159, 37.210522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286171, 35.021152, 37.436329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132487, 0.633875, -0.762004,
		-0.776927, -0.543799, -0.317280,
		-0.615493, 0.549986, 0.564521,
		40.101524, 35.186150, 37.605686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033653, 35.010155, 36.792358>,  <40.532368, 34.801159, 37.210522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033653, 35.010155, 36.792358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.000134, 35.280827, 37.084957>,  <39.980022, 35.443230, 37.260517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.000134, 35.280827, 37.084957>,  <40.033653, 35.010155, 36.792358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000134, 35.280827, 37.084957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212912, 0.704965, -0.676530,
		-0.973471, -0.212435, 0.084998,
		-0.083798, 0.676680, 0.731493,
		39.974995, 35.483829, 37.304405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301735, 35.325211, 36.728695>,  <40.033653, 35.010155, 36.792358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301735, 35.325211, 36.728695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.531078, 35.584671, 36.928902>,  <39.668686, 35.740345, 37.049026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.531078, 35.584671, 36.928902>,  <39.301735, 35.325211, 36.728695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531078, 35.584671, 36.928902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294516, 0.733244, -0.612874,
		-0.764539, 0.203986, 0.611448,
		0.573359, 0.648647, 0.500517,
		39.703087, 35.779266, 37.079056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865917, 36.061878, 36.878330>,  <39.301735, 35.325211, 36.728695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865917, 36.061878, 36.878330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.257805, 36.126289, 36.926014>,  <39.492939, 36.164936, 36.954624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.257805, 36.126289, 36.926014>,  <38.865917, 36.061878, 36.878330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257805, 36.126289, 36.926014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038972, 0.736813, -0.674972,
		-0.196526, 0.656640, 0.728149,
		0.979724, 0.161027, 0.119212,
		39.551723, 36.174599, 36.961777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853474, 36.781044, 37.065426>,  <38.865917, 36.061878, 36.878330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853474, 36.781044, 37.065426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201305, 36.665951, 36.904903>,  <39.410004, 36.596893, 36.808590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201305, 36.665951, 36.904903>,  <38.853474, 36.781044, 37.065426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201305, 36.665951, 36.904903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007428, 0.820220, -0.572000,
		0.493740, 0.494417, 0.715382,
		0.869578, -0.287733, -0.401303,
		39.462177, 36.579632, 36.784512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170937, 37.410492, 36.840229>,  <38.853474, 36.781044, 37.065426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170937, 37.410492, 36.840229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.374050, 37.137978, 36.629326>,  <39.495918, 36.974468, 36.502785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.374050, 37.137978, 36.629326>,  <39.170937, 37.410492, 36.840229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374050, 37.137978, 36.629326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129813, 0.665564, -0.734964,
		0.851645, 0.304761, 0.426405,
		0.507789, -0.681282, -0.527263,
		39.526386, 36.933594, 36.471146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780930, 37.827290, 36.483231>,  <39.170937, 37.410492, 36.840229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780930, 37.827290, 36.483231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.720566, 37.488667, 36.279049>,  <39.684349, 37.285492, 36.156540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.720566, 37.488667, 36.279049>,  <39.780930, 37.827290, 36.483231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720566, 37.488667, 36.279049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030564, 0.520118, -0.853547,
		0.988075, -0.113208, -0.104366,
		-0.150911, -0.846559, -0.510455,
		39.675293, 37.234699, 36.125912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279217, 37.912121, 35.964214>,  <39.780930, 37.827290, 36.483231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279217, 37.912121, 35.964214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.024082, 37.630074, 35.840298>,  <39.871002, 37.460846, 35.765949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.024082, 37.630074, 35.840298>,  <40.279217, 37.912121, 35.964214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024082, 37.630074, 35.840298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014509, 0.413161, -0.910542,
		0.770035, -0.576283, -0.273760,
		-0.637837, -0.705121, -0.309787,
		39.832729, 37.418537, 35.747360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486973, 37.780334, 35.348915>,  <40.279217, 37.912121, 35.964214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486973, 37.780334, 35.348915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.108822, 37.650215, 35.340508>,  <39.881931, 37.572144, 35.335464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.108822, 37.650215, 35.340508>,  <40.486973, 37.780334, 35.348915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108822, 37.650215, 35.340508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092176, 0.328619, -0.939954,
		0.312671, -0.886674, -0.340653,
		-0.945378, -0.325296, -0.021020,
		39.825207, 37.552628, 35.334202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384090, 37.414082, 34.823734>,  <40.486973, 37.780334, 35.348915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384090, 37.414082, 34.823734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.998432, 37.487774, 34.900127>,  <39.767036, 37.531990, 34.945965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.998432, 37.487774, 34.900127>,  <40.384090, 37.414082, 34.823734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998432, 37.487774, 34.900127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145989, 0.232757, -0.961515,
		-0.221590, -0.954927, -0.197517,
		-0.964150, 0.184227, 0.190986,
		39.709187, 37.543041, 34.957424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994247, 37.034626, 34.333260>,  <40.384090, 37.414082, 34.823734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994247, 37.034626, 34.333260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.697788, 37.282101, 34.437515>,  <39.519913, 37.430584, 34.500069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.697788, 37.282101, 34.437515>,  <39.994247, 37.034626, 34.333260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697788, 37.282101, 34.437515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139345, 0.238007, -0.961216,
		-0.656721, -0.748721, -0.090188,
		-0.741148, 0.618684, 0.260635,
		39.475445, 37.467705, 34.515705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366062, 36.844059, 34.055130>,  <39.994247, 37.034626, 34.333260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366062, 36.844059, 34.055130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.322292, 37.235809, 34.123081>,  <39.296032, 37.470860, 34.163853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.322292, 37.235809, 34.123081>,  <39.366062, 36.844059, 34.055130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322292, 37.235809, 34.123081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122952, 0.156253, -0.980035,
		-0.986362, -0.128125, 0.103318,
		-0.109423, 0.979372, 0.169875,
		39.289467, 37.529621, 34.174046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725212, 37.125744, 33.763393>,  <39.366062, 36.844059, 34.055130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725212, 37.125744, 33.763393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.981606, 37.431160, 33.794758>,  <39.135441, 37.614410, 33.813576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.981606, 37.431160, 33.794758>,  <38.725212, 37.125744, 33.763393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981606, 37.431160, 33.794758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168580, 0.239705, -0.956098,
		-0.748816, 0.599621, 0.282364,
		0.640980, 0.763542, 0.078411,
		39.173901, 37.660221, 33.818279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410767, 37.737167, 33.573700>,  <38.725212, 37.125744, 33.763393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410767, 37.737167, 33.573700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.793846, 37.846504, 33.537727>,  <39.023693, 37.912106, 33.516144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.793846, 37.846504, 33.537727>,  <38.410767, 37.737167, 33.573700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793846, 37.846504, 33.537727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211714, 0.457649, -0.863559,
		-0.194889, 0.846074, 0.496162,
		0.957703, 0.273342, -0.089935,
		39.081158, 37.928509, 33.510746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787201, 38.140194, 34.038891>,  <38.410767, 37.737167, 33.573700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787201, 38.140194, 34.038891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.407845, 38.266869, 34.045326>,  <37.180229, 38.342873, 34.049187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.407845, 38.266869, 34.045326>,  <37.787201, 38.140194, 34.038891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407845, 38.266869, 34.045326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205986, -0.653866, 0.728031,
		0.241075, 0.687147, 0.685355,
		-0.948395, 0.316683, 0.016088,
		37.123325, 38.361874, 34.050152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630432, 38.273785, 34.776871>,  <37.787201, 38.140194, 34.038891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630432, 38.273785, 34.776871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.289871, 38.261822, 34.567406>,  <37.085533, 38.254646, 34.441727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.289871, 38.261822, 34.567406>,  <37.630432, 38.273785, 34.776871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289871, 38.261822, 34.567406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441462, -0.498275, 0.746213,
		-0.283242, 0.866503, 0.411030,
		-0.851402, -0.029905, -0.523661,
		37.034451, 38.252850, 34.410309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063084, 38.520885, 35.173347>,  <37.630432, 38.273785, 34.776871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063084, 38.520885, 35.173347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.911743, 38.275654, 34.895935>,  <36.820938, 38.128513, 34.729488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.911743, 38.275654, 34.895935>,  <37.063084, 38.520885, 35.173347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911743, 38.275654, 34.895935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239131, -0.659057, 0.713064,
		-0.894239, 0.435636, 0.102752,
		-0.378355, -0.613078, -0.693529,
		36.798237, 38.091732, 34.687878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421192, 38.384647, 35.349655>,  <37.063084, 38.520885, 35.173347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421192, 38.384647, 35.349655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.496250, 38.073048, 35.110340>,  <36.541283, 37.886089, 34.966751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.496250, 38.073048, 35.110340>,  <36.421192, 38.384647, 35.349655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496250, 38.073048, 35.110340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499976, -0.600043, 0.624478,
		-0.845467, 0.181953, -0.502074,
		0.187640, -0.779000, -0.598289,
		36.552544, 37.839348, 34.930855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768673, 38.015472, 35.248142>,  <36.421192, 38.384647, 35.349655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768673, 38.015472, 35.248142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.063587, 37.758324, 35.165066>,  <36.240536, 37.604034, 35.115219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.063587, 37.758324, 35.165066>,  <35.768673, 38.015472, 35.248142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063587, 37.758324, 35.165066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334723, -0.614638, 0.714269,
		-0.586831, -0.457103, -0.668346,
		0.737286, -0.642866, -0.207686,
		36.284771, 37.565464, 35.102760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529022, 37.454628, 35.534569>,  <35.768673, 38.015472, 35.248142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529022, 37.454628, 35.534569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.888947, 37.302536, 35.449001>,  <36.104900, 37.211281, 35.397659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.888947, 37.302536, 35.449001>,  <35.529022, 37.454628, 35.534569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888947, 37.302536, 35.449001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141997, -0.718874, 0.680483,
		-0.412522, -0.581931, -0.700844,
		0.899812, -0.380232, -0.213920,
		36.158890, 37.188465, 35.384827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400204, 36.749832, 35.494141>,  <35.529022, 37.454628, 35.534569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400204, 36.749832, 35.494141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.795116, 36.768944, 35.554787>,  <36.032066, 36.780411, 35.591175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.795116, 36.768944, 35.554787>,  <35.400204, 36.749832, 35.494141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795116, 36.768944, 35.554787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055434, -0.790416, 0.610057,
		0.148982, -0.610705, -0.777717,
		0.987285, 0.047776, 0.151611,
		36.091301, 36.783276, 35.600269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688488, 36.040401, 35.465340>,  <35.400204, 36.749832, 35.494141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688488, 36.040401, 35.465340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.957432, 36.251934, 35.672520>,  <36.118797, 36.378853, 35.796829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.957432, 36.251934, 35.672520>,  <35.688488, 36.040401, 35.465340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957432, 36.251934, 35.672520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076668, -0.745710, 0.661844,
		0.736244, -0.405287, -0.541929,
		0.672359, 0.528828, 0.517952,
		36.159138, 36.410583, 35.827904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242649, 35.482796, 35.751286>,  <35.688488, 36.040401, 35.465340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242649, 35.482796, 35.751286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.263401, 35.829987, 35.948837>,  <36.275852, 36.038303, 36.067368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.263401, 35.829987, 35.948837>,  <36.242649, 35.482796, 35.751286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263401, 35.829987, 35.948837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092364, -0.496598, 0.863052,
		0.994373, 0.000845, -0.105931,
		0.051876, 0.867980, 0.493882,
		36.278965, 36.090382, 36.097000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804470, 35.388943, 36.169300>,  <36.242649, 35.482796, 35.751286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804470, 35.388943, 36.169300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.584743, 35.664402, 36.358620>,  <36.452908, 35.829678, 36.472210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.584743, 35.664402, 36.358620>,  <36.804470, 35.388943, 36.169300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584743, 35.664402, 36.358620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115384, -0.498468, 0.859195,
		0.827607, 0.526584, 0.194359,
		-0.549320, 0.688650, 0.473295,
		36.419949, 35.870998, 36.500607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152824, 35.369701, 36.813068>,  <36.804470, 35.388943, 36.169300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152824, 35.369701, 36.813068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.824177, 35.588699, 36.876560>,  <36.626987, 35.720097, 36.914654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.824177, 35.588699, 36.876560>,  <37.152824, 35.369701, 36.813068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824177, 35.588699, 36.876560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071407, -0.177405, 0.981544,
		0.565547, 0.817789, 0.106664,
		-0.821618, 0.547493, 0.158727,
		36.577690, 35.752949, 36.924179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376087, 35.814888, 37.342285>,  <37.152824, 35.369701, 36.813068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376087, 35.814888, 37.342285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.980637, 35.757030, 37.325794>,  <36.743366, 35.722317, 37.315899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.980637, 35.757030, 37.325794>,  <37.376087, 35.814888, 37.342285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980637, 35.757030, 37.325794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016961, -0.165118, 0.986128,
		-0.149448, 0.975609, 0.160786,
		-0.988624, -0.144647, -0.041224,
		36.684048, 35.713634, 37.313427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.815765, 41.441895, 31.351910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524746, 41.182938, 31.261086>,  <37.350136, 41.027561, 31.206591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524746, 41.182938, 31.261086>,  <37.815765, 41.441895, 31.351910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524746, 41.182938, 31.261086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007670, -0.323265, 0.946277,
		-0.686017, 0.690201, 0.230224,
		-0.727545, -0.647397, -0.227059,
		37.306484, 40.988720, 31.192968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325069, 41.403145, 31.978622>,  <37.815765, 41.441895, 31.351910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325069, 41.403145, 31.978622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179703, 41.077747, 31.797001>,  <37.092484, 40.882511, 31.688028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179703, 41.077747, 31.797001>,  <37.325069, 41.403145, 31.978622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179703, 41.077747, 31.797001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328856, -0.343989, 0.879503,
		-0.871657, 0.468941, -0.142511,
		-0.363413, -0.813490, -0.454054,
		37.070679, 40.833702, 31.660786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700596, 41.234818, 32.308250>,  <37.325069, 41.403145, 31.978622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700596, 41.234818, 32.308250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804340, 40.879440, 32.156776>,  <36.866585, 40.666214, 32.065891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804340, 40.879440, 32.156776>,  <36.700596, 41.234818, 32.308250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804340, 40.879440, 32.156776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301163, -0.446949, 0.842341,
		-0.917624, -0.104424, -0.383486,
		0.259359, -0.888444, -0.378682,
		36.882149, 40.612907, 32.043171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145256, 40.664684, 32.392010>,  <36.700596, 41.234818, 32.308250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145256, 40.664684, 32.392010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482483, 40.452312, 32.357712>,  <36.684818, 40.324890, 32.337135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482483, 40.452312, 32.357712>,  <36.145256, 40.664684, 32.392010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482483, 40.452312, 32.357712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441127, -0.773858, 0.454478,
		-0.307649, -0.345332, -0.886621,
		0.843065, -0.530933, -0.085741,
		36.735401, 40.293034, 32.331989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854500, 40.010441, 32.473831>,  <36.145256, 40.664684, 32.392010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854500, 40.010441, 32.473831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245579, 39.934357, 32.509430>,  <36.480228, 39.888706, 32.530788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245579, 39.934357, 32.509430>,  <35.854500, 40.010441, 32.473831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245579, 39.934357, 32.509430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201700, -0.732533, 0.650163,
		-0.058476, -0.653616, -0.754564,
		0.977700, -0.190214, 0.088999,
		36.538887, 39.877293, 32.536129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980171, 39.311459, 32.527340>,  <35.854500, 40.010441, 32.473831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980171, 39.311459, 32.527340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339054, 39.405457, 32.676903>,  <36.554382, 39.461853, 32.766640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339054, 39.405457, 32.676903>,  <35.980171, 39.311459, 32.527340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339054, 39.405457, 32.676903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055743, -0.779637, 0.623745,
		0.438086, -0.580469, -0.686394,
		0.897203, 0.234992, 0.373905,
		36.608215, 39.475956, 32.789074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455448, 38.711037, 32.487125>,  <35.980171, 39.311459, 32.527340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455448, 38.711037, 32.487125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634270, 38.942410, 32.760052>,  <36.741562, 39.081234, 32.923809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634270, 38.942410, 32.760052>,  <36.455448, 38.711037, 32.487125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634270, 38.942410, 32.760052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004281, -0.761394, 0.648276,
		0.894496, -0.292736, -0.337910,
		0.447056, 0.578433, 0.682316,
		36.768387, 39.115940, 32.964748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081429, 38.304050, 32.766983>,  <36.455448, 38.711037, 32.487125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081429, 38.304050, 32.766983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998978, 38.585659, 33.038826>,  <36.949509, 38.754623, 33.201931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998978, 38.585659, 33.038826>,  <37.081429, 38.304050, 32.766983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998978, 38.585659, 33.038826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044918, -0.686983, 0.725284,
		0.977493, 0.180028, 0.109984,
		-0.206129, 0.704020, 0.679608,
		36.937138, 38.796864, 33.242710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596352, 38.196152, 33.321167>,  <37.081429, 38.304050, 32.766983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596352, 38.196152, 33.321167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331879, 38.440022, 33.496040>,  <37.173195, 38.586346, 33.600964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331879, 38.440022, 33.496040>,  <37.596352, 38.196152, 33.321167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331879, 38.440022, 33.496040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064584, -0.534313, 0.842816,
		0.747437, 0.585493, 0.313905,
		-0.661186, 0.609678, 0.437179,
		37.133522, 38.622925, 33.627193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383751, 38.337379, 33.148006>,  <37.596352, 38.196152, 33.321167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383751, 38.337379, 33.148006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778065, 38.273144, 33.128231>,  <39.014652, 38.234604, 33.116367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778065, 38.273144, 33.128231>,  <38.383751, 38.337379, 33.148006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778065, 38.273144, 33.128231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030181, 0.458661, -0.888099,
		0.165294, 0.873980, 0.456987,
		0.985783, -0.160589, -0.049436,
		39.073799, 38.224968, 33.113400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687820, 38.957050, 32.980801>,  <38.383751, 38.337379, 33.148006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687820, 38.957050, 32.980801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918049, 38.647484, 32.875141>,  <39.056187, 38.461742, 32.811745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918049, 38.647484, 32.875141>,  <38.687820, 38.957050, 32.980801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918049, 38.647484, 32.875141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060850, 0.281586, -0.957604,
		0.815485, 0.567242, 0.114980,
		0.575571, -0.773916, -0.264146,
		39.090721, 38.415310, 32.795898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092560, 39.166939, 32.555199>,  <38.687820, 38.957050, 32.980801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092560, 39.166939, 32.555199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150917, 38.782150, 32.462830>,  <39.185932, 38.551277, 32.407410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150917, 38.782150, 32.462830>,  <39.092560, 39.166939, 32.555199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150917, 38.782150, 32.462830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382862, 0.270130, -0.883429,
		0.912213, 0.040476, 0.407713,
		0.145893, -0.961973, -0.230919,
		39.194687, 38.493557, 32.393555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720074, 39.226223, 32.305511>,  <39.092560, 39.166939, 32.555199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720074, 39.226223, 32.305511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608021, 38.872150, 32.156925>,  <39.540791, 38.659706, 32.067776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608021, 38.872150, 32.156925>,  <39.720074, 39.226223, 32.305511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608021, 38.872150, 32.156925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444781, 0.223232, -0.867374,
		0.850704, -0.408196, 0.331178,
		-0.280129, -0.885180, -0.371462,
		39.523983, 38.606598, 32.045486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306690, 38.814217, 32.027557>,  <39.720074, 39.226223, 32.305511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306690, 38.814217, 32.027557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958164, 38.716011, 31.857601>,  <39.749046, 38.657089, 31.755629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958164, 38.716011, 31.857601>,  <40.306690, 38.814217, 32.027557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958164, 38.716011, 31.857601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311665, 0.391922, -0.865599,
		0.379029, -0.886637, -0.264975,
		-0.871321, -0.245504, -0.424884,
		39.696770, 38.642357, 31.730135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487453, 38.688328, 31.331547>,  <40.306690, 38.814217, 32.027557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487453, 38.688328, 31.331547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088264, 38.703033, 31.310762>,  <39.848751, 38.711857, 31.298292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088264, 38.703033, 31.310762>,  <40.487453, 38.688328, 31.331547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088264, 38.703033, 31.310762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061291, 0.334774, -0.940303,
		-0.017179, -0.941581, -0.336349,
		-0.997972, 0.036768, -0.051959,
		39.788872, 38.714066, 31.295176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362640, 38.533520, 30.713076>,  <40.487453, 38.688328, 31.331547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362640, 38.533520, 30.713076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033333, 38.725193, 30.834808>,  <39.835751, 38.840199, 30.907848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033333, 38.725193, 30.834808>,  <40.362640, 38.533520, 30.713076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033333, 38.725193, 30.834808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122654, 0.373297, -0.919568,
		-0.554248, -0.794375, -0.248549,
		-0.823265, 0.479184, 0.304332,
		39.786354, 38.868950, 30.926107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782272, 38.407326, 30.246655>,  <40.362640, 38.533520, 30.713076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782272, 38.407326, 30.246655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714405, 38.759628, 30.423508>,  <39.673683, 38.971008, 30.529619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714405, 38.759628, 30.423508>,  <39.782272, 38.407326, 30.246655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714405, 38.759628, 30.423508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005763, 0.449516, -0.893254,
		-0.985484, -0.149008, -0.081344,
		-0.169668, 0.880756, 0.442132,
		39.663506, 39.023857, 30.556147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392357, 38.790028, 29.851225>,  <39.782272, 38.407326, 30.246655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392357, 38.790028, 29.851225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515255, 39.095734, 30.078026>,  <39.588993, 39.279160, 30.214106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515255, 39.095734, 30.078026>,  <39.392357, 38.790028, 29.851225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515255, 39.095734, 30.078026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115107, 0.621294, -0.775077,
		-0.944642, 0.172875, 0.278864,
		0.307249, 0.764269, 0.567002,
		39.607430, 39.325016, 30.248127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938686, 39.317490, 29.705687>,  <39.392357, 38.790028, 29.851225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938686, 39.317490, 29.705687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251602, 39.503769, 29.871170>,  <39.439350, 39.615536, 29.970461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251602, 39.503769, 29.871170>,  <38.938686, 39.317490, 29.705687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251602, 39.503769, 29.871170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073627, 0.728620, -0.680950,
		-0.618551, 0.502238, 0.604278,
		0.782287, 0.465694, 0.413710,
		39.486290, 39.643478, 29.995283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772938, 40.047264, 29.671022>,  <38.938686, 39.317490, 29.705687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772938, 40.047264, 29.671022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170551, 40.050709, 29.714506>,  <39.409119, 40.052776, 29.740597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170551, 40.050709, 29.714506>,  <38.772938, 40.047264, 29.671022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170551, 40.050709, 29.714506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068911, 0.723033, -0.687368,
		-0.084520, 0.690760, 0.718127,
		0.994036, 0.008610, 0.108711,
		39.468761, 40.053291, 29.747120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074039, 40.794205, 29.902592>,  <38.772938, 40.047264, 29.671022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074039, 40.794205, 29.902592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376301, 40.603542, 29.722910>,  <39.557659, 40.489143, 29.615101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376301, 40.603542, 29.722910>,  <39.074039, 40.794205, 29.902592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376301, 40.603542, 29.722910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105964, 0.765772, -0.634323,
		0.646341, 0.431730, 0.629168,
		0.755655, -0.476658, -0.449202,
		39.602997, 40.460545, 29.588150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652447, 41.300095, 29.799555>,  <39.074039, 40.794205, 29.902592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652447, 41.300095, 29.799555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713127, 41.007721, 29.533405>,  <39.749535, 40.832294, 29.373716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713127, 41.007721, 29.533405>,  <39.652447, 41.300095, 29.799555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713127, 41.007721, 29.533405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163463, 0.682445, -0.712424,
		0.974817, -0.000691, 0.223007,
		0.151698, -0.730936, -0.665372,
		39.758636, 40.788441, 29.333794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136383, 41.587337, 29.384409>,  <39.652447, 41.300095, 29.799555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136383, 41.587337, 29.384409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001705, 41.280548, 29.165909>,  <39.920898, 41.096474, 29.034809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001705, 41.280548, 29.165909>,  <40.136383, 41.587337, 29.384409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001705, 41.280548, 29.165909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177446, 0.518044, -0.836746,
		0.924744, -0.378654, -0.038324,
		-0.336691, -0.766976, -0.546248,
		39.900700, 41.050457, 29.002035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.056946, 35.795334, 26.257229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.217518, 36.127190, 26.412436>,  <33.313862, 36.326302, 26.505560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.217518, 36.127190, 26.412436>,  <33.056946, 35.795334, 26.257229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217518, 36.127190, 26.412436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043023, -0.406100, 0.912815,
		0.914878, -0.383127, -0.127328,
		0.401432, 0.829636, 0.388015,
		33.337948, 36.376080, 26.528841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643986, 35.576920, 26.662497>,  <33.056946, 35.795334, 26.257229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643986, 35.576920, 26.662497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.538349, 35.930553, 26.816721>,  <33.474968, 36.142735, 26.909256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.538349, 35.930553, 26.816721>,  <33.643986, 35.576920, 26.662497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538349, 35.930553, 26.816721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039281, -0.389562, 0.920162,
		0.963699, 0.258149, 0.068151,
		-0.264088, 0.884082, 0.385561,
		33.459122, 36.195778, 26.932388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148682, 35.773540, 27.147381>,  <33.643986, 35.576920, 26.662497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148682, 35.773540, 27.147381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.852802, 36.020256, 27.255026>,  <33.675274, 36.168285, 27.319613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.852802, 36.020256, 27.255026>,  <34.148682, 35.773540, 27.147381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852802, 36.020256, 27.255026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084527, -0.311577, 0.946454,
		0.667607, 0.722839, 0.178338,
		-0.739700, 0.616785, 0.269111,
		33.630894, 36.205292, 27.335758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431358, 36.242298, 27.691027>,  <34.148682, 35.773540, 27.147381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431358, 36.242298, 27.691027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.033875, 36.213722, 27.725502>,  <33.795383, 36.196575, 27.746187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.033875, 36.213722, 27.725502>,  <34.431358, 36.242298, 27.691027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033875, 36.213722, 27.725502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106044, -0.354005, 0.929212,
		-0.035871, 0.932511, 0.359356,
		-0.993714, -0.071439, 0.086188,
		33.735760, 36.192291, 27.751358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211868, 36.636868, 28.343536>,  <34.431358, 36.242298, 27.691027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211868, 36.636868, 28.343536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.920311, 36.377686, 28.255114>,  <33.745377, 36.222176, 28.202059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.920311, 36.377686, 28.255114>,  <34.211868, 36.636868, 28.343536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920311, 36.377686, 28.255114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005051, -0.327969, 0.944675,
		-0.684609, 0.687450, 0.242327,
		-0.728893, -0.647958, -0.221058,
		33.701645, 36.183300, 28.188797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862038, 36.656620, 28.892179>,  <34.211868, 36.636868, 28.343536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862038, 36.656620, 28.892179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.749165, 36.312168, 28.723030>,  <33.681442, 36.105495, 28.621540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.749165, 36.312168, 28.723030>,  <33.862038, 36.656620, 28.892179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749165, 36.312168, 28.723030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049822, -0.427037, 0.902860,
		-0.958067, 0.275839, 0.077599,
		-0.282182, -0.861134, -0.422873,
		33.664509, 36.053829, 28.596169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398930, 36.273438, 29.358347>,  <33.862038, 36.656620, 28.892179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398930, 36.273438, 29.358347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.508736, 35.971893, 29.119570>,  <33.574619, 35.790966, 28.976303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.508736, 35.971893, 29.119570>,  <33.398930, 36.273438, 29.358347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508736, 35.971893, 29.119570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242816, -0.655017, 0.715537,
		-0.930421, -0.051478, -0.362860,
		0.274514, -0.753858, -0.596942,
		33.591091, 35.745735, 28.940487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886757, 35.741810, 29.438572>,  <33.398930, 36.273438, 29.358347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886757, 35.741810, 29.438572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.235943, 35.589512, 29.316618>,  <33.445454, 35.498131, 29.243446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.235943, 35.589512, 29.316618>,  <32.886757, 35.741810, 29.438572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235943, 35.589512, 29.316618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012431, -0.642214, 0.766425,
		-0.487616, -0.665275, -0.565367,
		0.872970, -0.380749, -0.304884,
		33.497833, 35.475288, 29.225153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807003, 35.055470, 29.396225>,  <32.886757, 35.741810, 29.438572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807003, 35.055470, 29.396225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.204952, 35.086849, 29.421757>,  <33.443722, 35.105675, 29.437077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.204952, 35.086849, 29.421757>,  <32.807003, 35.055470, 29.396225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204952, 35.086849, 29.421757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016478, -0.748446, 0.662991,
		0.099782, -0.658540, -0.745901,
		0.994873, 0.078445, 0.063830,
		33.503414, 35.110382, 29.440907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002747, 34.353706, 29.592400>,  <32.807003, 35.055470, 29.396225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002747, 34.353706, 29.592400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.322056, 34.578972, 29.677820>,  <33.513641, 34.714130, 29.729073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.322056, 34.578972, 29.677820>,  <33.002747, 34.353706, 29.592400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322056, 34.578972, 29.677820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057787, -0.424538, 0.903564,
		0.599517, -0.708951, -0.371440,
		0.798273, 0.563167, 0.213550,
		33.561539, 34.747921, 29.741884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451084, 33.934746, 29.945581>,  <33.002747, 34.353706, 29.592400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451084, 33.934746, 29.945581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.593372, 34.296486, 30.039907>,  <33.678745, 34.513531, 30.096502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.593372, 34.296486, 30.039907>,  <33.451084, 33.934746, 29.945581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593372, 34.296486, 30.039907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141788, -0.301619, 0.942827,
		0.923773, -0.301950, -0.235519,
		0.355724, 0.904352, 0.235815,
		33.700089, 34.567791, 30.110651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078159, 33.775681, 30.339157>,  <33.451084, 33.934746, 29.945581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078159, 33.775681, 30.339157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.971687, 34.150543, 30.429380>,  <33.907803, 34.375462, 30.483515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.971687, 34.150543, 30.429380>,  <34.078159, 33.775681, 30.339157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971687, 34.150543, 30.429380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128511, -0.197410, 0.971861,
		0.955318, 0.287679, -0.067888,
		-0.266182, 0.937161, 0.225559,
		33.891834, 34.431690, 30.497047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559792, 34.019119, 30.787416>,  <34.078159, 33.775681, 30.339157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559792, 34.019119, 30.787416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.245094, 34.257435, 30.852011>,  <34.056278, 34.400425, 30.890768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.245094, 34.257435, 30.852011>,  <34.559792, 34.019119, 30.787416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245094, 34.257435, 30.852011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180562, -0.028050, 0.983163,
		0.590286, 0.802652, -0.085509,
		-0.786740, 0.595787, 0.161486,
		34.009071, 34.436172, 30.900457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824371, 34.317169, 31.313869>,  <34.559792, 34.019119, 30.787416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824371, 34.317169, 31.313869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.433144, 34.397232, 31.336906>,  <34.198406, 34.445271, 31.350729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.433144, 34.397232, 31.336906>,  <34.824371, 34.317169, 31.313869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433144, 34.397232, 31.336906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089065, 0.151978, 0.984363,
		0.188279, 0.967904, -0.166472,
		-0.978069, 0.200162, 0.057592,
		34.139725, 34.457279, 31.354183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426662, 34.690144, 31.589367>,  <34.824371, 34.317169, 31.313869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426662, 34.690144, 31.589367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734570, 34.436275, 31.562086>,  <35.919315, 34.283955, 31.545717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734570, 34.436275, 31.562086>,  <35.426662, 34.690144, 31.589367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734570, 34.436275, 31.562086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063116, 0.181997, -0.981271,
		0.635194, 0.751048, 0.180153,
		0.769770, -0.634668, -0.068200,
		35.965500, 34.245876, 31.541626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922581, 35.084423, 31.298649>,  <35.426662, 34.690144, 31.589367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922581, 35.084423, 31.298649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.051632, 34.712955, 31.225454>,  <36.129063, 34.490074, 31.181538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.051632, 34.712955, 31.225454>,  <35.922581, 35.084423, 31.298649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051632, 34.712955, 31.225454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002357, 0.194114, -0.980976,
		0.946522, 0.316061, 0.064816,
		0.322630, -0.928669, -0.182988,
		36.148422, 34.434357, 31.170557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545254, 35.095188, 30.954290>,  <35.922581, 35.084423, 31.298649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545254, 35.095188, 30.954290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.387962, 34.742825, 30.848932>,  <36.293587, 34.531406, 30.785717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.387962, 34.742825, 30.848932>,  <36.545254, 35.095188, 30.954290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387962, 34.742825, 30.848932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183921, 0.205318, -0.961258,
		0.900859, -0.426435, 0.081281,
		-0.393226, -0.880907, -0.263394,
		36.269993, 34.478554, 30.769915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052280, 34.836731, 30.458317>,  <36.545254, 35.095188, 30.954290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052280, 34.836731, 30.458317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.693596, 34.666393, 30.410040>,  <36.478386, 34.564190, 30.381073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.693596, 34.666393, 30.410040>,  <37.052280, 34.836731, 30.458317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693596, 34.666393, 30.410040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016549, 0.240229, -0.970575,
		0.442308, -0.872322, -0.208368,
		-0.896711, -0.425844, -0.120692,
		36.424583, 34.538639, 30.373833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192661, 34.423836, 29.974640>,  <37.052280, 34.836731, 30.458317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192661, 34.423836, 29.974640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.794472, 34.458141, 29.991055>,  <36.555557, 34.478725, 30.000904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.794472, 34.458141, 29.991055>,  <37.192661, 34.423836, 29.974640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794472, 34.458141, 29.991055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026328, 0.166090, -0.985759,
		-0.091360, -0.982374, -0.163079,
		-0.995470, 0.085765, 0.041038,
		36.495831, 34.483871, 30.003366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962490, 34.109550, 29.291269>,  <37.192661, 34.423836, 29.974640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962490, 34.109550, 29.291269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.662884, 34.319138, 29.453468>,  <36.483120, 34.444889, 29.550789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.662884, 34.319138, 29.453468>,  <36.962490, 34.109550, 29.291269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662884, 34.319138, 29.453468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269281, 0.318449, -0.908888,
		-0.605363, -0.789965, -0.097427,
		-0.749015, 0.523972, 0.405499,
		36.438179, 34.476330, 29.575119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428509, 33.927494, 28.820944>,  <36.962490, 34.109550, 29.291269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428509, 33.927494, 28.820944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.345848, 34.271667, 29.007254>,  <36.296249, 34.478172, 29.119040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.345848, 34.271667, 29.007254>,  <36.428509, 33.927494, 28.820944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345848, 34.271667, 29.007254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438242, 0.344225, -0.830333,
		-0.874778, -0.375715, 0.305943,
		-0.206656, 0.860435, 0.465774,
		36.283852, 34.529797, 29.146986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836948, 34.018936, 28.524813>,  <36.428509, 33.927494, 28.820944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836948, 34.018936, 28.524813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.959095, 34.377819, 28.652418>,  <36.032383, 34.593147, 28.728981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.959095, 34.377819, 28.652418>,  <35.836948, 34.018936, 28.524813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959095, 34.377819, 28.652418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153661, 0.377055, -0.913355,
		-0.939755, 0.229889, 0.253007,
		0.305367, 0.897207, 0.319015,
		36.050705, 34.646980, 28.748123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393368, 34.530407, 28.235884>,  <35.836948, 34.018936, 28.524813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393368, 34.530407, 28.235884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.726593, 34.735367, 28.319262>,  <35.926529, 34.858341, 28.369287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.726593, 34.735367, 28.319262>,  <35.393368, 34.530407, 28.235884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726593, 34.735367, 28.319262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048471, 0.442980, -0.895220,
		-0.551044, 0.735675, 0.393869,
		0.833067, 0.512397, 0.208443,
		35.976513, 34.889088, 28.381794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191593, 35.204956, 28.084837>,  <35.393368, 34.530407, 28.235884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191593, 35.204956, 28.084837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.591335, 35.215981, 28.075621>,  <35.831181, 35.222595, 28.070091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.591335, 35.215981, 28.075621>,  <35.191593, 35.204956, 28.084837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591335, 35.215981, 28.075621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034865, 0.589708, -0.806864,
		-0.008653, 0.807146, 0.590288,
		0.999355, 0.027562, -0.023039,
		35.891140, 35.224251, 28.068708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292313, 35.868526, 27.898941>,  <35.191593, 35.204956, 28.084837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292313, 35.868526, 27.898941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.653938, 35.723911, 27.807760>,  <35.870914, 35.637142, 27.753052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.653938, 35.723911, 27.807760>,  <35.292313, 35.868526, 27.898941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653938, 35.723911, 27.807760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029798, 0.585358, -0.810227,
		0.426362, 0.725703, 0.539973,
		0.904061, -0.361540, -0.227950,
		35.925156, 35.615448, 27.739376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813240, 36.404617, 27.941624>,  <35.292313, 35.868526, 27.898941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813240, 36.404617, 27.941624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.971642, 36.149319, 27.677555>,  <36.066681, 35.996140, 27.519114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.971642, 36.149319, 27.677555>,  <35.813240, 36.404617, 27.941624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971642, 36.149319, 27.677555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201696, 0.761847, -0.615554,
		0.895823, 0.110607, 0.430426,
		0.396004, -0.638243, -0.660172,
		36.090443, 35.957848, 27.479504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372143, 36.739555, 27.700739>,  <35.813240, 36.404617, 27.941624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372143, 36.739555, 27.700739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.334442, 36.455322, 27.421831>,  <36.311821, 36.284782, 27.254486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.334442, 36.455322, 27.421831>,  <36.372143, 36.739555, 27.700739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334442, 36.455322, 27.421831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302233, 0.646911, -0.700115,
		0.948563, -0.276725, 0.153790,
		-0.094251, -0.710584, -0.697271,
		36.306168, 36.242146, 27.212650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028599, 36.693092, 27.282356>,  <36.372143, 36.739555, 27.700739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028599, 36.693092, 27.282356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.744190, 36.533142, 27.050997>,  <36.573544, 36.437172, 26.912182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.744190, 36.533142, 27.050997>,  <37.028599, 36.693092, 27.282356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744190, 36.533142, 27.050997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245030, 0.630103, -0.736838,
		0.659104, -0.665629, -0.350029,
		-0.711015, -0.399886, -0.578402,
		36.530884, 36.413177, 26.877478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692078, 36.426682, 27.172558>,  <37.028599, 36.693092, 27.282356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692078, 36.426682, 27.172558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.071018, 36.422371, 27.044556>,  <38.298382, 36.419785, 26.967754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.071018, 36.422371, 27.044556>,  <37.692078, 36.426682, 27.172558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071018, 36.422371, 27.044556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136556, -0.890383, 0.434246,
		-0.289606, -0.455084, -0.842037,
		0.947354, -0.010775, -0.320005,
		38.355225, 36.419140, 26.948555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832623, 35.709297, 26.930794>,  <37.692078, 36.426682, 27.172558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832623, 35.709297, 26.930794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.176468, 35.879055, 27.044603>,  <38.382774, 35.980907, 27.112890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.176468, 35.879055, 27.044603>,  <37.832623, 35.709297, 26.930794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176468, 35.879055, 27.044603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149388, -0.741288, 0.654351,
		0.488616, -0.519985, -0.700621,
		0.859614, 0.424391, 0.284526,
		38.434353, 36.006371, 27.129961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312950, 35.170170, 27.013763>,  <37.832623, 35.709297, 26.930794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312950, 35.170170, 27.013763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.479324, 35.469711, 27.220146>,  <38.579151, 35.649437, 27.343975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.479324, 35.469711, 27.220146>,  <38.312950, 35.170170, 27.013763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479324, 35.469711, 27.220146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308343, -0.649890, 0.694671,
		0.855522, -0.129849, -0.501219,
		0.415940, 0.748854, 0.515957,
		38.604107, 35.694366, 27.374933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940868, 34.977417, 27.138685>,  <38.312950, 35.170170, 27.013763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940868, 34.977417, 27.138685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.913197, 35.273865, 27.405804>,  <38.896595, 35.451733, 27.566074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.913197, 35.273865, 27.405804>,  <38.940868, 34.977417, 27.138685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913197, 35.273865, 27.405804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401729, -0.592031, 0.698651,
		0.913142, 0.316604, -0.256775,
		-0.069177, 0.741122, 0.667797,
		38.892445, 35.496201, 27.606142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500965, 34.846100, 27.615759>,  <38.940868, 34.977417, 27.138685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500965, 34.846100, 27.615759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.260761, 35.097225, 27.813847>,  <39.116638, 35.247898, 27.932699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.260761, 35.097225, 27.813847>,  <39.500965, 34.846100, 27.615759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260761, 35.097225, 27.813847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324626, -0.374572, 0.868512,
		0.730754, 0.682313, 0.021132,
		-0.600513, 0.627809, 0.495217,
		39.080608, 35.285568, 27.962412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866634, 34.933826, 28.254030>,  <39.500965, 34.846100, 27.615759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866634, 34.933826, 28.254030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.518127, 35.106602, 28.347258>,  <39.309021, 35.210266, 28.403194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.518127, 35.106602, 28.347258>,  <39.866634, 34.933826, 28.254030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518127, 35.106602, 28.347258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114325, -0.283200, 0.952222,
		0.477304, 0.856288, 0.197362,
		-0.871269, 0.431936, 0.233068,
		39.256748, 35.236183, 28.417177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962986, 35.436569, 28.728268>,  <39.866634, 34.933826, 28.254030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962986, 35.436569, 28.728268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.581505, 35.323742, 28.770006>,  <39.352615, 35.256046, 28.795050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.581505, 35.323742, 28.770006>,  <39.962986, 35.436569, 28.728268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581505, 35.323742, 28.770006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182179, -0.265761, 0.946669,
		-0.239296, 0.921850, 0.304844,
		-0.953702, -0.282070, 0.104346,
		39.295395, 35.239120, 28.801310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868454, 35.759354, 29.361685>,  <39.962986, 35.436569, 28.728268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868454, 35.759354, 29.361685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.589767, 35.482685, 29.285601>,  <39.422558, 35.316685, 29.239950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.589767, 35.482685, 29.285601>,  <39.868454, 35.759354, 29.361685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589767, 35.482685, 29.285601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129007, -0.381645, 0.915262,
		-0.705653, 0.613137, 0.355128,
		-0.696714, -0.691672, -0.190210,
		39.380753, 35.275185, 29.228539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509499, 35.646774, 30.005150>,  <39.868454, 35.759354, 29.361685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509499, 35.646774, 30.005150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.393444, 35.305111, 29.832529>,  <39.323811, 35.100113, 29.728956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.393444, 35.305111, 29.832529>,  <39.509499, 35.646774, 30.005150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393444, 35.305111, 29.832529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055144, -0.465122, 0.883527,
		-0.955394, 0.232548, 0.182052,
		-0.290139, -0.854156, -0.431552,
		39.306404, 35.048862, 29.703064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909081, 35.324516, 30.392021>,  <39.509499, 35.646774, 30.005150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909081, 35.324516, 30.392021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.098930, 35.021790, 30.212263>,  <39.212841, 34.840153, 30.104408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.098930, 35.021790, 30.212263>,  <38.909081, 35.324516, 30.392021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098930, 35.021790, 30.212263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054665, -0.534929, 0.843127,
		-0.878489, -0.375603, -0.295262,
		0.474626, -0.756818, -0.449396,
		39.241318, 34.794743, 30.077444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621674, 34.776421, 30.706728>,  <38.909081, 35.324516, 30.392021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621674, 34.776421, 30.706728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.961597, 34.647087, 30.540216>,  <39.165550, 34.569489, 30.440310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.961597, 34.647087, 30.540216>,  <38.621674, 34.776421, 30.706728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961597, 34.647087, 30.540216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112193, -0.660701, 0.742217,
		-0.515017, -0.677444, -0.525192,
		0.849806, -0.323332, -0.416277,
		39.216537, 34.550087, 30.415333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546333, 34.045719, 30.791151>,  <38.621674, 34.776421, 30.706728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546333, 34.045719, 30.791151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.933178, 34.128365, 30.731815>,  <39.165283, 34.177952, 30.696213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.933178, 34.128365, 30.731815>,  <38.546333, 34.045719, 30.791151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933178, 34.128365, 30.731815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226512, -0.434330, 0.871808,
		0.115697, -0.876737, -0.466846,
		0.967112, 0.206612, -0.148341,
		39.223312, 34.190350, 30.687313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884285, 33.423267, 30.854427>,  <38.546333, 34.045719, 30.791151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884285, 33.423267, 30.854427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.178459, 33.686958, 30.917101>,  <39.354965, 33.845173, 30.954704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.178459, 33.686958, 30.917101>,  <38.884285, 33.423267, 30.854427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178459, 33.686958, 30.917101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255182, -0.483672, 0.837224,
		0.627703, -0.575745, -0.523934,
		0.735440, 0.659226, 0.156682,
		39.399090, 33.884727, 30.964106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582287, 33.039341, 31.084963>,  <38.884285, 33.423267, 30.854427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582287, 33.039341, 31.084963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.594837, 33.420597, 31.205326>,  <39.602367, 33.649349, 31.277544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.594837, 33.420597, 31.205326>,  <39.582287, 33.039341, 31.084963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594837, 33.420597, 31.205326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235520, -0.299629, 0.924528,
		0.971363, 0.041864, -0.233883,
		0.031374, 0.953137, 0.300908,
		39.604248, 33.706539, 31.295599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.807751, 41.456577, 28.752384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.465393, 41.277225, 28.649307>,  <40.259979, 41.169613, 28.587461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.465393, 41.277225, 28.649307>,  <40.807751, 41.456577, 28.752384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465393, 41.277225, 28.649307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011168, 0.482148, -0.876019,
		0.517043, -0.752651, -0.407656,
		-0.855887, -0.448386, -0.257696,
		40.208626, 41.142712, 28.571999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971081, 41.087513, 28.010464>,  <40.807751, 41.456577, 28.752384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971081, 41.087513, 28.010464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.572647, 41.100582, 28.043337>,  <40.333588, 41.108425, 28.063061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.572647, 41.100582, 28.043337>,  <40.971081, 41.087513, 28.010464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572647, 41.100582, 28.043337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078496, 0.101424, -0.991742,
		-0.040741, -0.994307, -0.098461,
		-0.996082, 0.032675, 0.082181,
		40.273823, 41.110386, 28.067991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758778, 40.605984, 27.665850>,  <40.971081, 41.087513, 28.010464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758778, 40.605984, 27.665850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.437946, 40.844208, 27.648094>,  <40.245445, 40.987144, 27.637442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.437946, 40.844208, 27.648094>,  <40.758778, 40.605984, 27.665850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437946, 40.844208, 27.648094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032889, -0.118262, -0.992438,
		-0.596310, -0.794555, 0.114443,
		-0.802080, 0.595564, -0.044389,
		40.197323, 41.022877, 27.634777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337200, 40.328751, 27.191425>,  <40.758778, 40.605984, 27.665850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337200, 40.328751, 27.191425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.169113, 40.689636, 27.230246>,  <40.068260, 40.906170, 27.253538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.169113, 40.689636, 27.230246>,  <40.337200, 40.328751, 27.191425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169113, 40.689636, 27.230246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078381, 0.070464, -0.994430,
		-0.904031, -0.425487, 0.041106,
		-0.420220, 0.902217, 0.097052,
		40.043049, 40.960300, 27.259361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700680, 40.429188, 26.713097>,  <40.337200, 40.328751, 27.191425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700680, 40.429188, 26.713097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.827274, 40.804485, 26.769012>,  <39.903233, 41.029663, 26.802563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.827274, 40.804485, 26.769012>,  <39.700680, 40.429188, 26.713097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827274, 40.804485, 26.769012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320719, 0.244523, -0.915067,
		-0.892735, 0.244773, 0.378300,
		0.316487, 0.938240, 0.139791,
		39.922222, 41.085957, 26.810949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261219, 40.755219, 26.232752>,  <39.700680, 40.429188, 26.713097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261219, 40.755219, 26.232752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.531406, 41.035450, 26.324781>,  <39.693520, 41.203590, 26.379999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.531406, 41.035450, 26.324781>,  <39.261219, 40.755219, 26.232752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531406, 41.035450, 26.324781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233151, 0.498912, -0.834702,
		-0.699562, 0.510170, 0.500338,
		0.675465, 0.700581, 0.230073,
		39.734047, 41.245625, 26.393803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949055, 41.338993, 25.998672>,  <39.261219, 40.755219, 26.232752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949055, 41.338993, 25.998672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.342354, 41.405003, 26.029638>,  <39.578335, 41.444607, 26.048218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.342354, 41.405003, 26.029638>,  <38.949055, 41.338993, 25.998672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342354, 41.405003, 26.029638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008302, 0.464809, -0.885372,
		-0.182091, 0.869897, 0.458392,
		0.983247, 0.165024, 0.077416,
		39.637329, 41.454510, 26.052862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040001, 42.002975, 25.674938>,  <38.949055, 41.338993, 25.998672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040001, 42.002975, 25.674938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.406361, 41.842445, 25.671684>,  <39.626179, 41.746128, 25.669731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.406361, 41.842445, 25.671684>,  <39.040001, 42.002975, 25.674938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406361, 41.842445, 25.671684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112943, 0.277103, -0.954179,
		0.385186, 0.873015, 0.299125,
		0.915902, -0.401321, -0.008135,
		39.681129, 41.722050, 25.669243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349480, 42.540276, 25.444216>,  <39.040001, 42.002975, 25.674938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349480, 42.540276, 25.444216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.557526, 42.210434, 25.355217>,  <39.682354, 42.012527, 25.301819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.557526, 42.210434, 25.355217>,  <39.349480, 42.540276, 25.444216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557526, 42.210434, 25.355217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094852, 0.314659, -0.944454,
		0.848813, 0.470120, 0.241874,
		0.520115, -0.824607, -0.222495,
		39.713558, 41.963051, 25.288469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842831, 42.701771, 24.951372>,  <39.349480, 42.540276, 25.444216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842831, 42.701771, 24.951372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.820114, 42.304775, 24.908041>,  <39.806484, 42.066578, 24.882042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.820114, 42.304775, 24.908041>,  <39.842831, 42.701771, 24.951372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820114, 42.304775, 24.908041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112301, 0.114163, -0.987094,
		0.992050, -0.043892, -0.117942,
		-0.056790, -0.992492, -0.108326,
		39.803078, 42.007027, 24.875544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286926, 42.583290, 24.401268>,  <39.842831, 42.701771, 24.951372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286926, 42.583290, 24.401268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076801, 42.243847, 24.426317>,  <39.950726, 42.040180, 24.441347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076801, 42.243847, 24.426317>,  <40.286926, 42.583290, 24.401268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076801, 42.243847, 24.426317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284360, 0.105710, -0.952872,
		0.801992, -0.518358, -0.296840,
		-0.525308, -0.848605, 0.062622,
		39.919209, 41.989265, 24.445105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416676, 42.391502, 23.711369>,  <40.286926, 42.583290, 24.401268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416676, 42.391502, 23.711369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.119938, 42.170372, 23.863184>,  <39.941895, 42.037693, 23.954273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.119938, 42.170372, 23.863184>,  <40.416676, 42.391502, 23.711369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119938, 42.170372, 23.863184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456788, 0.002244, -0.889573,
		0.490926, -0.833295, -0.254189,
		-0.741847, -0.552825, 0.379537,
		39.897385, 42.004524, 23.977045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226948, 41.754467, 23.322771>,  <40.416676, 42.391502, 23.711369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226948, 41.754467, 23.322771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.880299, 41.862366, 23.490675>,  <39.672310, 41.927105, 23.591417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.880299, 41.862366, 23.490675>,  <40.226948, 41.754467, 23.322771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880299, 41.862366, 23.490675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465688, -0.135222, -0.874557,
		-0.179150, -0.953389, 0.242806,
		-0.866625, 0.269748, 0.419757,
		39.620312, 41.943287, 23.616602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646080, 41.352081, 23.046738>,  <40.226948, 41.754467, 23.322771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646080, 41.352081, 23.046738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.436298, 41.643387, 23.223185>,  <39.310429, 41.818169, 23.329052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.436298, 41.643387, 23.223185>,  <39.646080, 41.352081, 23.046738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436298, 41.643387, 23.223185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674749, -0.039514, -0.736989,
		-0.519290, -0.684160, 0.512117,
		-0.524454, 0.728261, 0.441117,
		39.278961, 41.861866, 23.355520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082424, 41.014893, 23.351385>,  <39.646080, 41.352081, 23.046738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082424, 41.014893, 23.351385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770016, 40.805092, 23.215794>,  <38.582573, 40.679211, 23.134439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770016, 40.805092, 23.215794>,  <39.082424, 41.014893, 23.351385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770016, 40.805092, 23.215794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066359, -0.470018, 0.880159,
		-0.620972, 0.709915, 0.332287,
		-0.781019, -0.524504, -0.338977,
		38.535709, 40.647739, 23.114101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632092, 40.872169, 23.969791>,  <39.082424, 41.014893, 23.351385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632092, 40.872169, 23.969791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.521606, 40.609341, 23.689232>,  <38.455315, 40.451641, 23.520897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.521606, 40.609341, 23.689232>,  <38.632092, 40.872169, 23.969791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521606, 40.609341, 23.689232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008977, -0.727993, 0.685526,
		-0.961056, 0.195645, 0.195180,
		-0.276209, -0.657076, -0.701398,
		38.438744, 40.412216, 23.478813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006359, 40.580120, 24.287352>,  <38.632092, 40.872169, 23.969791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006359, 40.580120, 24.287352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.151173, 40.322857, 24.017456>,  <38.238060, 40.168499, 23.855518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.151173, 40.322857, 24.017456>,  <38.006359, 40.580120, 24.287352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151173, 40.322857, 24.017456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043431, -0.734694, 0.677007,
		-0.931152, -0.215796, -0.293918,
		0.362035, -0.643161, -0.674740,
		38.259785, 40.129910, 23.815035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575386, 40.075111, 24.348948>,  <38.006359, 40.580120, 24.287352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575386, 40.075111, 24.348948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.887104, 39.899136, 24.170443>,  <38.074135, 39.793549, 24.063339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.887104, 39.899136, 24.170443>,  <37.575386, 40.075111, 24.348948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887104, 39.899136, 24.170443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052236, -0.755255, 0.653346,
		-0.624476, -0.485839, -0.611548,
		0.779296, -0.439944, -0.446260,
		38.120892, 39.767151, 24.036564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416672, 39.380569, 24.438656>,  <37.575386, 40.075111, 24.348948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416672, 39.380569, 24.438656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.808857, 39.366543, 24.361235>,  <38.044167, 39.358128, 24.314781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.808857, 39.366543, 24.361235>,  <37.416672, 39.380569, 24.438656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808857, 39.366543, 24.361235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091720, -0.788958, 0.607563,
		-0.174012, -0.613446, -0.770328,
		0.980463, -0.035069, -0.193553,
		38.102997, 39.356022, 24.303169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677097, 38.651394, 24.323322>,  <37.416672, 39.380569, 24.438656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677097, 38.651394, 24.323322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.019547, 38.839760, 24.408442>,  <38.225018, 38.952782, 24.459513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.019547, 38.839760, 24.408442>,  <37.677097, 38.651394, 24.323322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019547, 38.839760, 24.408442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301333, -0.789462, 0.534742,
		0.419816, -0.393683, -0.817782,
		0.856126, 0.470918, 0.212799,
		38.276386, 38.981037, 24.472281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244705, 38.125336, 24.258728>,  <37.677097, 38.651394, 24.323322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244705, 38.125336, 24.258728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.378754, 38.435570, 24.472706>,  <38.459183, 38.621708, 24.601093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.378754, 38.435570, 24.472706>,  <38.244705, 38.125336, 24.258728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378754, 38.435570, 24.472706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433497, -0.631037, 0.643329,
		0.836524, 0.016301, -0.547688,
		0.335125, 0.775581, 0.534944,
		38.479290, 38.668243, 24.633188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983562, 38.006992, 24.432455>,  <38.244705, 38.125336, 24.258728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983562, 38.006992, 24.432455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.834820, 38.240238, 24.721371>,  <38.745575, 38.380184, 24.894720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.834820, 38.240238, 24.721371>,  <38.983562, 38.006992, 24.432455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834820, 38.240238, 24.721371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232526, -0.694768, 0.680609,
		0.898696, 0.421039, 0.122764,
		-0.371855, 0.583115, 0.722289,
		38.723263, 38.415173, 24.938057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482361, 37.999939, 25.032621>,  <38.983562, 38.006992, 24.432455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482361, 37.999939, 25.032621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.146168, 38.149830, 25.189165>,  <38.944450, 38.239765, 25.283091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.146168, 38.149830, 25.189165>,  <39.482361, 37.999939, 25.032621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146168, 38.149830, 25.189165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072329, -0.638230, 0.766441,
		0.536982, 0.672490, 0.509321,
		-0.840487, 0.374727, 0.391358,
		38.894020, 38.262249, 25.306572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598442, 37.923313, 25.705360>,  <39.482361, 37.999939, 25.032621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598442, 37.923313, 25.705360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.201950, 37.975838, 25.699375>,  <38.964054, 38.007351, 25.695784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.201950, 37.975838, 25.699375>,  <39.598442, 37.923313, 25.705360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201950, 37.975838, 25.699375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083580, -0.535118, 0.840632,
		0.102377, 0.834509, 0.541399,
		-0.991228, 0.131312, -0.014965,
		38.904583, 38.015232, 25.694885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351849, 38.214039, 26.378910>,  <39.598442, 37.923313, 25.705360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351849, 38.214039, 26.378910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.047432, 38.027245, 26.198805>,  <38.864780, 37.915169, 26.090742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.047432, 38.027245, 26.198805>,  <39.351849, 38.214039, 26.378910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047432, 38.027245, 26.198805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040632, -0.658426, 0.751548,
		-0.647424, 0.590258, 0.482118,
		-0.761046, -0.466981, -0.450264,
		38.819118, 37.887150, 26.063726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786247, 38.165550, 26.815899>,  <39.351849, 38.214039, 26.378910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786247, 38.165550, 26.815899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.689381, 37.854427, 26.583906>,  <38.631260, 37.667755, 26.444712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.689381, 37.854427, 26.583906>,  <38.786247, 38.165550, 26.815899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689381, 37.854427, 26.583906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098724, -0.574917, 0.812234,
		-0.965199, 0.253952, 0.062437,
		-0.242165, -0.777804, -0.579980,
		38.616730, 37.621086, 26.409912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419968, 37.610016, 27.258121>,  <38.786247, 38.165550, 26.815899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419968, 37.610016, 27.258121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.494698, 37.427452, 26.910149>,  <38.539536, 37.317913, 26.701365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.494698, 37.427452, 26.910149>,  <38.419968, 37.610016, 27.258121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494698, 37.427452, 26.910149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025498, -0.882975, 0.468727,
		-0.982061, -0.109753, -0.153328,
		0.186829, -0.456409, -0.869934,
		38.550747, 37.290531, 26.649168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906265, 37.130550, 27.181019>,  <38.419968, 37.610016, 27.258121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906265, 37.130550, 27.181019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.195667, 36.973892, 26.953632>,  <38.369308, 36.879898, 26.817200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.195667, 36.973892, 26.953632>,  <37.906265, 37.130550, 27.181019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195667, 36.973892, 26.953632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025724, -0.807619, 0.589144,
		-0.689838, -0.440873, -0.574243,
		0.723506, -0.391642, -0.568467,
		38.412720, 36.856400, 26.783092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329685, 36.807667, 26.650616>,  <37.906265, 37.130550, 27.181019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329685, 36.807667, 26.650616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.955669, 36.690990, 26.570011>,  <36.731258, 36.620983, 26.521648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.955669, 36.690990, 26.570011>,  <37.329685, 36.807667, 26.650616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955669, 36.690990, 26.570011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024405, 0.620000, -0.784222,
		0.353691, -0.728364, -0.586846,
		-0.935044, -0.291694, -0.201513,
		36.675156, 36.603481, 26.509558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336056, 36.752823, 26.004313>,  <37.329685, 36.807667, 26.650616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336056, 36.752823, 26.004313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.951508, 36.807316, 26.099981>,  <36.720779, 36.840012, 26.157383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.951508, 36.807316, 26.099981>,  <37.336056, 36.752823, 26.004313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951508, 36.807316, 26.099981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087344, 0.673026, -0.734443,
		-0.261024, -0.726964, -0.635130,
		-0.961373, 0.136233, 0.239171,
		36.663097, 36.848186, 26.171732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996353, 36.635178, 25.377899>,  <37.336056, 36.752823, 26.004313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996353, 36.635178, 25.377899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.756111, 36.850189, 25.614658>,  <36.611965, 36.979195, 25.756714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.756111, 36.850189, 25.614658>,  <36.996353, 36.635178, 25.377899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756111, 36.850189, 25.614658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295877, 0.538318, -0.789095,
		-0.742788, -0.649062, -0.164273,
		-0.600602, 0.537525, 0.591898,
		36.575932, 37.011448, 25.792229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373814, 36.619175, 25.038313>,  <36.996353, 36.635178, 25.377899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373814, 36.619175, 25.038313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.364216, 36.916103, 25.306158>,  <36.358456, 37.094261, 25.466866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.364216, 36.916103, 25.306158>,  <36.373814, 36.619175, 25.038313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364216, 36.916103, 25.306158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371278, 0.615285, -0.695397,
		-0.928212, -0.265301, 0.260842,
		-0.023997, 0.742321, 0.669615,
		36.357018, 37.138798, 25.507042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642323, 36.852940, 25.037743>,  <36.373814, 36.619175, 25.038313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642323, 36.852940, 25.037743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.854866, 37.154266, 25.192755>,  <35.982391, 37.335060, 25.285763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.854866, 37.154266, 25.192755>,  <35.642323, 36.852940, 25.037743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854866, 37.154266, 25.192755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429803, 0.633929, -0.642964,
		-0.730021, 0.175080, 0.660619,
		0.531356, 0.753313, 0.387531,
		36.014275, 37.380260, 25.309013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198944, 37.339279, 24.905123>,  <35.642323, 36.852940, 25.037743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198944, 37.339279, 24.905123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.539295, 37.542084, 24.960186>,  <35.743504, 37.663769, 24.993225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.539295, 37.542084, 24.960186>,  <35.198944, 37.339279, 24.905123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539295, 37.542084, 24.960186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237572, 0.605024, -0.759938,
		-0.468587, 0.613907, 0.635251,
		0.850873, 0.507015, 0.137659,
		35.794556, 37.694187, 25.001484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062595, 38.061497, 24.807270>,  <35.198944, 37.339279, 24.905123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062595, 38.061497, 24.807270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.459087, 38.041279, 24.758440>,  <35.696983, 38.029148, 24.729141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.459087, 38.041279, 24.758440>,  <35.062595, 38.061497, 24.807270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459087, 38.041279, 24.758440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045731, 0.735581, -0.675891,
		0.123960, 0.675548, 0.726821,
		0.991233, -0.050545, -0.122076,
		35.756458, 38.026115, 24.721817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494061, 38.679222, 25.080675>,  <35.062595, 38.061497, 24.807270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494061, 38.679222, 25.080675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109726, 38.769238, 25.015985>,  <33.879124, 38.823246, 24.977171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109726, 38.769238, 25.015985>,  <34.494061, 38.679222, 25.080675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109726, 38.769238, 25.015985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273313, -0.673094, 0.687200,
		0.045788, 0.704488, 0.708238,
		-0.960835, 0.225036, -0.161725,
		33.821476, 38.836750, 24.967468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246643, 38.848728, 25.643215>,  <34.494061, 38.679222, 25.080675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246643, 38.848728, 25.643215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919273, 38.741028, 25.440165>,  <33.722851, 38.676407, 25.318335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919273, 38.741028, 25.440165>,  <34.246643, 38.848728, 25.643215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919273, 38.741028, 25.440165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291298, -0.567078, 0.770433,
		-0.495300, 0.778414, 0.385681,
		-0.818427, -0.269248, -0.507624,
		33.673744, 38.660252, 25.287878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730633, 38.827332, 26.155838>,  <34.246643, 38.848728, 25.643215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730633, 38.827332, 26.155838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.615879, 38.603306, 25.844961>,  <33.547028, 38.468891, 25.658434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.615879, 38.603306, 25.844961>,  <33.730633, 38.827332, 26.155838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615879, 38.603306, 25.844961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532758, -0.580986, 0.615324,
		-0.796158, 0.590583, -0.131700,
		-0.286884, -0.560060, -0.777194,
		33.529816, 38.435287, 25.611803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118729, 38.618488, 26.294275>,  <33.730633, 38.827332, 26.155838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118729, 38.618488, 26.294275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.173252, 38.366009, 25.988855>,  <33.205967, 38.214520, 25.805603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.173252, 38.366009, 25.988855>,  <33.118729, 38.618488, 26.294275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173252, 38.366009, 25.988855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419759, -0.734933, 0.532612,
		-0.897342, 0.247907, -0.365130,
		0.136308, -0.631201, -0.763548,
		33.214146, 38.176647, 25.759790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630951, 38.152115, 26.492386>,  <33.118729, 38.618488, 26.294275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630951, 38.152115, 26.492386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853703, 37.940022, 26.236654>,  <32.987354, 37.812767, 26.083216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853703, 37.940022, 26.236654>,  <32.630951, 38.152115, 26.492386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853703, 37.940022, 26.236654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027501, -0.757533, 0.652218,
		-0.830138, -0.380788, -0.407273,
		0.556880, -0.530230, -0.639329,
		33.020767, 37.780952, 26.044855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332325, 37.474392, 26.346968>,  <32.630951, 38.152115, 26.492386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332325, 37.474392, 26.346968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.717495, 37.414806, 26.257011>,  <32.948597, 37.379055, 26.203037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.717495, 37.414806, 26.257011>,  <32.332325, 37.474392, 26.346968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717495, 37.414806, 26.257011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037647, -0.751326, 0.658856,
		-0.267113, -0.642898, -0.717866,
		0.962929, -0.148964, -0.224892,
		33.006374, 37.370117, 26.189543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403267, 36.750774, 26.096466>,  <32.332325, 37.474392, 26.346968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403267, 36.750774, 26.096466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.777802, 36.837391, 26.207024>,  <33.002522, 36.889362, 26.273357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.777802, 36.837391, 26.207024>,  <32.403267, 36.750774, 26.096466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777802, 36.837391, 26.207024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050226, -0.861691, 0.504941,
		0.347505, -0.458910, -0.817705,
		0.936332, 0.216540, 0.276393,
		33.058701, 36.902351, 26.289942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.691944, 42.067814, 24.080627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.038826, 41.943848, 24.236532>,  <37.246956, 41.869469, 24.330074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.038826, 41.943848, 24.236532>,  <36.691944, 42.067814, 24.080627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038826, 41.943848, 24.236532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450249, -0.153694, 0.879576,
		-0.212691, -0.938259, -0.272823,
		0.867202, -0.309916, 0.389761,
		37.298988, 41.850872, 24.353460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504208, 41.615742, 24.576298>,  <36.691944, 42.067814, 24.080627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504208, 41.615742, 24.576298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.882675, 41.698944, 24.675499>,  <37.109756, 41.748867, 24.735020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.882675, 41.698944, 24.675499>,  <36.504208, 41.615742, 24.576298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882675, 41.698944, 24.675499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248036, -0.026348, 0.968392,
		0.207967, -0.977772, 0.026663,
		0.946165, 0.208007, 0.248002,
		37.166523, 41.761345, 24.749899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725853, 41.161987, 25.069523>,  <36.504208, 41.615742, 24.576298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725853, 41.161987, 25.069523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.021557, 41.421932, 25.140148>,  <37.198978, 41.577900, 25.182524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.021557, 41.421932, 25.140148>,  <36.725853, 41.161987, 25.069523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021557, 41.421932, 25.140148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106974, -0.145534, 0.983553,
		0.664871, -0.745987, -0.038068,
		0.739258, 0.649864, 0.176562,
		37.243336, 41.616890, 25.193117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024471, 40.855076, 25.532778>,  <36.725853, 41.161987, 25.069523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024471, 40.855076, 25.532778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.146664, 41.234802, 25.562372>,  <37.219978, 41.462639, 25.580130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.146664, 41.234802, 25.562372>,  <37.024471, 40.855076, 25.532778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146664, 41.234802, 25.562372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077267, -0.052731, 0.995615,
		0.949057, -0.309862, 0.057243,
		0.305485, 0.949318, 0.073986,
		37.238308, 41.519596, 25.584568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631851, 40.987598, 25.981743>,  <37.024471, 40.855076, 25.532778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631851, 40.987598, 25.981743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.408173, 41.319084, 25.990992>,  <37.273964, 41.517975, 25.996540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.408173, 41.319084, 25.990992>,  <37.631851, 40.987598, 25.981743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408173, 41.319084, 25.990992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097520, -0.093449, 0.990837,
		0.823277, 0.551822, 0.133072,
		-0.559201, 0.828710, 0.023121,
		37.240414, 41.567696, 25.997929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023205, 41.282784, 26.542444>,  <37.631851, 40.987598, 25.981743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023205, 41.282784, 26.542444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.664825, 41.455807, 26.502110>,  <37.449799, 41.559620, 26.477909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.664825, 41.455807, 26.502110>,  <38.023205, 41.282784, 26.542444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664825, 41.455807, 26.502110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110053, 0.003755, 0.993919,
		0.430310, 0.901596, 0.044240,
		-0.895947, 0.432562, -0.100839,
		37.396042, 41.585575, 26.471857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947361, 41.681316, 27.132723>,  <38.023205, 41.282784, 26.542444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947361, 41.681316, 27.132723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.559944, 41.696053, 27.034273>,  <37.327496, 41.704895, 26.975203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.559944, 41.696053, 27.034273>,  <37.947361, 41.681316, 27.132723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559944, 41.696053, 27.034273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238612, 0.143505, 0.960453,
		0.070706, 0.988963, -0.130199,
		-0.968538, 0.036842, -0.246125,
		37.269382, 41.707104, 26.960436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689140, 42.156879, 27.619228>,  <37.947361, 41.681316, 27.132723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689140, 42.156879, 27.619228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.370029, 41.941502, 27.510685>,  <37.178562, 41.812275, 27.445559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.370029, 41.941502, 27.510685>,  <37.689140, 42.156879, 27.619228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370029, 41.941502, 27.510685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309107, -0.021184, 0.950791,
		-0.517698, 0.842394, -0.149538,
		-0.797773, -0.538446, -0.271357,
		37.130699, 41.779968, 27.429277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080185, 42.489056, 27.891157>,  <37.689140, 42.156879, 27.619228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080185, 42.489056, 27.891157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.997616, 42.103073, 27.826347>,  <36.948074, 41.871483, 27.787460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.997616, 42.103073, 27.826347>,  <37.080185, 42.489056, 27.891157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997616, 42.103073, 27.826347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338254, -0.085008, 0.937208,
		-0.918136, 0.248268, -0.308852,
		-0.206424, -0.964954, -0.162027,
		36.935688, 41.813587, 27.777739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583652, 42.498905, 28.251143>,  <37.080185, 42.489056, 27.891157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583652, 42.498905, 28.251143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.645969, 42.109764, 28.182688>,  <36.683357, 41.876278, 28.141615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.645969, 42.109764, 28.182688>,  <36.583652, 42.498905, 28.251143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645969, 42.109764, 28.182688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216362, -0.202652, 0.955049,
		-0.963803, -0.111760, -0.242060,
		0.155790, -0.972853, -0.171137,
		36.692707, 41.817909, 28.131348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020920, 42.079475, 28.549383>,  <36.583652, 42.498905, 28.251143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020920, 42.079475, 28.549383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.339367, 41.839764, 28.515759>,  <36.530434, 41.695938, 28.495584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.339367, 41.839764, 28.515759>,  <36.020920, 42.079475, 28.549383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339367, 41.839764, 28.515759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041006, -0.192013, 0.980535,
		-0.603751, -0.777174, -0.177439,
		0.796117, -0.599275, -0.084059,
		36.578201, 41.659981, 28.490541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786835, 41.570099, 29.011967>,  <36.020920, 42.079475, 28.549383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786835, 41.570099, 29.011967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.183811, 41.574047, 28.963041>,  <36.421997, 41.576416, 28.933687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.183811, 41.574047, 28.963041>,  <35.786835, 41.570099, 29.011967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183811, 41.574047, 28.963041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118813, -0.326440, 0.937721,
		-0.030675, -0.945166, -0.325145,
		0.992443, 0.009867, -0.122312,
		36.481544, 41.577007, 28.926348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590199, 41.012642, 28.486429>,  <35.786835, 41.570099, 29.011967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590199, 41.012642, 28.486429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.203808, 41.083858, 28.561474>,  <34.971973, 41.126587, 28.606501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.203808, 41.083858, 28.561474>,  <35.590199, 41.012642, 28.486429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203808, 41.083858, 28.561474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054670, 0.568424, -0.820917,
		-0.252802, -0.803240, -0.539348,
		-0.965972, 0.178043, 0.187612,
		34.914017, 41.137272, 28.617758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206707, 40.750267, 27.932417>,  <35.590199, 41.012642, 28.486429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206707, 40.750267, 27.932417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.983017, 41.035526, 28.101501>,  <34.848801, 41.206680, 28.202951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.983017, 41.035526, 28.101501>,  <35.206707, 40.750267, 27.932417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983017, 41.035526, 28.101501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208712, 0.372357, -0.904317,
		-0.802311, -0.593944, -0.059390,
		-0.559228, 0.713149, 0.422709,
		34.815247, 41.249470, 28.228313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696281, 40.808224, 27.413006>,  <35.206707, 40.750267, 27.932417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696281, 40.808224, 27.413006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.619869, 41.132767, 27.633986>,  <34.574020, 41.327492, 27.766573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.619869, 41.132767, 27.633986>,  <34.696281, 40.808224, 27.413006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619869, 41.132767, 27.633986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378466, 0.458414, -0.804127,
		-0.905688, -0.362697, 0.219501,
		-0.191032, 0.811361, 0.552448,
		34.562561, 41.376175, 27.799721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974365, 41.099987, 27.267080>,  <34.696281, 40.808224, 27.413006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974365, 41.099987, 27.267080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.199913, 41.401550, 27.401941>,  <34.335243, 41.582489, 27.482859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.199913, 41.401550, 27.401941>,  <33.974365, 41.099987, 27.267080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199913, 41.401550, 27.401941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375666, 0.597711, -0.708249,
		-0.735474, 0.272706, 0.620250,
		0.563874, 0.753905, 0.337155,
		34.369076, 41.627724, 27.503088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563427, 41.682858, 27.302078>,  <33.974365, 41.099987, 27.267080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563427, 41.682858, 27.302078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.925701, 41.852028, 27.290319>,  <34.143066, 41.953529, 27.283264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.925701, 41.852028, 27.290319>,  <33.563427, 41.682858, 27.302078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925701, 41.852028, 27.290319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267717, 0.516787, -0.813179,
		-0.328722, 0.744356, 0.581271,
		0.905687, 0.422926, -0.029397,
		34.197407, 41.978905, 27.281500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412315, 42.302460, 27.138737>,  <33.563427, 41.682858, 27.302078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412315, 42.302460, 27.138737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.806850, 42.329491, 27.078648>,  <34.043571, 42.345707, 27.042595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.806850, 42.329491, 27.078648>,  <33.412315, 42.302460, 27.138737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806850, 42.329491, 27.078648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160645, 0.596220, -0.786584,
		0.036411, 0.799972, 0.598931,
		0.986340, 0.067575, -0.150221,
		34.102753, 42.349762, 27.033581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534756, 42.985615, 26.973261>,  <33.412315, 42.302460, 27.138737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534756, 42.985615, 26.973261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.868912, 42.809956, 26.841032>,  <34.069405, 42.704559, 26.761694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.868912, 42.809956, 26.841032>,  <33.534756, 42.985615, 26.973261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868912, 42.809956, 26.841032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049411, 0.538980, -0.840868,
		0.547435, 0.718785, 0.428559,
		0.835389, -0.439145, -0.330573,
		34.119530, 42.678211, 26.741859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857929, 43.516853, 26.640848>,  <33.534756, 42.985615, 26.973261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857929, 43.516853, 26.640848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.001953, 43.182213, 26.475702>,  <34.088367, 42.981430, 26.376616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.001953, 43.182213, 26.475702>,  <33.857929, 43.516853, 26.640848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001953, 43.182213, 26.475702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226481, 0.507689, -0.831239,
		0.905022, 0.205787, 0.372271,
		0.360057, -0.836602, -0.412863,
		34.109970, 42.931232, 26.351843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520790, 43.542660, 26.324648>,  <33.857929, 43.516853, 26.640848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520790, 43.542660, 26.324648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.393288, 43.231571, 26.107929>,  <34.316788, 43.044918, 25.977898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.393288, 43.231571, 26.107929>,  <34.520790, 43.542660, 26.324648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393288, 43.231571, 26.107929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247604, 0.483443, -0.839628,
		0.914925, -0.401788, 0.038466,
		-0.318756, -0.777720, -0.541798,
		34.297661, 42.998257, 25.945389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010868, 43.414982, 25.726923>,  <34.520790, 43.542660, 26.324648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010868, 43.414982, 25.726923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.671997, 43.223492, 25.634743>,  <34.468674, 43.108597, 25.579435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.671997, 43.223492, 25.634743>,  <35.010868, 43.414982, 25.726923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671997, 43.223492, 25.634743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070717, 0.328283, -0.941928,
		0.526579, -0.814279, -0.244261,
		-0.847180, -0.478726, -0.230450,
		34.417843, 43.079872, 25.565607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177040, 43.018482, 25.128485>,  <35.010868, 43.414982, 25.726923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177040, 43.018482, 25.128485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.778072, 43.030972, 25.102648>,  <34.538692, 43.038467, 25.087145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.778072, 43.030972, 25.102648>,  <35.177040, 43.018482, 25.128485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778072, 43.030972, 25.102648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068719, 0.157032, -0.985200,
		-0.020622, -0.987100, -0.158774,
		-0.997423, 0.031228, -0.064594,
		34.478844, 43.040340, 25.083269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139370, 42.648373, 24.514441>,  <35.177040, 43.018482, 25.128485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139370, 42.648373, 24.514441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.807011, 42.861073, 24.579988>,  <34.607594, 42.988693, 24.619318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.807011, 42.861073, 24.579988>,  <35.139370, 42.648373, 24.514441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807011, 42.861073, 24.579988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094901, 0.154766, -0.983383,
		-0.548272, -0.832642, -0.078131,
		-0.830898, 0.531746, 0.163872,
		34.557739, 43.020596, 24.629150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682049, 42.594906, 23.894640>,  <35.139370, 42.648373, 24.514441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682049, 42.594906, 23.894640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.527248, 42.920975, 24.067024>,  <34.434368, 43.116615, 24.170456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.527248, 42.920975, 24.067024>,  <34.682049, 42.594906, 23.894640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527248, 42.920975, 24.067024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105699, 0.503519, -0.857494,
		-0.916000, -0.286300, -0.281026,
		-0.387003, 0.815169, 0.430962,
		34.411148, 43.165524, 24.196312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144958, 42.237778, 24.330130>,  <34.682049, 42.594906, 23.894640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144958, 42.237778, 24.330130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.085636, 42.044128, 23.985193>,  <34.050045, 41.927937, 23.778233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.085636, 42.044128, 23.985193>,  <34.144958, 42.237778, 24.330130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085636, 42.044128, 23.985193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111260, -0.858278, 0.500980,
		-0.982663, 0.170241, 0.073422,
		-0.148304, -0.484125, -0.862339,
		34.041145, 41.898891, 23.726492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494156, 41.900120, 24.405577>,  <34.144958, 42.237778, 24.330130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494156, 41.900120, 24.405577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.689941, 41.700623, 24.119450>,  <33.807411, 41.580925, 23.947773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.689941, 41.700623, 24.119450>,  <33.494156, 41.900120, 24.405577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689941, 41.700623, 24.119450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158456, -0.857507, 0.489462,
		-0.857507, -0.126227, -0.498747,
		-0.489462, 0.498747, 0.715317,
		33.836781, 41.550999, 23.904854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062531, 41.285290, 24.339832>,  <33.494156, 41.900120, 24.405577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062531, 41.285290, 24.339832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.403793, 41.203625, 24.147820>,  <33.608551, 41.154625, 24.032612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.403793, 41.203625, 24.147820>,  <33.062531, 41.285290, 24.339832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403793, 41.203625, 24.147820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028154, -0.900863, 0.433189,
		-0.520886, -0.383095, -0.762834,
		0.853162, -0.204165, -0.480033,
		33.659740, 41.142376, 24.003809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933952, 40.800095, 23.922794>,  <33.062531, 41.285290, 24.339832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933952, 40.800095, 23.922794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.329983, 40.769989, 23.970259>,  <33.567600, 40.751926, 23.998737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.329983, 40.769989, 23.970259>,  <32.933952, 40.800095, 23.922794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329983, 40.769989, 23.970259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126524, -0.844826, 0.519866,
		0.061123, -0.529722, -0.845966,
		0.990079, -0.075260, 0.118661,
		33.627007, 40.747410, 24.005857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141613, 40.142895, 23.509176>,  <32.933952, 40.800095, 23.922794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141613, 40.142895, 23.509176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.404446, 40.231178, 23.797491>,  <33.562145, 40.284149, 23.970480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.404446, 40.231178, 23.797491>,  <33.141613, 40.142895, 23.509176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404446, 40.231178, 23.797491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087032, -0.927571, 0.363369,
		0.748782, -0.301493, -0.590277,
		0.657078, 0.220711, 0.720788,
		33.601570, 40.297390, 24.013727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637264, 39.576351, 23.472086>,  <33.141613, 40.142895, 23.509176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637264, 39.576351, 23.472086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.696972, 39.734081, 23.834793>,  <33.732796, 39.828720, 24.052418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.696972, 39.734081, 23.834793>,  <33.637264, 39.576351, 23.472086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696972, 39.734081, 23.834793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036930, -0.914180, 0.403623,
		0.988107, -0.093735, -0.121895,
		0.149268, 0.394321, 0.906769,
		33.741753, 39.852379, 24.106823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156597, 39.237190, 23.736658>,  <33.637264, 39.576351, 23.472086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156597, 39.237190, 23.736658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.983620, 39.378986, 24.068279>,  <33.879833, 39.464062, 24.267252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.983620, 39.378986, 24.068279>,  <34.156597, 39.237190, 23.736658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983620, 39.378986, 24.068279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077464, -0.930682, 0.357533,
		0.898326, 0.090392, 0.429930,
		-0.432446, 0.354486, 0.829054,
		33.853886, 39.485332, 24.316996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511917, 38.875027, 24.306551>,  <34.156597, 39.237190, 23.736658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511917, 38.875027, 24.306551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.160542, 39.000996, 24.450308>,  <33.949715, 39.076576, 24.536562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.160542, 39.000996, 24.450308>,  <34.511917, 38.875027, 24.306551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160542, 39.000996, 24.450308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076690, -0.835273, 0.544462,
		0.471652, 0.450717, 0.757891,
		-0.878444, 0.314919, 0.359393,
		33.897007, 39.095470, 24.558126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269760, 38.893055, 24.650055>,  <34.511917, 38.875027, 24.306551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269760, 38.893055, 24.650055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.575939, 38.659824, 24.541166>,  <35.759647, 38.519886, 24.475832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.575939, 38.659824, 24.541166>,  <35.269760, 38.893055, 24.650055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575939, 38.659824, 24.541166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194925, 0.613262, -0.765451,
		0.613262, 0.532851, 0.583078,
		0.765451, -0.583078, -0.272224,
		35.805573, 38.484901, 24.459499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742966, 39.448906, 24.557055>,  <35.269760, 38.893055, 24.650055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742966, 39.448906, 24.557055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.848038, 39.108528, 24.375111>,  <35.911079, 38.904301, 24.265944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.848038, 39.108528, 24.375111>,  <35.742966, 39.448906, 24.557055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848038, 39.108528, 24.375111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310363, 0.520878, -0.795211,
		0.913604, 0.067715, 0.400926,
		0.262681, -0.850941, -0.454861,
		35.926842, 38.853245, 24.238653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398125, 39.499023, 24.360418>,  <35.742966, 39.448906, 24.557055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398125, 39.499023, 24.360418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.242832, 39.238087, 24.100040>,  <36.149654, 39.081524, 23.943813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.242832, 39.238087, 24.100040>,  <36.398125, 39.499023, 24.360418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242832, 39.238087, 24.100040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341528, 0.554205, -0.759089,
		0.855939, -0.517020, 0.007630,
		-0.388235, -0.652340, -0.650942,
		36.126362, 39.042385, 23.904758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864624, 39.397011, 23.824121>,  <36.398125, 39.499023, 24.360418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864624, 39.397011, 23.824121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.533516, 39.279560, 23.632883>,  <36.334850, 39.209087, 23.518141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.533516, 39.279560, 23.632883>,  <36.864624, 39.397011, 23.824121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533516, 39.279560, 23.632883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208613, 0.629956, -0.748088,
		0.520842, -0.718983, -0.460204,
		-0.827771, -0.293631, -0.478097,
		36.285183, 39.191471, 23.489454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087063, 39.324146, 23.221348>,  <36.864624, 39.397011, 23.824121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087063, 39.324146, 23.221348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.691109, 39.327251, 23.164698>,  <36.453537, 39.329113, 23.130707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.691109, 39.327251, 23.164698>,  <37.087063, 39.324146, 23.221348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691109, 39.327251, 23.164698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124833, 0.521714, -0.843938,
		0.067338, -0.853085, -0.517408,
		-0.989890, 0.007761, -0.141625,
		36.394142, 39.329578, 23.122210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031738, 39.398811, 22.524069>,  <37.087063, 39.324146, 23.221348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031738, 39.398811, 22.524069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.671844, 39.533836, 22.634722>,  <36.455910, 39.614853, 22.701113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.671844, 39.533836, 22.634722>,  <37.031738, 39.398811, 22.524069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671844, 39.533836, 22.634722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036221, 0.689411, -0.723464,
		-0.434929, -0.640907, -0.632515,
		-0.899736, 0.337566, 0.276631,
		36.401924, 39.635105, 22.717710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647141, 39.551701, 21.915596>,  <37.031738, 39.398811, 22.524069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647141, 39.551701, 21.915596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.444782, 39.761341, 22.189642>,  <36.323368, 39.887127, 22.354071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.444782, 39.761341, 22.189642>,  <36.647141, 39.551701, 21.915596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444782, 39.761341, 22.189642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147972, 0.729749, -0.667511,
		-0.849808, -0.439070, -0.291625,
		-0.505897, 0.524104, 0.685116,
		36.293015, 39.918571, 22.395176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996841, 39.762768, 21.544527>,  <36.647141, 39.551701, 21.915596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996841, 39.762768, 21.544527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.068790, 40.002995, 21.856159>,  <36.111958, 40.147133, 22.043139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.068790, 40.002995, 21.856159>,  <35.996841, 39.762768, 21.544527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068790, 40.002995, 21.856159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248240, 0.794075, -0.554817,
		-0.951853, -0.093603, 0.291916,
		0.179871, 0.600569, 0.779079,
		36.122753, 40.183167, 22.089882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538986, 40.259895, 21.410166>,  <35.996841, 39.762768, 21.544527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538986, 40.259895, 21.410166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.818478, 40.407906, 21.655069>,  <35.986172, 40.496712, 21.802011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.818478, 40.407906, 21.655069>,  <35.538986, 40.259895, 21.410166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818478, 40.407906, 21.655069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126603, 0.778372, -0.614906,
		-0.704096, 0.507166, 0.497023,
		0.698728, 0.370028, 0.612257,
		36.028095, 40.518913, 21.838747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.191341, 33.754745, 36.186298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.449089, 34.044415, 36.088032>,  <37.603737, 34.218216, 36.029072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.449089, 34.044415, 36.088032>,  <37.191341, 33.754745, 36.186298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449089, 34.044415, 36.088032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157966, -0.188270, -0.969330,
		-0.748217, 0.663417, -0.006921,
		0.644374, 0.724176, -0.245664,
		37.642403, 34.261669, 36.014332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860214, 34.232925, 35.759861>,  <37.191341, 33.754745, 36.186298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860214, 34.232925, 35.759861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242615, 34.317524, 35.678539>,  <37.472054, 34.368282, 35.629745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242615, 34.317524, 35.678539>,  <36.860214, 34.232925, 35.759861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242615, 34.317524, 35.678539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184373, -0.105879, -0.977137,
		-0.228185, 0.971627, -0.062227,
		0.956001, 0.211495, -0.203302,
		37.529415, 34.380974, 35.617550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879326, 34.861427, 35.277203>,  <36.860214, 34.232925, 35.759861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879326, 34.861427, 35.277203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213211, 34.647129, 35.226234>,  <37.413540, 34.518551, 35.195652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213211, 34.647129, 35.226234>,  <36.879326, 34.861427, 35.277203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213211, 34.647129, 35.226234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093299, 0.090466, -0.991520,
		0.542729, 0.839520, 0.025529,
		0.834710, -0.535745, -0.127425,
		37.463623, 34.486404, 35.188007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207516, 35.155220, 34.615189>,  <36.879326, 34.861427, 35.277203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207516, 35.155220, 34.615189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.377640, 34.807117, 34.714592>,  <37.479713, 34.598255, 34.774235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.377640, 34.807117, 34.714592>,  <37.207516, 35.155220, 34.615189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377640, 34.807117, 34.714592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041034, -0.292843, -0.955280,
		0.904116, 0.396095, -0.160260,
		0.425313, -0.870259, 0.248511,
		37.505234, 34.546040, 34.789146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733261, 35.039654, 34.078300>,  <37.207516, 35.155220, 34.615189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733261, 35.039654, 34.078300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.640427, 34.684345, 34.236847>,  <37.584724, 34.471161, 34.331974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.640427, 34.684345, 34.236847>,  <37.733261, 35.039654, 34.078300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640427, 34.684345, 34.236847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362321, -0.299222, -0.882717,
		0.902695, -0.348481, -0.252394,
		-0.232089, -0.888272, 0.396369,
		37.570801, 34.417862, 34.355759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069012, 34.477798, 33.621807>,  <37.733261, 35.039654, 34.078300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069012, 34.477798, 33.621807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.770443, 34.312794, 33.830685>,  <37.591301, 34.213791, 33.956009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.770443, 34.312794, 33.830685>,  <38.069012, 34.477798, 33.621807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770443, 34.312794, 33.830685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507004, -0.155752, -0.847754,
		0.431043, -0.897538, -0.092889,
		-0.746424, -0.412514, 0.522192,
		37.546516, 34.189041, 33.987343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922703, 33.852798, 33.249859>,  <38.069012, 34.477798, 33.621807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922703, 33.852798, 33.249859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.583340, 33.909653, 33.453823>,  <37.379723, 33.943768, 33.576202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.583340, 33.909653, 33.453823>,  <37.922703, 33.852798, 33.249859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583340, 33.909653, 33.453823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528895, -0.267568, -0.805405,
		0.021957, -0.952997, 0.302182,
		-0.848404, 0.142138, 0.509911,
		37.328819, 33.952293, 33.606796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462208, 33.298378, 33.029610>,  <37.922703, 33.852798, 33.249859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462208, 33.298378, 33.029610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213707, 33.574059, 33.178768>,  <37.064606, 33.739468, 33.268261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213707, 33.574059, 33.178768>,  <37.462208, 33.298378, 33.029610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213707, 33.574059, 33.178768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668389, -0.217666, -0.711251,
		-0.409031, -0.691100, 0.595881,
		-0.621248, 0.689204, 0.372892,
		37.027332, 33.780819, 33.290634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738144, 33.070602, 32.891209>,  <37.462208, 33.298378, 33.029610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738144, 33.070602, 32.891209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.689354, 33.459812, 32.969532>,  <36.660080, 33.693340, 33.016525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.689354, 33.459812, 32.969532>,  <36.738144, 33.070602, 32.891209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689354, 33.459812, 32.969532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595985, 0.085949, -0.798383,
		-0.793677, -0.214081, 0.569426,
		-0.121977, 0.973027, 0.195805,
		36.652760, 33.751720, 33.028275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000118, 33.140045, 32.904556>,  <36.738144, 33.070602, 32.891209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000118, 33.140045, 32.904556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.189064, 33.483562, 32.825211>,  <36.302429, 33.689674, 32.777603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.189064, 33.483562, 32.825211>,  <36.000118, 33.140045, 32.904556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189064, 33.483562, 32.825211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529505, 0.096578, -0.842791,
		-0.704626, 0.503137, 0.500355,
		0.472363, 0.858793, -0.198363,
		36.330772, 33.741199, 32.765701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518036, 33.626755, 32.545094>,  <36.000118, 33.140045, 32.904556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518036, 33.626755, 32.545094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851410, 33.822151, 32.441738>,  <36.051434, 33.939392, 32.379726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851410, 33.822151, 32.441738>,  <35.518036, 33.626755, 32.545094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851410, 33.822151, 32.441738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295110, -0.001899, -0.955461,
		-0.467230, 0.872564, 0.142577,
		0.833431, 0.488496, -0.258389,
		36.101440, 33.968700, 32.364220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290443, 34.264473, 32.153835>,  <35.518036, 33.626755, 32.545094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290443, 34.264473, 32.153835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.663513, 34.162056, 32.052200>,  <35.887356, 34.100605, 31.991220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.663513, 34.162056, 32.052200>,  <35.290443, 34.264473, 32.153835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663513, 34.162056, 32.052200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230379, 0.119199, -0.965773,
		0.277562, 0.959289, 0.052189,
		0.932676, -0.256039, -0.254085,
		35.943317, 34.085243, 31.975975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772511, 34.738609, 31.899214>,  <35.290443, 34.264473, 32.153835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772511, 34.738609, 31.899214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.390770, 34.630085, 31.849260>,  <34.161724, 34.564968, 31.819288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.390770, 34.630085, 31.849260>,  <34.772511, 34.738609, 31.899214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390770, 34.630085, 31.849260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146426, 0.060588, 0.987364,
		-0.260318, 0.960582, -0.097550,
		-0.954355, -0.271313, -0.124882,
		34.104462, 34.548691, 31.811796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310478, 35.243309, 32.259926>,  <34.772511, 34.738609, 31.899214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310478, 35.243309, 32.259926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080284, 34.920387, 32.207642>,  <33.942169, 34.726635, 32.176270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080284, 34.920387, 32.207642>,  <34.310478, 35.243309, 32.259926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080284, 34.920387, 32.207642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300862, 0.060365, 0.951755,
		-0.760463, 0.587043, -0.277625,
		-0.575481, -0.807302, -0.130713,
		33.907639, 34.678196, 32.168427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580288, 35.306801, 32.602776>,  <34.310478, 35.243309, 32.259926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580288, 35.306801, 32.602776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655361, 34.914364, 32.583912>,  <33.700405, 34.678902, 32.572594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655361, 34.914364, 32.583912>,  <33.580288, 35.306801, 32.602776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655361, 34.914364, 32.583912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099214, -0.066705, 0.992828,
		-0.977206, -0.181657, -0.109858,
		0.187683, -0.981097, -0.047162,
		33.711666, 34.620033, 32.569763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106606, 34.898579, 33.162655>,  <33.580288, 35.306801, 32.602776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106606, 34.898579, 33.162655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410309, 34.656063, 33.068054>,  <33.592533, 34.510551, 33.011292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410309, 34.656063, 33.068054>,  <33.106606, 34.898579, 33.162655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410309, 34.656063, 33.068054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033574, -0.326438, 0.944622,
		-0.649921, -0.725154, -0.227495,
		0.759260, -0.606292, -0.236506,
		33.638088, 34.474174, 32.997101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935825, 34.201790, 33.494263>,  <33.106606, 34.898579, 33.162655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935825, 34.201790, 33.494263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.328445, 34.201065, 33.417789>,  <33.564018, 34.200630, 33.371906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.328445, 34.201065, 33.417789>,  <32.935825, 34.201790, 33.494263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328445, 34.201065, 33.417789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182089, -0.295962, 0.937683,
		-0.058278, -0.955198, -0.290173,
		0.981554, -0.001809, -0.191179,
		33.622913, 34.200523, 33.360435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240597, 33.565178, 33.635746>,  <32.935825, 34.201790, 33.494263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240597, 33.565178, 33.635746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.574436, 33.783817, 33.663086>,  <33.774738, 33.915001, 33.679489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.574436, 33.783817, 33.663086>,  <33.240597, 33.565178, 33.635746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574436, 33.783817, 33.663086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292575, -0.544980, 0.785746,
		0.466738, -0.635785, -0.614762,
		0.834599, 0.546602, 0.068348,
		33.824818, 33.947796, 33.683590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701160, 33.163948, 34.097992>,  <33.240597, 33.565178, 33.635746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701160, 33.163948, 34.097992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.899151, 33.510426, 34.070572>,  <34.017944, 33.718315, 34.054119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.899151, 33.510426, 34.070572>,  <33.701160, 33.163948, 34.097992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899151, 33.510426, 34.070572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462146, -0.195635, 0.864955,
		0.735812, -0.459812, -0.497145,
		0.494976, 0.866199, -0.068550,
		34.047642, 33.770287, 34.050007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394962, 33.064774, 34.346191>,  <33.701160, 33.163948, 34.097992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394962, 33.064774, 34.346191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324696, 33.451031, 34.422791>,  <34.282536, 33.682785, 34.468750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324696, 33.451031, 34.422791>,  <34.394962, 33.064774, 34.346191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324696, 33.451031, 34.422791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244973, -0.145525, 0.958546,
		0.953483, 0.215296, -0.210993,
		-0.175667, 0.965645, 0.191498,
		34.271996, 33.740723, 34.480240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003963, 33.319988, 34.685944>,  <34.394962, 33.064774, 34.346191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003963, 33.319988, 34.685944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703182, 33.563602, 34.786850>,  <34.522713, 33.709770, 34.847393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703182, 33.563602, 34.786850>,  <35.003963, 33.319988, 34.685944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703182, 33.563602, 34.786850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264971, -0.071163, 0.961627,
		0.603616, 0.789945, -0.107865,
		-0.751956, 0.609034, 0.252268,
		34.477596, 33.746311, 34.862530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313675, 33.717033, 35.234959>,  <35.003963, 33.319988, 34.685944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313675, 33.717033, 35.234959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.915737, 33.753311, 35.253105>,  <34.676975, 33.775078, 35.263992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.915737, 33.753311, 35.253105>,  <35.313675, 33.717033, 35.234959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915737, 33.753311, 35.253105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048200, 0.029305, 0.998408,
		0.089221, 0.995447, -0.033525,
		-0.994845, 0.090695, 0.045366,
		34.617283, 33.780521, 35.266716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239819, 34.086212, 35.848831>,  <35.313675, 33.717033, 35.234959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239819, 34.086212, 35.848831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.878124, 33.930325, 35.779003>,  <34.661106, 33.836792, 35.737106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.878124, 33.930325, 35.779003>,  <35.239819, 34.086212, 35.848831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878124, 33.930325, 35.779003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081165, -0.244504, 0.966245,
		-0.419243, 0.887885, 0.189459,
		-0.904238, -0.389714, -0.174572,
		34.606853, 33.813412, 35.726631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859230, 34.457661, 36.344669>,  <35.239819, 34.086212, 35.848831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859230, 34.457661, 36.344669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649273, 34.125126, 36.271603>,  <34.523300, 33.925606, 36.227760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649273, 34.125126, 36.271603>,  <34.859230, 34.457661, 36.344669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649273, 34.125126, 36.271603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212584, -0.079771, 0.973881,
		-0.824194, 0.550016, -0.134858,
		-0.524892, -0.831336, -0.182671,
		34.491806, 33.875725, 36.216801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356503, 34.508198, 36.823631>,  <34.859230, 34.457661, 36.344669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356503, 34.508198, 36.823631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352612, 34.129959, 36.693554>,  <34.350277, 33.903015, 36.615509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352612, 34.129959, 36.693554>,  <34.356503, 34.508198, 36.823631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352612, 34.129959, 36.693554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187836, -0.317689, 0.929404,
		-0.982152, 0.070127, -0.174526,
		-0.009731, -0.945598, -0.325192,
		34.349693, 33.846279, 36.595997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650219, 34.280190, 36.911949>,  <34.356503, 34.508198, 36.823631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650219, 34.280190, 36.911949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.920300, 33.985237, 36.919586>,  <34.082348, 33.808266, 36.924168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.920300, 33.985237, 36.919586>,  <33.650219, 34.280190, 36.911949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920300, 33.985237, 36.919586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186164, -0.145311, 0.971714,
		-0.713751, -0.659660, -0.235389,
		0.675206, -0.737383, 0.019089,
		34.122860, 33.764023, 36.925312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368450, 33.798695, 37.340103>,  <33.650219, 34.280190, 36.911949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368450, 33.798695, 37.340103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753990, 33.692131, 37.341724>,  <33.985313, 33.628193, 37.342697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753990, 33.692131, 37.341724>,  <33.368450, 33.798695, 37.340103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753990, 33.692131, 37.341724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117424, -0.411079, 0.904005,
		-0.239165, -0.871804, -0.427502,
		0.963853, -0.266406, 0.004054,
		34.043144, 33.612209, 37.342941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177006, 34.570145, 37.450272>,  <33.368450, 33.798695, 37.340103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177006, 34.570145, 37.450272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.350838, 34.923611, 37.519875>,  <33.455135, 35.135689, 37.561634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.350838, 34.923611, 37.519875>,  <33.177006, 34.570145, 37.450272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350838, 34.923611, 37.519875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298398, 0.323562, -0.897923,
		-0.849763, 0.338298, 0.404298,
		0.434581, 0.883664, 0.174004,
		33.481213, 35.188709, 37.572075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810593, 35.146805, 36.982803>,  <33.177006, 34.570145, 37.450272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810593, 35.146805, 36.982803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167915, 35.293140, 37.087231>,  <33.382309, 35.380943, 37.149887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167915, 35.293140, 37.087231>,  <32.810593, 35.146805, 36.982803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167915, 35.293140, 37.087231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131993, 0.341713, -0.930489,
		-0.429624, 0.865674, 0.256967,
		0.893309, 0.365843, 0.261071,
		33.435909, 35.402893, 37.165550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748356, 35.814129, 36.783333>,  <32.810593, 35.146805, 36.982803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748356, 35.814129, 36.783333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145924, 35.779915, 36.811092>,  <33.384464, 35.759388, 36.827747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.145924, 35.779915, 36.811092>,  <32.748356, 35.814129, 36.783333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145924, 35.779915, 36.811092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105378, 0.554898, -0.825217,
		0.032074, 0.827509, 0.560535,
		0.993915, -0.085536, 0.069403,
		33.444099, 35.754253, 36.831913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061768, 36.524036, 36.966030>,  <32.748356, 35.814129, 36.783333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061768, 36.524036, 36.966030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.280510, 36.271473, 36.746113>,  <33.411755, 36.119934, 36.614162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.280510, 36.271473, 36.746113>,  <33.061768, 36.524036, 36.966030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280510, 36.271473, 36.746113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114379, 0.594178, -0.796159,
		0.829379, 0.498267, 0.252708,
		0.546853, -0.631413, -0.549790,
		33.444565, 36.082050, 36.581177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600300, 36.959534, 36.629128>,  <33.061768, 36.524036, 36.966030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600300, 36.959534, 36.629128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.624866, 36.608990, 36.438042>,  <33.639606, 36.398663, 36.323391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.624866, 36.608990, 36.438042>,  <33.600300, 36.959534, 36.629128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624866, 36.608990, 36.438042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045361, 0.480577, -0.875779,
		0.997081, 0.032115, 0.069266,
		0.061413, -0.876364, -0.477717,
		33.643291, 36.346081, 36.294727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997440, 37.106701, 36.091377>,  <33.600300, 36.959534, 36.629128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997440, 37.106701, 36.091377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867489, 36.746670, 35.975235>,  <33.789516, 36.530651, 35.905548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867489, 36.746670, 35.975235>,  <33.997440, 37.106701, 36.091377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867489, 36.746670, 35.975235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059718, 0.286877, -0.956104,
		0.943868, -0.327959, -0.039449,
		-0.324880, -0.900080, -0.290359,
		33.770023, 36.476646, 35.888126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473858, 36.840981, 35.530369>,  <33.997440, 37.106701, 36.091377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473858, 36.840981, 35.530369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.108528, 36.681210, 35.498657>,  <33.889328, 36.585346, 35.479630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.108528, 36.681210, 35.498657>,  <34.473858, 36.840981, 35.530369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108528, 36.681210, 35.498657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004588, 0.204767, -0.978800,
		0.407198, -0.893602, -0.188852,
		-0.913329, -0.399432, -0.079281,
		33.834530, 36.561378, 35.474873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557850, 36.333820, 34.940109>,  <34.473858, 36.840981, 35.530369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557850, 36.333820, 34.940109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170509, 36.412079, 35.002090>,  <33.938103, 36.459034, 35.039280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170509, 36.412079, 35.002090>,  <34.557850, 36.333820, 34.940109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170509, 36.412079, 35.002090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112969, 0.210004, -0.971152,
		-0.222546, -0.957925, -0.181256,
		-0.968355, 0.195650, 0.154951,
		33.880001, 36.470772, 35.048576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205616, 35.964321, 34.517368>,  <34.557850, 36.333820, 34.940109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205616, 35.964321, 34.517368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964985, 36.276340, 34.586216>,  <33.820606, 36.463551, 34.627525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964985, 36.276340, 34.586216>,  <34.205616, 35.964321, 34.517368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964985, 36.276340, 34.586216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073500, 0.160505, -0.984294,
		-0.795423, -0.604784, -0.039223,
		-0.601581, 0.780047, 0.172121,
		33.784512, 36.510353, 34.637852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822346, 35.983906, 33.869995>,  <34.205616, 35.964321, 34.517368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822346, 35.983906, 33.869995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741882, 36.327782, 34.057812>,  <33.693604, 36.534107, 34.170502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741882, 36.327782, 34.057812>,  <33.822346, 35.983906, 33.869995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741882, 36.327782, 34.057812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093706, 0.460250, -0.882830,
		-0.975067, -0.221585, -0.012024,
		-0.201156, 0.859692, 0.469538,
		33.681534, 36.585690, 34.198673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262962, 36.268494, 33.511429>,  <33.822346, 35.983906, 33.869995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262962, 36.268494, 33.511429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.415840, 36.588692, 33.696091>,  <33.507568, 36.780811, 33.806889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.415840, 36.588692, 33.696091>,  <33.262962, 36.268494, 33.511429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415840, 36.588692, 33.696091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240519, 0.568541, -0.786710,
		-0.892231, 0.189640, 0.409829,
		0.382196, 0.800499, 0.461658,
		33.530499, 36.828842, 33.834587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798210, 36.796375, 33.330906>,  <33.262962, 36.268494, 33.511429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798210, 36.796375, 33.330906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112621, 37.004803, 33.463963>,  <33.301266, 37.129860, 33.543797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112621, 37.004803, 33.463963>,  <32.798210, 36.796375, 33.330906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112621, 37.004803, 33.463963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190915, 0.716393, -0.671068,
		-0.587976, 0.463970, 0.662583,
		0.786025, 0.521069, 0.332643,
		33.348431, 37.161125, 33.563755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567085, 37.580528, 33.458649>,  <32.798210, 36.796375, 33.330906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567085, 37.580528, 33.458649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962608, 37.577187, 33.399055>,  <33.199921, 37.575184, 33.363300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.962608, 37.577187, 33.399055>,  <32.567085, 37.580528, 33.458649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962608, 37.577187, 33.399055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100226, 0.702498, -0.704593,
		0.110541, 0.711636, 0.693797,
		0.988805, -0.008350, -0.148980,
		33.259251, 37.574680, 33.354362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741467, 38.242443, 33.347038>,  <32.567085, 37.580528, 33.458649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741467, 38.242443, 33.347038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051102, 38.033318, 33.204231>,  <33.236881, 37.907845, 33.118546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051102, 38.033318, 33.204231>,  <32.741467, 38.242443, 33.347038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051102, 38.033318, 33.204231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046855, 0.609699, -0.791247,
		0.631345, 0.595765, 0.496455,
		0.774085, -0.522811, -0.357016,
		33.283329, 37.876472, 33.097126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201084, 38.766064, 33.083935>,  <32.741467, 38.242443, 33.347038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201084, 38.766064, 33.083935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353909, 38.456646, 32.881683>,  <33.445602, 38.270996, 32.760334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353909, 38.456646, 32.881683>,  <33.201084, 38.766064, 33.083935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353909, 38.456646, 32.881683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052221, 0.564329, -0.823897,
		0.922661, 0.288373, 0.256003,
		0.382059, -0.773546, -0.505625,
		33.468525, 38.224583, 32.729996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814919, 38.973740, 32.794777>,  <33.201084, 38.766064, 33.083935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814919, 38.973740, 32.794777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.730335, 38.656506, 32.566284>,  <33.679585, 38.466164, 32.429188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.730335, 38.656506, 32.566284>,  <33.814919, 38.973740, 32.794777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730335, 38.656506, 32.566284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086456, 0.566978, -0.819183,
		0.973557, -0.222606, -0.051323,
		-0.211454, -0.793084, -0.571231,
		33.666901, 38.418579, 32.394917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417072, 38.872250, 32.305676>,  <33.814919, 38.973740, 32.794777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417072, 38.872250, 32.305676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075012, 38.717110, 32.168098>,  <33.869778, 38.624027, 32.085552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075012, 38.717110, 32.168098>,  <34.417072, 38.872250, 32.305676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075012, 38.717110, 32.168098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132500, 0.477911, -0.868358,
		0.501172, -0.788143, -0.357292,
		-0.855144, -0.387856, -0.343944,
		33.818470, 38.600754, 32.064915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605755, 38.638111, 31.734449>,  <34.417072, 38.872250, 32.305676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605755, 38.638111, 31.734449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212685, 38.694756, 31.686623>,  <33.976841, 38.728741, 31.657927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212685, 38.694756, 31.686623>,  <34.605755, 38.638111, 31.734449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212685, 38.694756, 31.686623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170436, 0.437057, -0.883138,
		-0.072804, -0.888216, -0.453621,
		-0.982676, 0.141609, -0.119565,
		33.917881, 38.737240, 31.650753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431850, 38.387707, 31.137743>,  <34.605755, 38.638111, 31.734449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431850, 38.387707, 31.137743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.111652, 38.619804, 31.197792>,  <33.919533, 38.759064, 31.233822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.111652, 38.619804, 31.197792>,  <34.431850, 38.387707, 31.137743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111652, 38.619804, 31.197792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027087, 0.285249, -0.958071,
		-0.598733, -0.762860, -0.244056,
		-0.800491, 0.580240, 0.150124,
		33.871506, 38.793877, 31.242830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113384, 38.312134, 30.547464>,  <34.431850, 38.387707, 31.137743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113384, 38.312134, 30.547464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.941021, 38.646858, 30.682562>,  <33.837605, 38.847691, 30.763620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.941021, 38.646858, 30.682562>,  <34.113384, 38.312134, 30.547464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941021, 38.646858, 30.682562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027782, 0.361795, -0.931844,
		-0.901968, -0.410922, -0.132652,
		-0.430908, 0.836808, 0.337744,
		33.811749, 38.897900, 30.783886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643242, 38.564274, 30.010252>,  <34.113384, 38.312134, 30.547464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643242, 38.564274, 30.010252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737537, 38.871719, 30.248131>,  <33.794113, 39.056187, 30.390858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737537, 38.871719, 30.248131>,  <33.643242, 38.564274, 30.010252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737537, 38.871719, 30.248131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023384, 0.607282, -0.794142,
		-0.971535, 0.201117, 0.125187,
		0.235739, 0.768610, 0.594698,
		33.808258, 39.102303, 30.426540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136955, 39.247009, 29.854216>,  <33.643242, 38.564274, 30.010252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136955, 39.247009, 29.854216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488617, 39.357414, 30.009600>,  <33.699615, 39.423656, 30.102831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488617, 39.357414, 30.009600>,  <33.136955, 39.247009, 29.854216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488617, 39.357414, 30.009600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088212, 0.706825, -0.701867,
		-0.468300, 0.651316, 0.597061,
		0.879155, 0.276017, 0.388460,
		33.752365, 39.440220, 30.126139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117493, 40.030521, 29.739405>,  <33.136955, 39.247009, 29.854216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117493, 40.030521, 29.739405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495323, 39.940834, 29.835318>,  <33.722023, 39.887020, 29.892864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495323, 39.940834, 29.835318>,  <33.117493, 40.030521, 29.739405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495323, 39.940834, 29.835318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323852, 0.756077, -0.568742,
		-0.053768, 0.614876, 0.786789,
		0.944579, -0.224223, 0.239781,
		33.778698, 39.873566, 29.907251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412022, 40.657585, 29.942429>,  <33.117493, 40.030521, 29.739405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412022, 40.657585, 29.942429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684265, 40.396893, 29.808558>,  <33.847610, 40.240475, 29.728235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684265, 40.396893, 29.808558>,  <33.412022, 40.657585, 29.942429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684265, 40.396893, 29.808558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312303, 0.671312, -0.672166,
		0.662748, 0.352963, 0.660441,
		0.680612, -0.651734, -0.334679,
		33.888447, 40.201374, 29.708155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026157, 41.035675, 29.976784>,  <33.412022, 40.657585, 29.942429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026157, 41.035675, 29.976784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116100, 40.732895, 29.731356>,  <34.170067, 40.551228, 29.584099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116100, 40.732895, 29.731356>,  <34.026157, 41.035675, 29.976784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116100, 40.732895, 29.731356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526453, 0.624250, -0.577199,
		0.819931, -0.193229, 0.538865,
		0.224855, -0.756950, -0.613568,
		34.183556, 40.505810, 29.547285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800400, 41.039211, 29.875837>,  <34.026157, 41.035675, 29.976784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800400, 41.039211, 29.875837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595112, 40.862366, 29.581587>,  <34.471939, 40.756260, 29.405037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595112, 40.862366, 29.581587>,  <34.800400, 41.039211, 29.875837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595112, 40.862366, 29.581587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397825, 0.636931, -0.660344,
		0.760490, -0.631549, -0.151000,
		-0.513216, -0.442113, -0.735626,
		34.441147, 40.729733, 29.360899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313442, 41.218315, 29.410696>,  <34.800400, 41.039211, 29.875837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313442, 41.218315, 29.410696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.003506, 41.071053, 29.205141>,  <34.817543, 40.982697, 29.081808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.003506, 41.071053, 29.205141>,  <35.313442, 41.218315, 29.410696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003506, 41.071053, 29.205141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183620, 0.646793, -0.740232,
		0.604899, -0.667923, -0.433562,
		-0.774842, -0.368155, -0.513888,
		34.771053, 40.960606, 29.050974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991688, 40.894066, 29.267925>,  <35.313442, 41.218315, 29.410696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991688, 40.894066, 29.267925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299095, 41.149216, 29.287928>,  <36.483540, 41.302307, 29.299929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299095, 41.149216, 29.287928>,  <35.991688, 40.894066, 29.267925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299095, 41.149216, 29.287928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111118, -0.210023, 0.971361,
		0.630110, -0.740949, -0.232286,
		0.768514, 0.637876, 0.050005,
		36.529648, 41.340580, 29.302929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426975, 40.503651, 29.584249>,  <35.991688, 40.894066, 29.267925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426975, 40.503651, 29.584249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590210, 40.866852, 29.622185>,  <36.688148, 41.084774, 29.644945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590210, 40.866852, 29.622185>,  <36.426975, 40.503651, 29.584249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590210, 40.866852, 29.622185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181454, -0.182480, 0.966321,
		0.894730, -0.377131, -0.239228,
		0.408084, 0.908005, 0.094838,
		36.712635, 41.139252, 29.650637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102745, 40.420296, 29.899675>,  <36.426975, 40.503651, 29.584249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102745, 40.420296, 29.899675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.990116, 40.796242, 29.977005>,  <36.922539, 41.021809, 30.023403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.990116, 40.796242, 29.977005>,  <37.102745, 40.420296, 29.899675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990116, 40.796242, 29.977005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131659, -0.161730, 0.978013,
		0.950466, 0.300831, -0.078204,
		-0.281569, 0.939864, 0.193326,
		36.905647, 41.078201, 30.035004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704685, 40.729836, 30.105732>,  <37.102745, 40.420296, 29.899675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704685, 40.729836, 30.105732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.379234, 40.916653, 30.244230>,  <37.183964, 41.028744, 30.327330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.379234, 40.916653, 30.244230>,  <37.704685, 40.729836, 30.105732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379234, 40.916653, 30.244230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291014, -0.188414, 0.937983,
		0.503317, 0.863927, 0.017382,
		-0.813624, 0.467044, 0.346246,
		37.135147, 41.056767, 30.348104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005680, 41.172413, 30.558310>,  <37.704685, 40.729836, 30.105732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005680, 41.172413, 30.558310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.624081, 41.075420, 30.628839>,  <37.395123, 41.017223, 30.671158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.624081, 41.075420, 30.628839>,  <38.005680, 41.172413, 30.558310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624081, 41.075420, 30.628839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231438, -0.221744, 0.947241,
		-0.190592, 0.944474, 0.267663,
		-0.953997, -0.242484, 0.176325,
		37.337883, 41.002674, 30.681738>
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
