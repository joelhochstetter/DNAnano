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
	<24.160994, 34.948170, 35.404125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.395109, 34.949490, 35.079800>,  <24.535580, 34.950283, 34.885204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.395109, 34.949490, 35.079800>,  <24.160994, 34.948170, 35.404125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.395109, 34.949490, 35.079800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771853, 0.304023, 0.558402,
		0.248348, -0.952659, 0.175396,
		0.585291, 0.003298, -0.810816,
		24.570696, 34.950481, 34.836555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.900625, 34.740467, 35.536228>,  <24.160994, 34.948170, 35.404125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.900625, 34.740467, 35.536228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934851, 34.959522, 35.203297>,  <24.955385, 35.090958, 35.003540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934851, 34.959522, 35.203297>,  <24.900625, 34.740467, 35.536228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.934851, 34.959522, 35.203297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747043, 0.517493, 0.417288,
		0.659247, -0.657488, -0.364832,
		0.085564, 0.547641, -0.832327,
		24.960520, 35.123814, 34.953598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629278, 34.786850, 35.347443>,  <24.900625, 34.740467, 35.536228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629278, 34.786850, 35.347443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431103, 35.100037, 35.196976>,  <25.312197, 35.287949, 35.106697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431103, 35.100037, 35.196976>,  <25.629278, 34.786850, 35.347443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431103, 35.100037, 35.196976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718628, 0.612719, 0.328860,
		0.487970, -0.107391, -0.866229,
		-0.495439, 0.782970, -0.376163,
		25.282471, 35.334927, 35.084126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029213, 35.278229, 34.738373>,  <25.629278, 34.786850, 35.347443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029213, 35.278229, 34.738373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761415, 35.454048, 34.977898>,  <25.600737, 35.559540, 35.121613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761415, 35.454048, 34.977898>,  <26.029213, 35.278229, 34.738373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.761415, 35.454048, 34.977898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664929, 0.713975, 0.219338,
		-0.331127, 0.545012, -0.770270,
		-0.669496, 0.439546, 0.598811,
		25.560566, 35.585911, 35.157539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367483, 35.648937, 34.223625>,  <26.029213, 35.278229, 34.738373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367483, 35.648937, 34.223625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437609, 35.997478, 34.040318>,  <26.479683, 36.206604, 33.930332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437609, 35.997478, 34.040318>,  <26.367483, 35.648937, 34.223625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437609, 35.997478, 34.040318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979626, -0.200716, -0.006881,
		-0.097978, -0.447728, -0.888786,
		0.175313, 0.871351, -0.458271,
		26.490202, 36.258884, 33.902836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841402, 35.493385, 33.664753>,  <26.367483, 35.648937, 34.223625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841402, 35.493385, 33.664753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870407, 35.877190, 33.773628>,  <26.887810, 36.107471, 33.838955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870407, 35.877190, 33.773628>,  <26.841402, 35.493385, 33.664753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870407, 35.877190, 33.773628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990536, -0.037395, -0.132058,
		-0.116532, 0.279189, -0.953139,
		0.072512, 0.959508, 0.272189,
		26.892160, 36.165043, 33.855286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167612, 36.045338, 33.190754>,  <26.841402, 35.493385, 33.664753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167612, 36.045338, 33.190754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239429, 36.097561, 33.580772>,  <27.282520, 36.128895, 33.814785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239429, 36.097561, 33.580772>,  <27.167612, 36.045338, 33.190754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239429, 36.097561, 33.580772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972794, -0.171071, -0.156224,
		0.146407, 0.976571, -0.157718,
		0.179545, 0.130555, 0.975048,
		27.293293, 36.136726, 33.873287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558266, 36.662346, 33.292469>,  <27.167612, 36.045338, 33.190754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558266, 36.662346, 33.292469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607840, 36.371914, 33.563007>,  <27.637583, 36.197655, 33.725330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607840, 36.371914, 33.563007>,  <27.558266, 36.662346, 33.292469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607840, 36.371914, 33.563007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978606, -0.023372, -0.204410,
		0.164226, 0.687209, 0.707653,
		0.123934, -0.726083, 0.676346,
		27.645020, 36.154087, 33.765911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184278, 36.859768, 33.575615>,  <27.558266, 36.662346, 33.292469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184278, 36.859768, 33.575615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120792, 36.470249, 33.640766>,  <28.082701, 36.236538, 33.679855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120792, 36.470249, 33.640766>,  <28.184278, 36.859768, 33.575615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120792, 36.470249, 33.640766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908234, -0.208696, -0.362709,
		0.387197, 0.090365, 0.917558,
		-0.158714, -0.973797, 0.162879,
		28.073177, 36.178108, 33.689629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723370, 36.653538, 34.030117>,  <28.184278, 36.859768, 33.575615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723370, 36.653538, 34.030117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585966, 36.335617, 33.829998>,  <28.503525, 36.144867, 33.709927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585966, 36.335617, 33.829998>,  <28.723370, 36.653538, 34.030117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585966, 36.335617, 33.829998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911189, -0.153036, -0.382510,
		0.227456, -0.587259, 0.776782,
		-0.343508, -0.794800, -0.500296,
		28.482914, 36.097176, 33.679909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169491, 36.080948, 34.193165>,  <28.723370, 36.653538, 34.030117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169491, 36.080948, 34.193165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997080, 35.968639, 33.850147>,  <28.893633, 35.901257, 33.644337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997080, 35.968639, 33.850147>,  <29.169491, 36.080948, 34.193165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997080, 35.968639, 33.850147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896750, -0.238893, -0.372517,
		-0.100270, -0.929569, 0.354749,
		-0.431027, -0.280769, -0.857545,
		28.867771, 35.884407, 33.592884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646320, 35.568241, 33.869267>,  <29.169491, 36.080948, 34.193165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646320, 35.568241, 33.869267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405750, 35.754936, 33.609901>,  <29.261408, 35.866955, 33.454281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405750, 35.754936, 33.609901>,  <29.646320, 35.568241, 33.869267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405750, 35.754936, 33.609901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761640, 0.089901, -0.641733,
		-0.241230, -0.879813, -0.409557,
		-0.601425, 0.466741, -0.648414,
		29.225323, 35.894958, 33.415379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595188, 35.130951, 33.148079>,  <29.646320, 35.568241, 33.869267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595188, 35.130951, 33.148079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546467, 35.526585, 33.114902>,  <29.517233, 35.763966, 33.094997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546467, 35.526585, 33.114902>,  <29.595188, 35.130951, 33.148079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546467, 35.526585, 33.114902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708455, 0.028112, -0.705196,
		-0.695165, -0.144655, -0.704145,
		-0.121805, 0.989083, -0.082939,
		29.509926, 35.823311, 33.090019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536182, 35.336502, 32.514286>,  <29.595188, 35.130951, 33.148079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536182, 35.336502, 32.514286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663807, 35.680546, 32.673492>,  <29.740381, 35.886971, 32.769016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663807, 35.680546, 32.673492>,  <29.536182, 35.336502, 32.514286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663807, 35.680546, 32.673492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814735, -0.034382, -0.578813,
		-0.484156, 0.508956, -0.711728,
		0.319061, 0.860106, 0.398018,
		29.759525, 35.938576, 32.792896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583975, 35.832638, 32.027912>,  <29.536182, 35.336502, 32.514286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583975, 35.832638, 32.027912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872248, 35.920254, 32.291016>,  <30.045212, 35.972824, 32.448875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872248, 35.920254, 32.291016>,  <29.583975, 35.832638, 32.027912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872248, 35.920254, 32.291016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685155, -0.080316, -0.723956,
		-0.105745, 0.972405, -0.207957,
		0.720680, 0.219038, 0.657755,
		30.088451, 35.985966, 32.488342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832579, 35.800770, 32.232010>,  <29.583975, 35.832638, 32.027912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832579, 35.800770, 32.232010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900578, 35.663048, 32.601345>,  <28.941378, 35.580414, 32.822948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900578, 35.663048, 32.601345>,  <28.832579, 35.800770, 32.232010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900578, 35.663048, 32.601345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976503, 0.067082, 0.204798,
		-0.132452, -0.936459, -0.324808,
		0.169997, -0.344302, 0.923340,
		28.951576, 35.559757, 32.878345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335981, 35.388062, 32.481098>,  <28.832579, 35.800770, 32.232010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335981, 35.388062, 32.481098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490101, 35.520523, 32.825630>,  <28.582573, 35.599998, 33.032349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490101, 35.520523, 32.825630>,  <28.335981, 35.388062, 32.481098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490101, 35.520523, 32.825630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919180, 0.055233, 0.389944,
		0.081558, -0.941959, 0.325671,
		0.385299, 0.331153, 0.861326,
		28.605690, 35.619869, 33.084026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053055, 34.986080, 33.096184>,  <28.335981, 35.388062, 32.481098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053055, 34.986080, 33.096184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165707, 35.333813, 33.258640>,  <28.233297, 35.542450, 33.356113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165707, 35.333813, 33.258640>,  <28.053055, 34.986080, 33.096184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165707, 35.333813, 33.258640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779093, -0.039897, 0.625638,
		0.560088, -0.492624, 0.666051,
		0.281631, 0.869327, 0.406145,
		28.250196, 35.594612, 33.380486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030289, 34.865723, 33.757149>,  <28.053055, 34.986080, 33.096184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030289, 34.865723, 33.757149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008606, 35.261047, 33.700165>,  <27.995596, 35.498241, 33.665974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008606, 35.261047, 33.700165>,  <28.030289, 34.865723, 33.757149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008606, 35.261047, 33.700165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681323, 0.067686, 0.728847,
		0.729973, 0.136569, 0.669693,
		-0.054209, 0.988316, -0.142457,
		27.992344, 35.557541, 33.657429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803467, 35.047043, 34.430904>,  <28.030289, 34.865723, 33.757149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803467, 35.047043, 34.430904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743067, 35.391888, 34.237423>,  <27.706827, 35.598793, 34.121334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743067, 35.391888, 34.237423>,  <27.803467, 35.047043, 34.430904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743067, 35.391888, 34.237423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758214, 0.212952, 0.616249,
		0.634279, 0.459804, 0.621507,
		-0.151002, 0.862109, -0.483701,
		27.697765, 35.650520, 34.092312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711126, 35.581833, 34.862572>,  <27.803467, 35.047043, 34.430904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711126, 35.581833, 34.862572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507488, 35.715614, 34.545341>,  <27.385305, 35.795883, 34.355003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507488, 35.715614, 34.545341>,  <27.711126, 35.581833, 34.862572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507488, 35.715614, 34.545341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773499, 0.226367, 0.591994,
		0.377522, 0.914820, 0.143461,
		-0.509094, 0.334458, -0.793071,
		27.354759, 35.815952, 34.307419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309038, 35.026474, 35.036346>,  <27.711126, 35.581833, 34.862572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309038, 35.026474, 35.036346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078726, 35.306465, 35.205345>,  <26.940538, 35.474461, 35.306744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078726, 35.306465, 35.205345>,  <27.309038, 35.026474, 35.036346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078726, 35.306465, 35.205345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691762, -0.692528, 0.204623,
		0.435823, -0.174449, 0.882964,
		-0.575781, 0.699981, 0.422496,
		26.905991, 35.516460, 35.332092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575239, 34.316669, 34.967251>,  <27.309038, 35.026474, 35.036346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575239, 34.316669, 34.967251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426704, 34.269714, 34.598831>,  <27.337584, 34.241539, 34.377781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426704, 34.269714, 34.598831>,  <27.575239, 34.316669, 34.967251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426704, 34.269714, 34.598831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026124, 0.990262, -0.136746,
		0.928130, -0.074841, -0.364654,
		-0.371337, -0.117392, -0.921047,
		27.315304, 34.234497, 34.322517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207485, 34.204502, 35.392738>,  <27.575239, 34.316669, 34.967251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207485, 34.204502, 35.392738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421125, 34.487446, 35.577942>,  <28.549309, 34.657211, 35.689064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421125, 34.487446, 35.577942>,  <28.207485, 34.204502, 35.392738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421125, 34.487446, 35.577942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545481, -0.706754, 0.450499,
		0.645900, 0.011952, -0.763328,
		0.534101, 0.707358, 0.463012,
		28.581356, 34.699654, 35.716846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886742, 34.273174, 35.184525>,  <28.207485, 34.204502, 35.392738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886742, 34.273174, 35.184525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834198, 34.360489, 35.571327>,  <28.802671, 34.412876, 35.803410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834198, 34.360489, 35.571327>,  <28.886742, 34.273174, 35.184525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834198, 34.360489, 35.571327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569981, -0.781469, 0.253828,
		0.811090, 0.584516, -0.021765,
		-0.131358, 0.218284, 0.967004,
		28.794790, 34.425976, 35.861427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226357, 34.803165, 34.926487>,  <28.886742, 34.273174, 35.184525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226357, 34.803165, 34.926487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599539, 34.772011, 34.785900>,  <29.823448, 34.753319, 34.701546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599539, 34.772011, 34.785900>,  <29.226357, 34.803165, 34.926487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599539, 34.772011, 34.785900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044771, 0.943631, -0.327956,
		0.357201, 0.321704, 0.876877,
		0.932954, -0.077888, -0.351469,
		29.879425, 34.748646, 34.680458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574507, 35.449203, 35.073635>,  <29.226357, 34.803165, 34.926487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574507, 35.449203, 35.073635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743965, 35.291157, 34.747589>,  <29.845640, 35.196327, 34.551964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743965, 35.291157, 34.747589>,  <29.574507, 35.449203, 35.073635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743965, 35.291157, 34.747589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196595, 0.838297, -0.508535,
		0.884237, 0.375685, 0.277462,
		0.423645, -0.395118, -0.815112,
		29.871059, 35.172623, 34.503056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271879, 35.479763, 35.155777>,  <29.574507, 35.449203, 35.073635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271879, 35.479763, 35.155777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628000, 35.642189, 35.238213>,  <30.841673, 35.739647, 35.287674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628000, 35.642189, 35.238213>,  <30.271879, 35.479763, 35.155777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628000, 35.642189, 35.238213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314173, 0.875345, -0.367514,
		-0.329633, 0.262451, 0.906897,
		0.890302, 0.406067, 0.206088,
		30.895090, 35.764008, 35.300037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222057, 36.167030, 35.323647>,  <30.271879, 35.479763, 35.155777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222057, 36.167030, 35.323647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610163, 36.140770, 35.230457>,  <30.843025, 36.125011, 35.174541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610163, 36.140770, 35.230457>,  <30.222057, 36.167030, 35.323647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610163, 36.140770, 35.230457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055314, 0.876900, -0.477479,
		0.235646, 0.476167, 0.847193,
		0.970264, -0.065654, -0.232976,
		30.901241, 36.121075, 35.160564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599617, 36.760090, 35.489010>,  <30.222057, 36.167030, 35.323647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599617, 36.760090, 35.489010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787827, 36.587162, 35.181320>,  <30.900751, 36.483406, 34.996708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787827, 36.587162, 35.181320>,  <30.599617, 36.760090, 35.489010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787827, 36.587162, 35.181320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045967, 0.858559, -0.510650,
		0.881190, 0.275631, 0.384098,
		0.470522, -0.432324, -0.769224,
		30.928984, 36.457466, 34.950554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188166, 37.098206, 35.327599>,  <30.599617, 36.760090, 35.489010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188166, 37.098206, 35.327599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034336, 36.902206, 35.014675>,  <30.942038, 36.784607, 34.826923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034336, 36.902206, 35.014675>,  <31.188166, 37.098206, 35.327599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034336, 36.902206, 35.014675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116055, 0.866424, -0.485635,
		0.915769, -0.095973, -0.390072,
		-0.384575, -0.489999, -0.782306,
		30.918962, 36.755207, 34.779984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539249, 37.268661, 34.599903>,  <31.188166, 37.098206, 35.327599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539249, 37.268661, 34.599903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149220, 37.188789, 34.561214>,  <30.915201, 37.140865, 34.538002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149220, 37.188789, 34.561214>,  <31.539249, 37.268661, 34.599903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149220, 37.188789, 34.561214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138649, 0.888714, -0.436994,
		0.173219, -0.412692, -0.894249,
		-0.975075, -0.199683, -0.096723,
		30.856697, 37.128883, 34.532196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376942, 37.436024, 33.969948>,  <31.539249, 37.268661, 34.599903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376942, 37.436024, 33.969948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039923, 37.493343, 34.177631>,  <30.837711, 37.527737, 34.302242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039923, 37.493343, 34.177631>,  <31.376942, 37.436024, 33.969948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039923, 37.493343, 34.177631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151810, 0.861698, -0.484179,
		-0.516788, -0.486765, -0.704266,
		-0.842546, 0.143303, 0.519211,
		30.787159, 37.536335, 34.333393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685785, 37.648163, 33.562080>,  <31.376942, 37.436024, 33.969948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685785, 37.648163, 33.562080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704662, 37.846119, 33.909149>,  <30.715988, 37.964893, 34.117390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704662, 37.846119, 33.909149>,  <30.685785, 37.648163, 33.562080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704662, 37.846119, 33.909149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087359, 0.867355, -0.489963,
		-0.995058, -0.052678, 0.084165,
		0.047191, 0.494894, 0.867671,
		30.718819, 37.994587, 34.169449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038324, 38.047737, 33.902889>,  <30.685785, 37.648163, 33.562080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038324, 38.047737, 33.902889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367630, 38.243408, 34.018089>,  <30.565214, 38.360809, 34.087208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367630, 38.243408, 34.018089>,  <30.038324, 38.047737, 33.902889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367630, 38.243408, 34.018089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286638, 0.796147, -0.532905,
		-0.489974, 0.356171, 0.795656,
		0.823265, 0.489174, 0.288000,
		30.614609, 38.390160, 34.104488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825933, 38.686722, 34.357418>,  <30.038324, 38.047737, 33.902889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825933, 38.686722, 34.357418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153889, 38.683388, 34.128433>,  <30.350662, 38.681385, 33.991043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153889, 38.683388, 34.128433>,  <29.825933, 38.686722, 34.357418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153889, 38.683388, 34.128433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386228, 0.730044, -0.563794,
		0.422624, 0.683349, 0.595334,
		0.819888, -0.008339, -0.572463,
		30.399855, 38.680885, 33.956696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154791, 39.411953, 34.256958>,  <29.825933, 38.686722, 34.357418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154791, 39.411953, 34.256958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213516, 39.159710, 33.952122>,  <30.248753, 39.008362, 33.769222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213516, 39.159710, 33.952122>,  <30.154791, 39.411953, 34.256958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213516, 39.159710, 33.952122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549554, 0.588590, -0.592917,
		0.822457, 0.505858, -0.260140,
		0.146816, -0.630610, -0.762087,
		30.257561, 38.970528, 33.723495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353287, 39.686028, 33.644852>,  <30.154791, 39.411953, 34.256958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353287, 39.686028, 33.644852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204674, 39.340168, 33.509594>,  <30.115505, 39.132652, 33.428440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204674, 39.340168, 33.509594>,  <30.353287, 39.686028, 33.644852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204674, 39.340168, 33.509594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622408, 0.502216, -0.600322,
		0.688892, -0.012573, -0.724755,
		-0.371531, -0.864650, -0.338147,
		30.093214, 39.080772, 33.408150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125336, 39.889103, 32.966942>,  <30.353287, 39.686028, 33.644852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125336, 39.889103, 32.966942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948196, 39.534889, 33.023109>,  <29.841913, 39.322361, 33.056808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948196, 39.534889, 33.023109>,  <30.125336, 39.889103, 32.966942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948196, 39.534889, 33.023109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692714, 0.238492, -0.680638,
		0.569238, -0.398690, -0.719037,
		-0.442848, -0.885532, 0.140420,
		29.815342, 39.269230, 33.065235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744066, 39.682339, 32.431988>,  <30.125336, 39.889103, 32.966942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744066, 39.682339, 32.431988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781233, 40.055035, 32.572403>,  <29.803534, 40.278652, 32.656651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781233, 40.055035, 32.572403>,  <29.744066, 39.682339, 32.431988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781233, 40.055035, 32.572403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835207, -0.118994, 0.536907,
		0.542029, -0.343078, 0.767139,
		0.092916, 0.931739, 0.351039,
		29.809107, 40.334557, 32.677715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230827, 39.754810, 32.906895>,  <29.744066, 39.682339, 32.431988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230827, 39.754810, 32.906895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918268, 39.569935, 32.739182>,  <28.730734, 39.459007, 32.638554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918268, 39.569935, 32.739182>,  <29.230827, 39.754810, 32.906895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918268, 39.569935, 32.739182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243317, -0.844369, 0.477324,
		-0.574645, 0.270961, 0.772246,
		-0.781396, -0.462192, -0.419283,
		28.683849, 39.431278, 32.613396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711910, 39.351036, 33.301502>,  <29.230827, 39.754810, 32.906895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711910, 39.351036, 33.301502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854139, 39.203732, 32.957886>,  <28.939476, 39.115349, 32.751717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854139, 39.203732, 32.957886>,  <28.711910, 39.351036, 33.301502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854139, 39.203732, 32.957886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623274, -0.591480, 0.511548,
		-0.696490, -0.717309, 0.019217,
		0.355571, -0.368265, -0.859040,
		28.960812, 39.093250, 32.700172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755001, 38.691353, 33.406807>,  <28.711910, 39.351036, 33.301502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755001, 38.691353, 33.406807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023344, 38.801491, 33.131378>,  <29.184349, 38.867573, 32.966122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023344, 38.801491, 33.131378>,  <28.755001, 38.691353, 33.406807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023344, 38.801491, 33.131378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722596, -0.451491, 0.523461,
		-0.166752, -0.848728, -0.501850,
		0.670857, 0.275347, -0.688575,
		29.224602, 38.884094, 32.924805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236980, 38.120331, 33.296890>,  <28.755001, 38.691353, 33.406807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236980, 38.120331, 33.296890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427773, 38.453773, 33.185467>,  <29.542248, 38.653839, 33.118614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427773, 38.453773, 33.185467>,  <29.236980, 38.120331, 33.296890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427773, 38.453773, 33.185467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866580, -0.393131, 0.307388,
		0.146730, -0.388012, -0.909899,
		0.476980, 0.833603, -0.278560,
		29.570866, 38.703854, 33.101898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785114, 37.991135, 32.861027>,  <29.236980, 38.120331, 33.296890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785114, 37.991135, 32.861027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899168, 38.344177, 33.010532>,  <29.967600, 38.556004, 33.100235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899168, 38.344177, 33.010532>,  <29.785114, 37.991135, 32.861027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899168, 38.344177, 33.010532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794067, -0.435915, 0.423599,
		0.536801, 0.176009, -0.825146,
		0.285136, 0.882609, 0.373763,
		29.984709, 38.608959, 33.122662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504868, 38.049282, 32.756557>,  <29.785114, 37.991135, 32.861027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504868, 38.049282, 32.756557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415670, 38.311245, 33.045380>,  <30.362152, 38.468422, 33.218674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415670, 38.311245, 33.045380>,  <30.504868, 38.049282, 32.756557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415670, 38.311245, 33.045380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607263, -0.486101, 0.628440,
		0.762565, 0.578617, -0.289304,
		-0.222995, 0.654910, 0.722057,
		30.348772, 38.507717, 33.261997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198063, 38.332130, 33.014759>,  <30.504868, 38.049282, 32.756557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198063, 38.332130, 33.014759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932917, 38.346188, 33.313923>,  <30.773829, 38.354622, 33.493423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932917, 38.346188, 33.313923>,  <31.198063, 38.332130, 33.014759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932917, 38.346188, 33.313923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650954, -0.466512, 0.598853,
		0.369954, 0.883816, 0.286361,
		-0.662867, 0.035140, 0.747912,
		30.734056, 38.356728, 33.538296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580891, 38.476883, 33.532139>,  <31.198063, 38.332130, 33.014759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580891, 38.476883, 33.532139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243509, 38.338123, 33.696213>,  <31.041080, 38.254868, 33.794659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243509, 38.338123, 33.696213>,  <31.580891, 38.476883, 33.532139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243509, 38.338123, 33.696213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526734, -0.384012, 0.758344,
		-0.105550, 0.855686, 0.506617,
		-0.843451, -0.346896, 0.410186,
		30.990475, 38.234055, 33.819267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384422, 38.267971, 33.588493>,  <31.580891, 38.476883, 33.532139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384422, 38.267971, 33.588493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530087, 38.058243, 33.896381>,  <32.617485, 37.932404, 34.081116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530087, 38.058243, 33.896381>,  <32.384422, 38.267971, 33.588493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530087, 38.058243, 33.896381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903048, 0.003362, 0.429526,
		-0.227800, -0.851510, -0.472268,
		0.364158, -0.524327, 0.769721,
		32.639336, 37.900944, 34.127296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840099, 37.883884, 33.093781>,  <32.384422, 38.267971, 33.588493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840099, 37.883884, 33.093781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463486, 38.014233, 33.059544>,  <32.237518, 38.092442, 33.039001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463486, 38.014233, 33.059544>,  <32.840099, 37.883884, 33.093781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463486, 38.014233, 33.059544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140547, 0.148990, -0.978799,
		-0.306207, -0.933601, -0.186078,
		-0.941532, 0.325868, -0.085594,
		32.181026, 38.111992, 33.033867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521606, 37.709827, 33.210594>,  <32.840099, 37.883884, 33.093781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521606, 37.709827, 33.210594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770767, 38.007668, 33.306564>,  <33.920261, 38.186371, 33.364147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770767, 38.007668, 33.306564>,  <33.521606, 37.709827, 33.210594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770767, 38.007668, 33.306564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775086, -0.545852, -0.318256,
		-0.106012, 0.384203, -0.917142,
		0.622899, 0.744603, 0.239924,
		33.957638, 38.231049, 33.378540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217239, 37.117058, 33.512611>,  <33.521606, 37.709827, 33.210594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217239, 37.117058, 33.512611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554409, 36.901863, 33.515404>,  <33.756710, 36.772747, 33.517078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554409, 36.901863, 33.515404>,  <33.217239, 37.117058, 33.512611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554409, 36.901863, 33.515404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496496, 0.782791, 0.375140,
		-0.207287, -0.312747, 0.926942,
		0.842926, -0.537984, 0.006985,
		33.807285, 36.740467, 33.517498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602745, 37.066189, 34.210167>,  <33.217239, 37.117058, 33.512611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602745, 37.066189, 34.210167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844376, 37.041531, 33.892349>,  <33.989353, 37.026737, 33.701660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844376, 37.041531, 33.892349>,  <33.602745, 37.066189, 34.210167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844376, 37.041531, 33.892349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499954, 0.805718, 0.317591,
		0.620598, -0.589083, 0.517532,
		0.604072, -0.061646, -0.794542,
		34.025597, 37.023037, 33.653988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323544, 36.948185, 34.428875>,  <33.602745, 37.066189, 34.210167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323544, 36.948185, 34.428875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255589, 37.160374, 34.096672>,  <34.214813, 37.287685, 33.897350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255589, 37.160374, 34.096672>,  <34.323544, 36.948185, 34.428875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255589, 37.160374, 34.096672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578360, 0.736024, 0.351808,
		0.797896, -0.420563, -0.431845,
		-0.169891, 0.530467, -0.830507,
		34.204620, 37.319515, 33.847519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503471, 37.523849, 34.946159>,  <34.323544, 36.948185, 34.428875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503471, 37.523849, 34.946159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831898, 37.346096, 34.802845>,  <35.028954, 37.239445, 34.716858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831898, 37.346096, 34.802845>,  <34.503471, 37.523849, 34.946159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831898, 37.346096, 34.802845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057432, -0.688778, 0.722694,
		-0.567931, -0.572805, -0.591057,
		0.821070, -0.444386, -0.358281,
		35.078220, 37.212780, 34.695362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525623, 36.846069, 35.176334>,  <34.503471, 37.523849, 34.946159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525623, 36.846069, 35.176334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913067, 36.856697, 35.077473>,  <35.145535, 36.863075, 35.018154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913067, 36.856697, 35.077473>,  <34.525623, 36.846069, 35.176334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913067, 36.856697, 35.077473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203320, -0.656705, 0.726222,
		-0.143015, -0.753679, -0.641494,
		0.968611, 0.026568, -0.247157,
		35.203651, 36.864666, 35.003326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717918, 36.181385, 35.246647>,  <34.525623, 36.846069, 35.176334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717918, 36.181385, 35.246647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027054, 36.432232, 35.285522>,  <35.212536, 36.582741, 35.308849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027054, 36.432232, 35.285522>,  <34.717918, 36.181385, 35.246647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027054, 36.432232, 35.285522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211087, -0.398462, 0.892564,
		0.598472, -0.669289, -0.440323,
		0.772835, 0.627120, 0.097190,
		35.258904, 36.620369, 35.314678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347038, 35.806625, 35.489861>,  <34.717918, 36.181385, 35.246647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347038, 35.806625, 35.489861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391312, 36.184799, 35.612438>,  <35.417877, 36.411701, 35.685986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391312, 36.184799, 35.612438>,  <35.347038, 35.806625, 35.489861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391312, 36.184799, 35.612438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061100, -0.314230, 0.947379,
		0.991976, -0.086135, -0.092545,
		0.110683, 0.945431, 0.306446,
		35.424515, 36.468430, 35.704372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799175, 35.767258, 35.942017>,  <35.347038, 35.806625, 35.489861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799175, 35.767258, 35.942017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596924, 36.105354, 36.011185>,  <35.475571, 36.308212, 36.052685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596924, 36.105354, 36.011185>,  <35.799175, 35.767258, 35.942017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596924, 36.105354, 36.011185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005824, -0.197077, 0.980371,
		0.862729, 0.496714, 0.094726,
		-0.505633, 0.845243, 0.172916,
		35.445232, 36.358929, 36.063061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101540, 36.348648, 36.432331>,  <35.799175, 35.767258, 35.942017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101540, 36.348648, 36.432331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703896, 36.372784, 36.468319>,  <35.465309, 36.387264, 36.489914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703896, 36.372784, 36.468319>,  <36.101540, 36.348648, 36.432331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703896, 36.372784, 36.468319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078389, -0.172601, 0.981868,
		0.074773, 0.983142, 0.166856,
		-0.994115, 0.060337, 0.089974,
		35.405663, 36.390884, 36.495312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842018, 36.837177, 36.922779>,  <36.101540, 36.348648, 36.432331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842018, 36.837177, 36.922779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608017, 36.514000, 36.894497>,  <35.467617, 36.320091, 36.877529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608017, 36.514000, 36.894497>,  <35.842018, 36.837177, 36.922779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608017, 36.514000, 36.894497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149528, -0.193126, 0.969713,
		-0.797130, 0.556711, 0.233789,
		-0.585001, -0.807945, -0.070702,
		35.432518, 36.271618, 36.873287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413841, 37.251465, 36.426693>,  <35.842018, 36.837177, 36.922779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413841, 37.251465, 36.426693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570705, 36.912807, 36.282803>,  <35.664825, 36.709614, 36.196468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570705, 36.912807, 36.282803>,  <35.413841, 37.251465, 36.426693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570705, 36.912807, 36.282803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088217, 0.354640, -0.930832,
		0.915655, 0.396773, 0.064389,
		0.392164, -0.846641, -0.359730,
		35.688354, 36.658813, 36.174885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696285, 37.496780, 35.885231>,  <35.413841, 37.251465, 36.426693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696285, 37.496780, 35.885231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716698, 37.099136, 35.846970>,  <35.728947, 36.860550, 35.824013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716698, 37.099136, 35.846970>,  <35.696285, 37.496780, 35.885231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716698, 37.099136, 35.846970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021776, 0.096859, -0.995060,
		0.998460, 0.048695, 0.026591,
		0.051030, -0.994106, -0.095650,
		35.732006, 36.800903, 35.818275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370102, 37.361153, 35.417870>,  <35.696285, 37.496780, 35.885231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370102, 37.361153, 35.417870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066826, 37.101852, 35.389828>,  <35.884861, 36.946274, 35.373001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066826, 37.101852, 35.389828>,  <36.370102, 37.361153, 35.417870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066826, 37.101852, 35.389828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095248, 0.216483, -0.971629,
		0.645038, -0.730003, -0.225880,
		-0.758192, -0.648252, -0.070108,
		35.839367, 36.907375, 35.368793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425671, 37.088154, 34.760338>,  <36.370102, 37.361153, 35.417870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425671, 37.088154, 34.760338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043972, 37.014549, 34.854610>,  <35.814953, 36.970387, 34.911175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043972, 37.014549, 34.854610>,  <36.425671, 37.088154, 34.760338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043972, 37.014549, 34.854610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261759, 0.133075, -0.955915,
		0.144553, -0.973871, -0.175158,
		-0.954247, -0.184030, 0.235683,
		35.757698, 36.959343, 34.925316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239128, 36.526966, 34.299774>,  <36.425671, 37.088154, 34.760338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239128, 36.526966, 34.299774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918877, 36.742348, 34.404884>,  <35.726727, 36.871578, 34.467953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918877, 36.742348, 34.404884>,  <36.239128, 36.526966, 34.299774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918877, 36.742348, 34.404884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233446, 0.123580, -0.964485,
		-0.551808, -0.833542, 0.026759,
		-0.800632, 0.538457, 0.262779,
		35.678688, 36.903885, 34.483719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661690, 36.176952, 34.044491>,  <36.239128, 36.526966, 34.299774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661690, 36.176952, 34.044491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656803, 36.576572, 34.061203>,  <35.653870, 36.816345, 34.071228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656803, 36.576572, 34.061203>,  <35.661690, 36.176952, 34.044491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656803, 36.576572, 34.061203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136934, 0.039714, -0.989784,
		-0.990505, -0.017813, 0.136319,
		-0.012217, 0.999052, 0.041776,
		35.653137, 36.876289, 34.073734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047020, 36.341637, 33.660622>,  <35.661690, 36.176952, 34.044491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047020, 36.341637, 33.660622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334587, 36.619675, 33.659367>,  <35.507126, 36.786495, 33.658615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334587, 36.619675, 33.659367>,  <35.047020, 36.341637, 33.660622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334587, 36.619675, 33.659367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019189, 0.015335, -0.999698,
		-0.694834, 0.718757, 0.024362,
		0.718914, 0.695092, -0.003137,
		35.550262, 36.828201, 33.658424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796394, 36.998070, 33.221607>,  <35.047020, 36.341637, 33.660622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796394, 36.998070, 33.221607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195988, 36.997345, 33.239655>,  <35.435741, 36.996910, 33.250484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195988, 36.997345, 33.239655>,  <34.796394, 36.998070, 33.221607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195988, 36.997345, 33.239655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045119, 0.080874, -0.995703,
		-0.001848, 0.996723, 0.080873,
		0.998980, -0.001808, 0.045120,
		35.495682, 36.996803, 33.253189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964947, 37.518250, 32.755131>,  <34.796394, 36.998070, 33.221607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964947, 37.518250, 32.755131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302250, 37.305355, 32.785145>,  <35.504631, 37.177616, 32.803154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302250, 37.305355, 32.785145>,  <34.964947, 37.518250, 32.755131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302250, 37.305355, 32.785145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152781, 0.103506, -0.982825,
		0.515332, 0.840242, 0.168599,
		0.843262, -0.532240, 0.075033,
		35.555229, 37.145683, 32.807655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532578, 37.904682, 32.397007>,  <34.964947, 37.518250, 32.755131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532578, 37.904682, 32.397007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683819, 37.534721, 32.412991>,  <35.774563, 37.312744, 32.422581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683819, 37.534721, 32.412991>,  <35.532578, 37.904682, 32.397007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683819, 37.534721, 32.412991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305439, 0.083887, -0.948509,
		0.873923, 0.370844, 0.314219,
		0.378108, -0.924899, 0.039959,
		35.797253, 37.257252, 32.424980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078156, 37.964466, 32.115543>,  <35.532578, 37.904682, 32.397007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078156, 37.964466, 32.115543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048134, 37.567039, 32.081608>,  <36.030121, 37.328583, 32.061245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048134, 37.567039, 32.081608>,  <36.078156, 37.964466, 32.115543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048134, 37.567039, 32.081608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296649, 0.058984, -0.953163,
		0.952033, -0.096703, 0.290313,
		-0.075050, -0.993564, -0.084842,
		36.025620, 37.268970, 32.056156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726109, 37.745964, 31.751167>,  <36.078156, 37.964466, 32.115543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726109, 37.745964, 31.751167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430508, 37.481899, 31.697405>,  <36.253147, 37.323460, 31.665148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430508, 37.481899, 31.697405>,  <36.726109, 37.745964, 31.751167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430508, 37.481899, 31.697405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150030, 0.033231, -0.988123,
		0.656786, -0.750390, 0.074487,
		-0.739002, -0.660160, -0.134407,
		36.208809, 37.283852, 31.657084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983891, 37.279018, 31.329481>,  <36.726109, 37.745964, 31.751167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983891, 37.279018, 31.329481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591549, 37.225060, 31.273296>,  <36.356144, 37.192684, 31.239586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591549, 37.225060, 31.273296>,  <36.983891, 37.279018, 31.329481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591549, 37.225060, 31.273296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160537, -0.151741, -0.975296,
		0.110255, -0.979171, 0.170492,
		-0.980853, -0.134902, -0.140463,
		36.297295, 37.184589, 31.231157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911026, 36.746532, 30.876438>,  <36.983891, 37.279018, 31.329481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911026, 36.746532, 30.876438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567173, 36.947689, 30.840370>,  <36.360859, 37.068382, 30.818729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567173, 36.947689, 30.840370>,  <36.911026, 36.746532, 30.876438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567173, 36.947689, 30.840370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155367, 0.089184, -0.983823,
		-0.486713, -0.859737, -0.154798,
		-0.859634, 0.502890, -0.090168,
		36.309284, 37.098557, 30.813320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534321, 36.532867, 30.249214>,  <36.911026, 36.746532, 30.876438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534321, 36.532867, 30.249214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336056, 36.876942, 30.297207>,  <36.217098, 37.083385, 30.326002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336056, 36.876942, 30.297207>,  <36.534321, 36.532867, 30.249214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336056, 36.876942, 30.297207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030975, 0.120550, -0.992224,
		-0.867965, -0.495520, -0.033107,
		-0.495658, 0.860190, 0.119982,
		36.187359, 37.134998, 30.333202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247688, 36.481503, 29.685307>,  <36.534321, 36.532867, 30.249214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247688, 36.481503, 29.685307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195065, 36.857006, 29.812696>,  <36.163490, 37.082306, 29.889130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195065, 36.857006, 29.812696>,  <36.247688, 36.481503, 29.685307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195065, 36.857006, 29.812696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112706, 0.333349, -0.936043,
		-0.984880, -0.087253, -0.149659,
		-0.131561, 0.938757, 0.318475,
		36.155598, 37.138634, 29.908239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926357, 36.698383, 29.117470>,  <36.247688, 36.481503, 29.685307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926357, 36.698383, 29.117470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038105, 37.034470, 29.303366>,  <36.105152, 37.236122, 29.414904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038105, 37.034470, 29.303366>,  <35.926357, 36.698383, 29.117470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038105, 37.034470, 29.303366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100038, 0.455909, -0.884387,
		-0.954958, 0.293563, 0.043314,
		0.279371, 0.840219, 0.464741,
		36.121918, 37.286537, 29.442787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466286, 37.336292, 28.848759>,  <35.926357, 36.698383, 29.117470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466286, 37.336292, 28.848759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813541, 37.471184, 28.994423>,  <36.021896, 37.552116, 29.081821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813541, 37.471184, 28.994423>,  <35.466286, 37.336292, 28.848759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813541, 37.471184, 28.994423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024465, 0.703754, -0.710023,
		-0.495716, 0.625308, 0.602707,
		0.868140, 0.337224, 0.364160,
		36.073982, 37.572350, 29.103670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402325, 38.029907, 28.764593>,  <35.466286, 37.336292, 28.848759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402325, 38.029907, 28.764593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789856, 37.956684, 28.831367>,  <36.022373, 37.912750, 28.871431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789856, 37.956684, 28.831367>,  <35.402325, 38.029907, 28.764593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789856, 37.956684, 28.831367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244599, 0.599699, -0.761927,
		0.039369, 0.779006, 0.625780,
		0.968825, -0.183061, 0.166934,
		36.080502, 37.901764, 28.881449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702427, 38.663437, 28.765882>,  <35.402325, 38.029907, 28.764593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702427, 38.663437, 28.765882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007118, 38.420238, 28.676344>,  <36.189934, 38.274319, 28.622622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007118, 38.420238, 28.676344>,  <35.702427, 38.663437, 28.765882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007118, 38.420238, 28.676344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339563, 0.668881, -0.661283,
		0.551785, 0.427709, 0.715960,
		0.761729, -0.607999, -0.223844,
		36.235638, 38.237839, 28.609190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250984, 39.096226, 28.871019>,  <35.702427, 38.663437, 28.765882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250984, 39.096226, 28.871019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379894, 38.800121, 28.635002>,  <36.457241, 38.622459, 28.493393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379894, 38.800121, 28.635002>,  <36.250984, 39.096226, 28.871019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379894, 38.800121, 28.635002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486159, 0.664249, -0.567823,
		0.812271, -0.103857, 0.573959,
		0.322279, -0.740262, -0.590041,
		36.476578, 38.578041, 28.457991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807373, 39.341133, 28.646372>,  <36.250984, 39.096226, 28.871019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807373, 39.341133, 28.646372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792831, 39.039200, 28.384409>,  <36.784107, 38.858040, 28.227230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792831, 39.039200, 28.384409>,  <36.807373, 39.341133, 28.646372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792831, 39.039200, 28.384409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523147, 0.543994, -0.656039,
		0.851467, -0.366466, 0.375110,
		-0.036358, -0.754833, -0.654908,
		36.781925, 38.812748, 28.187937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510189, 39.360851, 28.255600>,  <36.807373, 39.341133, 28.646372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510189, 39.360851, 28.255600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239994, 39.161533, 28.038191>,  <37.077877, 39.041943, 27.907745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239994, 39.161533, 28.038191>,  <37.510189, 39.360851, 28.255600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239994, 39.161533, 28.038191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363760, 0.415987, -0.833447,
		0.641400, -0.760696, -0.099735,
		-0.675488, -0.498294, -0.543525,
		37.037346, 39.012047, 27.875134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859398, 39.148598, 27.713188>,  <37.510189, 39.360851, 28.255600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859398, 39.148598, 27.713188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480186, 39.134476, 27.586704>,  <37.252659, 39.126003, 27.510813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480186, 39.134476, 27.586704>,  <37.859398, 39.148598, 27.713188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480186, 39.134476, 27.586704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242332, 0.563895, -0.789492,
		0.206181, -0.825091, -0.526036,
		-0.948032, -0.035303, -0.316211,
		37.195778, 39.123886, 27.491840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933834, 38.907852, 27.029432>,  <37.859398, 39.148598, 27.713188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933834, 38.907852, 27.029432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575954, 39.085800, 27.045437>,  <37.361225, 39.192570, 27.055040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575954, 39.085800, 27.045437>,  <37.933834, 38.907852, 27.029432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575954, 39.085800, 27.045437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202836, 0.484475, -0.850965,
		-0.397952, -0.753244, -0.523696,
		-0.894702, 0.444867, 0.040013,
		37.307545, 39.219261, 27.057442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603699, 38.850639, 26.364485>,  <37.933834, 38.907852, 27.029432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603699, 38.850639, 26.364485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459793, 39.175625, 26.547991>,  <37.373451, 39.370617, 26.658094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459793, 39.175625, 26.547991>,  <37.603699, 38.850639, 26.364485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459793, 39.175625, 26.547991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275410, 0.562250, -0.779759,
		-0.891470, -0.154182, -0.426039,
		-0.359765, 0.812467, 0.458766,
		37.351864, 39.419365, 26.685621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524708, 39.185135, 25.784355>,  <37.603699, 38.850639, 26.364485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524708, 39.185135, 25.784355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510796, 39.451298, 26.082623>,  <37.502449, 39.610996, 26.261583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510796, 39.451298, 26.082623>,  <37.524708, 39.185135, 25.784355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510796, 39.451298, 26.082623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222837, 0.732500, -0.643263,
		-0.974235, 0.143790, -0.173753,
		-0.034780, 0.665408, 0.745669,
		37.500362, 39.650921, 26.306324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054043, 39.701088, 25.604380>,  <37.524708, 39.185135, 25.784355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054043, 39.701088, 25.604380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317738, 39.855469, 25.862511>,  <37.475956, 39.948097, 26.017389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317738, 39.855469, 25.862511>,  <37.054043, 39.701088, 25.604380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317738, 39.855469, 25.862511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205753, 0.732882, -0.648498,
		-0.723238, 0.560292, 0.403732,
		0.659236, 0.385949, 0.645330,
		37.515507, 39.971252, 26.056110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990372, 40.437214, 25.517282>,  <37.054043, 39.701088, 25.604380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990372, 40.437214, 25.517282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334641, 40.396919, 25.716923>,  <37.541203, 40.372742, 25.836706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334641, 40.396919, 25.716923>,  <36.990372, 40.437214, 25.517282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334641, 40.396919, 25.716923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370224, 0.796759, -0.477608,
		-0.349549, 0.595841, 0.723042,
		0.860668, -0.100740, 0.499101,
		37.592842, 40.366695, 25.866653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095314, 41.040844, 25.721422>,  <36.990372, 40.437214, 25.517282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095314, 41.040844, 25.721422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458462, 40.873295, 25.714291>,  <37.676350, 40.772766, 25.710012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458462, 40.873295, 25.714291>,  <37.095314, 41.040844, 25.721422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458462, 40.873295, 25.714291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369451, 0.819398, -0.438283,
		0.198194, 0.391317, 0.898660,
		0.907868, -0.418876, -0.017828,
		37.730824, 40.747631, 25.708942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575649, 41.590611, 25.920948>,  <37.095314, 41.040844, 25.721422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575649, 41.590611, 25.920948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788383, 41.311234, 25.729399>,  <37.916023, 41.143608, 25.614470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788383, 41.311234, 25.729399>,  <37.575649, 41.590611, 25.920948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788383, 41.311234, 25.729399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533516, 0.715492, -0.451034,
		0.657653, -0.015609, 0.753159,
		0.531839, -0.698446, -0.478873,
		37.947937, 41.101700, 25.585737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117729, 41.878979, 25.989075>,  <37.575649, 41.590611, 25.920948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117729, 41.878979, 25.989075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151367, 41.624088, 25.682646>,  <38.171551, 41.471153, 25.498789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151367, 41.624088, 25.682646>,  <38.117729, 41.878979, 25.989075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151367, 41.624088, 25.682646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552054, 0.669819, -0.496567,
		0.829557, -0.381156, 0.408111,
		0.084091, -0.637230, -0.766072,
		38.176594, 41.432919, 25.452824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762939, 42.037472, 25.754457>,  <38.117729, 41.878979, 25.989075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762939, 42.037472, 25.754457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626915, 41.827404, 25.442419>,  <38.545300, 41.701363, 25.255196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626915, 41.827404, 25.442419>,  <38.762939, 42.037472, 25.754457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626915, 41.827404, 25.442419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556871, 0.555995, -0.617061,
		0.757793, -0.644253, 0.103381,
		-0.340064, -0.525174, -0.780095,
		38.524895, 41.669853, 25.208391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424141, 41.926670, 25.326759>,  <38.762939, 42.037472, 25.754457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424141, 41.926670, 25.326759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118233, 41.844002, 25.082655>,  <38.934689, 41.794403, 24.936193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118233, 41.844002, 25.082655>,  <39.424141, 41.926670, 25.326759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118233, 41.844002, 25.082655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439072, 0.526009, -0.728375,
		0.471532, -0.824987, -0.311535,
		-0.764770, -0.206666, -0.610259,
		38.888802, 41.782001, 24.899576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688644, 41.453976, 24.718407>,  <39.424141, 41.926670, 25.326759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688644, 41.453976, 24.718407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366627, 41.666824, 24.613529>,  <39.173416, 41.794533, 24.550604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366627, 41.666824, 24.613529>,  <39.688644, 41.453976, 24.718407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366627, 41.666824, 24.613529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486535, 0.339416, -0.805034,
		-0.339384, -0.775657, -0.532142,
		-0.805048, 0.532122, -0.262192,
		39.125111, 41.826462, 24.534872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620224, 41.444401, 23.929695>,  <39.688644, 41.453976, 24.718407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620224, 41.444401, 23.929695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381458, 41.747211, 24.035982>,  <39.238197, 41.928898, 24.099754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381458, 41.747211, 24.035982>,  <39.620224, 41.444401, 23.929695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381458, 41.747211, 24.035982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316931, 0.526745, -0.788729,
		-0.737055, -0.386589, -0.554346,
		-0.596913, 0.757026, 0.265718,
		39.202385, 41.974319, 24.115698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300694, 41.698948, 23.268023>,  <39.620224, 41.444401, 23.929695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300694, 41.698948, 23.268023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289413, 41.996758, 23.534821>,  <39.282646, 42.175446, 23.694899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289413, 41.996758, 23.534821>,  <39.300694, 41.698948, 23.268023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289413, 41.996758, 23.534821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446675, 0.606323, -0.657917,
		-0.894252, 0.279375, -0.349663,
		-0.028203, 0.744529, 0.666995,
		39.280952, 42.220116, 23.734919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038677, 42.318405, 22.892204>,  <39.300694, 41.698948, 23.268023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038677, 42.318405, 22.892204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219040, 42.450615, 23.223850>,  <39.327259, 42.529942, 23.422838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219040, 42.450615, 23.223850>,  <39.038677, 42.318405, 22.892204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219040, 42.450615, 23.223850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498536, 0.677247, -0.541109,
		-0.740368, 0.657334, 0.140596,
		0.450907, 0.330528, 0.829116,
		39.354313, 42.549774, 23.472586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005135, 43.070419, 22.765781>,  <39.038677, 42.318405, 22.892204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005135, 43.070419, 22.765781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269470, 43.001507, 23.057978>,  <39.428070, 42.960159, 23.233295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269470, 43.001507, 23.057978>,  <39.005135, 43.070419, 22.765781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269470, 43.001507, 23.057978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638082, 0.641409, -0.425965,
		-0.395155, 0.747605, 0.533797,
		0.660836, -0.172284, 0.730489,
		39.467720, 42.949821, 23.277124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275013, 43.652100, 22.908827>,  <39.005135, 43.070419, 22.765781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275013, 43.652100, 22.908827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570683, 43.419079, 23.044027>,  <39.748085, 43.279266, 23.125147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570683, 43.419079, 23.044027>,  <39.275013, 43.652100, 22.908827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570683, 43.419079, 23.044027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673495, 0.642751, -0.365069,
		-0.004577, 0.497493, 0.867456,
		0.739178, -0.582556, 0.338001,
		39.792435, 43.244312, 23.145428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778667, 44.080200, 23.152048>,  <39.275013, 43.652100, 22.908827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778667, 44.080200, 23.152048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969578, 43.735756, 23.081964>,  <40.084126, 43.529091, 23.039915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969578, 43.735756, 23.081964>,  <39.778667, 44.080200, 23.152048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969578, 43.735756, 23.081964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756531, 0.504079, -0.416612,
		0.447068, 0.066287, 0.892041,
		0.477275, -0.861110, -0.175209,
		40.112759, 43.477425, 23.029402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430550, 44.246655, 23.392765>,  <39.778667, 44.080200, 23.152048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430550, 44.246655, 23.392765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484222, 43.944511, 23.136192>,  <40.516426, 43.763226, 22.982248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484222, 43.944511, 23.136192>,  <40.430550, 44.246655, 23.392765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484222, 43.944511, 23.136192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641908, 0.559381, -0.524449,
		0.754950, -0.341368, 0.559928,
		0.134183, -0.755355, -0.641431,
		40.524479, 43.717903, 22.943764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085705, 44.037464, 23.453447>,  <40.430550, 44.246655, 23.392765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085705, 44.037464, 23.453447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979069, 43.902180, 23.092440>,  <40.915089, 43.821007, 22.875835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979069, 43.902180, 23.092440>,  <41.085705, 44.037464, 23.453447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979069, 43.902180, 23.092440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598387, 0.675992, -0.430078,
		0.755554, -0.654711, 0.022169,
		-0.266591, -0.338213, -0.902519,
		40.899090, 43.800716, 22.821684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685257, 43.794270, 23.124485>,  <41.085705, 44.037464, 23.453447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685257, 43.794270, 23.124485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426907, 43.872940, 22.829416>,  <41.271896, 43.920143, 22.652374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426907, 43.872940, 22.829416>,  <41.685257, 43.794270, 23.124485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426907, 43.872940, 22.829416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687670, 0.569556, -0.450241,
		0.331592, -0.798075, -0.503113,
		-0.645877, 0.196679, -0.737672,
		41.233143, 43.931946, 22.608114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052814, 43.754711, 22.531971>,  <41.685257, 43.794270, 23.124485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052814, 43.754711, 22.531971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730110, 43.943592, 22.389891>,  <41.536488, 44.056919, 22.304644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730110, 43.943592, 22.389891>,  <42.052814, 43.754711, 22.531971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730110, 43.943592, 22.389891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590729, 0.658149, -0.466775,
		0.013362, -0.586401, -0.809910,
		-0.806759, 0.472201, -0.355199,
		41.488083, 44.085251, 22.283331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133991, 43.887665, 21.793877>,  <42.052814, 43.754711, 22.531971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133991, 43.887665, 21.793877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851280, 44.161865, 21.863792>,  <41.681656, 44.326385, 21.905743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851280, 44.161865, 21.863792>,  <42.133991, 43.887665, 21.793877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851280, 44.161865, 21.863792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492897, 0.654401, -0.573421,
		-0.507466, -0.319126, -0.800398,
		-0.706775, 0.685505, 0.174790,
		41.639248, 44.367516, 21.916229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058643, 44.101070, 21.231268>,  <42.133991, 43.887665, 21.793877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058643, 44.101070, 21.231268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928520, 44.397312, 21.466446>,  <41.850449, 44.575058, 21.607553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928520, 44.397312, 21.466446>,  <42.058643, 44.101070, 21.231268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928520, 44.397312, 21.466446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509266, 0.661105, -0.550989,
		-0.796760, 0.120182, -0.592225,
		-0.325303, 0.740606, 0.587946,
		41.830929, 44.619495, 21.642830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834755, 44.727802, 20.795626>,  <42.058643, 44.101070, 21.231268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834755, 44.727802, 20.795626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899529, 44.878319, 21.160522>,  <41.938393, 44.968628, 21.379459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899529, 44.878319, 21.160522>,  <41.834755, 44.727802, 20.795626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899529, 44.878319, 21.160522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391745, 0.823963, -0.409415,
		-0.905712, 0.423662, -0.013986,
		0.161930, 0.376291, 0.912241,
		41.948109, 44.991207, 21.434195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651798, 45.389694, 20.713976>,  <41.834755, 44.727802, 20.795626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651798, 45.389694, 20.713976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873814, 45.397663, 21.046610>,  <42.007023, 45.402443, 21.246191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873814, 45.397663, 21.046610>,  <41.651798, 45.389694, 20.713976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873814, 45.397663, 21.046610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687159, 0.552401, -0.471874,
		-0.468770, 0.833340, 0.292914,
		0.555038, 0.019921, 0.831587,
		42.040325, 45.403641, 21.296085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863491, 46.030457, 20.948364>,  <41.651798, 45.389694, 20.713976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863491, 46.030457, 20.948364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166832, 45.804188, 21.077927>,  <42.348835, 45.668427, 21.155664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166832, 45.804188, 21.077927>,  <41.863491, 46.030457, 20.948364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166832, 45.804188, 21.077927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650329, 0.622712, -0.435090,
		0.044420, 0.540596, 0.840109,
		0.758353, -0.565674, 0.323904,
		42.394337, 45.634487, 21.175098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297848, 46.460819, 20.753784>,  <41.863491, 46.030457, 20.948364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297848, 46.460819, 20.753784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529858, 46.155647, 20.867985>,  <42.669064, 45.972546, 20.936504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529858, 46.155647, 20.867985>,  <42.297848, 46.460819, 20.753784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529858, 46.155647, 20.867985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725933, 0.325090, -0.606084,
		0.369585, 0.558799, 0.742395,
		0.580025, -0.762928, 0.285502,
		42.703865, 45.926769, 20.953636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926064, 46.722393, 20.970316>,  <42.297848, 46.460819, 20.753784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926064, 46.722393, 20.970316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967449, 46.351513, 20.826315>,  <42.992279, 46.128986, 20.739914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967449, 46.351513, 20.826315>,  <42.926064, 46.722393, 20.970316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967449, 46.351513, 20.826315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638549, 0.339426, -0.690685,
		0.762594, -0.158417, 0.627179,
		0.103465, -0.927197, -0.360001,
		42.998489, 46.073353, 20.718315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640347, 46.511040, 20.727539>,  <42.926064, 46.722393, 20.970316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640347, 46.511040, 20.727539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363720, 46.316940, 20.513525>,  <43.197742, 46.200481, 20.385117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363720, 46.316940, 20.513525>,  <43.640347, 46.511040, 20.727539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363720, 46.316940, 20.513525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332638, 0.443551, -0.832235,
		0.641157, -0.753522, -0.145335,
		-0.691570, -0.485249, -0.535036,
		43.156250, 46.171364, 20.353014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009296, 46.055946, 20.148294>,  <43.640347, 46.511040, 20.727539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009296, 46.055946, 20.148294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643555, 46.203793, 20.082161>,  <43.424110, 46.292500, 20.042480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643555, 46.203793, 20.082161>,  <44.009296, 46.055946, 20.148294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643555, 46.203793, 20.082161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372525, 0.607884, -0.701215,
		-0.158681, -0.702751, -0.693514,
		-0.914355, 0.369620, -0.165332,
		43.369247, 46.314678, 20.032560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127567, 45.330402, 20.278242>,  <44.009296, 46.055946, 20.148294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127567, 45.330402, 20.278242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815311, 45.284233, 20.032553>,  <43.627956, 45.256531, 19.885139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815311, 45.284233, 20.032553>,  <44.127567, 45.330402, 20.278242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815311, 45.284233, 20.032553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557694, 0.572245, 0.601260,
		0.282085, 0.811919, -0.511092,
		-0.780644, -0.115427, -0.614224,
		43.581120, 45.249603, 19.848286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071323, 45.849377, 20.832422>,  <44.127567, 45.330402, 20.278242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071323, 45.849377, 20.832422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172184, 46.218403, 20.949238>,  <44.232700, 46.439819, 21.019327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172184, 46.218403, 20.949238>,  <44.071323, 45.849377, 20.832422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172184, 46.218403, 20.949238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243047, -0.352496, 0.903700,
		0.936669, -0.156888, -0.313110,
		0.252150, 0.922569, 0.292041,
		44.247829, 46.495174, 21.036850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510044, 45.879761, 21.506422>,  <44.071323, 45.849377, 20.832422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510044, 45.879761, 21.506422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319809, 46.231483, 21.496294>,  <44.205669, 46.442516, 21.490217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319809, 46.231483, 21.496294>,  <44.510044, 45.879761, 21.506422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319809, 46.231483, 21.496294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030175, 0.012460, 0.999467,
		0.879151, 0.476097, 0.020607,
		-0.475587, 0.879304, -0.025321,
		44.177132, 46.495274, 21.488697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775265, 46.200035, 22.105129>,  <44.510044, 45.879761, 21.506422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775265, 46.200035, 22.105129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416428, 46.342030, 21.999895>,  <44.201126, 46.427227, 21.936754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416428, 46.342030, 21.999895>,  <44.775265, 46.200035, 22.105129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416428, 46.342030, 21.999895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336418, -0.162741, 0.927544,
		0.286452, 0.920597, 0.265418,
		-0.897089, 0.354988, -0.263088,
		44.147301, 46.448524, 21.920969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643574, 46.808109, 22.513994>,  <44.775265, 46.200035, 22.105129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643574, 46.808109, 22.513994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290718, 46.637466, 22.434151>,  <44.079006, 46.535080, 22.386246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290718, 46.637466, 22.434151>,  <44.643574, 46.808109, 22.513994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290718, 46.637466, 22.434151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177347, -0.091755, 0.979862,
		-0.436331, 0.899770, 0.005282,
		-0.882135, -0.426608, -0.199608,
		44.026077, 46.509483, 22.374268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253025, 47.037788, 23.050962>,  <44.643574, 46.808109, 22.513994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253025, 47.037788, 23.050962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.043999, 46.728191, 22.907930>,  <43.918583, 46.542435, 22.822111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.043999, 46.728191, 22.907930>,  <44.253025, 47.037788, 23.050962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.043999, 46.728191, 22.907930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457580, -0.099283, 0.883608,
		-0.719404, 0.625368, -0.302279,
		-0.522569, -0.773988, -0.357580,
		43.887226, 46.495995, 22.800657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428383, 47.051723, 23.060734>,  <44.253025, 47.037788, 23.050962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428383, 47.051723, 23.060734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544682, 46.669083, 23.068487>,  <43.614460, 46.439499, 23.073139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544682, 46.669083, 23.068487>,  <43.428383, 47.051723, 23.060734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544682, 46.669083, 23.068487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563121, -0.154704, 0.811764,
		-0.773537, -0.246935, -0.583664,
		0.290748, -0.956603, 0.019385,
		43.631905, 46.382103, 23.074303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777054, 46.590195, 23.212547>,  <43.428383, 47.051723, 23.060734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777054, 46.590195, 23.212547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102905, 46.376263, 23.302294>,  <43.298416, 46.247906, 23.356142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102905, 46.376263, 23.302294>,  <42.777054, 46.590195, 23.212547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102905, 46.376263, 23.302294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432455, -0.302345, 0.849453,
		-0.386477, -0.789015, -0.477588,
		0.814628, -0.534829, 0.224364,
		43.347294, 46.215816, 23.369604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560806, 46.219704, 23.740709>,  <42.777054, 46.590195, 23.212547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560806, 46.219704, 23.740709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948730, 46.135780, 23.790421>,  <43.181484, 46.085426, 23.820248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948730, 46.135780, 23.790421>,  <42.560806, 46.219704, 23.740709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948730, 46.135780, 23.790421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210812, -0.465185, 0.859745,
		-0.122568, -0.859991, -0.495372,
		0.969812, -0.209807, 0.124279,
		43.239674, 46.072838, 23.827703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585526, 45.483139, 24.069271>,  <42.560806, 46.219704, 23.740709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585526, 45.483139, 24.069271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948418, 45.644199, 24.117931>,  <43.166153, 45.740837, 24.147127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948418, 45.644199, 24.117931>,  <42.585526, 45.483139, 24.069271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948418, 45.644199, 24.117931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011710, -0.313274, 0.949591,
		0.420465, -0.860075, -0.288928,
		0.907233, 0.402653, 0.121649,
		43.220589, 45.764996, 24.154427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091160, 44.888916, 24.273909>,  <42.585526, 45.483139, 24.069271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091160, 44.888916, 24.273909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229530, 45.240490, 24.405245>,  <43.312553, 45.451435, 24.484047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229530, 45.240490, 24.405245>,  <43.091160, 44.888916, 24.273909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229530, 45.240490, 24.405245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071277, -0.373555, 0.924865,
		0.935549, -0.296534, -0.191871,
		0.345929, 0.878934, 0.328343,
		43.333309, 45.504169, 24.503748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.574841, 44.649395, 24.790791>,  <43.091160, 44.888916, 24.273909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.574841, 44.649395, 24.790791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490582, 45.032005, 24.871473>,  <43.440025, 45.261570, 24.919884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490582, 45.032005, 24.871473>,  <43.574841, 44.649395, 24.790791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490582, 45.032005, 24.871473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069006, -0.220371, 0.972972,
		0.975124, 0.191032, 0.112426,
		-0.210645, 0.956527, 0.201707,
		43.427387, 45.318962, 24.931986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955399, 44.730423, 25.335197>,  <43.574841, 44.649395, 24.790791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955399, 44.730423, 25.335197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689564, 45.025089, 25.385223>,  <43.530064, 45.201889, 25.415239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689564, 45.025089, 25.385223>,  <43.955399, 44.730423, 25.335197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689564, 45.025089, 25.385223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230644, -0.361446, 0.903416,
		0.710723, 0.571554, 0.410121,
		-0.664587, 0.736670, 0.125063,
		43.490189, 45.246090, 25.422743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008545, 44.971615, 25.993505>,  <43.955399, 44.730423, 25.335197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008545, 44.971615, 25.993505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650726, 45.104416, 25.873800>,  <43.436035, 45.184097, 25.801977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650726, 45.104416, 25.873800>,  <44.008545, 44.971615, 25.993505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650726, 45.104416, 25.873800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406618, -0.326451, 0.853283,
		0.185598, 0.884988, 0.427024,
		-0.894548, 0.332003, -0.299263,
		43.382362, 45.204018, 25.784021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690517, 45.254642, 26.620989>,  <44.008545, 44.971615, 25.993505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690517, 45.254642, 26.620989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391136, 45.221237, 26.357828>,  <43.211506, 45.201195, 26.199932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391136, 45.221237, 26.357828>,  <43.690517, 45.254642, 26.620989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391136, 45.221237, 26.357828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545052, -0.487674, 0.681977,
		-0.377797, 0.869022, 0.319484,
		-0.748457, -0.083513, -0.657904,
		43.166599, 45.196182, 26.160458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129009, 45.585640, 26.901365>,  <43.690517, 45.254642, 26.620989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129009, 45.585640, 26.901365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002693, 45.322205, 26.628151>,  <42.926903, 45.164143, 26.464222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002693, 45.322205, 26.628151>,  <43.129009, 45.585640, 26.901365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002693, 45.322205, 26.628151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669990, -0.354959, 0.652011,
		-0.671857, 0.663525, -0.329155,
		-0.315788, -0.658588, -0.683036,
		42.907955, 45.124626, 26.423241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447971, 45.670094, 26.760078>,  <43.129009, 45.585640, 26.901365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447971, 45.670094, 26.760078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546875, 45.286720, 26.703138>,  <42.606216, 45.056694, 26.668974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546875, 45.286720, 26.703138>,  <42.447971, 45.670094, 26.760078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546875, 45.286720, 26.703138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784310, -0.284236, 0.551423,
		-0.568965, -0.024697, -0.821991,
		0.247258, -0.958436, -0.142350,
		42.621052, 44.999191, 26.660433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850189, 45.383263, 26.627670>,  <42.447971, 45.670094, 26.760078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850189, 45.383263, 26.627670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056145, 45.046890, 26.694265>,  <42.179718, 44.845066, 26.734222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056145, 45.046890, 26.694265>,  <41.850189, 45.383263, 26.627670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056145, 45.046890, 26.694265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757287, -0.355170, 0.548060,
		-0.401750, -0.408271, -0.819702,
		0.514891, -0.840933, 0.166489,
		42.210613, 44.794609, 26.744211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433167, 44.777355, 26.510395>,  <41.850189, 45.383263, 26.627670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433167, 44.777355, 26.510395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725700, 44.649883, 26.751593>,  <41.901218, 44.573402, 26.896311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725700, 44.649883, 26.751593>,  <41.433167, 44.777355, 26.510395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725700, 44.649883, 26.751593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680766, -0.394717, 0.617055,
		0.041370, -0.861768, -0.505613,
		0.731332, -0.318676, 0.602992,
		41.945099, 44.554279, 26.932489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107037, 44.184017, 26.626497>,  <41.433167, 44.777355, 26.510395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107037, 44.184017, 26.626497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408569, 44.207836, 26.888243>,  <41.589489, 44.222126, 27.045290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408569, 44.207836, 26.888243>,  <41.107037, 44.184017, 26.626497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408569, 44.207836, 26.888243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559079, -0.465092, 0.686382,
		0.345211, -0.883257, -0.317310,
		0.753830, 0.059544, 0.654366,
		41.634720, 44.225700, 27.084553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288292, 43.432007, 26.953537>,  <41.107037, 44.184017, 26.626497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288292, 43.432007, 26.953537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415195, 43.716125, 27.204876>,  <41.491337, 43.886597, 27.355679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415195, 43.716125, 27.204876>,  <41.288292, 43.432007, 26.953537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415195, 43.716125, 27.204876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427697, -0.484196, 0.763301,
		0.846416, -0.510909, 0.150176,
		0.317263, 0.710300, 0.628346,
		41.510376, 43.929214, 27.393379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497318, 42.964272, 27.537560>,  <41.288292, 43.432007, 26.953537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497318, 42.964272, 27.537560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459442, 43.339180, 27.671753>,  <41.436714, 43.564125, 27.752270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459442, 43.339180, 27.671753>,  <41.497318, 42.964272, 27.537560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459442, 43.339180, 27.671753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473038, -0.338886, 0.813260,
		0.875938, -0.081686, 0.475457,
		-0.094694, 0.937274, 0.335483,
		41.431034, 43.620361, 27.772398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655411, 42.914619, 28.173237>,  <41.497318, 42.964272, 27.537560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655411, 42.914619, 28.173237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453861, 43.259518, 28.152634>,  <41.332932, 43.466457, 28.140272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453861, 43.259518, 28.152634>,  <41.655411, 42.914619, 28.173237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453861, 43.259518, 28.152634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481005, -0.230556, 0.845860,
		0.717459, 0.450981, 0.530913,
		-0.503872, 0.862241, -0.051509,
		41.302700, 43.518188, 28.137180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629250, 43.107925, 28.824066>,  <41.655411, 42.914619, 28.173237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629250, 43.107925, 28.824066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345707, 43.323208, 28.641703>,  <41.175579, 43.452377, 28.532284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345707, 43.323208, 28.641703>,  <41.629250, 43.107925, 28.824066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345707, 43.323208, 28.641703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525224, 0.028673, 0.850481,
		0.470805, 0.842327, 0.262353,
		-0.708860, 0.538204, -0.455909,
		41.133049, 43.484669, 28.504930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418797, 43.552711, 29.346842>,  <41.629250, 43.107925, 28.824066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418797, 43.552711, 29.346842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111256, 43.538555, 29.091463>,  <40.926731, 43.530064, 28.938236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111256, 43.538555, 29.091463>,  <41.418797, 43.552711, 29.346842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111256, 43.538555, 29.091463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638138, -0.020916, 0.769638,
		-0.040589, 0.999155, -0.006500,
		-0.768851, -0.035387, -0.638448,
		40.880600, 43.527939, 28.899929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943539, 43.997189, 29.488951>,  <41.418797, 43.552711, 29.346842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943539, 43.997189, 29.488951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698654, 43.759487, 29.280315>,  <40.551723, 43.616867, 29.155134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698654, 43.759487, 29.280315>,  <40.943539, 43.997189, 29.488951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698654, 43.759487, 29.280315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642497, -0.010613, 0.766214,
		-0.460864, 0.804205, -0.375311,
		-0.612211, -0.594257, -0.521591,
		40.514992, 43.581211, 29.123838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376022, 44.161152, 29.870193>,  <40.943539, 43.997189, 29.488951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376022, 44.161152, 29.870193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273777, 43.825600, 29.677969>,  <40.212429, 43.624268, 29.562634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273777, 43.825600, 29.677969>,  <40.376022, 44.161152, 29.870193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273777, 43.825600, 29.677969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825380, -0.069469, 0.560288,
		-0.503399, 0.539862, -0.674639,
		-0.255612, -0.838882, -0.480562,
		40.197094, 43.573936, 29.533800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632782, 44.177567, 29.697906>,  <40.376022, 44.161152, 29.870193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632782, 44.177567, 29.697906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729214, 43.789635, 29.683405>,  <39.787075, 43.556877, 29.674704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729214, 43.789635, 29.683405>,  <39.632782, 44.177567, 29.697906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729214, 43.789635, 29.683405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675584, -0.194523, 0.711159,
		-0.696754, -0.146955, -0.702096,
		0.241082, -0.969828, -0.036254,
		39.801540, 43.498688, 29.672529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021236, 43.755650, 29.642052>,  <39.632782, 44.177567, 29.697906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021236, 43.755650, 29.642052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311523, 43.515198, 29.775906>,  <39.485695, 43.370926, 29.856218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311523, 43.515198, 29.775906>,  <39.021236, 43.755650, 29.642052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311523, 43.515198, 29.775906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661737, -0.476795, 0.578593,
		-0.188255, -0.641336, -0.743807,
		0.725716, -0.601127, 0.334637,
		39.529240, 43.334858, 29.876297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734890, 42.978703, 29.551519>,  <39.021236, 43.755650, 29.642052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734890, 42.978703, 29.551519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044994, 42.913074, 29.795502>,  <39.231056, 42.873695, 29.941891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044994, 42.913074, 29.795502>,  <38.734890, 42.978703, 29.551519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044994, 42.913074, 29.795502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531689, -0.690834, 0.489955,
		0.340992, -0.704151, -0.622813,
		0.775262, -0.164072, 0.609958,
		39.277573, 42.863853, 29.978489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920986, 42.190601, 29.528782>,  <38.734890, 42.978703, 29.551519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920986, 42.190601, 29.528782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051960, 42.350254, 29.871355>,  <39.130547, 42.446045, 30.076899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051960, 42.350254, 29.871355>,  <38.920986, 42.190601, 29.528782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051960, 42.350254, 29.871355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309634, -0.811023, 0.496356,
		0.892699, -0.427706, -0.141974,
		0.327439, 0.399136, 0.856431,
		39.150192, 42.469994, 30.128284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251221, 41.601677, 29.979891>,  <38.920986, 42.190601, 29.528782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251221, 41.601677, 29.979891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186325, 41.867668, 30.271503>,  <39.147388, 42.027264, 30.446470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186325, 41.867668, 30.271503>,  <39.251221, 41.601677, 29.979891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186325, 41.867668, 30.271503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393885, -0.721047, 0.570040,
		0.904729, -0.194672, 0.378905,
		-0.162237, 0.664977, 0.729030,
		39.137653, 42.067162, 30.490213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400311, 41.252441, 30.575987>,  <39.251221, 41.601677, 29.979891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400311, 41.252441, 30.575987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180801, 41.560085, 30.707026>,  <39.049095, 41.744671, 30.785648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180801, 41.560085, 30.707026>,  <39.400311, 41.252441, 30.575987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180801, 41.560085, 30.707026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547485, -0.626794, 0.554427,
		0.631752, 0.124898, 0.765043,
		-0.548771, 0.769110, 0.327598,
		39.016171, 41.790817, 30.805305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415592, 41.204296, 31.275818>,  <39.400311, 41.252441, 30.575987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415592, 41.204296, 31.275818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101631, 41.437534, 31.191990>,  <38.913254, 41.577477, 31.141693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101631, 41.437534, 31.191990>,  <39.415592, 41.204296, 31.275818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101631, 41.437534, 31.191990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533500, -0.463977, 0.707180,
		0.315120, 0.666875, 0.675261,
		-0.784906, 0.583098, -0.209569,
		38.866158, 41.612465, 31.129120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165409, 41.403313, 31.900063>,  <39.415592, 41.204296, 31.275818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165409, 41.403313, 31.900063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842201, 41.507111, 31.688488>,  <38.648277, 41.569389, 31.561543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842201, 41.507111, 31.688488>,  <39.165409, 41.403313, 31.900063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842201, 41.507111, 31.688488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587642, -0.419384, 0.691949,
		-0.042273, 0.869932, 0.491356,
		-0.808016, 0.259491, -0.528937,
		38.599796, 41.584957, 31.529806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571751, 41.593491, 32.426010>,  <39.165409, 41.403313, 31.900063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571751, 41.593491, 32.426010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423553, 41.483494, 32.071133>,  <38.334633, 41.417496, 31.858206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423553, 41.483494, 32.071133>,  <38.571751, 41.593491, 32.426010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423553, 41.483494, 32.071133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665181, -0.588107, 0.460071,
		-0.648279, 0.760599, 0.034973,
		-0.370497, -0.274991, -0.887193,
		38.312405, 41.400997, 31.804976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851967, 41.649845, 32.576035>,  <38.571751, 41.593491, 32.426010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851967, 41.649845, 32.576035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929752, 41.396008, 32.276844>,  <37.976421, 41.243706, 32.097328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929752, 41.396008, 32.276844>,  <37.851967, 41.649845, 32.576035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929752, 41.396008, 32.276844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729139, -0.603595, 0.322537,
		-0.656157, 0.482660, -0.580084,
		0.194460, -0.634596, -0.747979,
		37.988091, 41.205627, 32.052452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180988, 41.228725, 32.477928>,  <37.851967, 41.649845, 32.576035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180988, 41.228725, 32.477928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430424, 41.009407, 32.255035>,  <37.580086, 40.877815, 32.121300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430424, 41.009407, 32.255035>,  <37.180988, 41.228725, 32.477928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430424, 41.009407, 32.255035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434383, -0.835655, 0.336144,
		-0.649959, 0.032436, -0.759277,
		0.623590, -0.548296, -0.557231,
		37.617500, 40.844917, 32.087868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799793, 40.679256, 32.023594>,  <37.180988, 41.228725, 32.477928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799793, 40.679256, 32.023594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166607, 40.537449, 32.096653>,  <37.386696, 40.452366, 32.140488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166607, 40.537449, 32.096653>,  <36.799793, 40.679256, 32.023594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166607, 40.537449, 32.096653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398660, -0.827049, 0.396308,
		0.010558, -0.436243, -0.899767,
		0.917038, -0.354517, 0.182645,
		37.441719, 40.431095, 32.151447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841064, 40.045727, 31.771570>,  <36.799793, 40.679256, 32.023594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841064, 40.045727, 31.771570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161968, 40.006195, 32.007065>,  <37.354511, 39.982475, 32.148361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161968, 40.006195, 32.007065>,  <36.841064, 40.045727, 31.771570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161968, 40.006195, 32.007065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395633, -0.826541, 0.400381,
		0.447045, -0.554133, -0.702201,
		0.802262, -0.098826, 0.588735,
		37.402645, 39.976547, 32.183685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006390, 39.281406, 31.909603>,  <36.841064, 40.045727, 31.771570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006390, 39.281406, 31.909603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192913, 39.459919, 32.215122>,  <37.304829, 39.567028, 32.398434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192913, 39.459919, 32.215122>,  <37.006390, 39.281406, 31.909603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192913, 39.459919, 32.215122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184449, -0.795392, 0.577348,
		0.865178, -0.410105, -0.288583,
		0.466310, 0.446280, 0.763799,
		37.332806, 39.593803, 32.444263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474895, 38.836365, 32.117043>,  <37.006390, 39.281406, 31.909603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474895, 38.836365, 32.117043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424278, 39.065582, 32.440918>,  <37.393909, 39.203114, 32.635242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424278, 39.065582, 32.440918>,  <37.474895, 38.836365, 32.117043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424278, 39.065582, 32.440918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080578, -0.819495, 0.567393,
		0.988683, 0.006557, 0.149877,
		-0.126544, 0.573048, 0.809693,
		37.386314, 39.237495, 32.683826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538319, 38.351143, 32.571800>,  <37.474895, 38.836365, 32.117043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538319, 38.351143, 32.571800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395943, 38.663288, 32.777458>,  <37.310516, 38.850574, 32.900852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395943, 38.663288, 32.777458>,  <37.538319, 38.351143, 32.571800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395943, 38.663288, 32.777458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300365, -0.616512, 0.727801,
		0.884923, 0.104622, 0.453834,
		-0.355938, 0.780364, 0.514141,
		37.289162, 38.897396, 32.931702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902466, 38.372135, 33.187431>,  <37.538319, 38.351143, 32.571800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902466, 38.372135, 33.187431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546997, 38.552135, 33.222675>,  <37.333717, 38.660133, 33.243820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546997, 38.552135, 33.222675>,  <37.902466, 38.372135, 33.187431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546997, 38.552135, 33.222675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262619, -0.656996, 0.706674,
		0.375889, 0.604862, 0.702032,
		-0.888673, 0.449998, 0.088109,
		37.280396, 38.687134, 33.249107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320759, 38.647778, 33.879448>,  <37.902466, 38.372135, 33.187431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320759, 38.647778, 33.879448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650005, 38.446194, 33.984146>,  <38.847553, 38.325245, 34.046967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650005, 38.446194, 33.984146>,  <38.320759, 38.647778, 33.879448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650005, 38.446194, 33.984146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520209, 0.484300, -0.703446,
		0.227743, 0.715179, 0.660797,
		0.823113, -0.503958, 0.261747,
		38.896938, 38.295006, 34.062672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756744, 39.158585, 34.165974>,  <38.320759, 38.647778, 33.879448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756744, 39.158585, 34.165974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976929, 38.845261, 34.050449>,  <39.109039, 38.657265, 33.981136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976929, 38.845261, 34.050449>,  <38.756744, 39.158585, 34.165974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976929, 38.845261, 34.050449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467633, 0.575872, -0.670590,
		0.691601, 0.234076, 0.683298,
		0.550461, -0.783314, -0.288812,
		39.142067, 38.610268, 33.963806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436356, 39.421280, 34.034924>,  <38.756744, 39.158585, 34.165974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436356, 39.421280, 34.034924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454315, 39.056740, 33.871250>,  <39.465092, 38.838017, 33.773048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454315, 39.056740, 33.871250>,  <39.436356, 39.421280, 34.034924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454315, 39.056740, 33.871250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674902, 0.329656, -0.660177,
		0.736540, -0.246519, 0.629870,
		0.044895, -0.911348, -0.409181,
		39.467785, 38.783337, 33.748497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166290, 39.189468, 34.023140>,  <39.436356, 39.421280, 34.034924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166290, 39.189468, 34.023140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956711, 39.010674, 33.733124>,  <39.830963, 38.903397, 33.559113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956711, 39.010674, 33.733124>,  <40.166290, 39.189468, 34.023140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956711, 39.010674, 33.733124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742749, 0.176875, -0.645786,
		0.416899, -0.876880, 0.239325,
		-0.523946, -0.446986, -0.725041,
		39.799526, 38.876579, 33.515610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617752, 38.818886, 33.661716>,  <40.166290, 39.189468, 34.023140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617752, 38.818886, 33.661716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332405, 38.826439, 33.381500>,  <40.161198, 38.830971, 33.213371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332405, 38.826439, 33.381500>,  <40.617752, 38.818886, 33.661716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332405, 38.826439, 33.381500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631068, 0.451988, -0.630444,
		0.304733, -0.891824, -0.334346,
		-0.713366, 0.018878, -0.700538,
		40.118397, 38.832104, 33.171341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860310, 38.452110, 33.034073>,  <40.617752, 38.818886, 33.661716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860310, 38.452110, 33.034073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596294, 38.728264, 32.915596>,  <40.437885, 38.893955, 32.844509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596294, 38.728264, 32.915596>,  <40.860310, 38.452110, 33.034073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596294, 38.728264, 32.915596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690879, 0.403001, -0.600231,
		-0.295023, -0.600805, -0.742963,
		-0.660037, 0.690379, -0.296189,
		40.398285, 38.935379, 32.826740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098206, 38.564846, 32.440277>,  <40.860310, 38.452110, 33.034073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098206, 38.564846, 32.440277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819378, 38.850590, 32.464901>,  <40.652081, 39.022034, 32.479675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819378, 38.850590, 32.464901>,  <41.098206, 38.564846, 32.440277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819378, 38.850590, 32.464901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439343, 0.493396, -0.750692,
		-0.566633, -0.496240, -0.657779,
		-0.697069, 0.714357, 0.061555,
		40.610256, 39.064896, 32.483368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979683, 38.744648, 31.748545>,  <41.098206, 38.564846, 32.440277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979683, 38.744648, 31.748545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904827, 39.041340, 32.006168>,  <40.859913, 39.219357, 32.160744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904827, 39.041340, 32.006168>,  <40.979683, 38.744648, 31.748545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904827, 39.041340, 32.006168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553466, 0.621289, -0.554685,
		-0.811574, 0.252661, -0.526792,
		-0.187143, 0.741730, 0.644061,
		40.848682, 39.263859, 32.199387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800503, 39.373985, 31.352043>,  <40.979683, 38.744648, 31.748545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800503, 39.373985, 31.352043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906979, 39.538445, 31.700779>,  <40.970863, 39.637119, 31.910021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906979, 39.538445, 31.700779>,  <40.800503, 39.373985, 31.352043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906979, 39.538445, 31.700779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573981, 0.659025, -0.486037,
		-0.774395, 0.629798, -0.060561,
		0.266194, 0.411145, 0.871837,
		40.986835, 39.661789, 31.962330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944420, 40.046402, 31.152563>,  <40.800503, 39.373985, 31.352043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944420, 40.046402, 31.152563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115108, 40.013878, 31.512852>,  <41.217522, 39.994362, 31.729025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115108, 40.013878, 31.512852>,  <40.944420, 40.046402, 31.152563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115108, 40.013878, 31.512852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664437, 0.703847, -0.251243,
		-0.613541, 0.705682, 0.354373,
		0.426722, -0.081310, 0.900720,
		41.243126, 39.989483, 31.783068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929352, 40.679382, 31.375404>,  <40.944420, 40.046402, 31.152563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929352, 40.679382, 31.375404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223019, 40.508678, 31.586639>,  <41.399220, 40.406258, 31.713381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223019, 40.508678, 31.586639>,  <40.929352, 40.679382, 31.375404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223019, 40.508678, 31.586639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633914, 0.709435, -0.307986,
		-0.243209, 0.560876, 0.791371,
		0.734168, -0.426756, 0.528088,
		41.443268, 40.380653, 31.745066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359875, 41.207230, 31.632601>,  <40.929352, 40.679382, 31.375404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359875, 41.207230, 31.632601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592564, 40.885643, 31.681969>,  <41.732178, 40.692692, 31.711590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592564, 40.885643, 31.681969>,  <41.359875, 41.207230, 31.632601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592564, 40.885643, 31.681969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790414, 0.522935, -0.319036,
		0.191956, 0.283142, 0.939672,
		0.581720, -0.803971, 0.123419,
		41.767078, 40.644451, 31.718994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833244, 41.402302, 32.093178>,  <41.359875, 41.207230, 31.632601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833244, 41.402302, 32.093178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004753, 41.110985, 31.879358>,  <42.107658, 40.936195, 31.751066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004753, 41.110985, 31.879358>,  <41.833244, 41.402302, 32.093178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004753, 41.110985, 31.879358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704833, 0.639813, -0.306348,
		0.565123, -0.245415, 0.787660,
		0.428773, -0.728293, -0.534550,
		42.133385, 40.892498, 31.718994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487572, 41.477928, 32.239807>,  <41.833244, 41.402302, 32.093178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487572, 41.477928, 32.239807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475048, 41.252094, 31.909895>,  <42.467533, 41.116596, 31.711946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475048, 41.252094, 31.909895>,  <42.487572, 41.477928, 32.239807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475048, 41.252094, 31.909895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690966, 0.584025, -0.426006,
		0.722209, -0.583235, 0.371821,
		-0.031309, -0.564581, -0.824784,
		42.465656, 41.082722, 31.662460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106483, 41.367058, 32.063705>,  <42.487572, 41.477928, 32.239807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106483, 41.367058, 32.063705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950916, 41.278122, 31.706089>,  <42.857578, 41.224762, 31.491520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950916, 41.278122, 31.706089>,  <43.106483, 41.367058, 32.063705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950916, 41.278122, 31.706089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766999, 0.459444, -0.447910,
		0.510351, -0.859927, -0.008148,
		-0.388913, -0.222341, -0.894042,
		42.834244, 41.211418, 31.437876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614746, 41.148193, 31.684462>,  <43.106483, 41.367058, 32.063705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614746, 41.148193, 31.684462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344761, 41.250801, 31.407730>,  <43.182770, 41.312366, 31.241692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344761, 41.250801, 31.407730>,  <43.614746, 41.148193, 31.684462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344761, 41.250801, 31.407730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659569, 0.630056, -0.409876,
		0.330750, -0.732959, -0.594454,
		-0.674962, 0.256517, -0.691828,
		43.142273, 41.327755, 31.200182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963207, 41.076561, 30.993355>,  <43.614746, 41.148193, 31.684462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963207, 41.076561, 30.993355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.651905, 41.325401, 30.959164>,  <43.465122, 41.474705, 30.938648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.651905, 41.325401, 30.959164>,  <43.963207, 41.076561, 30.993355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651905, 41.325401, 30.959164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595212, 0.687439, -0.416113,
		-0.200104, -0.374720, -0.905286,
		-0.778255, 0.622103, -0.085478,
		43.418430, 41.512032, 30.933519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926353, 41.235947, 30.215708>,  <43.963207, 41.076561, 30.993355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926353, 41.235947, 30.215708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702564, 41.516205, 30.392832>,  <43.568291, 41.684361, 30.499107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702564, 41.516205, 30.392832>,  <43.926353, 41.235947, 30.215708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702564, 41.516205, 30.392832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400770, 0.696324, -0.595412,
		-0.725514, -0.155654, -0.670375,
		-0.559476, 0.700646, 0.442811,
		43.534721, 41.726398, 30.525675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539639, 41.513844, 29.688454>,  <43.926353, 41.235947, 30.215708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539639, 41.513844, 29.688454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564537, 41.788223, 29.978445>,  <43.579475, 41.952850, 30.152439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564537, 41.788223, 29.978445>,  <43.539639, 41.513844, 29.688454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564537, 41.788223, 29.978445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352739, 0.664389, -0.658910,
		-0.933649, 0.296744, -0.200605,
		0.062247, 0.685952, 0.724979,
		43.583210, 41.994007, 30.195938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203224, 42.050419, 29.432945>,  <43.539639, 41.513844, 29.688454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203224, 42.050419, 29.432945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425289, 42.214500, 29.722366>,  <43.558529, 42.312950, 29.896019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425289, 42.214500, 29.722366>,  <43.203224, 42.050419, 29.432945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425289, 42.214500, 29.722366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273298, 0.731656, -0.624491,
		-0.785559, 0.544439, 0.294081,
		0.555163, 0.410203, 0.723552,
		43.591839, 42.337563, 29.939432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026600, 42.721020, 29.299086>,  <43.203224, 42.050419, 29.432945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026600, 42.721020, 29.299086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362175, 42.722416, 29.516773>,  <43.563519, 42.723251, 29.647387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362175, 42.722416, 29.516773>,  <43.026600, 42.721020, 29.299086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362175, 42.722416, 29.516773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355137, 0.754225, -0.552288,
		-0.412389, 0.656607, 0.631508,
		0.838935, 0.003486, 0.544220,
		43.613857, 42.723461, 29.680038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296623, 43.520798, 29.557432>,  <43.026600, 42.721020, 29.299086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296623, 43.520798, 29.557432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586662, 43.247387, 29.523884>,  <43.760685, 43.083340, 29.503756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586662, 43.247387, 29.523884>,  <43.296623, 43.520798, 29.557432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586662, 43.247387, 29.523884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434098, 0.548213, -0.714858,
		0.534601, 0.481931, 0.694222,
		0.725094, -0.683524, -0.083869,
		43.804192, 43.042328, 29.498722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895233, 43.947014, 29.342987>,  <43.296623, 43.520798, 29.557432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895233, 43.947014, 29.342987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990246, 43.571442, 29.243401>,  <44.047253, 43.346096, 29.183649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990246, 43.571442, 29.243401>,  <43.895233, 43.947014, 29.342987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990246, 43.571442, 29.243401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284789, 0.312352, -0.906273,
		0.928694, 0.144369, 0.341592,
		0.237534, -0.938932, -0.248965,
		44.061504, 43.289761, 29.168711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585464, 44.001862, 29.025127>,  <43.895233, 43.947014, 29.342987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585464, 44.001862, 29.025127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435101, 43.650810, 28.906158>,  <44.344883, 43.440178, 28.834778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.435101, 43.650810, 28.906158>,  <44.585464, 44.001862, 29.025127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435101, 43.650810, 28.906158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400436, 0.135600, -0.906236,
		0.835668, -0.459764, 0.300460,
		-0.375912, -0.877627, -0.297423,
		44.322327, 43.387524, 28.816931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.100742, 43.815212, 28.448795>,  <44.585464, 44.001862, 29.025127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.100742, 43.815212, 28.448795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.788425, 43.573658, 28.384682>,  <44.601036, 43.428726, 28.346214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.788425, 43.573658, 28.384682>,  <45.100742, 43.815212, 28.448795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788425, 43.573658, 28.384682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181360, 0.026434, -0.983061,
		0.597891, -0.796634, 0.088881,
		-0.780791, -0.603884, -0.160282,
		44.554188, 43.392494, 28.336597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340168, 43.153252, 28.170586>,  <45.100742, 43.815212, 28.448795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340168, 43.153252, 28.170586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963322, 43.209785, 28.048967>,  <44.737213, 43.243706, 27.975996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963322, 43.209785, 28.048967>,  <45.340168, 43.153252, 28.170586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.963322, 43.209785, 28.048967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283638, -0.147622, -0.947500,
		-0.178797, -0.978893, 0.098989,
		-0.942115, 0.141333, -0.304046,
		44.680687, 43.252186, 27.957754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.218109, 42.551254, 27.779337>,  <45.340168, 43.153252, 28.170586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.218109, 42.551254, 27.779337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.921825, 42.794434, 27.664974>,  <44.744057, 42.940342, 27.596357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.921825, 42.794434, 27.664974>,  <45.218109, 42.551254, 27.779337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921825, 42.794434, 27.664974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341493, -0.025774, -0.939531,
		-0.578559, -0.793555, -0.188520,
		-0.740711, 0.607953, -0.285905,
		44.699612, 42.976818, 27.579203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051918, 42.219017, 27.160513>,  <45.218109, 42.551254, 27.779337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051918, 42.219017, 27.160513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915054, 42.594551, 27.144989>,  <44.832935, 42.819874, 27.135674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915054, 42.594551, 27.144989>,  <45.051918, 42.219017, 27.160513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915054, 42.594551, 27.144989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241709, 0.048025, -0.969159,
		-0.908021, -0.340989, -0.243358,
		-0.342160, 0.938839, -0.038812,
		44.812405, 42.876202, 27.133345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840347, 42.213840, 26.467287>,  <45.051918, 42.219017, 27.160513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840347, 42.213840, 26.467287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825054, 42.607830, 26.534657>,  <44.815880, 42.844223, 26.575079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825054, 42.607830, 26.534657>,  <44.840347, 42.213840, 26.467287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825054, 42.607830, 26.534657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121163, 0.171874, -0.977639,
		-0.991896, -0.016970, -0.125913,
		-0.038232, 0.984973, 0.168425,
		44.813583, 42.903320, 26.585184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247242, 42.546841, 26.034437>,  <44.840347, 42.213840, 26.467287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247242, 42.546841, 26.034437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494255, 42.841076, 26.145844>,  <44.642464, 43.017616, 26.212687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494255, 42.841076, 26.145844>,  <44.247242, 42.546841, 26.034437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494255, 42.841076, 26.145844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038033, 0.381611, -0.923541,
		-0.785628, 0.559721, 0.263632,
		0.617530, 0.735586, 0.278516,
		44.679516, 43.061752, 26.229399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060226, 43.214058, 25.705902>,  <44.247242, 42.546841, 26.034437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060226, 43.214058, 25.705902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448574, 43.225357, 25.801083>,  <44.681583, 43.232136, 25.858191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448574, 43.225357, 25.801083>,  <44.060226, 43.214058, 25.705902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448574, 43.225357, 25.801083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191640, 0.504604, -0.841813,
		-0.143846, 0.862889, 0.484490,
		0.970867, 0.028244, 0.237949,
		44.739834, 43.233829, 25.872467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.270325, 43.972202, 25.549198>,  <44.060226, 43.214058, 25.705902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.270325, 43.972202, 25.549198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607681, 43.757301, 25.546265>,  <44.810097, 43.628361, 25.544504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607681, 43.757301, 25.546265>,  <44.270325, 43.972202, 25.549198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607681, 43.757301, 25.546265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190590, 0.311903, -0.930802,
		0.502361, 0.783632, 0.365451,
		0.843391, -0.537250, -0.007335,
		44.860699, 43.596127, 25.544064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821888, 44.404385, 25.361675>,  <44.270325, 43.972202, 25.549198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821888, 44.404385, 25.361675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992165, 44.054768, 25.268007>,  <45.094330, 43.844997, 25.211807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992165, 44.054768, 25.268007>,  <44.821888, 44.404385, 25.361675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.992165, 44.054768, 25.268007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283987, 0.374762, -0.882556,
		0.859150, 0.309196, 0.407750,
		0.425691, -0.874043, -0.234169,
		45.119873, 43.792553, 25.197756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483555, 44.588478, 25.105612>,  <44.821888, 44.404385, 25.361675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483555, 44.588478, 25.105612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402096, 44.228889, 24.950495>,  <45.353218, 44.013138, 24.857424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402096, 44.228889, 24.950495>,  <45.483555, 44.588478, 25.105612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.402096, 44.228889, 24.950495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333328, 0.308766, -0.890818,
		0.920554, -0.310678, 0.236770,
		-0.203651, -0.898968, -0.387793,
		45.341000, 43.959198, 24.834156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.056870, 44.577114, 24.786589>,  <45.483555, 44.588478, 25.105612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.056870, 44.577114, 24.786589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809650, 44.307579, 24.624624>,  <45.661320, 44.145859, 24.527445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809650, 44.307579, 24.624624>,  <46.056870, 44.577114, 24.786589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.809650, 44.307579, 24.624624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404931, 0.168607, -0.898667,
		0.673828, -0.719384, 0.168650,
		-0.618051, -0.673839, -0.404913,
		45.624237, 44.105427, 24.503151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.473400, 44.201653, 24.421629>,  <46.056870, 44.577114, 24.786589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.473400, 44.201653, 24.421629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107468, 44.141285, 24.271801>,  <45.887909, 44.105064, 24.181904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107468, 44.141285, 24.271801>,  <46.473400, 44.201653, 24.421629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107468, 44.141285, 24.271801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369022, 0.064298, -0.927194,
		0.164016, -0.986453, -0.003129,
		-0.914834, -0.150920, -0.374569,
		45.833015, 44.096008, 24.159430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.546104, 43.784306, 23.854778>,  <46.473400, 44.201653, 24.421629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.546104, 43.784306, 23.854778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180187, 43.923409, 23.772587>,  <45.960636, 44.006870, 23.723272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180187, 43.923409, 23.772587>,  <46.546104, 43.784306, 23.854778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180187, 43.923409, 23.772587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304373, 0.259034, -0.916656,
		-0.265551, -0.901090, -0.342810,
		-0.914789, 0.347762, -0.205481,
		45.905750, 44.027737, 23.710943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.460484, 43.738674, 23.103111>,  <46.546104, 43.784306, 23.854778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.460484, 43.738674, 23.103111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182343, 44.003605, 23.214691>,  <46.015457, 44.162563, 23.281639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182343, 44.003605, 23.214691>,  <46.460484, 43.738674, 23.103111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182343, 44.003605, 23.214691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159061, 0.520357, -0.839004,
		-0.700845, -0.539034, -0.467181,
		-0.695353, 0.662322, 0.278950,
		45.973736, 44.202301, 23.298376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.694344, 43.028923, 23.146662>,  <46.460484, 43.738674, 23.103111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.694344, 43.028923, 23.146662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.870617, 42.723301, 22.958189>,  <46.976379, 42.539928, 22.845104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.870617, 42.723301, 22.958189>,  <46.694344, 43.028923, 23.146662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.870617, 42.723301, 22.958189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607370, -0.640296, 0.470237,
		-0.660988, 0.078961, -0.746231,
		0.440678, -0.764060, -0.471187,
		47.002823, 42.494083, 22.816833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.162338, 42.595066, 22.863503>,  <46.694344, 43.028923, 23.146662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.162338, 42.595066, 22.863503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.480431, 42.352573, 22.859535>,  <46.671284, 42.207077, 22.857155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.480431, 42.352573, 22.859535>,  <46.162338, 42.595066, 22.863503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.480431, 42.352573, 22.859535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571926, -0.755455, 0.319669,
		-0.201286, -0.248537, -0.947477,
		0.795227, -0.606232, -0.009918,
		46.718998, 42.170704, 22.856560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742332, 42.012825, 22.823797>,  <46.162338, 42.595066, 22.863503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742332, 42.012825, 22.823797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107292, 41.880116, 22.919668>,  <46.326267, 41.800488, 22.977190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107292, 41.880116, 22.919668>,  <45.742332, 42.012825, 22.823797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107292, 41.880116, 22.919668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396872, -0.860323, 0.319902,
		0.100064, -0.387001, -0.916634,
		0.912403, -0.331776, 0.239677,
		46.381012, 41.780582, 22.991571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822289, 41.321140, 22.512230>,  <45.742332, 42.012825, 22.823797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822289, 41.321140, 22.512230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042187, 41.375851, 22.841854>,  <46.174126, 41.408676, 23.039629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042187, 41.375851, 22.841854>,  <45.822289, 41.321140, 22.512230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042187, 41.375851, 22.841854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417017, -0.809842, 0.412617,
		0.723797, -0.570479, -0.388164,
		0.549741, 0.136780, 0.824061,
		46.207108, 41.416885, 23.089073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884552, 40.697624, 22.716017>,  <45.822289, 41.321140, 22.512230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884552, 40.697624, 22.716017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014748, 40.890751, 23.041210>,  <46.092865, 41.006626, 23.236326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014748, 40.890751, 23.041210>,  <45.884552, 40.697624, 22.716017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.014748, 40.890751, 23.041210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390469, -0.714433, 0.580620,
		0.861158, -0.506428, -0.044011,
		0.325485, 0.482821, 0.812984,
		46.112392, 41.035599, 23.285105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.303955, 40.187031, 23.170979>,  <45.884552, 40.697624, 22.716017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.303955, 40.187031, 23.170979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152992, 40.486233, 23.389355>,  <46.062416, 40.665752, 23.520380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152992, 40.486233, 23.389355>,  <46.303955, 40.187031, 23.170979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.152992, 40.486233, 23.389355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583585, -0.649854, 0.486948,
		0.719022, -0.134824, 0.681785,
		-0.377409, 0.748005, 0.545941,
		46.039768, 40.710636, 23.553137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.524788, 40.055550, 23.893343>,  <46.303955, 40.187031, 23.170979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.524788, 40.055550, 23.893343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.191380, 40.275730, 23.912266>,  <45.991333, 40.407841, 23.923620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.191380, 40.275730, 23.912266>,  <46.524788, 40.055550, 23.893343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.191380, 40.275730, 23.912266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408721, -0.671981, 0.617566,
		0.371732, 0.495421, 0.785095,
		-0.833524, 0.550454, 0.047308,
		45.941322, 40.440865, 23.926458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.319889, 40.000893, 24.622890>,  <46.524788, 40.055550, 23.893343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.319889, 40.000893, 24.622890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995346, 40.159466, 24.451061>,  <45.800621, 40.254612, 24.347963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995346, 40.159466, 24.451061>,  <46.319889, 40.000893, 24.622890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.995346, 40.159466, 24.451061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575122, -0.409952, 0.707936,
		0.104545, 0.821450, 0.560617,
		-0.811360, 0.396435, -0.429576,
		45.751938, 40.278397, 24.322189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.000534, 40.385887, 25.105686>,  <46.319889, 40.000893, 24.622890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.000534, 40.385887, 25.105686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712238, 40.295483, 24.843555>,  <45.539261, 40.241241, 24.686277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712238, 40.295483, 24.843555>,  <46.000534, 40.385887, 25.105686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.712238, 40.295483, 24.843555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600671, -0.268263, 0.753146,
		-0.346021, 0.936458, 0.057588,
		-0.720738, -0.226012, -0.655328,
		45.496017, 40.227680, 24.646957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.440884, 40.617340, 25.488241>,  <46.000534, 40.385887, 25.105686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.440884, 40.617340, 25.488241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.313080, 40.387135, 25.187124>,  <45.236397, 40.249012, 25.006454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.313080, 40.387135, 25.187124>,  <45.440884, 40.617340, 25.488241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313080, 40.387135, 25.187124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811371, -0.244215, 0.531071,
		-0.489482, 0.780476, -0.388928,
		-0.319506, -0.575515, -0.752794,
		45.217228, 40.214481, 24.961287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707130, 40.843071, 25.347683>,  <45.440884, 40.617340, 25.488241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707130, 40.843071, 25.347683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783245, 40.474094, 25.213284>,  <44.828915, 40.252708, 25.132643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783245, 40.474094, 25.213284>,  <44.707130, 40.843071, 25.347683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783245, 40.474094, 25.213284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669777, -0.372210, 0.642541,
		-0.717768, 0.102779, -0.688655,
		0.190285, -0.922440, -0.336000,
		44.840332, 40.197361, 25.112484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049572, 40.493084, 25.184170>,  <44.707130, 40.843071, 25.347683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049572, 40.493084, 25.184170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.326817, 40.210880, 25.243290>,  <44.493164, 40.041557, 25.278763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.326817, 40.210880, 25.243290>,  <44.049572, 40.493084, 25.184170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.326817, 40.210880, 25.243290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615937, -0.473159, 0.629875,
		-0.374448, -0.527615, -0.762503,
		0.693117, -0.705509, 0.147804,
		44.534752, 39.999226, 25.287630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663509, 39.877232, 25.156849>,  <44.049572, 40.493084, 25.184170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663509, 39.877232, 25.156849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995262, 39.765675, 25.350487>,  <44.194313, 39.698742, 25.466669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995262, 39.765675, 25.350487>,  <43.663509, 39.877232, 25.156849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995262, 39.765675, 25.350487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556742, -0.340388, 0.757742,
		-0.046548, -0.897973, -0.437582,
		0.829380, -0.278892, 0.484095,
		44.244076, 39.682007, 25.495714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480225, 39.225391, 25.511711>,  <43.663509, 39.877232, 25.156849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480225, 39.225391, 25.511711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807228, 39.353870, 25.702923>,  <44.003429, 39.430958, 25.817650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807228, 39.353870, 25.702923>,  <43.480225, 39.225391, 25.511711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807228, 39.353870, 25.702923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370952, -0.341250, 0.863680,
		0.440542, -0.883391, -0.159824,
		0.817507, 0.321200, 0.478030,
		44.052479, 39.450230, 25.846333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680695, 38.589752, 25.962894>,  <43.480225, 39.225391, 25.511711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680695, 38.589752, 25.962894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871872, 38.904713, 26.118616>,  <43.986580, 39.093689, 26.212049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871872, 38.904713, 26.118616>,  <43.680695, 38.589752, 25.962894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871872, 38.904713, 26.118616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406944, -0.194282, 0.892553,
		0.778436, -0.585019, 0.227574,
		0.477947, 0.787405, 0.389307,
		44.015255, 39.140934, 26.235409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870869, 38.251984, 26.567654>,  <43.680695, 38.589752, 25.962894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870869, 38.251984, 26.567654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917847, 38.647289, 26.606730>,  <43.946033, 38.884472, 26.630175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917847, 38.647289, 26.606730>,  <43.870869, 38.251984, 26.567654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917847, 38.647289, 26.606730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128965, -0.082361, 0.988223,
		0.984670, -0.128659, 0.117778,
		0.117443, 0.988263, 0.097691,
		43.953079, 38.943768, 26.636038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433941, 38.381897, 27.018959>,  <43.870869, 38.251984, 26.567654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433941, 38.381897, 27.018959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204571, 38.708797, 27.041914>,  <44.066948, 38.904938, 27.055687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204571, 38.708797, 27.041914>,  <44.433941, 38.381897, 27.018959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204571, 38.708797, 27.041914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135901, -0.163966, 0.977060,
		0.807910, 0.552468, 0.205086,
		-0.573422, 0.817248, 0.057388,
		44.032543, 38.953972, 27.059130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.635784, 38.629936, 27.664747>,  <44.433941, 38.381897, 27.018959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.635784, 38.629936, 27.664747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302948, 38.836887, 27.584803>,  <44.103245, 38.961056, 27.536837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302948, 38.836887, 27.584803>,  <44.635784, 38.629936, 27.664747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302948, 38.836887, 27.584803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257110, -0.040530, 0.965532,
		0.491442, 0.854799, 0.166747,
		-0.832093, 0.517375, -0.199859,
		44.053322, 38.992100, 27.524845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661724, 39.231026, 28.059214>,  <44.635784, 38.629936, 27.664747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661724, 39.231026, 28.059214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283348, 39.128185, 27.980122>,  <44.056324, 39.066483, 27.932667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283348, 39.128185, 27.980122>,  <44.661724, 39.231026, 28.059214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283348, 39.128185, 27.980122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158489, -0.165487, 0.973394,
		-0.282981, 0.952110, 0.115793,
		-0.945940, -0.257100, -0.197728,
		43.999565, 39.051056, 27.920803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185745, 39.711617, 28.466694>,  <44.661724, 39.231026, 28.059214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185745, 39.711617, 28.466694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926620, 39.420578, 28.376419>,  <43.771145, 39.245953, 28.322254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926620, 39.420578, 28.376419>,  <44.185745, 39.711617, 28.466694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926620, 39.420578, 28.376419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309814, -0.019019, 0.950607,
		-0.695953, 0.685739, -0.213099,
		-0.647815, -0.727599, -0.225688,
		43.732277, 39.202297, 28.308712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536610, 39.966793, 28.687101>,  <44.185745, 39.711617, 28.466694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536610, 39.966793, 28.687101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497993, 39.568817, 28.676027>,  <43.474823, 39.330032, 28.669382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497993, 39.568817, 28.676027>,  <43.536610, 39.966793, 28.687101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497993, 39.568817, 28.676027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391987, 0.012435, 0.919887,
		-0.914892, 0.099655, -0.391206,
		-0.096536, -0.994944, -0.027687,
		43.469032, 39.270332, 28.667721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980595, 39.809963, 29.103340>,  <43.536610, 39.966793, 28.687101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980595, 39.809963, 29.103340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149208, 39.447269, 29.098440>,  <43.250378, 39.229652, 29.095501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149208, 39.447269, 29.098440>,  <42.980595, 39.809963, 29.103340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149208, 39.447269, 29.098440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441070, -0.216817, 0.870889,
		-0.792317, -0.361706, -0.491327,
		0.421534, -0.906730, -0.012250,
		43.275669, 39.175251, 29.094765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404102, 39.339062, 29.272137>,  <42.980595, 39.809963, 29.103340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404102, 39.339062, 29.272137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737328, 39.124344, 29.325575>,  <42.937263, 38.995514, 29.357637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737328, 39.124344, 29.325575>,  <42.404102, 39.339062, 29.272137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737328, 39.124344, 29.325575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295494, -0.227667, 0.927821,
		-0.467637, -0.812413, -0.348282,
		0.833066, -0.536798, 0.133597,
		42.987247, 38.963306, 29.365654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218361, 38.591389, 29.437752>,  <42.404102, 39.339062, 29.272137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218361, 38.591389, 29.437752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594566, 38.628979, 29.568350>,  <42.820290, 38.651535, 29.646708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594566, 38.628979, 29.568350>,  <42.218361, 38.591389, 29.437752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594566, 38.628979, 29.568350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263699, -0.404018, 0.875918,
		0.214226, -0.909911, -0.355203,
		0.940516, 0.093978, 0.326493,
		42.876720, 38.657173, 29.666298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435444, 37.960175, 29.665926>,  <42.218361, 38.591389, 29.437752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435444, 37.960175, 29.665926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684063, 38.202385, 29.864729>,  <42.833233, 38.347713, 29.984011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684063, 38.202385, 29.864729>,  <42.435444, 37.960175, 29.665926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684063, 38.202385, 29.864729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280255, -0.420576, 0.862886,
		0.731533, -0.675611, -0.091704,
		0.621544, 0.605530, 0.497009,
		42.870525, 38.384045, 30.013832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682648, 37.606136, 30.072048>,  <42.435444, 37.960175, 29.665926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682648, 37.606136, 30.072048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788464, 37.957401, 30.231474>,  <42.851952, 38.168159, 30.327129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788464, 37.957401, 30.231474>,  <42.682648, 37.606136, 30.072048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788464, 37.957401, 30.231474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239377, -0.340560, 0.909240,
		0.934194, -0.335936, 0.120121,
		0.264538, 0.878160, 0.398564,
		42.867825, 38.220848, 30.351044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144737, 37.497021, 30.562008>,  <42.682648, 37.606136, 30.072048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144737, 37.497021, 30.562008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001328, 37.855724, 30.665768>,  <42.915283, 38.070946, 30.728024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001328, 37.855724, 30.665768>,  <43.144737, 37.497021, 30.562008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001328, 37.855724, 30.665768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026265, -0.287454, 0.957434,
		0.933151, 0.336449, 0.126612,
		-0.358523, 0.896757, 0.259401,
		42.893772, 38.124752, 30.743587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636890, 37.800251, 31.060074>,  <43.144737, 37.497021, 30.562008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636890, 37.800251, 31.060074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277679, 37.965290, 31.121149>,  <43.062153, 38.064316, 31.157795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277679, 37.965290, 31.121149>,  <43.636890, 37.800251, 31.060074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277679, 37.965290, 31.121149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010184, -0.366462, 0.930377,
		0.439827, 0.833947, 0.333294,
		-0.898025, 0.412599, 0.152688,
		43.008270, 38.089069, 31.166956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598991, 38.086212, 31.776119>,  <43.636890, 37.800251, 31.060074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598991, 38.086212, 31.776119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213863, 38.040058, 31.678417>,  <42.982784, 38.012367, 31.619797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213863, 38.040058, 31.678417>,  <43.598991, 38.086212, 31.776119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213863, 38.040058, 31.678417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131221, -0.590581, 0.796238,
		-0.236122, 0.798687, 0.553485,
		-0.962823, -0.115381, -0.244254,
		42.925018, 38.005444, 31.605141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308266, 37.895844, 32.415516>,  <43.598991, 38.086212, 31.776119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308266, 37.895844, 32.415516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000206, 37.816422, 32.173046>,  <42.815372, 37.768768, 32.027565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000206, 37.816422, 32.173046>,  <43.308266, 37.895844, 32.415516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000206, 37.816422, 32.173046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381331, -0.618487, 0.687067,
		-0.511335, 0.760295, 0.400609,
		-0.770145, -0.198557, -0.606178,
		42.769161, 37.756855, 31.991192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739342, 37.907246, 32.838383>,  <43.308266, 37.895844, 32.415516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739342, 37.907246, 32.838383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632191, 37.683941, 32.524288>,  <42.567902, 37.549957, 32.335831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632191, 37.683941, 32.524288>,  <42.739342, 37.907246, 32.838383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632191, 37.683941, 32.524288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343270, -0.706230, 0.619197,
		-0.900227, 0.435415, -0.002451,
		-0.267877, -0.558259, -0.785232,
		42.551826, 37.516464, 32.288719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026920, 37.640511, 32.993587>,  <42.739342, 37.907246, 32.838383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026920, 37.640511, 32.993587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180099, 37.409412, 32.705265>,  <42.272007, 37.270752, 32.532272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180099, 37.409412, 32.705265>,  <42.026920, 37.640511, 32.993587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180099, 37.409412, 32.705265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405637, -0.806205, 0.430689,
		-0.829946, 0.127454, -0.543089,
		0.382948, -0.577745, -0.720806,
		42.294983, 37.236088, 32.489021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541515, 37.264717, 32.613731>,  <42.026920, 37.640511, 32.993587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541515, 37.264717, 32.613731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874996, 37.047306, 32.574711>,  <42.075085, 36.916859, 32.551300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874996, 37.047306, 32.574711>,  <41.541515, 37.264717, 32.613731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874996, 37.047306, 32.574711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490862, -0.810354, 0.319970,
		-0.252963, -0.218877, -0.942392,
		0.833705, -0.543525, -0.097551,
		42.125107, 36.884247, 32.545444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296307, 36.628731, 32.534130>,  <41.541515, 37.264717, 32.613731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296307, 36.628731, 32.534130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689274, 36.569798, 32.580002>,  <41.925053, 36.534435, 32.607525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689274, 36.569798, 32.580002>,  <41.296307, 36.628731, 32.534130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689274, 36.569798, 32.580002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182549, -0.886863, 0.424440,
		0.039168, -0.437910, -0.898165,
		0.982416, -0.147335, 0.114677,
		41.983997, 36.525597, 32.614407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421906, 36.059551, 32.192181>,  <41.296307, 36.628731, 32.534130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421906, 36.059551, 32.192181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712135, 36.091454, 32.465584>,  <41.886272, 36.110596, 32.629627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712135, 36.091454, 32.465584>,  <41.421906, 36.059551, 32.192181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712135, 36.091454, 32.465584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222840, -0.912508, 0.343034,
		0.651067, -0.401209, -0.644316,
		0.725572, 0.079758, 0.683509,
		41.929806, 36.115379, 32.670635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861908, 35.402725, 32.130062>,  <41.421906, 36.059551, 32.192181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861908, 35.402725, 32.130062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922024, 35.559322, 32.493191>,  <41.958092, 35.653282, 32.711067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922024, 35.559322, 32.493191>,  <41.861908, 35.402725, 32.130062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922024, 35.559322, 32.493191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085001, -0.909738, 0.406388,
		0.984981, -0.138241, -0.103445,
		0.150287, 0.391492, 0.907826,
		41.967110, 35.676769, 32.765537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304008, 34.870945, 32.483711>,  <41.861908, 35.402725, 32.130062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304008, 34.870945, 32.483711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116585, 35.089191, 32.761635>,  <42.004131, 35.220139, 32.928387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116585, 35.089191, 32.761635>,  <42.304008, 34.870945, 32.483711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116585, 35.089191, 32.761635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200677, -0.831660, 0.517755,
		0.860338, 0.103167, 0.499175,
		-0.468559, 0.545617, 0.694805,
		41.976017, 35.252876, 32.970078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444893, 34.529598, 33.114975>,  <42.304008, 34.870945, 32.483711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444893, 34.529598, 33.114975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146744, 34.777565, 33.213051>,  <41.967854, 34.926346, 33.271896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146744, 34.777565, 33.213051>,  <42.444893, 34.529598, 33.114975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146744, 34.777565, 33.213051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509277, -0.766849, 0.390614,
		0.430174, 0.166283, 0.887300,
		-0.745377, 0.619913, 0.245194,
		41.923130, 34.963539, 33.286610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335670, 34.374584, 33.832535>,  <42.444893, 34.529598, 33.114975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335670, 34.374584, 33.832535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993767, 34.533199, 33.698586>,  <41.788624, 34.628368, 33.618217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993767, 34.533199, 33.698586>,  <42.335670, 34.374584, 33.832535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993767, 34.533199, 33.698586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505253, -0.783334, 0.362088,
		-0.118734, 0.478694, 0.869916,
		-0.854764, 0.396536, -0.334870,
		41.737339, 34.652161, 33.598125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823208, 34.328751, 34.400230>,  <42.335670, 34.374584, 33.832535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823208, 34.328751, 34.400230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627144, 34.362782, 34.053242>,  <41.509506, 34.383202, 33.845047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627144, 34.362782, 34.053242>,  <41.823208, 34.328751, 34.400230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627144, 34.362782, 34.053242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555404, -0.797505, 0.235608,
		-0.671769, 0.597283, 0.438156,
		-0.490156, 0.085079, -0.867472,
		41.480099, 34.388306, 33.792999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538429, 34.443001, 34.647606>,  <41.823208, 34.328751, 34.400230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538429, 34.443001, 34.647606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445602, 34.088848, 34.808723>,  <42.389908, 33.876354, 34.905396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445602, 34.088848, 34.808723>,  <42.538429, 34.443001, 34.647606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445602, 34.088848, 34.808723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006688, 0.415540, 0.909550,
		-0.972678, 0.208380, -0.102353,
		-0.232064, -0.885384, 0.402793,
		42.375984, 33.823235, 34.929562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034519, 34.580791, 35.204910>,  <42.538429, 34.443001, 34.647606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034519, 34.580791, 35.204910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183613, 34.217186, 35.279491>,  <42.273071, 33.999023, 35.324238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183613, 34.217186, 35.279491>,  <42.034519, 34.580791, 35.204910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183613, 34.217186, 35.279491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037922, 0.185841, 0.981848,
		-0.927162, -0.373041, 0.034798,
		0.372736, -0.909012, 0.186451,
		42.295433, 33.944481, 35.335426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633148, 34.376427, 35.797493>,  <42.034519, 34.580791, 35.204910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633148, 34.376427, 35.797493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978222, 34.175022, 35.778492>,  <42.185265, 34.054180, 35.767094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978222, 34.175022, 35.778492>,  <41.633148, 34.376427, 35.797493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978222, 34.175022, 35.778492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232807, 0.311981, 0.921124,
		-0.448978, -0.805694, 0.386361,
		0.862681, -0.503512, -0.047499,
		42.237026, 34.023968, 35.764244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648159, 34.035183, 36.352428>,  <41.633148, 34.376427, 35.797493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648159, 34.035183, 36.352428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028210, 34.015812, 36.229195>,  <42.256241, 34.004189, 36.155254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028210, 34.015812, 36.229195>,  <41.648159, 34.035183, 36.352428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028210, 34.015812, 36.229195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311728, 0.177265, 0.933490,
		0.009407, -0.982971, 0.183520,
		0.950125, -0.048427, -0.308087,
		42.313248, 34.001286, 36.136768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984848, 33.466827, 36.758732>,  <41.648159, 34.035183, 36.352428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984848, 33.466827, 36.758732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266232, 33.717812, 36.625202>,  <42.435062, 33.868401, 36.545082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266232, 33.717812, 36.625202>,  <41.984848, 33.466827, 36.758732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266232, 33.717812, 36.625202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176824, 0.300418, 0.937274,
		0.688391, -0.718360, 0.100381,
		0.703456, 0.627461, -0.333828,
		42.477268, 33.906052, 36.525055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.490723, 33.427841, 37.170845>,  <41.984848, 33.466827, 36.758732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.490723, 33.427841, 37.170845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657070, 33.735291, 36.976414>,  <42.756878, 33.919762, 36.859756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657070, 33.735291, 36.976414>,  <42.490723, 33.427841, 37.170845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657070, 33.735291, 36.976414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199656, 0.444286, 0.873354,
		0.887237, -0.460250, 0.031305,
		0.415869, 0.768622, -0.486078,
		42.781830, 33.965878, 36.830589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209526, 33.524162, 37.306896>,  <42.490723, 33.427841, 37.170845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209526, 33.524162, 37.306896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064121, 33.889149, 37.231770>,  <42.976879, 34.108139, 37.186695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064121, 33.889149, 37.231770>,  <43.209526, 33.524162, 37.306896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064121, 33.889149, 37.231770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305171, 0.307114, 0.901416,
		0.880188, 0.270359, -0.390096,
		-0.363510, 0.912462, -0.187813,
		42.955067, 34.162888, 37.175426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814056, 33.970757, 37.269627>,  <43.209526, 33.524162, 37.306896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814056, 33.970757, 37.269627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502224, 34.211029, 37.340542>,  <43.315125, 34.355194, 37.383091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502224, 34.211029, 37.340542>,  <43.814056, 33.970757, 37.269627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502224, 34.211029, 37.340542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409118, 0.274083, 0.870345,
		0.474207, 0.751040, -0.459420,
		-0.779584, 0.600680, 0.177292,
		43.268349, 34.391232, 37.393730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048954, 34.593426, 37.448811>,  <43.814056, 33.970757, 37.269627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048954, 34.593426, 37.448811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700008, 34.535530, 37.635586>,  <43.490643, 34.500793, 37.747650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700008, 34.535530, 37.635586>,  <44.048954, 34.593426, 37.448811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700008, 34.535530, 37.635586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375487, 0.413233, 0.829607,
		-0.313034, 0.899048, -0.306140,
		-0.872364, -0.144744, 0.466937,
		43.438297, 34.492107, 37.775665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779499, 35.177460, 37.753555>,  <44.048954, 34.593426, 37.448811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779499, 35.177460, 37.753555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648151, 34.867775, 37.969986>,  <43.569344, 34.681965, 38.099846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648151, 34.867775, 37.969986>,  <43.779499, 35.177460, 37.753555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648151, 34.867775, 37.969986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456584, 0.371368, 0.808465,
		-0.826866, 0.512521, 0.231550,
		-0.328365, -0.774215, 0.541081,
		43.549641, 34.635509, 38.132309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550663, 35.407593, 38.457115>,  <43.779499, 35.177460, 37.753555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550663, 35.407593, 38.457115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679630, 35.031509, 38.501053>,  <43.757011, 34.805859, 38.527416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679630, 35.031509, 38.501053>,  <43.550663, 35.407593, 38.457115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679630, 35.031509, 38.501053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569375, 0.285320, 0.770976,
		-0.756214, -0.186035, 0.627321,
		0.322416, -0.940204, 0.109839,
		43.776356, 34.749447, 38.534004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533638, 35.493855, 39.088474>,  <43.550663, 35.407593, 38.457115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533638, 35.493855, 39.088474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752766, 35.171345, 38.999203>,  <43.884243, 34.977837, 38.945641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752766, 35.171345, 38.999203>,  <43.533638, 35.493855, 39.088474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752766, 35.171345, 38.999203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402664, 0.020285, 0.915123,
		-0.733316, -0.591189, 0.335772,
		0.547822, -0.806278, -0.223176,
		43.917110, 34.929462, 38.932251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893021, 35.430477, 39.704193>,  <43.533638, 35.493855, 39.088474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893021, 35.430477, 39.704193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052330, 35.141304, 39.478367>,  <44.147915, 34.967800, 39.342869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052330, 35.141304, 39.478367>,  <43.893021, 35.430477, 39.704193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052330, 35.141304, 39.478367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669847, -0.191252, 0.717445,
		-0.626642, -0.663917, 0.408085,
		0.398277, -0.722937, -0.564569,
		44.171814, 34.924423, 39.308994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971302, 34.819820, 40.039001>,  <43.893021, 35.430477, 39.704193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971302, 34.819820, 40.039001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235279, 34.770271, 39.742588>,  <44.393665, 34.740543, 39.564739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235279, 34.770271, 39.742588>,  <43.971302, 34.819820, 40.039001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235279, 34.770271, 39.742588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648070, -0.405136, 0.644880,
		-0.380100, -0.905826, -0.187092,
		0.659947, -0.123870, -0.741031,
		44.433262, 34.733109, 39.520279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303860, 34.167084, 40.183350>,  <43.971302, 34.819820, 40.039001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303860, 34.167084, 40.183350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.557842, 34.380318, 39.959686>,  <44.710232, 34.508259, 39.825489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.557842, 34.380318, 39.959686>,  <44.303860, 34.167084, 40.183350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.557842, 34.380318, 39.959686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764057, -0.326302, 0.556547,
		0.114232, -0.780608, -0.614493,
		0.634955, 0.533083, -0.559155,
		44.748329, 34.540241, 39.791939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956631, 33.711838, 40.120075>,  <44.303860, 34.167084, 40.183350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956631, 33.711838, 40.120075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079620, 34.086926, 40.055397>,  <45.153416, 34.311977, 40.016590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079620, 34.086926, 40.055397>,  <44.956631, 33.711838, 40.120075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079620, 34.086926, 40.055397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777185, -0.149430, 0.611272,
		0.549039, -0.313617, -0.774726,
		0.307473, 0.937718, -0.161696,
		45.171864, 34.368240, 40.006889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640095, 33.573971, 39.989349>,  <44.956631, 33.711838, 40.120075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640095, 33.573971, 39.989349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593510, 33.966228, 40.052307>,  <45.565559, 34.201584, 40.090080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593510, 33.966228, 40.052307>,  <45.640095, 33.573971, 39.989349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593510, 33.966228, 40.052307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804127, 0.000089, 0.594458,
		0.582938, 0.195798, -0.788573,
		-0.116464, 0.980644, 0.157394,
		45.558571, 34.260422, 40.099525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.175293, 33.833294, 39.778782>,  <45.640095, 33.573971, 39.989349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.175293, 33.833294, 39.778782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.027954, 34.119678, 40.016003>,  <45.939548, 34.291512, 40.158337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.027954, 34.119678, 40.016003>,  <46.175293, 33.833294, 39.778782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.027954, 34.119678, 40.016003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903824, 0.126365, 0.408820,
		0.217759, 0.686606, -0.693652,
		-0.368352, 0.715964, 0.593054,
		45.917450, 34.334469, 40.193920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.592018, 34.376930, 39.646690>,  <46.175293, 33.833294, 39.778782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.592018, 34.376930, 39.646690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.412262, 34.437057, 39.998928>,  <46.304409, 34.473133, 40.210270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.412262, 34.437057, 39.998928>,  <46.592018, 34.376930, 39.646690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.412262, 34.437057, 39.998928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889862, -0.011504, 0.456084,
		0.078689, 0.988571, -0.128593,
		-0.449392, 0.150319, 0.880597,
		46.277443, 34.482155, 40.263107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.028770, 34.785858, 39.977776>,  <46.592018, 34.376930, 39.646690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.028770, 34.785858, 39.977776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807991, 34.574390, 40.235722>,  <46.675522, 34.447510, 40.390491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807991, 34.574390, 40.235722>,  <47.028770, 34.785858, 39.977776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.807991, 34.574390, 40.235722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833875, -0.350825, 0.426116,
		0.000961, 0.772936, 0.634483,
		-0.551953, -0.528670, 0.644869,
		46.642406, 34.415791, 40.429184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.163521, 34.968235, 40.738892>,  <47.028770, 34.785858, 39.977776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.163521, 34.968235, 40.738892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.073326, 34.588963, 40.649357>,  <47.019207, 34.361397, 40.595634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.073326, 34.588963, 40.649357>,  <47.163521, 34.968235, 40.738892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.073326, 34.588963, 40.649357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817926, -0.309067, 0.485257,
		-0.529293, -0.073662, 0.845236,
		-0.225490, -0.948183, -0.223837,
		47.005680, 34.304508, 40.582207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.442543, 34.481949, 41.290844>,  <47.163521, 34.968235, 40.738892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.442543, 34.481949, 41.290844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.408707, 34.235508, 40.977600>,  <47.388405, 34.087643, 40.789654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.408707, 34.235508, 40.977600>,  <47.442543, 34.481949, 41.290844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.408707, 34.235508, 40.977600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751556, -0.555470, 0.355831,
		-0.654223, -0.558451, 0.510024,
		-0.084589, -0.616105, -0.783109,
		47.383331, 34.050678, 40.742668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.497784, 33.891415, 41.579857>,  <47.442543, 34.481949, 41.290844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.497784, 33.891415, 41.579857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.597321, 33.858128, 41.193871>,  <47.657043, 33.838154, 40.962280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.597321, 33.858128, 41.193871>,  <47.497784, 33.891415, 41.579857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.597321, 33.858128, 41.193871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730579, -0.637965, 0.243421,
		-0.635867, -0.765556, -0.097966,
		0.248851, -0.083212, -0.964961,
		47.671974, 33.833164, 40.904381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.968155, 33.664936, 40.965008>,  <47.497784, 33.891415, 41.579857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.968155, 33.664936, 40.965008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.847771, 33.925457, 41.243641>,  <46.775539, 34.081768, 41.410820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.847771, 33.925457, 41.243641>,  <46.968155, 33.664936, 40.965008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.847771, 33.925457, 41.243641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677001, 0.368528, -0.637068,
		-0.671634, -0.663321, 0.330019,
		-0.300960, 0.651300, 0.696586,
		46.757484, 34.120846, 41.452618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.238880, 33.607227, 41.060223>,  <46.968155, 33.664936, 40.965008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.238880, 33.607227, 41.060223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363941, 33.975590, 41.153336>,  <46.438976, 34.196606, 41.209202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363941, 33.975590, 41.153336>,  <46.238880, 33.607227, 41.060223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.363941, 33.975590, 41.153336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594599, 0.380860, -0.708095,
		-0.740744, 0.082974, 0.666644,
		0.312651, 0.920903, 0.232784,
		46.457737, 34.251862, 41.223171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701473, 33.965572, 41.324711>,  <46.238880, 33.607227, 41.060223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.701473, 33.965572, 41.324711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971626, 34.215752, 41.168423>,  <46.133720, 34.365860, 41.074650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971626, 34.215752, 41.168423>,  <45.701473, 33.965572, 41.324711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.971626, 34.215752, 41.168423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661871, 0.280428, -0.695189,
		-0.325239, 0.728127, 0.603366,
		0.675387, 0.625453, -0.390720,
		46.174244, 34.403389, 41.051208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568737, 34.598324, 41.348324>,  <45.701473, 33.965572, 41.324711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568737, 34.598324, 41.348324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792347, 34.565849, 41.018257>,  <45.926514, 34.546364, 40.820217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792347, 34.565849, 41.018257>,  <45.568737, 34.598324, 41.348324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792347, 34.565849, 41.018257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780803, 0.283321, -0.556845,
		0.278997, 0.955582, 0.094992,
		0.559024, -0.081188, -0.825167,
		45.960052, 34.541492, 40.770706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.494541, 35.189754, 41.051052>,  <45.568737, 34.598324, 41.348324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.494541, 35.189754, 41.051052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.620499, 34.941162, 40.764107>,  <45.696075, 34.792007, 40.591942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.620499, 34.941162, 40.764107>,  <45.494541, 35.189754, 41.051052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620499, 34.941162, 40.764107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742780, 0.309153, -0.593887,
		0.590862, 0.719853, -0.364272,
		0.314896, -0.621480, -0.717359,
		45.714966, 34.754719, 40.548901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334793, 35.454693, 40.456459>,  <45.494541, 35.189754, 41.051052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334793, 35.454693, 40.456459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417778, 35.084923, 40.328461>,  <45.467571, 34.863060, 40.251663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417778, 35.084923, 40.328461>,  <45.334793, 35.454693, 40.456459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417778, 35.084923, 40.328461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605607, 0.135520, -0.784139,
		0.768243, 0.356473, -0.531723,
		0.207465, -0.924425, -0.319995,
		45.480019, 34.807594, 40.232464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615299, 35.489635, 39.741089>,  <45.334793, 35.454693, 40.456459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615299, 35.489635, 39.741089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449913, 35.132408, 39.812054>,  <45.350681, 34.918072, 39.854633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449913, 35.132408, 39.812054>,  <45.615299, 35.489635, 39.741089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449913, 35.132408, 39.812054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473114, 0.044251, -0.879889,
		0.777950, -0.447741, -0.440819,
		-0.413469, -0.893068, 0.177408,
		45.325871, 34.864487, 39.865276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667656, 35.085251, 39.029827>,  <45.615299, 35.489635, 39.741089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667656, 35.085251, 39.029827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398911, 34.907578, 39.266911>,  <45.237663, 34.800972, 39.409161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.398911, 34.907578, 39.266911>,  <45.667656, 35.085251, 39.029827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.398911, 34.907578, 39.266911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603325, -0.135996, -0.785814,
		0.429654, -0.885552, -0.176619,
		-0.671860, -0.444187, 0.592707,
		45.197353, 34.774323, 39.444721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286678, 34.605846, 38.603367>,  <45.667656, 35.085251, 39.029827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286678, 34.605846, 38.603367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.993645, 34.598465, 38.875538>,  <44.817825, 34.594036, 39.038841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.993645, 34.598465, 38.875538>,  <45.286678, 34.605846, 38.603367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.993645, 34.598465, 38.875538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680170, -0.018572, -0.732819,
		0.026160, -0.999657, 0.001053,
		-0.732587, -0.018454, 0.680423,
		44.773869, 34.592930, 39.079666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817345, 34.162746, 38.311474>,  <45.286678, 34.605846, 38.603367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817345, 34.162746, 38.311474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623425, 34.361244, 38.599560>,  <44.507072, 34.480343, 38.772411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623425, 34.361244, 38.599560>,  <44.817345, 34.162746, 38.311474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623425, 34.361244, 38.599560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859264, -0.116581, -0.498071,
		-0.163209, -0.860313, 0.482934,
		-0.484797, 0.496257, 0.720209,
		44.477985, 34.510120, 38.815624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351284, 33.718975, 38.743187>,  <44.817345, 34.162746, 38.311474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351284, 33.718975, 38.743187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223297, 34.097221, 38.766594>,  <44.146507, 34.324169, 38.780640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223297, 34.097221, 38.766594>,  <44.351284, 33.718975, 38.743187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223297, 34.097221, 38.766594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848898, -0.258715, -0.460912,
		-0.420708, -0.197151, 0.885515,
		-0.319965, 0.945621, 0.058518,
		44.127308, 34.380909, 38.784149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617561, 33.671684, 39.028591>,  <44.351284, 33.718975, 38.743187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617561, 33.671684, 39.028591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648949, 34.017067, 38.829277>,  <43.667782, 34.224297, 38.709690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648949, 34.017067, 38.829277>,  <43.617561, 33.671684, 39.028591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648949, 34.017067, 38.829277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856581, -0.197305, -0.476802,
		-0.510011, 0.464234, 0.724137,
		0.078472, 0.863457, -0.498282,
		43.672489, 34.276104, 38.679790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907539, 33.921352, 38.962135>,  <43.617561, 33.671684, 39.028591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907539, 33.921352, 38.962135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108864, 34.130970, 38.687309>,  <43.229660, 34.256741, 38.522415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108864, 34.130970, 38.687309>,  <42.907539, 33.921352, 38.962135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108864, 34.130970, 38.687309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738688, -0.151617, -0.656774,
		-0.448351, 0.838084, 0.310798,
		0.503310, 0.524048, -0.687061,
		43.259857, 34.288185, 38.481190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469933, 34.312576, 38.681274>,  <42.907539, 33.921352, 38.962135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469933, 34.312576, 38.681274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766403, 34.258064, 38.418343>,  <42.944286, 34.225357, 38.260582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766403, 34.258064, 38.418343>,  <42.469933, 34.312576, 38.681274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766403, 34.258064, 38.418343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671055, -0.123373, -0.731071,
		0.018532, 0.982958, -0.182891,
		0.741176, -0.136279, -0.657332,
		42.988754, 34.217182, 38.221142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268692, 34.654339, 38.115044>,  <42.469933, 34.312576, 38.681274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268692, 34.654339, 38.115044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629997, 34.657696, 37.943439>,  <42.846779, 34.659710, 37.840477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629997, 34.657696, 37.943439>,  <42.268692, 34.654339, 38.115044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629997, 34.657696, 37.943439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428511, -0.034592, -0.902874,
		-0.022414, 0.999366, -0.027651,
		0.903258, 0.008389, -0.429015,
		42.900974, 34.660213, 37.814735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255325, 35.141453, 37.533012>,  <42.268692, 34.654339, 38.115044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255325, 35.141453, 37.533012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584255, 34.921246, 37.475452>,  <42.781612, 34.789120, 37.440914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584255, 34.921246, 37.475452>,  <42.255325, 35.141453, 37.533012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584255, 34.921246, 37.475452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194434, -0.034181, -0.980320,
		0.534765, 0.834123, -0.135147,
		0.822327, -0.550518, -0.143903,
		42.830952, 34.756092, 37.432281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427704, 35.344292, 36.928856>,  <42.255325, 35.141453, 37.533012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427704, 35.344292, 36.928856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591282, 34.984776, 36.992027>,  <42.689430, 34.769066, 37.029930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591282, 34.984776, 36.992027>,  <42.427704, 35.344292, 36.928856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591282, 34.984776, 36.992027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167940, -0.244231, -0.955064,
		0.896971, 0.364050, -0.250821,
		0.408950, -0.898787, 0.157930,
		42.713966, 34.715141, 37.039406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816269, 35.169235, 36.416870>,  <42.427704, 35.344292, 36.928856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816269, 35.169235, 36.416870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816647, 34.794056, 36.555580>,  <42.816875, 34.568947, 36.638805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816647, 34.794056, 36.555580>,  <42.816269, 35.169235, 36.416870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816647, 34.794056, 36.555580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028650, -0.346607, -0.937573,
		0.999589, 0.010823, 0.026544,
		0.000947, -0.937948, 0.346774,
		42.816929, 34.512672, 36.659611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310188, 34.795979, 36.004242>,  <42.816269, 35.169235, 36.416870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310188, 34.795979, 36.004242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057491, 34.529873, 36.163406>,  <42.905872, 34.370209, 36.258904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057491, 34.529873, 36.163406>,  <43.310188, 34.795979, 36.004242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057491, 34.529873, 36.163406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049576, -0.477585, -0.877186,
		0.773594, -0.573879, 0.268728,
		-0.631739, -0.665263, 0.397908,
		42.867970, 34.330296, 36.282780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517021, 34.117687, 35.822922>,  <43.310188, 34.795979, 36.004242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517021, 34.117687, 35.822922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136646, 34.077850, 35.940090>,  <42.908421, 34.053947, 36.010391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136646, 34.077850, 35.940090>,  <43.517021, 34.117687, 35.822922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136646, 34.077850, 35.940090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192827, -0.549617, -0.812859,
		0.241954, -0.829459, 0.503444,
		-0.950934, -0.099596, 0.292924,
		42.851364, 34.047970, 36.027966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.366730, 33.359417, 35.751976>,  <43.517021, 34.117687, 35.822922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.366730, 33.359417, 35.751976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011387, 33.542763, 35.762810>,  <42.798183, 33.652771, 35.769310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011387, 33.542763, 35.762810>,  <43.366730, 33.359417, 35.751976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011387, 33.542763, 35.762810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262740, -0.459072, -0.848658,
		-0.376556, -0.761026, 0.528248,
		-0.888354, 0.458359, 0.027086,
		42.744881, 33.680271, 35.770935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796822, 32.793983, 35.692268>,  <43.366730, 33.359417, 35.751976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796822, 32.793983, 35.692268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622753, 33.142200, 35.600365>,  <42.518314, 33.351131, 35.545223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622753, 33.142200, 35.600365>,  <42.796822, 32.793983, 35.692268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622753, 33.142200, 35.600365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399975, -0.415547, -0.816909,
		-0.806629, -0.263593, 0.529026,
		-0.435167, 0.870540, -0.229761,
		42.492203, 33.403362, 35.531437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054970, 32.662445, 35.391781>,  <42.796822, 32.793983, 35.692268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054970, 32.662445, 35.391781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182560, 33.010098, 35.240589>,  <42.259113, 33.218689, 35.149876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182560, 33.010098, 35.240589>,  <42.054970, 32.662445, 35.391781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182560, 33.010098, 35.240589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212648, -0.323013, -0.922195,
		-0.923599, 0.374536, 0.081785,
		0.318977, 0.869129, -0.377978,
		42.278252, 33.270836, 35.127197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618244, 32.710171, 34.873528>,  <42.054970, 32.662445, 35.391781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618244, 32.710171, 34.873528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937672, 32.936005, 34.790066>,  <42.129326, 33.071507, 34.739990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937672, 32.936005, 34.790066>,  <41.618244, 32.710171, 34.873528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937672, 32.936005, 34.790066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074261, -0.251587, -0.964982,
		-0.597308, 0.786097, -0.158982,
		0.798566, 0.564585, -0.208651,
		42.177242, 33.105381, 34.727470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564789, 33.254578, 34.311440>,  <41.618244, 32.710171, 34.873528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564789, 33.254578, 34.311440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943893, 33.128128, 34.294415>,  <42.171356, 33.052258, 34.284199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943893, 33.128128, 34.294415>,  <41.564789, 33.254578, 34.311440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943893, 33.128128, 34.294415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179382, -0.417899, -0.890608,
		0.263757, 0.851720, -0.452776,
		0.947763, -0.316124, -0.042560,
		42.228222, 33.033291, 34.281647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879753, 33.541080, 33.668060>,  <41.564789, 33.254578, 34.311440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879753, 33.541080, 33.668060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983704, 33.185745, 33.819492>,  <42.046074, 32.972546, 33.910351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983704, 33.185745, 33.819492>,  <41.879753, 33.541080, 33.668060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983704, 33.185745, 33.819492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055934, -0.405237, -0.912499,
		0.964020, 0.215963, -0.155000,
		0.259878, -0.888337, 0.378577,
		42.061668, 32.919243, 33.933067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303558, 33.093063, 33.193165>,  <41.879753, 33.541080, 33.668060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303558, 33.093063, 33.193165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142563, 32.830990, 33.448895>,  <42.045963, 32.673744, 33.602333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142563, 32.830990, 33.448895>,  <42.303558, 33.093063, 33.193165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142563, 32.830990, 33.448895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058481, -0.678557, -0.732216,
		0.913554, -0.332098, 0.234797,
		-0.402491, -0.655188, 0.639320,
		42.021816, 32.634434, 33.640690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642406, 32.393925, 33.167027>,  <42.303558, 33.093063, 33.193165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642406, 32.393925, 33.167027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243710, 32.426079, 33.164288>,  <42.004494, 32.445370, 33.162643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243710, 32.426079, 33.164288>,  <42.642406, 32.393925, 33.167027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243710, 32.426079, 33.164288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049132, -0.672144, -0.738789,
		-0.063986, -0.736045, 0.673902,
		-0.996741, 0.080382, -0.006845,
		41.944687, 32.450195, 33.162235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313622, 31.727163, 33.377258>,  <42.642406, 32.393925, 33.167027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313622, 31.727163, 33.377258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076469, 31.958544, 33.153152>,  <41.934181, 32.097370, 33.018688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076469, 31.958544, 33.153152>,  <42.313622, 31.727163, 33.377258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076469, 31.958544, 33.153152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141178, -0.759610, -0.634871,
		-0.792824, -0.297302, 0.532017,
		-0.592874, 0.578450, -0.560265,
		41.898605, 32.132080, 32.985073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098621, 31.649647, 33.769798>,  <42.313622, 31.727163, 33.377258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098621, 31.649647, 33.769798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288322, 31.941847, 33.966347>,  <43.402145, 32.117168, 34.084278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288322, 31.941847, 33.966347>,  <43.098621, 31.649647, 33.769798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288322, 31.941847, 33.966347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764669, -0.065187, -0.641118,
		-0.436306, 0.679794, -0.589506,
		0.474257, 0.730501, 0.491375,
		43.430599, 32.160995, 34.113758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384079, 32.339054, 33.360661>,  <43.098621, 31.649647, 33.769798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384079, 32.339054, 33.360661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588966, 32.191105, 33.670712>,  <43.711899, 32.102337, 33.856743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588966, 32.191105, 33.670712>,  <43.384079, 32.339054, 33.360661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588966, 32.191105, 33.670712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760577, -0.223877, -0.609428,
		0.398944, 0.901706, 0.166642,
		0.512217, -0.369872, 0.775131,
		43.742630, 32.080143, 33.903252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080757, 32.599407, 33.397778>,  <43.384079, 32.339054, 33.360661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080757, 32.599407, 33.397778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077778, 32.250885, 33.594051>,  <44.075989, 32.041771, 33.711815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077778, 32.250885, 33.594051>,  <44.080757, 32.599407, 33.397778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077778, 32.250885, 33.594051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835461, -0.275068, -0.475754,
		0.549499, 0.406399, 0.729994,
		-0.007452, -0.871308, 0.490680,
		44.075542, 31.989492, 33.741257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683285, 32.476284, 33.812000>,  <44.080757, 32.599407, 33.397778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683285, 32.476284, 33.812000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531044, 32.128601, 33.685753>,  <44.439701, 31.919991, 33.610004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531044, 32.128601, 33.685753>,  <44.683285, 32.476284, 33.812000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531044, 32.128601, 33.685753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875116, -0.228247, -0.426703,
		0.298854, -0.438611, 0.847530,
		-0.380603, -0.869209, -0.315622,
		44.416862, 31.867838, 33.591064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168999, 31.899103, 34.048088>,  <44.683285, 32.476284, 33.812000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168999, 31.899103, 34.048088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.943748, 31.807852, 33.730385>,  <44.808598, 31.753101, 33.539764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.943748, 31.807852, 33.730385>,  <45.168999, 31.899103, 34.048088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.943748, 31.807852, 33.730385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826205, -0.174625, -0.535623,
		-0.016506, -0.957843, 0.286818,
		-0.563128, -0.228129, -0.794257,
		44.774811, 31.739412, 33.492107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.325188, 31.116333, 33.881927>,  <45.168999, 31.899103, 34.048088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.325188, 31.116333, 33.881927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216461, 31.358717, 33.582882>,  <45.151226, 31.504147, 33.403454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216461, 31.358717, 33.582882>,  <45.325188, 31.116333, 33.881927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216461, 31.358717, 33.582882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872960, -0.171717, -0.456568,
		-0.405040, -0.776742, -0.482302,
		-0.271816, 0.605958, -0.747617,
		45.134918, 31.540504, 33.358597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544136, 31.446478, 34.484791>,  <45.325188, 31.116333, 33.881927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544136, 31.446478, 34.484791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674450, 31.724726, 34.740906>,  <45.752640, 31.891674, 34.894577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674450, 31.724726, 34.740906>,  <45.544136, 31.446478, 34.484791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.674450, 31.724726, 34.740906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929479, -0.359584, -0.082271,
		0.173009, 0.621941, -0.763713,
		0.325787, 0.695622, 0.640292,
		45.772186, 31.933413, 34.932995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.991367, 32.000477, 34.238449>,  <45.544136, 31.446478, 34.484791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.991367, 32.000477, 34.238449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105881, 31.953489, 34.618816>,  <46.174591, 31.925297, 34.847034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105881, 31.953489, 34.618816>,  <45.991367, 32.000477, 34.238449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.105881, 31.953489, 34.618816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897744, -0.313910, -0.309058,
		0.334807, 0.942158, 0.015589,
		0.286288, -0.117469, 0.950915,
		46.191769, 31.918249, 34.904091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925545, 32.682808, 34.021687>,  <45.991367, 32.000477, 34.238449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.925545, 32.682808, 34.021687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.594666, 32.669235, 34.246040>,  <45.396137, 32.661091, 34.380653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.594666, 32.669235, 34.246040>,  <45.925545, 32.682808, 34.021687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.594666, 32.669235, 34.246040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272382, 0.848849, 0.453060,
		-0.491481, 0.527545, -0.692923,
		-0.827196, -0.033930, 0.560888,
		45.346508, 32.659058, 34.414307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.475559, 32.510387, 34.361050>,  <45.925545, 32.682808, 34.021687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.475559, 32.510387, 34.361050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.618416, 32.639610, 34.711613>,  <46.704128, 32.717144, 34.921951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.618416, 32.639610, 34.711613>,  <46.475559, 32.510387, 34.361050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.618416, 32.639610, 34.711613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009043, 0.939437, -0.342602,
		-0.934008, 0.114431, 0.338429,
		0.357137, 0.323054, 0.876407,
		46.725555, 32.736526, 34.974533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.172009, 33.144394, 34.507126>,  <46.475559, 32.510387, 34.361050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.172009, 33.144394, 34.507126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.485458, 33.166733, 34.754612>,  <46.673527, 33.180138, 34.903103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.485458, 33.166733, 34.754612>,  <46.172009, 33.144394, 34.507126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.485458, 33.166733, 34.754612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242533, 0.889414, -0.387453,
		-0.571936, 0.453678, 0.683422,
		0.783624, 0.055846, 0.618720,
		46.720547, 33.183487, 34.940228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.115189, 33.826706, 34.750053>,  <46.172009, 33.144394, 34.507126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.115189, 33.826706, 34.750053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486580, 33.692451, 34.813660>,  <46.709415, 33.611900, 34.851822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486580, 33.692451, 34.813660>,  <46.115189, 33.826706, 34.750053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.486580, 33.692451, 34.813660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371046, 0.856848, -0.357961,
		-0.016108, 0.391359, 0.920097,
		0.928475, -0.335632, 0.159014,
		46.765121, 33.591763, 34.861362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.612305, 34.413120, 34.988564>,  <46.115189, 33.826706, 34.750053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.612305, 34.413120, 34.988564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828869, 34.143494, 34.787567>,  <46.958809, 33.981716, 34.666969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828869, 34.143494, 34.787567>,  <46.612305, 34.413120, 34.988564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.828869, 34.143494, 34.787567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552693, 0.735733, -0.391442,
		0.633561, -0.065793, 0.770890,
		0.541415, -0.674068, -0.502496,
		46.991295, 33.941273, 34.636818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.377247, 34.394581, 35.125854>,  <46.612305, 34.413120, 34.988564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.377247, 34.394581, 35.125854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402199, 34.727966, 34.906239>,  <47.417168, 34.927998, 34.774467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402199, 34.727966, 34.906239>,  <47.377247, 34.394581, 35.125854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.402199, 34.727966, 34.906239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097257, 0.542421, 0.834458,
		0.993303, -0.105448, -0.047226,
		0.062376, 0.833463, -0.549044,
		47.420910, 34.978004, 34.741524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.937927, 34.768219, 35.305222>,  <47.377247, 34.394581, 35.125854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.937927, 34.768219, 35.305222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.689415, 35.047901, 35.163731>,  <47.540306, 35.215710, 35.078838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.689415, 35.047901, 35.163731>,  <47.937927, 34.768219, 35.305222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.689415, 35.047901, 35.163731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034005, 0.475050, 0.879301,
		0.782848, 0.534267, -0.318917,
		-0.621283, 0.699204, -0.353725,
		47.503029, 35.257664, 35.057613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.928188, 37.817848, 25.346418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.632442, 38.013741, 25.161591>,  <40.454994, 38.131275, 25.050694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.632442, 38.013741, 25.161591>,  <40.928188, 37.817848, 25.346418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632442, 38.013741, 25.161591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650367, -0.341831, 0.678361,
		0.174263, 0.802070, 0.571241,
		-0.739362, 0.489729, -0.462071,
		40.410633, 38.160660, 25.022968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547508, 38.015415, 25.953053>,  <40.928188, 37.817848, 25.346418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547508, 38.015415, 25.953053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.288692, 38.098717, 25.659668>,  <40.133404, 38.148697, 25.483637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.288692, 38.098717, 25.659668>,  <40.547508, 38.015415, 25.953053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288692, 38.098717, 25.659668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750610, -0.005072, 0.660726,
		0.133881, 0.978061, 0.159602,
		-0.647039, 0.208258, -0.733463,
		40.094582, 38.161194, 25.439629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115788, 38.621853, 26.192404>,  <40.547508, 38.015415, 25.953053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115788, 38.621853, 26.192404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.931488, 38.412937, 25.905373>,  <39.820908, 38.287586, 25.733154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.931488, 38.412937, 25.905373>,  <40.115788, 38.621853, 26.192404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931488, 38.412937, 25.905373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749195, -0.204591, 0.629961,
		-0.475834, 0.827861, -0.297034,
		-0.460749, -0.522292, -0.717580,
		39.793262, 38.256248, 25.690098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394718, 38.935760, 26.028387>,  <40.115788, 38.621853, 26.192404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394718, 38.935760, 26.028387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.433075, 38.543697, 25.958986>,  <39.456089, 38.308460, 25.917347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.433075, 38.543697, 25.958986>,  <39.394718, 38.935760, 26.028387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433075, 38.543697, 25.958986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810468, -0.178074, 0.558061,
		-0.577882, 0.087104, -0.811459,
		0.095890, -0.980155, -0.173501,
		39.461842, 38.249653, 25.906937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709747, 38.659603, 25.937191>,  <39.394718, 38.935760, 26.028387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709747, 38.659603, 25.937191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.945442, 38.351250, 26.033974>,  <39.086857, 38.166237, 26.092043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.945442, 38.351250, 26.033974>,  <38.709747, 38.659603, 25.937191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945442, 38.351250, 26.033974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753054, -0.415473, 0.510188,
		-0.292768, -0.482828, -0.825327,
		0.589234, -0.770882, 0.241958,
		39.122211, 38.119984, 26.106562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327095, 38.082733, 25.829746>,  <38.709747, 38.659603, 25.937191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327095, 38.082733, 25.829746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622402, 37.940979, 26.059309>,  <38.799587, 37.855927, 26.197046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622402, 37.940979, 26.059309>,  <38.327095, 38.082733, 25.829746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622402, 37.940979, 26.059309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674282, -0.409672, 0.614420,
		0.017371, -0.840582, -0.541405,
		0.738269, -0.354387, 0.573906,
		38.843884, 37.834663, 26.231482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106300, 37.378403, 26.052174>,  <38.327095, 38.082733, 25.829746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106300, 37.378403, 26.052174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.421963, 37.456570, 26.285086>,  <38.611359, 37.503468, 26.424833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.421963, 37.456570, 26.285086>,  <38.106300, 37.378403, 26.052174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421963, 37.456570, 26.285086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413940, -0.531172, 0.739263,
		0.453755, -0.824421, -0.338285,
		0.789152, 0.195414, 0.582283,
		38.658707, 37.515194, 26.459770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363552, 36.775185, 26.367002>,  <38.106300, 37.378403, 26.052174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363552, 36.775185, 26.367002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507442, 37.057552, 26.611061>,  <38.593777, 37.226971, 26.757496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507442, 37.057552, 26.611061>,  <38.363552, 36.775185, 26.367002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507442, 37.057552, 26.611061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331319, -0.514666, 0.790788,
		0.872253, -0.486620, 0.048745,
		0.359726, 0.705918, 0.610146,
		38.615360, 37.269329, 26.794106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710503, 36.474808, 26.782732>,  <38.363552, 36.775185, 26.367002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710503, 36.474808, 26.782732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619774, 36.811813, 26.978170>,  <38.565334, 37.014015, 27.095434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619774, 36.811813, 26.978170>,  <38.710503, 36.474808, 26.782732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619774, 36.811813, 26.978170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208847, -0.532079, 0.820533,
		0.951280, 0.084075, 0.296644,
		-0.226824, 0.842510, 0.488597,
		38.551727, 37.064568, 27.124750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049366, 36.384937, 27.450485>,  <38.710503, 36.474808, 26.782732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049366, 36.384937, 27.450485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.789948, 36.680702, 27.522776>,  <38.634296, 36.858162, 27.566149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.789948, 36.680702, 27.522776>,  <39.049366, 36.384937, 27.450485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789948, 36.680702, 27.522776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343046, -0.495877, 0.797763,
		0.679489, 0.455391, 0.575251,
		-0.648548, 0.739408, 0.180724,
		38.595383, 36.902523, 27.576992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248665, 36.702774, 28.073900>,  <39.049366, 36.384937, 27.450485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248665, 36.702774, 28.073900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.853107, 36.751274, 28.039520>,  <38.615772, 36.780373, 28.018892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.853107, 36.751274, 28.039520>,  <39.248665, 36.702774, 28.073900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853107, 36.751274, 28.039520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131164, -0.440038, 0.888348,
		0.069890, 0.889756, 0.451055,
		-0.988894, 0.121249, -0.085950,
		38.556438, 36.787647, 28.013735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102734, 36.736012, 28.720213>,  <39.248665, 36.702774, 28.073900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102734, 36.736012, 28.720213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.740593, 36.669220, 28.564026>,  <38.523308, 36.629147, 28.470314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.740593, 36.669220, 28.564026>,  <39.102734, 36.736012, 28.720213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740593, 36.669220, 28.564026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307234, -0.377225, 0.873676,
		-0.293178, 0.910945, 0.290218,
		-0.905348, -0.166977, -0.390467,
		38.468990, 36.619125, 28.446886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494083, 37.106712, 29.033506>,  <39.102734, 36.736012, 28.720213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494083, 37.106712, 29.033506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335297, 36.778393, 28.869209>,  <38.240025, 36.581402, 28.770632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335297, 36.778393, 28.869209>,  <38.494083, 37.106712, 29.033506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335297, 36.778393, 28.869209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422471, -0.233882, 0.875681,
		-0.814821, 0.521144, -0.253919,
		-0.396969, -0.820797, -0.410741,
		38.216206, 36.532154, 28.745987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842316, 36.987110, 29.361881>,  <38.494083, 37.106712, 29.033506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842316, 36.987110, 29.361881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.881844, 36.648998, 29.151838>,  <37.905560, 36.446133, 29.025812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.881844, 36.648998, 29.151838>,  <37.842316, 36.987110, 29.361881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881844, 36.648998, 29.151838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455524, -0.507582, 0.731340,
		-0.884722, 0.166929, -0.435204,
		0.098819, -0.845278, -0.525109,
		37.911488, 36.395416, 28.994307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108139, 36.660328, 29.479765>,  <37.842316, 36.987110, 29.361881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108139, 36.660328, 29.479765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363049, 36.366402, 29.386881>,  <37.515995, 36.190044, 29.331150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363049, 36.366402, 29.386881>,  <37.108139, 36.660328, 29.479765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363049, 36.366402, 29.386881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276514, -0.499296, 0.821124,
		-0.719318, -0.459073, -0.521376,
		0.637277, -0.734817, -0.232212,
		37.554234, 36.145958, 29.317217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750381, 36.029900, 29.479679>,  <37.108139, 36.660328, 29.479765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750381, 36.029900, 29.479679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.129696, 35.915489, 29.534718>,  <37.357285, 35.846844, 29.567741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.129696, 35.915489, 29.534718>,  <36.750381, 36.029900, 29.479679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129696, 35.915489, 29.534718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300420, -0.668927, 0.679915,
		-0.102433, -0.686094, -0.720266,
		0.948291, -0.286028, 0.137596,
		37.414185, 35.829681, 29.575996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744759, 35.279175, 29.467888>,  <36.750381, 36.029900, 29.479679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744759, 35.279175, 29.467888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.083630, 35.370289, 29.659891>,  <37.286953, 35.424957, 29.775093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.083630, 35.370289, 29.659891>,  <36.744759, 35.279175, 29.467888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083630, 35.370289, 29.659891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225643, -0.663669, 0.713182,
		0.481022, -0.712500, -0.510844,
		0.847174, 0.227788, 0.480010,
		37.337780, 35.438625, 29.803894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952774, 34.637726, 29.707119>,  <36.744759, 35.279175, 29.467888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952774, 34.637726, 29.707119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.161983, 34.904087, 29.919918>,  <37.287510, 35.063904, 30.047598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.161983, 34.904087, 29.919918>,  <36.952774, 34.637726, 29.707119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161983, 34.904087, 29.919918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134270, -0.552009, 0.822957,
		0.841677, -0.501855, -0.199302,
		0.523022, 0.665904, 0.531997,
		37.318890, 35.103859, 30.079517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501511, 34.230808, 30.148417>,  <36.952774, 34.637726, 29.707119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501511, 34.230808, 30.148417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.438992, 34.591831, 30.308897>,  <37.401482, 34.808445, 30.405186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.438992, 34.591831, 30.308897>,  <37.501511, 34.230808, 30.148417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438992, 34.591831, 30.308897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204393, -0.426955, 0.880870,
		0.966331, 0.055673, 0.251208,
		-0.156295, 0.902557, 0.401201,
		37.392101, 34.862598, 30.429256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929344, 34.287109, 30.841415>,  <37.501511, 34.230808, 30.148417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929344, 34.287109, 30.841415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641071, 34.562710, 30.872124>,  <37.468109, 34.728069, 30.890549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641071, 34.562710, 30.872124>,  <37.929344, 34.287109, 30.841415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641071, 34.562710, 30.872124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239642, -0.351495, 0.904999,
		0.650533, 0.633816, 0.418430,
		-0.720679, 0.689005, 0.076770,
		37.424866, 34.769413, 30.895155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487892, 34.307991, 31.403353>,  <37.929344, 34.287109, 30.841415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487892, 34.307991, 31.403353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.785259, 34.478951, 31.609135>,  <38.963680, 34.581524, 31.732605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.785259, 34.478951, 31.609135>,  <38.487892, 34.307991, 31.403353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785259, 34.478951, 31.609135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030962, -0.746373, 0.664807,
		0.668112, -0.510157, -0.541633,
		0.743416, 0.427396, 0.514456,
		39.008286, 34.607170, 31.763472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808369, 34.200600, 32.058319>,  <38.487892, 34.307991, 31.403353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808369, 34.200600, 32.058319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.164635, 34.106903, 32.214188>,  <39.378395, 34.050686, 32.307709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.164635, 34.106903, 32.214188>,  <38.808369, 34.200600, 32.058319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164635, 34.106903, 32.214188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435572, 0.685327, -0.583613,
		-0.130350, 0.689535, 0.712426,
		0.890666, -0.234238, 0.389674,
		39.431835, 34.036633, 32.331089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167004, 34.811798, 32.340294>,  <38.808369, 34.200600, 32.058319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167004, 34.811798, 32.340294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.437389, 34.538925, 32.228794>,  <39.599621, 34.375202, 32.161896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.437389, 34.538925, 32.228794>,  <39.167004, 34.811798, 32.340294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437389, 34.538925, 32.228794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411167, 0.663032, -0.625564,
		0.611567, 0.308247, 0.728676,
		0.675964, -0.682182, -0.278748,
		39.640179, 34.334270, 32.145168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800385, 35.132465, 32.329521>,  <39.167004, 34.811798, 32.340294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800385, 35.132465, 32.329521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.859875, 34.809784, 32.100746>,  <39.895569, 34.616177, 31.963480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.859875, 34.809784, 32.100746>,  <39.800385, 35.132465, 32.329521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859875, 34.809784, 32.100746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397497, 0.578360, -0.712388,
		0.905471, -0.121396, 0.406676,
		0.148724, -0.806699, -0.571942,
		39.904491, 34.567776, 31.929163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469322, 35.182892, 32.091648>,  <39.800385, 35.132465, 32.329521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469322, 35.182892, 32.091648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.297619, 34.937080, 31.826893>,  <40.194595, 34.789593, 31.668039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.297619, 34.937080, 31.826893>,  <40.469322, 35.182892, 32.091648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297619, 34.937080, 31.826893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616267, 0.336455, -0.712049,
		0.660267, -0.713553, 0.234285,
		-0.429259, -0.614524, -0.661889,
		40.168842, 34.752724, 31.628326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002743, 34.967659, 31.682291>,  <40.469322, 35.182892, 32.091648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002743, 34.967659, 31.682291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.673561, 34.878162, 31.473412>,  <40.476051, 34.824463, 31.348083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.673561, 34.878162, 31.473412>,  <41.002743, 34.967659, 31.682291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673561, 34.878162, 31.473412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454465, 0.292287, -0.841445,
		0.340901, -0.929788, -0.138853,
		-0.822951, -0.223745, -0.522197,
		40.426678, 34.811039, 31.316751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230877, 34.530071, 31.144131>,  <41.002743, 34.967659, 31.682291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230877, 34.530071, 31.144131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.897079, 34.685074, 30.987438>,  <40.696800, 34.778076, 30.893423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.897079, 34.685074, 30.987438>,  <41.230877, 34.530071, 31.144131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897079, 34.685074, 30.987438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502600, 0.243901, -0.829401,
		-0.225854, -0.889017, -0.398296,
		-0.834496, 0.387507, -0.391733,
		40.646732, 34.801327, 30.869919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427444, 34.374527, 30.594711>,  <41.230877, 34.530071, 31.144131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427444, 34.374527, 30.594711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.131512, 34.641953, 30.564579>,  <40.953953, 34.802406, 30.546499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.131512, 34.641953, 30.564579>,  <41.427444, 34.374527, 30.594711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131512, 34.641953, 30.564579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460517, 0.421596, -0.781141,
		-0.490481, -0.612604, -0.619794,
		-0.739832, 0.668561, -0.075330,
		40.909561, 34.842522, 30.541981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063118, 34.310326, 29.916388>,  <41.427444, 34.374527, 30.594711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063118, 34.310326, 29.916388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.990135, 34.684017, 30.038975>,  <40.946346, 34.908234, 30.112528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.990135, 34.684017, 30.038975>,  <41.063118, 34.310326, 29.916388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990135, 34.684017, 30.038975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416929, 0.355806, -0.836405,
		-0.890437, -0.024836, -0.454428,
		-0.182461, 0.934230, 0.306468,
		40.935398, 34.964287, 30.130915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800938, 34.682507, 29.368361>,  <41.063118, 34.310326, 29.916388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800938, 34.682507, 29.368361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.936295, 34.982140, 29.596172>,  <41.017509, 35.161919, 29.732861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.936295, 34.982140, 29.596172>,  <40.800938, 34.682507, 29.368361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936295, 34.982140, 29.596172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328908, 0.472908, -0.817421,
		-0.881653, 0.463930, -0.086353,
		0.338390, 0.749084, 0.569531,
		41.037811, 35.206863, 29.767031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537830, 35.217136, 29.021412>,  <40.800938, 34.682507, 29.368361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537830, 35.217136, 29.021412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.843704, 35.357025, 29.237913>,  <41.027229, 35.440960, 29.367813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.843704, 35.357025, 29.237913>,  <40.537830, 35.217136, 29.021412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843704, 35.357025, 29.237913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410591, 0.382932, -0.827513,
		-0.496663, 0.855018, 0.149228,
		0.764683, 0.349723, 0.541251,
		41.073109, 35.461941, 29.400288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729797, 35.797195, 28.730446>,  <40.537830, 35.217136, 29.021412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729797, 35.797195, 28.730446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.055874, 35.724590, 28.950451>,  <41.251522, 35.681026, 29.082455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.055874, 35.724590, 28.950451>,  <40.729797, 35.797195, 28.730446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055874, 35.724590, 28.950451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570850, 0.412354, -0.709996,
		-0.097930, 0.892759, 0.439763,
		0.815193, -0.181509, 0.550013,
		41.300430, 35.670139, 29.115456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023472, 36.547215, 28.833176>,  <40.729797, 35.797195, 28.730446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023472, 36.547215, 28.833176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.296566, 36.256718, 28.865301>,  <41.460423, 36.082420, 28.884577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.296566, 36.256718, 28.865301>,  <41.023472, 36.547215, 28.833176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296566, 36.256718, 28.865301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555258, 0.444243, -0.703091,
		0.474935, 0.524617, 0.706550,
		0.682734, -0.726240, 0.080311,
		41.501385, 36.038845, 28.889395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665787, 36.951286, 28.889324>,  <41.023472, 36.547215, 28.833176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665787, 36.951286, 28.889324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.747784, 36.579113, 28.767818>,  <41.796982, 36.355808, 28.694916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.747784, 36.579113, 28.767818>,  <41.665787, 36.951286, 28.889324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747784, 36.579113, 28.767818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605890, 0.364370, -0.707200,
		0.768685, -0.039079, 0.638432,
		0.204989, -0.930434, -0.303763,
		41.809280, 36.299984, 28.676689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421120, 36.942917, 28.798754>,  <41.665787, 36.951286, 28.889324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421120, 36.942917, 28.798754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.262321, 36.633484, 28.601185>,  <42.167042, 36.447823, 28.482643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.262321, 36.633484, 28.601185>,  <42.421120, 36.942917, 28.798754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262321, 36.633484, 28.601185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616467, 0.173944, -0.767927,
		0.679972, -0.609352, 0.407834,
		-0.396998, -0.773585, -0.493923,
		42.143223, 36.401409, 28.453009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982708, 36.780632, 28.339928>,  <42.421120, 36.942917, 28.798754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982708, 36.780632, 28.339928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.668884, 36.594910, 28.175543>,  <42.480591, 36.483479, 28.076912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.668884, 36.594910, 28.175543>,  <42.982708, 36.780632, 28.339928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668884, 36.594910, 28.175543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318033, 0.267630, -0.909521,
		0.532278, -0.844274, -0.062309,
		-0.784560, -0.464302, -0.410961,
		42.433517, 36.455620, 28.052254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209877, 36.385487, 27.781931>,  <42.982708, 36.780632, 28.339928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209877, 36.385487, 27.781931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.823643, 36.456867, 27.706255>,  <42.591900, 36.499695, 27.660849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.823643, 36.456867, 27.706255>,  <43.209877, 36.385487, 27.781931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823643, 36.456867, 27.706255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209890, 0.105140, -0.972055,
		-0.153577, -0.978315, -0.138978,
		-0.965588, 0.178456, -0.189191,
		42.533966, 36.510403, 27.649498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119213, 36.229431, 27.065609>,  <43.209877, 36.385487, 27.781931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119213, 36.229431, 27.065609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.752155, 36.388073, 27.075651>,  <42.531921, 36.483257, 27.081676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.752155, 36.388073, 27.075651>,  <43.119213, 36.229431, 27.065609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752155, 36.388073, 27.075651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066629, 0.215829, -0.974155,
		-0.391775, -0.892256, -0.224481,
		-0.917645, 0.396606, 0.025106,
		42.476860, 36.507053, 27.083183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625713, 35.978230, 26.411644>,  <43.119213, 36.229431, 27.065609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625713, 35.978230, 26.411644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.509109, 36.327839, 26.567131>,  <42.439148, 36.537605, 26.660423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.509109, 36.327839, 26.567131>,  <42.625713, 35.978230, 26.411644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509109, 36.327839, 26.567131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104267, 0.432980, -0.895353,
		-0.950868, -0.220474, -0.217350,
		-0.291510, 0.874025, 0.388718,
		42.421658, 36.590046, 26.683746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039501, 36.094261, 26.127005>,  <42.625713, 35.978230, 26.411644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039501, 36.094261, 26.127005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.139507, 36.460220, 26.253788>,  <42.199512, 36.679794, 26.329859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.139507, 36.460220, 26.253788>,  <42.039501, 36.094261, 26.127005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139507, 36.460220, 26.253788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060592, 0.341497, -0.937928,
		-0.966344, 0.215291, 0.140815,
		0.250015, 0.914893, 0.316958,
		42.214512, 36.734688, 26.348875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.599411, 36.619732, 25.736269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.909122, 36.831841, 25.874435>,  <42.094948, 36.959106, 25.957335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.909122, 36.831841, 25.874435>,  <41.599411, 36.619732, 25.736269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909122, 36.831841, 25.874435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097186, 0.439704, -0.892869,
		-0.625339, 0.724898, 0.288918,
		0.774277, 0.530267, 0.345414,
		42.141407, 36.990921, 25.978060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405582, 37.348095, 25.682522>,  <41.599411, 36.619732, 25.736269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405582, 37.348095, 25.682522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.803635, 37.364532, 25.718340>,  <42.042465, 37.374393, 25.739832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.803635, 37.364532, 25.718340>,  <41.405582, 37.348095, 25.682522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803635, 37.364532, 25.718340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059521, 0.473543, -0.878757,
		-0.078512, 0.879812, 0.468793,
		0.995135, 0.041090, 0.089546,
		42.102177, 37.376858, 25.745203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664627, 38.055473, 25.715252>,  <41.405582, 37.348095, 25.682522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664627, 38.055473, 25.715252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.971779, 37.835953, 25.583082>,  <42.156071, 37.704239, 25.503780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.971779, 37.835953, 25.583082>,  <41.664627, 38.055473, 25.715252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971779, 37.835953, 25.583082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056578, 0.571894, -0.818374,
		0.638092, 0.609718, 0.470195,
		0.767879, -0.548801, -0.330424,
		42.202141, 37.671314, 25.483955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313988, 38.558392, 25.532511>,  <41.664627, 38.055473, 25.715252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313988, 38.558392, 25.532511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.360638, 38.201122, 25.358782>,  <42.388626, 37.986759, 25.254543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.360638, 38.201122, 25.358782>,  <42.313988, 38.558392, 25.532511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360638, 38.201122, 25.358782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300896, 0.448530, -0.841595,
		0.946499, -0.032536, 0.321063,
		0.116624, -0.893175, -0.434323,
		42.395626, 37.933170, 25.228485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833496, 38.661079, 25.106558>,  <42.313988, 38.558392, 25.532511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833496, 38.661079, 25.106558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.691254, 38.324001, 24.944864>,  <42.605907, 38.121754, 24.847847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.691254, 38.324001, 24.944864>,  <42.833496, 38.661079, 25.106558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691254, 38.324001, 24.944864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139567, 0.379778, -0.914489,
		0.924157, -0.381615, -0.017438,
		-0.355605, -0.842698, -0.404235,
		42.584572, 38.071194, 24.823593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383495, 38.437538, 24.630472>,  <42.833496, 38.661079, 25.106558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383495, 38.437538, 24.630472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.058495, 38.242290, 24.502985>,  <42.863495, 38.125141, 24.426493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.058495, 38.242290, 24.502985>,  <43.383495, 38.437538, 24.630472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058495, 38.242290, 24.502985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194994, 0.287673, -0.937668,
		0.549379, -0.824005, -0.138555,
		-0.812502, -0.488118, -0.318717,
		42.814743, 38.095856, 24.407370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594032, 37.962250, 24.137671>,  <43.383495, 38.437538, 24.630472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594032, 37.962250, 24.137671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.204910, 38.032829, 24.077654>,  <42.971436, 38.075176, 24.041643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.204910, 38.032829, 24.077654>,  <43.594032, 37.962250, 24.137671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204910, 38.032829, 24.077654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176581, 0.145768, -0.973433,
		-0.149895, -0.973456, -0.172963,
		-0.972806, 0.176454, -0.150043,
		42.913067, 38.085766, 24.032640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587521, 37.794033, 23.512970>,  <43.594032, 37.962250, 24.137671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587521, 37.794033, 23.512970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.233223, 37.976192, 23.548903>,  <43.020645, 38.085487, 23.570461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.233223, 37.976192, 23.548903>,  <43.587521, 37.794033, 23.512970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233223, 37.976192, 23.548903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109785, 0.393573, -0.912714,
		-0.451003, -0.798569, -0.398601,
		-0.885744, 0.455398, 0.089832,
		42.967499, 38.112812, 23.575851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203690, 37.681087, 22.920988>,  <43.587521, 37.794033, 23.512970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203690, 37.681087, 22.920988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.026695, 38.005039, 23.075029>,  <42.920498, 38.199409, 23.167454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.026695, 38.005039, 23.075029>,  <43.203690, 37.681087, 22.920988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026695, 38.005039, 23.075029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078282, 0.462671, -0.883067,
		-0.893354, -0.360596, -0.268123,
		-0.442483, 0.809880, 0.385101,
		42.893951, 38.248005, 23.190559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729603, 37.986931, 22.373772>,  <43.203690, 37.681087, 22.920988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729603, 37.986931, 22.373772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.809105, 38.301662, 22.607491>,  <42.856808, 38.490501, 22.747721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.809105, 38.301662, 22.607491>,  <42.729603, 37.986931, 22.373772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809105, 38.301662, 22.607491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141033, 0.567022, -0.811539,
		-0.969848, 0.243703, 0.001730,
		0.198756, 0.786825, 0.584296,
		42.868732, 38.537708, 22.782780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517017, 38.547073, 22.000038>,  <42.729603, 37.986931, 22.373772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517017, 38.547073, 22.000038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.783455, 38.704063, 22.253744>,  <42.943317, 38.798256, 22.405968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.783455, 38.704063, 22.253744>,  <42.517017, 38.547073, 22.000038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783455, 38.704063, 22.253744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271085, 0.664830, -0.696070,
		-0.694865, 0.635585, 0.336443,
		0.666089, 0.392470, 0.634265,
		42.983280, 38.821804, 22.444023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500053, 39.310207, 21.844500>,  <42.517017, 38.547073, 22.000038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500053, 39.310207, 21.844500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.844498, 39.233665, 22.032915>,  <43.051163, 39.187740, 22.145964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.844498, 39.233665, 22.032915>,  <42.500053, 39.310207, 21.844500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844498, 39.233665, 22.032915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476598, 0.626455, -0.616773,
		-0.177060, 0.755603, 0.630645,
		0.861106, -0.191358, 0.471039,
		43.102829, 39.176258, 22.174227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772495, 39.965420, 21.964201>,  <42.500053, 39.310207, 21.844500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772495, 39.965420, 21.964201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.082336, 39.712482, 21.968721>,  <43.268242, 39.560719, 21.971434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.082336, 39.712482, 21.968721>,  <42.772495, 39.965420, 21.964201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082336, 39.712482, 21.968721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498090, 0.598934, -0.627044,
		0.389740, 0.491340, 0.778902,
		0.774603, -0.632347, 0.011303,
		43.314716, 39.522778, 21.972113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412346, 40.308064, 22.051353>,  <42.772495, 39.965420, 21.964201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412346, 40.308064, 22.051353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.551182, 39.963203, 21.903717>,  <43.634483, 39.756287, 21.815136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.551182, 39.963203, 21.903717>,  <43.412346, 40.308064, 22.051353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551182, 39.963203, 21.903717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622682, 0.506148, -0.596726,
		0.701280, -0.022708, 0.712524,
		0.347092, -0.862148, -0.369091,
		43.655308, 39.704559, 21.792990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067905, 40.443443, 22.124285>,  <43.412346, 40.308064, 22.051353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067905, 40.443443, 22.124285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.062241, 40.161186, 21.840916>,  <44.058842, 39.991833, 21.670895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.062241, 40.161186, 21.840916>,  <44.067905, 40.443443, 22.124285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062241, 40.161186, 21.840916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639941, 0.537992, -0.548672,
		0.768294, -0.461118, 0.443954,
		-0.014159, -0.705646, -0.708423,
		44.057991, 39.949493, 21.628389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.737358, 40.473656, 21.911203>,  <44.067905, 40.443443, 22.124285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.737358, 40.473656, 21.911203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.576187, 40.280926, 21.599951>,  <44.479485, 40.165287, 21.413198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.576187, 40.280926, 21.599951>,  <44.737358, 40.473656, 21.911203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576187, 40.280926, 21.599951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573694, 0.529476, -0.624924,
		0.713109, -0.698210, 0.063081,
		-0.402928, -0.481828, -0.778133,
		44.455307, 40.136379, 21.366510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.317577, 40.044804, 21.590893>,  <44.737358, 40.473656, 21.911203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.317577, 40.044804, 21.590893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.018211, 40.141037, 21.343668>,  <44.838593, 40.198776, 21.195333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.018211, 40.141037, 21.343668>,  <45.317577, 40.044804, 21.590893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.018211, 40.141037, 21.343668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639738, 0.507705, -0.577036,
		0.174969, -0.827258, -0.533881,
		-0.748412, 0.240581, -0.618062,
		44.793686, 40.213211, 21.158249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.676659, 40.264496, 21.101967>,  <45.317577, 40.044804, 21.590893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.676659, 40.264496, 21.101967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.312187, 40.382465, 20.986891>,  <45.093502, 40.453247, 20.917845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.312187, 40.382465, 20.986891>,  <45.676659, 40.264496, 21.101967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312187, 40.382465, 20.986891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409564, 0.572518, -0.710268,
		-0.044770, -0.765011, -0.642460,
		-0.911182, 0.294927, -0.287689,
		45.038834, 40.470943, 20.900583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625881, 40.249004, 20.430395>,  <45.676659, 40.264496, 21.101967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625881, 40.249004, 20.430395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.337402, 40.516514, 20.502647>,  <45.164314, 40.677017, 20.546000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.337402, 40.516514, 20.502647>,  <45.625881, 40.249004, 20.430395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337402, 40.516514, 20.502647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410634, 0.622715, -0.666038,
		-0.557907, -0.406168, -0.723717,
		-0.721193, 0.668770, 0.180631,
		45.121044, 40.717144, 20.556837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263699, 40.531712, 19.789486>,  <45.625881, 40.249004, 20.430395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263699, 40.531712, 19.789486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.208843, 40.805573, 20.075827>,  <45.175930, 40.969891, 20.247631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.208843, 40.805573, 20.075827>,  <45.263699, 40.531712, 19.789486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208843, 40.805573, 20.075827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507118, 0.669318, -0.542996,
		-0.850896, 0.288557, -0.438988,
		-0.137138, 0.684652, 0.715852,
		45.167702, 41.010967, 20.290583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135460, 41.210155, 19.455540>,  <45.263699, 40.531712, 19.789486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135460, 41.210155, 19.455540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.204693, 41.341885, 19.826828>,  <45.246231, 41.420921, 20.049601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.204693, 41.341885, 19.826828>,  <45.135460, 41.210155, 19.455540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204693, 41.341885, 19.826828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382353, 0.846059, -0.371469,
		-0.907661, 0.419203, 0.020522,
		0.173084, 0.329321, 0.928218,
		45.256618, 41.440681, 20.105293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876945, 41.910969, 19.414442>,  <45.135460, 41.210155, 19.455540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876945, 41.910969, 19.414442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.161694, 41.911854, 19.695366>,  <45.332542, 41.912384, 19.863920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.161694, 41.911854, 19.695366>,  <44.876945, 41.910969, 19.414442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161694, 41.911854, 19.695366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468006, 0.744113, -0.476724,
		-0.523655, 0.668050, 0.528672,
		0.711867, 0.002217, 0.702311,
		45.375256, 41.912518, 19.906059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186192, 42.613689, 19.469896>,  <44.876945, 41.910969, 19.414442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186192, 42.613689, 19.469896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.453251, 42.333622, 19.571089>,  <45.613487, 42.165581, 19.631805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.453251, 42.333622, 19.571089>,  <45.186192, 42.613689, 19.469896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453251, 42.333622, 19.571089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728527, 0.544516, -0.415633,
		0.153261, 0.461803, 0.873641,
		0.667653, -0.700171, 0.252983,
		45.653545, 42.123569, 19.646984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777843, 43.121075, 19.887606>,  <45.186192, 42.613689, 19.469896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777843, 43.121075, 19.887606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.436302, 43.259018, 19.731649>,  <44.231377, 43.341785, 19.638075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.436302, 43.259018, 19.731649>,  <44.777843, 43.121075, 19.887606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436302, 43.259018, 19.731649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469581, -0.187166, 0.862822,
		0.224578, 0.919805, 0.321751,
		-0.853849, 0.344859, -0.389890,
		44.180149, 43.362476, 19.614683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413300, 43.376167, 20.492365>,  <44.777843, 43.121075, 19.887606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413300, 43.376167, 20.492365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.118793, 43.370518, 20.221746>,  <43.942089, 43.367126, 20.059376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.118793, 43.370518, 20.221746>,  <44.413300, 43.376167, 20.492365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118793, 43.370518, 20.221746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634766, -0.332033, 0.697729,
		-0.234493, 0.943162, 0.235497,
		-0.736264, -0.014127, -0.676547,
		43.897915, 43.366280, 20.018782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900089, 43.620743, 20.917606>,  <44.413300, 43.376167, 20.492365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900089, 43.620743, 20.917606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.733929, 43.440819, 20.601351>,  <43.634232, 43.332863, 20.411598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.733929, 43.440819, 20.601351>,  <43.900089, 43.620743, 20.917606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733929, 43.440819, 20.601351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641369, -0.471525, 0.605236,
		-0.645050, 0.758506, -0.092625,
		-0.415400, -0.449814, -0.790639,
		43.609310, 43.305874, 20.364159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157959, 43.594582, 21.050762>,  <43.900089, 43.620743, 20.917606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157959, 43.594582, 21.050762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.222622, 43.315292, 20.771807>,  <43.261421, 43.147720, 20.604433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.222622, 43.315292, 20.771807>,  <43.157959, 43.594582, 21.050762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222622, 43.315292, 20.771807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604800, -0.628513, 0.489069,
		-0.779797, 0.342717, -0.523891,
		0.161660, -0.698224, -0.697388,
		43.271118, 43.105824, 20.562590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516594, 43.501076, 20.647961>,  <43.157959, 43.594582, 21.050762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516594, 43.501076, 20.647961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.726070, 43.160381, 20.654831>,  <42.851757, 42.955963, 20.658953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.726070, 43.160381, 20.654831>,  <42.516594, 43.501076, 20.647961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726070, 43.160381, 20.654831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791914, -0.479276, 0.378374,
		-0.314044, -0.211751, -0.925493,
		0.523688, -0.851737, 0.017175,
		42.883175, 42.904861, 20.659983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018822, 43.048462, 20.514116>,  <42.516594, 43.501076, 20.647961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018822, 43.048462, 20.514116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.323147, 42.799984, 20.589241>,  <42.505741, 42.650898, 20.634315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.323147, 42.799984, 20.589241>,  <42.018822, 43.048462, 20.514116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323147, 42.799984, 20.589241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611358, -0.588968, 0.528544,
		-0.217715, -0.516944, -0.827870,
		0.760817, -0.621197, 0.187811,
		42.551392, 42.613625, 20.645584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699947, 42.466476, 20.435125>,  <42.018822, 43.048462, 20.514116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699947, 42.466476, 20.435125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.023319, 42.404160, 20.662163>,  <42.217342, 42.366768, 20.798386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.023319, 42.404160, 20.662163>,  <41.699947, 42.466476, 20.435125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023319, 42.404160, 20.662163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492566, -0.706963, 0.507525,
		0.322201, -0.689879, -0.648270,
		0.808434, -0.155791, 0.567595,
		42.265850, 42.357422, 20.832441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749695, 41.778271, 20.514214>,  <41.699947, 42.466476, 20.435125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749695, 41.778271, 20.514214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.967289, 41.910488, 20.822710>,  <42.097847, 41.989819, 21.007809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.967289, 41.910488, 20.822710>,  <41.749695, 41.778271, 20.514214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967289, 41.910488, 20.822710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327093, -0.762893, 0.557677,
		0.772713, -0.555639, -0.306888,
		0.543990, 0.330544, 0.771243,
		42.130486, 42.009651, 21.054083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982635, 41.178654, 20.769876>,  <41.749695, 41.778271, 20.514214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982635, 41.178654, 20.769876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.025974, 41.454327, 21.056452>,  <42.051979, 41.619732, 21.228397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.025974, 41.454327, 21.056452>,  <41.982635, 41.178654, 20.769876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025974, 41.454327, 21.056452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417243, -0.622605, 0.662021,
		0.902313, -0.370659, 0.220098,
		0.108350, 0.689185, 0.716439,
		42.058479, 41.661083, 21.271383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163246, 40.835285, 21.340424>,  <41.982635, 41.178654, 20.769876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163246, 40.835285, 21.340424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.025501, 41.170132, 21.510435>,  <41.942856, 41.371040, 21.612442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.025501, 41.170132, 21.510435>,  <42.163246, 40.835285, 21.340424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025501, 41.170132, 21.510435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265759, -0.521119, 0.811053,
		0.900438, 0.166339, 0.401924,
		-0.344360, 0.837118, 0.425029,
		41.922192, 41.421268, 21.637943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371555, 40.762005, 21.991001>,  <42.163246, 40.835285, 21.340424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371555, 40.762005, 21.991001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.060673, 41.011677, 22.022873>,  <41.874142, 41.161480, 22.041996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.060673, 41.011677, 22.022873>,  <42.371555, 40.762005, 21.991001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060673, 41.011677, 22.022873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258568, -0.432236, 0.863895,
		0.573666, 0.650822, 0.497330,
		-0.777206, 0.624181, 0.079677,
		41.827511, 41.198933, 22.046776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358547, 40.986355, 22.720985>,  <42.371555, 40.762005, 21.991001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358547, 40.986355, 22.720985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.995567, 41.046608, 22.564089>,  <41.777779, 41.082760, 22.469952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.995567, 41.046608, 22.564089>,  <42.358547, 40.986355, 22.720985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995567, 41.046608, 22.564089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402093, -0.582189, 0.706666,
		-0.121914, 0.798979, 0.588872,
		-0.907446, 0.150629, -0.392241,
		41.723335, 41.091797, 22.446417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948059, 41.261688, 23.307320>,  <42.358547, 40.986355, 22.720985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948059, 41.261688, 23.307320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.709148, 41.102043, 23.029049>,  <41.565804, 41.006256, 22.862085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.709148, 41.102043, 23.029049>,  <41.948059, 41.261688, 23.307320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709148, 41.102043, 23.029049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392248, -0.611217, 0.687426,
		-0.699572, 0.683462, 0.208514,
		-0.597277, -0.399115, -0.695678,
		41.529964, 40.982307, 22.820345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304119, 41.067070, 23.630692>,  <41.948059, 41.261688, 23.307320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304119, 41.067070, 23.630692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.286152, 40.839485, 23.302237>,  <41.275372, 40.702934, 23.105164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.286152, 40.839485, 23.302237>,  <41.304119, 41.067070, 23.630692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286152, 40.839485, 23.302237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374753, -0.752343, 0.541793,
		-0.926036, 0.332062, -0.179423,
		-0.044921, -0.568959, -0.821138,
		41.272675, 40.668797, 23.055895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619091, 40.784863, 23.585630>,  <41.304119, 41.067070, 23.630692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619091, 40.784863, 23.585630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.835400, 40.550652, 23.344063>,  <40.965183, 40.410126, 23.199121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.835400, 40.550652, 23.344063>,  <40.619091, 40.784863, 23.585630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835400, 40.550652, 23.344063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319567, -0.807131, 0.496404,
		-0.778100, -0.075451, -0.623593,
		0.540775, -0.585531, -0.603917,
		40.997631, 40.374992, 23.162888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249695, 40.253101, 23.337215>,  <40.619091, 40.784863, 23.585630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249695, 40.253101, 23.337215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.614033, 40.104649, 23.264969>,  <40.832634, 40.015575, 23.221621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.614033, 40.104649, 23.264969>,  <40.249695, 40.253101, 23.337215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614033, 40.104649, 23.264969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278071, -0.875151, 0.395963,
		-0.305020, -0.310437, -0.900329,
		0.910846, -0.371132, -0.180615,
		40.887287, 39.993309, 23.210785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151237, 39.594387, 23.077295>,  <40.249695, 40.253101, 23.337215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151237, 39.594387, 23.077295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.528927, 39.546120, 23.199850>,  <40.755543, 39.517159, 23.273384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.528927, 39.546120, 23.199850>,  <40.151237, 39.594387, 23.077295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528927, 39.546120, 23.199850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255281, -0.855966, 0.449616,
		0.208005, -0.502755, -0.839030,
		0.944227, -0.120666, 0.306389,
		40.812195, 39.509918, 23.291767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304279, 38.932217, 22.933437>,  <40.151237, 39.594387, 23.077295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304279, 38.932217, 22.933437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.572327, 39.024132, 23.215752>,  <40.733154, 39.079281, 23.385139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.572327, 39.024132, 23.215752>,  <40.304279, 38.932217, 22.933437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572327, 39.024132, 23.215752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239683, -0.832938, 0.498764,
		0.702488, -0.503397, -0.503093,
		0.670122, 0.229793, 0.705785,
		40.773365, 39.093071, 23.427486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405022, 38.323353, 23.165142>,  <40.304279, 38.932217, 22.933437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405022, 38.323353, 23.165142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.587002, 38.532055, 23.453804>,  <40.696190, 38.657276, 23.627001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.587002, 38.532055, 23.453804>,  <40.405022, 38.323353, 23.165142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587002, 38.532055, 23.453804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288294, -0.680444, 0.673708,
		0.842557, -0.514556, -0.159152,
		0.454955, 0.521755, 0.721656,
		40.723488, 38.688580, 23.670301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844013, 37.794502, 23.572901>,  <40.405022, 38.323353, 23.165142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844013, 37.794502, 23.572901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.753738, 38.111691, 23.799267>,  <40.699574, 38.302006, 23.935085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.753738, 38.111691, 23.799267>,  <40.844013, 37.794502, 23.572901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753738, 38.111691, 23.799267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181480, -0.604954, 0.775304,
		0.957147, 0.072273, 0.280438,
		-0.225686, 0.792974, 0.565914,
		40.686031, 38.349583, 23.969042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127323, 37.620884, 24.148653>,  <40.844013, 37.794502, 23.572901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127323, 37.620884, 24.148653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.876797, 37.914158, 24.254610>,  <40.726482, 38.090122, 24.318184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.876797, 37.914158, 24.254610>,  <41.127323, 37.620884, 24.148653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876797, 37.914158, 24.254610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379931, -0.583788, 0.717527,
		0.680723, 0.348756, 0.644194,
		-0.626314, 0.733186, 0.264895,
		40.688904, 38.134113, 24.334078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.278187, 35.116135, 28.392618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120888, 35.471207, 28.488430>,  <42.026508, 35.684250, 28.545918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120888, 35.471207, 28.488430>,  <42.278187, 35.116135, 28.392618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120888, 35.471207, 28.488430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205918, -0.338934, 0.917998,
		0.896076, 0.311680, 0.316076,
		-0.393250, 0.887682, 0.239530,
		42.002914, 35.737511, 28.560289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421211, 35.120995, 29.099972>,  <42.278187, 35.116135, 28.392618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421211, 35.120995, 29.099972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.144951, 35.405937, 29.050091>,  <41.979195, 35.576904, 29.020163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.144951, 35.405937, 29.050091>,  <42.421211, 35.120995, 29.099972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144951, 35.405937, 29.050091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448203, -0.286300, 0.846845,
		0.567552, 0.640767, 0.517014,
		-0.690651, 0.712356, -0.124704,
		41.937756, 35.619644, 29.012680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419403, 35.517311, 29.721716>,  <42.421211, 35.120995, 29.099972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419403, 35.517311, 29.721716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.065903, 35.550209, 29.537449>,  <41.853802, 35.569950, 29.426889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.065903, 35.550209, 29.537449>,  <42.419403, 35.517311, 29.721716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065903, 35.550209, 29.537449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467827, -0.177921, 0.865726,
		-0.010757, 0.980601, 0.195717,
		-0.883754, 0.082249, -0.460666,
		41.800777, 35.574883, 29.399248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996922, 35.820534, 30.264458>,  <42.419403, 35.517311, 29.721716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996922, 35.820534, 30.264458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.724354, 35.671341, 30.012569>,  <41.560814, 35.581825, 29.861437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.724354, 35.671341, 30.012569>,  <41.996922, 35.820534, 30.264458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724354, 35.671341, 30.012569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660669, -0.056758, 0.748528,
		-0.314928, 0.926101, -0.207741,
		-0.681422, -0.372981, -0.629722,
		41.519928, 35.559448, 29.823652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419643, 36.176060, 30.484943>,  <41.996922, 35.820534, 30.264458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419643, 36.176060, 30.484943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.301037, 35.860783, 30.269232>,  <41.229874, 35.671616, 30.139805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.301037, 35.860783, 30.269232>,  <41.419643, 36.176060, 30.484943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301037, 35.860783, 30.269232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707379, -0.198113, 0.678503,
		-0.641631, 0.582666, -0.498809,
		-0.296520, -0.788195, -0.539281,
		41.212082, 35.624325, 30.107447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572266, 36.128540, 30.483896>,  <41.419643, 36.176060, 30.484943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572266, 36.128540, 30.483896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.711452, 35.764553, 30.393671>,  <40.794964, 35.546162, 30.339537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.711452, 35.764553, 30.393671>,  <40.572266, 36.128540, 30.483896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711452, 35.764553, 30.393671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686211, -0.411145, 0.600061,
		-0.638775, -0.054018, -0.767495,
		0.347966, -0.909968, -0.225562,
		40.815842, 35.491562, 30.326002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950562, 35.712742, 30.320402>,  <40.572266, 36.128540, 30.483896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950562, 35.712742, 30.320402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.233948, 35.440811, 30.396204>,  <40.403980, 35.277653, 30.441685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.233948, 35.440811, 30.396204>,  <39.950562, 35.712742, 30.320402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233948, 35.440811, 30.396204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580290, -0.408315, 0.704657,
		-0.401657, -0.609203, -0.683772,
		0.708474, -0.679816, 0.189512,
		40.446487, 35.236862, 30.453054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513165, 35.193737, 30.411415>,  <39.950562, 35.712742, 30.320402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513165, 35.193737, 30.411415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.865379, 35.075729, 30.559799>,  <40.076710, 35.004925, 30.648830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.865379, 35.075729, 30.559799>,  <39.513165, 35.193737, 30.411415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865379, 35.075729, 30.559799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470989, -0.457004, 0.754531,
		-0.053067, -0.839115, -0.541360,
		0.880542, -0.295015, 0.370962,
		40.129543, 34.987225, 30.671087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473248, 34.402962, 30.522800>,  <39.513165, 35.193737, 30.411415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473248, 34.402962, 30.522800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.745842, 34.546482, 30.777937>,  <39.909397, 34.632595, 30.931019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.745842, 34.546482, 30.777937>,  <39.473248, 34.402962, 30.522800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745842, 34.546482, 30.777937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384236, -0.566356, 0.729112,
		0.622848, -0.741961, -0.248101,
		0.681486, 0.358797, 0.637842,
		39.950287, 34.654121, 30.969290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623894, 33.902637, 30.849045>,  <39.473248, 34.402962, 30.522800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623894, 33.902637, 30.849045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.777142, 34.186150, 31.085976>,  <39.869091, 34.356258, 31.228134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.777142, 34.186150, 31.085976>,  <39.623894, 33.902637, 30.849045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777142, 34.186150, 31.085976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225788, -0.549945, 0.804102,
		0.895679, -0.441807, -0.050659,
		0.383118, 0.708779, 0.592329,
		39.892078, 34.398785, 31.263674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102352, 33.521458, 31.201366>,  <39.623894, 33.902637, 30.849045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102352, 33.521458, 31.201366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.017551, 33.846878, 31.417953>,  <39.966671, 34.042130, 31.547905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.017551, 33.846878, 31.417953>,  <40.102352, 33.521458, 31.201366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017551, 33.846878, 31.417953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176511, -0.576827, 0.797568,
		0.961197, 0.073512, 0.265890,
		-0.212003, 0.813552, 0.541468,
		39.953949, 34.090942, 31.580395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535160, 33.468113, 31.802864>,  <40.102352, 33.521458, 31.201366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535160, 33.468113, 31.802864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.246803, 33.730686, 31.891777>,  <40.073792, 33.888229, 31.945126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.246803, 33.730686, 31.891777>,  <40.535160, 33.468113, 31.802864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246803, 33.730686, 31.891777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150361, -0.461230, 0.874448,
		0.676542, 0.596958, 0.431198,
		-0.720890, 0.656436, 0.222282,
		40.030537, 33.927616, 31.958462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680977, 33.593525, 32.458706>,  <40.535160, 33.468113, 31.802864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680977, 33.593525, 32.458706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.301109, 33.710159, 32.412926>,  <40.073189, 33.780140, 32.385456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.301109, 33.710159, 32.412926>,  <40.680977, 33.593525, 32.458706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301109, 33.710159, 32.412926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261241, -0.535647, 0.803017,
		0.172843, 0.792503, 0.584863,
		-0.949673, 0.291586, -0.114451,
		40.016209, 33.797634, 32.378590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322418, 33.850960, 33.036789>,  <40.680977, 33.593525, 32.458706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322418, 33.850960, 33.036789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032867, 33.670464, 32.828026>,  <39.859138, 33.562164, 32.702770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032867, 33.670464, 32.828026>,  <40.322418, 33.850960, 33.036789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032867, 33.670464, 32.828026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229098, -0.556323, 0.798761,
		-0.650783, 0.697770, 0.299330,
		-0.723875, -0.451245, -0.521903,
		39.815704, 33.535091, 32.671455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717098, 34.434029, 32.728176>,  <40.322418, 33.850960, 33.036789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717098, 34.434029, 32.728176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.952015, 34.441246, 33.051846>,  <41.092964, 34.445576, 33.246048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.952015, 34.441246, 33.051846>,  <40.717098, 34.434029, 32.728176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952015, 34.441246, 33.051846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217963, 0.959292, -0.179587,
		-0.779473, 0.281840, 0.559454,
		0.587294, 0.018043, 0.809172,
		41.128204, 34.446659, 33.294598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678650, 35.137199, 33.055893>,  <40.717098, 34.434029, 32.728176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678650, 35.137199, 33.055893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.005367, 34.995422, 33.237980>,  <41.201397, 34.910355, 33.347233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.005367, 34.995422, 33.237980>,  <40.678650, 35.137199, 33.055893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005367, 34.995422, 33.237980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474076, 0.862001, -0.179458,
		-0.328788, 0.362387, 0.872109,
		0.816792, -0.354443, 0.455215,
		41.250404, 34.889091, 33.374546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843605, 35.640392, 33.497101>,  <40.678650, 35.137199, 33.055893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843605, 35.640392, 33.497101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.182693, 35.434216, 33.447006>,  <41.386147, 35.310509, 33.416950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.182693, 35.434216, 33.447006>,  <40.843605, 35.640392, 33.497101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182693, 35.434216, 33.447006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501178, 0.855649, -0.129171,
		0.173738, 0.046736, 0.983682,
		0.847724, -0.515442, -0.125236,
		41.437012, 35.279583, 33.409435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439949, 36.065449, 33.865036>,  <40.843605, 35.640392, 33.497101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439949, 36.065449, 33.865036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.592697, 35.808670, 33.599079>,  <41.684345, 35.654602, 33.439507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.592697, 35.808670, 33.599079>,  <41.439949, 36.065449, 33.865036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592697, 35.808670, 33.599079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641027, 0.702207, -0.309821,
		0.665779, -0.307902, 0.679658,
		0.381867, -0.641951, -0.664888,
		41.707256, 35.616085, 33.399612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191231, 36.107944, 33.983139>,  <41.439949, 36.065449, 33.865036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191231, 36.107944, 33.983139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.114178, 35.987919, 33.609432>,  <42.067944, 35.915901, 33.385208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.114178, 35.987919, 33.609432>,  <42.191231, 36.107944, 33.983139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114178, 35.987919, 33.609432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565534, 0.744121, -0.355605,
		0.801912, -0.596861, 0.026354,
		-0.192636, -0.300068, -0.934265,
		42.056385, 35.897900, 33.329151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855762, 36.116390, 33.600155>,  <42.191231, 36.107944, 33.983139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855762, 36.116390, 33.600155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.560047, 36.131977, 33.331253>,  <42.382618, 36.141331, 33.169910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.560047, 36.131977, 33.331253>,  <42.855762, 36.116390, 33.600155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560047, 36.131977, 33.331253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305964, 0.908761, -0.283796,
		0.599863, -0.415494, -0.683761,
		-0.739291, 0.038968, -0.672258,
		42.338261, 36.143669, 33.129578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216377, 36.367626, 32.970516>,  <42.855762, 36.116390, 33.600155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216377, 36.367626, 32.970516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.839584, 36.409027, 32.842789>,  <42.613510, 36.433868, 32.766151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.839584, 36.409027, 32.842789>,  <43.216377, 36.367626, 32.970516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839584, 36.409027, 32.842789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300498, 0.683943, -0.664773,
		0.149586, -0.722156, -0.675363,
		-0.941979, 0.103505, -0.319315,
		42.556992, 36.440079, 32.746994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292755, 36.342957, 32.271572>,  <43.216377, 36.367626, 32.970516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292755, 36.342957, 32.271572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.929642, 36.493027, 32.346588>,  <42.711773, 36.583069, 32.391598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.929642, 36.493027, 32.346588>,  <43.292755, 36.342957, 32.271572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929642, 36.493027, 32.346588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113987, 0.650956, -0.750509,
		-0.403651, -0.659924, -0.633693,
		-0.907785, 0.375176, 0.187536,
		42.657307, 36.605579, 32.402847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890167, 36.414085, 31.600548>,  <43.292755, 36.342957, 32.271572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890167, 36.414085, 31.600548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.748421, 36.676392, 31.867197>,  <42.663372, 36.833775, 32.027187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.748421, 36.676392, 31.867197>,  <42.890167, 36.414085, 31.600548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748421, 36.676392, 31.867197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033831, 0.703429, -0.709960,
		-0.934493, -0.274141, -0.227089,
		-0.354370, 0.655770, 0.666624,
		42.642109, 36.873123, 32.067184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363888, 36.779697, 31.226437>,  <42.890167, 36.414085, 31.600548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363888, 36.779697, 31.226437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.427315, 36.996727, 31.556400>,  <42.465370, 37.126945, 31.754377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.427315, 36.996727, 31.556400>,  <42.363888, 36.779697, 31.226437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427315, 36.996727, 31.556400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056198, 0.839083, -0.541093,
		-0.985748, 0.039441, 0.163542,
		0.158566, 0.542572, 0.824908,
		42.474884, 37.159500, 31.803873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990585, 37.302971, 31.108438>,  <42.363888, 36.779697, 31.226437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990585, 37.302971, 31.108438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.225666, 37.447933, 31.397787>,  <42.366714, 37.534912, 31.571396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.225666, 37.447933, 31.397787>,  <41.990585, 37.302971, 31.108438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225666, 37.447933, 31.397787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130858, 0.839723, -0.527012,
		-0.798422, 0.404387, 0.446086,
		0.587706, 0.362404, 0.723371,
		42.401978, 37.556656, 31.614798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687096, 37.975704, 31.244995>,  <41.990585, 37.302971, 31.108438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687096, 37.975704, 31.244995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.070724, 37.957863, 31.356850>,  <42.300900, 37.947159, 31.423962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.070724, 37.957863, 31.356850>,  <41.687096, 37.975704, 31.244995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070724, 37.957863, 31.356850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220263, 0.738121, -0.637700,
		-0.177961, 0.673192, 0.717734,
		0.959069, -0.044604, 0.279637,
		42.358444, 37.944481, 31.440741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804722, 38.635147, 31.345383>,  <41.687096, 37.975704, 31.244995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804722, 38.635147, 31.345383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.166607, 38.473473, 31.291529>,  <42.383739, 38.376469, 31.259216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.166607, 38.473473, 31.291529>,  <41.804722, 38.635147, 31.345383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166607, 38.473473, 31.291529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177652, 0.645178, -0.743091,
		0.387211, 0.648367, 0.655506,
		0.904714, -0.404185, -0.134636,
		42.438023, 38.352219, 31.251139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327473, 39.202133, 31.160629>,  <41.804722, 38.635147, 31.345383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327473, 39.202133, 31.160629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521156, 38.873997, 31.038925>,  <42.637367, 38.677113, 30.965902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521156, 38.873997, 31.038925>,  <42.327473, 39.202133, 31.160629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521156, 38.873997, 31.038925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426029, 0.524796, -0.736945,
		0.764223, 0.227213, 0.603603,
		0.484212, -0.820343, -0.304262,
		42.666420, 38.627895, 30.947647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576778, 39.641033, 31.829699>,  <42.327473, 39.202133, 31.160629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576778, 39.641033, 31.829699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.324154, 39.950317, 31.806805>,  <42.172577, 40.135887, 31.793068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.324154, 39.950317, 31.806805>,  <42.576778, 39.641033, 31.829699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324154, 39.950317, 31.806805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663245, -0.500562, 0.556366,
		0.401537, 0.389342, 0.828964,
		-0.631564, 0.773208, -0.057235,
		42.134686, 40.182281, 31.789635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376640, 39.775211, 32.474922>,  <42.576778, 39.641033, 31.829699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376640, 39.775211, 32.474922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.096573, 39.959648, 32.256878>,  <41.928532, 40.070312, 32.126049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.096573, 39.959648, 32.256878>,  <42.376640, 39.775211, 32.474922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096573, 39.959648, 32.256878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711729, -0.390283, 0.584055,
		0.056556, 0.796913, 0.601441,
		-0.700173, 0.461095, -0.545113,
		41.886520, 40.097977, 32.093346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909676, 40.044521, 32.907185>,  <42.376640, 39.775211, 32.474922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909676, 40.044521, 32.907185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.689804, 40.010624, 32.574760>,  <41.557880, 39.990288, 32.375305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.689804, 40.010624, 32.574760>,  <41.909676, 40.044521, 32.907185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689804, 40.010624, 32.574760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701689, -0.492997, 0.514380,
		-0.453300, 0.865895, 0.211532,
		-0.549683, -0.084739, -0.831064,
		41.524899, 39.985203, 32.325439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293575, 40.077675, 33.174538>,  <41.909676, 40.044521, 32.907185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293575, 40.077675, 33.174538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208118, 39.960468, 32.801765>,  <41.156845, 39.890144, 32.578102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208118, 39.960468, 32.801765>,  <41.293575, 40.077675, 33.174538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208118, 39.960468, 32.801765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789344, -0.510280, 0.341395,
		-0.575580, 0.808552, -0.122273,
		-0.213642, -0.293016, -0.931933,
		41.144028, 39.872562, 32.522186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597458, 40.287228, 32.924679>,  <41.293575, 40.077675, 33.174538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597458, 40.287228, 32.924679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.670479, 39.955643, 32.713211>,  <40.714291, 39.756691, 32.586330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.670479, 39.955643, 32.713211>,  <40.597458, 40.287228, 32.924679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670479, 39.955643, 32.713211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824429, -0.422043, 0.377090,
		-0.535714, 0.367008, -0.760471,
		0.182556, -0.828966, -0.528666,
		40.725246, 39.706951, 32.554611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971554, 40.188847, 32.594738>,  <40.597458, 40.287228, 32.924679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971554, 40.188847, 32.594738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.159222, 39.835934, 32.579517>,  <40.271824, 39.624184, 32.570385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.159222, 39.835934, 32.579517>,  <39.971554, 40.188847, 32.594738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159222, 39.835934, 32.579517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812037, -0.447948, 0.374084,
		-0.347092, -0.144613, -0.926614,
		0.469172, -0.882287, -0.038048,
		40.299973, 39.571247, 32.568104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472710, 39.681522, 32.330383>,  <39.971554, 40.188847, 32.594738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472710, 39.681522, 32.330383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.758633, 39.470379, 32.513866>,  <39.930187, 39.343693, 32.623955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.758633, 39.470379, 32.513866>,  <39.472710, 39.681522, 32.330383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758633, 39.470379, 32.513866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693428, -0.619976, 0.367134,
		0.090593, -0.580511, -0.809197,
		0.714808, -0.527860, 0.458708,
		39.973076, 39.312019, 32.651478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194931, 38.922066, 32.285152>,  <39.472710, 39.681522, 32.330383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194931, 38.922066, 32.285152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.487225, 38.903584, 32.557590>,  <39.662601, 38.892494, 32.721054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.487225, 38.903584, 32.557590>,  <39.194931, 38.922066, 32.285152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487225, 38.903584, 32.557590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529969, -0.667277, 0.523330,
		0.430298, -0.743375, -0.512091,
		0.730737, -0.046205, 0.681094,
		39.706444, 38.889721, 32.761917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323788, 38.329967, 32.447109>,  <39.194931, 38.922066, 32.285152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323788, 38.329967, 32.447109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.453911, 38.496353, 32.786789>,  <39.531986, 38.596184, 32.990597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.453911, 38.496353, 32.786789>,  <39.323788, 38.329967, 32.447109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453911, 38.496353, 32.786789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462610, -0.713236, 0.526579,
		0.824721, -0.564153, -0.039595,
		0.325312, 0.415964, 0.849204,
		39.551506, 38.621143, 33.041550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444942, 37.747616, 33.025524>,  <39.323788, 38.329967, 32.447109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444942, 37.747616, 33.025524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.470207, 38.073128, 33.256615>,  <39.485367, 38.268436, 33.395271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.470207, 38.073128, 33.256615>,  <39.444942, 37.747616, 33.025524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470207, 38.073128, 33.256615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259282, -0.545628, 0.796908,
		0.963734, -0.200129, 0.176536,
		0.063161, 0.813780, 0.577730,
		39.489155, 38.317261, 33.429935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839203, 37.539108, 33.700218>,  <39.444942, 37.747616, 33.025524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839203, 37.539108, 33.700218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.615440, 37.864803, 33.762299>,  <39.481182, 38.060219, 33.799545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.615440, 37.864803, 33.762299>,  <39.839203, 37.539108, 33.700218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615440, 37.864803, 33.762299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247627, -0.342847, 0.906166,
		0.791041, 0.468483, 0.393417,
		-0.559406, 0.814235, 0.155197,
		39.447620, 38.109074, 33.808857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009029, 37.731701, 34.408314>,  <39.839203, 37.539108, 33.700218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009029, 37.731701, 34.408314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.658455, 37.886467, 34.293667>,  <39.448109, 37.979328, 34.224880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.658455, 37.886467, 34.293667>,  <40.009029, 37.731701, 34.408314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658455, 37.886467, 34.293667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429969, -0.360934, 0.827558,
		0.216744, 0.848542, 0.482699,
		-0.876441, 0.386914, -0.286617,
		39.395523, 38.002541, 34.207684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.762188, 42.632107, 30.248543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402565, 42.659328, 30.075539>,  <44.186790, 42.675663, 29.971735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402565, 42.659328, 30.075539>,  <44.762188, 42.632107, 30.248543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402565, 42.659328, 30.075539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381397, -0.606872, 0.697311,
		-0.215022, 0.791880, 0.571569,
		-0.899056, 0.068058, -0.432512,
		44.132847, 42.679745, 29.945786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344284, 42.792732, 30.852619>,  <44.762188, 42.632107, 30.248543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344284, 42.792732, 30.852619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131207, 42.640476, 30.550266>,  <44.003361, 42.549122, 30.368855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131207, 42.640476, 30.550266>,  <44.344284, 42.792732, 30.852619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131207, 42.640476, 30.550266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437715, -0.640499, 0.631005,
		-0.724324, 0.666991, 0.174578,
		-0.532691, -0.380637, -0.755881,
		43.971397, 42.526283, 30.323502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556553, 42.924465, 31.095514>,  <44.344284, 42.792732, 30.852619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556553, 42.924465, 31.095514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556030, 42.633053, 30.821508>,  <43.555717, 42.458206, 30.657104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556030, 42.633053, 30.821508>,  <43.556553, 42.924465, 31.095514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556030, 42.633053, 30.821508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598540, -0.548192, 0.584153,
		-0.801092, 0.410769, -0.435340,
		-0.001302, -0.728529, -0.685014,
		43.555641, 42.414494, 30.616005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931301, 42.718704, 31.188631>,  <43.556553, 42.924465, 31.095514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931301, 42.718704, 31.188631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099392, 42.428757, 30.970285>,  <43.200245, 42.254787, 30.839277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099392, 42.428757, 30.970285>,  <42.931301, 42.718704, 31.188631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099392, 42.428757, 30.970285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673283, -0.652375, 0.347992,
		-0.608358, 0.221285, -0.762190,
		0.420228, -0.724873, -0.545865,
		43.225460, 42.211296, 30.806526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379509, 42.319096, 30.843006>,  <42.931301, 42.718704, 31.188631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379509, 42.319096, 30.843006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697235, 42.076878, 30.862509>,  <42.887871, 41.931545, 30.874210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697235, 42.076878, 30.862509>,  <42.379509, 42.319096, 30.843006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697235, 42.076878, 30.862509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607336, -0.793419, 0.040363,
		0.014242, -0.061673, -0.997995,
		0.794317, -0.605544, 0.048756,
		42.935532, 41.895214, 30.877136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319149, 41.726212, 30.369286>,  <42.379509, 42.319096, 30.843006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319149, 41.726212, 30.369286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582294, 41.608574, 30.646624>,  <42.740181, 41.537991, 30.813026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582294, 41.608574, 30.646624>,  <42.319149, 41.726212, 30.369286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582294, 41.608574, 30.646624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618321, -0.736517, 0.274267,
		0.429999, -0.609139, -0.666371,
		0.657860, -0.294097, 0.693345,
		42.779652, 41.520344, 30.854628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271725, 40.951012, 30.339941>,  <42.319149, 41.726212, 30.369286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271725, 40.951012, 30.339941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440819, 41.046593, 30.689615>,  <42.542274, 41.103939, 30.899420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440819, 41.046593, 30.689615>,  <42.271725, 40.951012, 30.339941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440819, 41.046593, 30.689615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489022, -0.751979, 0.442024,
		0.762991, -0.614354, -0.201033,
		0.422731, 0.238951, 0.874186,
		42.567638, 41.118279, 30.951872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411652, 40.299858, 30.610723>,  <42.271725, 40.951012, 30.339941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411652, 40.299858, 30.610723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402977, 40.565536, 30.909620>,  <42.397774, 40.724945, 31.088959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402977, 40.565536, 30.909620>,  <42.411652, 40.299858, 30.610723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402977, 40.565536, 30.909620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546765, -0.633618, 0.547336,
		0.837005, -0.396698, 0.376899,
		-0.021683, 0.664198, 0.747242,
		42.396473, 40.764797, 31.133793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625309, 39.897083, 31.029074>,  <42.411652, 40.299858, 30.610723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625309, 39.897083, 31.029074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456291, 40.196800, 31.233040>,  <42.354881, 40.376633, 31.355419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456291, 40.196800, 31.233040>,  <42.625309, 39.897083, 31.029074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456291, 40.196800, 31.233040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423126, -0.660618, 0.620120,
		0.801511, 0.046270, 0.596187,
		-0.422545, 0.749295, 0.509914,
		42.329529, 40.421589, 31.386015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121441, 39.325737, 31.024141>,  <42.625309, 39.897083, 31.029074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121441, 39.325737, 31.024141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060368, 38.995110, 30.807449>,  <43.023724, 38.796734, 30.677435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060368, 38.995110, 30.807449>,  <43.121441, 39.325737, 31.024141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060368, 38.995110, 30.807449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446394, 0.431369, -0.783998,
		0.881714, -0.361529, 0.303112,
		-0.152685, -0.826570, -0.541729,
		43.014561, 38.747139, 30.644930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733112, 39.197018, 30.609009>,  <43.121441, 39.325737, 31.024141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733112, 39.197018, 30.609009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470173, 38.950031, 30.436209>,  <43.312408, 38.801838, 30.332529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470173, 38.950031, 30.436209>,  <43.733112, 39.197018, 30.609009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470173, 38.950031, 30.436209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418608, 0.177486, -0.890655,
		0.626623, -0.766312, 0.141806,
		-0.657351, -0.617466, -0.432001,
		43.272968, 38.764793, 30.306608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074429, 38.678570, 30.122816>,  <43.733112, 39.197018, 30.609009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074429, 38.678570, 30.122816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696541, 38.692154, 29.992373>,  <43.469807, 38.700306, 29.914106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696541, 38.692154, 29.992373>,  <44.074429, 38.678570, 30.122816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696541, 38.692154, 29.992373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327786, 0.120914, -0.936982,
		0.007607, -0.992082, -0.125364,
		-0.944721, 0.033965, -0.326110,
		43.413124, 38.702343, 29.894539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147327, 38.261009, 29.521542>,  <44.074429, 38.678570, 30.122816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147327, 38.261009, 29.521542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805450, 38.463852, 29.477089>,  <43.600327, 38.585556, 29.450418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805450, 38.463852, 29.477089>,  <44.147327, 38.261009, 29.521542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805450, 38.463852, 29.477089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197430, 0.119524, -0.973003,
		-0.480132, -0.853556, -0.202274,
		-0.854690, 0.507105, -0.111130,
		43.549042, 38.615982, 29.443750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806343, 37.979904, 29.002623>,  <44.147327, 38.261009, 29.521542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806343, 37.979904, 29.002623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659519, 38.349930, 29.041664>,  <43.571423, 38.571945, 29.065090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659519, 38.349930, 29.041664>,  <43.806343, 37.979904, 29.002623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659519, 38.349930, 29.041664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157623, 0.165268, -0.973572,
		-0.916745, -0.341976, -0.206474,
		-0.367062, 0.925062, 0.097605,
		43.549400, 38.627449, 29.070946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165188, 38.025707, 28.683214>,  <43.806343, 37.979904, 29.002623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165188, 38.025707, 28.683214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302258, 38.401402, 28.675146>,  <43.384499, 38.626820, 28.670305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302258, 38.401402, 28.675146>,  <43.165188, 38.025707, 28.683214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302258, 38.401402, 28.675146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103145, -0.058953, -0.992918,
		-0.933774, 0.338171, -0.117079,
		0.342678, 0.939236, -0.020168,
		43.405060, 38.683174, 28.669096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009438, 38.225975, 28.014091>,  <43.165188, 38.025707, 28.683214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009438, 38.225975, 28.014091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248608, 38.530064, 28.115715>,  <43.392109, 38.712517, 28.176689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248608, 38.530064, 28.115715>,  <43.009438, 38.225975, 28.014091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248608, 38.530064, 28.115715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125976, 0.223895, -0.966437,
		-0.791588, 0.609866, 0.038104,
		0.597928, 0.760220, 0.254061,
		43.427986, 38.758129, 28.191933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752823, 38.884361, 27.543943>,  <43.009438, 38.225975, 28.014091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752823, 38.884361, 27.543943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129307, 38.922688, 27.673529>,  <43.355198, 38.945683, 27.751280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129307, 38.922688, 27.673529>,  <42.752823, 38.884361, 27.543943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129307, 38.922688, 27.673529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280755, 0.311531, -0.907814,
		-0.187904, 0.945393, 0.266315,
		0.941206, 0.095812, 0.323961,
		43.411667, 38.951431, 27.770718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933685, 39.559792, 27.364483>,  <42.752823, 38.884361, 27.543943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933685, 39.559792, 27.364483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285461, 39.374599, 27.408731>,  <43.496525, 39.263485, 27.435280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285461, 39.374599, 27.408731>,  <42.933685, 39.559792, 27.364483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285461, 39.374599, 27.408731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313422, 0.388285, -0.866603,
		0.358270, 0.796794, 0.486582,
		0.879437, -0.462983, 0.110621,
		43.549294, 39.235703, 27.441917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516003, 40.101246, 27.308863>,  <42.933685, 39.559792, 27.364483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516003, 40.101246, 27.308863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642670, 39.735115, 27.209345>,  <43.718670, 39.515438, 27.149633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642670, 39.735115, 27.209345>,  <43.516003, 40.101246, 27.308863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642670, 39.735115, 27.209345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478572, 0.380637, -0.791255,
		0.818958, 0.131497, 0.558585,
		0.316666, -0.915327, -0.248795,
		43.737671, 39.460518, 27.134706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925625, 40.258961, 26.735092>,  <43.516003, 40.101246, 27.308863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925625, 40.258961, 26.735092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985027, 39.863449, 26.741661>,  <44.020668, 39.626144, 26.745602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985027, 39.863449, 26.741661>,  <43.925625, 40.258961, 26.735092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985027, 39.863449, 26.741661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553957, 0.069423, -0.829646,
		0.819193, 0.132307, 0.558048,
		0.148510, -0.988775, 0.016421,
		44.029579, 39.566818, 26.746588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693340, 40.262539, 26.636585>,  <43.925625, 40.258961, 26.735092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693340, 40.262539, 26.636585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.483704, 39.945847, 26.511053>,  <44.357922, 39.755833, 26.435734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.483704, 39.945847, 26.511053>,  <44.693340, 40.262539, 26.636585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483704, 39.945847, 26.511053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539088, -0.023127, -0.841932,
		0.659324, -0.610435, 0.438932,
		-0.524095, -0.791729, -0.313830,
		44.326473, 39.708328, 26.416904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165508, 39.726643, 26.406225>,  <44.693340, 40.262539, 26.636585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.165508, 39.726643, 26.406225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819202, 39.672848, 26.213408>,  <44.611420, 39.640572, 26.097717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819202, 39.672848, 26.213408>,  <45.165508, 39.726643, 26.406225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.819202, 39.672848, 26.213408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495217, -0.091220, -0.863967,
		0.072224, -0.986707, 0.145577,
		-0.865762, -0.134491, -0.482046,
		44.559475, 39.632500, 26.068794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348869, 39.225307, 26.067036>,  <45.165508, 39.726643, 26.406225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348869, 39.225307, 26.067036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022095, 39.382458, 25.898149>,  <44.826031, 39.476746, 25.796818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022095, 39.382458, 25.898149>,  <45.348869, 39.225307, 26.067036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022095, 39.382458, 25.898149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485713, 0.073960, -0.870984,
		-0.310957, -0.916615, -0.251243,
		-0.816938, 0.392871, -0.422214,
		44.777012, 39.500320, 25.771486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.867043, 41.761368, 24.122931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.174355, 41.798042, 24.376335>,  <38.358742, 41.820045, 24.528378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.174355, 41.798042, 24.376335>,  <37.867043, 41.761368, 24.122931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174355, 41.798042, 24.376335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453911, -0.619793, 0.640173,
		0.451338, -0.779391, -0.434560,
		0.768283, 0.091683, 0.633511,
		38.404839, 41.825546, 24.566389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957783, 41.054310, 24.173380>,  <37.867043, 41.761368, 24.122931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957783, 41.054310, 24.173380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103794, 41.235096, 24.498953>,  <38.191399, 41.343567, 24.694296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103794, 41.235096, 24.498953>,  <37.957783, 41.054310, 24.173380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103794, 41.235096, 24.498953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370098, -0.731766, 0.572316,
		0.854273, -0.510145, -0.099843,
		0.365026, 0.451963, 0.813932,
		38.213303, 41.370686, 24.743132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272484, 40.521908, 24.528786>,  <37.957783, 41.054310, 24.173380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272484, 40.521908, 24.528786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.241192, 40.809174, 24.805368>,  <38.222416, 40.981533, 24.971319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.241192, 40.809174, 24.805368>,  <38.272484, 40.521908, 24.528786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241192, 40.809174, 24.805368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253925, -0.685063, 0.682796,
		0.964055, -0.122164, 0.235953,
		-0.078230, 0.718167, 0.691459,
		38.217724, 41.024624, 25.012806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814137, 40.294609, 25.007589>,  <38.272484, 40.521908, 24.528786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814137, 40.294609, 25.007589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.544903, 40.532738, 25.183111>,  <38.383362, 40.675613, 25.288424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.544903, 40.532738, 25.183111>,  <38.814137, 40.294609, 25.007589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544903, 40.532738, 25.183111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159457, -0.696194, 0.699920,
		0.722167, 0.401138, 0.563528,
		-0.673089, 0.595317, 0.438804,
		38.342976, 40.711334, 25.314753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931637, 40.199528, 25.718540>,  <38.814137, 40.294609, 25.007589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931637, 40.199528, 25.718540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570271, 40.370926, 25.712574>,  <38.353451, 40.473766, 25.708994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570271, 40.370926, 25.712574>,  <38.931637, 40.199528, 25.718540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570271, 40.370926, 25.712574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304829, -0.617448, 0.725146,
		0.301514, 0.659658, 0.688434,
		-0.903420, 0.428496, -0.014914,
		38.299244, 40.499474, 25.708099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766712, 40.287319, 26.467258>,  <38.931637, 40.199528, 25.718540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766712, 40.287319, 26.467258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.419914, 40.310566, 26.269289>,  <38.211838, 40.324516, 26.150507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.419914, 40.310566, 26.269289>,  <38.766712, 40.287319, 26.467258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419914, 40.310566, 26.269289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364991, -0.750252, 0.551274,
		-0.339278, 0.658592, 0.671675,
		-0.866990, 0.058120, -0.494924,
		38.159817, 40.328003, 26.120811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300514, 40.355293, 27.021120>,  <38.766712, 40.287319, 26.467258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300514, 40.355293, 27.021120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.081821, 40.227276, 26.711628>,  <37.950607, 40.150467, 26.525932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.081821, 40.227276, 26.711628>,  <38.300514, 40.355293, 27.021120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081821, 40.227276, 26.711628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574916, -0.528324, 0.624777,
		-0.608736, 0.786414, 0.104853,
		-0.546730, -0.320042, -0.773731,
		37.917801, 40.131264, 26.479509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575371, 40.519463, 27.237461>,  <38.300514, 40.355293, 27.021120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575371, 40.519463, 27.237461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.529007, 40.251244, 26.944359>,  <37.501190, 40.090313, 26.768497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.529007, 40.251244, 26.944359>,  <37.575371, 40.519463, 27.237461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529007, 40.251244, 26.944359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563617, -0.563054, 0.604405,
		-0.817864, 0.483049, -0.312670,
		-0.115907, -0.670547, -0.732757,
		37.494236, 40.050079, 26.724531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758770, 40.404331, 27.236732>,  <37.575371, 40.519463, 27.237461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758770, 40.404331, 27.236732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.935917, 40.091125, 27.062029>,  <37.042206, 39.903202, 26.957207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.935917, 40.091125, 27.062029>,  <36.758770, 40.404331, 27.236732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935917, 40.091125, 27.062029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443929, -0.614731, 0.651944,
		-0.778971, -0.094834, -0.619847,
		0.442866, -0.783015, -0.436759,
		37.068775, 39.856220, 26.931002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205727, 39.913792, 27.179129>,  <36.758770, 40.404331, 27.236732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205727, 39.913792, 27.179129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.548149, 39.709564, 27.146910>,  <36.753605, 39.587029, 27.127579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.548149, 39.709564, 27.146910>,  <36.205727, 39.913792, 27.179129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548149, 39.709564, 27.146910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301476, -0.619786, 0.724553,
		-0.419852, -0.595978, -0.684496,
		0.856059, -0.510564, -0.080545,
		36.804966, 39.556396, 27.122746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942951, 39.277355, 27.193581>,  <36.205727, 39.913792, 27.179129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942951, 39.277355, 27.193581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.324734, 39.192673, 27.277676>,  <36.553802, 39.141861, 27.328133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.324734, 39.192673, 27.277676>,  <35.942951, 39.277355, 27.193581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324734, 39.192673, 27.277676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298359, -0.673433, 0.676366,
		-0.001611, -0.708285, -0.705924,
		0.954452, -0.211709, 0.210238,
		36.611069, 39.129162, 27.340748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050850, 38.533211, 27.250584>,  <35.942951, 39.277355, 27.193581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050850, 38.533211, 27.250584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.374073, 38.671127, 27.441648>,  <36.568008, 38.753876, 27.556288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.374073, 38.671127, 27.441648>,  <36.050850, 38.533211, 27.250584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374073, 38.671127, 27.441648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104568, -0.714007, 0.692286,
		0.579745, -0.609357, -0.540907,
		0.808060, 0.344788, 0.477661,
		36.616489, 38.774563, 27.584948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390644, 37.937710, 27.333120>,  <36.050850, 38.533211, 27.250584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390644, 37.937710, 27.333120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.559708, 38.184574, 27.598591>,  <36.661148, 38.332695, 27.757874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.559708, 38.184574, 27.598591>,  <36.390644, 37.937710, 27.333120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559708, 38.184574, 27.598591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211253, -0.645041, 0.734367,
		0.881323, -0.450592, -0.142256,
		0.422660, 0.617163, 0.663678,
		36.686504, 38.369724, 27.797695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924000, 37.596352, 27.736963>,  <36.390644, 37.937710, 27.333120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924000, 37.596352, 27.736963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.791454, 37.903347, 27.956476>,  <36.711929, 38.087543, 28.088184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.791454, 37.903347, 27.956476>,  <36.924000, 37.596352, 27.736963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791454, 37.903347, 27.956476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327280, -0.639027, 0.696084,
		0.884922, 0.051050, 0.462932,
		-0.331361, 0.767488, 0.548782,
		36.692047, 38.133595, 28.121111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682800, 37.774384, 27.760040>,  <36.924000, 37.596352, 27.736963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682800, 37.774384, 27.760040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.968430, 37.499847, 27.704865>,  <38.139809, 37.335125, 27.671759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.968430, 37.499847, 27.704865>,  <37.682800, 37.774384, 27.760040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968430, 37.499847, 27.704865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457283, 0.606483, -0.650438,
		0.530083, 0.401385, 0.746929,
		0.714076, -0.686344, -0.137940,
		38.182652, 37.293945, 27.663483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403137, 38.141201, 27.802629>,  <37.682800, 37.774384, 27.760040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403137, 38.141201, 27.802629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.434296, 37.799526, 27.596992>,  <38.452991, 37.594521, 27.473610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.434296, 37.799526, 27.596992>,  <38.403137, 38.141201, 27.802629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434296, 37.799526, 27.596992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574440, 0.459912, -0.677126,
		0.814831, -0.242569, 0.526508,
		0.077898, -0.854191, -0.514092,
		38.457664, 37.543270, 27.442764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047684, 38.226028, 27.552008>,  <38.403137, 38.141201, 27.802629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047684, 38.226028, 27.552008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891762, 37.939537, 27.320469>,  <38.798206, 37.767643, 27.181545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891762, 37.939537, 27.320469>,  <39.047684, 38.226028, 27.552008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891762, 37.939537, 27.320469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659580, 0.221508, -0.718254,
		0.642655, -0.661777, 0.386066,
		-0.389807, -0.716231, -0.578848,
		38.774818, 37.724667, 27.146814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591045, 37.914631, 27.265123>,  <39.047684, 38.226028, 27.552008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591045, 37.914631, 27.265123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.293056, 37.810982, 27.019239>,  <39.114262, 37.748795, 26.871710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.293056, 37.810982, 27.019239>,  <39.591045, 37.914631, 27.265123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293056, 37.810982, 27.019239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582864, 0.195365, -0.788735,
		0.324470, -0.945880, 0.005489,
		-0.744976, -0.259120, -0.614709,
		39.069565, 37.733246, 26.834827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929440, 37.445461, 26.822489>,  <39.591045, 37.914631, 27.265123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929440, 37.445461, 26.822489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.585777, 37.554985, 26.649570>,  <39.379581, 37.620701, 26.545820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.585777, 37.554985, 26.649570>,  <39.929440, 37.445461, 26.822489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585777, 37.554985, 26.649570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508384, 0.360515, -0.782033,
		-0.058282, -0.891659, -0.448941,
		-0.859156, 0.273812, -0.432293,
		39.328030, 37.637127, 26.519882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854946, 37.091309, 26.198219>,  <39.929440, 37.445461, 26.822489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854946, 37.091309, 26.198219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616787, 37.412243, 26.181461>,  <39.473892, 37.604805, 26.171406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616787, 37.412243, 26.181461>,  <39.854946, 37.091309, 26.198219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616787, 37.412243, 26.181461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329890, 0.196588, -0.923323,
		-0.732582, -0.563564, -0.381732,
		-0.595395, 0.802340, -0.041897,
		39.438168, 37.652946, 26.168892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504272, 36.987549, 25.595272>,  <39.854946, 37.091309, 26.198219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504272, 36.987549, 25.595272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.470459, 37.378609, 25.672279>,  <39.450169, 37.613243, 25.718483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.470459, 37.378609, 25.672279>,  <39.504272, 36.987549, 25.595272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470459, 37.378609, 25.672279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453375, 0.209790, -0.866279,
		-0.887302, 0.014051, -0.460974,
		-0.084536, 0.977645, 0.192518,
		39.445099, 37.671902, 25.730034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295662, 37.283852, 24.984379>,  <39.504272, 36.987549, 25.595272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295662, 37.283852, 24.984379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441444, 37.586128, 25.202038>,  <39.528915, 37.767494, 25.332632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441444, 37.586128, 25.202038>,  <39.295662, 37.283852, 24.984379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441444, 37.586128, 25.202038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434454, 0.378859, -0.817138,
		-0.823663, 0.534218, -0.190237,
		0.364457, 0.755696, 0.544146,
		39.550781, 37.812836, 25.365282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185608, 37.912285, 24.589218>,  <39.295662, 37.283852, 24.984379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185608, 37.912285, 24.589218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.471912, 38.018764, 24.847466>,  <39.643696, 38.082653, 25.002413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.471912, 38.018764, 24.847466>,  <39.185608, 37.912285, 24.589218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471912, 38.018764, 24.847466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479984, 0.483986, -0.731692,
		-0.507247, 0.833603, 0.218646,
		0.715762, 0.266202, 0.645617,
		39.686642, 38.098625, 25.041151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413486, 38.519600, 24.348700>,  <39.185608, 37.912285, 24.589218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413486, 38.519600, 24.348700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.728638, 38.406792, 24.567682>,  <39.917728, 38.339108, 24.699072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.728638, 38.406792, 24.567682>,  <39.413486, 38.519600, 24.348700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728638, 38.406792, 24.567682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614132, 0.425706, -0.664543,
		-0.045643, 0.859791, 0.508602,
		0.787883, -0.282017, 0.547456,
		39.965004, 38.322186, 24.731918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861263, 39.123806, 24.501644>,  <39.413486, 38.519600, 24.348700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861263, 39.123806, 24.501644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.107506, 38.808758, 24.491243>,  <40.255253, 38.619728, 24.485003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.107506, 38.808758, 24.491243>,  <39.861263, 39.123806, 24.501644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107506, 38.808758, 24.491243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646467, 0.523599, -0.554909,
		0.450675, 0.324796, 0.831504,
		0.615607, -0.787624, -0.026003,
		40.292187, 38.572472, 24.483442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394802, 39.332802, 24.829884>,  <39.861263, 39.123806, 24.501644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394802, 39.332802, 24.829884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.494492, 39.051262, 24.563807>,  <40.554306, 38.882336, 24.404161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.494492, 39.051262, 24.563807>,  <40.394802, 39.332802, 24.829884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494492, 39.051262, 24.563807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432021, 0.695537, -0.574096,
		0.866743, -0.144297, 0.477425,
		0.249226, -0.703852, -0.665191,
		40.569260, 38.840107, 24.364248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046753, 39.414246, 24.667976>,  <40.394802, 39.332802, 24.829884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046753, 39.414246, 24.667976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.936203, 39.202492, 24.347136>,  <40.869873, 39.075439, 24.154631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.936203, 39.202492, 24.347136>,  <41.046753, 39.414246, 24.667976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936203, 39.202492, 24.347136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498707, 0.634447, -0.590566,
		0.821529, -0.563231, 0.088665,
		-0.276372, -0.529385, -0.802103,
		40.853291, 39.043674, 24.106504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642414, 39.400776, 24.373409>,  <41.046753, 39.414246, 24.667976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642414, 39.400776, 24.373409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.390877, 39.297470, 24.080053>,  <41.239956, 39.235485, 23.904039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.390877, 39.297470, 24.080053>,  <41.642414, 39.400776, 24.373409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390877, 39.297470, 24.080053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504165, 0.582625, -0.637468,
		0.591933, -0.770612, -0.236162,
		-0.628835, -0.258273, -0.733391,
		41.202225, 39.219990, 23.860037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880966, 38.799206, 23.854513>,  <41.642414, 39.400776, 24.373409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880966, 38.799206, 23.854513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.204308, 38.588531, 23.749315>,  <42.398312, 38.462128, 23.686197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.204308, 38.588531, 23.749315>,  <41.880966, 38.799206, 23.854513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204308, 38.588531, 23.749315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213058, -0.678194, 0.703321,
		-0.548788, -0.512500, -0.660435,
		0.808355, -0.526685, -0.262992,
		42.446815, 38.430527, 23.670418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684120, 38.095589, 23.655859>,  <41.880966, 38.799206, 23.854513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684120, 38.095589, 23.655859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.057137, 38.111362, 23.799417>,  <42.280949, 38.120827, 23.885551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.057137, 38.111362, 23.799417>,  <41.684120, 38.095589, 23.655859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057137, 38.111362, 23.799417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238255, -0.679656, 0.693760,
		0.271285, -0.732470, -0.624413,
		0.932544, 0.039437, 0.358895,
		42.336899, 38.123192, 23.907085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826324, 37.467686, 23.860893>,  <41.684120, 38.095589, 23.655859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826324, 37.467686, 23.860893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.130737, 37.658329, 24.036930>,  <42.313385, 37.772713, 24.142553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.130737, 37.658329, 24.036930>,  <41.826324, 37.467686, 23.860893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130737, 37.658329, 24.036930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065126, -0.618848, 0.782806,
		0.645440, -0.624400, -0.439923,
		0.761030, 0.476604, 0.440094,
		42.359047, 37.801311, 24.168959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231194, 36.947239, 24.260218>,  <41.826324, 37.467686, 23.860893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231194, 36.947239, 24.260218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.312767, 37.294010, 24.442139>,  <42.361710, 37.502075, 24.551291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.312767, 37.294010, 24.442139>,  <42.231194, 36.947239, 24.260218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312767, 37.294010, 24.442139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179694, -0.423526, 0.887883,
		0.962353, -0.262791, 0.069413,
		0.203929, 0.866930, 0.454803,
		42.373947, 37.554089, 24.578579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651875, 36.742714, 24.708538>,  <42.231194, 36.947239, 24.260218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651875, 36.742714, 24.708538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.592308, 37.108589, 24.858828>,  <42.556568, 37.328114, 24.949001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.592308, 37.108589, 24.858828>,  <42.651875, 36.742714, 24.708538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592308, 37.108589, 24.858828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158127, -0.353044, 0.922147,
		0.976126, 0.196731, -0.092064,
		-0.148912, 0.914689, 0.375724,
		42.547634, 37.382996, 24.971544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243618, 36.992081, 25.206276>,  <42.651875, 36.742714, 24.708538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243618, 36.992081, 25.206276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.917355, 37.210804, 25.281858>,  <42.721596, 37.342037, 25.327208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.917355, 37.210804, 25.281858>,  <43.243618, 36.992081, 25.206276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917355, 37.210804, 25.281858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093338, -0.197955, 0.975757,
		0.570953, 0.813522, 0.110426,
		-0.815659, 0.546805, 0.188956,
		42.672657, 37.374844, 25.338545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409660, 37.378620, 25.761883>,  <43.243618, 36.992081, 25.206276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409660, 37.378620, 25.761883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.009750, 37.370110, 25.762495>,  <42.769806, 37.365002, 25.762863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.009750, 37.370110, 25.762495>,  <43.409660, 37.378620, 25.761883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009750, 37.370110, 25.762495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005212, -0.174027, 0.984727,
		-0.020689, 0.984511, 0.174098,
		-0.999772, -0.021280, 0.001531,
		42.709820, 37.363724, 25.762955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167389, 37.736012, 26.361506>,  <43.409660, 37.378620, 25.761883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167389, 37.736012, 26.361506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.844193, 37.527603, 26.251465>,  <42.650272, 37.402557, 26.185440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.844193, 37.527603, 26.251465>,  <43.167389, 37.736012, 26.361506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844193, 37.527603, 26.251465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207610, -0.185200, 0.960520,
		-0.551400, 0.833210, 0.041471,
		-0.807995, -0.521021, -0.275102,
		42.601795, 37.371296, 26.168934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660580, 37.862614, 26.875132>,  <43.167389, 37.736012, 26.361506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660580, 37.862614, 26.875132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.505444, 37.537079, 26.702044>,  <42.412361, 37.341759, 26.598190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.505444, 37.537079, 26.702044>,  <42.660580, 37.862614, 26.875132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505444, 37.537079, 26.702044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260241, -0.353681, 0.898435,
		-0.884225, 0.461063, -0.074622,
		-0.387842, -0.813838, -0.432721,
		42.389091, 37.292927, 26.572227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952213, 37.759361, 27.133017>,  <42.660580, 37.862614, 26.875132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952213, 37.759361, 27.133017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.102325, 37.404770, 27.024712>,  <42.192394, 37.192013, 26.959728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.102325, 37.404770, 27.024712>,  <41.952213, 37.759361, 27.133017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102325, 37.404770, 27.024712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238112, -0.374512, 0.896127,
		-0.895804, -0.271831, -0.351630,
		0.375285, -0.886481, -0.270763,
		42.214912, 37.138824, 26.943483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496536, 37.236938, 27.460939>,  <41.952213, 37.759361, 27.133017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496536, 37.236938, 27.460939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.792927, 37.005157, 27.325180>,  <41.970760, 36.866089, 27.243725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.792927, 37.005157, 27.325180>,  <41.496536, 37.236938, 27.460939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792927, 37.005157, 27.325180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083220, -0.580750, 0.809817,
		-0.666356, -0.571809, -0.478543,
		0.740975, -0.579451, -0.339401,
		42.015221, 36.831322, 27.223360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274399, 36.615986, 27.493740>,  <41.496536, 37.236938, 27.460939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274399, 36.615986, 27.493740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.669075, 36.564907, 27.534010>,  <41.905880, 36.534260, 27.558172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.669075, 36.564907, 27.534010>,  <41.274399, 36.615986, 27.493740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669075, 36.564907, 27.534010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156675, -0.580772, 0.798847,
		-0.043543, -0.803988, -0.593049,
		0.986690, -0.127700, 0.100677,
		41.965080, 36.526596, 27.564213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362144, 35.843998, 27.506847>,  <41.274399, 36.615986, 27.493740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362144, 35.843998, 27.506847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.675240, 36.032207, 27.669786>,  <41.863094, 36.145134, 27.767550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.675240, 36.032207, 27.669786>,  <41.362144, 35.843998, 27.506847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675240, 36.032207, 27.669786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097206, -0.554063, 0.826780,
		0.614717, -0.686746, -0.387946,
		0.782735, 0.470525, 0.407348,
		41.910061, 36.173367, 27.791990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922489, 35.335052, 27.817469>,  <41.362144, 35.843998, 27.506847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922489, 35.335052, 27.817469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.954556, 35.685097, 28.008364>,  <41.973793, 35.895123, 28.122900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.954556, 35.685097, 28.008364>,  <41.922489, 35.335052, 27.817469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954556, 35.685097, 28.008364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137701, -0.464464, 0.874821,
		0.987225, -0.135843, 0.083272,
		0.080161, 0.875111, 0.477236,
		41.978603, 35.947632, 28.151535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.372677, 38.999664, 25.267982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.103806, 39.294815, 25.292355>,  <44.942482, 39.471905, 25.306978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.103806, 39.294815, 25.292355>,  <45.372677, 38.999664, 25.267982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.103806, 39.294815, 25.292355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287879, 0.336287, -0.896681,
		-0.682134, -0.585186, -0.438464,
		-0.672175, 0.737881, 0.060930,
		44.902153, 39.516178, 25.310635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.914440, 39.044258, 24.643579>,  <45.372677, 38.999664, 25.267982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.914440, 39.044258, 24.643579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.897575, 39.407642, 24.809912>,  <44.887455, 39.625675, 24.909712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.897575, 39.407642, 24.809912>,  <44.914440, 39.044258, 24.643579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897575, 39.407642, 24.809912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276739, 0.410537, -0.868836,
		-0.960020, 0.078442, -0.268718,
		-0.042165, 0.908464, 0.415831,
		44.884926, 39.680183, 24.934662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382065, 39.423813, 24.225857>,  <44.914440, 39.044258, 24.643579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382065, 39.423813, 24.225857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.658287, 39.644051, 24.413465>,  <44.824020, 39.776192, 24.526031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.658287, 39.644051, 24.413465>,  <44.382065, 39.423813, 24.225857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658287, 39.644051, 24.413465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302564, 0.369098, -0.878761,
		-0.656954, 0.748743, 0.088294,
		0.690555, 0.550591, 0.469023,
		44.865452, 39.809227, 24.554173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373363, 40.130520, 23.936798>,  <44.382065, 39.423813, 24.225857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373363, 40.130520, 23.936798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.720650, 40.136105, 24.135193>,  <44.929024, 40.139458, 24.254230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.720650, 40.136105, 24.135193>,  <44.373363, 40.130520, 23.936798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720650, 40.136105, 24.135193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370113, 0.647545, -0.666110,
		-0.330477, 0.761899, 0.557041,
		0.868217, 0.013966, 0.495988,
		44.981113, 40.140293, 24.283989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680199, 40.759655, 23.652815>,  <44.373363, 40.130520, 23.936798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680199, 40.759655, 23.652815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.977314, 40.610401, 23.875179>,  <45.155582, 40.520847, 24.008598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.977314, 40.610401, 23.875179>,  <44.680199, 40.759655, 23.652815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977314, 40.610401, 23.875179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658572, 0.556781, -0.506238,
		-0.120623, 0.742133, 0.659309,
		0.742787, -0.373139, 0.555909,
		45.200150, 40.498459, 24.041952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921989, 41.311924, 24.089310>,  <44.680199, 40.759655, 23.652815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921989, 41.311924, 24.089310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.224606, 41.054611, 24.042271>,  <45.406174, 40.900223, 24.014048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.224606, 41.054611, 24.042271>,  <44.921989, 41.311924, 24.089310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.224606, 41.054611, 24.042271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580793, 0.743604, -0.331259,
		0.300540, 0.182311, 0.936183,
		0.756542, -0.643285, -0.117598,
		45.451569, 40.861626, 24.006990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.536629, 41.575844, 24.311983>,  <44.921989, 41.311924, 24.089310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.536629, 41.575844, 24.311983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.712029, 41.310734, 24.069183>,  <45.817268, 41.151669, 23.923504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.712029, 41.310734, 24.069183>,  <45.536629, 41.575844, 24.311983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.712029, 41.310734, 24.069183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732407, 0.654956, -0.186044,
		0.520862, -0.362990, 0.772619,
		0.438499, -0.662776, -0.606998,
		45.843578, 41.111900, 23.887083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328377, 41.634026, 24.397655>,  <45.536629, 41.575844, 24.311983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328377, 41.634026, 24.397655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.275314, 41.456093, 24.043362>,  <46.243477, 41.349335, 23.830786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.275314, 41.456093, 24.043362>,  <46.328377, 41.634026, 24.397655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.275314, 41.456093, 24.043362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731849, 0.558699, -0.390195,
		0.668430, -0.699987, 0.251435,
		-0.132655, -0.444830, -0.885736,
		46.235519, 41.322643, 23.777641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.040340, 41.419651, 24.102385>,  <46.328377, 41.634026, 24.397655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.040340, 41.419651, 24.102385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.795124, 41.431026, 23.786568>,  <46.647995, 41.437851, 23.597078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.795124, 41.431026, 23.786568>,  <47.040340, 41.419651, 24.102385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.795124, 41.431026, 23.786568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697338, 0.489208, -0.523827,
		0.371354, -0.871703, -0.319733,
		-0.613038, 0.028436, -0.789541,
		46.611214, 41.439556, 23.549706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.457775, 41.328075, 23.558920>,  <47.040340, 41.419651, 24.102385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.457775, 41.328075, 23.558920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.132908, 41.463615, 23.368944>,  <46.937988, 41.544937, 23.254959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.132908, 41.463615, 23.368944>,  <47.457775, 41.328075, 23.558920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.132908, 41.463615, 23.368944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583167, 0.495645, -0.643624,
		0.017311, -0.799699, -0.600151,
		-0.812168, 0.338846, -0.474938,
		46.889256, 41.565269, 23.226463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.692123, 41.327110, 22.940647>,  <47.457775, 41.328075, 23.558920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.692123, 41.327110, 22.940647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.397102, 41.596581, 22.921974>,  <47.220089, 41.758263, 22.910770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.397102, 41.596581, 22.921974>,  <47.692123, 41.327110, 22.940647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.397102, 41.596581, 22.921974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501667, 0.500329, -0.705692,
		-0.452051, -0.543903, -0.706979,
		-0.737550, 0.673677, -0.046684,
		47.175838, 41.798683, 22.907969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.642368, 41.566158, 22.194180>,  <47.692123, 41.327110, 22.940647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.642368, 41.566158, 22.194180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.435837, 41.853107, 22.381277>,  <47.311920, 42.025276, 22.493536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.435837, 41.853107, 22.381277>,  <47.642368, 41.566158, 22.194180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.435837, 41.853107, 22.381277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384823, 0.682280, -0.621615,
		-0.765062, -0.140956, -0.628340,
		-0.516324, 0.717374, 0.467744,
		47.280941, 42.068321, 22.521601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.263203, 41.806080, 21.638376>,  <47.642368, 41.566158, 22.194180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.263203, 41.806080, 21.638376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.341438, 42.057045, 21.939865>,  <47.388382, 42.207623, 22.120758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.341438, 42.057045, 21.939865>,  <47.263203, 41.806080, 21.638376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.341438, 42.057045, 21.939865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085778, 0.754678, -0.650464,
		-0.976927, 0.191879, 0.093792,
		0.195593, 0.627410, 0.753724,
		47.400116, 42.245270, 22.165983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.790207, 42.401749, 21.668951>,  <47.263203, 41.806080, 21.638376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.790207, 42.401749, 21.668951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.152557, 42.492199, 21.812201>,  <47.369968, 42.546471, 21.898149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.152557, 42.492199, 21.812201>,  <46.790207, 42.401749, 21.668951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.152557, 42.492199, 21.812201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060907, 0.767210, -0.638498,
		-0.419139, 0.600213, 0.681225,
		0.905877, 0.226128, 0.358124,
		47.424320, 42.560036, 21.919638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.074951, 42.353004, 21.468462>,  <46.790207, 42.401749, 21.668951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.074951, 42.353004, 21.468462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.706970, 42.501396, 21.417755>,  <45.486183, 42.590431, 21.387331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.706970, 42.501396, 21.417755>,  <46.074951, 42.353004, 21.468462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.706970, 42.501396, 21.417755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268291, -0.359969, 0.893556,
		0.285855, 0.856037, 0.430682,
		-0.919950, 0.370975, -0.126768,
		45.430984, 42.612690, 21.379725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.638371, 41.886745, 21.264917>,  <46.074951, 42.353004, 21.468462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.638371, 41.886745, 21.264917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.469727, 41.764343, 20.923483>,  <45.368542, 41.690903, 20.718622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.469727, 41.764343, 20.923483>,  <45.638371, 41.886745, 21.264917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469727, 41.764343, 20.923483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511778, -0.696781, 0.502573,
		-0.748551, 0.648736, 0.137162,
		-0.421609, -0.306005, -0.853585,
		45.343243, 41.672543, 20.667408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893307, 41.856464, 21.224464>,  <45.638371, 41.886745, 21.264917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893307, 41.856464, 21.224464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.985985, 41.594677, 20.936579>,  <45.041592, 41.437603, 20.763847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.985985, 41.594677, 20.936579>,  <44.893307, 41.856464, 21.224464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.985985, 41.594677, 20.936579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654722, -0.652108, 0.382223,
		-0.719484, 0.382654, -0.579585,
		0.231692, -0.654471, -0.719713,
		45.055492, 41.398335, 20.720665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231205, 41.568314, 21.004314>,  <44.893307, 41.856464, 21.224464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231205, 41.568314, 21.004314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.498398, 41.315353, 20.847414>,  <44.658714, 41.163578, 20.753273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.498398, 41.315353, 20.847414>,  <44.231205, 41.568314, 21.004314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498398, 41.315353, 20.847414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514946, -0.773325, 0.369863,
		-0.537240, -0.045075, -0.842224,
		0.667985, -0.632405, -0.392250,
		44.698792, 41.125633, 20.729738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847027, 41.063343, 20.730595>,  <44.231205, 41.568314, 21.004314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847027, 41.063343, 20.730595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.196167, 40.869717, 20.755289>,  <44.405651, 40.753540, 20.770105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.196167, 40.869717, 20.755289>,  <43.847027, 41.063343, 20.730595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196167, 40.869717, 20.755289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474875, -0.813452, 0.335840,
		-0.112347, -0.322456, -0.939894,
		0.872853, -0.484063, 0.061738,
		44.458023, 40.724499, 20.773811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764923, 40.505196, 20.329359>,  <43.847027, 41.063343, 20.730595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764923, 40.505196, 20.329359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.079720, 40.431767, 20.564966>,  <44.268597, 40.387707, 20.706331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.079720, 40.431767, 20.564966>,  <43.764923, 40.505196, 20.329359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079720, 40.431767, 20.564966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454153, -0.818577, 0.351676,
		0.417597, -0.544271, -0.727587,
		0.786993, -0.183577, 0.589017,
		44.315819, 40.376694, 20.741671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746471, 39.809429, 20.299250>,  <43.764923, 40.505196, 20.329359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746471, 39.809429, 20.299250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.961929, 39.908653, 20.621326>,  <44.091202, 39.968185, 20.814571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.961929, 39.908653, 20.621326>,  <43.746471, 39.809429, 20.299250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961929, 39.908653, 20.621326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398527, -0.766994, 0.502889,
		0.742321, -0.591767, -0.314279,
		0.538643, 0.248057, 0.805191,
		44.123524, 39.983070, 20.862885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075443, 39.157276, 20.625273>,  <43.746471, 39.809429, 20.299250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075443, 39.157276, 20.625273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.036724, 39.405979, 20.936155>,  <44.013493, 39.555199, 21.122684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.036724, 39.405979, 20.936155>,  <44.075443, 39.157276, 20.625273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036724, 39.405979, 20.936155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510541, -0.701334, 0.497472,
		0.854388, -0.348643, 0.385318,
		-0.096796, 0.621754, 0.777208,
		44.007687, 39.592506, 21.169317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130146, 38.657558, 21.265341>,  <44.075443, 39.157276, 20.625273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130146, 38.657558, 21.265341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.954037, 38.990192, 21.400772>,  <43.848373, 39.189774, 21.482031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.954037, 38.990192, 21.400772>,  <44.130146, 38.657558, 21.265341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954037, 38.990192, 21.400772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563145, -0.549454, 0.617226,
		0.699306, 0.081079, 0.710209,
		-0.440271, 0.831581, 0.338577,
		43.821957, 39.239666, 21.502346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323158, 38.664028, 21.970642>,  <44.130146, 38.657558, 21.265341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323158, 38.664028, 21.970642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.997177, 38.892002, 21.928637>,  <43.801590, 39.028786, 21.903433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.997177, 38.892002, 21.928637>,  <44.323158, 38.664028, 21.970642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997177, 38.892002, 21.928637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370565, -0.373155, 0.850551,
		0.445569, 0.732074, 0.515301,
		-0.814954, 0.569932, -0.105015,
		43.752689, 39.062981, 21.897133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.210239, 38.992287, 22.743771>,  <44.323158, 38.664028, 21.970642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.210239, 38.992287, 22.743771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.847546, 39.047840, 22.584503>,  <43.629929, 39.081173, 22.488943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.847546, 39.047840, 22.584503>,  <44.210239, 38.992287, 22.743771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.847546, 39.047840, 22.584503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420976, -0.353265, 0.835454,
		-0.024631, 0.925157, 0.378785,
		-0.906737, 0.138881, -0.398170,
		43.575523, 39.089504, 22.465052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840149, 39.303688, 23.264038>,  <44.210239, 38.992287, 22.743771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840149, 39.303688, 23.264038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.560104, 39.171440, 23.010887>,  <43.392078, 39.092091, 22.858997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.560104, 39.171440, 23.010887>,  <43.840149, 39.303688, 23.264038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560104, 39.171440, 23.010887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478161, -0.441167, 0.759430,
		-0.530289, 0.834302, 0.150775,
		-0.700111, -0.330622, -0.632877,
		43.350071, 39.072254, 22.821024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131615, 39.673569, 23.466476>,  <43.840149, 39.303688, 23.264038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131615, 39.673569, 23.466476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.063160, 39.329403, 23.274475>,  <43.022087, 39.122906, 23.159275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.063160, 39.329403, 23.274475>,  <43.131615, 39.673569, 23.466476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063160, 39.329403, 23.274475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373982, -0.393999, 0.839584,
		-0.911509, 0.323199, -0.254349,
		-0.171140, -0.860411, -0.480004,
		43.011818, 39.071281, 23.130474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606186, 39.290485, 23.861742>,  <43.131615, 39.673569, 23.466476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606186, 39.290485, 23.861742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.655731, 38.972412, 23.624308>,  <42.685459, 38.781570, 23.481846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.655731, 38.972412, 23.624308>,  <42.606186, 39.290485, 23.861742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655731, 38.972412, 23.624308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048246, -0.602313, 0.796800,
		-0.991125, -0.070058, -0.112970,
		0.123866, -0.795180, -0.593588,
		42.692890, 38.733860, 23.446232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029781, 39.572830, 23.747385>,  <42.606186, 39.290485, 23.861742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029781, 39.572830, 23.747385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.664780, 39.528156, 23.589975>,  <41.445778, 39.501354, 23.495529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.664780, 39.528156, 23.589975>,  <42.029781, 39.572830, 23.747385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664780, 39.528156, 23.589975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224324, 0.667844, -0.709692,
		0.342072, -0.735875, -0.584359,
		-0.912505, -0.111681, -0.393525,
		41.391029, 39.494652, 23.471918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071938, 39.447422, 23.050285>,  <42.029781, 39.572830, 23.747385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071938, 39.447422, 23.050285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.721100, 39.631989, 23.103649>,  <41.510597, 39.742729, 23.135668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.721100, 39.631989, 23.103649>,  <42.071938, 39.447422, 23.050285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721100, 39.631989, 23.103649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221823, 0.635484, -0.739564,
		-0.426027, -0.619075, -0.659733,
		-0.877095, 0.461418, 0.133408,
		41.457970, 39.770412, 23.143671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903713, 39.716087, 22.429825>,  <42.071938, 39.447422, 23.050285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903713, 39.716087, 22.429825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.628139, 39.891083, 22.660988>,  <41.462795, 39.996078, 22.799685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.628139, 39.891083, 22.660988>,  <41.903713, 39.716087, 22.429825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628139, 39.891083, 22.660988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051571, 0.765698, -0.641129,
		-0.722989, -0.471498, -0.504953,
		-0.688932, 0.437488, 0.577907,
		41.421459, 40.022327, 22.834360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266449, 39.935749, 21.989429>,  <41.903713, 39.716087, 22.429825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266449, 39.935749, 21.989429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.287529, 40.175179, 22.309164>,  <41.300175, 40.318836, 22.501005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.287529, 40.175179, 22.309164>,  <41.266449, 39.935749, 21.989429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287529, 40.175179, 22.309164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133246, 0.789075, -0.599672,
		-0.989681, 0.138110, -0.038175,
		0.052698, 0.598570, 0.799335,
		41.303337, 40.354752, 22.548965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685303, 40.540966, 21.916039>,  <41.266449, 39.935749, 21.989429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685303, 40.540966, 21.916039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.958771, 40.675022, 22.175354>,  <41.122852, 40.755455, 22.330944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.958771, 40.675022, 22.175354>,  <40.685303, 40.540966, 21.916039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958771, 40.675022, 22.175354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059412, 0.859812, -0.507142,
		-0.727370, 0.385233, 0.567916,
		0.683669, 0.335138, 0.648289,
		41.163872, 40.775562, 22.369841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538284, 41.245182, 22.004984>,  <40.685303, 40.540966, 21.916039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538284, 41.245182, 22.004984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.904095, 41.208347, 22.162548>,  <41.123581, 41.186249, 22.257086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.904095, 41.208347, 22.162548>,  <40.538284, 41.245182, 22.004984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904095, 41.208347, 22.162548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233665, 0.915121, -0.328565,
		-0.330219, 0.392523, 0.858418,
		0.914525, -0.092084, 0.393909,
		41.178452, 41.180721, 22.280722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802589, 41.939430, 22.140089>,  <40.538284, 41.245182, 22.004984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802589, 41.939430, 22.140089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.133377, 41.715340, 22.121006>,  <41.331848, 41.580887, 22.109556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.133377, 41.715340, 22.121006>,  <40.802589, 41.939430, 22.140089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133377, 41.715340, 22.121006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412648, 0.662368, -0.625292,
		0.381904, 0.497408, 0.778931,
		0.826965, -0.560226, -0.047707,
		41.381466, 41.547272, 22.106693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706364, 42.310905, 22.791285>,  <40.802589, 41.939430, 22.140089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706364, 42.310905, 22.791285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.528900, 42.664093, 22.852648>,  <40.422421, 42.876003, 22.889465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.528900, 42.664093, 22.852648>,  <40.706364, 42.310905, 22.791285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528900, 42.664093, 22.852648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593217, -0.417646, 0.688233,
		0.671757, 0.214340, 0.709085,
		-0.443662, 0.882966, 0.153407,
		40.395802, 42.928982, 22.898670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671726, 42.344650, 23.580431>,  <40.706364, 42.310905, 22.791285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671726, 42.344650, 23.580431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.406555, 42.615044, 23.451698>,  <40.247452, 42.777279, 23.374458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.406555, 42.615044, 23.451698>,  <40.671726, 42.344650, 23.580431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406555, 42.615044, 23.451698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618459, -0.252181, 0.744254,
		0.421941, 0.692427, 0.585244,
		-0.662929, 0.675980, -0.321832,
		40.207676, 42.817837, 23.355148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344677, 42.648293, 24.140265>,  <40.671726, 42.344650, 23.580431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344677, 42.648293, 24.140265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.056767, 42.733292, 23.875912>,  <39.884018, 42.784290, 23.717300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.056767, 42.733292, 23.875912>,  <40.344677, 42.648293, 24.140265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056767, 42.733292, 23.875912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694133, -0.206672, 0.689541,
		0.009939, 0.955056, 0.296259,
		-0.719779, 0.212496, -0.660881,
		39.840832, 42.797039, 23.677647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867626, 43.051800, 24.521446>,  <40.344677, 42.648293, 24.140265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867626, 43.051800, 24.521446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.672455, 42.918373, 24.198792>,  <39.555351, 42.838318, 24.005199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.672455, 42.918373, 24.198792>,  <39.867626, 43.051800, 24.521446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672455, 42.918373, 24.198792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667087, -0.453493, 0.591049,
		-0.562960, 0.826483, -0.001250,
		-0.487925, -0.333571, -0.806635,
		39.526077, 42.818302, 23.956800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175335, 43.076916, 24.669750>,  <39.867626, 43.051800, 24.521446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175335, 43.076916, 24.669750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.171833, 42.834187, 24.351835>,  <39.169731, 42.688549, 24.161087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.171833, 42.834187, 24.351835>,  <39.175335, 43.076916, 24.669750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171833, 42.834187, 24.351835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711489, -0.554713, 0.431366,
		-0.702642, 0.569261, -0.426891,
		-0.008758, -0.606824, -0.794787,
		39.169205, 42.652138, 24.113400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491074, 43.019398, 24.485435>,  <39.175335, 43.076916, 24.669750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491074, 43.019398, 24.485435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.703033, 42.700771, 24.369036>,  <38.830208, 42.509594, 24.299196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.703033, 42.700771, 24.369036>,  <38.491074, 43.019398, 24.485435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703033, 42.700771, 24.369036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589940, -0.592744, 0.548294,
		-0.609245, -0.118866, -0.784023,
		0.529898, -0.796571, -0.291002,
		38.862003, 42.461800, 24.281736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007915, 42.453377, 24.100100>,  <38.491074, 43.019398, 24.485435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007915, 42.453377, 24.100100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.342663, 42.287521, 24.243055>,  <38.543510, 42.188007, 24.328829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.342663, 42.287521, 24.243055>,  <38.007915, 42.453377, 24.100100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342663, 42.287521, 24.243055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547077, -0.656089, 0.519859,
		0.018925, -0.630573, -0.775899,
		0.836869, -0.414638, 0.357388,
		38.593723, 42.163132, 24.350271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.142448, 45.124027, 23.627192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.390526, 44.835934, 23.502853>,  <45.539371, 44.663078, 23.428251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.390526, 44.835934, 23.502853>,  <45.142448, 45.124027, 23.627192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390526, 44.835934, 23.502853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148719, -0.497024, 0.854898,
		-0.770224, -0.483973, -0.415363,
		0.620192, -0.720234, -0.310844,
		45.576584, 44.619862, 23.409599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718311, 44.487457, 23.437094>,  <45.142448, 45.124027, 23.627192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718311, 44.487457, 23.437094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.089813, 44.374413, 23.533045>,  <45.312714, 44.306583, 23.590614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.089813, 44.374413, 23.533045>,  <44.718311, 44.487457, 23.437094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089813, 44.374413, 23.533045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361515, -0.547465, 0.754712,
		-0.081970, -0.787662, -0.610631,
		0.928756, -0.282615, 0.239876,
		45.368439, 44.289627, 23.605007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621361, 43.786636, 23.758303>,  <44.718311, 44.487457, 23.437094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621361, 43.786636, 23.758303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.990704, 43.882271, 23.878473>,  <45.212307, 43.939651, 23.950577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.990704, 43.882271, 23.878473>,  <44.621361, 43.786636, 23.758303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.990704, 43.882271, 23.878473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172952, -0.439587, 0.881391,
		0.342789, -0.865796, -0.364545,
		0.923354, 0.239082, 0.300427,
		45.267712, 43.953995, 23.968601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.862740, 43.186302, 23.942097>,  <44.621361, 43.786636, 23.758303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.862740, 43.186302, 23.942097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.077053, 43.467270, 24.129515>,  <45.205643, 43.635853, 24.241966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.077053, 43.467270, 24.129515>,  <44.862740, 43.186302, 23.942097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077053, 43.467270, 24.129515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191810, -0.439154, 0.877697,
		0.822279, -0.560129, -0.100561,
		0.535785, 0.702424, 0.468546,
		45.237789, 43.677998, 24.270079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320026, 42.756996, 24.315958>,  <44.862740, 43.186302, 23.942097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320026, 42.756996, 24.315958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.293453, 43.121304, 24.478977>,  <45.277508, 43.339886, 24.576788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.293453, 43.121304, 24.478977>,  <45.320026, 42.756996, 24.315958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293453, 43.121304, 24.478977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042552, -0.410665, 0.910793,
		0.996883, 0.043167, 0.066037,
		-0.066435, 0.910764, 0.407548,
		45.273521, 43.394531, 24.601242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.606319, 42.647091, 24.986576>,  <45.320026, 42.756996, 24.315958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.606319, 42.647091, 24.986576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.423973, 43.001137, 25.024012>,  <45.314564, 43.213566, 25.046473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.423973, 43.001137, 25.024012>,  <45.606319, 42.647091, 24.986576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423973, 43.001137, 25.024012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075845, -0.143398, 0.986755,
		0.886811, 0.442730, 0.132502,
		-0.455866, 0.885115, 0.093588,
		45.287212, 43.266670, 25.052088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976433, 42.891239, 25.536188>,  <45.606319, 42.647091, 24.986576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976433, 42.891239, 25.536188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.619171, 43.071060, 25.530787>,  <45.404816, 43.178951, 25.527546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.619171, 43.071060, 25.530787>,  <45.976433, 42.891239, 25.536188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.619171, 43.071060, 25.530787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067961, -0.105218, 0.992124,
		0.444591, 0.887035, 0.124528,
		-0.893152, 0.449552, -0.013505,
		45.351227, 43.205925, 25.526735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.975784, 43.447823, 26.100645>,  <45.976433, 42.891239, 25.536188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.975784, 43.447823, 26.100645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.585758, 43.398819, 26.026638>,  <45.351742, 43.369415, 25.982233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.585758, 43.398819, 26.026638>,  <45.975784, 43.447823, 26.100645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585758, 43.398819, 26.026638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196208, 0.086553, 0.976735,
		-0.103648, 0.988686, -0.108433,
		-0.975069, -0.122512, -0.185018,
		45.293236, 43.362064, 25.971132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620789, 43.995361, 26.478157>,  <45.975784, 43.447823, 26.100645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620789, 43.995361, 26.478157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.356449, 43.704746, 26.402872>,  <45.197845, 43.530380, 26.357702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.356449, 43.704746, 26.402872>,  <45.620789, 43.995361, 26.478157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356449, 43.704746, 26.402872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202828, -0.068555, 0.976812,
		-0.722589, 0.683703, -0.102056,
		-0.660853, -0.726533, -0.188211,
		45.158192, 43.486786, 26.346409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.129417, 43.989231, 27.073151>,  <45.620789, 43.995361, 26.478157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.129417, 43.989231, 27.073151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.989578, 43.659508, 26.895027>,  <44.905674, 43.461674, 26.788153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.989578, 43.659508, 26.895027>,  <45.129417, 43.989231, 27.073151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989578, 43.659508, 26.895027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576726, -0.185237, 0.795660,
		-0.738356, 0.534981, -0.410641,
		-0.349597, -0.824307, -0.445308,
		44.884701, 43.412216, 26.761435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426083, 44.111984, 27.165995>,  <45.129417, 43.989231, 27.073151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426083, 44.111984, 27.165995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.488850, 43.722050, 27.102667>,  <44.526512, 43.488087, 27.064671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.488850, 43.722050, 27.102667>,  <44.426083, 44.111984, 27.165995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488850, 43.722050, 27.102667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390416, -0.208479, 0.896723,
		-0.907167, -0.078904, -0.413307,
		0.156921, -0.974839, -0.158319,
		44.535927, 43.429600, 27.055172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767658, 43.699707, 27.091398>,  <44.426083, 44.111984, 27.165995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767658, 43.699707, 27.091398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.057869, 43.466892, 27.238279>,  <44.231995, 43.327202, 27.326408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.057869, 43.466892, 27.238279>,  <43.767658, 43.699707, 27.091398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057869, 43.466892, 27.238279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511562, -0.099216, 0.853499,
		-0.460338, -0.807085, -0.369734,
		0.725530, -0.582040, 0.367201,
		44.275528, 43.292282, 27.348440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028996, 43.783443, 26.941389>,  <43.767658, 43.699707, 27.091398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028996, 43.783443, 26.941389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.759411, 44.069546, 26.867445>,  <42.597660, 44.241207, 26.823078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.759411, 44.069546, 26.867445>,  <43.028996, 43.783443, 26.941389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759411, 44.069546, 26.867445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521409, 0.283277, -0.804914,
		-0.523357, -0.638872, -0.563862,
		-0.673966, 0.715260, -0.184859,
		42.557220, 44.284122, 26.811987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837059, 43.828819, 26.213999>,  <43.028996, 43.783443, 26.941389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837059, 43.828819, 26.213999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.772373, 44.196999, 26.356333>,  <42.733562, 44.417908, 26.441732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.772373, 44.196999, 26.356333>,  <42.837059, 43.828819, 26.213999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772373, 44.196999, 26.356333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512866, 0.386449, -0.766567,
		-0.843099, 0.058530, -0.534563,
		-0.161714, 0.920452, 0.355833,
		42.723858, 44.473133, 26.463083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585770, 44.201134, 25.585592>,  <42.837059, 43.828819, 26.213999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585770, 44.201134, 25.585592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.683113, 44.485786, 25.849213>,  <42.741520, 44.656578, 26.007385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.683113, 44.485786, 25.849213>,  <42.585770, 44.201134, 25.585592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683113, 44.485786, 25.849213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273025, 0.601746, -0.750573,
		-0.930717, 0.362596, -0.047855,
		0.243358, 0.711636, 0.659053,
		42.756119, 44.699276, 26.046928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258484, 44.797302, 25.321348>,  <42.585770, 44.201134, 25.585592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258484, 44.797302, 25.321348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.539482, 44.937508, 25.569105>,  <42.708080, 45.021629, 25.717760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.539482, 44.937508, 25.569105>,  <42.258484, 44.797302, 25.321348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539482, 44.937508, 25.569105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333072, 0.607202, -0.721366,
		-0.628943, 0.713056, 0.309809,
		0.702492, 0.350509, 0.619394,
		42.750229, 45.042660, 25.754923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227390, 45.595036, 25.337986>,  <42.258484, 44.797302, 25.321348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227390, 45.595036, 25.337986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.582611, 45.477142, 25.479124>,  <42.795742, 45.406406, 25.563807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.582611, 45.477142, 25.479124>,  <42.227390, 45.595036, 25.337986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582611, 45.477142, 25.479124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459019, 0.611593, -0.644403,
		-0.025872, 0.734225, 0.678413,
		0.888050, -0.294732, 0.352847,
		42.849026, 45.388721, 25.584978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619961, 46.216633, 25.324390>,  <42.227390, 45.595036, 25.337986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619961, 46.216633, 25.324390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.884369, 45.917469, 25.348698>,  <43.043015, 45.737972, 25.363283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.884369, 45.917469, 25.348698>,  <42.619961, 46.216633, 25.324390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884369, 45.917469, 25.348698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525695, 0.403784, -0.748735,
		0.535446, 0.526872, 0.660079,
		0.661016, -0.747907, 0.060769,
		43.082672, 45.693096, 25.366928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213383, 46.570621, 25.165089>,  <42.619961, 46.216633, 25.324390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213383, 46.570621, 25.165089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.274712, 46.181416, 25.096121>,  <43.311508, 45.947891, 25.054739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.274712, 46.181416, 25.096121>,  <43.213383, 46.570621, 25.165089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274712, 46.181416, 25.096121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552588, 0.229077, -0.801356,
		0.819230, 0.027589, 0.572800,
		0.153324, -0.973017, -0.172421,
		43.320709, 45.889511, 25.044394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824856, 46.641396, 24.805153>,  <43.213383, 46.570621, 25.165089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824856, 46.641396, 24.805153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.677795, 46.274521, 24.743692>,  <43.589558, 46.054398, 24.706816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.677795, 46.274521, 24.743692>,  <43.824856, 46.641396, 24.805153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677795, 46.274521, 24.743692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186860, 0.088993, -0.978347,
		0.910998, -0.388401, 0.138667,
		-0.367650, -0.917183, -0.153649,
		43.567501, 45.999367, 24.697598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390850, 46.291954, 24.456528>,  <43.824856, 46.641396, 24.805153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390850, 46.291954, 24.456528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.031612, 46.137527, 24.372263>,  <43.816071, 46.044872, 24.321703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.031612, 46.137527, 24.372263>,  <44.390850, 46.291954, 24.456528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031612, 46.137527, 24.372263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193285, 0.083787, -0.977559,
		0.395055, -0.918657, -0.000627,
		-0.898094, -0.386068, -0.210663,
		43.762184, 46.021706, 24.309065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526077, 45.808395, 23.936739>,  <44.390850, 46.291954, 24.456528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526077, 45.808395, 23.936739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.133366, 45.880028, 23.911295>,  <43.897739, 45.923008, 23.896029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.133366, 45.880028, 23.911295>,  <44.526077, 45.808395, 23.936739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133366, 45.880028, 23.911295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062718, -0.010641, -0.997975,
		-0.179400, -0.983776, -0.000785,
		-0.981775, 0.179086, -0.063610,
		43.838833, 45.933754, 23.892212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344662, 45.363670, 23.485662>,  <44.526077, 45.808395, 23.936739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344662, 45.363670, 23.485662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.048527, 45.631657, 23.463572>,  <43.870846, 45.792450, 23.450317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.048527, 45.631657, 23.463572>,  <44.344662, 45.363670, 23.485662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048527, 45.631657, 23.463572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072279, -0.002346, -0.997382,
		-0.668341, -0.742389, -0.046688,
		-0.740335, 0.669966, -0.055227,
		43.826427, 45.832645, 23.447004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948868, 45.100681, 22.981873>,  <44.344662, 45.363670, 23.485662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948868, 45.100681, 22.981873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.863129, 45.490196, 23.012310>,  <43.811684, 45.723904, 23.030573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.863129, 45.490196, 23.012310>,  <43.948868, 45.100681, 22.981873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863129, 45.490196, 23.012310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029758, 0.084379, -0.995989,
		-0.976303, -0.211228, -0.047065,
		-0.214352, 0.973788, 0.076094,
		43.798824, 45.782333, 23.035137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501324, 45.290325, 22.487610>,  <43.948868, 45.100681, 22.981873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501324, 45.290325, 22.487610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.636562, 45.656242, 22.576012>,  <43.717705, 45.875793, 22.629053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.636562, 45.656242, 22.576012>,  <43.501324, 45.290325, 22.487610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.636562, 45.656242, 22.576012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128001, 0.187952, -0.973802,
		-0.932367, 0.357524, -0.053550,
		0.338092, 0.914795, 0.221004,
		43.737991, 45.930679, 22.642313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851475, 45.583111, 22.273891>,  <43.501324, 45.290325, 22.487610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851475, 45.583111, 22.273891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.580681, 45.536259, 21.983244>,  <42.418205, 45.508148, 21.808855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.580681, 45.536259, 21.983244>,  <42.851475, 45.583111, 22.273891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580681, 45.536259, 21.983244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488157, -0.667395, 0.562393,
		-0.550815, 0.735435, 0.394638,
		-0.676983, -0.117129, -0.726618,
		42.377586, 45.501122, 21.765259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071190, 45.593636, 22.551128>,  <42.851475, 45.583111, 22.273891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071190, 45.593636, 22.551128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.009365, 45.404289, 22.204248>,  <41.972271, 45.290684, 21.996120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.009365, 45.404289, 22.204248>,  <42.071190, 45.593636, 22.551128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009365, 45.404289, 22.204248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607414, -0.646736, 0.461282,
		-0.779204, 0.598048, -0.187564,
		-0.154564, -0.473361, -0.867202,
		41.962997, 45.262280, 21.944088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330105, 45.676411, 22.257620>,  <42.071190, 45.593636, 22.551128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330105, 45.676411, 22.257620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.470638, 45.336243, 22.100979>,  <41.554958, 45.132141, 22.006994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.470638, 45.336243, 22.100979>,  <41.330105, 45.676411, 22.257620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470638, 45.336243, 22.100979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816371, -0.483042, 0.316557,
		-0.458365, 0.208474, -0.863968,
		0.351339, -0.850417, -0.391602,
		41.576038, 45.081120, 21.983498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847660, 45.249157, 22.336643>,  <41.330105, 45.676411, 22.257620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847660, 45.249157, 22.336643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.098137, 44.971985, 22.193684>,  <41.248425, 44.805683, 22.107908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.098137, 44.971985, 22.193684>,  <40.847660, 45.249157, 22.336643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098137, 44.971985, 22.193684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651109, -0.716916, 0.249175,
		-0.428886, 0.076674, -0.900099,
		0.626191, -0.692930, -0.357398,
		41.285995, 44.764107, 22.086464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411560, 44.728680, 21.961533>,  <40.847660, 45.249157, 22.336643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411560, 44.728680, 21.961533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.752636, 44.539566, 22.050442>,  <40.957279, 44.426098, 22.103786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.752636, 44.539566, 22.050442>,  <40.411560, 44.728680, 21.961533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752636, 44.539566, 22.050442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522186, -0.784145, 0.335318,
		0.015763, -0.401989, -0.915509,
		0.852686, -0.472781, 0.222274,
		41.008442, 44.397732, 22.117125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302280, 44.023750, 21.722628>,  <40.411560, 44.728680, 21.961533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302280, 44.023750, 21.722628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.595348, 44.012211, 21.994616>,  <40.771191, 44.005287, 22.157808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.595348, 44.012211, 21.994616>,  <40.302280, 44.023750, 21.722628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595348, 44.012211, 21.994616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386658, -0.839842, 0.380999,
		0.560076, -0.542064, -0.626484,
		0.732673, -0.028846, 0.679969,
		40.815151, 44.003555, 22.198606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499660, 43.346996, 21.664764>,  <40.302280, 44.023750, 21.722628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499660, 43.346996, 21.664764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.627499, 43.501263, 22.010971>,  <40.704201, 43.593822, 22.218695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.627499, 43.501263, 22.010971>,  <40.499660, 43.346996, 21.664764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627499, 43.501263, 22.010971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475304, -0.724945, 0.498540,
		0.819722, -0.570714, -0.048380,
		0.319597, 0.385669, 0.865516,
		40.723377, 43.616962, 22.270626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687160, 42.717442, 22.101456>,  <40.499660, 43.346996, 21.664764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687160, 42.717442, 22.101456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.629555, 43.012009, 22.365864>,  <40.594990, 43.188747, 22.524509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.629555, 43.012009, 22.365864>,  <40.687160, 42.717442, 22.101456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629555, 43.012009, 22.365864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420052, -0.650309, 0.632972,
		0.896000, -0.186507, 0.402987,
		-0.144013, 0.736419, 0.661020,
		40.586349, 43.232933, 22.564169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393990, 42.427235, 22.209332>,  <40.687160, 42.717442, 22.101456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393990, 42.427235, 22.209332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.580677, 42.116619, 22.040020>,  <41.692692, 41.930252, 21.938433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.580677, 42.116619, 22.040020>,  <41.393990, 42.427235, 22.209332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580677, 42.116619, 22.040020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676479, 0.621745, -0.394726,
		0.569689, -0.102110, 0.815493,
		0.466723, -0.776535, -0.423277,
		41.720695, 41.883659, 21.913036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225517, 42.577385, 22.268316>,  <41.393990, 42.427235, 22.209332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225517, 42.577385, 22.268316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.180603, 42.309265, 21.974899>,  <42.153656, 42.148392, 21.798849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.180603, 42.309265, 21.974899>,  <42.225517, 42.577385, 22.268316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180603, 42.309265, 21.974899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707923, 0.464076, -0.532428,
		0.697308, -0.579074, 0.422416,
		-0.112282, -0.670304, -0.733543,
		42.146919, 42.108173, 21.754837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820786, 42.345837, 22.091352>,  <42.225517, 42.577385, 22.268316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820786, 42.345837, 22.091352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.616302, 42.229019, 21.768024>,  <42.493614, 42.158928, 21.574028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.616302, 42.229019, 21.768024>,  <42.820786, 42.345837, 22.091352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616302, 42.229019, 21.768024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683596, 0.431885, -0.588364,
		0.520930, -0.853338, -0.021140,
		-0.511203, -0.292045, -0.808320,
		42.462940, 42.141407, 21.525528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330658, 42.213848, 21.617350>,  <42.820786, 42.345837, 22.091352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330658, 42.213848, 21.617350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.009396, 42.244610, 21.381035>,  <42.816639, 42.263065, 21.239246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.009396, 42.244610, 21.381035>,  <43.330658, 42.213848, 21.617350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009396, 42.244610, 21.381035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566462, 0.405756, -0.717274,
		0.184556, -0.910740, -0.369447,
		-0.803156, 0.076900, -0.590785,
		42.768448, 42.267681, 21.203800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621582, 42.014240, 21.002224>,  <43.330658, 42.213848, 21.617350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621582, 42.014240, 21.002224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.284340, 42.202965, 20.899017>,  <43.081993, 42.316200, 20.837093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.284340, 42.202965, 20.899017>,  <43.621582, 42.014240, 21.002224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284340, 42.202965, 20.899017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377245, 0.176995, -0.909043,
		-0.383225, -0.863754, -0.327213,
		-0.843104, 0.471808, -0.258018,
		43.031410, 42.344505, 20.821611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576172, 41.802021, 20.336002>,  <43.621582, 42.014240, 21.002224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576172, 41.802021, 20.336002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.368191, 42.134647, 20.414129>,  <43.243401, 42.334225, 20.461006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.368191, 42.134647, 20.414129>,  <43.576172, 41.802021, 20.336002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368191, 42.134647, 20.414129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424161, 0.449822, -0.785969,
		-0.741443, -0.325819, -0.586603,
		-0.519951, 0.831566, 0.195318,
		43.212204, 42.384117, 20.472725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476768, 42.159580, 19.651888>,  <43.576172, 41.802021, 20.336002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476768, 42.159580, 19.651888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.407097, 42.435966, 19.932522>,  <43.365292, 42.601799, 20.100903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.407097, 42.435966, 19.932522>,  <43.476768, 42.159580, 19.651888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407097, 42.435966, 19.932522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452409, 0.688984, -0.566239,
		-0.874635, 0.218774, -0.432611,
		-0.174184, 0.690969, 0.701585,
		43.354843, 42.643257, 20.142998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034466, 42.708336, 19.310074>,  <43.476768, 42.159580, 19.651888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034466, 42.708336, 19.310074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.208755, 42.874180, 19.629635>,  <43.313328, 42.973686, 19.821371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.208755, 42.874180, 19.629635>,  <43.034466, 42.708336, 19.310074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208755, 42.874180, 19.629635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356869, 0.735266, -0.576219,
		-0.826312, 0.536175, 0.172409,
		0.435721, 0.414609, 0.798903,
		43.339470, 42.998562, 19.869307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763672, 43.345970, 19.364395>,  <43.034466, 42.708336, 19.310074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763672, 43.345970, 19.364395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.116478, 43.334282, 19.552519>,  <43.328163, 43.327271, 19.665394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.116478, 43.334282, 19.552519>,  <42.763672, 43.345970, 19.364395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116478, 43.334282, 19.552519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325215, 0.760010, -0.562691,
		-0.340999, 0.649255, 0.679844,
		0.882018, -0.029218, 0.470309,
		43.381084, 43.325516, 19.693611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.908825, 34.687134, 30.510899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938164, 35.052898, 30.670135>,  <36.955769, 35.272358, 30.765678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938164, 35.052898, 30.670135>,  <36.908825, 34.687134, 30.510899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938164, 35.052898, 30.670135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671247, -0.340484, 0.658406,
		0.737596, 0.218926, -0.638768,
		0.073348, 0.914408, 0.398093,
		36.960167, 35.327221, 30.789564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249603, 35.082729, 30.574680>,  <36.908825, 34.687134, 30.510899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249603, 35.082729, 30.574680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.501270, 35.031578, 30.881351>,  <36.652271, 35.000889, 31.065353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.501270, 35.031578, 30.881351>,  <36.249603, 35.082729, 30.574680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501270, 35.031578, 30.881351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741608, 0.394104, -0.542863,
		-0.232730, 0.910126, 0.342793,
		0.629170, -0.127878, 0.766677,
		36.690022, 34.993214, 31.111355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549145, 35.726807, 30.933136>,  <36.249603, 35.082729, 30.574680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549145, 35.726807, 30.933136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.798012, 35.413925, 30.920055>,  <36.947330, 35.226196, 30.912207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.798012, 35.413925, 30.920055>,  <36.549145, 35.726807, 30.933136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798012, 35.413925, 30.920055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608805, 0.509661, -0.607949,
		0.492206, 0.358337, 0.793302,
		0.622166, -0.782202, -0.032701,
		36.984661, 35.179264, 30.910246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177456, 35.949043, 31.116127>,  <36.549145, 35.726807, 30.933136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177456, 35.949043, 31.116127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.246185, 35.621368, 30.897257>,  <37.287422, 35.424763, 30.765934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.246185, 35.621368, 30.897257>,  <37.177456, 35.949043, 31.116127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246185, 35.621368, 30.897257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462841, 0.557446, -0.689226,
		0.869629, -0.134830, 0.474938,
		0.171824, -0.819191, -0.547177,
		37.297733, 35.375610, 30.733105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922413, 35.997456, 30.835037>,  <37.177456, 35.949043, 31.116127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922413, 35.997456, 30.835037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.762810, 35.718895, 30.596437>,  <37.667046, 35.551758, 30.453278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.762810, 35.718895, 30.596437>,  <37.922413, 35.997456, 30.835037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762810, 35.718895, 30.596437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453722, 0.415359, -0.788425,
		0.796823, -0.585236, 0.150240,
		-0.399011, -0.696402, -0.596502,
		37.643105, 35.509975, 30.417486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465542, 35.722229, 30.364458>,  <37.922413, 35.997456, 30.835037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465542, 35.722229, 30.364458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.117825, 35.626675, 30.191364>,  <37.909195, 35.569344, 30.087507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.117825, 35.626675, 30.191364>,  <38.465542, 35.722229, 30.364458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117825, 35.626675, 30.191364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398653, 0.178765, -0.899510,
		0.292242, -0.954450, -0.060165,
		-0.869293, -0.238890, -0.432737,
		37.857037, 35.555008, 30.061543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638512, 35.381607, 29.758339>,  <38.465542, 35.722229, 30.364458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638512, 35.381607, 29.758339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266525, 35.516930, 29.700775>,  <38.043335, 35.598122, 29.666237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266525, 35.516930, 29.700775>,  <38.638512, 35.381607, 29.758339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266525, 35.516930, 29.700775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219197, 0.195968, -0.955798,
		-0.295152, -0.920405, -0.256399,
		-0.929966, 0.338307, -0.143910,
		37.987534, 35.618423, 29.657602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450050, 35.221867, 29.069544>,  <38.638512, 35.381607, 29.758339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450050, 35.221867, 29.069544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.183201, 35.511330, 29.140270>,  <38.023090, 35.685009, 29.182707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.183201, 35.511330, 29.140270>,  <38.450050, 35.221867, 29.069544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183201, 35.511330, 29.140270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222096, 0.419772, -0.880037,
		-0.711069, -0.547824, -0.440762,
		-0.667124, 0.723658, 0.176817,
		37.983063, 35.728428, 29.193316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015972, 35.160671, 28.513878>,  <38.450050, 35.221867, 29.069544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015972, 35.160671, 28.513878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004486, 35.533001, 28.659616>,  <37.997597, 35.756397, 28.747061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004486, 35.533001, 28.659616>,  <38.015972, 35.160671, 28.513878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004486, 35.533001, 28.659616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183708, 0.363203, -0.913419,
		-0.982562, 0.040706, -0.181428,
		-0.028714, 0.930820, 0.364347,
		37.995872, 35.812248, 28.768921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667534, 35.699097, 27.942064>,  <38.015972, 35.160671, 28.513878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667534, 35.699097, 27.942064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800800, 35.959515, 28.214867>,  <37.880760, 36.115765, 28.378548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800800, 35.959515, 28.214867>,  <37.667534, 35.699097, 27.942064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800800, 35.959515, 28.214867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079661, 0.701311, -0.708390,
		-0.939496, 0.290342, 0.181792,
		0.333168, 0.651048, 0.682008,
		37.900749, 36.154831, 28.419470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338348, 36.306778, 27.756369>,  <37.667534, 35.699097, 27.942064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338348, 36.306778, 27.756369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.649212, 36.420918, 27.980724>,  <37.835732, 36.489399, 28.115337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.649212, 36.420918, 27.980724>,  <37.338348, 36.306778, 27.756369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649212, 36.420918, 27.980724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214926, 0.717347, -0.662737,
		-0.591461, 0.635604, 0.496167,
		0.777162, 0.285344, 0.560890,
		37.882362, 36.506519, 28.148991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271755, 37.003666, 27.940149>,  <37.338348, 36.306778, 27.756369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271755, 37.003666, 27.940149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.663219, 36.921505, 27.942772>,  <37.898098, 36.872208, 27.944345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.663219, 36.921505, 27.942772>,  <37.271755, 37.003666, 27.940149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663219, 36.921505, 27.942772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140745, 0.646659, -0.749682,
		0.149744, 0.734604, 0.661766,
		0.978656, -0.205401, 0.006559,
		37.956818, 36.859886, 27.944740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298286, 37.556828, 28.417471>,  <37.271755, 37.003666, 27.940149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298286, 37.556828, 28.417471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.959793, 37.761856, 28.475662>,  <36.756699, 37.884872, 28.510578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.959793, 37.761856, 28.475662>,  <37.298286, 37.556828, 28.417471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959793, 37.761856, 28.475662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126310, -0.458243, 0.879806,
		0.517627, 0.726145, 0.452522,
		-0.846232, 0.512570, 0.145480,
		36.705925, 37.915627, 28.519306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366905, 37.812939, 29.052988>,  <37.298286, 37.556828, 28.417471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366905, 37.812939, 29.052988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970798, 37.820488, 28.997820>,  <36.733135, 37.825016, 28.964720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970798, 37.820488, 28.997820>,  <37.366905, 37.812939, 29.052988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970798, 37.820488, 28.997820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139205, -0.132581, 0.981348,
		0.000233, 0.990993, 0.133917,
		-0.990264, 0.018871, -0.137920,
		36.673721, 37.826149, 28.956444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183117, 38.110607, 29.730774>,  <37.366905, 37.812939, 29.052988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183117, 38.110607, 29.730774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.868603, 37.946167, 29.546272>,  <36.679893, 37.847504, 29.435572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.868603, 37.946167, 29.546272>,  <37.183117, 38.110607, 29.730774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868603, 37.946167, 29.546272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388794, -0.251002, 0.886474,
		-0.480210, 0.876351, 0.037523,
		-0.786281, -0.411105, -0.461254,
		36.632717, 37.822834, 29.407896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593075, 38.263519, 30.089161>,  <37.183117, 38.110607, 29.730774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593075, 38.263519, 30.089161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433243, 37.966843, 29.873669>,  <36.337341, 37.788837, 29.744373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433243, 37.966843, 29.873669>,  <36.593075, 38.263519, 30.089161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433243, 37.966843, 29.873669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450416, -0.353004, 0.820069,
		-0.798410, 0.570339, -0.193014,
		-0.399582, -0.741688, -0.538732,
		36.313370, 37.744335, 29.712049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899799, 38.358116, 30.311552>,  <36.593075, 38.263519, 30.089161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899799, 38.358116, 30.311552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975113, 37.985832, 30.186123>,  <36.020302, 37.762463, 30.110867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975113, 37.985832, 30.186123>,  <35.899799, 38.358116, 30.311552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975113, 37.985832, 30.186123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482155, -0.365753, 0.796085,
		-0.855615, 0.001301, -0.517611,
		0.188282, -0.930711, -0.313571,
		36.031597, 37.706619, 30.092052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326500, 38.052998, 30.571074>,  <35.899799, 38.358116, 30.311552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326500, 38.052998, 30.571074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.604015, 37.773331, 30.501999>,  <35.770523, 37.605530, 30.460554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.604015, 37.773331, 30.501999>,  <35.326500, 38.052998, 30.571074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604015, 37.773331, 30.501999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168196, -0.390458, 0.905126,
		-0.700264, -0.598919, -0.388492,
		0.693787, -0.699169, -0.172688,
		35.812153, 37.563580, 30.450193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952801, 37.414589, 30.694574>,  <35.326500, 38.052998, 30.571074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952801, 37.414589, 30.694574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345085, 37.339931, 30.717813>,  <35.580456, 37.295139, 30.731756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345085, 37.339931, 30.717813>,  <34.952801, 37.414589, 30.694574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345085, 37.339931, 30.717813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126674, -0.380454, 0.916083,
		-0.148872, -0.905771, -0.396757,
		0.980709, -0.186638, 0.058099,
		35.639297, 37.283939, 30.735243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011768, 36.875572, 31.132425>,  <34.952801, 37.414589, 30.694574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011768, 36.875572, 31.132425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407825, 36.924747, 31.159286>,  <35.645458, 36.954254, 31.175404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407825, 36.924747, 31.159286>,  <35.011768, 36.875572, 31.132425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407825, 36.924747, 31.159286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036186, -0.238648, 0.970432,
		0.135329, -0.963293, -0.231847,
		0.990140, 0.122938, 0.067153,
		35.704868, 36.961628, 31.179432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293690, 36.357685, 31.481068>,  <35.011768, 36.875572, 31.132425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293690, 36.357685, 31.481068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.591122, 36.620510, 31.530634>,  <35.769581, 36.778206, 31.560373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.591122, 36.620510, 31.530634>,  <35.293690, 36.357685, 31.481068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591122, 36.620510, 31.530634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085964, -0.277727, 0.956806,
		0.663093, -0.700814, -0.262997,
		0.743585, 0.657060, 0.123914,
		35.814198, 36.817627, 31.567808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867111, 36.063690, 31.821709>,  <35.293690, 36.357685, 31.481068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867111, 36.063690, 31.821709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917881, 36.451317, 31.906376>,  <35.948341, 36.683891, 31.957176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917881, 36.451317, 31.906376>,  <35.867111, 36.063690, 31.821709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917881, 36.451317, 31.906376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003317, -0.213805, 0.976871,
		0.991907, -0.123284, -0.030350,
		0.126921, 0.969066, 0.211666,
		35.955956, 36.742035, 31.969875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307289, 36.052193, 32.470882>,  <35.867111, 36.063690, 31.821709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307289, 36.052193, 32.470882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.155193, 36.422123, 32.466404>,  <36.063938, 36.644081, 32.463718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.155193, 36.422123, 32.466404>,  <36.307289, 36.052193, 32.470882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155193, 36.422123, 32.466404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068955, -0.016275, 0.997487,
		0.922315, 0.380053, 0.069960,
		-0.380237, 0.924822, -0.011196,
		36.041122, 36.699570, 32.463047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600971, 36.378006, 33.026794>,  <36.307289, 36.052193, 32.470882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600971, 36.378006, 33.026794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.290501, 36.618011, 32.949303>,  <36.104218, 36.762012, 32.902809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.290501, 36.618011, 32.949303>,  <36.600971, 36.378006, 33.026794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290501, 36.618011, 32.949303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131182, 0.146856, 0.980421,
		0.616712, 0.786398, -0.035276,
		-0.776181, 0.600010, -0.193729,
		36.057648, 36.798016, 32.891186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756935, 37.139008, 33.293148>,  <36.600971, 36.378006, 33.026794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756935, 37.139008, 33.293148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.362450, 37.072861, 33.295544>,  <36.125759, 37.033173, 33.296982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.362450, 37.072861, 33.295544>,  <36.756935, 37.139008, 33.293148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362450, 37.072861, 33.295544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023197, 0.173996, 0.984473,
		-0.163839, 0.970763, -0.175434,
		-0.986214, -0.165365, 0.005989,
		36.066586, 37.023251, 33.297340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505058, 37.705933, 33.637348>,  <36.756935, 37.139008, 33.293148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505058, 37.705933, 33.637348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216671, 37.428883, 33.646111>,  <36.043640, 37.262653, 33.651367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216671, 37.428883, 33.646111>,  <36.505058, 37.705933, 33.637348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216671, 37.428883, 33.646111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046220, 0.079598, 0.995755,
		-0.691426, 0.716894, -0.089401,
		-0.720967, -0.692623, 0.021902,
		36.000381, 37.221096, 33.652679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362968, 38.150654, 33.037907>,  <36.505058, 37.705933, 33.637348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362968, 38.150654, 33.037907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.235901, 38.307034, 33.383450>,  <36.159660, 38.400864, 33.590775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.235901, 38.307034, 33.383450>,  <36.362968, 38.150654, 33.037907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235901, 38.307034, 33.383450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607068, 0.783704, -0.131443,
		-0.728394, 0.482664, -0.486290,
		-0.317664, 0.390953, 0.863855,
		36.140602, 38.424320, 33.642605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020092, 38.789375, 33.249199>,  <36.362968, 38.150654, 33.037907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020092, 38.789375, 33.249199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.361496, 38.742645, 33.452324>,  <36.566338, 38.714607, 33.574200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.361496, 38.742645, 33.452324>,  <36.020092, 38.789375, 33.249199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361496, 38.742645, 33.452324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409650, 0.752727, -0.515354,
		-0.322041, 0.647885, 0.690315,
		0.853509, -0.116823, 0.507814,
		36.617550, 38.707600, 33.604668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245762, 39.374123, 33.598152>,  <36.020092, 38.789375, 33.249199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245762, 39.374123, 33.598152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.576439, 39.169388, 33.504681>,  <36.774845, 39.046547, 33.448597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.576439, 39.169388, 33.504681>,  <36.245762, 39.374123, 33.598152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576439, 39.169388, 33.504681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327837, 0.775700, -0.539270,
		0.457283, 0.369200, 0.809063,
		0.826689, -0.511840, -0.233677,
		36.824444, 39.015835, 33.434578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681236, 39.849426, 33.619728>,  <36.245762, 39.374123, 33.598152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681236, 39.849426, 33.619728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881012, 39.568058, 33.417435>,  <37.000877, 39.399239, 33.296059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881012, 39.568058, 33.417435>,  <36.681236, 39.849426, 33.619728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881012, 39.568058, 33.417435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556159, 0.707906, -0.435381,
		0.664266, -0.063822, 0.744767,
		0.499438, -0.703417, -0.505733,
		37.030842, 39.357033, 33.265717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401943, 40.026405, 33.720978>,  <36.681236, 39.849426, 33.619728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401943, 40.026405, 33.720978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403423, 39.781376, 33.404816>,  <37.404312, 39.634357, 33.215118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403423, 39.781376, 33.404816>,  <37.401943, 40.026405, 33.720978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403423, 39.781376, 33.404816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481057, 0.694036, -0.535629,
		0.876682, -0.378246, 0.297253,
		0.003705, -0.612572, -0.790406,
		37.404533, 39.597603, 33.167694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003361, 40.208393, 33.412701>,  <37.401943, 40.026405, 33.720978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003361, 40.208393, 33.412701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816574, 39.996147, 33.129749>,  <37.704502, 39.868797, 32.959976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816574, 39.996147, 33.129749>,  <38.003361, 40.208393, 33.412701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816574, 39.996147, 33.129749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509983, 0.491914, -0.705647,
		0.722401, -0.690264, 0.040901,
		-0.466963, -0.530619, -0.707382,
		37.676487, 39.836960, 32.917534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484428, 39.942421, 32.840675>,  <38.003361, 40.208393, 33.412701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484428, 39.942421, 32.840675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.122032, 40.004860, 32.683289>,  <37.904594, 40.042324, 32.588856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.122032, 40.004860, 32.683289>,  <38.484428, 39.942421, 32.840675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122032, 40.004860, 32.683289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374141, 0.730062, -0.571863,
		0.197992, -0.665315, -0.719831,
		-0.905990, 0.156094, -0.393468,
		37.850235, 40.051689, 32.565247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675430, 40.035450, 32.143547>,  <38.484428, 39.942421, 32.840675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675430, 40.035450, 32.143547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.294682, 40.155285, 32.169449>,  <38.066235, 40.227184, 32.184990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.294682, 40.155285, 32.169449>,  <38.675430, 40.035450, 32.143547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294682, 40.155285, 32.169449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179455, 0.715991, -0.674650,
		-0.248479, -0.630558, -0.735292,
		-0.951868, 0.299589, 0.064752,
		38.009121, 40.245163, 32.188873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478748, 40.114666, 31.422375>,  <38.675430, 40.035450, 32.143547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478748, 40.114666, 31.422375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.224560, 40.330845, 31.642952>,  <38.072044, 40.460552, 31.775299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.224560, 40.330845, 31.642952>,  <38.478748, 40.114666, 31.422375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224560, 40.330845, 31.642952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125027, 0.776790, -0.617224,
		-0.761933, -0.323284, -0.561200,
		-0.635473, 0.540449, 0.551443,
		38.033916, 40.492981, 31.808384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074261, 40.560829, 30.949038>,  <38.478748, 40.114666, 31.422375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074261, 40.560829, 30.949038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.078644, 40.742046, 31.305607>,  <38.081272, 40.850777, 31.519548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.078644, 40.742046, 31.305607>,  <38.074261, 40.560829, 30.949038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078644, 40.742046, 31.305607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165626, 0.878341, -0.448426,
		-0.986128, 0.152555, -0.065413,
		0.010955, 0.453040, 0.891423,
		38.081932, 40.877956, 31.573034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694839, 41.095951, 30.706352>,  <38.074261, 40.560829, 30.949038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694839, 41.095951, 30.706352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.891556, 41.187447, 31.042404>,  <38.009586, 41.242344, 31.244036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.891556, 41.187447, 31.042404>,  <37.694839, 41.095951, 30.706352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891556, 41.187447, 31.042404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318025, 0.851026, -0.417869,
		-0.810555, 0.472688, 0.345784,
		0.491793, 0.228738, 0.840130,
		38.039093, 41.256069, 31.294443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594547, 41.844154, 30.728445>,  <37.694839, 41.095951, 30.706352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594547, 41.844154, 30.728445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.894253, 41.755985, 30.978252>,  <38.074074, 41.703083, 31.128136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.894253, 41.755985, 30.978252>,  <37.594547, 41.844154, 30.728445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894253, 41.755985, 30.978252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560338, 0.713651, -0.420386,
		-0.353026, 0.664920, 0.658220,
		0.749262, -0.220419, 0.624517,
		38.119030, 41.689861, 31.165607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851593, 42.462765, 30.965878>,  <37.594547, 41.844154, 30.728445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851593, 42.462765, 30.965878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.154354, 42.206619, 31.018070>,  <38.336010, 42.052933, 31.049385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.154354, 42.206619, 31.018070>,  <37.851593, 42.462765, 30.965878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154354, 42.206619, 31.018070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627872, 0.657164, -0.417027,
		0.181304, 0.397575, 0.899479,
		0.756905, -0.640367, 0.130480,
		38.381424, 42.014511, 31.057215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326672, 42.796402, 31.229532>,  <37.851593, 42.462765, 30.965878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326672, 42.796402, 31.229532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.543777, 42.490665, 31.090284>,  <38.674042, 42.307224, 31.006737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.543777, 42.490665, 31.090284>,  <38.326672, 42.796402, 31.229532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543777, 42.490665, 31.090284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696514, 0.641245, -0.321985,
		0.469335, -0.067707, 0.880420,
		0.542764, -0.764344, -0.348117,
		38.706608, 42.261364, 30.985849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029549, 42.973724, 31.444027>,  <38.326672, 42.796402, 31.229532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029549, 42.973724, 31.444027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031052, 42.708111, 31.144949>,  <39.031956, 42.548744, 30.965502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031052, 42.708111, 31.144949>,  <39.029549, 42.973724, 31.444027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031052, 42.708111, 31.144949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724270, 0.517356, -0.455824,
		0.689506, -0.539817, 0.482886,
		0.003762, -0.664033, -0.747694,
		39.032181, 42.508900, 30.920641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736172, 42.927811, 31.206089>,  <39.029549, 42.973724, 31.444027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736172, 42.927811, 31.206089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.566463, 42.759472, 30.885370>,  <39.464638, 42.658470, 30.692938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.566463, 42.759472, 30.885370>,  <39.736172, 42.927811, 31.206089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566463, 42.759472, 30.885370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685936, 0.428693, -0.587975,
		0.591172, -0.799445, 0.106790,
		-0.424273, -0.420845, -0.801799,
		39.439182, 42.633217, 30.644831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302120, 42.524689, 30.725641>,  <39.736172, 42.927811, 31.206089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302120, 42.524689, 30.725641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.999027, 42.641712, 30.492315>,  <39.817173, 42.711926, 30.352320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.999027, 42.641712, 30.492315>,  <40.302120, 42.524689, 30.725641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999027, 42.641712, 30.492315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650402, 0.411364, -0.638559,
		0.053139, -0.863244, -0.501982,
		-0.757729, 0.292557, -0.583315,
		39.771709, 42.729481, 30.317322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525410, 42.519539, 30.043552>,  <40.302120, 42.524689, 30.725641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525410, 42.519539, 30.043552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.191364, 42.734276, 29.995569>,  <39.990936, 42.863117, 29.966780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.191364, 42.734276, 29.995569>,  <40.525410, 42.519539, 30.043552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191364, 42.734276, 29.995569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396931, 0.437122, -0.807075,
		-0.380836, -0.721612, -0.578135,
		-0.835110, 0.536843, -0.119959,
		39.940830, 42.895329, 29.959581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192406, 42.298237, 29.513775>,  <40.525410, 42.519539, 30.043552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192406, 42.298237, 29.513775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.061466, 42.673393, 29.559740>,  <39.982903, 42.898487, 29.587318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.061466, 42.673393, 29.559740>,  <40.192406, 42.298237, 29.513775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061466, 42.673393, 29.559740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385339, 0.243544, -0.890057,
		-0.862762, -0.247078, -0.441129,
		-0.327348, 0.937891, 0.114911,
		39.963261, 42.954762, 29.594213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929554, 42.430443, 28.862404>,  <40.192406, 42.298237, 29.513775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929554, 42.430443, 28.862404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.983360, 42.784992, 29.039604>,  <40.015644, 42.997723, 29.145924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.983360, 42.784992, 29.039604>,  <39.929554, 42.430443, 28.862404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983360, 42.784992, 29.039604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520686, 0.317145, -0.792657,
		-0.843085, 0.337287, -0.418862,
		0.134513, 0.886373, 0.443001,
		40.023712, 43.050903, 29.172504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813904, 42.885750, 28.298386>,  <39.929554, 42.430443, 28.862404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813904, 42.885750, 28.298386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.016472, 43.103294, 28.566042>,  <40.138012, 43.233822, 28.726637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.016472, 43.103294, 28.566042>,  <39.813904, 42.885750, 28.298386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016472, 43.103294, 28.566042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575983, 0.364139, -0.731878,
		-0.641705, 0.756051, -0.128851,
		0.506417, 0.543866, 0.669142,
		40.168396, 43.266453, 28.766785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975063, 43.469933, 28.027948>,  <39.813904, 42.885750, 28.298386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975063, 43.469933, 28.027948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.247242, 43.485500, 28.320654>,  <40.410549, 43.494843, 28.496277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.247242, 43.485500, 28.320654>,  <39.975063, 43.469933, 28.027948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247242, 43.485500, 28.320654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641235, 0.451724, -0.620293,
		-0.354697, 0.891308, 0.282416,
		0.680447, 0.038922, 0.731763,
		40.451378, 43.497177, 28.540182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190750, 44.177570, 27.972982>,  <39.975063, 43.469933, 28.027948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190750, 44.177570, 27.972982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.475002, 43.959229, 28.150545>,  <40.645554, 43.828224, 28.257082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.475002, 43.959229, 28.150545>,  <40.190750, 44.177570, 27.972982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475002, 43.959229, 28.150545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682074, 0.379718, -0.624971,
		0.172583, 0.746899, 0.642150,
		0.710626, -0.545854, 0.443907,
		40.688190, 43.795471, 28.283718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658558, 44.686279, 28.179846>,  <40.190750, 44.177570, 27.972982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658558, 44.686279, 28.179846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.841671, 44.335266, 28.122755>,  <40.951538, 44.124657, 28.088501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.841671, 44.335266, 28.122755>,  <40.658558, 44.686279, 28.179846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841671, 44.335266, 28.122755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697437, 0.454015, -0.554484,
		0.551379, 0.154288, 0.819864,
		0.457780, -0.877534, -0.142728,
		40.979004, 44.072006, 28.079937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328117, 44.881691, 28.048182>,  <40.658558, 44.686279, 28.179846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328117, 44.881691, 28.048182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.360466, 44.486908, 27.992508>,  <41.379875, 44.250038, 27.959105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.360466, 44.486908, 27.992508>,  <41.328117, 44.881691, 28.048182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360466, 44.486908, 27.992508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748086, 0.152382, -0.645869,
		0.658655, -0.051886, 0.750654,
		0.080875, -0.986959, -0.139183,
		41.384727, 44.190819, 27.950752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993004, 44.753159, 28.254223>,  <41.328117, 44.881691, 28.048182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993004, 44.753159, 28.254223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.847168, 44.496887, 27.983932>,  <41.759666, 44.343124, 27.821758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.847168, 44.496887, 27.983932>,  <41.993004, 44.753159, 28.254223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847168, 44.496887, 27.983932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733176, 0.249854, -0.632476,
		0.574047, -0.726019, 0.378637,
		-0.364586, -0.640678, -0.675728,
		41.737793, 44.304684, 27.781214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621338, 44.328430, 27.948833>,  <41.993004, 44.753159, 28.254223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621338, 44.328430, 27.948833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.315060, 44.291817, 27.694168>,  <42.131294, 44.269848, 27.541368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.315060, 44.291817, 27.694168>,  <42.621338, 44.328430, 27.948833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315060, 44.291817, 27.694168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595288, 0.274052, -0.755333,
		0.243619, -0.957349, -0.155348,
		-0.765691, -0.091536, -0.636662,
		42.085354, 44.264359, 27.503170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801666, 43.869389, 27.609678>,  <42.621338, 44.328430, 27.948833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801666, 43.869389, 27.609678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.553261, 44.070606, 27.369249>,  <42.404217, 44.191338, 27.224993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.553261, 44.070606, 27.369249>,  <42.801666, 43.869389, 27.609678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553261, 44.070606, 27.369249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738893, 0.119892, -0.663071,
		-0.261490, -0.855904, -0.446151,
		-0.621015, 0.503044, -0.601071,
		42.366955, 44.221519, 27.188929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410748, 43.466152, 27.681778>,  <42.801666, 43.869389, 27.609678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410748, 43.466152, 27.681778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.795589, 43.381851, 27.750994>,  <44.026493, 43.331268, 27.792522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.795589, 43.381851, 27.750994>,  <43.410748, 43.466152, 27.681778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795589, 43.381851, 27.750994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229515, -0.283189, 0.931197,
		-0.147250, -0.935621, -0.320827,
		0.962102, -0.210753, 0.173040,
		44.084221, 43.318623, 27.802906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514492, 42.755299, 27.968245>,  <43.410748, 43.466152, 27.681778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514492, 42.755299, 27.968245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.823902, 42.968937, 28.104712>,  <44.009548, 43.097122, 28.186592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.823902, 42.968937, 28.104712>,  <43.514492, 42.755299, 27.968245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823902, 42.968937, 28.104712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235336, -0.257765, 0.937109,
		0.588449, -0.805169, -0.073695,
		0.773527, 0.534098, 0.341167,
		44.055962, 43.129166, 28.207062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873955, 42.239330, 28.391893>,  <43.514492, 42.755299, 27.968245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873955, 42.239330, 28.391893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.013958, 42.594402, 28.511576>,  <44.097961, 42.807446, 28.583385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.013958, 42.594402, 28.511576>,  <43.873955, 42.239330, 28.391893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013958, 42.594402, 28.511576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055724, -0.299115, 0.952589,
		0.935088, -0.350085, -0.055227,
		0.350006, 0.887677, 0.299207,
		44.118961, 42.860706, 28.601337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379299, 42.094460, 28.883543>,  <43.873955, 42.239330, 28.391893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379299, 42.094460, 28.883543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.257015, 42.465664, 28.968721>,  <44.183647, 42.688385, 29.019829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.257015, 42.465664, 28.968721>,  <44.379299, 42.094460, 28.883543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257015, 42.465664, 28.968721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222372, -0.287057, 0.931745,
		0.925794, 0.237487, 0.294118,
		-0.305706, 0.928008, 0.212945,
		44.165302, 42.744064, 29.032604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745045, 42.205650, 29.469116>,  <44.379299, 42.094460, 28.883543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745045, 42.205650, 29.469116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.428444, 42.449867, 29.458050>,  <44.238483, 42.596397, 29.451410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.428444, 42.449867, 29.458050>,  <44.745045, 42.205650, 29.469116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428444, 42.449867, 29.458050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414296, -0.502715, 0.758707,
		0.449312, 0.611981, 0.650844,
		-0.791503, 0.610539, -0.027666,
		44.190994, 42.633030, 29.449751>
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
