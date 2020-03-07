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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<3.530257, 4.057026, 2.839851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.275814, 3.875702, 2.590091>,  <3.123148, 3.766907, 2.440235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.275814, 3.875702, 2.590091>,  <3.530257, 4.057026, 2.839851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.275814, 3.875702, 2.590091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706158, 0.668158, 0.234321,
		0.310978, 0.589979, -0.745129,
		-0.636108, -0.453310, -0.624400,
		3.084981, 3.739709, 2.402771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.122647, 4.538044, 2.286311>,  <3.530257, 4.057026, 2.839851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.122647, 4.538044, 2.286311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.943542, 4.216440, 2.442811>,  <2.836080, 4.023478, 2.536711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.943542, 4.216440, 2.442811>,  <3.122647, 4.538044, 2.286311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.943542, 4.216440, 2.442811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644346, 0.593515, 0.482243,
		-0.619941, -0.036170, -0.783814,
		-0.447762, -0.804010, 0.391251,
		2.809214, 3.975237, 2.560186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.428344, 4.810532, 2.329927>,  <3.122647, 4.538044, 2.286311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.428344, 4.810532, 2.329927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.456848, 4.482901, 2.557623>,  <2.473950, 4.286322, 2.694240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.456848, 4.482901, 2.557623>,  <2.428344, 4.810532, 2.329927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.456848, 4.482901, 2.557623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635440, 0.402618, 0.658874,
		-0.768855, -0.408668, -0.491785,
		0.071259, -0.819078, 0.569239,
		2.478226, 4.237177, 2.728395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.828120, 4.767593, 2.653943>,  <2.428344, 4.810532, 2.329927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.828120, 4.767593, 2.653943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.048374, 4.557890, 2.913774>,  <2.180527, 4.432068, 3.069673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.048374, 4.557890, 2.913774>,  <1.828120, 4.767593, 2.653943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.048374, 4.557890, 2.913774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693641, 0.145557, 0.705462,
		-0.464395, -0.839027, -0.283498,
		0.550636, -0.524259, 0.649579,
		2.213565, 4.400612, 3.108648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.414903, 4.247300, 2.971961>,  <1.828120, 4.767593, 2.653943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.414903, 4.247300, 2.971961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.704357, 4.344179, 3.230477>,  <1.878030, 4.402307, 3.385587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.704357, 4.344179, 3.230477>,  <1.414903, 4.247300, 2.971961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.704357, 4.344179, 3.230477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689761, 0.286504, 0.664940,
		-0.024118, -0.926961, 0.374383,
		0.723635, 0.242198, 0.646291,
		1.921448, 4.416839, 3.424365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.219659, 4.044147, 3.709382>,  <1.414903, 4.247300, 2.971961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.219659, 4.044147, 3.709382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.506680, 4.318598, 3.757298>,  <1.678892, 4.483269, 3.786047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.506680, 4.318598, 3.757298>,  <1.219659, 4.044147, 3.709382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.506680, 4.318598, 3.757298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538134, 0.436946, 0.720757,
		0.442197, -0.581635, 0.682761,
		0.717547, 0.686133, 0.119781,
		1.721945, 4.524436, 3.793234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.359581, 3.983811, 4.412273>,  <1.219659, 4.044147, 3.709382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.359581, 3.983811, 4.412273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.472118, 4.334230, 4.255616>,  <1.539641, 4.544482, 4.161622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.472118, 4.334230, 4.255616>,  <1.359581, 3.983811, 4.412273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.472118, 4.334230, 4.255616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581895, 0.480279, 0.656300,
		0.763049, 0.043250, 0.644892,
		0.281343, 0.876049, -0.391643,
		1.556521, 4.597045, 4.138123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.704160, 4.360113, 5.030576>,  <1.359581, 3.983811, 4.412273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.704160, 4.360113, 5.030576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.538902, 4.580204, 4.740317>,  <1.439748, 4.712258, 4.566162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.538902, 4.580204, 4.740317>,  <1.704160, 4.360113, 5.030576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.538902, 4.580204, 4.740317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370726, 0.626194, 0.685888,
		0.831790, 0.552387, -0.054725,
		-0.413144, 0.550227, -0.725646,
		1.414959, 4.745272, 4.522624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.368656, 0.171117, 5.189371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.670959, 0.399273, 5.318046>,  <0.852342, 0.536167, 5.395250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.670959, 0.399273, 5.318046>,  <0.368656, 0.171117, 5.189371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.670959, 0.399273, 5.318046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424132, -0.052078, -0.904102,
		-0.498939, 0.819721, -0.281279,
		0.755760, 0.570391, 0.321686,
		0.897687, 0.570390, 5.414551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.563599, 0.760801, 4.701822>,  <0.368656, 0.171117, 5.189371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.563599, 0.760801, 4.701822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.896889, 0.642960, 4.888989>,  <1.096863, 0.572255, 5.001289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.896889, 0.642960, 4.888989>,  <0.563599, 0.760801, 4.701822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.896889, 0.642960, 4.888989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465941, -0.081549, -0.881050,
		0.297718, 0.952134, 0.069319,
		0.833224, -0.294603, 0.467917,
		1.146856, 0.554579, 5.029364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.980331, 0.902342, 4.153562>,  <0.563599, 0.760801, 4.701822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.980331, 0.902342, 4.153562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.210205, 0.684959, 4.398312>,  <1.348130, 0.554530, 4.545162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.210205, 0.684959, 4.398312>,  <0.980331, 0.902342, 4.153562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.210205, 0.684959, 4.398312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656702, -0.139914, -0.741058,
		0.488343, 0.827694, 0.276484,
		0.574685, -0.543458, 0.611875,
		1.382611, 0.521922, 4.581874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.589614, 1.011401, 4.128425>,  <0.980331, 0.902342, 4.153562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.589614, 1.011401, 4.128425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.625877, 0.630054, 4.243576>,  <1.647635, 0.401246, 4.312666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.625877, 0.630054, 4.243576>,  <1.589614, 1.011401, 4.128425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.625877, 0.630054, 4.243576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577518, -0.185170, -0.795100,
		0.811328, 0.238337, 0.533800,
		0.090658, -0.953366, 0.287878,
		1.653075, 0.344045, 4.329939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.172366, 0.751156, 3.888716>,  <1.589614, 1.011401, 4.128425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.172366, 0.751156, 3.888716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.985199, 0.405102, 3.960931>,  <1.872899, 0.197469, 4.004260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.985199, 0.405102, 3.960931>,  <2.172366, 0.751156, 3.888716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.985199, 0.405102, 3.960931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528385, -0.437605, -0.727537,
		0.708423, -0.245033, 0.661888,
		-0.467916, -0.865136, 0.180538,
		1.844824, 0.145561, 4.015092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.680240, 0.294402, 4.073877>,  <2.172366, 0.751156, 3.888716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.680240, 0.294402, 4.073877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.371544, 0.057053, 3.982377>,  <2.186326, -0.085357, 3.927476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.371544, 0.057053, 3.982377>,  <2.680240, 0.294402, 4.073877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.371544, 0.057053, 3.982377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616861, -0.611039, -0.496099,
		0.154596, -0.523966, 0.837592,
		-0.771740, -0.593372, -0.228750,
		2.140022, -0.120959, 3.913752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.842506, -0.375269, 4.321887>,  <2.680240, 0.294401, 4.073877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.842506, -0.375269, 4.321887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.590569, -0.430759, 4.016193>,  <2.439406, -0.464054, 3.832778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.590569, -0.430759, 4.016193>,  <2.842506, -0.375269, 4.321887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.590569, -0.430759, 4.016193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679394, -0.575278, -0.455498,
		-0.376456, -0.806108, 0.456586,
		-0.629844, -0.138727, -0.764232,
		2.401615, -0.472377, 3.786924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.923044, -1.071386, 4.100923>,  <2.842506, -0.375269, 4.321887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.923044, -1.071386, 4.100923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.738304, -0.901344, 3.789544>,  <2.627460, -0.799319, 3.602717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.738304, -0.901344, 3.789544>,  <2.923044, -1.071386, 4.100923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.738304, -0.901344, 3.789544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488768, -0.610395, -0.623317,
		-0.740136, -0.668359, 0.074132,
		-0.461850, 0.425106, -0.778447,
		2.599749, -0.773813, 3.556010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
