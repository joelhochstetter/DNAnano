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
	<1.593857, 4.194170, 1.097173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.525352, 4.001789, 1.441115>,  <1.484250, 3.886360, 1.647481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.525352, 4.001789, 1.441115>,  <1.593857, 4.194170, 1.097173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.525352, 4.001789, 1.441115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982830, 0.144230, -0.115080,
		-0.068669, -0.864802, -0.497396,
		-0.171260, -0.480953, 0.859857,
		1.473974, 3.857503, 1.699072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.107865, 3.694651, 0.987064>,  <1.593857, 4.194170, 1.097173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.107865, 3.694651, 0.987064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.100826, 3.834164, 1.361879>,  <1.096603, 3.917871, 1.586769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.100826, 3.834164, 1.361879>,  <1.107865, 3.694651, 0.987064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.100826, 3.834164, 1.361879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974762, 0.202621, -0.093725,
		-0.222553, -0.915039, 0.336413,
		-0.017598, 0.348782, 0.937039,
		1.095547, 3.938798, 1.642991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.607101, 3.291251, 1.311821>,  <1.107865, 3.694651, 0.987064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.607101, 3.291251, 1.311821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.661648, 3.656937, 1.464459>,  <0.694376, 3.876348, 1.556042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.661648, 3.656937, 1.464459>,  <0.607101, 3.291251, 1.311821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.661648, 3.656937, 1.464459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980876, 0.178599, -0.077357,
		-0.138873, -0.363749, 0.921087,
		0.136367, 0.914215, 0.381595,
		0.702558, 3.931201, 1.578938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.090151, 3.415379, 1.951482>,  <0.607101, 3.291251, 1.311821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.090151, 3.415379, 1.951482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.189068, 3.749344, 1.754802>,  <0.248418, 3.949723, 1.636794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.189068, 3.749344, 1.754802>,  <0.090151, 3.415379, 1.951482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.189068, 3.749344, 1.754802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965461, 0.169347, -0.198008,
		-0.082052, 0.523682, 0.847953,
		0.247291, 0.834912, -0.491700,
		0.263255, 3.999818, 1.607292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.356999, 3.963398, 2.095728>,  <0.090151, 3.415379, 1.951482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.356999, 3.963398, 2.095728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.207218, 3.980953, 1.725245>,  <-0.117350, 3.991486, 1.502956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.207218, 3.980953, 1.725245>,  <-0.356999, 3.963398, 2.095728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.207218, 3.980953, 1.725245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890690, 0.294732, -0.346127,
		0.257792, 0.954572, 0.149453,
		0.374452, 0.043887, -0.926207,
		-0.094883, 3.994119, 1.447383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.581875, 4.578975, 1.885482>,  <-0.356999, 3.963398, 2.095728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.581875, 4.578975, 1.885482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.524860, 4.394169, 1.535345>,  <-0.490651, 4.283285, 1.325263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.524860, 4.394169, 1.535345>,  <-0.581875, 4.578975, 1.885482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.524860, 4.394169, 1.535345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728664, 0.549550, -0.408711,
		0.669875, 0.696087, -0.258323,
		0.142537, -0.462015, -0.875343,
		-0.482099, 4.255564, 1.272742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.747225, 5.080238, 1.315986>,  <-0.581875, 4.578975, 1.885482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.747225, 5.080238, 1.315986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.773403, 4.724876, 1.134237>,  <-0.789110, 4.511659, 1.025188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.773403, 4.724876, 1.134237>,  <-0.747225, 5.080238, 1.315986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.773403, 4.724876, 1.134237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829887, 0.301299, -0.469580,
		0.554079, 0.346345, -0.756995,
		-0.065445, -0.888405, -0.454371,
		-0.793037, 4.458355, 0.997926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.501756, 5.655259, 0.948508>,  <-0.747225, 5.080238, 1.315986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.501756, 5.655259, 0.948508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.831856, 5.785637, 1.132996>,  <-1.029916, 5.863864, 1.243688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.831856, 5.785637, 1.132996>,  <-0.501756, 5.655259, 0.948508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.831856, 5.785637, 1.132996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527638, 0.736184, 0.423828,
		-0.201397, 0.593121, -0.779517,
		-0.825249, 0.325945, 0.461219,
		-1.079431, 5.883420, 1.271361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.087337, 5.057273, 0.254208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.959038, 4.718468, 0.084648>,  <2.882058, 4.515185, -0.017088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.959038, 4.718468, 0.084648>,  <3.087337, 5.057273, 0.254208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.959038, 4.718468, 0.084648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741200, -0.503098, 0.444426,
		-0.589697, -0.171645, 0.789174,
		-0.320748, -0.847012, -0.423899,
		2.862813, 4.464364, -0.042522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.822201, 4.507085, 0.791653>,  <3.087337, 5.057273, 0.254208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.822201, 4.507085, 0.791653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.020142, 4.376335, 0.469591>,  <3.138906, 4.297885, 0.276354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.020142, 4.376335, 0.469591>,  <2.822201, 4.507085, 0.791653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.020142, 4.376335, 0.469591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752377, -0.302443, 0.585198,
		-0.434801, -0.895366, 0.096269,
		0.494851, -0.326875, -0.805155,
		3.168597, 4.278273, 0.228044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.096539, 3.904644, 0.825624>,  <2.822201, 4.507085, 0.791653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.096539, 3.904644, 0.825624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.331383, 4.062473, 0.542891>,  <3.472289, 4.157171, 0.373250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.331383, 4.062473, 0.542891>,  <3.096539, 3.904644, 0.825624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.331383, 4.062473, 0.542891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786259, -0.070195, 0.613897,
		0.192610, -0.916180, -0.351448,
		0.587110, 0.394572, -0.706835,
		3.507516, 4.180845, 0.330840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.691729, 3.511049, 0.819964>,  <3.096539, 3.904644, 0.825624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.691729, 3.511049, 0.819964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.782112, 3.863182, 0.653131>,  <3.836342, 4.074462, 0.553032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.782112, 3.863182, 0.653131>,  <3.691729, 3.511049, 0.819964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.782112, 3.863182, 0.653131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966171, -0.147885, 0.211291,
		0.124326, -0.450715, -0.883968,
		0.225957, 0.880333, -0.417082,
		3.849899, 4.127282, 0.528007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.270638, 3.305221, 0.428912>,  <3.691729, 3.511049, 0.819964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.270638, 3.305221, 0.428912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.260445, 3.677742, 0.574253>,  <4.254329, 3.901255, 0.661458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.260445, 3.677742, 0.574253>,  <4.270638, 3.305221, 0.428912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.260445, 3.677742, 0.574253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853133, -0.169195, 0.493494,
		0.521070, 0.322565, -0.790214,
		-0.025483, 0.931303, 0.363353,
		4.252800, 3.957133, 0.683259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.874432, 3.627085, 0.239583>,  <4.270638, 3.305221, 0.428912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.874432, 3.627085, 0.239583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.766876, 3.841732, 0.559519>,  <4.702343, 3.970520, 0.751480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.766876, 3.841732, 0.559519>,  <4.874432, 3.627085, 0.239583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.766876, 3.841732, 0.559519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888751, -0.181842, 0.420778,
		0.371241, 0.824000, -0.428024,
		-0.268888, 0.536617, 0.799838,
		4.686210, 4.002717, 0.799470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.345231, 4.202462, 0.301574>,  <4.874432, 3.627085, 0.239583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.345231, 4.202462, 0.301574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.191559, 4.088356, 0.652807>,  <5.099356, 4.019892, 0.863547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.191559, 4.088356, 0.652807>,  <5.345231, 4.202462, 0.301574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.191559, 4.088356, 0.652807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910499, -0.274631, 0.309142,
		0.152961, 0.918260, 0.365241,
		-0.384180, -0.285265, 0.878083,
		5.076305, 4.002777, 0.916232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.829062, 4.464395, 0.783867>,  <5.345231, 4.202462, 0.301574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.829062, 4.464395, 0.783867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.634415, 4.147972, 0.932154>,  <5.517626, 3.958118, 1.021126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.634415, 4.147972, 0.932154>,  <5.829062, 4.464395, 0.783867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.634415, 4.147972, 0.932154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863727, -0.371979, 0.340010,
		-0.131068, 0.485654, 0.864269,
		-0.486617, -0.791058, 0.370717,
		5.488430, 3.910655, 1.043369>
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
